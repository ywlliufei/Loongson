#include "ls1c102_pulse.h"
#include "ls1x.h"

// num �������ţ� fre_d �Ƿ�Ƶϵ���� select8M Ϊ1��ѡ��8Mʱ��
void pulse_init(int num, uint32_t fre_d, int select8M)
{
    uint32_t fre_d0 = 0x7d00;// 32K

    if(fre_d <= 65535 && fre_d >= 1)
    {
        fre_d0 = fre_d;
    }

    if(num == 1)
    {
        PMU->PULSE1 &= ~(0x01<<17);// �������ʧ��
        if(select8M)
        {
            PMU->PULSE1 |= (0x01<<16);// ѡ��8Mʱ��
        }
        else
        {
            PMU->PULSE1 &= ~(0x01<<16);// ѡ��32Kʱ��
        }
        PMU->PULSE1 |= fre_d0;// 32K��Ƶ��
        PMU->PULSE1 |= (0x01<<17);// �������ʹ�ܣ���ʱ�Ӻͷ�Ƶ���úú�ʹ��
    }
    else if(num == 0)
    {
        PMU->PULSE0 &= ~(0x01<<17);// �������ʧ��
        if(select8M)
        {
            PMU->PULSE0 |= (0x01<<16);// ѡ��8Mʱ��
        }
        else
        {
            PMU->PULSE0 &= ~(0x01<<16);// ѡ��32Kʱ��
        }
        PMU->PULSE0 |= fre_d0;// 32K��Ƶ
        PMU->PULSE0 |= (0x01<<17);// �������ʹ�ܣ���ʱ�Ӻͷ�Ƶ���úú�ʹ��
    }
}

void pulse_enable(int num)// num ��������
{
    if(num == 1)
    {
        PMU->PULSE1 |= (0x01<<17);// �������ʹ�ܣ���ʱ�Ӻͷ�Ƶ���úú�ʹ��
    }
    else if(num == 0)
    {
        PMU->PULSE0 |= (0x01<<17);// �������ʹ�ܣ���ʱ�Ӻͷ�Ƶ���úú�ʹ��
    }
}

void pulse_disable(int num)// num ��������
{
    if(num == 1)
    {
        PMU->PULSE1 &= ~(0x01<<17);// �������ʧ��
    }
    else if(num == 0)
    {
        PMU->PULSE0 &= ~(0x01<<17);// �������ʧ��
    }
}


