/*
gpio1第一复用：IIC——SDA,gpio22第一复用：IIC——SCL
*/
#include "ls1x.h"
#include "Config.h"

#include "ls1c102_i2c.h"
#include "ls1x_latimer.h"
#include "ls1x_gpio.h"
#include "GY_30.h"
#include "ls1x_gpio.h"






// void bh_data_send(uint8_t command)  
// {  
//     I2C_GenerateSTART(I2C,ENABLE);  // 函数产生起始信号，表示开始传输数据。
//     I2C_SendData(I2C,BHAddWrite);   //写地址  
//     I2C_wait(I2C);                 //函数等待操作完成
//     I2C_SendData(I2C,command);     //发送命令  
//     I2C_wait(I2C);
//     I2C_GenerateSTOP(I2C,ENABLE);  //产生停止信号，表示传输结束
//     delay_ms(150);




//     // do{  
//     // IIC_Start();                      //iic开始
//     // IIC_Send_Byte(BHAddWrite);       //写地址  
//     // }while(IIC_Wait_Ack());           //等待响应 
//     // IIC_Send_Byte(command);          //发送命令  
//     // IIC_Wait_Ack();                   //等待响应 
//     // IIC_Stop();                       //iic停止  
// }   
 
 
// uint16_t bh_data_read(void)  
// {  
//     uint16_t buf;
//     uint16_t buf1;
//     I2C_GenerateSTART(I2C,ENABLE); 
//     I2C_SendData(I2C,BHAddRead);
//     I2C_wait(I2C);
//     I2C_ReceiveData(I2C,I2C_ACK,I2C_NSTOP);//主机应答，继续传输数据
//     I2C_wait(I2C);
//     buf=I2C->DR;
    
//     buf=buf<<8;
//     I2C_ReceiveData(I2C,I2C_NACK,I2C_STOP);//主机不应答，停止传输数据
//     I2C_wait(I2C);
//     buf1=I2C->DR;
//     printf("buf1:%d    ",buf1);
//     buf+=0x00ff&buf1;
//     printf("buf:%d    ",buf);
//     I2C_GenerateSTOP(I2C,ENABLE);  //产生停止信号，表示传输结束
//     return buf;
    







// //     uint16_t buf;  
// //     IIC_Start();                       //iic开始  
// //     IIC_Send_Byte(BHAddRead);         //发送读地址
// //     IIC_Wait_Ack();                     //等待响应  
// //     buf=IIC_Read_Byte();              //读取数据  
// // 		IIC_SendAck(0);
// //     buf=buf<<8;                        //读取并保存高八位数据
// //     buf+=0x00ff&IIC_Read_Byte();      //读取并保存第八位数据
// // 		IIC_SendAck(1);
// //     IIC_Stop();                        //发送停止信号
// //     return buf;   
//  }  

// void BH1750init(void)
// {
	
// 	bh_data_send(BHPowOn);    //发送启动信号
// 	bh_data_send(BHReset);    //清除寄存器  
//     bh_data_send(BHModeH1);   //设置为模式1
//     delay_ms(180);            //最高延时180ms 
// }


void IIC_Start(void)
{
	gpio_write_pin(GPIO_PIN_22,1);//scl
    gpio_write_pin(GPIO_PIN_1,1);//sda
    delay_us(2);
    gpio_write_pin(GPIO_PIN_1,0);//sda
    gpio_write_pin(GPIO_PIN_22,0);//scl
}

void IIC_Stop(void)
{
	gpio_write_pin(GPIO_PIN_1,0);//sda
    gpio_write_pin(GPIO_PIN_22,0);//scl
    delay_us(2);
    gpio_write_pin(GPIO_PIN_22,1);//scl
    delay_us(2);
    gpio_write_pin(GPIO_PIN_1,1);//sda
}

/***********发送应答信号**************************
**
**形参：u8 ack -- 0应答，1非应答
**
***************************************************/
void IIC_SendAck(uint8_t ack)
{
    int flag=ack&0x01;
	gpio_write_pin(GPIO_PIN_22,0);//scl
    gpio_write_pin(GPIO_PIN_1,flag);//sda
    delay_us(2);
    gpio_write_pin(GPIO_PIN_22,1);//scl
    delay_us(2);
    gpio_write_pin(GPIO_PIN_22,0);//scl

}

uint8_t  IIC_Wait_Ack(void)
{
	uint8_t cnt=0;
    gpio_write_pin(GPIO_PIN_22,1);//scl
    while(gpio_get_pin(GPIO_PIN_1))
    {
    cnt++;
    if(cnt>250)
    {
        IIC_Stop();
        return 1;
    }
    gpio_write_pin(GPIO_PIN_22,0);//scl
    return 0;
    }

}


//发送一个字节数据
void IIC_Send_Byte(uint8_t data)
{
	uint8_t i=0;
	
	for(i=0;i<8;i++)
	{
    gpio_write_pin(GPIO_PIN_22,0);//scl
    if(data&0x80) gpio_write_pin(GPIO_PIN_1,1);//sda
    else gpio_write_pin(GPIO_PIN_1,0);//sda
    delay_us(2);
    gpio_write_pin(GPIO_PIN_22,1);//scl
    data<<=1;
	delay_us(2);
	}
	gpio_write_pin(GPIO_PIN_22,0);//scl
}


uint8_t IIC_Read_Byte(void)
{
	uint8_t i=0;
	uint8_t data=0;
	
	for(i=0;i<8;i++)
	{
		gpio_write_pin(GPIO_PIN_22,0);//scl
		delay_us(2);
		gpio_write_pin(GPIO_PIN_22,1);//scl
		data<<=1;//默认收到0
		if(gpio_get_pin(GPIO_PIN_1))  data|=0x01;
		delay_us(2);
	}
	gpio_write_pin(GPIO_PIN_22,0);//scl
	return data;
}


void GY30_data_send(uint8_t command)  
{  
    do{  
    IIC_Start();                      //iic开始
    IIC_Send_Byte(BHAddWrite);       //写地址  
    }while(IIC_Wait_Ack());           //等待响应 
    IIC_Send_Byte(command);          //发送命令  
    IIC_Wait_Ack();                   //等待响应 
    IIC_Stop();                       //iic停止  
}   


uint16_t GY30_data_read(void)  
{  
    uint16_t buf;  
    IIC_Start();                       //iic开始  
    IIC_Send_Byte(BHAddRead);         //发送读地址
    IIC_Wait_Ack();                     //等待响应  
    buf=IIC_Read_Byte();              //读取数据  
		IIC_SendAck(0);
    buf=buf<<8;                        //读取并保存高八位数据
    buf+=0x00ff&IIC_Read_Byte();      //读取并保存第八位数据
		IIC_SendAck(1);
    IIC_Stop();                        //发送停止信号
    return buf;   
}  


void GY30init(void)
{
	
	GY30_data_send(BHPowOn);    //发送启动信号
	GY30_data_send(BHReset);    //清除寄存器  
    GY30_data_send(BHModeH1);   //设置为模式1
    delay_ms(180);            //最高延时180ms 
}



