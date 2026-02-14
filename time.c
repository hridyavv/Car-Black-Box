#include <xc.h>
#include "ds1307.h"
#include "i2c.h"

unsigned char clock_reg[3];
extern unsigned char timer[9];

void get_time(void)
{
	clock_reg[0] = read_ds1307(HOUR_ADDR);
	clock_reg[1] = read_ds1307(MIN_ADDR);
	clock_reg[2] = read_ds1307(SEC_ADDR);

	if (clock_reg[0] & 0x40)
	{
		timer[0] = '0' + ((clock_reg[0] >> 4) & 0x01);
		timer[1] = '0' + (clock_reg[0] & 0x0F);
	}
	else
	{
		timer[0] = '0' + ((clock_reg[0] >> 4) & 0x03);
		timer[1] = '0' + (clock_reg[0] & 0x0F);
	}
	timer[2] = ':';
	timer[3] = '0' + ((clock_reg[1] >> 4) & 0x0F);
	timer[4] = '0' + (clock_reg[1] & 0x0F);
	timer[5] = ':';
	timer[6] = '0' + ((clock_reg[2] >> 4) & 0x07);
	timer[7] = '0' + (clock_reg[2] & 0x0F);
	timer[8] = '\0';
}