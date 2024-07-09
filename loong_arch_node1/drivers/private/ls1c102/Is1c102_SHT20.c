#include "ls1x.h"
#include "ls1c102_i2c.h"
#include "ls1x_latimer.h"
#include "ls1x_gpio.h"
#include "ls1x_wdg.h"
#include "Is1c102_SHT20.h"
#include "math.h"
#include "Config.h"

// #define I2C_BASE			    PHYS_TO_UNCACHED(0x1fe90000)            //i2c
// #define I2C                          ((I2C_TypeDef *) I2C_BASE)


// #define I2C_NACK_Set            ((uint8_t)0x08)
// #define I2C_NACK_Reset          ((uint8_t)0xF7)

// //接收IIC从设备数据
// void Receive_IIC_Data(uint8_t data)
// {
//     I2C_GenerateSTART(I2C,ENABLE);  // 函数产生起始信号，表示开始传输数据。

//     I2C_SendData(I2C,SHT30_I2C_ADR); // 发送I2C设备的地址，表示要发送数据给该设备
//     I2C_wait(I2C);                 //函数等待操作完成

//     // I2C_SendData(I2C,0x00);         // 发送命令类型，一般是0x00表示写入命令。
//     // I2C_wait(I2C);
    
//     I2C_ReceiveData(I2C,I2C_NACK,I2C_STOP);//连续读请求结束，下一次传输为总线读请求。数据存在DR中
//     I2C_AcknowledgeConfig(I2C,I2C_NACK_Set);
    
//     I2C_GenerateSTOP(I2C,ENABLE);  //产生停止信号，表示传输结束

//     data=I2C->DR;
// }

void Sht30_Init()
{
	I2C_GenerateSTART(I2C,ENABLE);  // 函数产生起始信号，表示开始传输数据。
	I2C_SendData(I2C,0x44<<1|0);//0为写
	I2C_wait(I2C);                 //函数等待操作完成
	I2C_SendData(I2C,0x21); 
	I2C_wait(I2C); 
	I2C_SendData(I2C,0x30);
	I2C_wait(I2C);
	I2C_GenerateSTOP(I2C,ENABLE);  //产生停止信号，表示传输结束
	delay_ms(150);

}

void Send_Tem_Humid(void)
{
	uint16_t data[6];
	uint32_t Temperature;
	uint32_t Humidity;

	uint16_t temp,humi;
	I2C_GenerateSTART(I2C,ENABLE);
	I2C_SendData(I2C,0x44<<1|0);//0为写
	I2C_wait(I2C); 
	I2C_SendData(I2C,0xe0); 
	I2C_wait(I2C); 
	I2C_SendData(I2C,0x00); 
	I2C_wait(I2C);

	I2C_GenerateSTART(I2C,ENABLE);
	I2C_SendData(I2C,0x44<<1|1);//1为读
	I2C_wait(I2C); 
//温度数据
I2C_ReceiveData(I2C,I2C_ACK,I2C_NSTOP);//主机应答，继续传输数据
I2C_wait(I2C);
data[0]=I2C->DR;

I2C_ReceiveData(I2C,I2C_ACK,I2C_NSTOP);
I2C_wait(I2C);
data[1]=I2C->DR;

//CRC
I2C_ReceiveData(I2C,I2C_ACK,I2C_NSTOP);
I2C_wait(I2C);
data[2]=I2C->DR;

//湿度数据
I2C_ReceiveData(I2C,I2C_ACK,I2C_NSTOP);
I2C_wait(I2C);
data[3]=I2C->DR;

I2C_ReceiveData(I2C,I2C_ACK,I2C_NSTOP);
I2C_wait(I2C);
data[4]=I2C->DR;

I2C_ReceiveData(I2C,I2C_NACK,I2C_STOP);//主机不应答，停止传输数据
I2C_wait(I2C);
data[5]=I2C->DR;

I2C_GenerateSTOP(I2C,ENABLE);  //产生停止信号，表示传输结束
//校验和就不计算了
	temp=(data[0]<<8)|data[1];
	humi=(data[3]<<8)|data[4];
	
	// printf("Tem:%d    ",temp);
    // printf("humid:%d    ",humi);

	/*转换实际温度*/
	Temperature=(175*temp/65535-45) ;     // T = -45 + 175 * tem / (2^16-1)
	Humidity=(100*humi/65535);             // RH = hum*100 / (2^16-1)
	printf("Tem:%d   \r\n ",Temperature);
    printf("humid:%d    \r\n",Humidity);

	myprintf2(0,"T%d\r\n", Temperature);
    delay_ms(100);
    myprintf2(0,"H%d\r\n", Humidity);

}

