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
unsigned char password[5], str[5], str1[5], str2[5], changemenu = 1, adw = 0, adr = 0, event_count = 0, total = 0;
void initially_eeprom() {
    write_external_eeprom(0x96, '1');
    write_external_eeprom(0x97, '0');
    write_external_eeprom(0x98, '1');
    write_external_eeprom(0x99, '0');
    return;
}
void write_eeprom(unsigned char str[]) {
    write_external_eeprom(0x96, str[0]);
    write_external_eeprom(0x97, str[1]);
    write_external_eeprom(0x98, str[2]);
    write_external_eeprom(0x99, str[3]);
    return;
}
void get() {
    password[0] = read_external_eeprom(0x96);
    password[1] = read_external_eeprom(0x97);
    password[2] = read_external_eeprom(0x98);
    password[3] = read_external_eeprom(0x99);
    password[4] = '\0';

    return;
}
