
#include "ls1x.h"
#include "Config.h"
#include "ls1x_gpio.h"
#include "ls1x_latimer.h"
#include "esp8266.h"
#include "ls1c102_interrupt.h"
#include "ls1c102_adc.h"
#include "Is1c102_SHT20.h"
#include "ls1c102_i2c.h"
#include "queue.h"


#define LED GPIO_PIN_20

int main(int arg, char *args[])
{

    uint8_t ret=0;
    

    uint16_t value_2600=0;
    uint16_t value_2610=0;
    uint16_t value_2611=0;
    uint16_t value_2620=0;

    gpio_pin_remap(GPIO_PIN_4,GPIO_FUNC_MAIN);//引脚复用4：scl
    gpio_pin_remap(GPIO_PIN_5,GPIO_FUNC_MAIN);//引脚复用5：sda//SHT30
    gpio_pin_remap(GPIO_PIN_13,GPIO_FUNC_MAIN);//报警引脚

    Adc_powerOn();//adc电源开启
    Adc_open(ADC_CHANNEL_I4);//打开通道4,通道4测2600，接gpio14
    Adc_open(ADC_CHANNEL_I5);//打开通道5,通道4测2610，接gpio15
    Adc_open(ADC_CHANNEL_I6);//打开通道6,通道4测2611，接gpio16
    Adc_open(ADC_CHANNEL_I7);//打开通道7,通道4测2620，接gpio17


    delay_ms(100);

     //IIC初始化
    I2C_InitTypeDef I2C_InitStruct0;
    I2C_StructInit(&I2C_InitStruct0);
    I2C_Init(I2C, &I2C_InitStruct0);//初始化 I2C寄存器

    gpio_write_pin(GPIO_PIN_13,0);
    ret=ATK_esp8266();
    gpio_write_pin(GPIO_PIN_13,1);//GPIO13连接led灯，用以指示是否连接上原子云

    gpio_write_pin(LED,0);//初始化报警LED灯为灭


    while(1)
    {
        value_2600=Adc_Measure(ADC_CHANNEL_I4);
        value_2610=Adc_Measure(ADC_CHANNEL_I5);
        value_2611=Adc_Measure(ADC_CHANNEL_I6);
        value_2620=Adc_Measure(ADC_CHANNEL_I7);
        
        printf("2600:  %d                     \r\n",value_2600);
        printf("2610:  %d                     \r\n",value_2610);
        printf("2611:  %d                     \r\n",value_2611);
        printf("2620:  %d                     \r\n",value_2620);

        myprintf2(0,"online");
        myprintf2(0,"A%d\r\n", value_2600);
        myprintf2(0,"B%d\r\n", value_2610);
        myprintf2(0,"C%d\r\n", value_2611);
        myprintf2(0,"D%d\r\n", value_2620);


        Sht30_Init();
        Send_Tem_Humid();

        delay_ms(100);
        if(esp8266_check_cmd("ON"))//如果接收到ON
            {
                printf("ack:ON\r\n");
                gpio_write_pin(LED,1);
                Circular_queue.head = Circular_queue.tail;//清空队列
                
            }
        // delay_ms(100);
       else if(esp8266_check_cmd("OFF"))
            {
                printf("ack:OFF\r\n");
                gpio_write_pin(LED,0);
                Circular_queue.head = Circular_queue.tail;//清空队列
                
            }    
        
    }

    return 0;
}
