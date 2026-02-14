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
unsigned char op = 0, up, opv = 0, go = 0;
unsigned int count5 = 0, count6 = 0;
unsigned int count, sec, count1, wrong_sec;
unsigned char *menu[5] = {"View log    ", "Clear log   ", "Download log", "Set time     ", "Chge Password"};
unsigned char password[5], str[5], str1[5], str2[5], changemenu = 1, adw = 0, adr = 0, rotation = 0, total = 0;
unsigned long int wait = 0, wait3 = 0, wait_s = 0, wait_c = 0;
unsigned char viewdisplay[10][13];
unsigned char timer[9];
char compare(char *str1, char *str2) {
    char i = 0;
    while (str2[i]) {
        if ((str1[i] < str2[i]) || (str1[i] > str2[i]))
            return 0;
        i++;
    }
    return 1;
}
void main_menu()
{
    if (op == 0) {

        clcd_print("->", LINE1(0));
        clcd_print("   ", LINE2(0));
        clcd_print(menu[0], LINE1(3));
        clcd_print(menu[1], LINE2(3));

    } else {

        if (up == 0) {

            clcd_print(menu[op - 1], LINE1(3));
            clcd_print(menu[op], LINE2(3));
            clcd_print("   ", LINE1(0));
            clcd_print("-> ", LINE2(0));
        } else if (up == 1) {

            clcd_print(menu[op], LINE1(3));
            clcd_print(menu[op + 1], LINE2(3));
            clcd_print("-> ", LINE1(0));
            clcd_print("   ", LINE2(0));

        }
    }
}
void view_log(void)
{
    clcd_print("VIEW LOG", LINE1(0));

    if (total > 0) {
        for (int i = 0; i <= 7; i++) {
            clcd_putch(viewdisplay[opv][i], LINE2(i));
        }
        clcd_putch(viewdisplay[opv][8], LINE2(10));
        clcd_putch(viewdisplay[opv][9], LINE2(11));
        clcd_putch(viewdisplay[opv][10] + '0', LINE2(13));
        clcd_putch(viewdisplay[opv][11] + '0', LINE2(14));

    } else {

        clcd_print("NO LOG AVAIABLE", LINE2(0));
    }
}
 void clear(void)
 {
     CLEAR_DISP_SCREEN;
    clcd_print("LOG CLEARED", LINE1(0));
    clcd_print("SUCCESSFULLY", LINE2(5));
    for (unsigned long int w = 500000; w--;);

    rotation = 0;
    total = 0;
    changemenu = 2;
    CLEAR_DISP_SCREEN;
    return;
 }
 void download(void)
 {
     if (rotation > 0) {
        for (int i = 0; i < total; i++) {
            for (int j = 0; j <= 9; j++) {
                putch(viewdisplay[i][j]);
            }
            putch(viewdisplay[i][10] + '0');
            putch(viewdisplay[i][11] + '0');
            puts("\n\r");
        }

    } else {
        puts("NO LOG AVAIABLE\n\r");
    }

    CLEAR_DISP_SCREEN;
    clcd_print("DOWNLOAD", LINE1(0));
    clcd_print("COMPLETED", LINE2(6));
    for (unsigned long int w = 500000; w--;);
    changemenu = 2;
    return;
 }
 void set_time(unsigned char f, unsigned int h, unsigned int m, unsigned int s)
 {
     clcd_print("SET_TIME", LINE1(0));
    if (f == 1) {
        clcd_putch((s / 10) + '0', LINE2(8));
        clcd_putch((s % 10) + '0', LINE2(9));
        clcd_putch((m / 10) + '0', LINE2(5));
        clcd_putch((m % 10) + '0', LINE2(6));
    } else if (f == 3) {
        clcd_putch((m / 10) + '0', LINE2(5));
        clcd_putch((m % 10) + '0', LINE2(6));
        clcd_putch((h / 10) + '0', LINE2(2));
        clcd_putch((h % 10) + '0', LINE2(3));
    } else if (f == 2) {
        clcd_putch((h / 10) + '0', LINE2(2));
        clcd_putch((h % 10) + '0', LINE2(3));
        clcd_putch((s / 10) + '0', LINE2(8));
        clcd_putch((s % 10) + '0', LINE2(9));
    }
    clcd_putch(':', LINE2(4));
    clcd_putch(':', LINE2(7));
    wait_s++;
    if (wait_s < 400) {
        if (f == 3) {
            clcd_putch((s / 10) + '0', LINE2(8));
            clcd_putch((s % 10) + '0', LINE2(9));
        } else if (f == 2) {
            clcd_putch((m / 10) + '0', LINE2(5));
            clcd_putch((m % 10) + '0', LINE2(6));
        } else if (f == 1) {
            clcd_putch((h / 10) + '0', LINE2(2));
            clcd_putch((h % 10) + '0', LINE2(3));
        }

    } else if (wait_s < 600) {
        if (f == 1) {
            clcd_print("  ", LINE2(2));
        }
        if (f == 2) {
            clcd_print("  ", LINE2(5));
        }
        if (f == 3) {
            clcd_print("  ", LINE2(8));
        }
    } else {
        wait_s = 0;
    }
 }
 void change_password(unsigned char key)
 {
     static unsigned char i = 0, j = 0, j1 = 0;

    if (i < 4) {
        clcd_print("OLD PASSWORD", LINE1(0));

        wait_c++;
        if (wait_c < 500) {
            clcd_putch('_', LINE2(i));
        } else if (wait_c < 800) {
            clcd_putch(' ', LINE2(i));
        } else {
            wait_c = 0;
        }


        if (key == MK_SW11) {
            str[i] = '1';
            clcd_putch('*', LINE2(i));
            i++;

        } else if (key == MK_SW12) {
            str[i] = '0';
            clcd_putch('*', LINE2(i));
            i++;

        }
        if (i == 4) {
            CLEAR_DISP_SCREEN;
        }
    } else if (i == 4) {
        if (compare(str, password)) {
            if (j < 4) {
                clcd_print("NEW PASSWORD", LINE1(0));
                wait_c++;
                if (wait_c < 500) {
                    clcd_putch('_', LINE2(j));
                } else if (wait_c < 800) {
                    clcd_putch(' ', LINE2(j));
                } else {
                    wait_c = 0;
                }


                if (key == MK_SW11) {
                    str2[j] = '1';
                    clcd_putch('*', LINE2(j));
                    j++;

                } else if (key == MK_SW12) {
                    str2[j] = '0';
                    clcd_putch('*', LINE2(j));
                    j++;

                }
                if (j == 4) {
                    CLEAR_DISP_SCREEN;
                }
            } else if (j == 4) {
                str2[j] = '\0';
                if (j1 < 4) {
                    clcd_print("R-ENTER PASSWORD", LINE1(0));
                    wait_c++;
                    if (wait_c < 500) {
                        clcd_putch('_', LINE2(j1));
                    } else if (wait_c < 800) {
                        clcd_putch(' ', LINE2(j1));
                    } else {
                        wait_c = 0;
                    }


                    if (key == MK_SW11) {
                        str1[j1] = '1';
                        clcd_putch('*', LINE2(j1));
                        j1++;

                    } else if (key == MK_SW12) {
                        str1[j1] = '0';
                        clcd_putch('*', LINE2(j1));
                        j1++;

                    }
                } else if (j1 == 4) {
                    str1[j1] = '\0';
                    if (compare(str2, str1)) {
                        CLEAR_DISP_SCREEN;
                        clcd_print("PASSWORD SET ", LINE1(0));
                        clcd_print("SUCCESSFULLY", LINE2(2));
                        write_eeprom(str1);
                        get();
                        for (unsigned long int w = 500000; w--;);
                        changemenu = 2;
                        CLEAR_DISP_SCREEN;
                        return;
                    } else {
                        CLEAR_DISP_SCREEN;
                        clcd_print("WRONG PASSWORD", LINE1(0));
                        for (unsigned long int w = 500000; w--;);
                        changemenu = 2;
                        i = 0;
                        j = 0;
                        j1 = 0;
                        return;
                    }
                }
            }
        } else {
            CLEAR_DISP_SCREEN;
            clcd_print("WRONG PASSWORD", LINE1(0));
            for (unsigned long int w = 500000; w--;);
            changemenu = 2;
            i = 0;
            j = 0;
            j1 = 0;
            return;
        }
    }
 }
