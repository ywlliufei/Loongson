/*
gpio1第一复用：IIC——SDA,gpio22第一复用：IIC——SCL
*/
#include "ls1x.h"
#include "Config.h"

#include "ls1c102_i2c.h"
#include "ls1x_latimer.h"
#include "ls1x_gpio.h"



#define BHAddWrite     0x46      //写地址
#define BHAddRead      0x47      //读地址
#define BHPowDown      0x00      //关闭模块
#define BHPowOn        0x01      //打开模块等待指令 
#define BHReset        0x07      //重置数据寄存器仅在BHpowOn模式下有效
#define BHModeH1       0x10      //高分辨率 模式1 单位 11X 测量时间 120ms 
#define BHModeH2       0x11      //高分辨率 模式2 单位 11X 测量时间 120ms 
#define BHModeL        0x13      //低分辨率 单位4lx 测量时间16ms  
#define BHSigModeH     0x20      //一次测量高分辨率模式1，然后转到powerdown模式
#define BHSigModeH2    0x21      //同上类似
#define BHSigModeL     0x23      //同上类似 


// void bh_data_send(uint8_t command)  ;
// uint16_t bh_data_read(void)  ;
// void BH1750init(void);

void IIC_Start(void);
void IIC_Stop(void);
void IIC_SendAck(uint8_t ack);
void IIC_Send_Byte(uint8_t data);
uint8_t IIC_Read_Byte(void);
void GY30_data_send(uint8_t command)  ;
uint16_t GY30_data_read(void)  ;
void GY30init(void);
uint8_t  IIC_Wait_Ack(void);