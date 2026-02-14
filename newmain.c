#include <xc.h>
#include "clcd.h"
#include "adc.h"
#include "matrix_keypad.h"
#include "timer0.h"
#include "eeprom.h"
#include "external_eeprom.h"
#include "i2c.h"
#include "uart.h"
#include "ds1307.h"
unsigned int speed;
extern unsigned char op = 0, up, opv = 0, go = 0;
unsigned int shortpress = 0, shortpess1 = 0;
extern unsigned int count, sec, count1, wrong_sec;
unsigned char *gear[8] = {"ON", "GN ", "GR ", "G1", "G2", "G3", "G4", "C  "};
extern unsigned char password[5], str[5], str1[5], str2[5], changemenu = 1, adr1 = 0, adr = 0, rotation = 0, total = 0;
extern unsigned long int wait = 0, wait3 = 0, wait_s = 0, wait_c = 0;
extern unsigned char ok = 0;
extern unsigned char viewdisplay[10][13];
extern unsigned char timer[9];
void view_save(unsigned char i) {

    if (rotation == 10) {
        rotation = 0;
        adr1 = 0;
        adr = 0;
    }
    if (total < 10) {
        total++;
    }

    for (int j = 0; j < 2; j++) {
        write_external_eeprom(adr1, timer[j]);
        adr1++;
    }

    for (int j = 3; j < 5; j++) {
        write_external_eeprom(adr1, timer[j]);
        adr1++;
    }

    for (int j = 6; j < 8; j++) {
        write_external_eeprom(adr1, timer[j]);
        adr1++;
    }

    write_external_eeprom(adr1, gear[i][0]);
    adr1++;
    write_external_eeprom(adr1, gear[i][1]);
    adr1++;
    write_external_eeprom(adr1, (speed / 10));
    adr1++;
    write_external_eeprom(adr1, (speed % 10));
    adr1++;

   rotation++;

}
void copy() {
    for (int i = 0; i < total; i++) {

        for (int j = 0; j < 2; j++) {
            viewdisplay[i][j] = read_external_eeprom(adr);
            adr++;
        }
        viewdisplay[i][2] = ':';
        for (int j = 3; j < 5; j++) {
            viewdisplay[i][j] = read_external_eeprom(adr);
            adr++;
        }
        viewdisplay[i][5] = ':';
        for (int j = 6; j < 8; j++) {
            viewdisplay[i][j] = read_external_eeprom(adr);
            adr++;
        }

        viewdisplay[i][8] = read_external_eeprom(adr);
        adr++;
        viewdisplay[i][9] = read_external_eeprom(adr);
        adr++;
        viewdisplay[i][10] = read_external_eeprom(adr);
        adr++;
        viewdisplay[i][11] = read_external_eeprom(adr);
        adr++;

        viewdisplay[i][12] = '\0';
    }
}

void dashboard(unsigned char i) {
    clcd_print("Time", LINE1(0));
    clcd_print("Gear", LINE1(8));
    clcd_print("Spd", LINE1(13));

    clcd_putch((speed % 10) + '0', LINE2(14));
    clcd_putch((speed / 10) + '0', LINE2(13));

    clcd_print(gear[i], LINE2(9));
    clcd_print(timer, LINE2(0));
}

void password_screen(unsigned char key1) {
    static unsigned char i = 0;
    static char attempt = 2;

    if (i < 4) {
        if (wrong_sec == 5) {
            CLEAR_DISP_SCREEN;
            i = 0;
            count = 0;
            changemenu = 1;
            wrong_sec = 0;
            attempt = 2;
            return;
        }

        clcd_print("Enter Password  ", LINE1(0));
        wait++;
        if (wait < 500) {
            clcd_putch('_', LINE2(i));
        } else if (wait < 800) {
            clcd_putch(' ', LINE2(i));
        } else {
            wait = 0;
        }

        if (key1 == MK_SW11) {
            str[i] = '1';
            clcd_putch('*', LINE2(i));
            i++;
            wrong_sec = 0;
            count = 0;
        } else if (key1 == MK_SW12) {
            str[i] = '0';
            clcd_putch('*', LINE2(i));
            i++;
            wrong_sec = 0;
            count = 0;
        }
    } else if (i == 4) {

        if (compare(str, password)) {
            changemenu = 2;
            copy();
            CLEAR_DISP_SCREEN;
            return;

        } else {
            if (attempt == 0 || attempt == 1 || attempt == 2) {
                if (wait3++ == 1000) {
                    wait3 = 0;
                    attempt--;
                    i = 0;
                    count = 0;
                    wrong_sec = 0;
                    CLEAR_DISP_SCREEN;
                } else {
                    clcd_print("Wrong Password", LINE1(0));
                    clcd_putch('0' + attempt, LINE2(0));
                    clcd_print("  attempts left", LINE2(1));
                }

            } else {
                if (ok == 0) {
                    ok = 1;
                    count1 = 0;

                }

                clcd_print("Wrong Password  ", LINE1(0));
                clcd_putch(('0' + (sec % 10)), LINE2(2));
                clcd_putch('0' + ((sec / 10) % 10), LINE2(1));
                clcd_putch('0' + (sec / 100), LINE2(0));
                clcd_print("   Sec Left ", LINE2(3));

                if (sec == 0) {
                    sec = 120;
                    changemenu = 1;
                    ok = 0;
                    i = 0;
                    attempt = 2;
                    CLEAR_DISP_SCREEN;
                    return;
                }
            }
        }
    }
}
void init_config(void) {

    GIE = 1;
    PEIE = 1;

    init_clcd();
    init_adc();
    init_matrix_keypad();
    init_timer0();
    init_i2c();
    init_uart();
    init_ds1307();

}

void main(void) {

    init_config();
    unsigned char i = 0, f = 3;
    unsigned char key;
    unsigned int hr, mi, se;
    unsigned long int j = 0;
   // initially_eeprom();
    get();

    while (1) {

        if (changemenu != 6) {
            get_time();
            hr = ((timer[0] - '0')*10)+(timer[1] - '0');
            mi = ((timer[3] - '0')*10)+(timer[4] - '0');
            se = ((timer[6] - '0')*10)+(timer[7] - '0');
        }
        
        
        if (changemenu == 1) {
            dashboard(i);
        } else if (changemenu == 0) {
            password_screen(key);
        } else if (changemenu == 2) {
            main_menu();
        } else if (changemenu == 3) {
            view_log();
        } else if (changemenu == 4) {
            clear();
        } else if (changemenu == 5) {
            download();
        } else if (changemenu == 6) {
            set_time(f, hr, mi, se);
        } else if (changemenu == 7) {
            change_password(key);
        }

        speed = read_adc(CHANNEL4);
        if (speed > 0) {
            speed = ((speed - 1) / 10.23);
        }

        if (changemenu >= 2 && changemenu <= 6) {
            key = read_switches(LEVEL_CHANGE);
            if (key == MK_SW11) {
                shortpress++;
            } else if (shortpress != 0) {
                if (shortpress > 10 && shortpress < 200) {
                    if (changemenu == 2) {
                        if (op > 0) {
                            op--;
                            up = 1;
                        }
                    } else if (changemenu == 3) {
                        if (opv > 0) {
                            opv--;
                        }
                    } else if (changemenu == 6) {
                        if (f == 1) {
                            hr++;
                            if (hr == 13) {
                                hr = 1;
                            }
                        } else if (f == 2) {
                            mi++;
                            if (mi == 60) {
                                mi = 0;
                            }
                        } else if (f == 3) {
                            se++;
                            if (se == 60) {
                                se = 0;
                            }
                        }

                    }
                } else if (shortpress > 200) {
                    CLEAR_DISP_SCREEN;
                    if (changemenu == 2) {
                        changemenu = op + 3;
                    } else {
                        if (changemenu == 6) {
                            write_ds1307(SEC_ADDR, 0x80);
                            write_ds1307(SEC_ADDR, ((se / 10) << 4) | ((se % 10)&0x0f));
                            write_ds1307(MIN_ADDR, ((mi / 10) << 4) | ((mi % 10)&0x0f));
                            write_ds1307(HOUR_ADDR, ((hr / 10) << 4) | ((hr % 10)&0x0f));
                            write_ds1307(SEC_ADDR, ((((se / 10) << 4) | ((se % 10)&0x0f))& 0x7f));
                            CLEAR_DISP_SCREEN;
                            clcd_print("Time set", LINE1(0));
                            clcd_print("Successfully", LINE2(2));
                            for (unsigned long int w = 500000; w--;);

                        }
                        changemenu = 2;
                        adr = 0;
                        opv = 0;

                    }

                }
                shortpress = 0;
            }
            if (key == MK_SW12) {
                up = 0;
                shortpess1++;

            } else if (shortpess1 != 0) {
                if (shortpess1 > 10 && shortpess1 < 200) {
                    if (changemenu == 2) {
                        if (op < 4) {
                            op++;
                        }
                    } else if (changemenu == 3) {
                        if (opv < total - 1) {
                            opv++;
                        }
                    } else if (changemenu == 6) {
                        f--;
                        if (f == 0) {
                            f = 3;
                        }
                    }

                } else if (shortpess1 > 200) {
                    changemenu = 2;
                    adr = 0;
                    opv = 0;
                    CLEAR_DISP_SCREEN;
                }
                shortpess1 = 0;
            }

        } else {
            key = read_switches(STATE_CHANGE);

            if (key == MK_SW1) {
                i = 7;
                view_save(i);
            } else if (key == MK_SW2) {
                if (i < 6) {
                    i++;
                } else if (i == 7) {
                    i = 1;
                }
                view_save(i);
            } else if (key == MK_SW3) {
                if (i == 7) {
                    i = 1;
                } else if (i > 1) {
                    i--;
                }
                view_save(i);
            }
            if (key == MK_SW11 && changemenu == 1) {
                CLEAR_DISP_SCREEN;
                changemenu = 0;
                count = 0;
                wrong_sec = 0;
                key = 0;

            }

        }
    }
}