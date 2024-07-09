
#include "ls1x.h"
#include "Config.h"
#include "ls1x_gpio.h"
#include "ls1x_latimer.h"
#include "esp8266.h"
#include "ls1c102_interrupt.h"
#include "GY_30.h"
#include "ls1c102_adc.h"
#include "SW420.h"
#include "Is1c102_SHT20.h"

#include "queue.h"

#define LED GPIO_PIN_20

int main(int arg, char *args[])
{
    WdgInit();
    uint16_t light;
    uint8_t ret=0;
    uint8_t test=222;
    uint32_t Tem;
    uint32_t humid;
    uint8_t input1;
    char* input2;
    uint16_t MQ2_value=0;


    gpio_pin_remap(GPIO_PIN_4,GPIO_FUNC_MAIN);//引脚复用4：scl
    gpio_pin_remap(GPIO_PIN_5,GPIO_FUNC_MAIN);//引脚复用5：sda

    gpio_pin_remap(GPIO_PIN_13,GPIO_FUNC_MAIN);//报警引脚
    delay_ms(100);
    gpio_pin_remap(GPIO_PIN_1,GPIO_FUNC_MAIN);//引脚1复用为gpio用作模拟IIC的sda
    gpio_pin_remap(GPIO_PIN_22,GPIO_FUNC_MAIN);//引脚22复用为gpio用作模拟IIC的scl
    delay_ms(100);
    
    Adc_powerOn();//adc电源开启
    Adc_open(ADC_CHANNEL_I4);//打开通道4
    GY30init();

    //IIC初始化
    I2C_InitTypeDef I2C_InitStruct0;
    I2C_StructInit(&I2C_InitStruct0);
    I2C_Init(I2C, &I2C_InitStruct0);//初始化 I2C寄存器

    gpio_write_pin(LED,0);
    ret=ATK_esp8266();//连接原子云
    delay_ms(100);
    gpio_write_pin(LED,1);//用LED灯指示是否连接上原子云
    gpio_write_pin(GPIO_PIN_13,0);//初始化蜂鸣器引脚为低电平
    

    while(1)
    {


        //MQ2
        MQ2_value=Adc_Measure(ADC_CHANNEL_I4);//GPIO14读取MQ2的返回值
        printf("MQ2:%d\r\n",MQ2_value);

        //GY30
        
        light=GY30_data_read();
        delay_ms(100);
        printf("light:%d\r\n",light);



        //SHT30
        Sht30_Init();
        Send_Tem_Humid();
        delay_ms(100);
        

        if(ret==1)//若WIFI模块连接上原子云，则ret=1；
        {
            myprintf2(0,"online");
            delay_ms(100);
            myprintf2(0,"L%d\r\n", light);
            delay_ms(100);
            myprintf2(0,"M%d\r\n", MQ2_value);
            delay_ms(100);//传输数据到原子云

        }

        


        if((esp8266_check_cmd("ON"))||(MQ2_value<2000))//如果接收到ON
            {
                printf("ack:ON\r\n");
                gpio_write_pin(GPIO_PIN_13,0);
                Circular_queue.head = Circular_queue.tail;//清空队列
                
            }
        // delay_ms(100);
       else if((esp8266_check_cmd("OFF"))||(MQ2_value>2000))//如果接收到OFF
            {
                printf("ack:OFF\r\n");
                gpio_write_pin(GPIO_PIN_13,1);
                Circular_queue.head = Circular_queue.tail;//清空队列
                
            }    

        
    }

    return 0;
}
