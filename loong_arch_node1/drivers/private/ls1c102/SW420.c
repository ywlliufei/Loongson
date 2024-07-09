#include "ls1x.h"
#include "config.h"
#include "ls1x_gpio.h"
#include "ls1x_latimer.h"
#include "SW420.h"

INT8U SW420_ReadPin(INT8U pin)
{
    int m=pin;
    int n;
    n=gpio_get_pin(m);//读取SW420的值是否为高电平
    if(n)
    {
        delay_ms(100);//软件延时去抖
        int n1;
        n1=gpio_get_pin(m);//再次判断是否为高电平
        if(n1)
        {
            return 1;//确定输出为高电平
        }
        return 0;
    }
    return 0;
}

