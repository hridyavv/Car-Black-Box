#include <xc.h>

extern unsigned int count,sec=120,count1,wrong_sec;
unsigned char ok,ch;
void __interrupt() isr(void)
{
    static unsigned int count2; 
    
    if (RCIF == 1)
    {
        //optional
        if (OERR == 1)
            OERR = 0;
        
        ch = RCREG;
        
        RCIF = 0;
    }
    
	if (TMR0IF)
	{
		TMR0 = TMR0 + 8;
        count++;
        count1++;
        TMR0 = TMR0 + 8;
        if(count1 == 5000)
        {
            count1=0;
            if(ok)
            {
                sec--;
            }
            
           
        }
		if (count == 5000)
		{
			count = 0;
            wrong_sec++;
			
		}
		TMR0IF = 0;
	}
}