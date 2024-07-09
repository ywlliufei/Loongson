// #ifndef __SHT30_H
// #define __SHT30_H

// #ifdef __cplusplus
// extern "C" {
// #endif

#include "ls1x.h"


#define SHT30_I2C_ADR    0x44<<1|1              // SHT30 从机地址,最后一位为1，表示读操作。


void Sht30_Init();
void Send_Tem_Humid(void);





// #ifdef __cplusplus
// }
// #endif

// #endif // __SHT30_H