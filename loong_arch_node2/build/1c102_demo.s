
1c102_demo.elf:     file format elf32-loongarch
1c102_demo.elf


Disassembly of section .text:

1c000000 <_start>:
_start():
1c000000:	0015000d 	move	$r13,$r0
1c000004:	50002000 	b	32(0x20) # 1c000024 <LoopCopyDataInit>

1c000008 <CopyDataInit>:
CopyDataInit():
1c000008:	143800cf 	lu12i.w	$r15,114694(0x1c006)
1c00000c:	03a821ef 	ori	$r15,$r15,0xa08
1c000010:	001035f0 	add.w	$r16,$r15,$r13
1c000014:	2880020f 	ld.w	$r15,$r16,0
1c000018:	00103590 	add.w	$r16,$r12,$r13
1c00001c:	2980020f 	st.w	$r15,$r16,0
1c000020:	028011ad 	addi.w	$r13,$r13,4(0x4)

1c000024 <LoopCopyDataInit>:
LoopCopyDataInit():
1c000024:	1500002c 	lu12i.w	$r12,-524287(0x80001)
1c000028:	0380018c 	ori	$r12,$r12,0x0
1c00002c:	1500002f 	lu12i.w	$r15,-524287(0x80001)
1c000030:	038081ef 	ori	$r15,$r15,0x20
1c000034:	0010358e 	add.w	$r14,$r12,$r13
1c000038:	5fffd1cf 	bne	$r14,$r15,-48(0x3ffd0) # 1c000008 <CopyDataInit>
1c00003c:	1500000c 	lu12i.w	$r12,-524288(0x80000)
1c000040:	0380018c 	ori	$r12,$r12,0x0
1c000044:	1500000d 	lu12i.w	$r13,-524288(0x80000)
1c000048:	038991ad 	ori	$r13,$r13,0x264
1c00004c:	580011ac 	beq	$r13,$r12,16(0x10) # 1c00005c <cpu_init_start>

1c000050 <LoopFillZerobss>:
LoopFillZerobss():
1c000050:	29800180 	st.w	$r0,$r12,0
1c000054:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c000058:	5ffff9ac 	bne	$r13,$r12,-8(0x3fff8) # 1c000050 <LoopFillZerobss>

1c00005c <cpu_init_start>:
cpu_init_start():
1c00005c:	1438002c 	lu12i.w	$r12,114689(0x1c001)
1c000060:	0400302c 	csrwr	$r12,0xc
1c000064:	0015000c 	move	$r12,$r0
1c000068:	0400102c 	csrwr	$r12,0x4
1c00006c:	1400002c 	lu12i.w	$r12,1(0x1)
1c000070:	03bffd8c 	ori	$r12,$r12,0xfff
1c000074:	0400118c 	csrxchg	$r12,$r12,0x4
1c000078:	15ffe3ec 	lu12i.w	$r12,-225(0xfff1f)
1c00007c:	03bffd8c 	ori	$r12,$r12,0xfff
1c000080:	0406442c 	csrwr	$r12,0x191
1c000084:	14eca06c 	lu12i.w	$r12,484611(0x76503)
1c000088:	0388418c 	ori	$r12,$r12,0x210
1c00008c:	0406402c 	csrwr	$r12,0x190
1c000090:	0380200c 	ori	$r12,$r0,0x8
1c000094:	04000180 	csrxchg	$r0,$r12,0x0
1c000098:	15000023 	lu12i.w	$r3,-524287(0x80001)
1c00009c:	03bdf063 	ori	$r3,$r3,0xf7c
1c0000a0:	54132400 	bl	4900(0x1324) # 1c0013c4 <bsp_init>
1c0000a4:	03400000 	andi	$r0,$r0,0x0
1c0000a8:	4c000020 	jirl	$r0,$r1,0

1c0000ac <cpu_wait>:
cpu_wait():
1c0000ac:	06488000 	idle	0x0
1c0000b0:	4c000020 	jirl	$r0,$r1,0
	...

1c000800 <m4_flash_4k>:
m4_flash_4k():
1c000800:	140007ec 	lu12i.w	$r12,63(0x3f)
1c000804:	03be018c 	ori	$r12,$r12,0xf80
1c000808:	157fcc0d 	lu12i.w	$r13,-262560(0xbfe60)
1c00080c:	0014b08c 	and	$r12,$r4,$r12
1c000810:	038061af 	ori	$r15,$r13,0x18
1c000814:	02804010 	addi.w	$r16,$r0,16(0x10)
1c000818:	1540000e 	lu12i.w	$r14,-393216(0xa0000)
1c00081c:	298001f0 	st.w	$r16,$r15,0
1c000820:	0015398e 	or	$r14,$r12,$r14
1c000824:	298001ae 	st.w	$r14,$r13,0
1c000828:	1480000f 	lu12i.w	$r15,262144(0x40000)
1c00082c:	14b54aae 	lu12i.w	$r14,371285(0x5aa55)
1c000830:	0396a9ce 	ori	$r14,$r14,0x5aa
1c000834:	298001af 	st.w	$r15,$r13,0
1c000838:	15c0000f 	lu12i.w	$r15,-131072(0xe0000)
1c00083c:	2980008e 	st.w	$r14,$r4,0
1c000840:	00153d8c 	or	$r12,$r12,$r15
1c000844:	298001ac 	st.w	$r12,$r13,0
1c000848:	4c000020 	jirl	$r0,$r1,0
	...

1c001000 <DEFAULT_INT_HANDLER>:
DEFAULT_INT_HANDLER():
1c001000:	0400c435 	csrwr	$r21,0x31
1c001004:	15000055 	lu12i.w	$r21,-524286(0x80002)
1c001008:	29bff2ac 	st.w	$r12,$r21,-4(0xffc)
1c00100c:	29bfe2ad 	st.w	$r13,$r21,-8(0xff8)
1c001010:	29bfd2ae 	st.w	$r14,$r21,-12(0xff4)
1c001014:	29bfc2af 	st.w	$r15,$r21,-16(0xff0)
1c001018:	29bfb2b0 	st.w	$r16,$r21,-20(0xfec)
1c00101c:	29bfa2b1 	st.w	$r17,$r21,-24(0xfe8)
1c001020:	29bf92b2 	st.w	$r18,$r21,-28(0xfe4)
1c001024:	29bf82b3 	st.w	$r19,$r21,-32(0xfe0)
1c001028:	29bf72b4 	st.w	$r20,$r21,-36(0xfdc)
1c00102c:	29bed2a4 	st.w	$r4,$r21,-76(0xfb4)
1c001030:	29bec2a5 	st.w	$r5,$r21,-80(0xfb0)
1c001034:	29beb2a6 	st.w	$r6,$r21,-84(0xfac)
1c001038:	29bea2a7 	st.w	$r7,$r21,-88(0xfa8)
1c00103c:	29be92a8 	st.w	$r8,$r21,-92(0xfa4)
1c001040:	29be82a9 	st.w	$r9,$r21,-96(0xfa0)
1c001044:	29be72aa 	st.w	$r10,$r21,-100(0xf9c)
1c001048:	29be62ab 	st.w	$r11,$r21,-104(0xf98)
1c00104c:	29be52a1 	st.w	$r1,$r21,-108(0xf94)
1c001050:	29be42a3 	st.w	$r3,$r21,-112(0xf90)
1c001054:	0400140c 	csrrd	$r12,0x5
1c001058:	036ef18d 	andi	$r13,$r12,0xbbc
1c00105c:	400065a0 	beqz	$r13,100(0x64) # 1c0010c0 <exception_core_check>

1c001060 <exception_pmu>:
exception_pmu():
1c001060:	0340118d 	andi	$r13,$r12,0x4
1c001064:	44002da0 	bnez	$r13,44(0x2c) # 1c001090 <wake_label>
1c001068:	0340218d 	andi	$r13,$r12,0x8
1c00106c:	44002da0 	bnez	$r13,44(0x2c) # 1c001098 <touch_label>
1c001070:	0340418d 	andi	$r13,$r12,0x10
1c001074:	44002da0 	bnez	$r13,44(0x2c) # 1c0010a0 <uart2_label>
1c001078:	0340818d 	andi	$r13,$r12,0x20
1c00107c:	44002da0 	bnez	$r13,44(0x2c) # 1c0010a8 <bcc_label>
1c001080:	0342018d 	andi	$r13,$r12,0x80
1c001084:	44002da0 	bnez	$r13,44(0x2c) # 1c0010b0 <exint_label>
1c001088:	0360018d 	andi	$r13,$r12,0x800
1c00108c:	44002da0 	bnez	$r13,44(0x2c) # 1c0010b8 <timer_label>

1c001090 <wake_label>:
wake_label():
1c001090:	543f2c00 	bl	16172(0x3f2c) # 1c004fbc <TIMER_WAKE_INT>
1c001094:	50003c00 	b	60(0x3c) # 1c0010d0 <exception_exit>

1c001098 <touch_label>:
touch_label():
1c001098:	543f7400 	bl	16244(0x3f74) # 1c00500c <TOUCH>
1c00109c:	50003400 	b	52(0x34) # 1c0010d0 <exception_exit>

1c0010a0 <uart2_label>:
uart2_label():
1c0010a0:	54400000 	bl	16384(0x4000) # 1c0050a0 <UART2_INT>
1c0010a4:	50002c00 	b	44(0x2c) # 1c0010d0 <exception_exit>

1c0010a8 <bcc_label>:
bcc_label():
1c0010a8:	54403400 	bl	16436(0x4034) # 1c0050dc <BAT_FAIL>
1c0010ac:	50002400 	b	36(0x24) # 1c0010d0 <exception_exit>

1c0010b0 <exint_label>:
exint_label():
1c0010b0:	543e5400 	bl	15956(0x3e54) # 1c004f04 <ext_handler>
1c0010b4:	50001c00 	b	28(0x1c) # 1c0010d0 <exception_exit>

1c0010b8 <timer_label>:
timer_label():
1c0010b8:	54420400 	bl	16900(0x4204) # 1c0052bc <TIMER_HANDLER>
1c0010bc:	50001400 	b	20(0x14) # 1c0010d0 <exception_exit>

1c0010c0 <exception_core_check>:
exception_core_check():
1c0010c0:	0341018d 	andi	$r13,$r12,0x40
1c0010c4:	40000da0 	beqz	$r13,12(0xc) # 1c0010d0 <exception_exit>
1c0010c8:	5440ec00 	bl	16620(0x40ec) # 1c0051b4 <intc_handler>
1c0010cc:	50000400 	b	4(0x4) # 1c0010d0 <exception_exit>

1c0010d0 <exception_exit>:
exception_exit():
1c0010d0:	15000055 	lu12i.w	$r21,-524286(0x80002)
1c0010d4:	28bff2ac 	ld.w	$r12,$r21,-4(0xffc)
1c0010d8:	28bfe2ad 	ld.w	$r13,$r21,-8(0xff8)
1c0010dc:	28bfd2ae 	ld.w	$r14,$r21,-12(0xff4)
1c0010e0:	28bfc2af 	ld.w	$r15,$r21,-16(0xff0)
1c0010e4:	28bfb2b0 	ld.w	$r16,$r21,-20(0xfec)
1c0010e8:	28bfa2b1 	ld.w	$r17,$r21,-24(0xfe8)
1c0010ec:	28bf92b2 	ld.w	$r18,$r21,-28(0xfe4)
1c0010f0:	28bf82b3 	ld.w	$r19,$r21,-32(0xfe0)
1c0010f4:	28bf72b4 	ld.w	$r20,$r21,-36(0xfdc)
1c0010f8:	28bed2a4 	ld.w	$r4,$r21,-76(0xfb4)
1c0010fc:	28bec2a5 	ld.w	$r5,$r21,-80(0xfb0)
1c001100:	28beb2a6 	ld.w	$r6,$r21,-84(0xfac)
1c001104:	28bea2a7 	ld.w	$r7,$r21,-88(0xfa8)
1c001108:	28be92a8 	ld.w	$r8,$r21,-92(0xfa4)
1c00110c:	28be82a9 	ld.w	$r9,$r21,-96(0xfa0)
1c001110:	28be72aa 	ld.w	$r10,$r21,-100(0xf9c)
1c001114:	28be62ab 	ld.w	$r11,$r21,-104(0xf98)
1c001118:	28be52a1 	ld.w	$r1,$r21,-108(0xf94)
1c00111c:	28be42a3 	ld.w	$r3,$r21,-112(0xf90)
1c001120:	0400c415 	csrrd	$r21,0x31
1c001124:	06483800 	ertn

1c001128 <serial_out>:
serial_out():
1c001128:	157fd008 	lu12i.w	$r8,-262528(0xbfe80)
1c00112c:	2a001508 	ld.bu	$r8,$r8,5(0x5)
1c001130:	03408108 	andi	$r8,$r8,0x20
1c001134:	43fff51f 	beqz	$r8,-12(0x7ffff4) # 1c001128 <serial_out>
1c001138:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c00113c:	29000184 	st.b	$r4,$r12,0
1c001140:	4c000020 	jirl	$r0,$r1,0

1c001144 <outputaddr>:
outputaddr():
1c001144:	02bff063 	addi.w	$r3,$r3,-4(0xffc)
1c001148:	29800061 	st.w	$r1,$r3,0
1c00114c:	1cc80006 	pcaddu12i	$r6,409600(0x64000)
1c001150:	28bae0c6 	ld.w	$r6,$r6,-328(0xeb8)
1c001154:	15e0000d 	lu12i.w	$r13,-65536(0xf0000)
1c001158:	0380200e 	ori	$r14,$r0,0x8
1c00115c:	0380700f 	ori	$r15,$r0,0x1c
1c001160:	03800085 	ori	$r5,$r4,0x0
1c001164:	58002dc0 	beq	$r14,$r0,44(0x2c) # 1c001190 <outputaddr+0x4c>
1c001168:	0014b4ac 	and	$r12,$r5,$r13
1c00116c:	0017bd8c 	srl.w	$r12,$r12,$r15
1c001170:	0010198c 	add.w	$r12,$r12,$r6
1c001174:	2a000190 	ld.bu	$r16,$r12,0
1c001178:	03800204 	ori	$r4,$r16,0x0
1c00117c:	57ffafff 	bl	-84(0xfffffac) # 1c001128 <serial_out>
1c001180:	004491ad 	srli.w	$r13,$r13,0x4
1c001184:	02bff1ef 	addi.w	$r15,$r15,-4(0xffc)
1c001188:	02bffdce 	addi.w	$r14,$r14,-1(0xfff)
1c00118c:	53ffdbff 	b	-40(0xfffffd8) # 1c001164 <outputaddr+0x20>
1c001190:	03802804 	ori	$r4,$r0,0xa
1c001194:	57ff97ff 	bl	-108(0xfffff94) # 1c001128 <serial_out>
1c001198:	28800061 	ld.w	$r1,$r3,0
1c00119c:	02801063 	addi.w	$r3,$r3,4(0x4)
1c0011a0:	4c000020 	jirl	$r0,$r1,0

1c0011a4 <outputstring>:
outputstring():
1c0011a4:	00150089 	move	$r9,$r4
1c0011a8:	2a00012c 	ld.bu	$r12,$r9,0
1c0011ac:	58002580 	beq	$r12,$r0,36(0x24) # 1c0011d0 <outputstring+0x2c>
1c0011b0:	157fd008 	lu12i.w	$r8,-262528(0xbfe80)
1c0011b4:	2a001508 	ld.bu	$r8,$r8,5(0x5)
1c0011b8:	03408108 	andi	$r8,$r8,0x20
1c0011bc:	43fff51f 	beqz	$r8,-12(0x7ffff4) # 1c0011b0 <outputstring+0xc>
1c0011c0:	157fd007 	lu12i.w	$r7,-262528(0xbfe80)
1c0011c4:	290000ec 	st.b	$r12,$r7,0
1c0011c8:	02800529 	addi.w	$r9,$r9,1(0x1)
1c0011cc:	53ffdfff 	b	-36(0xfffffdc) # 1c0011a8 <outputstring+0x4>
1c0011d0:	157fd008 	lu12i.w	$r8,-262528(0xbfe80)
1c0011d4:	2a001508 	ld.bu	$r8,$r8,5(0x5)
1c0011d8:	03410108 	andi	$r8,$r8,0x40
1c0011dc:	43fff51f 	beqz	$r8,-12(0x7ffff4) # 1c0011d0 <outputstring+0x2c>
1c0011e0:	4c000020 	jirl	$r0,$r1,0

1c0011e4 <cpu_sleep>:
cpu_sleep():
1c0011e4:	0400c435 	csrwr	$r21,0x31
1c0011e8:	15000055 	lu12i.w	$r21,-524286(0x80002)
1c0011ec:	29bff2ac 	st.w	$r12,$r21,-4(0xffc)
1c0011f0:	29bfe2ad 	st.w	$r13,$r21,-8(0xff8)
1c0011f4:	29bfd2ae 	st.w	$r14,$r21,-12(0xff4)
1c0011f8:	29bfc2af 	st.w	$r15,$r21,-16(0xff0)
1c0011fc:	29bfb2b0 	st.w	$r16,$r21,-20(0xfec)
1c001200:	29bfa2b1 	st.w	$r17,$r21,-24(0xfe8)
1c001204:	29bf92b2 	st.w	$r18,$r21,-28(0xfe4)
1c001208:	29bf82b3 	st.w	$r19,$r21,-32(0xfe0)
1c00120c:	29bf72b4 	st.w	$r20,$r21,-36(0xfdc)
1c001210:	29bf62b7 	st.w	$r23,$r21,-40(0xfd8)
1c001214:	29bf52b8 	st.w	$r24,$r21,-44(0xfd4)
1c001218:	29bf42b9 	st.w	$r25,$r21,-48(0xfd0)
1c00121c:	29bf32ba 	st.w	$r26,$r21,-52(0xfcc)
1c001220:	29bf22bb 	st.w	$r27,$r21,-56(0xfc8)
1c001224:	29bf12bc 	st.w	$r28,$r21,-60(0xfc4)
1c001228:	29bf02bd 	st.w	$r29,$r21,-64(0xfc0)
1c00122c:	29bef2be 	st.w	$r30,$r21,-68(0xfbc)
1c001230:	29bee2bf 	st.w	$r31,$r21,-72(0xfb8)
1c001234:	29bed2a4 	st.w	$r4,$r21,-76(0xfb4)
1c001238:	29bec2a5 	st.w	$r5,$r21,-80(0xfb0)
1c00123c:	29beb2a6 	st.w	$r6,$r21,-84(0xfac)
1c001240:	29bea2a7 	st.w	$r7,$r21,-88(0xfa8)
1c001244:	29be92a8 	st.w	$r8,$r21,-92(0xfa4)
1c001248:	29be82a9 	st.w	$r9,$r21,-96(0xfa0)
1c00124c:	29be72aa 	st.w	$r10,$r21,-100(0xf9c)
1c001250:	29be62ab 	st.w	$r11,$r21,-104(0xf98)
1c001254:	29be52a1 	st.w	$r1,$r21,-108(0xf94)
1c001258:	29be42a3 	st.w	$r3,$r21,-112(0xf90)
1c00125c:	29be32a2 	st.w	$r2,$r21,-116(0xf8c)
1c001260:	29be22b6 	st.w	$r22,$r21,-120(0xf88)
1c001264:	028002ac 	addi.w	$r12,$r21,0
1c001268:	0400c415 	csrrd	$r21,0x31
1c00126c:	29be1195 	st.w	$r21,$r12,-124(0xf84)
1c001270:	38720000 	dbar	0x0
1c001274:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c001278:	2880f1ac 	ld.w	$r12,$r13,60(0x3c)
1c00127c:	0340058c 	andi	$r12,$r12,0x1
1c001280:	43fff99f 	beqz	$r12,-8(0x7ffff8) # 1c001278 <cpu_sleep+0x94>
1c001284:	2980f1ac 	st.w	$r12,$r13,60(0x3c)
1c001288:	06488000 	idle	0x0

1c00128c <wakeup_reset>:
wakeup_reset():
1c00128c:	1cc80004 	pcaddu12i	$r4,409600(0x64000)
1c001290:	28b62084 	ld.w	$r4,$r4,-632(0xd88)
1c001294:	57ff13ff 	bl	-240(0xfffff10) # 1c0011a4 <outputstring>
1c001298:	15000055 	lu12i.w	$r21,-524286(0x80002)
1c00129c:	28bff2ac 	ld.w	$r12,$r21,-4(0xffc)
1c0012a0:	28bfe2ad 	ld.w	$r13,$r21,-8(0xff8)
1c0012a4:	28bfd2ae 	ld.w	$r14,$r21,-12(0xff4)
1c0012a8:	28bfc2af 	ld.w	$r15,$r21,-16(0xff0)
1c0012ac:	28bfb2b0 	ld.w	$r16,$r21,-20(0xfec)
1c0012b0:	28bfa2b1 	ld.w	$r17,$r21,-24(0xfe8)
1c0012b4:	28bf92b2 	ld.w	$r18,$r21,-28(0xfe4)
1c0012b8:	28bf82b3 	ld.w	$r19,$r21,-32(0xfe0)
1c0012bc:	28bf72b4 	ld.w	$r20,$r21,-36(0xfdc)
1c0012c0:	28bf62b7 	ld.w	$r23,$r21,-40(0xfd8)
1c0012c4:	28bf52b8 	ld.w	$r24,$r21,-44(0xfd4)
1c0012c8:	28bf42b9 	ld.w	$r25,$r21,-48(0xfd0)
1c0012cc:	28bf32ba 	ld.w	$r26,$r21,-52(0xfcc)
1c0012d0:	28bf22bb 	ld.w	$r27,$r21,-56(0xfc8)
1c0012d4:	28bf12bc 	ld.w	$r28,$r21,-60(0xfc4)
1c0012d8:	28bf02bd 	ld.w	$r29,$r21,-64(0xfc0)
1c0012dc:	28bef2be 	ld.w	$r30,$r21,-68(0xfbc)
1c0012e0:	28bee2bf 	ld.w	$r31,$r21,-72(0xfb8)
1c0012e4:	28bed2a4 	ld.w	$r4,$r21,-76(0xfb4)
1c0012e8:	28bec2a5 	ld.w	$r5,$r21,-80(0xfb0)
1c0012ec:	28beb2a6 	ld.w	$r6,$r21,-84(0xfac)
1c0012f0:	28bea2a7 	ld.w	$r7,$r21,-88(0xfa8)
1c0012f4:	28be92a8 	ld.w	$r8,$r21,-92(0xfa4)
1c0012f8:	28be82a9 	ld.w	$r9,$r21,-96(0xfa0)
1c0012fc:	28be72aa 	ld.w	$r10,$r21,-100(0xf9c)
1c001300:	28be62ab 	ld.w	$r11,$r21,-104(0xf98)
1c001304:	28be52a1 	ld.w	$r1,$r21,-108(0xf94)
1c001308:	28be42a3 	ld.w	$r3,$r21,-112(0xf90)
1c00130c:	28be32a2 	ld.w	$r2,$r21,-116(0xf8c)
1c001310:	28be22b6 	ld.w	$r22,$r21,-120(0xf88)
1c001314:	28be12b5 	ld.w	$r21,$r21,-124(0xf84)
1c001318:	0400c42c 	csrwr	$r12,0x31
1c00131c:	0380100c 	ori	$r12,$r0,0x4
1c001320:	0400018c 	csrxchg	$r12,$r12,0x0
1c001324:	0400c40c 	csrrd	$r12,0x31
1c001328:	4c000020 	jirl	$r0,$r1,0

1c00132c <GPIOInit>:
GPIOInit():
1c00132c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001330:	29803061 	st.w	$r1,$r3,12(0xc)
1c001334:	29802076 	st.w	$r22,$r3,8(0x8)
1c001338:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00133c:	02800406 	addi.w	$r6,$r0,1(0x1)
1c001340:	140001ec 	lu12i.w	$r12,15(0xf)
1c001344:	03bffd85 	ori	$r5,$r12,0xfff
1c001348:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00134c:	03804184 	ori	$r4,$r12,0x10
1c001350:	54017c00 	bl	380(0x17c) # 1c0014cc <AFIO_RemapConfig>
1c001354:	02800406 	addi.w	$r6,$r0,1(0x1)
1c001358:	140001ec 	lu12i.w	$r12,15(0xf)
1c00135c:	03bffd85 	ori	$r5,$r12,0xfff
1c001360:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001364:	03805184 	ori	$r4,$r12,0x14
1c001368:	54016400 	bl	356(0x164) # 1c0014cc <AFIO_RemapConfig>
1c00136c:	02800406 	addi.w	$r6,$r0,1(0x1)
1c001370:	140001ec 	lu12i.w	$r12,15(0xf)
1c001374:	03bcfd85 	ori	$r5,$r12,0xf3f
1c001378:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00137c:	03806184 	ori	$r4,$r12,0x18
1c001380:	54014c00 	bl	332(0x14c) # 1c0014cc <AFIO_RemapConfig>
1c001384:	02800806 	addi.w	$r6,$r0,2(0x2)
1c001388:	02830005 	addi.w	$r5,$r0,192(0xc0)
1c00138c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001390:	03806184 	ori	$r4,$r12,0x18
1c001394:	54013800 	bl	312(0x138) # 1c0014cc <AFIO_RemapConfig>
1c001398:	02800406 	addi.w	$r6,$r0,1(0x1)
1c00139c:	140001ec 	lu12i.w	$r12,15(0xf)
1c0013a0:	03bffd85 	ori	$r5,$r12,0xfff
1c0013a4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0013a8:	03807184 	ori	$r4,$r12,0x1c
1c0013ac:	54012000 	bl	288(0x120) # 1c0014cc <AFIO_RemapConfig>
1c0013b0:	03400000 	andi	$r0,$r0,0x0
1c0013b4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0013b8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0013bc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0013c0:	4c000020 	jirl	$r0,$r1,0

1c0013c4 <bsp_init>:
bsp_init():
1c0013c4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0013c8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0013cc:	29806076 	st.w	$r22,$r3,24(0x18)
1c0013d0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0013d4:	541d3400 	bl	7476(0x1d34) # 1c003108 <DisableInt>
1c0013d8:	541c5c00 	bl	7260(0x1c5c) # 1c003034 <SystemClockInit>
1c0013dc:	57ff53ff 	bl	-176(0xfffff50) # 1c00132c <GPIOInit>
1c0013e0:	54245400 	bl	9300(0x2454) # 1c003834 <WdgInit>
1c0013e4:	02802004 	addi.w	$r4,$r0,8(0x8)
1c0013e8:	54239400 	bl	9108(0x2394) # 1c00377c <WDG_SetWatchDog>
1c0013ec:	1400038c 	lu12i.w	$r12,28(0x1c)
1c0013f0:	03880184 	ori	$r4,$r12,0x200
1c0013f4:	54150800 	bl	5384(0x1508) # 1c0028fc <Uart0_init>
1c0013f8:	1400038c 	lu12i.w	$r12,28(0x1c)
1c0013fc:	03880184 	ori	$r4,$r12,0x200
1c001400:	5415c000 	bl	5568(0x15c0) # 1c0029c0 <Uart1_init>
1c001404:	541ef800 	bl	7928(0x1ef8) # 1c0032fc <ls1x_logo>
1c001408:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00140c:	0380118c 	ori	$r12,$r12,0x4
1c001410:	2880018e 	ld.w	$r14,$r12,0
1c001414:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001418:	0380118c 	ori	$r12,$r12,0x4
1c00141c:	1404000d 	lu12i.w	$r13,8192(0x2000)
1c001420:	001535cd 	or	$r13,$r14,$r13
1c001424:	2980018d 	st.w	$r13,$r12,0
1c001428:	541d0400 	bl	7428(0x1d04) # 1c00312c <EnableInt>
1c00142c:	541f9800 	bl	8088(0x1f98) # 1c0033c4 <open_count>
1c001430:	02801804 	addi.w	$r4,$r0,6(0x6)
1c001434:	541d6000 	bl	7520(0x1d60) # 1c003194 <Wake_Set>
1c001438:	5423d000 	bl	9168(0x23d0) # 1c003808 <WDG_DogFeed>
1c00143c:	541e0400 	bl	7684(0x1e04) # 1c003240 <PMU_GetRstRrc>
1c001440:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001444:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001448:	44003180 	bnez	$r12,48(0x30) # 1c001478 <bsp_init+0xb4>
1c00144c:	1c000084 	pcaddu12i	$r4,4(0x4)
1c001450:	029bc084 	addi.w	$r4,$r4,1776(0x6f0)
1c001454:	54085800 	bl	2136(0x858) # 1c001cac <myprintf>
1c001458:	541e5400 	bl	7764(0x1e54) # 1c0032ac <PMU_GetBootSpiStatus>
1c00145c:	0015008c 	move	$r12,$r4
1c001460:	40001180 	beqz	$r12,16(0x10) # 1c001470 <bsp_init+0xac>
1c001464:	1c000084 	pcaddu12i	$r4,4(0x4)
1c001468:	029ba084 	addi.w	$r4,$r4,1768(0x6e8)
1c00146c:	54084000 	bl	2112(0x840) # 1c001cac <myprintf>
1c001470:	543e8400 	bl	16004(0x3e84) # 1c0052f4 <main>
1c001474:	50004000 	b	64(0x40) # 1c0014b4 <bsp_init+0xf0>
1c001478:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00147c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001480:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c001498 <bsp_init+0xd4>
1c001484:	1c000084 	pcaddu12i	$r4,4(0x4)
1c001488:	029b5084 	addi.w	$r4,$r4,1748(0x6d4)
1c00148c:	54082000 	bl	2080(0x820) # 1c001cac <myprintf>
1c001490:	543e6400 	bl	15972(0x3e64) # 1c0052f4 <main>
1c001494:	50002000 	b	32(0x20) # 1c0014b4 <bsp_init+0xf0>
1c001498:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00149c:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0014a0:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c0014b4 <bsp_init+0xf0>
1c0014a4:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0014a8:	029b1084 	addi.w	$r4,$r4,1732(0x6c4)
1c0014ac:	54080000 	bl	2048(0x800) # 1c001cac <myprintf>
1c0014b0:	57fd37ff 	bl	-716(0xffffd34) # 1c0011e4 <cpu_sleep>
1c0014b4:	0015000c 	move	$r12,$r0
1c0014b8:	00150184 	move	$r4,$r12
1c0014bc:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0014c0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0014c4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0014c8:	4c000020 	jirl	$r0,$r1,0

1c0014cc <AFIO_RemapConfig>:
AFIO_RemapConfig():
1c0014cc:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0014d0:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0014d4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0014d8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0014dc:	001500ac 	move	$r12,$r5
1c0014e0:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c0014e4:	297f6acc 	st.h	$r12,$r22,-38(0xfda)
1c0014e8:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c0014ec:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0014f0:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c0014f4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0014f8:	2880018c 	ld.w	$r12,$r12,0
1c0014fc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001500:	293faec0 	st.b	$r0,$r22,-21(0xfeb)
1c001504:	50006c00 	b	108(0x6c) # 1c001570 <AFIO_RemapConfig+0xa4>
1c001508:	2a7f6acd 	ld.hu	$r13,$r22,-38(0xfda)
1c00150c:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c001510:	001831ac 	sra.w	$r12,$r13,$r12
1c001514:	0340058c 	andi	$r12,$r12,0x1
1c001518:	40004d80 	beqz	$r12,76(0x4c) # 1c001564 <AFIO_RemapConfig+0x98>
1c00151c:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c001520:	0040858c 	slli.w	$r12,$r12,0x1
1c001524:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001528:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c00152c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001530:	001731ac 	sll.w	$r12,$r13,$r12
1c001534:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c001538:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c00153c:	0014300c 	nor	$r12,$r0,$r12
1c001540:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001544:	0014b1ac 	and	$r12,$r13,$r12
1c001548:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00154c:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c001550:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001554:	001731ac 	sll.w	$r12,$r13,$r12
1c001558:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00155c:	001531ac 	or	$r12,$r13,$r12
1c001560:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001564:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c001568:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00156c:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c001570:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c001574:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c001578:	6fff918d 	bgeu	$r12,$r13,-112(0x3ff90) # 1c001508 <AFIO_RemapConfig+0x3c>
1c00157c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001580:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001584:	2980018d 	st.w	$r13,$r12,0
1c001588:	03400000 	andi	$r0,$r0,0x0
1c00158c:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c001590:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001594:	4c000020 	jirl	$r0,$r1,0

1c001598 <gpio_write_pin>:
gpio_write_pin():
1c001598:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00159c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0015a0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0015a4:	0015008c 	move	$r12,$r4
1c0015a8:	001500ad 	move	$r13,$r5
1c0015ac:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0015b0:	001501ac 	move	$r12,$r13
1c0015b4:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c0015b8:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c0015bc:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0015c0:	5c0025ac 	bne	$r13,$r12,36(0x24) # 1c0015e4 <gpio_write_pin+0x4c>
1c0015c4:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0015c8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0015cc:	0382018c 	ori	$r12,$r12,0x80
1c0015d0:	001031ac 	add.w	$r12,$r13,$r12
1c0015d4:	0015018d 	move	$r13,$r12
1c0015d8:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c0015dc:	290001ac 	st.b	$r12,$r13,0
1c0015e0:	50002000 	b	32(0x20) # 1c001600 <gpio_write_pin+0x68>
1c0015e4:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0015e8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0015ec:	0382018c 	ori	$r12,$r12,0x80
1c0015f0:	001031ac 	add.w	$r12,$r13,$r12
1c0015f4:	0015018d 	move	$r13,$r12
1c0015f8:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0015fc:	290001ac 	st.b	$r12,$r13,0
1c001600:	03400000 	andi	$r0,$r0,0x0
1c001604:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001608:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00160c:	4c000020 	jirl	$r0,$r1,0

1c001610 <gpio_pin_remap>:
gpio_pin_remap():
1c001610:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001614:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c001618:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00161c:	0015008c 	move	$r12,$r4
1c001620:	001500ad 	move	$r13,$r5
1c001624:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c001628:	001501ac 	move	$r12,$r13
1c00162c:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c001630:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c001634:	0044918c 	srli.w	$r12,$r12,0x4
1c001638:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00163c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001640:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c001644:	03403d8c 	andi	$r12,$r12,0xf
1c001648:	0040858c 	slli.w	$r12,$r12,0x1
1c00164c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001650:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c001654:	0280fc0c 	addi.w	$r12,$r0,63(0x3f)
1c001658:	6801b58d 	bltu	$r12,$r13,436(0x1b4) # 1c00180c <gpio_pin_remap+0x1fc>
1c00165c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001660:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001664:	580089ac 	beq	$r13,$r12,136(0x88) # 1c0016ec <gpio_pin_remap+0xdc>
1c001668:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00166c:	40002180 	beqz	$r12,32(0x20) # 1c00168c <gpio_pin_remap+0x7c>
1c001670:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001674:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c001678:	5800d5ac 	beq	$r13,$r12,212(0xd4) # 1c00174c <gpio_pin_remap+0x13c>
1c00167c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001680:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c001684:	580129ac 	beq	$r13,$r12,296(0x128) # 1c0017ac <gpio_pin_remap+0x19c>
1c001688:	50018800 	b	392(0x188) # 1c001810 <gpio_pin_remap+0x200>
1c00168c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001690:	0380418c 	ori	$r12,$r12,0x10
1c001694:	2880018d 	ld.w	$r13,$r12,0
1c001698:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c00169c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0016a0:	001731cc 	sll.w	$r12,$r14,$r12
1c0016a4:	0014300c 	nor	$r12,$r0,$r12
1c0016a8:	0015018e 	move	$r14,$r12
1c0016ac:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0016b0:	0380418c 	ori	$r12,$r12,0x10
1c0016b4:	0014b9ad 	and	$r13,$r13,$r14
1c0016b8:	2980018d 	st.w	$r13,$r12,0
1c0016bc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0016c0:	0380418c 	ori	$r12,$r12,0x10
1c0016c4:	2880018d 	ld.w	$r13,$r12,0
1c0016c8:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c0016cc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0016d0:	001731cc 	sll.w	$r12,$r14,$r12
1c0016d4:	0015018e 	move	$r14,$r12
1c0016d8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0016dc:	0380418c 	ori	$r12,$r12,0x10
1c0016e0:	001539ad 	or	$r13,$r13,$r14
1c0016e4:	2980018d 	st.w	$r13,$r12,0
1c0016e8:	50012800 	b	296(0x128) # 1c001810 <gpio_pin_remap+0x200>
1c0016ec:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0016f0:	0380518c 	ori	$r12,$r12,0x14
1c0016f4:	2880018d 	ld.w	$r13,$r12,0
1c0016f8:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c0016fc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001700:	001731cc 	sll.w	$r12,$r14,$r12
1c001704:	0014300c 	nor	$r12,$r0,$r12
1c001708:	0015018e 	move	$r14,$r12
1c00170c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001710:	0380518c 	ori	$r12,$r12,0x14
1c001714:	0014b9ad 	and	$r13,$r13,$r14
1c001718:	2980018d 	st.w	$r13,$r12,0
1c00171c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001720:	0380518c 	ori	$r12,$r12,0x14
1c001724:	2880018d 	ld.w	$r13,$r12,0
1c001728:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c00172c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001730:	001731cc 	sll.w	$r12,$r14,$r12
1c001734:	0015018e 	move	$r14,$r12
1c001738:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00173c:	0380518c 	ori	$r12,$r12,0x14
1c001740:	001539ad 	or	$r13,$r13,$r14
1c001744:	2980018d 	st.w	$r13,$r12,0
1c001748:	5000c800 	b	200(0xc8) # 1c001810 <gpio_pin_remap+0x200>
1c00174c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001750:	0380618c 	ori	$r12,$r12,0x18
1c001754:	2880018d 	ld.w	$r13,$r12,0
1c001758:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c00175c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001760:	001731cc 	sll.w	$r12,$r14,$r12
1c001764:	0014300c 	nor	$r12,$r0,$r12
1c001768:	0015018e 	move	$r14,$r12
1c00176c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001770:	0380618c 	ori	$r12,$r12,0x18
1c001774:	0014b9ad 	and	$r13,$r13,$r14
1c001778:	2980018d 	st.w	$r13,$r12,0
1c00177c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001780:	0380618c 	ori	$r12,$r12,0x18
1c001784:	2880018d 	ld.w	$r13,$r12,0
1c001788:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c00178c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001790:	001731cc 	sll.w	$r12,$r14,$r12
1c001794:	0015018e 	move	$r14,$r12
1c001798:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00179c:	0380618c 	ori	$r12,$r12,0x18
1c0017a0:	001539ad 	or	$r13,$r13,$r14
1c0017a4:	2980018d 	st.w	$r13,$r12,0
1c0017a8:	50006800 	b	104(0x68) # 1c001810 <gpio_pin_remap+0x200>
1c0017ac:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017b0:	0380718c 	ori	$r12,$r12,0x1c
1c0017b4:	2880018d 	ld.w	$r13,$r12,0
1c0017b8:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c0017bc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0017c0:	001731cc 	sll.w	$r12,$r14,$r12
1c0017c4:	0014300c 	nor	$r12,$r0,$r12
1c0017c8:	0015018e 	move	$r14,$r12
1c0017cc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017d0:	0380718c 	ori	$r12,$r12,0x1c
1c0017d4:	0014b9ad 	and	$r13,$r13,$r14
1c0017d8:	2980018d 	st.w	$r13,$r12,0
1c0017dc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017e0:	0380718c 	ori	$r12,$r12,0x1c
1c0017e4:	2880018d 	ld.w	$r13,$r12,0
1c0017e8:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c0017ec:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0017f0:	001731cc 	sll.w	$r12,$r14,$r12
1c0017f4:	0015018e 	move	$r14,$r12
1c0017f8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017fc:	0380718c 	ori	$r12,$r12,0x1c
1c001800:	001539ad 	or	$r13,$r13,$r14
1c001804:	2980018d 	st.w	$r13,$r12,0
1c001808:	50000800 	b	8(0x8) # 1c001810 <gpio_pin_remap+0x200>
1c00180c:	03400000 	andi	$r0,$r0,0x0
1c001810:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c001814:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001818:	4c000020 	jirl	$r0,$r1,0

1c00181c <myputchar>:
myputchar():
1c00181c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001820:	29807061 	st.w	$r1,$r3,28(0x1c)
1c001824:	29806076 	st.w	$r22,$r3,24(0x18)
1c001828:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00182c:	0015008c 	move	$r12,$r4
1c001830:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001834:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001838:	00150185 	move	$r5,$r12
1c00183c:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c001840:	54102400 	bl	4132(0x1024) # 1c002864 <UART_SendData>
1c001844:	03400000 	andi	$r0,$r0,0x0
1c001848:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00184c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c001850:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001854:	4c000020 	jirl	$r0,$r1,0

1c001858 <myputchar2>:
myputchar2():
1c001858:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00185c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c001860:	29806076 	st.w	$r22,$r3,24(0x18)
1c001864:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001868:	0015008c 	move	$r12,$r4
1c00186c:	001500ad 	move	$r13,$r5
1c001870:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001874:	001501ac 	move	$r12,$r13
1c001878:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c00187c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001880:	44001580 	bnez	$r12,20(0x14) # 1c001894 <myputchar2+0x3c>
1c001884:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c001888:	00150184 	move	$r4,$r12
1c00188c:	5411b800 	bl	4536(0x11b8) # 1c002a44 <Uart0_send>
1c001890:	50003800 	b	56(0x38) # 1c0018c8 <myputchar2+0x70>
1c001894:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c001898:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00189c:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c0018b0 <myputchar2+0x58>
1c0018a0:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0018a4:	00150184 	move	$r4,$r12
1c0018a8:	5411d800 	bl	4568(0x11d8) # 1c002a80 <Uart1_send>
1c0018ac:	50001c00 	b	28(0x1c) # 1c0018c8 <myputchar2+0x70>
1c0018b0:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0018b4:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0018b8:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c0018c8 <myputchar2+0x70>
1c0018bc:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0018c0:	00150184 	move	$r4,$r12
1c0018c4:	5411f800 	bl	4600(0x11f8) # 1c002abc <Uart2_send>
1c0018c8:	03400000 	andi	$r0,$r0,0x0
1c0018cc:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0018d0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0018d4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0018d8:	4c000020 	jirl	$r0,$r1,0

1c0018dc <printbase>:
printbase():
1c0018dc:	02be4063 	addi.w	$r3,$r3,-112(0xf90)
1c0018e0:	2981b061 	st.w	$r1,$r3,108(0x6c)
1c0018e4:	2981a076 	st.w	$r22,$r3,104(0x68)
1c0018e8:	0281c076 	addi.w	$r22,$r3,112(0x70)
1c0018ec:	29be72c4 	st.w	$r4,$r22,-100(0xf9c)
1c0018f0:	29be62c5 	st.w	$r5,$r22,-104(0xf98)
1c0018f4:	29be52c6 	st.w	$r6,$r22,-108(0xf94)
1c0018f8:	29be42c7 	st.w	$r7,$r22,-112(0xf90)
1c0018fc:	28be42cc 	ld.w	$r12,$r22,-112(0xf90)
1c001900:	40002580 	beqz	$r12,36(0x24) # 1c001924 <printbase+0x48>
1c001904:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c001908:	64001d80 	bge	$r12,$r0,28(0x1c) # 1c001924 <printbase+0x48>
1c00190c:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c001910:	0011300c 	sub.w	$r12,$r0,$r12
1c001914:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001918:	0280b404 	addi.w	$r4,$r0,45(0x2d)
1c00191c:	57ff03ff 	bl	-256(0xfffff00) # 1c00181c <myputchar>
1c001920:	50000c00 	b	12(0xc) # 1c00192c <printbase+0x50>
1c001924:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c001928:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00192c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c001930:	50005000 	b	80(0x50) # 1c001980 <printbase+0xa4>
1c001934:	28be52cc 	ld.w	$r12,$r22,-108(0xf94)
1c001938:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c00193c:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c001940:	5c000980 	bne	$r12,$r0,8(0x8) # 1c001948 <printbase+0x6c>
1c001944:	002a0007 	break	0x7
1c001948:	00005dcc 	ext.w.b	$r12,$r14
1c00194c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001950:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c001954:	001035cd 	add.w	$r13,$r14,$r13
1c001958:	293ec1ac 	st.b	$r12,$r13,-80(0xfb0)
1c00195c:	28be52cd 	ld.w	$r13,$r22,-108(0xf94)
1c001960:	28bf92ce 	ld.w	$r14,$r22,-28(0xfe4)
1c001964:	002135cc 	div.wu	$r12,$r14,$r13
1c001968:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c001970 <printbase+0x94>
1c00196c:	002a0007 	break	0x7
1c001970:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001974:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001978:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00197c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001980:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001984:	47ffb19f 	bnez	$r12,-80(0x7fffb0) # 1c001934 <printbase+0x58>
1c001988:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c00198c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001990:	28bfb2ce 	ld.w	$r14,$r22,-20(0xfec)
1c001994:	001231ad 	slt	$r13,$r13,$r12
1c001998:	0013b5ce 	masknez	$r14,$r14,$r13
1c00199c:	0013358c 	maskeqz	$r12,$r12,$r13
1c0019a0:	001531cc 	or	$r12,$r14,$r12
1c0019a4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0019a8:	50007400 	b	116(0x74) # 1c001a1c <printbase+0x140>
1c0019ac:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0019b0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0019b4:	60001d8d 	blt	$r12,$r13,28(0x1c) # 1c0019d0 <printbase+0xf4>
1c0019b8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0019bc:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0019c0:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c0019c4:	001031ac 	add.w	$r12,$r13,$r12
1c0019c8:	283ec18c 	ld.b	$r12,$r12,-80(0xfb0)
1c0019cc:	50000800 	b	8(0x8) # 1c0019d4 <printbase+0xf8>
1c0019d0:	0015000c 	move	$r12,$r0
1c0019d4:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c0019d8:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c0019dc:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c0019e0:	6000198d 	blt	$r12,$r13,24(0x18) # 1c0019f8 <printbase+0x11c>
1c0019e4:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c0019e8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0019ec:	0280c18c 	addi.w	$r12,$r12,48(0x30)
1c0019f0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0019f4:	50001400 	b	20(0x14) # 1c001a08 <printbase+0x12c>
1c0019f8:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c0019fc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001a00:	02815d8c 	addi.w	$r12,$r12,87(0x57)
1c001a04:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001a08:	00150184 	move	$r4,$r12
1c001a0c:	57fe13ff 	bl	-496(0xffffe10) # 1c00181c <myputchar>
1c001a10:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001a14:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c001a18:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001a1c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001a20:	63ff8c0c 	blt	$r0,$r12,-116(0x3ff8c) # 1c0019ac <printbase+0xd0>
1c001a24:	0015000c 	move	$r12,$r0
1c001a28:	00150184 	move	$r4,$r12
1c001a2c:	2881b061 	ld.w	$r1,$r3,108(0x6c)
1c001a30:	2881a076 	ld.w	$r22,$r3,104(0x68)
1c001a34:	0281c063 	addi.w	$r3,$r3,112(0x70)
1c001a38:	4c000020 	jirl	$r0,$r1,0

1c001a3c <printbase2>:
printbase2():
1c001a3c:	02be0063 	addi.w	$r3,$r3,-128(0xf80)
1c001a40:	2981f061 	st.w	$r1,$r3,124(0x7c)
1c001a44:	2981e076 	st.w	$r22,$r3,120(0x78)
1c001a48:	02820076 	addi.w	$r22,$r3,128(0x80)
1c001a4c:	0015008c 	move	$r12,$r4
1c001a50:	29be62c5 	st.w	$r5,$r22,-104(0xf98)
1c001a54:	29be52c6 	st.w	$r6,$r22,-108(0xf94)
1c001a58:	29be42c7 	st.w	$r7,$r22,-112(0xf90)
1c001a5c:	29be32c8 	st.w	$r8,$r22,-116(0xf8c)
1c001a60:	293e7ecc 	st.b	$r12,$r22,-97(0xf9f)
1c001a64:	28be32cc 	ld.w	$r12,$r22,-116(0xf8c)
1c001a68:	40002d80 	beqz	$r12,44(0x2c) # 1c001a94 <printbase2+0x58>
1c001a6c:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c001a70:	64002580 	bge	$r12,$r0,36(0x24) # 1c001a94 <printbase2+0x58>
1c001a74:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c001a78:	0011300c 	sub.w	$r12,$r0,$r12
1c001a7c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001a80:	2a3e7ecc 	ld.bu	$r12,$r22,-97(0xf9f)
1c001a84:	0280b405 	addi.w	$r5,$r0,45(0x2d)
1c001a88:	00150184 	move	$r4,$r12
1c001a8c:	57fdcfff 	bl	-564(0xffffdcc) # 1c001858 <myputchar2>
1c001a90:	50000c00 	b	12(0xc) # 1c001a9c <printbase2+0x60>
1c001a94:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c001a98:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001a9c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c001aa0:	50005000 	b	80(0x50) # 1c001af0 <printbase2+0xb4>
1c001aa4:	28be42cc 	ld.w	$r12,$r22,-112(0xf90)
1c001aa8:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c001aac:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c001ab0:	5c000980 	bne	$r12,$r0,8(0x8) # 1c001ab8 <printbase2+0x7c>
1c001ab4:	002a0007 	break	0x7
1c001ab8:	00005dcc 	ext.w.b	$r12,$r14
1c001abc:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001ac0:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c001ac4:	001035cd 	add.w	$r13,$r14,$r13
1c001ac8:	293ec1ac 	st.b	$r12,$r13,-80(0xfb0)
1c001acc:	28be42cd 	ld.w	$r13,$r22,-112(0xf90)
1c001ad0:	28bf92ce 	ld.w	$r14,$r22,-28(0xfe4)
1c001ad4:	002135cc 	div.wu	$r12,$r14,$r13
1c001ad8:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c001ae0 <printbase2+0xa4>
1c001adc:	002a0007 	break	0x7
1c001ae0:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001ae4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001ae8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001aec:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001af0:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001af4:	47ffb19f 	bnez	$r12,-80(0x7fffb0) # 1c001aa4 <printbase2+0x68>
1c001af8:	28be52cc 	ld.w	$r12,$r22,-108(0xf94)
1c001afc:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001b00:	28bfb2ce 	ld.w	$r14,$r22,-20(0xfec)
1c001b04:	001231ad 	slt	$r13,$r13,$r12
1c001b08:	0013b5ce 	masknez	$r14,$r14,$r13
1c001b0c:	0013358c 	maskeqz	$r12,$r12,$r13
1c001b10:	001531cc 	or	$r12,$r14,$r12
1c001b14:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001b18:	50007c00 	b	124(0x7c) # 1c001b94 <printbase2+0x158>
1c001b1c:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c001b20:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001b24:	60001d8d 	blt	$r12,$r13,28(0x1c) # 1c001b40 <printbase2+0x104>
1c001b28:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001b2c:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c001b30:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c001b34:	001031ac 	add.w	$r12,$r13,$r12
1c001b38:	283ec18c 	ld.b	$r12,$r12,-80(0xfb0)
1c001b3c:	50000800 	b	8(0x8) # 1c001b44 <printbase2+0x108>
1c001b40:	0015000c 	move	$r12,$r0
1c001b44:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c001b48:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c001b4c:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c001b50:	6000198d 	blt	$r12,$r13,24(0x18) # 1c001b68 <printbase2+0x12c>
1c001b54:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c001b58:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001b5c:	0280c18c 	addi.w	$r12,$r12,48(0x30)
1c001b60:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001b64:	50001400 	b	20(0x14) # 1c001b78 <printbase2+0x13c>
1c001b68:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c001b6c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001b70:	02815d8c 	addi.w	$r12,$r12,87(0x57)
1c001b74:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001b78:	2a3e7ecd 	ld.bu	$r13,$r22,-97(0xf9f)
1c001b7c:	00150185 	move	$r5,$r12
1c001b80:	001501a4 	move	$r4,$r13
1c001b84:	57fcd7ff 	bl	-812(0xffffcd4) # 1c001858 <myputchar2>
1c001b88:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001b8c:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c001b90:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001b94:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001b98:	63ff840c 	blt	$r0,$r12,-124(0x3ff84) # 1c001b1c <printbase2+0xe0>
1c001b9c:	0015000c 	move	$r12,$r0
1c001ba0:	00150184 	move	$r4,$r12
1c001ba4:	2881f061 	ld.w	$r1,$r3,124(0x7c)
1c001ba8:	2881e076 	ld.w	$r22,$r3,120(0x78)
1c001bac:	02820063 	addi.w	$r3,$r3,128(0x80)
1c001bb0:	4c000020 	jirl	$r0,$r1,0

1c001bb4 <puts>:
puts():
1c001bb4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001bb8:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c001bbc:	2980a076 	st.w	$r22,$r3,40(0x28)
1c001bc0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001bc4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001bc8:	50003000 	b	48(0x30) # 1c001bf8 <puts+0x44>
1c001bcc:	283fbecd 	ld.b	$r13,$r22,-17(0xfef)
1c001bd0:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001bd4:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c001be0 <puts+0x2c>
1c001bd8:	02803404 	addi.w	$r4,$r0,13(0xd)
1c001bdc:	57fc43ff 	bl	-960(0xffffc40) # 1c00181c <myputchar>
1c001be0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001be4:	00150184 	move	$r4,$r12
1c001be8:	57fc37ff 	bl	-972(0xffffc34) # 1c00181c <myputchar>
1c001bec:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001bf0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001bf4:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c001bf8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001bfc:	2a00018c 	ld.bu	$r12,$r12,0
1c001c00:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001c04:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c001c08:	47ffc59f 	bnez	$r12,-60(0x7fffc4) # 1c001bcc <puts+0x18>
1c001c0c:	0015000c 	move	$r12,$r0
1c001c10:	00150184 	move	$r4,$r12
1c001c14:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c001c18:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c001c1c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001c20:	4c000020 	jirl	$r0,$r1,0

1c001c24 <puts2>:
puts2():
1c001c24:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001c28:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c001c2c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c001c30:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001c34:	0015008c 	move	$r12,$r4
1c001c38:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c001c3c:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c001c40:	50004000 	b	64(0x40) # 1c001c80 <puts2+0x5c>
1c001c44:	283fbecd 	ld.b	$r13,$r22,-17(0xfef)
1c001c48:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001c4c:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c001c60 <puts2+0x3c>
1c001c50:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c001c54:	02803405 	addi.w	$r5,$r0,13(0xd)
1c001c58:	00150184 	move	$r4,$r12
1c001c5c:	57fbffff 	bl	-1028(0xffffbfc) # 1c001858 <myputchar2>
1c001c60:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c001c64:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c001c68:	001501a5 	move	$r5,$r13
1c001c6c:	00150184 	move	$r4,$r12
1c001c70:	57fbebff 	bl	-1048(0xffffbe8) # 1c001858 <myputchar2>
1c001c74:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c001c78:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001c7c:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c001c80:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c001c84:	2a00018c 	ld.bu	$r12,$r12,0
1c001c88:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001c8c:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c001c90:	47ffb59f 	bnez	$r12,-76(0x7fffb4) # 1c001c44 <puts2+0x20>
1c001c94:	0015000c 	move	$r12,$r0
1c001c98:	00150184 	move	$r4,$r12
1c001c9c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c001ca0:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c001ca4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001ca8:	4c000020 	jirl	$r0,$r1,0

1c001cac <myprintf>:
myprintf():
1c001cac:	02be8063 	addi.w	$r3,$r3,-96(0xfa0)
1c001cb0:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c001cb4:	2980e076 	st.w	$r22,$r3,56(0x38)
1c001cb8:	02810076 	addi.w	$r22,$r3,64(0x40)
1c001cbc:	29bf32c4 	st.w	$r4,$r22,-52(0xfcc)
1c001cc0:	298012c5 	st.w	$r5,$r22,4(0x4)
1c001cc4:	298022c6 	st.w	$r6,$r22,8(0x8)
1c001cc8:	298032c7 	st.w	$r7,$r22,12(0xc)
1c001ccc:	298042c8 	st.w	$r8,$r22,16(0x10)
1c001cd0:	298052c9 	st.w	$r9,$r22,20(0x14)
1c001cd4:	298062ca 	st.w	$r10,$r22,24(0x18)
1c001cd8:	298072cb 	st.w	$r11,$r22,28(0x1c)
1c001cdc:	028082cc 	addi.w	$r12,$r22,32(0x20)
1c001ce0:	02bf918c 	addi.w	$r12,$r12,-28(0xfe4)
1c001ce4:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c001ce8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001cec:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001cf0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c001cf4:	50033000 	b	816(0x330) # 1c002024 <myprintf+0x378>
1c001cf8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001cfc:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001d00:	001031ac 	add.w	$r12,$r13,$r12
1c001d04:	2a00018c 	ld.bu	$r12,$r12,0
1c001d08:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c001d0c:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c001d10:	0280940c 	addi.w	$r12,$r0,37(0x25)
1c001d14:	5c02e5ac 	bne	$r13,$r12,740(0x2e4) # 1c001ff8 <myprintf+0x34c>
1c001d18:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001d1c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001d20:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001d24:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001d28:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001d2c:	001031ac 	add.w	$r12,$r13,$r12
1c001d30:	2800018c 	ld.b	$r12,$r12,0
1c001d34:	02bf6d8c 	addi.w	$r12,$r12,-37(0xfdb)
1c001d38:	02814c0d 	addi.w	$r13,$r0,83(0x53)
1c001d3c:	6802adac 	bltu	$r13,$r12,684(0x2ac) # 1c001fe8 <myprintf+0x33c>
1c001d40:	0040898d 	slli.w	$r13,$r12,0x2
1c001d44:	1c00008c 	pcaddu12i	$r12,4(0x4)
1c001d48:	02b8c18c 	addi.w	$r12,$r12,-464(0xe30)
1c001d4c:	001031ac 	add.w	$r12,$r13,$r12
1c001d50:	2880018c 	ld.w	$r12,$r12,0
1c001d54:	4c000180 	jirl	$r0,$r12,0
1c001d58:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d5c:	2880018c 	ld.w	$r12,$r12,0
1c001d60:	00150184 	move	$r4,$r12
1c001d64:	57fe53ff 	bl	-432(0xffffe50) # 1c001bb4 <puts>
1c001d68:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d6c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001d70:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001d74:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001d78:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001d7c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001d80:	50029800 	b	664(0x298) # 1c002018 <myprintf+0x36c>
1c001d84:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d88:	2880018c 	ld.w	$r12,$r12,0
1c001d8c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001d90:	00150184 	move	$r4,$r12
1c001d94:	57fa8bff 	bl	-1400(0xffffa88) # 1c00181c <myputchar>
1c001d98:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d9c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001da0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001da4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001da8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001dac:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001db0:	50026800 	b	616(0x268) # 1c002018 <myprintf+0x36c>
1c001db4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001db8:	2880018c 	ld.w	$r12,$r12,0
1c001dbc:	00150007 	move	$r7,$r0
1c001dc0:	02802806 	addi.w	$r6,$r0,10(0xa)
1c001dc4:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001dc8:	00150184 	move	$r4,$r12
1c001dcc:	57fb13ff 	bl	-1264(0xffffb10) # 1c0018dc <printbase>
1c001dd0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001dd4:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001dd8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001ddc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001de0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001de4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001de8:	50023000 	b	560(0x230) # 1c002018 <myprintf+0x36c>
1c001dec:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001df0:	2880018c 	ld.w	$r12,$r12,0
1c001df4:	02800407 	addi.w	$r7,$r0,1(0x1)
1c001df8:	02802806 	addi.w	$r6,$r0,10(0xa)
1c001dfc:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001e00:	00150184 	move	$r4,$r12
1c001e04:	57fadbff 	bl	-1320(0xffffad8) # 1c0018dc <printbase>
1c001e08:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001e0c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001e10:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001e14:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e18:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e1c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001e20:	5001f800 	b	504(0x1f8) # 1c002018 <myprintf+0x36c>
1c001e24:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001e28:	2880018c 	ld.w	$r12,$r12,0
1c001e2c:	00150007 	move	$r7,$r0
1c001e30:	02802006 	addi.w	$r6,$r0,8(0x8)
1c001e34:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001e38:	00150184 	move	$r4,$r12
1c001e3c:	57faa3ff 	bl	-1376(0xffffaa0) # 1c0018dc <printbase>
1c001e40:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001e44:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001e48:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001e4c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e50:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e54:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001e58:	5001c000 	b	448(0x1c0) # 1c002018 <myprintf+0x36c>
1c001e5c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001e60:	2880018c 	ld.w	$r12,$r12,0
1c001e64:	00150007 	move	$r7,$r0
1c001e68:	02800806 	addi.w	$r6,$r0,2(0x2)
1c001e6c:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001e70:	00150184 	move	$r4,$r12
1c001e74:	57fa6bff 	bl	-1432(0xffffa68) # 1c0018dc <printbase>
1c001e78:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001e7c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001e80:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001e84:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e88:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e8c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001e90:	50018800 	b	392(0x188) # 1c002018 <myprintf+0x36c>
1c001e94:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001e98:	2880018c 	ld.w	$r12,$r12,0
1c001e9c:	00150007 	move	$r7,$r0
1c001ea0:	02804006 	addi.w	$r6,$r0,16(0x10)
1c001ea4:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001ea8:	00150184 	move	$r4,$r12
1c001eac:	57fa33ff 	bl	-1488(0xffffa30) # 1c0018dc <printbase>
1c001eb0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001eb4:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001eb8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001ebc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001ec0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001ec4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001ec8:	50015000 	b	336(0x150) # 1c002018 <myprintf+0x36c>
1c001ecc:	02809404 	addi.w	$r4,$r0,37(0x25)
1c001ed0:	57f94fff 	bl	-1716(0xffff94c) # 1c00181c <myputchar>
1c001ed4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001ed8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001edc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001ee0:	50013800 	b	312(0x138) # 1c002018 <myprintf+0x36c>
1c001ee4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001ee8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001eec:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001ef0:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c001ef4:	50003c00 	b	60(0x3c) # 1c001f30 <myprintf+0x284>
1c001ef8:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c001efc:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001f00:	001c31ad 	mul.w	$r13,$r13,$r12
1c001f04:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001f08:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001f0c:	28bf32ce 	ld.w	$r14,$r22,-52(0xfcc)
1c001f10:	001031cc 	add.w	$r12,$r14,$r12
1c001f14:	2800018c 	ld.b	$r12,$r12,0
1c001f18:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c001f1c:	001031ac 	add.w	$r12,$r13,$r12
1c001f20:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001f24:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001f28:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001f2c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001f30:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001f34:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001f38:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001f3c:	001031ac 	add.w	$r12,$r13,$r12
1c001f40:	2800018d 	ld.b	$r13,$r12,0
1c001f44:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c001f48:	67fdd98d 	bge	$r12,$r13,-552(0x3fdd8) # 1c001d20 <myprintf+0x74>
1c001f4c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001f50:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001f54:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001f58:	001031ac 	add.w	$r12,$r13,$r12
1c001f5c:	2800018d 	ld.b	$r13,$r12,0
1c001f60:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c001f64:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c001ef8 <myprintf+0x24c>
1c001f68:	53fdbbff 	b	-584(0xffffdb8) # 1c001d20 <myprintf+0x74>
1c001f6c:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c001f70:	50003c00 	b	60(0x3c) # 1c001fac <myprintf+0x300>
1c001f74:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c001f78:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001f7c:	001c31ad 	mul.w	$r13,$r13,$r12
1c001f80:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001f84:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001f88:	28bf32ce 	ld.w	$r14,$r22,-52(0xfcc)
1c001f8c:	001031cc 	add.w	$r12,$r14,$r12
1c001f90:	2800018c 	ld.b	$r12,$r12,0
1c001f94:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c001f98:	001031ac 	add.w	$r12,$r13,$r12
1c001f9c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001fa0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001fa4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001fa8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001fac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001fb0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001fb4:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001fb8:	001031ac 	add.w	$r12,$r13,$r12
1c001fbc:	2800018d 	ld.b	$r13,$r12,0
1c001fc0:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c001fc4:	67fd5d8d 	bge	$r12,$r13,-676(0x3fd5c) # 1c001d20 <myprintf+0x74>
1c001fc8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001fcc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001fd0:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001fd4:	001031ac 	add.w	$r12,$r13,$r12
1c001fd8:	2800018d 	ld.b	$r13,$r12,0
1c001fdc:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c001fe0:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c001f74 <myprintf+0x2c8>
1c001fe4:	53fd3fff 	b	-708(0xffffd3c) # 1c001d20 <myprintf+0x74>
1c001fe8:	02809404 	addi.w	$r4,$r0,37(0x25)
1c001fec:	57f833ff 	bl	-2000(0xffff830) # 1c00181c <myputchar>
1c001ff0:	03400000 	andi	$r0,$r0,0x0
1c001ff4:	50002400 	b	36(0x24) # 1c002018 <myprintf+0x36c>
1c001ff8:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c001ffc:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c002000:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c00200c <myprintf+0x360>
1c002004:	02803404 	addi.w	$r4,$r0,13(0xd)
1c002008:	57f817ff 	bl	-2028(0xffff814) # 1c00181c <myputchar>
1c00200c:	2a3f8ecc 	ld.bu	$r12,$r22,-29(0xfe3)
1c002010:	00150184 	move	$r4,$r12
1c002014:	57f80bff 	bl	-2040(0xffff808) # 1c00181c <myputchar>
1c002018:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00201c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002020:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002024:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002028:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c00202c:	001031ac 	add.w	$r12,$r13,$r12
1c002030:	2800018c 	ld.b	$r12,$r12,0
1c002034:	47fcc59f 	bnez	$r12,-828(0x7ffcc4) # 1c001cf8 <myprintf+0x4c>
1c002038:	0015000c 	move	$r12,$r0
1c00203c:	00150184 	move	$r4,$r12
1c002040:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c002044:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c002048:	02818063 	addi.w	$r3,$r3,96(0x60)
1c00204c:	4c000020 	jirl	$r0,$r1,0

1c002050 <myprintf2>:
myprintf2():
1c002050:	02be8063 	addi.w	$r3,$r3,-96(0xfa0)
1c002054:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c002058:	2980e076 	st.w	$r22,$r3,56(0x38)
1c00205c:	02810076 	addi.w	$r22,$r3,64(0x40)
1c002060:	0015008c 	move	$r12,$r4
1c002064:	29bf22c5 	st.w	$r5,$r22,-56(0xfc8)
1c002068:	298022c6 	st.w	$r6,$r22,8(0x8)
1c00206c:	298032c7 	st.w	$r7,$r22,12(0xc)
1c002070:	298042c8 	st.w	$r8,$r22,16(0x10)
1c002074:	298052c9 	st.w	$r9,$r22,20(0x14)
1c002078:	298062ca 	st.w	$r10,$r22,24(0x18)
1c00207c:	298072cb 	st.w	$r11,$r22,28(0x1c)
1c002080:	293f3ecc 	st.b	$r12,$r22,-49(0xfcf)
1c002084:	028082cc 	addi.w	$r12,$r22,32(0x20)
1c002088:	02bfa18c 	addi.w	$r12,$r12,-24(0xfe8)
1c00208c:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c002090:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002094:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002098:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00209c:	50039c00 	b	924(0x39c) # 1c002438 <myprintf2+0x3e8>
1c0020a0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0020a4:	28bf22cd 	ld.w	$r13,$r22,-56(0xfc8)
1c0020a8:	001031ac 	add.w	$r12,$r13,$r12
1c0020ac:	2a00018c 	ld.bu	$r12,$r12,0
1c0020b0:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c0020b4:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c0020b8:	0280940c 	addi.w	$r12,$r0,37(0x25)
1c0020bc:	5c0341ac 	bne	$r13,$r12,832(0x340) # 1c0023fc <myprintf2+0x3ac>
1c0020c0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0020c4:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0020c8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0020cc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0020d0:	28bf22cd 	ld.w	$r13,$r22,-56(0xfc8)
1c0020d4:	001031ac 	add.w	$r12,$r13,$r12
1c0020d8:	2800018c 	ld.b	$r12,$r12,0
1c0020dc:	02bf6d8c 	addi.w	$r12,$r12,-37(0xfdb)
1c0020e0:	02814c0d 	addi.w	$r13,$r0,83(0x53)
1c0020e4:	680301ac 	bltu	$r13,$r12,768(0x300) # 1c0023e4 <myprintf2+0x394>
1c0020e8:	0040898d 	slli.w	$r13,$r12,0x2
1c0020ec:	1c00008c 	pcaddu12i	$r12,4(0x4)
1c0020f0:	02af618c 	addi.w	$r12,$r12,-1064(0xbd8)
1c0020f4:	001031ac 	add.w	$r12,$r13,$r12
1c0020f8:	2880018c 	ld.w	$r12,$r12,0
1c0020fc:	4c000180 	jirl	$r0,$r12,0
1c002100:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002104:	2880018d 	ld.w	$r13,$r12,0
1c002108:	2a3f3ecc 	ld.bu	$r12,$r22,-49(0xfcf)
1c00210c:	001501a5 	move	$r5,$r13
1c002110:	00150184 	move	$r4,$r12
1c002114:	57fb13ff 	bl	-1264(0xffffb10) # 1c001c24 <puts2>
1c002118:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00211c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c002120:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002124:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002128:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00212c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002130:	5002fc00 	b	764(0x2fc) # 1c00242c <myprintf2+0x3dc>
1c002134:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002138:	2880018c 	ld.w	$r12,$r12,0
1c00213c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002140:	2a3f3ecc 	ld.bu	$r12,$r22,-49(0xfcf)
1c002144:	001501a5 	move	$r5,$r13
1c002148:	00150184 	move	$r4,$r12
1c00214c:	57f70fff 	bl	-2292(0xffff70c) # 1c001858 <myputchar2>
1c002150:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002154:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c002158:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00215c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002160:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002164:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002168:	5002c400 	b	708(0x2c4) # 1c00242c <myprintf2+0x3dc>
1c00216c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002170:	2880018c 	ld.w	$r12,$r12,0
1c002174:	0015018d 	move	$r13,$r12
1c002178:	2a3f3ecc 	ld.bu	$r12,$r22,-49(0xfcf)
1c00217c:	00150008 	move	$r8,$r0
1c002180:	02802807 	addi.w	$r7,$r0,10(0xa)
1c002184:	28bf92c6 	ld.w	$r6,$r22,-28(0xfe4)
1c002188:	001501a5 	move	$r5,$r13
1c00218c:	00150184 	move	$r4,$r12
1c002190:	57f8afff 	bl	-1876(0xffff8ac) # 1c001a3c <printbase2>
1c002194:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002198:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00219c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0021a0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0021a4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0021a8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0021ac:	50028000 	b	640(0x280) # 1c00242c <myprintf2+0x3dc>
1c0021b0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0021b4:	2880018c 	ld.w	$r12,$r12,0
1c0021b8:	0015018d 	move	$r13,$r12
1c0021bc:	2a3f3ecc 	ld.bu	$r12,$r22,-49(0xfcf)
1c0021c0:	02800408 	addi.w	$r8,$r0,1(0x1)
1c0021c4:	02802807 	addi.w	$r7,$r0,10(0xa)
1c0021c8:	28bf92c6 	ld.w	$r6,$r22,-28(0xfe4)
1c0021cc:	001501a5 	move	$r5,$r13
1c0021d0:	00150184 	move	$r4,$r12
1c0021d4:	57f86bff 	bl	-1944(0xffff868) # 1c001a3c <printbase2>
1c0021d8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0021dc:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c0021e0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0021e4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0021e8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0021ec:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0021f0:	50023c00 	b	572(0x23c) # 1c00242c <myprintf2+0x3dc>
1c0021f4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0021f8:	2880018c 	ld.w	$r12,$r12,0
1c0021fc:	0015018d 	move	$r13,$r12
1c002200:	2a3f3ecc 	ld.bu	$r12,$r22,-49(0xfcf)
1c002204:	00150008 	move	$r8,$r0
1c002208:	02802007 	addi.w	$r7,$r0,8(0x8)
1c00220c:	28bf92c6 	ld.w	$r6,$r22,-28(0xfe4)
1c002210:	001501a5 	move	$r5,$r13
1c002214:	00150184 	move	$r4,$r12
1c002218:	57f827ff 	bl	-2012(0xffff824) # 1c001a3c <printbase2>
1c00221c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002220:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c002224:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002228:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00222c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002230:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002234:	5001f800 	b	504(0x1f8) # 1c00242c <myprintf2+0x3dc>
1c002238:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00223c:	2880018c 	ld.w	$r12,$r12,0
1c002240:	0015018d 	move	$r13,$r12
1c002244:	2a3f3ecc 	ld.bu	$r12,$r22,-49(0xfcf)
1c002248:	00150008 	move	$r8,$r0
1c00224c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002250:	28bf92c6 	ld.w	$r6,$r22,-28(0xfe4)
1c002254:	001501a5 	move	$r5,$r13
1c002258:	00150184 	move	$r4,$r12
1c00225c:	57f7e3ff 	bl	-2080(0xffff7e0) # 1c001a3c <printbase2>
1c002260:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002264:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c002268:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00226c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002270:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002274:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002278:	5001b400 	b	436(0x1b4) # 1c00242c <myprintf2+0x3dc>
1c00227c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002280:	2880018c 	ld.w	$r12,$r12,0
1c002284:	0015018d 	move	$r13,$r12
1c002288:	2a3f3ecc 	ld.bu	$r12,$r22,-49(0xfcf)
1c00228c:	00150008 	move	$r8,$r0
1c002290:	02804007 	addi.w	$r7,$r0,16(0x10)
1c002294:	28bf92c6 	ld.w	$r6,$r22,-28(0xfe4)
1c002298:	001501a5 	move	$r5,$r13
1c00229c:	00150184 	move	$r4,$r12
1c0022a0:	57f79fff 	bl	-2148(0xffff79c) # 1c001a3c <printbase2>
1c0022a4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0022a8:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c0022ac:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0022b0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0022b4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0022b8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0022bc:	50017000 	b	368(0x170) # 1c00242c <myprintf2+0x3dc>
1c0022c0:	2a3f3ecc 	ld.bu	$r12,$r22,-49(0xfcf)
1c0022c4:	02809405 	addi.w	$r5,$r0,37(0x25)
1c0022c8:	00150184 	move	$r4,$r12
1c0022cc:	57f58fff 	bl	-2676(0xffff58c) # 1c001858 <myputchar2>
1c0022d0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0022d4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0022d8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0022dc:	50015000 	b	336(0x150) # 1c00242c <myprintf2+0x3dc>
1c0022e0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0022e4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0022e8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0022ec:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c0022f0:	50003c00 	b	60(0x3c) # 1c00232c <myprintf2+0x2dc>
1c0022f4:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c0022f8:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0022fc:	001c31ad 	mul.w	$r13,$r13,$r12
1c002300:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002304:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002308:	28bf22ce 	ld.w	$r14,$r22,-56(0xfc8)
1c00230c:	001031cc 	add.w	$r12,$r14,$r12
1c002310:	2800018c 	ld.b	$r12,$r12,0
1c002314:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c002318:	001031ac 	add.w	$r12,$r13,$r12
1c00231c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002320:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002324:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002328:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00232c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002330:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002334:	28bf22cd 	ld.w	$r13,$r22,-56(0xfc8)
1c002338:	001031ac 	add.w	$r12,$r13,$r12
1c00233c:	2800018d 	ld.b	$r13,$r12,0
1c002340:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c002344:	67fd858d 	bge	$r12,$r13,-636(0x3fd84) # 1c0020c8 <myprintf2+0x78>
1c002348:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00234c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002350:	28bf22cd 	ld.w	$r13,$r22,-56(0xfc8)
1c002354:	001031ac 	add.w	$r12,$r13,$r12
1c002358:	2800018d 	ld.b	$r13,$r12,0
1c00235c:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c002360:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c0022f4 <myprintf2+0x2a4>
1c002364:	53fd67ff 	b	-668(0xffffd64) # 1c0020c8 <myprintf2+0x78>
1c002368:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c00236c:	50003c00 	b	60(0x3c) # 1c0023a8 <myprintf2+0x358>
1c002370:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c002374:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c002378:	001c31ad 	mul.w	$r13,$r13,$r12
1c00237c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002380:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002384:	28bf22ce 	ld.w	$r14,$r22,-56(0xfc8)
1c002388:	001031cc 	add.w	$r12,$r14,$r12
1c00238c:	2800018c 	ld.b	$r12,$r12,0
1c002390:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c002394:	001031ac 	add.w	$r12,$r13,$r12
1c002398:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00239c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0023a0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0023a4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0023a8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0023ac:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0023b0:	28bf22cd 	ld.w	$r13,$r22,-56(0xfc8)
1c0023b4:	001031ac 	add.w	$r12,$r13,$r12
1c0023b8:	2800018d 	ld.b	$r13,$r12,0
1c0023bc:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c0023c0:	67fd098d 	bge	$r12,$r13,-760(0x3fd08) # 1c0020c8 <myprintf2+0x78>
1c0023c4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0023c8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0023cc:	28bf22cd 	ld.w	$r13,$r22,-56(0xfc8)
1c0023d0:	001031ac 	add.w	$r12,$r13,$r12
1c0023d4:	2800018d 	ld.b	$r13,$r12,0
1c0023d8:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c0023dc:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c002370 <myprintf2+0x320>
1c0023e0:	53fcebff 	b	-792(0xffffce8) # 1c0020c8 <myprintf2+0x78>
1c0023e4:	2a3f3ecc 	ld.bu	$r12,$r22,-49(0xfcf)
1c0023e8:	02809405 	addi.w	$r5,$r0,37(0x25)
1c0023ec:	00150184 	move	$r4,$r12
1c0023f0:	57f46bff 	bl	-2968(0xffff468) # 1c001858 <myputchar2>
1c0023f4:	03400000 	andi	$r0,$r0,0x0
1c0023f8:	50003400 	b	52(0x34) # 1c00242c <myprintf2+0x3dc>
1c0023fc:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c002400:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c002404:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c002418 <myprintf2+0x3c8>
1c002408:	2a3f3ecc 	ld.bu	$r12,$r22,-49(0xfcf)
1c00240c:	02803405 	addi.w	$r5,$r0,13(0xd)
1c002410:	00150184 	move	$r4,$r12
1c002414:	57f447ff 	bl	-3004(0xffff444) # 1c001858 <myputchar2>
1c002418:	2a3f8ecd 	ld.bu	$r13,$r22,-29(0xfe3)
1c00241c:	2a3f3ecc 	ld.bu	$r12,$r22,-49(0xfcf)
1c002420:	001501a5 	move	$r5,$r13
1c002424:	00150184 	move	$r4,$r12
1c002428:	57f433ff 	bl	-3024(0xffff430) # 1c001858 <myputchar2>
1c00242c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002430:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002434:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002438:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00243c:	28bf22cd 	ld.w	$r13,$r22,-56(0xfc8)
1c002440:	001031ac 	add.w	$r12,$r13,$r12
1c002444:	2800018c 	ld.b	$r12,$r12,0
1c002448:	47fc599f 	bnez	$r12,-936(0x7ffc58) # 1c0020a0 <myprintf2+0x50>
1c00244c:	0015000c 	move	$r12,$r0
1c002450:	00150184 	move	$r4,$r12
1c002454:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c002458:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c00245c:	02818063 	addi.w	$r3,$r3,96(0x60)
1c002460:	4c000020 	jirl	$r0,$r1,0

1c002464 <UART_Init>:
UART_Init():
1c002464:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002468:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c00246c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002470:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002474:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c002478:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c00247c:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c002480:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002484:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c002488:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00248c:	03403d8c 	andi	$r12,$r12,0xf
1c002490:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002494:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002498:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c00249c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0024a0:	0044918c 	srli.w	$r12,$r12,0x4
1c0024a4:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c0024a8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0024ac:	40000d80 	beqz	$r12,12(0xc) # 1c0024b8 <UART_Init+0x54>
1c0024b0:	2a3f8ecc 	ld.bu	$r12,$r22,-29(0xfe3)
1c0024b4:	44001980 	bnez	$r12,24(0x18) # 1c0024cc <UART_Init+0x68>
1c0024b8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0024bc:	0280e00d 	addi.w	$r13,$r0,56(0x38)
1c0024c0:	2900118d 	st.b	$r13,$r12,4(0x4)
1c0024c4:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c0024c8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0024cc:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0024d0:	157fd18c 	lu12i.w	$r12,-262516(0xbfe8c)
1c0024d4:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c0024ec <UART_Init+0x88>
1c0024d8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0024dc:	02808c0d 	addi.w	$r13,$r0,35(0x23)
1c0024e0:	2900118d 	st.b	$r13,$r12,4(0x4)
1c0024e4:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c0024e8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0024ec:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0024f0:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c0024f4:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c0024f8:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0024fc:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c002500:	580011ac 	beq	$r13,$r12,16(0x10) # 1c002510 <UART_Init+0xac>
1c002504:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002508:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c00250c:	5c0061ac 	bne	$r13,$r12,96(0x60) # 1c00256c <UART_Init+0x108>
1c002510:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002514:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c002518:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00251c:	2880018c 	ld.w	$r12,$r12,0
1c002520:	002131ae 	div.wu	$r14,$r13,$r12
1c002524:	5c000980 	bne	$r12,$r0,8(0x8) # 1c00252c <UART_Init+0xc8>
1c002528:	002a0007 	break	0x7
1c00252c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c002530:	002135cc 	div.wu	$r12,$r14,$r13
1c002534:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c00253c <UART_Init+0xd8>
1c002538:	002a0007 	break	0x7
1c00253c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002540:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002544:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c002548:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00254c:	2880018e 	ld.w	$r14,$r12,0
1c002550:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002554:	001c31ce 	mul.w	$r14,$r14,$r12
1c002558:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00255c:	001c31cc 	mul.w	$r12,$r14,$r12
1c002560:	001131ac 	sub.w	$r12,$r13,$r12
1c002564:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002568:	50005400 	b	84(0x54) # 1c0025bc <UART_Init+0x158>
1c00256c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002570:	2880018c 	ld.w	$r12,$r12,0
1c002574:	1400010d 	lu12i.w	$r13,8(0x8)
1c002578:	002131ae 	div.wu	$r14,$r13,$r12
1c00257c:	5c000980 	bne	$r12,$r0,8(0x8) # 1c002584 <UART_Init+0x120>
1c002580:	002a0007 	break	0x7
1c002584:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c002588:	002135cc 	div.wu	$r12,$r14,$r13
1c00258c:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c002594 <UART_Init+0x130>
1c002590:	002a0007 	break	0x7
1c002594:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002598:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00259c:	2880018d 	ld.w	$r13,$r12,0
1c0025a0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0025a4:	001c31ad 	mul.w	$r13,$r13,$r12
1c0025a8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0025ac:	001c31ac 	mul.w	$r12,$r13,$r12
1c0025b0:	1400010d 	lu12i.w	$r13,8(0x8)
1c0025b4:	001131ac 	sub.w	$r12,$r13,$r12
1c0025b8:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0025bc:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c0025c0:	0283fc0c 	addi.w	$r12,$r0,255(0xff)
1c0025c4:	001c31ad 	mul.w	$r13,$r13,$r12
1c0025c8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0025cc:	2880018c 	ld.w	$r12,$r12,0
1c0025d0:	002131ae 	div.wu	$r14,$r13,$r12
1c0025d4:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0025dc <UART_Init+0x178>
1c0025d8:	002a0007 	break	0x7
1c0025dc:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0025e0:	002135cc 	div.wu	$r12,$r14,$r13
1c0025e4:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c0025ec <UART_Init+0x188>
1c0025e8:	002a0007 	break	0x7
1c0025ec:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0025f0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0025f4:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c0025f8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0025fc:	02be000c 	addi.w	$r12,$r0,-128(0xf80)
1c002600:	001531ac 	or	$r12,$r13,$r12
1c002604:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002608:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00260c:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002610:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002614:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002618:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00261c:	2900018d 	st.b	$r13,$r12,0
1c002620:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002624:	0044a18c 	srli.w	$r12,$r12,0x8
1c002628:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00262c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002630:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002634:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002638:	2900058d 	st.b	$r13,$r12,1(0x1)
1c00263c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002640:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002644:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002648:	2900098d 	st.b	$r13,$r12,2(0x2)
1c00264c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002650:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002654:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002658:	0341fd8c 	andi	$r12,$r12,0x7f
1c00265c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002660:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002664:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002668:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00266c:	29000580 	st.b	$r0,$r12,1(0x1)
1c002670:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002674:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002678:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00267c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002680:	2a00298c 	ld.bu	$r12,$r12,10(0xa)
1c002684:	001531ac 	or	$r12,$r13,$r12
1c002688:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00268c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002690:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002694:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002698:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c00269c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0026a0:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0026a4:	2a00358c 	ld.bu	$r12,$r12,13(0xd)
1c0026a8:	001531ac 	or	$r12,$r13,$r12
1c0026ac:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0026b0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0026b4:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c0026b8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0026bc:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c0026c0:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0026c4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0026c8:	2a00398c 	ld.bu	$r12,$r12,14(0xe)
1c0026cc:	001531ac 	or	$r12,$r13,$r12
1c0026d0:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0026d4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0026d8:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c0026dc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0026e0:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c0026e4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0026e8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0026ec:	2a002d8c 	ld.bu	$r12,$r12,11(0xb)
1c0026f0:	001531ac 	or	$r12,$r13,$r12
1c0026f4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0026f8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0026fc:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002700:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002704:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002708:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00270c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002710:	2a003d8c 	ld.bu	$r12,$r12,15(0xf)
1c002714:	001531ac 	or	$r12,$r13,$r12
1c002718:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00271c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002720:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002724:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002728:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c00272c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002730:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002734:	2a00318c 	ld.bu	$r12,$r12,12(0xc)
1c002738:	001531ac 	or	$r12,$r13,$r12
1c00273c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002740:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002744:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002748:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00274c:	2a00018c 	ld.bu	$r12,$r12,0
1c002750:	03400000 	andi	$r0,$r0,0x0
1c002754:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c002758:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00275c:	4c000020 	jirl	$r0,$r1,0

1c002760 <UART_StructInit>:
UART_StructInit():
1c002760:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002764:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002768:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00276c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002770:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002774:	1400038d 	lu12i.w	$r13,28(0x1c)
1c002778:	038801ad 	ori	$r13,$r13,0x200
1c00277c:	2980018d 	st.w	$r13,$r12,0
1c002780:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002784:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c002788:	038801ad 	ori	$r13,$r13,0x200
1c00278c:	2980118d 	st.w	$r13,$r12,4(0x4)
1c002790:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002794:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c002798:	2900298d 	st.b	$r13,$r12,10(0xa)
1c00279c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0027a0:	29002d80 	st.b	$r0,$r12,11(0xb)
1c0027a4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0027a8:	29003580 	st.b	$r0,$r12,13(0xd)
1c0027ac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0027b0:	29003180 	st.b	$r0,$r12,12(0xc)
1c0027b4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0027b8:	29003d80 	st.b	$r0,$r12,15(0xf)
1c0027bc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0027c0:	29003980 	st.b	$r0,$r12,14(0xe)
1c0027c4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0027c8:	29402180 	st.h	$r0,$r12,8(0x8)
1c0027cc:	03400000 	andi	$r0,$r0,0x0
1c0027d0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0027d4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0027d8:	4c000020 	jirl	$r0,$r1,0

1c0027dc <UART_ITConfig>:
UART_ITConfig():
1c0027dc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0027e0:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0027e4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0027e8:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0027ec:	001500ac 	move	$r12,$r5
1c0027f0:	29bf92c6 	st.w	$r6,$r22,-28(0xfe4)
1c0027f4:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c0027f8:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0027fc:	40002980 	beqz	$r12,40(0x28) # 1c002824 <UART_ITConfig+0x48>
1c002800:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002804:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c002808:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00280c:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c002810:	001531ac 	or	$r12,$r13,$r12
1c002814:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002818:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00281c:	2900058d 	st.b	$r13,$r12,1(0x1)
1c002820:	50003400 	b	52(0x34) # 1c002854 <UART_ITConfig+0x78>
1c002824:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002828:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c00282c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002830:	00005d8d 	ext.w.b	$r13,$r12
1c002834:	283faecc 	ld.b	$r12,$r22,-21(0xfeb)
1c002838:	0014300c 	nor	$r12,$r0,$r12
1c00283c:	00005d8c 	ext.w.b	$r12,$r12
1c002840:	0014b1ac 	and	$r12,$r13,$r12
1c002844:	00005d8c 	ext.w.b	$r12,$r12
1c002848:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00284c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002850:	2900058d 	st.b	$r13,$r12,1(0x1)
1c002854:	03400000 	andi	$r0,$r0,0x0
1c002858:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c00285c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002860:	4c000020 	jirl	$r0,$r1,0

1c002864 <UART_SendData>:
UART_SendData():
1c002864:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002868:	29807076 	st.w	$r22,$r3,28(0x1c)
1c00286c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002870:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002874:	001500ac 	move	$r12,$r5
1c002878:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c00287c:	03400000 	andi	$r0,$r0,0x0
1c002880:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002884:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c002888:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00288c:	0340818c 	andi	$r12,$r12,0x20
1c002890:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c002880 <UART_SendData+0x1c>
1c002894:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002898:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c00289c:	2900018d 	st.b	$r13,$r12,0
1c0028a0:	03400000 	andi	$r0,$r0,0x0
1c0028a4:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0028a8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0028ac:	4c000020 	jirl	$r0,$r1,0

1c0028b0 <UART_ReceiveData>:
UART_ReceiveData():
1c0028b0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0028b4:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0028b8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0028bc:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0028c0:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0028c4:	03400000 	andi	$r0,$r0,0x0
1c0028c8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0028cc:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c0028d0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0028d4:	0340058c 	andi	$r12,$r12,0x1
1c0028d8:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c0028c8 <UART_ReceiveData+0x18>
1c0028dc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0028e0:	2a00018c 	ld.bu	$r12,$r12,0
1c0028e4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0028e8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0028ec:	00150184 	move	$r4,$r12
1c0028f0:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0028f4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0028f8:	4c000020 	jirl	$r0,$r1,0

1c0028fc <Uart0_init>:
Uart0_init():
1c0028fc:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002900:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002904:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002908:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00290c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002910:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002914:	02801804 	addi.w	$r4,$r0,6(0x6)
1c002918:	57ecfbff 	bl	-4872(0xfffecf8) # 1c001610 <gpio_pin_remap>
1c00291c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002920:	02801c04 	addi.w	$r4,$r0,7(0x7)
1c002924:	57ecefff 	bl	-4884(0xfffecec) # 1c001610 <gpio_pin_remap>
1c002928:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c00292c:	00150184 	move	$r4,$r12
1c002930:	57fe33ff 	bl	-464(0xffffe30) # 1c002760 <UART_StructInit>
1c002934:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002938:	289b618c 	ld.w	$r12,$r12,1752(0x6d8)
1c00293c:	2880018c 	ld.w	$r12,$r12,0
1c002940:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002944:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002948:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c00294c:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c002950:	00150185 	move	$r5,$r12
1c002954:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c002958:	57fb0fff 	bl	-1268(0xffffb0c) # 1c002464 <UART_Init>
1c00295c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002960:	0380098c 	ori	$r12,$r12,0x2
1c002964:	2a00018c 	ld.bu	$r12,$r12,0
1c002968:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00296c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002970:	0380098c 	ori	$r12,$r12,0x2
1c002974:	038021ad 	ori	$r13,$r13,0x8
1c002978:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c00297c:	2900018d 	st.b	$r13,$r12,0
1c002980:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002984:	2a00018c 	ld.bu	$r12,$r12,0
1c002988:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00298c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002990:	038021ad 	ori	$r13,$r13,0x8
1c002994:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c002998:	2900018d 	st.b	$r13,$r12,0
1c00299c:	02800406 	addi.w	$r6,$r0,1(0x1)
1c0029a0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0029a4:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c0029a8:	57fe37ff 	bl	-460(0xffffe34) # 1c0027dc <UART_ITConfig>
1c0029ac:	03400000 	andi	$r0,$r0,0x0
1c0029b0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0029b4:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0029b8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0029bc:	4c000020 	jirl	$r0,$r1,0

1c0029c0 <Uart1_init>:
Uart1_init():
1c0029c0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0029c4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0029c8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0029cc:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0029d0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0029d4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0029d8:	02802004 	addi.w	$r4,$r0,8(0x8)
1c0029dc:	57ec37ff 	bl	-5068(0xfffec34) # 1c001610 <gpio_pin_remap>
1c0029e0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0029e4:	02802404 	addi.w	$r4,$r0,9(0x9)
1c0029e8:	57ec2bff 	bl	-5080(0xfffec28) # 1c001610 <gpio_pin_remap>
1c0029ec:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c0029f0:	00150184 	move	$r4,$r12
1c0029f4:	57fd6fff 	bl	-660(0xffffd6c) # 1c002760 <UART_StructInit>
1c0029f8:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c0029fc:	2898518c 	ld.w	$r12,$r12,1556(0x614)
1c002a00:	2880018c 	ld.w	$r12,$r12,0
1c002a04:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002a08:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002a0c:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c002a10:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c002a14:	00150185 	move	$r5,$r12
1c002a18:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c002a1c:	57fa4bff 	bl	-1464(0xffffa48) # 1c002464 <UART_Init>
1c002a20:	00150006 	move	$r6,$r0
1c002a24:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002a28:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c002a2c:	57fdb3ff 	bl	-592(0xffffdb0) # 1c0027dc <UART_ITConfig>
1c002a30:	03400000 	andi	$r0,$r0,0x0
1c002a34:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002a38:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002a3c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002a40:	4c000020 	jirl	$r0,$r1,0

1c002a44 <Uart0_send>:
Uart0_send():
1c002a44:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002a48:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002a4c:	29806076 	st.w	$r22,$r3,24(0x18)
1c002a50:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002a54:	0015008c 	move	$r12,$r4
1c002a58:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002a5c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002a60:	00150185 	move	$r5,$r12
1c002a64:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c002a68:	57fdffff 	bl	-516(0xffffdfc) # 1c002864 <UART_SendData>
1c002a6c:	03400000 	andi	$r0,$r0,0x0
1c002a70:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002a74:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002a78:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002a7c:	4c000020 	jirl	$r0,$r1,0

1c002a80 <Uart1_send>:
Uart1_send():
1c002a80:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002a84:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002a88:	29806076 	st.w	$r22,$r3,24(0x18)
1c002a8c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002a90:	0015008c 	move	$r12,$r4
1c002a94:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002a98:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002a9c:	00150185 	move	$r5,$r12
1c002aa0:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c002aa4:	57fdc3ff 	bl	-576(0xffffdc0) # 1c002864 <UART_SendData>
1c002aa8:	03400000 	andi	$r0,$r0,0x0
1c002aac:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002ab0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002ab4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002ab8:	4c000020 	jirl	$r0,$r1,0

1c002abc <Uart2_send>:
Uart2_send():
1c002abc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002ac0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002ac4:	29806076 	st.w	$r22,$r3,24(0x18)
1c002ac8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002acc:	0015008c 	move	$r12,$r4
1c002ad0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002ad4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002ad8:	00150185 	move	$r5,$r12
1c002adc:	157fd184 	lu12i.w	$r4,-262516(0xbfe8c)
1c002ae0:	57fd87ff 	bl	-636(0xffffd84) # 1c002864 <UART_SendData>
1c002ae4:	03400000 	andi	$r0,$r0,0x0
1c002ae8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002aec:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002af0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002af4:	4c000020 	jirl	$r0,$r1,0

1c002af8 <CLOCK_WaitForHSEStartUp>:
CLOCK_WaitForHSEStartUp():
1c002af8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002afc:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002b00:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002b04:	1400006c 	lu12i.w	$r12,3(0x3)
1c002b08:	03ba018c 	ori	$r12,$r12,0xe80
1c002b0c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002b10:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002b14:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002b18:	2880018d 	ld.w	$r13,$r12,0
1c002b1c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002b20:	038101ad 	ori	$r13,$r13,0x40
1c002b24:	2980018d 	st.w	$r13,$r12,0
1c002b28:	03400000 	andi	$r0,$r0,0x0
1c002b2c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002b30:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002b34:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c002b38:	47fff59f 	bnez	$r12,-12(0x7ffff4) # 1c002b2c <CLOCK_WaitForHSEStartUp+0x34>
1c002b3c:	50001c00 	b	28(0x1c) # 1c002b58 <CLOCK_WaitForHSEStartUp+0x60>
1c002b40:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002b44:	2880018e 	ld.w	$r14,$r12,0
1c002b48:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002b4c:	02bdfc0d 	addi.w	$r13,$r0,-129(0xf7f)
1c002b50:	0014b5cd 	and	$r13,$r14,$r13
1c002b54:	2980018d 	st.w	$r13,$r12,0
1c002b58:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002b5c:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c002b60:	63ffe180 	blt	$r12,$r0,-32(0x3ffe0) # 1c002b40 <CLOCK_WaitForHSEStartUp+0x48>
1c002b64:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002b68:	2880018d 	ld.w	$r13,$r12,0
1c002b6c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002b70:	038201ad 	ori	$r13,$r13,0x80
1c002b74:	2980018d 	st.w	$r13,$r12,0
1c002b78:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002b7c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002b80:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002b84:	00150184 	move	$r4,$r12
1c002b88:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002b8c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002b90:	4c000020 	jirl	$r0,$r1,0

1c002b94 <CLOCK_WaitForLSEStartUp>:
CLOCK_WaitForLSEStartUp():
1c002b94:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002b98:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002b9c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002ba0:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c002ba4:	50008800 	b	136(0x88) # 1c002c2c <CLOCK_WaitForLSEStartUp+0x98>
1c002ba8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002bac:	2880018e 	ld.w	$r14,$r12,0
1c002bb0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002bb4:	02bf7c0d 	addi.w	$r13,$r0,-33(0xfdf)
1c002bb8:	0014b5cd 	and	$r13,$r14,$r13
1c002bbc:	2980018d 	st.w	$r13,$r12,0
1c002bc0:	0280700c 	addi.w	$r12,$r0,28(0x1c)
1c002bc4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002bc8:	50001400 	b	20(0x14) # 1c002bdc <CLOCK_WaitForLSEStartUp+0x48>
1c002bcc:	03400000 	andi	$r0,$r0,0x0
1c002bd0:	03400000 	andi	$r0,$r0,0x0
1c002bd4:	03400000 	andi	$r0,$r0,0x0
1c002bd8:	03400000 	andi	$r0,$r0,0x0
1c002bdc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002be0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002be4:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c002be8:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002bcc <CLOCK_WaitForLSEStartUp+0x38>
1c002bec:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002bf0:	2880018d 	ld.w	$r13,$r12,0
1c002bf4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002bf8:	038081ad 	ori	$r13,$r13,0x20
1c002bfc:	2980018d 	st.w	$r13,$r12,0
1c002c00:	0280700c 	addi.w	$r12,$r0,28(0x1c)
1c002c04:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002c08:	50001400 	b	20(0x14) # 1c002c1c <CLOCK_WaitForLSEStartUp+0x88>
1c002c0c:	03400000 	andi	$r0,$r0,0x0
1c002c10:	03400000 	andi	$r0,$r0,0x0
1c002c14:	03400000 	andi	$r0,$r0,0x0
1c002c18:	03400000 	andi	$r0,$r0,0x0
1c002c1c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002c20:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002c24:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c002c28:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002c0c <CLOCK_WaitForLSEStartUp+0x78>
1c002c2c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c30:	0380118c 	ori	$r12,$r12,0x4
1c002c34:	2880018d 	ld.w	$r13,$r12,0
1c002c38:	1420000c 	lu12i.w	$r12,65536(0x10000)
1c002c3c:	0014b1ac 	and	$r12,$r13,$r12
1c002c40:	43ff699f 	beqz	$r12,-152(0x7fff68) # 1c002ba8 <CLOCK_WaitForLSEStartUp+0x14>
1c002c44:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c48:	0380118c 	ori	$r12,$r12,0x4
1c002c4c:	2880018d 	ld.w	$r13,$r12,0
1c002c50:	1440000c 	lu12i.w	$r12,131072(0x20000)
1c002c54:	0014b1ac 	and	$r12,$r13,$r12
1c002c58:	47ff519f 	bnez	$r12,-176(0x7fff50) # 1c002ba8 <CLOCK_WaitForLSEStartUp+0x14>
1c002c5c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002c60:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002c64:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002c68:	00150184 	move	$r4,$r12
1c002c6c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002c70:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002c74:	4c000020 	jirl	$r0,$r1,0

1c002c78 <CLOCK_HSEConfig>:
CLOCK_HSEConfig():
1c002c78:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002c7c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002c80:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002c84:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002c88:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002c8c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002c90:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c94:	2880018e 	ld.w	$r14,$r12,0
1c002c98:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002c9c:	0014300d 	nor	$r13,$r0,$r12
1c002ca0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ca4:	0014b5cd 	and	$r13,$r14,$r13
1c002ca8:	2980018d 	st.w	$r13,$r12,0
1c002cac:	1400002c 	lu12i.w	$r12,1(0x1)
1c002cb0:	03b4bd8c 	ori	$r12,$r12,0xd2f
1c002cb4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002cb8:	50001400 	b	20(0x14) # 1c002ccc <CLOCK_HSEConfig+0x54>
1c002cbc:	03400000 	andi	$r0,$r0,0x0
1c002cc0:	03400000 	andi	$r0,$r0,0x0
1c002cc4:	03400000 	andi	$r0,$r0,0x0
1c002cc8:	03400000 	andi	$r0,$r0,0x0
1c002ccc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002cd0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002cd4:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c002cd8:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002cbc <CLOCK_HSEConfig+0x44>
1c002cdc:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002ce0:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c002ce4:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c002cf4 <CLOCK_HSEConfig+0x7c>
1c002ce8:	57fe13ff 	bl	-496(0xffffe10) # 1c002af8 <CLOCK_WaitForHSEStartUp>
1c002cec:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002cf0:	50002400 	b	36(0x24) # 1c002d14 <CLOCK_HSEConfig+0x9c>
1c002cf4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002cf8:	2880018e 	ld.w	$r14,$r12,0
1c002cfc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002d00:	02bdfc0d 	addi.w	$r13,$r0,-129(0xf7f)
1c002d04:	0014b5cd 	and	$r13,$r14,$r13
1c002d08:	2980018d 	st.w	$r13,$r12,0
1c002d0c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002d10:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002d14:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002d18:	00150184 	move	$r4,$r12
1c002d1c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002d20:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002d24:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002d28:	4c000020 	jirl	$r0,$r1,0

1c002d2c <CLOCK_LSEConfig>:
CLOCK_LSEConfig():
1c002d2c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002d30:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002d34:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002d38:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002d3c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002d40:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002d44:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002d48:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c002d4c:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c002d5c <CLOCK_LSEConfig+0x30>
1c002d50:	57fe47ff 	bl	-444(0xffffe44) # 1c002b94 <CLOCK_WaitForLSEStartUp>
1c002d54:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002d58:	50002400 	b	36(0x24) # 1c002d7c <CLOCK_LSEConfig+0x50>
1c002d5c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002d60:	2880018e 	ld.w	$r14,$r12,0
1c002d64:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002d68:	02bf7c0d 	addi.w	$r13,$r0,-33(0xfdf)
1c002d6c:	0014b5cd 	and	$r13,$r14,$r13
1c002d70:	2980018d 	st.w	$r13,$r12,0
1c002d74:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002d78:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002d7c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002d80:	00150184 	move	$r4,$r12
1c002d84:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002d88:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002d8c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002d90:	4c000020 	jirl	$r0,$r1,0

1c002d94 <CLOCK_StructInit>:
CLOCK_StructInit():
1c002d94:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002d98:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002d9c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002da0:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002da4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002da8:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c002dac:	2980018d 	st.w	$r13,$r12,0
1c002db0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002db4:	0282000d 	addi.w	$r13,$r0,128(0x80)
1c002db8:	2980118d 	st.w	$r13,$r12,4(0x4)
1c002dbc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002dc0:	0280800d 	addi.w	$r13,$r0,32(0x20)
1c002dc4:	2980218d 	st.w	$r13,$r12,8(0x8)
1c002dc8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002dcc:	29803180 	st.w	$r0,$r12,12(0xc)
1c002dd0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002dd4:	29804180 	st.w	$r0,$r12,16(0x10)
1c002dd8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002ddc:	29805180 	st.w	$r0,$r12,20(0x14)
1c002de0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002de4:	29806180 	st.w	$r0,$r12,24(0x18)
1c002de8:	03400000 	andi	$r0,$r0,0x0
1c002dec:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002df0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002df4:	4c000020 	jirl	$r0,$r1,0

1c002df8 <CLOCK_Init>:
CLOCK_Init():
1c002df8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002dfc:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002e00:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002e04:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002e08:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002e0c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002e10:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e14:	2880018e 	ld.w	$r14,$r12,0
1c002e18:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e1c:	02b3fc0d 	addi.w	$r13,$r0,-769(0xcff)
1c002e20:	0014b5cd 	and	$r13,$r14,$r13
1c002e24:	2980018d 	st.w	$r13,$r12,0
1c002e28:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e2c:	2880018e 	ld.w	$r14,$r12,0
1c002e30:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002e34:	2880418d 	ld.w	$r13,$r12,16(0x10)
1c002e38:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e3c:	001535cd 	or	$r13,$r14,$r13
1c002e40:	2980018d 	st.w	$r13,$r12,0
1c002e44:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e48:	2880018e 	ld.w	$r14,$r12,0
1c002e4c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e50:	02bfbc0d 	addi.w	$r13,$r0,-17(0xfef)
1c002e54:	0014b5cd 	and	$r13,$r14,$r13
1c002e58:	2980018d 	st.w	$r13,$r12,0
1c002e5c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e60:	2880018e 	ld.w	$r14,$r12,0
1c002e64:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002e68:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c002e6c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e70:	001535cd 	or	$r13,$r14,$r13
1c002e74:	2980018d 	st.w	$r13,$r12,0
1c002e78:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e7c:	2880018e 	ld.w	$r14,$r12,0
1c002e80:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e84:	15ffffed 	lu12i.w	$r13,-1(0xfffff)
1c002e88:	039ffdad 	ori	$r13,$r13,0x7ff
1c002e8c:	0014b5cd 	and	$r13,$r14,$r13
1c002e90:	2980018d 	st.w	$r13,$r12,0
1c002e94:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e98:	2880018e 	ld.w	$r14,$r12,0
1c002e9c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002ea0:	2880518d 	ld.w	$r13,$r12,20(0x14)
1c002ea4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ea8:	001535cd 	or	$r13,$r14,$r13
1c002eac:	2980018d 	st.w	$r13,$r12,0
1c002eb0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002eb4:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c002eb8:	00150184 	move	$r4,$r12
1c002ebc:	57fdbfff 	bl	-580(0xffffdbc) # 1c002c78 <CLOCK_HSEConfig>
1c002ec0:	0015008d 	move	$r13,$r4
1c002ec4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002ec8:	58000dac 	beq	$r13,$r12,12(0xc) # 1c002ed4 <CLOCK_Init+0xdc>
1c002ecc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002ed0:	50015000 	b	336(0x150) # 1c003020 <CLOCK_Init+0x228>
1c002ed4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002ed8:	2880218c 	ld.w	$r12,$r12,8(0x8)
1c002edc:	00150184 	move	$r4,$r12
1c002ee0:	57fe4fff 	bl	-436(0xffffe4c) # 1c002d2c <CLOCK_LSEConfig>
1c002ee4:	0015008d 	move	$r13,$r4
1c002ee8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002eec:	58000dac 	beq	$r13,$r12,12(0xc) # 1c002ef8 <CLOCK_Init+0x100>
1c002ef0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002ef4:	50012c00 	b	300(0x12c) # 1c003020 <CLOCK_Init+0x228>
1c002ef8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002efc:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c002f00:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c002f04:	5800fdac 	beq	$r13,$r12,252(0xfc) # 1c003000 <CLOCK_Init+0x208>
1c002f08:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002f0c:	2880518c 	ld.w	$r12,$r12,20(0x14)
1c002f10:	4000a180 	beqz	$r12,160(0xa0) # 1c002fb0 <CLOCK_Init+0x1b8>
1c002f14:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f18:	2880018e 	ld.w	$r14,$r12,0
1c002f1c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f20:	15efffed 	lu12i.w	$r13,-32769(0xf7fff)
1c002f24:	03bffdad 	ori	$r13,$r13,0xfff
1c002f28:	0014b5cd 	and	$r13,$r14,$r13
1c002f2c:	2980018d 	st.w	$r13,$r12,0
1c002f30:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f34:	2880018e 	ld.w	$r14,$r12,0
1c002f38:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002f3c:	2880618d 	ld.w	$r13,$r12,24(0x18)
1c002f40:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f44:	001535cd 	or	$r13,$r14,$r13
1c002f48:	2980018d 	st.w	$r13,$r12,0
1c002f4c:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c002f50:	0386c18c 	ori	$r12,$r12,0x1b0
1c002f54:	2880018c 	ld.w	$r12,$r12,0
1c002f58:	40004180 	beqz	$r12,64(0x40) # 1c002f98 <CLOCK_Init+0x1a0>
1c002f5c:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c002f60:	0386c18c 	ori	$r12,$r12,0x1b0
1c002f64:	2880018c 	ld.w	$r12,$r12,0
1c002f68:	0040898e 	slli.w	$r14,$r12,0x2
1c002f6c:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c002f70:	002031cd 	div.w	$r13,$r14,$r12
1c002f74:	5c000980 	bne	$r12,$r0,8(0x8) # 1c002f7c <CLOCK_Init+0x184>
1c002f78:	002a0007 	break	0x7
1c002f7c:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
1c002f80:	001c31ac 	mul.w	$r12,$r13,$r12
1c002f84:	0015018d 	move	$r13,$r12
1c002f88:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002f8c:	0282518c 	addi.w	$r12,$r12,148(0x94)
1c002f90:	2980018d 	st.w	$r13,$r12,0
1c002f94:	50008000 	b	128(0x80) # 1c003014 <CLOCK_Init+0x21c>
1c002f98:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002f9c:	0282118c 	addi.w	$r12,$r12,132(0x84)
1c002fa0:	1401458d 	lu12i.w	$r13,2604(0xa2c)
1c002fa4:	038fe1ad 	ori	$r13,$r13,0x3f8
1c002fa8:	2980018d 	st.w	$r13,$r12,0
1c002fac:	50006800 	b	104(0x68) # 1c003014 <CLOCK_Init+0x21c>
1c002fb0:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c002fb4:	0386c18c 	ori	$r12,$r12,0x1b0
1c002fb8:	2880018c 	ld.w	$r12,$r12,0
1c002fbc:	40002d80 	beqz	$r12,44(0x2c) # 1c002fe8 <CLOCK_Init+0x1f0>
1c002fc0:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c002fc4:	0386c18c 	ori	$r12,$r12,0x1b0
1c002fc8:	2880018d 	ld.w	$r13,$r12,0
1c002fcc:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
1c002fd0:	001c31ac 	mul.w	$r12,$r13,$r12
1c002fd4:	0015018d 	move	$r13,$r12
1c002fd8:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002fdc:	0281118c 	addi.w	$r12,$r12,68(0x44)
1c002fe0:	2980018d 	st.w	$r13,$r12,0
1c002fe4:	50003000 	b	48(0x30) # 1c003014 <CLOCK_Init+0x21c>
1c002fe8:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002fec:	0280d18c 	addi.w	$r12,$r12,52(0x34)
1c002ff0:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c002ff4:	038801ad 	ori	$r13,$r13,0x200
1c002ff8:	2980018d 	st.w	$r13,$r12,0
1c002ffc:	50001800 	b	24(0x18) # 1c003014 <CLOCK_Init+0x21c>
1c003000:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c003004:	0280718c 	addi.w	$r12,$r12,28(0x1c)
1c003008:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c00300c:	038801ad 	ori	$r13,$r13,0x200
1c003010:	2980018d 	st.w	$r13,$r12,0
1c003014:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003018:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00301c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003020:	00150184 	move	$r4,$r12
1c003024:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003028:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c00302c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003030:	4c000020 	jirl	$r0,$r1,0

1c003034 <SystemClockInit>:
SystemClockInit():
1c003034:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003038:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c00303c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003040:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003044:	29bf52c0 	st.w	$r0,$r22,-44(0xfd4)
1c003048:	29bf62c0 	st.w	$r0,$r22,-40(0xfd8)
1c00304c:	29bf72c0 	st.w	$r0,$r22,-36(0xfdc)
1c003050:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c003054:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c003058:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c00305c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003060:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c003064:	00150184 	move	$r4,$r12
1c003068:	57fd2fff 	bl	-724(0xffffd2c) # 1c002d94 <CLOCK_StructInit>
1c00306c:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c003070:	29bf52cc 	st.w	$r12,$r22,-44(0xfd4)
1c003074:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c003078:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c00307c:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c003080:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c003084:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c003088:	0284000c 	addi.w	$r12,$r0,256(0x100)
1c00308c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c003090:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c003094:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003098:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c00309c:	00150184 	move	$r4,$r12
1c0030a0:	57fd5bff 	bl	-680(0xffffd58) # 1c002df8 <CLOCK_Init>
1c0030a4:	0015008d 	move	$r13,$r4
1c0030a8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0030ac:	58000dac 	beq	$r13,$r12,12(0xc) # 1c0030b8 <SystemClockInit+0x84>
1c0030b0:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c0030b4:	50000800 	b	8(0x8) # 1c0030bc <SystemClockInit+0x88>
1c0030b8:	0015000c 	move	$r12,$r0
1c0030bc:	00150184 	move	$r4,$r12
1c0030c0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0030c4:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0030c8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0030cc:	4c000020 	jirl	$r0,$r1,0

1c0030d0 <IsGlobalIntOpen>:
IsGlobalIntOpen():
1c0030d0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0030d4:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0030d8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0030dc:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0030e0:	0400000c 	csrrd	$r12,0x0
1c0030e4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0030e8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0030ec:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0030f0:	0340118c 	andi	$r12,$r12,0x4
1c0030f4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0030f8:	00150184 	move	$r4,$r12
1c0030fc:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003100:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003104:	4c000020 	jirl	$r0,$r1,0

1c003108 <DisableInt>:
DisableInt():
1c003108:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00310c:	29803076 	st.w	$r22,$r3,12(0xc)
1c003110:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003114:	0380100c 	ori	$r12,$r0,0x4
1c003118:	04000180 	csrxchg	$r0,$r12,0x0
1c00311c:	03400000 	andi	$r0,$r0,0x0
1c003120:	28803076 	ld.w	$r22,$r3,12(0xc)
1c003124:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003128:	4c000020 	jirl	$r0,$r1,0

1c00312c <EnableInt>:
EnableInt():
1c00312c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003130:	29803076 	st.w	$r22,$r3,12(0xc)
1c003134:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003138:	0380100c 	ori	$r12,$r0,0x4
1c00313c:	0400018c 	csrxchg	$r12,$r12,0x0
1c003140:	03400000 	andi	$r0,$r0,0x0
1c003144:	28803076 	ld.w	$r22,$r3,12(0xc)
1c003148:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00314c:	4c000020 	jirl	$r0,$r1,0

1c003150 <Set_Timer_stop>:
Set_Timer_stop():
1c003150:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003154:	29803076 	st.w	$r22,$r3,12(0xc)
1c003158:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00315c:	04010420 	csrwr	$r0,0x41
1c003160:	03400000 	andi	$r0,$r0,0x0
1c003164:	28803076 	ld.w	$r22,$r3,12(0xc)
1c003168:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00316c:	4c000020 	jirl	$r0,$r1,0

1c003170 <Set_Timer_clear>:
Set_Timer_clear():
1c003170:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003174:	29803076 	st.w	$r22,$r3,12(0xc)
1c003178:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00317c:	0380040c 	ori	$r12,$r0,0x1
1c003180:	0401102c 	csrwr	$r12,0x44
1c003184:	03400000 	andi	$r0,$r0,0x0
1c003188:	28803076 	ld.w	$r22,$r3,12(0xc)
1c00318c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003190:	4c000020 	jirl	$r0,$r1,0

1c003194 <Wake_Set>:
Wake_Set():
1c003194:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003198:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c00319c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0031a0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0031a4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0031a8:	40006980 	beqz	$r12,104(0x68) # 1c003210 <Wake_Set+0x7c>
1c0031ac:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0031b0:	0040a18c 	slli.w	$r12,$r12,0x8
1c0031b4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0031b8:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0031bc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0031c0:	0380218c 	ori	$r12,$r12,0x8
1c0031c4:	2880018d 	ld.w	$r13,$r12,0
1c0031c8:	14001fec 	lu12i.w	$r12,255(0xff)
1c0031cc:	03bffd8c 	ori	$r12,$r12,0xfff
1c0031d0:	0014b1ac 	and	$r12,$r13,$r12
1c0031d4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0031d8:	001031ac 	add.w	$r12,$r13,$r12
1c0031dc:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0031e0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0031e4:	0380318c 	ori	$r12,$r12,0xc
1c0031e8:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0031ec:	2980018d 	st.w	$r13,$r12,0
1c0031f0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0031f4:	0380118c 	ori	$r12,$r12,0x4
1c0031f8:	2880018d 	ld.w	$r13,$r12,0
1c0031fc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003200:	0380118c 	ori	$r12,$r12,0x4
1c003204:	038601ad 	ori	$r13,$r13,0x180
1c003208:	2980018d 	st.w	$r13,$r12,0
1c00320c:	50002400 	b	36(0x24) # 1c003230 <Wake_Set+0x9c>
1c003210:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003214:	0380118c 	ori	$r12,$r12,0x4
1c003218:	2880018e 	ld.w	$r14,$r12,0
1c00321c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003220:	0380118c 	ori	$r12,$r12,0x4
1c003224:	02b9fc0d 	addi.w	$r13,$r0,-385(0xe7f)
1c003228:	0014b5cd 	and	$r13,$r14,$r13
1c00322c:	2980018d 	st.w	$r13,$r12,0
1c003230:	03400000 	andi	$r0,$r0,0x0
1c003234:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003238:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00323c:	4c000020 	jirl	$r0,$r1,0

1c003240 <PMU_GetRstRrc>:
PMU_GetRstRrc():
1c003240:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003244:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003248:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00324c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003250:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003254:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c003258:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c00325c:	0014b1ac 	and	$r12,$r13,$r12
1c003260:	44000d80 	bnez	$r12,12(0xc) # 1c00326c <PMU_GetRstRrc+0x2c>
1c003264:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003268:	50003000 	b	48(0x30) # 1c003298 <PMU_GetRstRrc+0x58>
1c00326c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003270:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c003274:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c003278:	0014b1ad 	and	$r13,$r13,$r12
1c00327c:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c003280:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c003290 <PMU_GetRstRrc+0x50>
1c003284:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c003288:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00328c:	50000c00 	b	12(0xc) # 1c003298 <PMU_GetRstRrc+0x58>
1c003290:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003294:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003298:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00329c:	00150184 	move	$r4,$r12
1c0032a0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0032a4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0032a8:	4c000020 	jirl	$r0,$r1,0

1c0032ac <PMU_GetBootSpiStatus>:
PMU_GetBootSpiStatus():
1c0032ac:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0032b0:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0032b4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0032b8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0032bc:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0032c0:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c0032c4:	0380198c 	ori	$r12,$r12,0x6
1c0032c8:	2a00018c 	ld.bu	$r12,$r12,0
1c0032cc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0032d0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0032d4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0032d8:	0340058c 	andi	$r12,$r12,0x1
1c0032dc:	40000d80 	beqz	$r12,12(0xc) # 1c0032e8 <PMU_GetBootSpiStatus+0x3c>
1c0032e0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0032e4:	50000800 	b	8(0x8) # 1c0032ec <PMU_GetBootSpiStatus+0x40>
1c0032e8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0032ec:	00150184 	move	$r4,$r12
1c0032f0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0032f4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0032f8:	4c000020 	jirl	$r0,$r1,0

1c0032fc <ls1x_logo>:
ls1x_logo():
1c0032fc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003300:	29803061 	st.w	$r1,$r3,12(0xc)
1c003304:	29802076 	st.w	$r22,$r3,8(0x8)
1c003308:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00330c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003310:	02ac2084 	addi.w	$r4,$r4,-1272(0xb08)
1c003314:	57e99bff 	bl	-5736(0xfffe998) # 1c001cac <myprintf>
1c003318:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00331c:	02ac0084 	addi.w	$r4,$r4,-1280(0xb00)
1c003320:	57e98fff 	bl	-5748(0xfffe98c) # 1c001cac <myprintf>
1c003324:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003328:	02ad6084 	addi.w	$r4,$r4,-1192(0xb58)
1c00332c:	57e983ff 	bl	-5760(0xfffe980) # 1c001cac <myprintf>
1c003330:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003334:	02aec084 	addi.w	$r4,$r4,-1104(0xbb0)
1c003338:	57e977ff 	bl	-5772(0xfffe974) # 1c001cac <myprintf>
1c00333c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003340:	02b02084 	addi.w	$r4,$r4,-1016(0xc08)
1c003344:	57e96bff 	bl	-5784(0xfffe968) # 1c001cac <myprintf>
1c003348:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00334c:	02b18084 	addi.w	$r4,$r4,-928(0xc60)
1c003350:	57e95fff 	bl	-5796(0xfffe95c) # 1c001cac <myprintf>
1c003354:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003358:	02b2e084 	addi.w	$r4,$r4,-840(0xcb8)
1c00335c:	57e953ff 	bl	-5808(0xfffe950) # 1c001cac <myprintf>
1c003360:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003364:	02b44084 	addi.w	$r4,$r4,-752(0xd10)
1c003368:	57e947ff 	bl	-5820(0xfffe944) # 1c001cac <myprintf>
1c00336c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003370:	02b5a084 	addi.w	$r4,$r4,-664(0xd68)
1c003374:	57e93bff 	bl	-5832(0xfffe938) # 1c001cac <myprintf>
1c003378:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00337c:	02b70084 	addi.w	$r4,$r4,-576(0xdc0)
1c003380:	57e92fff 	bl	-5844(0xfffe92c) # 1c001cac <myprintf>
1c003384:	03400000 	andi	$r0,$r0,0x0
1c003388:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00338c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003390:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003394:	4c000020 	jirl	$r0,$r1,0

1c003398 <get_count>:
get_count():
1c003398:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00339c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0033a0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0033a4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0033a8:	0000600c 	rdtimel.w	$r12,$r0
1c0033ac:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0033b0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0033b4:	00150184 	move	$r4,$r12
1c0033b8:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0033bc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0033c0:	4c000020 	jirl	$r0,$r1,0

1c0033c4 <open_count>:
open_count():
1c0033c4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0033c8:	29803076 	st.w	$r22,$r3,12(0xc)
1c0033cc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0033d0:	0380400c 	ori	$r12,$r0,0x10
1c0033d4:	0402bd80 	csrxchg	$r0,$r12,0xaf
1c0033d8:	03400000 	andi	$r0,$r0,0x0
1c0033dc:	28803076 	ld.w	$r22,$r3,12(0xc)
1c0033e0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0033e4:	4c000020 	jirl	$r0,$r1,0

1c0033e8 <start_count>:
start_count():
1c0033e8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0033ec:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0033f0:	29806076 	st.w	$r22,$r3,24(0x18)
1c0033f4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0033f8:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0033fc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003400:	29800180 	st.w	$r0,$r12,0
1c003404:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003408:	29801180 	st.w	$r0,$r12,4(0x4)
1c00340c:	57ff8fff 	bl	-116(0xfffff8c) # 1c003398 <get_count>
1c003410:	0015008d 	move	$r13,$r4
1c003414:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003418:	2980018d 	st.w	$r13,$r12,0
1c00341c:	03400000 	andi	$r0,$r0,0x0
1c003420:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003424:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003428:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00342c:	4c000020 	jirl	$r0,$r1,0

1c003430 <stop_count>:
stop_count():
1c003430:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003434:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003438:	2980a076 	st.w	$r22,$r3,40(0x28)
1c00343c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003440:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003444:	57ff57ff 	bl	-172(0xfffff54) # 1c003398 <get_count>
1c003448:	0015008d 	move	$r13,$r4
1c00344c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003450:	2980118d 	st.w	$r13,$r12,4(0x4)
1c003454:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003458:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c00345c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003460:	2880018c 	ld.w	$r12,$r12,0
1c003464:	68001dac 	bltu	$r13,$r12,28(0x1c) # 1c003480 <stop_count+0x50>
1c003468:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00346c:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c003470:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003474:	2880018c 	ld.w	$r12,$r12,0
1c003478:	001131ac 	sub.w	$r12,$r13,$r12
1c00347c:	50002800 	b	40(0x28) # 1c0034a4 <stop_count+0x74>
1c003480:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c003484:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003488:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00348c:	2880018c 	ld.w	$r12,$r12,0
1c003490:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003494:	001131ad 	sub.w	$r13,$r13,$r12
1c003498:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00349c:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c0034a0:	001031ac 	add.w	$r12,$r13,$r12
1c0034a4:	00150184 	move	$r4,$r12
1c0034a8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0034ac:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0034b0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0034b4:	4c000020 	jirl	$r0,$r1,0

1c0034b8 <delay_cycle>:
delay_cycle():
1c0034b8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0034bc:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0034c0:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0034c4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0034c8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0034cc:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0034d0:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c0034d4:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0034d8:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c0034dc:	00150184 	move	$r4,$r12
1c0034e0:	57ff0bff 	bl	-248(0xfffff08) # 1c0033e8 <start_count>
1c0034e4:	50001400 	b	20(0x14) # 1c0034f8 <delay_cycle+0x40>
1c0034e8:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c0034ec:	00150184 	move	$r4,$r12
1c0034f0:	57ff43ff 	bl	-192(0xfffff40) # 1c003430 <stop_count>
1c0034f4:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0034f8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0034fc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003500:	6bffe9ac 	bltu	$r13,$r12,-24(0x3ffe8) # 1c0034e8 <delay_cycle+0x30>
1c003504:	03400000 	andi	$r0,$r0,0x0
1c003508:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c00350c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003510:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003514:	4c000020 	jirl	$r0,$r1,0

1c003518 <delay_us>:
delay_us():
1c003518:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00351c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003520:	29806076 	st.w	$r22,$r3,24(0x18)
1c003524:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003528:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c00352c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003530:	00408d8c 	slli.w	$r12,$r12,0x3
1c003534:	00150184 	move	$r4,$r12
1c003538:	57ff83ff 	bl	-128(0xfffff80) # 1c0034b8 <delay_cycle>
1c00353c:	03400000 	andi	$r0,$r0,0x0
1c003540:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003544:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003548:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00354c:	4c000020 	jirl	$r0,$r1,0

1c003550 <delay_ms>:
delay_ms():
1c003550:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003554:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003558:	29806076 	st.w	$r22,$r3,24(0x18)
1c00355c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003560:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003564:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003568:	1400002c 	lu12i.w	$r12,1(0x1)
1c00356c:	03bd018c 	ori	$r12,$r12,0xf40
1c003570:	001c31ac 	mul.w	$r12,$r13,$r12
1c003574:	00150184 	move	$r4,$r12
1c003578:	57ff43ff 	bl	-192(0xfffff40) # 1c0034b8 <delay_cycle>
1c00357c:	03400000 	andi	$r0,$r0,0x0
1c003580:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003584:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003588:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00358c:	4c000020 	jirl	$r0,$r1,0

1c003590 <memset>:
memset():
1c003590:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003594:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003598:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00359c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0035a0:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0035a4:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c0035a8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0035ac:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0035b0:	50001c00 	b	28(0x1c) # 1c0035cc <memset+0x3c>
1c0035b4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0035b8:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c0035bc:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c0035c0:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c0035c4:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c0035c8:	2900018d 	st.b	$r13,$r12,0
1c0035cc:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c0035d0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0035d4:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c0035d8:	47ffdd9f 	bnez	$r12,-36(0x7fffdc) # 1c0035b4 <memset+0x24>
1c0035dc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0035e0:	00150184 	move	$r4,$r12
1c0035e4:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0035e8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0035ec:	4c000020 	jirl	$r0,$r1,0

1c0035f0 <pstrstr>:
pstrstr():
1c0035f0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0035f4:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0035f8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0035fc:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003600:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c003604:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003608:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00360c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c003610:	2800018c 	ld.b	$r12,$r12,0
1c003614:	44008580 	bnez	$r12,132(0x84) # 1c003698 <pstrstr+0xa8>
1c003618:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00361c:	50008c00 	b	140(0x8c) # 1c0036a8 <pstrstr+0xb8>
1c003620:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003624:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003628:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00362c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c003630:	50001c00 	b	28(0x1c) # 1c00364c <pstrstr+0x5c>
1c003634:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003638:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00363c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003640:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c003644:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003648:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00364c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003650:	2800018c 	ld.b	$r12,$r12,0
1c003654:	40002580 	beqz	$r12,36(0x24) # 1c003678 <pstrstr+0x88>
1c003658:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c00365c:	2800018c 	ld.b	$r12,$r12,0
1c003660:	40001980 	beqz	$r12,24(0x18) # 1c003678 <pstrstr+0x88>
1c003664:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003668:	2800018d 	ld.b	$r13,$r12,0
1c00366c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c003670:	2800018c 	ld.b	$r12,$r12,0
1c003674:	5bffc1ac 	beq	$r13,$r12,-64(0x3ffc0) # 1c003634 <pstrstr+0x44>
1c003678:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c00367c:	2800018c 	ld.b	$r12,$r12,0
1c003680:	44000d80 	bnez	$r12,12(0xc) # 1c00368c <pstrstr+0x9c>
1c003684:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003688:	50002000 	b	32(0x20) # 1c0036a8 <pstrstr+0xb8>
1c00368c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003690:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003694:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003698:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00369c:	2800018c 	ld.b	$r12,$r12,0
1c0036a0:	47ff819f 	bnez	$r12,-128(0x7fff80) # 1c003620 <pstrstr+0x30>
1c0036a4:	0015000c 	move	$r12,$r0
1c0036a8:	00150184 	move	$r4,$r12
1c0036ac:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0036b0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0036b4:	4c000020 	jirl	$r0,$r1,0

1c0036b8 <EXTI_ClearITPendingBit>:
EXTI_ClearITPendingBit():
1c0036b8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0036bc:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0036c0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0036c4:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0036c8:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c0036cc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0036d0:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c0036d4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0036d8:	001531ad 	or	$r13,$r13,$r12
1c0036dc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0036e0:	2980318d 	st.w	$r13,$r12,12(0xc)
1c0036e4:	03400000 	andi	$r0,$r0,0x0
1c0036e8:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0036ec:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0036f0:	4c000020 	jirl	$r0,$r1,0

1c0036f4 <WDG_getOddValue>:
WDG_getOddValue():
1c0036f4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0036f8:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0036fc:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003700:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003704:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003708:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c00370c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003710:	50003800 	b	56(0x38) # 1c003748 <WDG_getOddValue+0x54>
1c003714:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c003718:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00371c:	001731ac 	sll.w	$r12,$r13,$r12
1c003720:	0015018d 	move	$r13,$r12
1c003724:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003728:	0014b1ac 	and	$r12,$r13,$r12
1c00372c:	40001180 	beqz	$r12,16(0x10) # 1c00373c <WDG_getOddValue+0x48>
1c003730:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003734:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003738:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00373c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003740:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003744:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003748:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00374c:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c003750:	67ffc58d 	bge	$r12,$r13,-60(0x3ffc4) # 1c003714 <WDG_getOddValue+0x20>
1c003754:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003758:	0340058c 	andi	$r12,$r12,0x1
1c00375c:	44000d80 	bnez	$r12,12(0xc) # 1c003768 <WDG_getOddValue+0x74>
1c003760:	1400010c 	lu12i.w	$r12,8(0x8)
1c003764:	50000800 	b	8(0x8) # 1c00376c <WDG_getOddValue+0x78>
1c003768:	0015000c 	move	$r12,$r0
1c00376c:	00150184 	move	$r4,$r12
1c003770:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003774:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003778:	4c000020 	jirl	$r0,$r1,0

1c00377c <WDG_SetWatchDog>:
WDG_SetWatchDog():
1c00377c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003780:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003784:	29806076 	st.w	$r22,$r3,24(0x18)
1c003788:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00378c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003790:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003794:	140000ec 	lu12i.w	$r12,7(0x7)
1c003798:	03bffd8c 	ori	$r12,$r12,0xfff
1c00379c:	0014b1ac 	and	$r12,$r13,$r12
1c0037a0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0037a4:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c0037a8:	57ff4fff 	bl	-180(0xfffff4c) # 1c0036f4 <WDG_getOddValue>
1c0037ac:	0015008c 	move	$r12,$r4
1c0037b0:	0015018d 	move	$r13,$r12
1c0037b4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0037b8:	0015358c 	or	$r12,$r12,$r13
1c0037bc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0037c0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0037c4:	154ab4ad 	lu12i.w	$r13,-371291(0xa55a5)
1c0037c8:	0396a9ad 	ori	$r13,$r13,0x5aa
1c0037cc:	2980d18d 	st.w	$r13,$r12,52(0x34)
1c0037d0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0037d4:	0014300c 	nor	$r12,$r0,$r12
1c0037d8:	0040c18c 	slli.w	$r12,$r12,0x10
1c0037dc:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0037e0:	001531ac 	or	$r12,$r13,$r12
1c0037e4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0037e8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0037ec:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0037f0:	2980c18d 	st.w	$r13,$r12,48(0x30)
1c0037f4:	03400000 	andi	$r0,$r0,0x0
1c0037f8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0037fc:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003800:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003804:	4c000020 	jirl	$r0,$r1,0

1c003808 <WDG_DogFeed>:
WDG_DogFeed():
1c003808:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00380c:	29803076 	st.w	$r22,$r3,12(0xc)
1c003810:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003814:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003818:	154ab4ad 	lu12i.w	$r13,-371291(0xa55a5)
1c00381c:	0396a9ad 	ori	$r13,$r13,0x5aa
1c003820:	2980d18d 	st.w	$r13,$r12,52(0x34)
1c003824:	03400000 	andi	$r0,$r0,0x0
1c003828:	28803076 	ld.w	$r22,$r3,12(0xc)
1c00382c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003830:	4c000020 	jirl	$r0,$r1,0

1c003834 <WdgInit>:
WdgInit():
1c003834:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003838:	29803061 	st.w	$r1,$r3,12(0xc)
1c00383c:	29802076 	st.w	$r22,$r3,8(0x8)
1c003840:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003844:	150000ec 	lu12i.w	$r12,-524281(0x80007)
1c003848:	03bffd84 	ori	$r4,$r12,0xfff
1c00384c:	57ff33ff 	bl	-208(0xfffff30) # 1c00377c <WDG_SetWatchDog>
1c003850:	03400000 	andi	$r0,$r0,0x0
1c003854:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003858:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00385c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003860:	4c000020 	jirl	$r0,$r1,0

1c003864 <I2C_Init>:
I2C_Init():
1c003864:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003868:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c00386c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003870:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003874:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003878:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c00387c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003880:	1400f42c 	lu12i.w	$r12,1953(0x7a1)
1c003884:	0388018c 	ori	$r12,$r12,0x200
1c003888:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00388c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003890:	0280800d 	addi.w	$r13,$r0,32(0x20)
1c003894:	2900098d 	st.b	$r13,$r12,2(0x2)
1c003898:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00389c:	2880018d 	ld.w	$r13,$r12,0
1c0038a0:	28bfa2ce 	ld.w	$r14,$r22,-24(0xfe8)
1c0038a4:	002135cc 	div.wu	$r12,$r14,$r13
1c0038a8:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c0038b0 <I2C_Init+0x4c>
1c0038ac:	002a0007 	break	0x7
1c0038b0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0038b4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0038b8:	0044898c 	srli.w	$r12,$r12,0x2
1c0038bc:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0038c0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0038c4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0038c8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0038cc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0038d0:	2900018d 	st.b	$r13,$r12,0
1c0038d4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0038d8:	0044a18c 	srli.w	$r12,$r12,0x8
1c0038dc:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0038e0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0038e4:	2900058d 	st.b	$r13,$r12,1(0x1)
1c0038e8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0038ec:	2a00118d 	ld.bu	$r13,$r12,4(0x4)
1c0038f0:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0038f4:	2a00198c 	ld.bu	$r12,$r12,6(0x6)
1c0038f8:	001531ac 	or	$r12,$r13,$r12
1c0038fc:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c003900:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c003904:	2a001d8c 	ld.bu	$r12,$r12,7(0x7)
1c003908:	001531ac 	or	$r12,$r13,$r12
1c00390c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c003910:	02be000c 	addi.w	$r12,$r0,-128(0xf80)
1c003914:	001531ac 	or	$r12,$r13,$r12
1c003918:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00391c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003920:	2900098d 	st.b	$r13,$r12,2(0x2)
1c003924:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c003928:	2a00198c 	ld.bu	$r12,$r12,6(0x6)
1c00392c:	40001180 	beqz	$r12,16(0x10) # 1c00393c <I2C_Init+0xd8>
1c003930:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003934:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c003938:	2900118d 	st.b	$r13,$r12,4(0x4)
1c00393c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c003940:	2a00158d 	ld.bu	$r13,$r12,5(0x5)
1c003944:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003948:	29001d8d 	st.b	$r13,$r12,7(0x7)
1c00394c:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003950:	54022000 	bl	544(0x220) # 1c003b70 <I2C_wait>
1c003954:	03400000 	andi	$r0,$r0,0x0
1c003958:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c00395c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003960:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003964:	4c000020 	jirl	$r0,$r1,0

1c003968 <I2C_StructInit>:
I2C_StructInit():
1c003968:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00396c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003970:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003974:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003978:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00397c:	1400030d 	lu12i.w	$r13,24(0x18)
1c003980:	039a81ad 	ori	$r13,$r13,0x6a0
1c003984:	2980018d 	st.w	$r13,$r12,0
1c003988:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00398c:	0280800d 	addi.w	$r13,$r0,32(0x20)
1c003990:	2900118d 	st.b	$r13,$r12,4(0x4)
1c003994:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003998:	0280a80d 	addi.w	$r13,$r0,42(0x2a)
1c00399c:	2900158d 	st.b	$r13,$r12,5(0x5)
1c0039a0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0039a4:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c0039a8:	2900198d 	st.b	$r13,$r12,6(0x6)
1c0039ac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0039b0:	29001d80 	st.b	$r0,$r12,7(0x7)
1c0039b4:	03400000 	andi	$r0,$r0,0x0
1c0039b8:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0039bc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0039c0:	4c000020 	jirl	$r0,$r1,0

1c0039c4 <I2C_GenerateSTART>:
I2C_GenerateSTART():
1c0039c4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0039c8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0039cc:	29806076 	st.w	$r22,$r3,24(0x18)
1c0039d0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0039d4:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0039d8:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c0039dc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0039e0:	40002980 	beqz	$r12,40(0x28) # 1c003a08 <I2C_GenerateSTART+0x44>
1c0039e4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0039e8:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c0039ec:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0039f0:	02be000c 	addi.w	$r12,$r0,-128(0xf80)
1c0039f4:	001531ac 	or	$r12,$r13,$r12
1c0039f8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0039fc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003a00:	2900118d 	st.b	$r13,$r12,4(0x4)
1c003a04:	50002000 	b	32(0x20) # 1c003a24 <I2C_GenerateSTART+0x60>
1c003a08:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003a0c:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c003a10:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003a14:	0341fd8c 	andi	$r12,$r12,0x7f
1c003a18:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c003a1c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003a20:	2900118d 	st.b	$r13,$r12,4(0x4)
1c003a24:	02806404 	addi.w	$r4,$r0,25(0x19)
1c003a28:	57faf3ff 	bl	-1296(0xffffaf0) # 1c003518 <delay_us>
1c003a2c:	03400000 	andi	$r0,$r0,0x0
1c003a30:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003a34:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003a38:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003a3c:	4c000020 	jirl	$r0,$r1,0

1c003a40 <I2C_GenerateSTOP>:
I2C_GenerateSTOP():
1c003a40:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003a44:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003a48:	29806076 	st.w	$r22,$r3,24(0x18)
1c003a4c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003a50:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003a54:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c003a58:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003a5c:	40002580 	beqz	$r12,36(0x24) # 1c003a80 <I2C_GenerateSTOP+0x40>
1c003a60:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003a64:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c003a68:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003a6c:	0381018c 	ori	$r12,$r12,0x40
1c003a70:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c003a74:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003a78:	2900118d 	st.b	$r13,$r12,4(0x4)
1c003a7c:	50002400 	b	36(0x24) # 1c003aa0 <I2C_GenerateSTOP+0x60>
1c003a80:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003a84:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c003a88:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c003a8c:	02befc0c 	addi.w	$r12,$r0,-65(0xfbf)
1c003a90:	0014b1ac 	and	$r12,$r13,$r12
1c003a94:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c003a98:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003a9c:	2900118d 	st.b	$r13,$r12,4(0x4)
1c003aa0:	02806404 	addi.w	$r4,$r0,25(0x19)
1c003aa4:	57fa77ff 	bl	-1420(0xffffa74) # 1c003518 <delay_us>
1c003aa8:	03400000 	andi	$r0,$r0,0x0
1c003aac:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003ab0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003ab4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003ab8:	4c000020 	jirl	$r0,$r1,0

1c003abc <I2C_SendData>:
I2C_SendData():
1c003abc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003ac0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003ac4:	29806076 	st.w	$r22,$r3,24(0x18)
1c003ac8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003acc:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003ad0:	001500ac 	move	$r12,$r5
1c003ad4:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c003ad8:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c003adc:	5400dc00 	bl	220(0xdc) # 1c003bb8 <I2C_Unlock>
1c003ae0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003ae4:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c003ae8:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c003aec:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c003af0:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c003af4:	2900118d 	st.b	$r13,$r12,4(0x4)
1c003af8:	03400000 	andi	$r0,$r0,0x0
1c003afc:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003b00:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003b04:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003b08:	4c000020 	jirl	$r0,$r1,0

1c003b0c <I2C_ReceiveData>:
I2C_ReceiveData():
1c003b0c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003b10:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003b14:	29806076 	st.w	$r22,$r3,24(0x18)
1c003b18:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003b1c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003b20:	001500ac 	move	$r12,$r5
1c003b24:	001500cd 	move	$r13,$r6
1c003b28:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c003b2c:	001501ac 	move	$r12,$r13
1c003b30:	293faacc 	st.b	$r12,$r22,-22(0xfea)
1c003b34:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c003b38:	54008000 	bl	128(0x80) # 1c003bb8 <I2C_Unlock>
1c003b3c:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c003b40:	2a3faacc 	ld.bu	$r12,$r22,-22(0xfea)
1c003b44:	001531ac 	or	$r12,$r13,$r12
1c003b48:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003b4c:	0380818c 	ori	$r12,$r12,0x20
1c003b50:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c003b54:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003b58:	2900118d 	st.b	$r13,$r12,4(0x4)
1c003b5c:	03400000 	andi	$r0,$r0,0x0
1c003b60:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003b64:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003b68:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003b6c:	4c000020 	jirl	$r0,$r1,0

1c003b70 <I2C_wait>:
I2C_wait():
1c003b70:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003b74:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003b78:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003b7c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003b80:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003b84:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c003b88:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c003b8c:	50001000 	b	16(0x10) # 1c003b9c <I2C_wait+0x2c>
1c003b90:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003b94:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c003b98:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c003b9c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003ba0:	0340098c 	andi	$r12,$r12,0x2
1c003ba4:	47ffed9f 	bnez	$r12,-20(0x7fffec) # 1c003b90 <I2C_wait+0x20>
1c003ba8:	03400000 	andi	$r0,$r0,0x0
1c003bac:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003bb0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003bb4:	4c000020 	jirl	$r0,$r1,0

1c003bb8 <I2C_Unlock>:
I2C_Unlock():
1c003bb8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003bbc:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003bc0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003bc4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003bc8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003bcc:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c003bd0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c003bd4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003bd8:	0340118c 	andi	$r12,$r12,0x4
1c003bdc:	40002180 	beqz	$r12,32(0x20) # 1c003bfc <I2C_Unlock+0x44>
1c003be0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003be4:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c003be8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003bec:	0380118c 	ori	$r12,$r12,0x4
1c003bf0:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c003bf4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003bf8:	2900118d 	st.b	$r13,$r12,4(0x4)
1c003bfc:	03400000 	andi	$r0,$r0,0x0
1c003c00:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003c04:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003c08:	4c000020 	jirl	$r0,$r1,0

1c003c0c <Sht30_Init>:
Sht30_Init():
1c003c0c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003c10:	29803061 	st.w	$r1,$r3,12(0xc)
1c003c14:	29802076 	st.w	$r22,$r3,8(0x8)
1c003c18:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003c1c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c003c20:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003c24:	57fda3ff 	bl	-608(0xffffda0) # 1c0039c4 <I2C_GenerateSTART>
1c003c28:	02822005 	addi.w	$r5,$r0,136(0x88)
1c003c2c:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003c30:	57fe8fff 	bl	-372(0xffffe8c) # 1c003abc <I2C_SendData>
1c003c34:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003c38:	57ff3bff 	bl	-200(0xfffff38) # 1c003b70 <I2C_wait>
1c003c3c:	02808405 	addi.w	$r5,$r0,33(0x21)
1c003c40:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003c44:	57fe7bff 	bl	-392(0xffffe78) # 1c003abc <I2C_SendData>
1c003c48:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003c4c:	57ff27ff 	bl	-220(0xfffff24) # 1c003b70 <I2C_wait>
1c003c50:	0280c005 	addi.w	$r5,$r0,48(0x30)
1c003c54:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003c58:	57fe67ff 	bl	-412(0xffffe64) # 1c003abc <I2C_SendData>
1c003c5c:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003c60:	57ff13ff 	bl	-240(0xfffff10) # 1c003b70 <I2C_wait>
1c003c64:	02800405 	addi.w	$r5,$r0,1(0x1)
1c003c68:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003c6c:	57fdd7ff 	bl	-556(0xffffdd4) # 1c003a40 <I2C_GenerateSTOP>
1c003c70:	02825804 	addi.w	$r4,$r0,150(0x96)
1c003c74:	57f8dfff 	bl	-1828(0xffff8dc) # 1c003550 <delay_ms>
1c003c78:	03400000 	andi	$r0,$r0,0x0
1c003c7c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003c80:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003c84:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003c88:	4c000020 	jirl	$r0,$r1,0

1c003c8c <Send_Tem_Humid>:
Send_Tem_Humid():
1c003c8c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003c90:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003c94:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003c98:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003c9c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c003ca0:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003ca4:	57fd23ff 	bl	-736(0xffffd20) # 1c0039c4 <I2C_GenerateSTART>
1c003ca8:	02822005 	addi.w	$r5,$r0,136(0x88)
1c003cac:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003cb0:	57fe0fff 	bl	-500(0xffffe0c) # 1c003abc <I2C_SendData>
1c003cb4:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003cb8:	57febbff 	bl	-328(0xffffeb8) # 1c003b70 <I2C_wait>
1c003cbc:	02838005 	addi.w	$r5,$r0,224(0xe0)
1c003cc0:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003cc4:	57fdfbff 	bl	-520(0xffffdf8) # 1c003abc <I2C_SendData>
1c003cc8:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003ccc:	57fea7ff 	bl	-348(0xffffea4) # 1c003b70 <I2C_wait>
1c003cd0:	00150005 	move	$r5,$r0
1c003cd4:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003cd8:	57fde7ff 	bl	-540(0xffffde4) # 1c003abc <I2C_SendData>
1c003cdc:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003ce0:	57fe93ff 	bl	-368(0xffffe90) # 1c003b70 <I2C_wait>
1c003ce4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c003ce8:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003cec:	57fcdbff 	bl	-808(0xffffcd8) # 1c0039c4 <I2C_GenerateSTART>
1c003cf0:	02822405 	addi.w	$r5,$r0,137(0x89)
1c003cf4:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003cf8:	57fdc7ff 	bl	-572(0xffffdc4) # 1c003abc <I2C_SendData>
1c003cfc:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003d00:	57fe73ff 	bl	-400(0xffffe70) # 1c003b70 <I2C_wait>
1c003d04:	00150006 	move	$r6,$r0
1c003d08:	00150005 	move	$r5,$r0
1c003d0c:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003d10:	57fdffff 	bl	-516(0xffffdfc) # 1c003b0c <I2C_ReceiveData>
1c003d14:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003d18:	57fe5bff 	bl	-424(0xffffe58) # 1c003b70 <I2C_wait>
1c003d1c:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c003d20:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c003d24:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003d28:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003d2c:	297f62cc 	st.h	$r12,$r22,-40(0xfd8)
1c003d30:	00150006 	move	$r6,$r0
1c003d34:	00150005 	move	$r5,$r0
1c003d38:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003d3c:	57fdd3ff 	bl	-560(0xffffdd0) # 1c003b0c <I2C_ReceiveData>
1c003d40:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003d44:	57fe2fff 	bl	-468(0xffffe2c) # 1c003b70 <I2C_wait>
1c003d48:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c003d4c:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c003d50:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003d54:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003d58:	297f6acc 	st.h	$r12,$r22,-38(0xfda)
1c003d5c:	00150006 	move	$r6,$r0
1c003d60:	00150005 	move	$r5,$r0
1c003d64:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003d68:	57fda7ff 	bl	-604(0xffffda4) # 1c003b0c <I2C_ReceiveData>
1c003d6c:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003d70:	57fe03ff 	bl	-512(0xffffe00) # 1c003b70 <I2C_wait>
1c003d74:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c003d78:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c003d7c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003d80:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003d84:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c003d88:	00150006 	move	$r6,$r0
1c003d8c:	00150005 	move	$r5,$r0
1c003d90:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003d94:	57fd7bff 	bl	-648(0xffffd78) # 1c003b0c <I2C_ReceiveData>
1c003d98:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003d9c:	57fdd7ff 	bl	-556(0xffffdd4) # 1c003b70 <I2C_wait>
1c003da0:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c003da4:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c003da8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003dac:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003db0:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c003db4:	00150006 	move	$r6,$r0
1c003db8:	00150005 	move	$r5,$r0
1c003dbc:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003dc0:	57fd4fff 	bl	-692(0xffffd4c) # 1c003b0c <I2C_ReceiveData>
1c003dc4:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003dc8:	57fdabff 	bl	-600(0xffffda8) # 1c003b70 <I2C_wait>
1c003dcc:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c003dd0:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c003dd4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003dd8:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003ddc:	297f82cc 	st.h	$r12,$r22,-32(0xfe0)
1c003de0:	02810006 	addi.w	$r6,$r0,64(0x40)
1c003de4:	02802005 	addi.w	$r5,$r0,8(0x8)
1c003de8:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003dec:	57fd23ff 	bl	-736(0xffffd20) # 1c003b0c <I2C_ReceiveData>
1c003df0:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003df4:	57fd7fff 	bl	-644(0xffffd7c) # 1c003b70 <I2C_wait>
1c003df8:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c003dfc:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c003e00:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003e04:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003e08:	297f8acc 	st.h	$r12,$r22,-30(0xfe2)
1c003e0c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c003e10:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003e14:	57fc2fff 	bl	-980(0xffffc2c) # 1c003a40 <I2C_GenerateSTOP>
1c003e18:	2a7f62cc 	ld.hu	$r12,$r22,-40(0xfd8)
1c003e1c:	0040a18c 	slli.w	$r12,$r12,0x8
1c003e20:	0000598d 	ext.w.h	$r13,$r12
1c003e24:	2a7f6acc 	ld.hu	$r12,$r22,-38(0xfda)
1c003e28:	0000598c 	ext.w.h	$r12,$r12
1c003e2c:	001531ac 	or	$r12,$r13,$r12
1c003e30:	0000598c 	ext.w.h	$r12,$r12
1c003e34:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c003e38:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c003e3c:	0040a18c 	slli.w	$r12,$r12,0x8
1c003e40:	0000598d 	ext.w.h	$r13,$r12
1c003e44:	2a7f82cc 	ld.hu	$r12,$r22,-32(0xfe0)
1c003e48:	0000598c 	ext.w.h	$r12,$r12
1c003e4c:	001531ac 	or	$r12,$r13,$r12
1c003e50:	0000598c 	ext.w.h	$r12,$r12
1c003e54:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c003e58:	2a7fbacd 	ld.hu	$r13,$r22,-18(0xfee)
1c003e5c:	0282bc0c 	addi.w	$r12,$r0,175(0xaf)
1c003e60:	001c31ae 	mul.w	$r14,$r13,$r12
1c003e64:	140001ec 	lu12i.w	$r12,15(0xf)
1c003e68:	03bffd8d 	ori	$r13,$r12,0xfff
1c003e6c:	002035cc 	div.w	$r12,$r14,$r13
1c003e70:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c003e78 <Send_Tem_Humid+0x1ec>
1c003e74:	002a0007 	break	0x7
1c003e78:	02bf4d8c 	addi.w	$r12,$r12,-45(0xfd3)
1c003e7c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003e80:	2a7fb2cd 	ld.hu	$r13,$r22,-20(0xfec)
1c003e84:	0281900c 	addi.w	$r12,$r0,100(0x64)
1c003e88:	001c31ae 	mul.w	$r14,$r13,$r12
1c003e8c:	140001ec 	lu12i.w	$r12,15(0xf)
1c003e90:	03bffd8d 	ori	$r13,$r12,0xfff
1c003e94:	002035cc 	div.w	$r12,$r14,$r13
1c003e98:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c003ea0 <Send_Tem_Humid+0x214>
1c003e9c:	002a0007 	break	0x7
1c003ea0:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c003ea4:	28bfa2c5 	ld.w	$r5,$r22,-24(0xfe8)
1c003ea8:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003eac:	028bd084 	addi.w	$r4,$r4,756(0x2f4)
1c003eb0:	57ddffff 	bl	-8708(0xfffddfc) # 1c001cac <myprintf>
1c003eb4:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c003eb8:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003ebc:	028bd084 	addi.w	$r4,$r4,756(0x2f4)
1c003ec0:	57ddefff 	bl	-8724(0xfffddec) # 1c001cac <myprintf>
1c003ec4:	28bfa2c6 	ld.w	$r6,$r22,-24(0xfe8)
1c003ec8:	1c000045 	pcaddu12i	$r5,2(0x2)
1c003ecc:	028bd0a5 	addi.w	$r5,$r5,756(0x2f4)
1c003ed0:	00150004 	move	$r4,$r0
1c003ed4:	57e17fff 	bl	-7812(0xfffe17c) # 1c002050 <myprintf2>
1c003ed8:	02819004 	addi.w	$r4,$r0,100(0x64)
1c003edc:	57f677ff 	bl	-2444(0xffff674) # 1c003550 <delay_ms>
1c003ee0:	28bf92c6 	ld.w	$r6,$r22,-28(0xfe4)
1c003ee4:	1c000045 	pcaddu12i	$r5,2(0x2)
1c003ee8:	028b80a5 	addi.w	$r5,$r5,736(0x2e0)
1c003eec:	00150004 	move	$r4,$r0
1c003ef0:	57e163ff 	bl	-7840(0xfffe160) # 1c002050 <myprintf2>
1c003ef4:	03400000 	andi	$r0,$r0,0x0
1c003ef8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003efc:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003f00:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003f04:	4c000020 	jirl	$r0,$r1,0

1c003f08 <Adc_powerOn>:
Adc_powerOn():
1c003f08:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003f0c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003f10:	29806076 	st.w	$r22,$r3,24(0x18)
1c003f14:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003f18:	57f1bbff 	bl	-3656(0xffff1b8) # 1c0030d0 <IsGlobalIntOpen>
1c003f1c:	0015008c 	move	$r12,$r4
1c003f20:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c003f24:	57f1e7ff 	bl	-3612(0xffff1e4) # 1c003108 <DisableInt>
1c003f28:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c003f2c:	288001ac 	ld.w	$r12,$r13,0
1c003f30:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c003f34:	007041cc 	bstrins.w	$r12,$r14,0x10,0x10
1c003f38:	298001ac 	st.w	$r12,$r13,0
1c003f3c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003f40:	40000980 	beqz	$r12,8(0x8) # 1c003f48 <Adc_powerOn+0x40>
1c003f44:	57f1ebff 	bl	-3608(0xffff1e8) # 1c00312c <EnableInt>
1c003f48:	03400000 	andi	$r0,$r0,0x0
1c003f4c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003f50:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003f54:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003f58:	4c000020 	jirl	$r0,$r1,0

1c003f5c <Adc_open>:
Adc_open():
1c003f5c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003f60:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003f64:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003f68:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003f6c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003f70:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c003f74:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003f78:	001731ac 	sll.w	$r12,$r13,$r12
1c003f7c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003f80:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003f84:	0340058c 	andi	$r12,$r12,0x1
1c003f88:	40003580 	beqz	$r12,52(0x34) # 1c003fbc <Adc_open+0x60>
1c003f8c:	57f147ff 	bl	-3772(0xffff144) # 1c0030d0 <IsGlobalIntOpen>
1c003f90:	0015008c 	move	$r12,$r4
1c003f94:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c003f98:	57f173ff 	bl	-3728(0xffff170) # 1c003108 <DisableInt>
1c003f9c:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c003fa0:	288001ac 	ld.w	$r12,$r13,0
1c003fa4:	0071440c 	bstrins.w	$r12,$r0,0x11,0x11
1c003fa8:	298001ac 	st.w	$r12,$r13,0
1c003fac:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c003fb0:	40004980 	beqz	$r12,72(0x48) # 1c003ff8 <Adc_open+0x9c>
1c003fb4:	57f17bff 	bl	-3720(0xffff178) # 1c00312c <EnableInt>
1c003fb8:	50004000 	b	64(0x40) # 1c003ff8 <Adc_open+0x9c>
1c003fbc:	57f117ff 	bl	-3820(0xffff114) # 1c0030d0 <IsGlobalIntOpen>
1c003fc0:	0015008c 	move	$r12,$r4
1c003fc4:	293faacc 	st.b	$r12,$r22,-22(0xfea)
1c003fc8:	57f143ff 	bl	-3776(0xffff140) # 1c003108 <DisableInt>
1c003fcc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003fd0:	0044918c 	srli.w	$r12,$r12,0x4
1c003fd4:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c003fd8:	03403d8c 	andi	$r12,$r12,0xf
1c003fdc:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c003fe0:	288001ac 	ld.w	$r12,$r13,0
1c003fe4:	007751cc 	bstrins.w	$r12,$r14,0x17,0x14
1c003fe8:	298001ac 	st.w	$r12,$r13,0
1c003fec:	2a3faacc 	ld.bu	$r12,$r22,-22(0xfea)
1c003ff0:	40000980 	beqz	$r12,8(0x8) # 1c003ff8 <Adc_open+0x9c>
1c003ff4:	57f13bff 	bl	-3784(0xffff138) # 1c00312c <EnableInt>
1c003ff8:	03400000 	andi	$r0,$r0,0x0
1c003ffc:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c004000:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c004004:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c004008:	4c000020 	jirl	$r0,$r1,0

1c00400c <Adc_Measure>:
Adc_Measure():
1c00400c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c004010:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c004014:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c004018:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00401c:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c004020:	297faac0 	st.h	$r0,$r22,-22(0xfea)
1c004024:	297fbac0 	st.h	$r0,$r22,-18(0xfee)
1c004028:	50008400 	b	132(0x84) # 1c0040ac <Adc_Measure+0xa0>
1c00402c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004030:	0381b18c 	ori	$r12,$r12,0x6c
1c004034:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c004038:	038401ad 	ori	$r13,$r13,0x100
1c00403c:	2980018d 	st.w	$r13,$r12,0
1c004040:	03400000 	andi	$r0,$r0,0x0
1c004044:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004048:	0381b18c 	ori	$r12,$r12,0x6c
1c00404c:	2880018c 	ld.w	$r12,$r12,0
1c004050:	0344018c 	andi	$r12,$r12,0x100
1c004054:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1c004044 <Adc_Measure+0x38>
1c004058:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00405c:	0381c18c 	ori	$r12,$r12,0x70
1c004060:	2880018c 	ld.w	$r12,$r12,0
1c004064:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c004068:	037ffd8c 	andi	$r12,$r12,0xfff
1c00406c:	297fa2cc 	st.h	$r12,$r22,-24(0xfe8)
1c004070:	2a7fbacd 	ld.hu	$r13,$r22,-18(0xfee)
1c004074:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c004078:	6c00298d 	bgeu	$r12,$r13,40(0x28) # 1c0040a0 <Adc_Measure+0x94>
1c00407c:	2a7faacd 	ld.hu	$r13,$r22,-22(0xfea)
1c004080:	2a7fa2cc 	ld.hu	$r12,$r22,-24(0xfe8)
1c004084:	001031ac 	add.w	$r12,$r13,$r12
1c004088:	297faacc 	st.h	$r12,$r22,-22(0xfea)
1c00408c:	2a7fa2cd 	ld.hu	$r13,$r22,-24(0xfe8)
1c004090:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c004094:	6c000d8d 	bgeu	$r12,$r13,12(0xc) # 1c0040a0 <Adc_Measure+0x94>
1c004098:	2a7fa2cc 	ld.hu	$r12,$r22,-24(0xfe8)
1c00409c:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c0040a0:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c0040a4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0040a8:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c0040ac:	2a7fbacd 	ld.hu	$r13,$r22,-18(0xfee)
1c0040b0:	0280180c 	addi.w	$r12,$r0,6(0x6)
1c0040b4:	6fff798d 	bgeu	$r12,$r13,-136(0x3ff78) # 1c00402c <Adc_Measure+0x20>
1c0040b8:	2a7faacd 	ld.hu	$r13,$r22,-22(0xfea)
1c0040bc:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c0040c0:	001131ad 	sub.w	$r13,$r13,$r12
1c0040c4:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c0040c8:	002031ae 	div.w	$r14,$r13,$r12
1c0040cc:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0040d4 <Adc_Measure+0xc8>
1c0040d0:	002a0007 	break	0x7
1c0040d4:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c0040d8:	00150184 	move	$r4,$r12
1c0040dc:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0040e0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0040e4:	4c000020 	jirl	$r0,$r1,0

1c0040e8 <TOUCH_GetBaseVal>:
TOUCH_GetBaseVal():
1c0040e8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0040ec:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0040f0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0040f4:	0015008c 	move	$r12,$r4
1c0040f8:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c0040fc:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c004100:	0040898c 	slli.w	$r12,$r12,0x2
1c004104:	0015018d 	move	$r13,$r12
1c004108:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c00410c:	0381018c 	ori	$r12,$r12,0x40
1c004110:	001031ac 	add.w	$r12,$r13,$r12
1c004114:	2880018c 	ld.w	$r12,$r12,0
1c004118:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c00411c:	037ffd8c 	andi	$r12,$r12,0xfff
1c004120:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c004124:	00150184 	move	$r4,$r12
1c004128:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c00412c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004130:	4c000020 	jirl	$r0,$r1,0

1c004134 <TOUCH_GetCountValue>:
TOUCH_GetCountValue():
1c004134:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004138:	29807076 	st.w	$r22,$r3,28(0x1c)
1c00413c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004140:	0015008c 	move	$r12,$r4
1c004144:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c004148:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c00414c:	0040898c 	slli.w	$r12,$r12,0x2
1c004150:	0015018d 	move	$r13,$r12
1c004154:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c004158:	0382018c 	ori	$r12,$r12,0x80
1c00415c:	001031ac 	add.w	$r12,$r13,$r12
1c004160:	2880018c 	ld.w	$r12,$r12,0
1c004164:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c004168:	037ffd8c 	andi	$r12,$r12,0xfff
1c00416c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c004170:	00150184 	move	$r4,$r12
1c004174:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c004178:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00417c:	4c000020 	jirl	$r0,$r1,0

1c004180 <Printf_KeyChannel>:
Printf_KeyChannel():
1c004180:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c004184:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c004188:	2980a076 	st.w	$r22,$r3,40(0x28)
1c00418c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c004190:	0015008c 	move	$r12,$r4
1c004194:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c004198:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00419c:	50003400 	b	52(0x34) # 1c0041d0 <Printf_KeyChannel+0x50>
1c0041a0:	2a7f7acd 	ld.hu	$r13,$r22,-34(0xfde)
1c0041a4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0041a8:	001831ac 	sra.w	$r12,$r13,$r12
1c0041ac:	0340058c 	andi	$r12,$r12,0x1
1c0041b0:	40001580 	beqz	$r12,20(0x14) # 1c0041c4 <Printf_KeyChannel+0x44>
1c0041b4:	28bfb2c5 	ld.w	$r5,$r22,-20(0xfec)
1c0041b8:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0041bc:	02805084 	addi.w	$r4,$r4,20(0x14)
1c0041c0:	57daefff 	bl	-9492(0xfffdaec) # 1c001cac <myprintf>
1c0041c4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0041c8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0041cc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0041d0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0041d4:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c0041d8:	6fffc98d 	bgeu	$r12,$r13,-56(0x3ffc8) # 1c0041a0 <Printf_KeyChannel+0x20>
1c0041dc:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0041e0:	02bfd084 	addi.w	$r4,$r4,-12(0xff4)
1c0041e4:	57dacbff 	bl	-9528(0xfffdac8) # 1c001cac <myprintf>
1c0041e8:	03400000 	andi	$r0,$r0,0x0
1c0041ec:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0041f0:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0041f4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0041f8:	4c000020 	jirl	$r0,$r1,0

1c0041fc <Printf_KeyType>:
Printf_KeyType():
1c0041fc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004200:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004204:	29806076 	st.w	$r22,$r3,24(0x18)
1c004208:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00420c:	0015008c 	move	$r12,$r4
1c004210:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004214:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004218:	0340058c 	andi	$r12,$r12,0x1
1c00421c:	40001180 	beqz	$r12,16(0x10) # 1c00422c <Printf_KeyType+0x30>
1c004220:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004224:	02bed084 	addi.w	$r4,$r4,-76(0xfb4)
1c004228:	57da87ff 	bl	-9596(0xfffda84) # 1c001cac <myprintf>
1c00422c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004230:	0340098c 	andi	$r12,$r12,0x2
1c004234:	40001180 	beqz	$r12,16(0x10) # 1c004244 <Printf_KeyType+0x48>
1c004238:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00423c:	02be9084 	addi.w	$r4,$r4,-92(0xfa4)
1c004240:	57da6fff 	bl	-9620(0xfffda6c) # 1c001cac <myprintf>
1c004244:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004248:	0340118c 	andi	$r12,$r12,0x4
1c00424c:	40001180 	beqz	$r12,16(0x10) # 1c00425c <Printf_KeyType+0x60>
1c004250:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004254:	02be5084 	addi.w	$r4,$r4,-108(0xf94)
1c004258:	57da57ff 	bl	-9644(0xfffda54) # 1c001cac <myprintf>
1c00425c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004260:	0340218c 	andi	$r12,$r12,0x8
1c004264:	40001180 	beqz	$r12,16(0x10) # 1c004274 <Printf_KeyType+0x78>
1c004268:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00426c:	02be2084 	addi.w	$r4,$r4,-120(0xf88)
1c004270:	57da3fff 	bl	-9668(0xfffda3c) # 1c001cac <myprintf>
1c004274:	03400000 	andi	$r0,$r0,0x0
1c004278:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00427c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004280:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004284:	4c000020 	jirl	$r0,$r1,0

1c004288 <Printf_KeyVal>:
Printf_KeyVal():
1c004288:	02bd4063 	addi.w	$r3,$r3,-176(0xf50)
1c00428c:	2982b061 	st.w	$r1,$r3,172(0xac)
1c004290:	2982a076 	st.w	$r22,$r3,168(0xa8)
1c004294:	0282c076 	addi.w	$r22,$r3,176(0xb0)
1c004298:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00429c:	5000d800 	b	216(0xd8) # 1c004374 <Printf_KeyVal+0xec>
1c0042a0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0042a4:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0042a8:	00150184 	move	$r4,$r12
1c0042ac:	57fe8bff 	bl	-376(0xffffe88) # 1c004134 <TOUCH_GetCountValue>
1c0042b0:	0015008c 	move	$r12,$r4
1c0042b4:	0015018d 	move	$r13,$r12
1c0042b8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0042bc:	0040898c 	slli.w	$r12,$r12,0x2
1c0042c0:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c0042c4:	001031cc 	add.w	$r12,$r14,$r12
1c0042c8:	29bdb18d 	st.w	$r13,$r12,-148(0xf6c)
1c0042cc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0042d0:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0042d4:	00150184 	move	$r4,$r12
1c0042d8:	57fe13ff 	bl	-496(0xffffe10) # 1c0040e8 <TOUCH_GetBaseVal>
1c0042dc:	0015008c 	move	$r12,$r4
1c0042e0:	0015018d 	move	$r13,$r12
1c0042e4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0042e8:	0040898c 	slli.w	$r12,$r12,0x2
1c0042ec:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c0042f0:	001031cc 	add.w	$r12,$r14,$r12
1c0042f4:	29be718d 	st.w	$r13,$r12,-100(0xf9c)
1c0042f8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0042fc:	0040898c 	slli.w	$r12,$r12,0x2
1c004300:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c004304:	001031ac 	add.w	$r12,$r13,$r12
1c004308:	28be718c 	ld.w	$r12,$r12,-100(0xf9c)
1c00430c:	40004980 	beqz	$r12,72(0x48) # 1c004354 <Printf_KeyVal+0xcc>
1c004310:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004314:	0040898c 	slli.w	$r12,$r12,0x2
1c004318:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c00431c:	001031ac 	add.w	$r12,$r13,$r12
1c004320:	28be718d 	ld.w	$r13,$r12,-100(0xf9c)
1c004324:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004328:	0040898c 	slli.w	$r12,$r12,0x2
1c00432c:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c004330:	001031cc 	add.w	$r12,$r14,$r12
1c004334:	28bdb18c 	ld.w	$r12,$r12,-148(0xf6c)
1c004338:	001131ad 	sub.w	$r13,$r13,$r12
1c00433c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004340:	0040898c 	slli.w	$r12,$r12,0x2
1c004344:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c004348:	001031cc 	add.w	$r12,$r14,$r12
1c00434c:	29bf318d 	st.w	$r13,$r12,-52(0xfcc)
1c004350:	50001800 	b	24(0x18) # 1c004368 <Printf_KeyVal+0xe0>
1c004354:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004358:	0040898c 	slli.w	$r12,$r12,0x2
1c00435c:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c004360:	001031ac 	add.w	$r12,$r13,$r12
1c004364:	29bf3180 	st.w	$r0,$r12,-52(0xfcc)
1c004368:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00436c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004370:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004374:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004378:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c00437c:	67ff258d 	bge	$r12,$r13,-220(0x3ff24) # 1c0042a0 <Printf_KeyVal+0x18>
1c004380:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004384:	02b9f084 	addi.w	$r4,$r4,-388(0xe7c)
1c004388:	57d927ff 	bl	-9948(0xfffd924) # 1c001cac <myprintf>
1c00438c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004390:	02ba6084 	addi.w	$r4,$r4,-360(0xe98)
1c004394:	57d91bff 	bl	-9960(0xfffd918) # 1c001cac <myprintf>
1c004398:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00439c:	50003400 	b	52(0x34) # 1c0043d0 <Printf_KeyVal+0x148>
1c0043a0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0043a4:	0040898c 	slli.w	$r12,$r12,0x2
1c0043a8:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c0043ac:	001031ac 	add.w	$r12,$r13,$r12
1c0043b0:	28bdb18c 	ld.w	$r12,$r12,-148(0xf6c)
1c0043b4:	00150185 	move	$r5,$r12
1c0043b8:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0043bc:	02b9d084 	addi.w	$r4,$r4,-396(0xe74)
1c0043c0:	57d8efff 	bl	-10004(0xfffd8ec) # 1c001cac <myprintf>
1c0043c4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0043c8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0043cc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0043d0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0043d4:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c0043d8:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c0043a0 <Printf_KeyVal+0x118>
1c0043dc:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0043e0:	02b96084 	addi.w	$r4,$r4,-424(0xe58)
1c0043e4:	57d8cbff 	bl	-10040(0xfffd8c8) # 1c001cac <myprintf>
1c0043e8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0043ec:	50003400 	b	52(0x34) # 1c004420 <Printf_KeyVal+0x198>
1c0043f0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0043f4:	0040898c 	slli.w	$r12,$r12,0x2
1c0043f8:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c0043fc:	001031ac 	add.w	$r12,$r13,$r12
1c004400:	28be718c 	ld.w	$r12,$r12,-100(0xf9c)
1c004404:	00150185 	move	$r5,$r12
1c004408:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00440c:	02b89084 	addi.w	$r4,$r4,-476(0xe24)
1c004410:	57d89fff 	bl	-10084(0xfffd89c) # 1c001cac <myprintf>
1c004414:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004418:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00441c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004420:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004424:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c004428:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c0043f0 <Printf_KeyVal+0x168>
1c00442c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004430:	02b85084 	addi.w	$r4,$r4,-492(0xe14)
1c004434:	57d87bff 	bl	-10120(0xfffd878) # 1c001cac <myprintf>
1c004438:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00443c:	50007400 	b	116(0x74) # 1c0044b0 <Printf_KeyVal+0x228>
1c004440:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004444:	0040898c 	slli.w	$r12,$r12,0x2
1c004448:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c00444c:	001031ac 	add.w	$r12,$r13,$r12
1c004450:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c004454:	64002d80 	bge	$r12,$r0,44(0x2c) # 1c004480 <Printf_KeyVal+0x1f8>
1c004458:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00445c:	0040898c 	slli.w	$r12,$r12,0x2
1c004460:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c004464:	001031ac 	add.w	$r12,$r13,$r12
1c004468:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c00446c:	00150185 	move	$r5,$r12
1c004470:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004474:	02b77084 	addi.w	$r4,$r4,-548(0xddc)
1c004478:	57d837ff 	bl	-10188(0xfffd834) # 1c001cac <myprintf>
1c00447c:	50002800 	b	40(0x28) # 1c0044a4 <Printf_KeyVal+0x21c>
1c004480:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004484:	0040898c 	slli.w	$r12,$r12,0x2
1c004488:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c00448c:	001031ac 	add.w	$r12,$r13,$r12
1c004490:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c004494:	00150185 	move	$r5,$r12
1c004498:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00449c:	02b6f084 	addi.w	$r4,$r4,-580(0xdbc)
1c0044a0:	57d80fff 	bl	-10228(0xfffd80c) # 1c001cac <myprintf>
1c0044a4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0044a8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0044ac:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0044b0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0044b4:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c0044b8:	67ff898d 	bge	$r12,$r13,-120(0x3ff88) # 1c004440 <Printf_KeyVal+0x1b8>
1c0044bc:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0044c0:	02b45084 	addi.w	$r4,$r4,-748(0xd14)
1c0044c4:	57d7ebff 	bl	-10264(0xfffd7e8) # 1c001cac <myprintf>
1c0044c8:	03400000 	andi	$r0,$r0,0x0
1c0044cc:	2882b061 	ld.w	$r1,$r3,172(0xac)
1c0044d0:	2882a076 	ld.w	$r22,$r3,168(0xa8)
1c0044d4:	0282c063 	addi.w	$r3,$r3,176(0xb0)
1c0044d8:	4c000020 	jirl	$r0,$r1,0

1c0044dc <TIM_GetITStatus>:
TIM_GetITStatus():
1c0044dc:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0044e0:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0044e4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0044e8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0044ec:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0044f0:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c0044f4:	2880018d 	ld.w	$r13,$r12,0
1c0044f8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0044fc:	0014b1ac 	and	$r12,$r13,$r12
1c004500:	40001180 	beqz	$r12,16(0x10) # 1c004510 <TIM_GetITStatus+0x34>
1c004504:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004508:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00450c:	50000800 	b	8(0x8) # 1c004514 <TIM_GetITStatus+0x38>
1c004510:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004514:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004518:	00150184 	move	$r4,$r12
1c00451c:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c004520:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c004524:	4c000020 	jirl	$r0,$r1,0

1c004528 <TIM_ClearIT>:
TIM_ClearIT():
1c004528:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00452c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c004530:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004534:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c004538:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c00453c:	2880018e 	ld.w	$r14,$r12,0
1c004540:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c004544:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004548:	001535cd 	or	$r13,$r14,$r13
1c00454c:	2980018d 	st.w	$r13,$r12,0
1c004550:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004554:	03800d8c 	ori	$r12,$r12,0x3
1c004558:	2a00018c 	ld.bu	$r12,$r12,0
1c00455c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c004560:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004564:	03800d8c 	ori	$r12,$r12,0x3
1c004568:	038005ad 	ori	$r13,$r13,0x1
1c00456c:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c004570:	2900018d 	st.b	$r13,$r12,0
1c004574:	03400000 	andi	$r0,$r0,0x0
1c004578:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c00457c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004580:	4c000020 	jirl	$r0,$r1,0

1c004584 <exti_gpioa0_irq_handler>:
exti_gpioa0_irq_handler():
1c004584:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004588:	29803061 	st.w	$r1,$r3,12(0xc)
1c00458c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004590:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004594:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004598:	02b8f0c6 	addi.w	$r6,$r6,-452(0xe3c)
1c00459c:	02804c05 	addi.w	$r5,$r0,19(0x13)
1c0045a0:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0045a4:	02b2f084 	addi.w	$r4,$r4,-836(0xcbc)
1c0045a8:	57d707ff 	bl	-10492(0xfffd704) # 1c001cac <myprintf>
1c0045ac:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0045b0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0045b4:	03808184 	ori	$r4,$r12,0x20
1c0045b8:	57f103ff 	bl	-3840(0xffff100) # 1c0036b8 <EXTI_ClearITPendingBit>
1c0045bc:	03400000 	andi	$r0,$r0,0x0
1c0045c0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0045c4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0045c8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0045cc:	4c000020 	jirl	$r0,$r1,0

1c0045d0 <exti_gpioa1_irq_handler>:
exti_gpioa1_irq_handler():
1c0045d0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0045d4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0045d8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0045dc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0045e0:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0045e4:	02b820c6 	addi.w	$r6,$r6,-504(0xe08)
1c0045e8:	02806005 	addi.w	$r5,$r0,24(0x18)
1c0045ec:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0045f0:	02b1c084 	addi.w	$r4,$r4,-912(0xc70)
1c0045f4:	57d6bbff 	bl	-10568(0xfffd6b8) # 1c001cac <myprintf>
1c0045f8:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0045fc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004600:	03808184 	ori	$r4,$r12,0x20
1c004604:	57f0b7ff 	bl	-3916(0xffff0b4) # 1c0036b8 <EXTI_ClearITPendingBit>
1c004608:	03400000 	andi	$r0,$r0,0x0
1c00460c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004610:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004614:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004618:	4c000020 	jirl	$r0,$r1,0

1c00461c <exti_gpioa2_irq_handler>:
exti_gpioa2_irq_handler():
1c00461c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004620:	29803061 	st.w	$r1,$r3,12(0xc)
1c004624:	29802076 	st.w	$r22,$r3,8(0x8)
1c004628:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00462c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004630:	02b750c6 	addi.w	$r6,$r6,-556(0xdd4)
1c004634:	02807405 	addi.w	$r5,$r0,29(0x1d)
1c004638:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00463c:	02b09084 	addi.w	$r4,$r4,-988(0xc24)
1c004640:	57d66fff 	bl	-10644(0xfffd66c) # 1c001cac <myprintf>
1c004644:	02801005 	addi.w	$r5,$r0,4(0x4)
1c004648:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00464c:	03808184 	ori	$r4,$r12,0x20
1c004650:	57f06bff 	bl	-3992(0xffff068) # 1c0036b8 <EXTI_ClearITPendingBit>
1c004654:	03400000 	andi	$r0,$r0,0x0
1c004658:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00465c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004660:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004664:	4c000020 	jirl	$r0,$r1,0

1c004668 <exti_gpioa3_irq_handler>:
exti_gpioa3_irq_handler():
1c004668:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00466c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004670:	29802076 	st.w	$r22,$r3,8(0x8)
1c004674:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004678:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00467c:	02b680c6 	addi.w	$r6,$r6,-608(0xda0)
1c004680:	02808805 	addi.w	$r5,$r0,34(0x22)
1c004684:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004688:	02af6084 	addi.w	$r4,$r4,-1064(0xbd8)
1c00468c:	57d623ff 	bl	-10720(0xfffd620) # 1c001cac <myprintf>
1c004690:	02802005 	addi.w	$r5,$r0,8(0x8)
1c004694:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004698:	03808184 	ori	$r4,$r12,0x20
1c00469c:	57f01fff 	bl	-4068(0xffff01c) # 1c0036b8 <EXTI_ClearITPendingBit>
1c0046a0:	03400000 	andi	$r0,$r0,0x0
1c0046a4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0046a8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0046ac:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0046b0:	4c000020 	jirl	$r0,$r1,0

1c0046b4 <exti_gpioa4_irq_handler>:
exti_gpioa4_irq_handler():
1c0046b4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0046b8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0046bc:	29802076 	st.w	$r22,$r3,8(0x8)
1c0046c0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0046c4:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0046c8:	02b5b0c6 	addi.w	$r6,$r6,-660(0xd6c)
1c0046cc:	02809c05 	addi.w	$r5,$r0,39(0x27)
1c0046d0:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0046d4:	02ae3084 	addi.w	$r4,$r4,-1140(0xb8c)
1c0046d8:	57d5d7ff 	bl	-10796(0xfffd5d4) # 1c001cac <myprintf>
1c0046dc:	02804005 	addi.w	$r5,$r0,16(0x10)
1c0046e0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0046e4:	03808184 	ori	$r4,$r12,0x20
1c0046e8:	57efd3ff 	bl	-4144(0xfffefd0) # 1c0036b8 <EXTI_ClearITPendingBit>
1c0046ec:	03400000 	andi	$r0,$r0,0x0
1c0046f0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0046f4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0046f8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0046fc:	4c000020 	jirl	$r0,$r1,0

1c004700 <exti_gpioa5_irq_handler>:
exti_gpioa5_irq_handler():
1c004700:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004704:	29803061 	st.w	$r1,$r3,12(0xc)
1c004708:	29802076 	st.w	$r22,$r3,8(0x8)
1c00470c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004710:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004714:	02b4e0c6 	addi.w	$r6,$r6,-712(0xd38)
1c004718:	0280b005 	addi.w	$r5,$r0,44(0x2c)
1c00471c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004720:	02ad0084 	addi.w	$r4,$r4,-1216(0xb40)
1c004724:	57d58bff 	bl	-10872(0xfffd588) # 1c001cac <myprintf>
1c004728:	02808005 	addi.w	$r5,$r0,32(0x20)
1c00472c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004730:	03808184 	ori	$r4,$r12,0x20
1c004734:	57ef87ff 	bl	-4220(0xfffef84) # 1c0036b8 <EXTI_ClearITPendingBit>
1c004738:	03400000 	andi	$r0,$r0,0x0
1c00473c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004740:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004744:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004748:	4c000020 	jirl	$r0,$r1,0

1c00474c <exti_gpioa6_irq_handler>:
exti_gpioa6_irq_handler():
1c00474c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004750:	29803061 	st.w	$r1,$r3,12(0xc)
1c004754:	29802076 	st.w	$r22,$r3,8(0x8)
1c004758:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00475c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004760:	02b410c6 	addi.w	$r6,$r6,-764(0xd04)
1c004764:	0280c405 	addi.w	$r5,$r0,49(0x31)
1c004768:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00476c:	02abd084 	addi.w	$r4,$r4,-1292(0xaf4)
1c004770:	57d53fff 	bl	-10948(0xfffd53c) # 1c001cac <myprintf>
1c004774:	02810005 	addi.w	$r5,$r0,64(0x40)
1c004778:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00477c:	03808184 	ori	$r4,$r12,0x20
1c004780:	57ef3bff 	bl	-4296(0xfffef38) # 1c0036b8 <EXTI_ClearITPendingBit>
1c004784:	03400000 	andi	$r0,$r0,0x0
1c004788:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00478c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004790:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004794:	4c000020 	jirl	$r0,$r1,0

1c004798 <exti_gpioa7_irq_handler>:
exti_gpioa7_irq_handler():
1c004798:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00479c:	29803061 	st.w	$r1,$r3,12(0xc)
1c0047a0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0047a4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0047a8:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0047ac:	02b340c6 	addi.w	$r6,$r6,-816(0xcd0)
1c0047b0:	0280d805 	addi.w	$r5,$r0,54(0x36)
1c0047b4:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0047b8:	02aaa084 	addi.w	$r4,$r4,-1368(0xaa8)
1c0047bc:	57d4f3ff 	bl	-11024(0xfffd4f0) # 1c001cac <myprintf>
1c0047c0:	02820005 	addi.w	$r5,$r0,128(0x80)
1c0047c4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0047c8:	03808184 	ori	$r4,$r12,0x20
1c0047cc:	57eeefff 	bl	-4372(0xfffeeec) # 1c0036b8 <EXTI_ClearITPendingBit>
1c0047d0:	03400000 	andi	$r0,$r0,0x0
1c0047d4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0047d8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0047dc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0047e0:	4c000020 	jirl	$r0,$r1,0

1c0047e4 <exti_gpiob0_irq_handler>:
exti_gpiob0_irq_handler():
1c0047e4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0047e8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0047ec:	29802076 	st.w	$r22,$r3,8(0x8)
1c0047f0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0047f4:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0047f8:	02b270c6 	addi.w	$r6,$r6,-868(0xc9c)
1c0047fc:	0280ec05 	addi.w	$r5,$r0,59(0x3b)
1c004800:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004804:	02a97084 	addi.w	$r4,$r4,-1444(0xa5c)
1c004808:	57d4a7ff 	bl	-11100(0xfffd4a4) # 1c001cac <myprintf>
1c00480c:	02840005 	addi.w	$r5,$r0,256(0x100)
1c004810:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004814:	03808184 	ori	$r4,$r12,0x20
1c004818:	57eea3ff 	bl	-4448(0xfffeea0) # 1c0036b8 <EXTI_ClearITPendingBit>
1c00481c:	03400000 	andi	$r0,$r0,0x0
1c004820:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004824:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004828:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00482c:	4c000020 	jirl	$r0,$r1,0

1c004830 <exti_gpiob1_irq_handler>:
exti_gpiob1_irq_handler():
1c004830:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004834:	29803061 	st.w	$r1,$r3,12(0xc)
1c004838:	29802076 	st.w	$r22,$r3,8(0x8)
1c00483c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004840:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004844:	02b1a0c6 	addi.w	$r6,$r6,-920(0xc68)
1c004848:	02810005 	addi.w	$r5,$r0,64(0x40)
1c00484c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004850:	02a84084 	addi.w	$r4,$r4,-1520(0xa10)
1c004854:	57d45bff 	bl	-11176(0xfffd458) # 1c001cac <myprintf>
1c004858:	02880005 	addi.w	$r5,$r0,512(0x200)
1c00485c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004860:	03808184 	ori	$r4,$r12,0x20
1c004864:	57ee57ff 	bl	-4524(0xfffee54) # 1c0036b8 <EXTI_ClearITPendingBit>
1c004868:	03400000 	andi	$r0,$r0,0x0
1c00486c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004870:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004874:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004878:	4c000020 	jirl	$r0,$r1,0

1c00487c <exti_gpiob2_irq_handler>:
exti_gpiob2_irq_handler():
1c00487c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004880:	29803061 	st.w	$r1,$r3,12(0xc)
1c004884:	29802076 	st.w	$r22,$r3,8(0x8)
1c004888:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00488c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004890:	02b0d0c6 	addi.w	$r6,$r6,-972(0xc34)
1c004894:	02811405 	addi.w	$r5,$r0,69(0x45)
1c004898:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00489c:	02a71084 	addi.w	$r4,$r4,-1596(0x9c4)
1c0048a0:	57d40fff 	bl	-11252(0xfffd40c) # 1c001cac <myprintf>
1c0048a4:	02900005 	addi.w	$r5,$r0,1024(0x400)
1c0048a8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0048ac:	03808184 	ori	$r4,$r12,0x20
1c0048b0:	57ee0bff 	bl	-4600(0xfffee08) # 1c0036b8 <EXTI_ClearITPendingBit>
1c0048b4:	03400000 	andi	$r0,$r0,0x0
1c0048b8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0048bc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0048c0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0048c4:	4c000020 	jirl	$r0,$r1,0

1c0048c8 <exti_gpiob3_irq_handler>:
exti_gpiob3_irq_handler():
1c0048c8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0048cc:	29803061 	st.w	$r1,$r3,12(0xc)
1c0048d0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0048d4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0048d8:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0048dc:	02b000c6 	addi.w	$r6,$r6,-1024(0xc00)
1c0048e0:	02812805 	addi.w	$r5,$r0,74(0x4a)
1c0048e4:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0048e8:	02a5e084 	addi.w	$r4,$r4,-1672(0x978)
1c0048ec:	57d3c3ff 	bl	-11328(0xfffd3c0) # 1c001cac <myprintf>
1c0048f0:	03a00005 	ori	$r5,$r0,0x800
1c0048f4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0048f8:	03808184 	ori	$r4,$r12,0x20
1c0048fc:	57edbfff 	bl	-4676(0xfffedbc) # 1c0036b8 <EXTI_ClearITPendingBit>
1c004900:	03400000 	andi	$r0,$r0,0x0
1c004904:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004908:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00490c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004910:	4c000020 	jirl	$r0,$r1,0

1c004914 <exti_gpiob4_irq_handler>:
exti_gpiob4_irq_handler():
1c004914:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004918:	29803061 	st.w	$r1,$r3,12(0xc)
1c00491c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004920:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004924:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004928:	02af30c6 	addi.w	$r6,$r6,-1076(0xbcc)
1c00492c:	02813c05 	addi.w	$r5,$r0,79(0x4f)
1c004930:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004934:	02a4b084 	addi.w	$r4,$r4,-1748(0x92c)
1c004938:	57d377ff 	bl	-11404(0xfffd374) # 1c001cac <myprintf>
1c00493c:	14000025 	lu12i.w	$r5,1(0x1)
1c004940:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004944:	03808184 	ori	$r4,$r12,0x20
1c004948:	57ed73ff 	bl	-4752(0xfffed70) # 1c0036b8 <EXTI_ClearITPendingBit>
1c00494c:	03400000 	andi	$r0,$r0,0x0
1c004950:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004954:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004958:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00495c:	4c000020 	jirl	$r0,$r1,0

1c004960 <exti_gpiob5_irq_handler>:
exti_gpiob5_irq_handler():
1c004960:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004964:	29803061 	st.w	$r1,$r3,12(0xc)
1c004968:	29802076 	st.w	$r22,$r3,8(0x8)
1c00496c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004970:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004974:	02ae60c6 	addi.w	$r6,$r6,-1128(0xb98)
1c004978:	02815005 	addi.w	$r5,$r0,84(0x54)
1c00497c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004980:	02a38084 	addi.w	$r4,$r4,-1824(0x8e0)
1c004984:	57d32bff 	bl	-11480(0xfffd328) # 1c001cac <myprintf>
1c004988:	14000045 	lu12i.w	$r5,2(0x2)
1c00498c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004990:	03808184 	ori	$r4,$r12,0x20
1c004994:	57ed27ff 	bl	-4828(0xfffed24) # 1c0036b8 <EXTI_ClearITPendingBit>
1c004998:	03400000 	andi	$r0,$r0,0x0
1c00499c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0049a0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0049a4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0049a8:	4c000020 	jirl	$r0,$r1,0

1c0049ac <exti_gpiob6_irq_handler>:
exti_gpiob6_irq_handler():
1c0049ac:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0049b0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0049b4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0049b8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0049bc:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0049c0:	02ad90c6 	addi.w	$r6,$r6,-1180(0xb64)
1c0049c4:	02816405 	addi.w	$r5,$r0,89(0x59)
1c0049c8:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0049cc:	02a25084 	addi.w	$r4,$r4,-1900(0x894)
1c0049d0:	57d2dfff 	bl	-11556(0xfffd2dc) # 1c001cac <myprintf>
1c0049d4:	14000085 	lu12i.w	$r5,4(0x4)
1c0049d8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0049dc:	03808184 	ori	$r4,$r12,0x20
1c0049e0:	57ecdbff 	bl	-4904(0xfffecd8) # 1c0036b8 <EXTI_ClearITPendingBit>
1c0049e4:	03400000 	andi	$r0,$r0,0x0
1c0049e8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0049ec:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0049f0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0049f4:	4c000020 	jirl	$r0,$r1,0

1c0049f8 <exti_gpiob7_irq_handler>:
exti_gpiob7_irq_handler():
1c0049f8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0049fc:	29803061 	st.w	$r1,$r3,12(0xc)
1c004a00:	29802076 	st.w	$r22,$r3,8(0x8)
1c004a04:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004a08:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004a0c:	02acc0c6 	addi.w	$r6,$r6,-1232(0xb30)
1c004a10:	02817805 	addi.w	$r5,$r0,94(0x5e)
1c004a14:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004a18:	02a12084 	addi.w	$r4,$r4,-1976(0x848)
1c004a1c:	57d293ff 	bl	-11632(0xfffd290) # 1c001cac <myprintf>
1c004a20:	14000105 	lu12i.w	$r5,8(0x8)
1c004a24:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004a28:	03808184 	ori	$r4,$r12,0x20
1c004a2c:	57ec8fff 	bl	-4980(0xfffec8c) # 1c0036b8 <EXTI_ClearITPendingBit>
1c004a30:	03400000 	andi	$r0,$r0,0x0
1c004a34:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004a38:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004a3c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004a40:	4c000020 	jirl	$r0,$r1,0

1c004a44 <exti_gpioc0_irq_handler>:
exti_gpioc0_irq_handler():
1c004a44:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004a48:	29803061 	st.w	$r1,$r3,12(0xc)
1c004a4c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004a50:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004a54:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004a58:	02abf0c6 	addi.w	$r6,$r6,-1284(0xafc)
1c004a5c:	02819005 	addi.w	$r5,$r0,100(0x64)
1c004a60:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004a64:	029ff084 	addi.w	$r4,$r4,2044(0x7fc)
1c004a68:	57d247ff 	bl	-11708(0xfffd244) # 1c001cac <myprintf>
1c004a6c:	14000205 	lu12i.w	$r5,16(0x10)
1c004a70:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004a74:	03808184 	ori	$r4,$r12,0x20
1c004a78:	57ec43ff 	bl	-5056(0xfffec40) # 1c0036b8 <EXTI_ClearITPendingBit>
1c004a7c:	03400000 	andi	$r0,$r0,0x0
1c004a80:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004a84:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004a88:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004a8c:	4c000020 	jirl	$r0,$r1,0

1c004a90 <exti_gpioc1_irq_handler>:
exti_gpioc1_irq_handler():
1c004a90:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004a94:	29803061 	st.w	$r1,$r3,12(0xc)
1c004a98:	29802076 	st.w	$r22,$r3,8(0x8)
1c004a9c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004aa0:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004aa4:	02ab20c6 	addi.w	$r6,$r6,-1336(0xac8)
1c004aa8:	0281a405 	addi.w	$r5,$r0,105(0x69)
1c004aac:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004ab0:	029ec084 	addi.w	$r4,$r4,1968(0x7b0)
1c004ab4:	57d1fbff 	bl	-11784(0xfffd1f8) # 1c001cac <myprintf>
1c004ab8:	14000405 	lu12i.w	$r5,32(0x20)
1c004abc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004ac0:	03808184 	ori	$r4,$r12,0x20
1c004ac4:	57ebf7ff 	bl	-5132(0xfffebf4) # 1c0036b8 <EXTI_ClearITPendingBit>
1c004ac8:	03400000 	andi	$r0,$r0,0x0
1c004acc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004ad0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004ad4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004ad8:	4c000020 	jirl	$r0,$r1,0

1c004adc <exti_gpioc2_irq_handler>:
exti_gpioc2_irq_handler():
1c004adc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004ae0:	29803061 	st.w	$r1,$r3,12(0xc)
1c004ae4:	29802076 	st.w	$r22,$r3,8(0x8)
1c004ae8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004aec:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004af0:	02aa50c6 	addi.w	$r6,$r6,-1388(0xa94)
1c004af4:	0281b805 	addi.w	$r5,$r0,110(0x6e)
1c004af8:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004afc:	029d9084 	addi.w	$r4,$r4,1892(0x764)
1c004b00:	57d1afff 	bl	-11860(0xfffd1ac) # 1c001cac <myprintf>
1c004b04:	14000805 	lu12i.w	$r5,64(0x40)
1c004b08:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004b0c:	03808184 	ori	$r4,$r12,0x20
1c004b10:	57ebabff 	bl	-5208(0xfffeba8) # 1c0036b8 <EXTI_ClearITPendingBit>
1c004b14:	03400000 	andi	$r0,$r0,0x0
1c004b18:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004b1c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004b20:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004b24:	4c000020 	jirl	$r0,$r1,0

1c004b28 <exti_gpioc3_irq_handler>:
exti_gpioc3_irq_handler():
1c004b28:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004b2c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004b30:	29802076 	st.w	$r22,$r3,8(0x8)
1c004b34:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004b38:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004b3c:	02a980c6 	addi.w	$r6,$r6,-1440(0xa60)
1c004b40:	0281cc05 	addi.w	$r5,$r0,115(0x73)
1c004b44:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004b48:	029c6084 	addi.w	$r4,$r4,1816(0x718)
1c004b4c:	57d163ff 	bl	-11936(0xfffd160) # 1c001cac <myprintf>
1c004b50:	14001005 	lu12i.w	$r5,128(0x80)
1c004b54:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004b58:	03808184 	ori	$r4,$r12,0x20
1c004b5c:	57eb5fff 	bl	-5284(0xfffeb5c) # 1c0036b8 <EXTI_ClearITPendingBit>
1c004b60:	03400000 	andi	$r0,$r0,0x0
1c004b64:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004b68:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004b6c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004b70:	4c000020 	jirl	$r0,$r1,0

1c004b74 <exti_gpioc4_irq_handler>:
exti_gpioc4_irq_handler():
1c004b74:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004b78:	29803061 	st.w	$r1,$r3,12(0xc)
1c004b7c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004b80:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004b84:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004b88:	02a8b0c6 	addi.w	$r6,$r6,-1492(0xa2c)
1c004b8c:	0281e005 	addi.w	$r5,$r0,120(0x78)
1c004b90:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004b94:	029b3084 	addi.w	$r4,$r4,1740(0x6cc)
1c004b98:	57d117ff 	bl	-12012(0xfffd114) # 1c001cac <myprintf>
1c004b9c:	14002005 	lu12i.w	$r5,256(0x100)
1c004ba0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004ba4:	03808184 	ori	$r4,$r12,0x20
1c004ba8:	57eb13ff 	bl	-5360(0xfffeb10) # 1c0036b8 <EXTI_ClearITPendingBit>
1c004bac:	03400000 	andi	$r0,$r0,0x0
1c004bb0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004bb4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004bb8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004bbc:	4c000020 	jirl	$r0,$r1,0

1c004bc0 <exti_gpioc5_irq_handler>:
exti_gpioc5_irq_handler():
1c004bc0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004bc4:	29803061 	st.w	$r1,$r3,12(0xc)
1c004bc8:	29802076 	st.w	$r22,$r3,8(0x8)
1c004bcc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004bd0:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004bd4:	02a7e0c6 	addi.w	$r6,$r6,-1544(0x9f8)
1c004bd8:	0281f405 	addi.w	$r5,$r0,125(0x7d)
1c004bdc:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004be0:	029a0084 	addi.w	$r4,$r4,1664(0x680)
1c004be4:	57d0cbff 	bl	-12088(0xfffd0c8) # 1c001cac <myprintf>
1c004be8:	14004005 	lu12i.w	$r5,512(0x200)
1c004bec:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004bf0:	03808184 	ori	$r4,$r12,0x20
1c004bf4:	57eac7ff 	bl	-5436(0xfffeac4) # 1c0036b8 <EXTI_ClearITPendingBit>
1c004bf8:	03400000 	andi	$r0,$r0,0x0
1c004bfc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004c00:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004c04:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004c08:	4c000020 	jirl	$r0,$r1,0

1c004c0c <exti_gpioc6_irq_handler>:
exti_gpioc6_irq_handler():
1c004c0c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004c10:	29803061 	st.w	$r1,$r3,12(0xc)
1c004c14:	29802076 	st.w	$r22,$r3,8(0x8)
1c004c18:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004c1c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004c20:	02a710c6 	addi.w	$r6,$r6,-1596(0x9c4)
1c004c24:	02820805 	addi.w	$r5,$r0,130(0x82)
1c004c28:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004c2c:	0298d084 	addi.w	$r4,$r4,1588(0x634)
1c004c30:	57d07fff 	bl	-12164(0xfffd07c) # 1c001cac <myprintf>
1c004c34:	14008005 	lu12i.w	$r5,1024(0x400)
1c004c38:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004c3c:	03808184 	ori	$r4,$r12,0x20
1c004c40:	57ea7bff 	bl	-5512(0xfffea78) # 1c0036b8 <EXTI_ClearITPendingBit>
1c004c44:	03400000 	andi	$r0,$r0,0x0
1c004c48:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004c4c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004c50:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004c54:	4c000020 	jirl	$r0,$r1,0

1c004c58 <exti_gpioc7_irq_handler>:
exti_gpioc7_irq_handler():
1c004c58:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004c5c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004c60:	29802076 	st.w	$r22,$r3,8(0x8)
1c004c64:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004c68:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004c6c:	02a640c6 	addi.w	$r6,$r6,-1648(0x990)
1c004c70:	02821c05 	addi.w	$r5,$r0,135(0x87)
1c004c74:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004c78:	0297a084 	addi.w	$r4,$r4,1512(0x5e8)
1c004c7c:	57d033ff 	bl	-12240(0xfffd030) # 1c001cac <myprintf>
1c004c80:	14010005 	lu12i.w	$r5,2048(0x800)
1c004c84:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004c88:	03808184 	ori	$r4,$r12,0x20
1c004c8c:	57ea2fff 	bl	-5588(0xfffea2c) # 1c0036b8 <EXTI_ClearITPendingBit>
1c004c90:	03400000 	andi	$r0,$r0,0x0
1c004c94:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004c98:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004c9c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004ca0:	4c000020 	jirl	$r0,$r1,0

1c004ca4 <exti_gpiod0_irq_handler>:
exti_gpiod0_irq_handler():
1c004ca4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004ca8:	29803061 	st.w	$r1,$r3,12(0xc)
1c004cac:	29802076 	st.w	$r22,$r3,8(0x8)
1c004cb0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004cb4:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004cb8:	02a570c6 	addi.w	$r6,$r6,-1700(0x95c)
1c004cbc:	02823005 	addi.w	$r5,$r0,140(0x8c)
1c004cc0:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004cc4:	02967084 	addi.w	$r4,$r4,1436(0x59c)
1c004cc8:	57cfe7ff 	bl	-12316(0xfffcfe4) # 1c001cac <myprintf>
1c004ccc:	14020005 	lu12i.w	$r5,4096(0x1000)
1c004cd0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004cd4:	03808184 	ori	$r4,$r12,0x20
1c004cd8:	57e9e3ff 	bl	-5664(0xfffe9e0) # 1c0036b8 <EXTI_ClearITPendingBit>
1c004cdc:	03400000 	andi	$r0,$r0,0x0
1c004ce0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004ce4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004ce8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004cec:	4c000020 	jirl	$r0,$r1,0

1c004cf0 <exti_gpiod1_irq_handler>:
exti_gpiod1_irq_handler():
1c004cf0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004cf4:	29803061 	st.w	$r1,$r3,12(0xc)
1c004cf8:	29802076 	st.w	$r22,$r3,8(0x8)
1c004cfc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004d00:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004d04:	02a4a0c6 	addi.w	$r6,$r6,-1752(0x928)
1c004d08:	02824405 	addi.w	$r5,$r0,145(0x91)
1c004d0c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004d10:	02954084 	addi.w	$r4,$r4,1360(0x550)
1c004d14:	57cf9bff 	bl	-12392(0xfffcf98) # 1c001cac <myprintf>
1c004d18:	14040005 	lu12i.w	$r5,8192(0x2000)
1c004d1c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004d20:	03808184 	ori	$r4,$r12,0x20
1c004d24:	57e997ff 	bl	-5740(0xfffe994) # 1c0036b8 <EXTI_ClearITPendingBit>
1c004d28:	03400000 	andi	$r0,$r0,0x0
1c004d2c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004d30:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004d34:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004d38:	4c000020 	jirl	$r0,$r1,0

1c004d3c <exti_gpiod2_irq_handler>:
exti_gpiod2_irq_handler():
1c004d3c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004d40:	29803061 	st.w	$r1,$r3,12(0xc)
1c004d44:	29802076 	st.w	$r22,$r3,8(0x8)
1c004d48:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004d4c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004d50:	02a3d0c6 	addi.w	$r6,$r6,-1804(0x8f4)
1c004d54:	02825805 	addi.w	$r5,$r0,150(0x96)
1c004d58:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004d5c:	02941084 	addi.w	$r4,$r4,1284(0x504)
1c004d60:	57cf4fff 	bl	-12468(0xfffcf4c) # 1c001cac <myprintf>
1c004d64:	14080005 	lu12i.w	$r5,16384(0x4000)
1c004d68:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004d6c:	03808184 	ori	$r4,$r12,0x20
1c004d70:	57e94bff 	bl	-5816(0xfffe948) # 1c0036b8 <EXTI_ClearITPendingBit>
1c004d74:	03400000 	andi	$r0,$r0,0x0
1c004d78:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004d7c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004d80:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004d84:	4c000020 	jirl	$r0,$r1,0

1c004d88 <exti_gpiod3_irq_handler>:
exti_gpiod3_irq_handler():
1c004d88:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004d8c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004d90:	29802076 	st.w	$r22,$r3,8(0x8)
1c004d94:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004d98:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004d9c:	02a300c6 	addi.w	$r6,$r6,-1856(0x8c0)
1c004da0:	02826c05 	addi.w	$r5,$r0,155(0x9b)
1c004da4:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004da8:	0292e084 	addi.w	$r4,$r4,1208(0x4b8)
1c004dac:	57cf03ff 	bl	-12544(0xfffcf00) # 1c001cac <myprintf>
1c004db0:	14100005 	lu12i.w	$r5,32768(0x8000)
1c004db4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004db8:	03808184 	ori	$r4,$r12,0x20
1c004dbc:	57e8ffff 	bl	-5892(0xfffe8fc) # 1c0036b8 <EXTI_ClearITPendingBit>
1c004dc0:	03400000 	andi	$r0,$r0,0x0
1c004dc4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004dc8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004dcc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004dd0:	4c000020 	jirl	$r0,$r1,0

1c004dd4 <exti_gpiod4_irq_handler>:
exti_gpiod4_irq_handler():
1c004dd4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004dd8:	29803061 	st.w	$r1,$r3,12(0xc)
1c004ddc:	29802076 	st.w	$r22,$r3,8(0x8)
1c004de0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004de4:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004de8:	02a230c6 	addi.w	$r6,$r6,-1908(0x88c)
1c004dec:	02828005 	addi.w	$r5,$r0,160(0xa0)
1c004df0:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004df4:	0291b084 	addi.w	$r4,$r4,1132(0x46c)
1c004df8:	57ceb7ff 	bl	-12620(0xfffceb4) # 1c001cac <myprintf>
1c004dfc:	14200005 	lu12i.w	$r5,65536(0x10000)
1c004e00:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004e04:	03808184 	ori	$r4,$r12,0x20
1c004e08:	57e8b3ff 	bl	-5968(0xfffe8b0) # 1c0036b8 <EXTI_ClearITPendingBit>
1c004e0c:	03400000 	andi	$r0,$r0,0x0
1c004e10:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004e14:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004e18:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004e1c:	4c000020 	jirl	$r0,$r1,0

1c004e20 <exti_gpiod5_irq_handler>:
exti_gpiod5_irq_handler():
1c004e20:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004e24:	29803061 	st.w	$r1,$r3,12(0xc)
1c004e28:	29802076 	st.w	$r22,$r3,8(0x8)
1c004e2c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004e30:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004e34:	02a160c6 	addi.w	$r6,$r6,-1960(0x858)
1c004e38:	02829805 	addi.w	$r5,$r0,166(0xa6)
1c004e3c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004e40:	02908084 	addi.w	$r4,$r4,1056(0x420)
1c004e44:	57ce6bff 	bl	-12696(0xfffce68) # 1c001cac <myprintf>
1c004e48:	14400005 	lu12i.w	$r5,131072(0x20000)
1c004e4c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004e50:	03808184 	ori	$r4,$r12,0x20
1c004e54:	57e867ff 	bl	-6044(0xfffe864) # 1c0036b8 <EXTI_ClearITPendingBit>
1c004e58:	03400000 	andi	$r0,$r0,0x0
1c004e5c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004e60:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004e64:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004e68:	4c000020 	jirl	$r0,$r1,0

1c004e6c <exti_gpiod6_irq_handler>:
exti_gpiod6_irq_handler():
1c004e6c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004e70:	29803061 	st.w	$r1,$r3,12(0xc)
1c004e74:	29802076 	st.w	$r22,$r3,8(0x8)
1c004e78:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004e7c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004e80:	02a090c6 	addi.w	$r6,$r6,-2012(0x824)
1c004e84:	0282ac05 	addi.w	$r5,$r0,171(0xab)
1c004e88:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004e8c:	028f5084 	addi.w	$r4,$r4,980(0x3d4)
1c004e90:	57ce1fff 	bl	-12772(0xfffce1c) # 1c001cac <myprintf>
1c004e94:	14800005 	lu12i.w	$r5,262144(0x40000)
1c004e98:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004e9c:	03808184 	ori	$r4,$r12,0x20
1c004ea0:	57e81bff 	bl	-6120(0xfffe818) # 1c0036b8 <EXTI_ClearITPendingBit>
1c004ea4:	03400000 	andi	$r0,$r0,0x0
1c004ea8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004eac:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004eb0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004eb4:	4c000020 	jirl	$r0,$r1,0

1c004eb8 <exti_gpiod7_irq_handler>:
exti_gpiod7_irq_handler():
1c004eb8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004ebc:	29803061 	st.w	$r1,$r3,12(0xc)
1c004ec0:	29802076 	st.w	$r22,$r3,8(0x8)
1c004ec4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004ec8:	1c000026 	pcaddu12i	$r6,1(0x1)
1c004ecc:	029fc0c6 	addi.w	$r6,$r6,2032(0x7f0)
1c004ed0:	0282c005 	addi.w	$r5,$r0,176(0xb0)
1c004ed4:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004ed8:	028e2084 	addi.w	$r4,$r4,904(0x388)
1c004edc:	57cdd3ff 	bl	-12848(0xfffcdd0) # 1c001cac <myprintf>
1c004ee0:	15000005 	lu12i.w	$r5,-524288(0x80000)
1c004ee4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004ee8:	03808184 	ori	$r4,$r12,0x20
1c004eec:	57e7cfff 	bl	-6196(0xfffe7cc) # 1c0036b8 <EXTI_ClearITPendingBit>
1c004ef0:	03400000 	andi	$r0,$r0,0x0
1c004ef4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004ef8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004efc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004f00:	4c000020 	jirl	$r0,$r1,0

1c004f04 <ext_handler>:
ext_handler():
1c004f04:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004f08:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004f0c:	29806076 	st.w	$r22,$r3,24(0x18)
1c004f10:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004f14:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004f18:	0380f18c 	ori	$r12,$r12,0x3c
1c004f1c:	1402000d 	lu12i.w	$r13,4096(0x1000)
1c004f20:	2980018d 	st.w	$r13,$r12,0
1c004f24:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004f28:	0380818c 	ori	$r12,$r12,0x20
1c004f2c:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c004f30:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004f34:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004f38:	0380818c 	ori	$r12,$r12,0x20
1c004f3c:	2880018c 	ld.w	$r12,$r12,0
1c004f40:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c004f44:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c004f48:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c004f4c:	0014b1ac 	and	$r12,$r13,$r12
1c004f50:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004f54:	03400000 	andi	$r0,$r0,0x0
1c004f58:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004f5c:	50004000 	b	64(0x40) # 1c004f9c <ext_handler+0x98>
1c004f60:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c004f64:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004f68:	0017b1ac 	srl.w	$r12,$r13,$r12
1c004f6c:	0340058c 	andi	$r12,$r12,0x1
1c004f70:	40002180 	beqz	$r12,32(0x20) # 1c004f90 <ext_handler+0x8c>
1c004f74:	1c00002d 	pcaddu12i	$r13,1(0x1)
1c004f78:	028e61ad 	addi.w	$r13,$r13,920(0x398)
1c004f7c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004f80:	0040898c 	slli.w	$r12,$r12,0x2
1c004f84:	001031ac 	add.w	$r12,$r13,$r12
1c004f88:	2880018c 	ld.w	$r12,$r12,0
1c004f8c:	4c000181 	jirl	$r1,$r12,0
1c004f90:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004f94:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004f98:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004f9c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004fa0:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c004fa4:	6fffbd8d 	bgeu	$r12,$r13,-68(0x3ffbc) # 1c004f60 <ext_handler+0x5c>
1c004fa8:	03400000 	andi	$r0,$r0,0x0
1c004fac:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004fb0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004fb4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004fb8:	4c000020 	jirl	$r0,$r1,0

1c004fbc <TIMER_WAKE_INT>:
TIMER_WAKE_INT():
1c004fbc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004fc0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004fc4:	29806076 	st.w	$r22,$r3,24(0x18)
1c004fc8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004fcc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004fd0:	0380f18c 	ori	$r12,$r12,0x3c
1c004fd4:	1400020d 	lu12i.w	$r13,16(0x10)
1c004fd8:	2980018d 	st.w	$r13,$r12,0
1c004fdc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004fe0:	0380118c 	ori	$r12,$r12,0x4
1c004fe4:	2880018c 	ld.w	$r12,$r12,0
1c004fe8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004fec:	57e81fff 	bl	-6116(0xfffe81c) # 1c003808 <WDG_DogFeed>
1c004ff0:	02801804 	addi.w	$r4,$r0,6(0x6)
1c004ff4:	57e1a3ff 	bl	-7776(0xfffe1a0) # 1c003194 <Wake_Set>
1c004ff8:	03400000 	andi	$r0,$r0,0x0
1c004ffc:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005000:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005004:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005008:	4c000020 	jirl	$r0,$r1,0

1c00500c <TOUCH>:
TOUCH():
1c00500c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005010:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005014:	29806076 	st.w	$r22,$r3,24(0x18)
1c005018:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00501c:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c005020:	0380118c 	ori	$r12,$r12,0x4
1c005024:	2880018c 	ld.w	$r12,$r12,0
1c005028:	0044c18c 	srli.w	$r12,$r12,0x10
1c00502c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c005030:	037ffd8c 	andi	$r12,$r12,0xfff
1c005034:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c005038:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c00503c:	0380118c 	ori	$r12,$r12,0x4
1c005040:	2880018c 	ld.w	$r12,$r12,0
1c005044:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005048:	03403d8c 	andi	$r12,$r12,0xf
1c00504c:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c005050:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c005054:	0380f18c 	ori	$r12,$r12,0x3c
1c005058:	1400040d 	lu12i.w	$r13,32(0x20)
1c00505c:	2980018d 	st.w	$r13,$r12,0
1c005060:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c005064:	0380118c 	ori	$r12,$r12,0x4
1c005068:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c00506c:	2980018d 	st.w	$r13,$r12,0
1c005070:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c005074:	00150184 	move	$r4,$r12
1c005078:	57f187ff 	bl	-3708(0xffff184) # 1c0041fc <Printf_KeyType>
1c00507c:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c005080:	00150184 	move	$r4,$r12
1c005084:	57f0ffff 	bl	-3844(0xffff0fc) # 1c004180 <Printf_KeyChannel>
1c005088:	57f203ff 	bl	-3584(0xffff200) # 1c004288 <Printf_KeyVal>
1c00508c:	03400000 	andi	$r0,$r0,0x0
1c005090:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005094:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005098:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00509c:	4c000020 	jirl	$r0,$r1,0

1c0050a0 <UART2_INT>:
UART2_INT():
1c0050a0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0050a4:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0050a8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0050ac:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0050b0:	0380f18c 	ori	$r12,$r12,0x3c
1c0050b4:	1400080d 	lu12i.w	$r13,64(0x40)
1c0050b8:	2980018d 	st.w	$r13,$r12,0
1c0050bc:	157fd18c 	lu12i.w	$r12,-262516(0xbfe8c)
1c0050c0:	0380098c 	ori	$r12,$r12,0x2
1c0050c4:	2a00018c 	ld.bu	$r12,$r12,0
1c0050c8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0050cc:	03400000 	andi	$r0,$r0,0x0
1c0050d0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0050d4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0050d8:	4c000020 	jirl	$r0,$r1,0

1c0050dc <BAT_FAIL>:
BAT_FAIL():
1c0050dc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0050e0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0050e4:	29806076 	st.w	$r22,$r3,24(0x18)
1c0050e8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0050ec:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0050f0:	0380118c 	ori	$r12,$r12,0x4
1c0050f4:	2880018c 	ld.w	$r12,$r12,0
1c0050f8:	0044cd8c 	srli.w	$r12,$r12,0x13
1c0050fc:	03407d8c 	andi	$r12,$r12,0x1f
1c005100:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005104:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c005108:	0380118c 	ori	$r12,$r12,0x4
1c00510c:	2880018e 	ld.w	$r14,$r12,0
1c005110:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c005114:	0380f18c 	ori	$r12,$r12,0x3c
1c005118:	1401f00d 	lu12i.w	$r13,3968(0xf80)
1c00511c:	0014b5cd 	and	$r13,$r14,$r13
1c005120:	2980018d 	st.w	$r13,$r12,0
1c005124:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005128:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c00512c:	6800718d 	bltu	$r12,$r13,112(0x70) # 1c00519c <BAT_FAIL+0xc0>
1c005130:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005134:	0040898d 	slli.w	$r13,$r12,0x2
1c005138:	1c00002c 	pcaddu12i	$r12,1(0x1)
1c00513c:	0289518c 	addi.w	$r12,$r12,596(0x254)
1c005140:	001031ac 	add.w	$r12,$r13,$r12
1c005144:	2880018c 	ld.w	$r12,$r12,0
1c005148:	4c000180 	jirl	$r0,$r12,0
1c00514c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c005150:	02855084 	addi.w	$r4,$r4,340(0x154)
1c005154:	57cb5bff 	bl	-13480(0xfffcb58) # 1c001cac <myprintf>
1c005158:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00515c:	0380118c 	ori	$r12,$r12,0x4
1c005160:	29800180 	st.w	$r0,$r12,0
1c005164:	50003c00 	b	60(0x3c) # 1c0051a0 <BAT_FAIL+0xc4>
1c005168:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00516c:	02858084 	addi.w	$r4,$r4,352(0x160)
1c005170:	57cb3fff 	bl	-13508(0xfffcb3c) # 1c001cac <myprintf>
1c005174:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c005178:	0380118c 	ori	$r12,$r12,0x4
1c00517c:	2880018e 	ld.w	$r14,$r12,0
1c005180:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c005184:	0380118c 	ori	$r12,$r12,0x4
1c005188:	15fffeed 	lu12i.w	$r13,-9(0xffff7)
1c00518c:	03bffdad 	ori	$r13,$r13,0xfff
1c005190:	0014b5cd 	and	$r13,$r14,$r13
1c005194:	2980018d 	st.w	$r13,$r12,0
1c005198:	50000800 	b	8(0x8) # 1c0051a0 <BAT_FAIL+0xc4>
1c00519c:	03400000 	andi	$r0,$r0,0x0
1c0051a0:	03400000 	andi	$r0,$r0,0x0
1c0051a4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0051a8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0051ac:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0051b0:	4c000020 	jirl	$r0,$r1,0

1c0051b4 <intc_handler>:
intc_handler():
1c0051b4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0051b8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0051bc:	29806076 	st.w	$r22,$r3,24(0x18)
1c0051c0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0051c4:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c0051c8:	0380158c 	ori	$r12,$r12,0x5
1c0051cc:	2a00018c 	ld.bu	$r12,$r12,0
1c0051d0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0051d4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0051d8:	0340058c 	andi	$r12,$r12,0x1
1c0051dc:	40001d80 	beqz	$r12,28(0x1c) # 1c0051f8 <intc_handler+0x44>
1c0051e0:	02840004 	addi.w	$r4,$r0,256(0x100)
1c0051e4:	57f2fbff 	bl	-3336(0xffff2f8) # 1c0044dc <TIM_GetITStatus>
1c0051e8:	0015008c 	move	$r12,$r4
1c0051ec:	40000d80 	beqz	$r12,12(0xc) # 1c0051f8 <intc_handler+0x44>
1c0051f0:	02840004 	addi.w	$r4,$r0,256(0x100)
1c0051f4:	57f337ff 	bl	-3276(0xffff334) # 1c004528 <TIM_ClearIT>
1c0051f8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0051fc:	0340118c 	andi	$r12,$r12,0x4
1c005200:	40001580 	beqz	$r12,20(0x14) # 1c005214 <intc_handler+0x60>
1c005204:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c005208:	03800d8c 	ori	$r12,$r12,0x3
1c00520c:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c005210:	2900018d 	st.b	$r13,$r12,0
1c005214:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005218:	0340218c 	andi	$r12,$r12,0x8
1c00521c:	40007d80 	beqz	$r12,124(0x7c) # 1c005298 <intc_handler+0xe4>
1c005220:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c005224:	0380098c 	ori	$r12,$r12,0x2
1c005228:	2a00018c 	ld.bu	$r12,$r12,0
1c00522c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005230:	0340118c 	andi	$r12,$r12,0x4
1c005234:	40005580 	beqz	$r12,84(0x54) # 1c005288 <intc_handler+0xd4>
1c005238:	50003800 	b	56(0x38) # 1c005270 <intc_handler+0xbc>
1c00523c:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c005240:	57d673ff 	bl	-10640(0xfffd670) # 1c0028b0 <UART_ReceiveData>
1c005244:	0015008c 	move	$r12,$r4
1c005248:	0015018d 	move	$r13,$r12
1c00524c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005250:	02b6d18c 	addi.w	$r12,$r12,-588(0xdb4)
1c005254:	2900018d 	st.b	$r13,$r12,0
1c005258:	02800406 	addi.w	$r6,$r0,1(0x1)
1c00525c:	1cc7ff65 	pcaddu12i	$r5,409595(0x63ffb)
1c005260:	02b690a5 	addi.w	$r5,$r5,-604(0xda4)
1c005264:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c005268:	28b6b084 	ld.w	$r4,$r4,-596(0xdac)
1c00526c:	54041000 	bl	1040(0x410) # 1c00567c <Queue_Wirte>
1c005270:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c005274:	0380158c 	ori	$r12,$r12,0x5
1c005278:	2a00018c 	ld.bu	$r12,$r12,0
1c00527c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005280:	0340058c 	andi	$r12,$r12,0x1
1c005284:	47ffb99f 	bnez	$r12,-72(0x7fffb8) # 1c00523c <intc_handler+0x88>
1c005288:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c00528c:	03800d8c 	ori	$r12,$r12,0x3
1c005290:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c005294:	2900018d 	st.b	$r13,$r12,0
1c005298:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c00529c:	03800d8c 	ori	$r12,$r12,0x3
1c0052a0:	02bffc0d 	addi.w	$r13,$r0,-1(0xfff)
1c0052a4:	2900018d 	st.b	$r13,$r12,0
1c0052a8:	03400000 	andi	$r0,$r0,0x0
1c0052ac:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0052b0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0052b4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0052b8:	4c000020 	jirl	$r0,$r1,0

1c0052bc <TIMER_HANDLER>:
TIMER_HANDLER():
1c0052bc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0052c0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0052c4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0052c8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0052cc:	57dea7ff 	bl	-8540(0xfffdea4) # 1c003170 <Set_Timer_clear>
1c0052d0:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0052d4:	02807084 	addi.w	$r4,$r4,28(0x1c)
1c0052d8:	57c9d7ff 	bl	-13868(0xfffc9d4) # 1c001cac <myprintf>
1c0052dc:	57de77ff 	bl	-8588(0xfffde74) # 1c003150 <Set_Timer_stop>
1c0052e0:	03400000 	andi	$r0,$r0,0x0
1c0052e4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0052e8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0052ec:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0052f0:	4c000020 	jirl	$r0,$r1,0

1c0052f4 <main>:
main():
1c0052f4:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c0052f8:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c0052fc:	2980e076 	st.w	$r22,$r3,56(0x38)
1c005300:	02810076 	addi.w	$r22,$r3,64(0x40)
1c005304:	29bf32c4 	st.w	$r4,$r22,-52(0xfcc)
1c005308:	29bf22c5 	st.w	$r5,$r22,-56(0xfc8)
1c00530c:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005310:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c005314:	297faac0 	st.h	$r0,$r22,-22(0xfea)
1c005318:	297fa2c0 	st.h	$r0,$r22,-24(0xfe8)
1c00531c:	297f9ac0 	st.h	$r0,$r22,-26(0xfe6)
1c005320:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005324:	02801004 	addi.w	$r4,$r0,4(0x4)
1c005328:	57c2ebff 	bl	-15640(0xfffc2e8) # 1c001610 <gpio_pin_remap>
1c00532c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005330:	02801404 	addi.w	$r4,$r0,5(0x5)
1c005334:	57c2dfff 	bl	-15652(0xfffc2dc) # 1c001610 <gpio_pin_remap>
1c005338:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00533c:	02803404 	addi.w	$r4,$r0,13(0xd)
1c005340:	57c2d3ff 	bl	-15664(0xfffc2d0) # 1c001610 <gpio_pin_remap>
1c005344:	57ebc7ff 	bl	-5180(0xfffebc4) # 1c003f08 <Adc_powerOn>
1c005348:	02801004 	addi.w	$r4,$r0,4(0x4)
1c00534c:	57ec13ff 	bl	-5104(0xfffec10) # 1c003f5c <Adc_open>
1c005350:	02801404 	addi.w	$r4,$r0,5(0x5)
1c005354:	57ec0bff 	bl	-5112(0xfffec08) # 1c003f5c <Adc_open>
1c005358:	02801804 	addi.w	$r4,$r0,6(0x6)
1c00535c:	57ec03ff 	bl	-5120(0xfffec00) # 1c003f5c <Adc_open>
1c005360:	02801c04 	addi.w	$r4,$r0,7(0x7)
1c005364:	57ebfbff 	bl	-5128(0xfffebf8) # 1c003f5c <Adc_open>
1c005368:	02819004 	addi.w	$r4,$r0,100(0x64)
1c00536c:	57e1e7ff 	bl	-7708(0xfffe1e4) # 1c003550 <delay_ms>
1c005370:	02bf72cc 	addi.w	$r12,$r22,-36(0xfdc)
1c005374:	00150184 	move	$r4,$r12
1c005378:	57e5f3ff 	bl	-6672(0xfffe5f0) # 1c003968 <I2C_StructInit>
1c00537c:	02bf72cc 	addi.w	$r12,$r22,-36(0xfdc)
1c005380:	00150185 	move	$r5,$r12
1c005384:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c005388:	57e4dfff 	bl	-6948(0xfffe4dc) # 1c003864 <I2C_Init>
1c00538c:	00150005 	move	$r5,$r0
1c005390:	02803404 	addi.w	$r4,$r0,13(0xd)
1c005394:	57c207ff 	bl	-15868(0xfffc204) # 1c001598 <gpio_write_pin>
1c005398:	54066000 	bl	1632(0x660) # 1c0059f8 <ATK_esp8266>
1c00539c:	0015008c 	move	$r12,$r4
1c0053a0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0053a4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0053a8:	02803404 	addi.w	$r4,$r0,13(0xd)
1c0053ac:	57c1efff 	bl	-15892(0xfffc1ec) # 1c001598 <gpio_write_pin>
1c0053b0:	00150005 	move	$r5,$r0
1c0053b4:	02805004 	addi.w	$r4,$r0,20(0x14)
1c0053b8:	57c1e3ff 	bl	-15904(0xfffc1e0) # 1c001598 <gpio_write_pin>
1c0053bc:	02801004 	addi.w	$r4,$r0,4(0x4)
1c0053c0:	57ec4fff 	bl	-5044(0xfffec4c) # 1c00400c <Adc_Measure>
1c0053c4:	0015008c 	move	$r12,$r4
1c0053c8:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c0053cc:	02801404 	addi.w	$r4,$r0,5(0x5)
1c0053d0:	57ec3fff 	bl	-5060(0xfffec3c) # 1c00400c <Adc_Measure>
1c0053d4:	0015008c 	move	$r12,$r4
1c0053d8:	297faacc 	st.h	$r12,$r22,-22(0xfea)
1c0053dc:	02801804 	addi.w	$r4,$r0,6(0x6)
1c0053e0:	57ec2fff 	bl	-5076(0xfffec2c) # 1c00400c <Adc_Measure>
1c0053e4:	0015008c 	move	$r12,$r4
1c0053e8:	297fa2cc 	st.h	$r12,$r22,-24(0xfe8)
1c0053ec:	02801c04 	addi.w	$r4,$r0,7(0x7)
1c0053f0:	57ec1fff 	bl	-5092(0xfffec1c) # 1c00400c <Adc_Measure>
1c0053f4:	0015008c 	move	$r12,$r4
1c0053f8:	297f9acc 	st.h	$r12,$r22,-26(0xfe6)
1c0053fc:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c005400:	00150185 	move	$r5,$r12
1c005404:	1c000024 	pcaddu12i	$r4,1(0x1)
1c005408:	028b3084 	addi.w	$r4,$r4,716(0x2cc)
1c00540c:	57c8a3ff 	bl	-14176(0xfffc8a0) # 1c001cac <myprintf>
1c005410:	2a7faacc 	ld.hu	$r12,$r22,-22(0xfea)
1c005414:	00150185 	move	$r5,$r12
1c005418:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00541c:	028b7084 	addi.w	$r4,$r4,732(0x2dc)
1c005420:	57c88fff 	bl	-14196(0xfffc88c) # 1c001cac <myprintf>
1c005424:	2a7fa2cc 	ld.hu	$r12,$r22,-24(0xfe8)
1c005428:	00150185 	move	$r5,$r12
1c00542c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c005430:	028bb084 	addi.w	$r4,$r4,748(0x2ec)
1c005434:	57c87bff 	bl	-14216(0xfffc878) # 1c001cac <myprintf>
1c005438:	2a7f9acc 	ld.hu	$r12,$r22,-26(0xfe6)
1c00543c:	00150185 	move	$r5,$r12
1c005440:	1c000024 	pcaddu12i	$r4,1(0x1)
1c005444:	028bf084 	addi.w	$r4,$r4,764(0x2fc)
1c005448:	57c867ff 	bl	-14236(0xfffc864) # 1c001cac <myprintf>
1c00544c:	1c000025 	pcaddu12i	$r5,1(0x1)
1c005450:	028c50a5 	addi.w	$r5,$r5,788(0x314)
1c005454:	00150004 	move	$r4,$r0
1c005458:	57cbfbff 	bl	-13320(0xfffcbf8) # 1c002050 <myprintf2>
1c00545c:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c005460:	00150186 	move	$r6,$r12
1c005464:	1c000025 	pcaddu12i	$r5,1(0x1)
1c005468:	028c10a5 	addi.w	$r5,$r5,772(0x304)
1c00546c:	00150004 	move	$r4,$r0
1c005470:	57cbe3ff 	bl	-13344(0xfffcbe0) # 1c002050 <myprintf2>
1c005474:	2a7faacc 	ld.hu	$r12,$r22,-22(0xfea)
1c005478:	00150186 	move	$r6,$r12
1c00547c:	1c000025 	pcaddu12i	$r5,1(0x1)
1c005480:	028bd0a5 	addi.w	$r5,$r5,756(0x2f4)
1c005484:	00150004 	move	$r4,$r0
1c005488:	57cbcbff 	bl	-13368(0xfffcbc8) # 1c002050 <myprintf2>
1c00548c:	2a7fa2cc 	ld.hu	$r12,$r22,-24(0xfe8)
1c005490:	00150186 	move	$r6,$r12
1c005494:	1c000025 	pcaddu12i	$r5,1(0x1)
1c005498:	028b90a5 	addi.w	$r5,$r5,740(0x2e4)
1c00549c:	00150004 	move	$r4,$r0
1c0054a0:	57cbb3ff 	bl	-13392(0xfffcbb0) # 1c002050 <myprintf2>
1c0054a4:	2a7f9acc 	ld.hu	$r12,$r22,-26(0xfe6)
1c0054a8:	00150186 	move	$r6,$r12
1c0054ac:	1c000025 	pcaddu12i	$r5,1(0x1)
1c0054b0:	028b50a5 	addi.w	$r5,$r5,724(0x2d4)
1c0054b4:	00150004 	move	$r4,$r0
1c0054b8:	57cb9bff 	bl	-13416(0xfffcb98) # 1c002050 <myprintf2>
1c0054bc:	57e753ff 	bl	-6320(0xfffe750) # 1c003c0c <Sht30_Init>
1c0054c0:	57e7cfff 	bl	-6196(0xfffe7cc) # 1c003c8c <Send_Tem_Humid>
1c0054c4:	02819004 	addi.w	$r4,$r0,100(0x64)
1c0054c8:	57e08bff 	bl	-8056(0xfffe088) # 1c003550 <delay_ms>
1c0054cc:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0054d0:	028af084 	addi.w	$r4,$r4,700(0x2bc)
1c0054d4:	54036000 	bl	864(0x360) # 1c005834 <esp8266_check_cmd>
1c0054d8:	0015008c 	move	$r12,$r4
1c0054dc:	40003980 	beqz	$r12,56(0x38) # 1c005514 <main+0x220>
1c0054e0:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0054e4:	028ab084 	addi.w	$r4,$r4,684(0x2ac)
1c0054e8:	57c7c7ff 	bl	-14396(0xfffc7c4) # 1c001cac <myprintf>
1c0054ec:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0054f0:	02805004 	addi.w	$r4,$r0,20(0x14)
1c0054f4:	57c0a7ff 	bl	-16220(0xfffc0a4) # 1c001598 <gpio_write_pin>
1c0054f8:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0054fc:	28ac618c 	ld.w	$r12,$r12,-1256(0xb18)
1c005500:	2a40098d 	ld.hu	$r13,$r12,2(0x2)
1c005504:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005508:	28ac318c 	ld.w	$r12,$r12,-1268(0xb0c)
1c00550c:	2940018d 	st.h	$r13,$r12,0
1c005510:	53feafff 	b	-340(0xffffeac) # 1c0053bc <main+0xc8>
1c005514:	1c000024 	pcaddu12i	$r4,1(0x1)
1c005518:	028a1084 	addi.w	$r4,$r4,644(0x284)
1c00551c:	54031800 	bl	792(0x318) # 1c005834 <esp8266_check_cmd>
1c005520:	0015008c 	move	$r12,$r4
1c005524:	43fe999f 	beqz	$r12,-360(0x7ffe98) # 1c0053bc <main+0xc8>
1c005528:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00552c:	0289d084 	addi.w	$r4,$r4,628(0x274)
1c005530:	57c77fff 	bl	-14468(0xfffc77c) # 1c001cac <myprintf>
1c005534:	00150005 	move	$r5,$r0
1c005538:	02805004 	addi.w	$r4,$r0,20(0x14)
1c00553c:	57c05fff 	bl	-16292(0xfffc05c) # 1c001598 <gpio_write_pin>
1c005540:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005544:	28ab418c 	ld.w	$r12,$r12,-1328(0xad0)
1c005548:	2a40098d 	ld.hu	$r13,$r12,2(0x2)
1c00554c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005550:	28ab118c 	ld.w	$r12,$r12,-1340(0xac4)
1c005554:	2940018d 	st.h	$r13,$r12,0
1c005558:	53fe67ff 	b	-412(0xffffe64) # 1c0053bc <main+0xc8>

1c00555c <Queue_isEmpty>:
Queue_isEmpty():
1c00555c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005560:	29807076 	st.w	$r22,$r3,28(0x1c)
1c005564:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005568:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c00556c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005570:	44000d80 	bnez	$r12,12(0xc) # 1c00557c <Queue_isEmpty+0x20>
1c005574:	0015000c 	move	$r12,$r0
1c005578:	50002400 	b	36(0x24) # 1c00559c <Queue_isEmpty+0x40>
1c00557c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005580:	2a40018d 	ld.hu	$r13,$r12,0
1c005584:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005588:	2a40098c 	ld.hu	$r12,$r12,2(0x2)
1c00558c:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c005598 <Queue_isEmpty+0x3c>
1c005590:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005594:	50000800 	b	8(0x8) # 1c00559c <Queue_isEmpty+0x40>
1c005598:	0015000c 	move	$r12,$r0
1c00559c:	00150184 	move	$r4,$r12
1c0055a0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0055a4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0055a8:	4c000020 	jirl	$r0,$r1,0

1c0055ac <Queue_HadUse>:
Queue_HadUse():
1c0055ac:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0055b0:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0055b4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0055b8:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0055bc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0055c0:	44000d80 	bnez	$r12,12(0xc) # 1c0055cc <Queue_HadUse+0x20>
1c0055c4:	0015000c 	move	$r12,$r0
1c0055c8:	50003800 	b	56(0x38) # 1c005600 <Queue_HadUse+0x54>
1c0055cc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0055d0:	2a40098d 	ld.hu	$r13,$r12,2(0x2)
1c0055d4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0055d8:	2a40018c 	ld.hu	$r12,$r12,0
1c0055dc:	001131ac 	sub.w	$r12,$r13,$r12
1c0055e0:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0055e4:	0284b18c 	addi.w	$r12,$r12,300(0x12c)
1c0055e8:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0055ec:	0284b00c 	addi.w	$r12,$r0,300(0x12c)
1c0055f0:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c0055f4:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0055fc <Queue_HadUse+0x50>
1c0055f8:	002a0007 	break	0x7
1c0055fc:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c005600:	00150184 	move	$r4,$r12
1c005604:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c005608:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00560c:	4c000020 	jirl	$r0,$r1,0

1c005610 <Queue_NoUse>:
Queue_NoUse():
1c005610:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005614:	29807076 	st.w	$r22,$r3,28(0x1c)
1c005618:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00561c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c005620:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005624:	44000d80 	bnez	$r12,12(0xc) # 1c005630 <Queue_NoUse+0x20>
1c005628:	0015000c 	move	$r12,$r0
1c00562c:	50004000 	b	64(0x40) # 1c00566c <Queue_NoUse+0x5c>
1c005630:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005634:	2a40098c 	ld.hu	$r12,$r12,2(0x2)
1c005638:	0015018d 	move	$r13,$r12
1c00563c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005640:	2a40018c 	ld.hu	$r12,$r12,0
1c005644:	001131ac 	sub.w	$r12,$r13,$r12
1c005648:	0284b18d 	addi.w	$r13,$r12,300(0x12c)
1c00564c:	0284b00c 	addi.w	$r12,$r0,300(0x12c)
1c005650:	0020b1ae 	mod.w	$r14,$r13,$r12
1c005654:	5c000980 	bne	$r12,$r0,8(0x8) # 1c00565c <Queue_NoUse+0x4c>
1c005658:	002a0007 	break	0x7
1c00565c:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c005660:	0284ac0d 	addi.w	$r13,$r0,299(0x12b)
1c005664:	001131ac 	sub.w	$r12,$r13,$r12
1c005668:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c00566c:	00150184 	move	$r4,$r12
1c005670:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c005674:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005678:	4c000020 	jirl	$r0,$r1,0

1c00567c <Queue_Wirte>:
Queue_Wirte():
1c00567c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005680:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005684:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005688:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00568c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005690:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c005694:	001500cc 	move	$r12,$r6
1c005698:	297f5acc 	st.h	$r12,$r22,-42(0xfd6)
1c00569c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0056a0:	44000d80 	bnez	$r12,12(0xc) # 1c0056ac <Queue_Wirte+0x30>
1c0056a4:	0015000c 	move	$r12,$r0
1c0056a8:	50009c00 	b	156(0x9c) # 1c005744 <Queue_Wirte+0xc8>
1c0056ac:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0056b0:	57ff63ff 	bl	-160(0xfffff60) # 1c005610 <Queue_NoUse>
1c0056b4:	0015008c 	move	$r12,$r4
1c0056b8:	0015018d 	move	$r13,$r12
1c0056bc:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c0056c0:	6c000dac 	bgeu	$r13,$r12,12(0xc) # 1c0056cc <Queue_Wirte+0x50>
1c0056c4:	0015000c 	move	$r12,$r0
1c0056c8:	50007c00 	b	124(0x7c) # 1c005744 <Queue_Wirte+0xc8>
1c0056cc:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0056d0:	50006400 	b	100(0x64) # 1c005734 <Queue_Wirte+0xb8>
1c0056d4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0056d8:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c0056dc:	001031ac 	add.w	$r12,$r13,$r12
1c0056e0:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0056e4:	2a4009ad 	ld.hu	$r13,$r13,2(0x2)
1c0056e8:	001501ae 	move	$r14,$r13
1c0056ec:	2a00018d 	ld.bu	$r13,$r12,0
1c0056f0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0056f4:	0010398c 	add.w	$r12,$r12,$r14
1c0056f8:	2900118d 	st.b	$r13,$r12,4(0x4)
1c0056fc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005700:	2a40098c 	ld.hu	$r12,$r12,2(0x2)
1c005704:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005708:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c00570c:	0284b00c 	addi.w	$r12,$r0,300(0x12c)
1c005710:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c005714:	5c000980 	bne	$r12,$r0,8(0x8) # 1c00571c <Queue_Wirte+0xa0>
1c005718:	002a0007 	break	0x7
1c00571c:	006f81cd 	bstrpick.w	$r13,$r14,0xf,0x0
1c005720:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005724:	2940098d 	st.h	$r13,$r12,2(0x2)
1c005728:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00572c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005730:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005734:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c005738:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00573c:	63ff99ac 	blt	$r13,$r12,-104(0x3ff98) # 1c0056d4 <Queue_Wirte+0x58>
1c005740:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005744:	00150184 	move	$r4,$r12
1c005748:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c00574c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005750:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005754:	4c000020 	jirl	$r0,$r1,0

1c005758 <Queue_Read>:
Queue_Read():
1c005758:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00575c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005760:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005764:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005768:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00576c:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c005770:	001500cc 	move	$r12,$r6
1c005774:	297f5acc 	st.h	$r12,$r22,-42(0xfd6)
1c005778:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00577c:	44000d80 	bnez	$r12,12(0xc) # 1c005788 <Queue_Read+0x30>
1c005780:	0015000c 	move	$r12,$r0
1c005784:	50009c00 	b	156(0x9c) # 1c005820 <Queue_Read+0xc8>
1c005788:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c00578c:	57fe23ff 	bl	-480(0xffffe20) # 1c0055ac <Queue_HadUse>
1c005790:	0015008c 	move	$r12,$r4
1c005794:	0015018d 	move	$r13,$r12
1c005798:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c00579c:	6c000dac 	bgeu	$r13,$r12,12(0xc) # 1c0057a8 <Queue_Read+0x50>
1c0057a0:	0015000c 	move	$r12,$r0
1c0057a4:	50007c00 	b	124(0x7c) # 1c005820 <Queue_Read+0xc8>
1c0057a8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0057ac:	50006400 	b	100(0x64) # 1c005810 <Queue_Read+0xb8>
1c0057b0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0057b4:	2a40018c 	ld.hu	$r12,$r12,0
1c0057b8:	0015018e 	move	$r14,$r12
1c0057bc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0057c0:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c0057c4:	001031ac 	add.w	$r12,$r13,$r12
1c0057c8:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0057cc:	001039ad 	add.w	$r13,$r13,$r14
1c0057d0:	2a0011ad 	ld.bu	$r13,$r13,4(0x4)
1c0057d4:	2900018d 	st.b	$r13,$r12,0
1c0057d8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0057dc:	2a40018c 	ld.hu	$r12,$r12,0
1c0057e0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0057e4:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0057e8:	0284b00c 	addi.w	$r12,$r0,300(0x12c)
1c0057ec:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c0057f0:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0057f8 <Queue_Read+0xa0>
1c0057f4:	002a0007 	break	0x7
1c0057f8:	006f81cd 	bstrpick.w	$r13,$r14,0xf,0x0
1c0057fc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005800:	2940018d 	st.h	$r13,$r12,0
1c005804:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005808:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00580c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005810:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c005814:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005818:	63ff99ac 	blt	$r13,$r12,-104(0x3ff98) # 1c0057b0 <Queue_Read+0x58>
1c00581c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005820:	00150184 	move	$r4,$r12
1c005824:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005828:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c00582c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005830:	4c000020 	jirl	$r0,$r1,0

1c005834 <esp8266_check_cmd>:
esp8266_check_cmd():
1c005834:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005838:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c00583c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005840:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005844:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005848:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00584c:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005850:	289f1084 	ld.w	$r4,$r4,1988(0x7c4)
1c005854:	57fd0bff 	bl	-760(0xffffd08) # 1c00555c <Queue_isEmpty>
1c005858:	0015008c 	move	$r12,$r4
1c00585c:	44009580 	bnez	$r12,148(0x94) # 1c0058f0 <esp8266_check_cmd+0xbc>
1c005860:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005864:	289ec084 	ld.w	$r4,$r4,1968(0x7b0)
1c005868:	57fd47ff 	bl	-700(0xffffd44) # 1c0055ac <Queue_HadUse>
1c00586c:	0015008c 	move	$r12,$r4
1c005870:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005874:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005878:	289e518c 	ld.w	$r12,$r12,1940(0x794)
1c00587c:	2900018d 	st.b	$r13,$r12,0
1c005880:	0284b006 	addi.w	$r6,$r0,300(0x12c)
1c005884:	00150005 	move	$r5,$r0
1c005888:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c00588c:	289e4084 	ld.w	$r4,$r4,1936(0x790)
1c005890:	57dd03ff 	bl	-8960(0xfffdd00) # 1c003590 <memset>
1c005894:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005898:	289dd18c 	ld.w	$r12,$r12,1908(0x774)
1c00589c:	2a00018c 	ld.bu	$r12,$r12,0
1c0058a0:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0058a4:	00150186 	move	$r6,$r12
1c0058a8:	1cc7ff65 	pcaddu12i	$r5,409595(0x63ffb)
1c0058ac:	289dc0a5 	ld.w	$r5,$r5,1904(0x770)
1c0058b0:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c0058b4:	289d8084 	ld.w	$r4,$r4,1888(0x760)
1c0058b8:	57fea3ff 	bl	-352(0xffffea0) # 1c005758 <Queue_Read>
1c0058bc:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0058c0:	289d318c 	ld.w	$r12,$r12,1868(0x74c)
1c0058c4:	2a00018c 	ld.bu	$r12,$r12,0
1c0058c8:	0015018d 	move	$r13,$r12
1c0058cc:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0058d0:	289d318c 	ld.w	$r12,$r12,1868(0x74c)
1c0058d4:	0010358c 	add.w	$r12,$r12,$r13
1c0058d8:	29000180 	st.b	$r0,$r12,0
1c0058dc:	1cc7ff65 	pcaddu12i	$r5,409595(0x63ffb)
1c0058e0:	289cf0a5 	ld.w	$r5,$r5,1852(0x73c)
1c0058e4:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0058e8:	02bb1084 	addi.w	$r4,$r4,-316(0xec4)
1c0058ec:	57c3c3ff 	bl	-15424(0xfffc3c0) # 1c001cac <myprintf>
1c0058f0:	28bf72c5 	ld.w	$r5,$r22,-36(0xfdc)
1c0058f4:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c0058f8:	289c9084 	ld.w	$r4,$r4,1828(0x724)
1c0058fc:	57dcf7ff 	bl	-8972(0xfffdcf4) # 1c0035f0 <pstrstr>
1c005900:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c005904:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005908:	00150184 	move	$r4,$r12
1c00590c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005910:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005914:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005918:	4c000020 	jirl	$r0,$r1,0

1c00591c <esp8266_send_cmd>:
esp8266_send_cmd():
1c00591c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005920:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005924:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005928:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00592c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005930:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c005934:	001500cc 	move	$r12,$r6
1c005938:	297f5acc 	st.h	$r12,$r22,-42(0xfd6)
1c00593c:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005940:	28bf72c5 	ld.w	$r5,$r22,-36(0xfdc)
1c005944:	1c000024 	pcaddu12i	$r4,1(0x1)
1c005948:	02b9f084 	addi.w	$r4,$r4,-388(0xe7c)
1c00594c:	57c363ff 	bl	-15520(0xfffc360) # 1c001cac <myprintf>
1c005950:	28bf72c6 	ld.w	$r6,$r22,-36(0xfdc)
1c005954:	1c000025 	pcaddu12i	$r5,1(0x1)
1c005958:	02b9e0a5 	addi.w	$r5,$r5,-392(0xe78)
1c00595c:	00150004 	move	$r4,$r0
1c005960:	57c6f3ff 	bl	-14608(0xfffc6f0) # 1c002050 <myprintf2>
1c005964:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005968:	40007980 	beqz	$r12,120(0x78) # 1c0059e0 <esp8266_send_cmd+0xc4>
1c00596c:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c005970:	40007180 	beqz	$r12,112(0x70) # 1c0059e0 <esp8266_send_cmd+0xc4>
1c005974:	50003000 	b	48(0x30) # 1c0059a4 <esp8266_send_cmd+0x88>
1c005978:	028fa004 	addi.w	$r4,$r0,1000(0x3e8)
1c00597c:	57dbd7ff 	bl	-9260(0xfffdbd4) # 1c003550 <delay_ms>
1c005980:	28bf62c4 	ld.w	$r4,$r22,-40(0xfd8)
1c005984:	57feb3ff 	bl	-336(0xffffeb0) # 1c005834 <esp8266_check_cmd>
1c005988:	0015008c 	move	$r12,$r4
1c00598c:	40001980 	beqz	$r12,24(0x18) # 1c0059a4 <esp8266_send_cmd+0x88>
1c005990:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c005994:	1c000024 	pcaddu12i	$r4,1(0x1)
1c005998:	02b90084 	addi.w	$r4,$r4,-448(0xe40)
1c00599c:	57c313ff 	bl	-15600(0xfffc310) # 1c001cac <myprintf>
1c0059a0:	50001800 	b	24(0x18) # 1c0059b8 <esp8266_send_cmd+0x9c>
1c0059a4:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c0059a8:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0059ac:	297f5acc 	st.h	$r12,$r22,-42(0xfd6)
1c0059b0:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c0059b4:	47ffc59f 	bnez	$r12,-60(0x7fffc4) # 1c005978 <esp8266_send_cmd+0x5c>
1c0059b8:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c0059bc:	44001180 	bnez	$r12,16(0x10) # 1c0059cc <esp8266_send_cmd+0xb0>
1c0059c0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0059c4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0059c8:	50001800 	b	24(0x18) # 1c0059e0 <esp8266_send_cmd+0xc4>
1c0059cc:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c0059d0:	00150185 	move	$r5,$r12
1c0059d4:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0059d8:	02b83084 	addi.w	$r4,$r4,-500(0xe0c)
1c0059dc:	57c2d3ff 	bl	-15664(0xfffc2d0) # 1c001cac <myprintf>
1c0059e0:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c0059e4:	00150184 	move	$r4,$r12
1c0059e8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0059ec:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0059f0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0059f4:	4c000020 	jirl	$r0,$r1,0

1c0059f8 <ATK_esp8266>:
ATK_esp8266():
1c0059f8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0059fc:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005a00:	29806076 	st.w	$r22,$r3,24(0x18)
1c005a04:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005a08:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005a0c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c005a10:	02bbc084 	addi.w	$r4,$r4,-272(0xef0)
1c005a14:	57c29bff 	bl	-15720(0xfffc298) # 1c001cac <myprintf>
1c005a18:	03400000 	andi	$r0,$r0,0x0
1c005a1c:	0287d006 	addi.w	$r6,$r0,500(0x1f4)
1c005a20:	1c000025 	pcaddu12i	$r5,1(0x1)
1c005a24:	02b770a5 	addi.w	$r5,$r5,-548(0xddc)
1c005a28:	1c000024 	pcaddu12i	$r4,1(0x1)
1c005a2c:	02bc1084 	addi.w	$r4,$r4,-252(0xf04)
1c005a30:	57feefff 	bl	-276(0xffffeec) # 1c00591c <esp8266_send_cmd>
1c005a34:	0015008c 	move	$r12,$r4
1c005a38:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c005a1c <ATK_esp8266+0x24>
1c005a3c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c005a40:	02bbd084 	addi.w	$r4,$r4,-268(0xef4)
1c005a44:	57c26bff 	bl	-15768(0xfffc268) # 1c001cac <myprintf>
1c005a48:	02819004 	addi.w	$r4,$r0,100(0x64)
1c005a4c:	57db07ff 	bl	-9468(0xfffdb04) # 1c003550 <delay_ms>
1c005a50:	03400000 	andi	$r0,$r0,0x0
1c005a54:	03aee006 	ori	$r6,$r0,0xbb8
1c005a58:	1c000025 	pcaddu12i	$r5,1(0x1)
1c005a5c:	02b690a5 	addi.w	$r5,$r5,-604(0xda4)
1c005a60:	1c000024 	pcaddu12i	$r4,1(0x1)
1c005a64:	02b68084 	addi.w	$r4,$r4,-608(0xda0)
1c005a68:	57feb7ff 	bl	-332(0xffffeb4) # 1c00591c <esp8266_send_cmd>
1c005a6c:	0015008c 	move	$r12,$r4
1c005a70:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c005a54 <ATK_esp8266+0x5c>
1c005a74:	02819004 	addi.w	$r4,$r0,100(0x64)
1c005a78:	57dadbff 	bl	-9512(0xfffdad8) # 1c003550 <delay_ms>
1c005a7c:	03400000 	andi	$r0,$r0,0x0
1c005a80:	1400004c 	lu12i.w	$r12,2(0x2)
1c005a84:	039c4186 	ori	$r6,$r12,0x710
1c005a88:	1c000025 	pcaddu12i	$r5,1(0x1)
1c005a8c:	02bb70a5 	addi.w	$r5,$r5,-292(0xedc)
1c005a90:	1c000024 	pcaddu12i	$r4,1(0x1)
1c005a94:	02bb8084 	addi.w	$r4,$r4,-288(0xee0)
1c005a98:	57fe87ff 	bl	-380(0xffffe84) # 1c00591c <esp8266_send_cmd>
1c005a9c:	0015008c 	move	$r12,$r4
1c005aa0:	47ffe19f 	bnez	$r12,-32(0x7fffe0) # 1c005a80 <ATK_esp8266+0x88>
1c005aa4:	1c000024 	pcaddu12i	$r4,1(0x1)
1c005aa8:	02bbb084 	addi.w	$r4,$r4,-276(0xeec)
1c005aac:	57c203ff 	bl	-15872(0xfffc200) # 1c001cac <myprintf>
1c005ab0:	02819004 	addi.w	$r4,$r0,100(0x64)
1c005ab4:	57da9fff 	bl	-9572(0xfffda9c) # 1c003550 <delay_ms>
1c005ab8:	03400000 	andi	$r0,$r0,0x0
1c005abc:	1400004c 	lu12i.w	$r12,2(0x2)
1c005ac0:	039c4186 	ori	$r6,$r12,0x710
1c005ac4:	1c000025 	pcaddu12i	$r5,1(0x1)
1c005ac8:	02bba0a5 	addi.w	$r5,$r5,-280(0xee8)
1c005acc:	1c000024 	pcaddu12i	$r4,1(0x1)
1c005ad0:	02bbc084 	addi.w	$r4,$r4,-272(0xef0)
1c005ad4:	57fe4bff 	bl	-440(0xffffe48) # 1c00591c <esp8266_send_cmd>
1c005ad8:	0015008c 	move	$r12,$r4
1c005adc:	47ffe19f 	bnez	$r12,-32(0x7fffe0) # 1c005abc <ATK_esp8266+0xc4>
1c005ae0:	1c000024 	pcaddu12i	$r4,1(0x1)
1c005ae4:	02bc3084 	addi.w	$r4,$r4,-244(0xf0c)
1c005ae8:	57c1c7ff 	bl	-15932(0xfffc1c4) # 1c001cac <myprintf>
1c005aec:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005af0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005af4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005af8:	00150184 	move	$r4,$r12
1c005afc:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005b00:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005b04:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005b08:	4c000020 	jirl	$r0,$r1,0

Disassembly of section .rodata:

1c005b20 <msg_wakeup>:
msg_wakeup():
1c005b20:	656b6177 	bge	$r11,$r23,93024(0x16b60) # 1c01c680 <_sidata+0x15c78>
1c005b24:	0a217075 	xvfmadd.d	$xr21,$xr3,$xr28,$xr2
	...

1c005b29 <hexdecarr>:
hexdecarr():
1c005b29:	33323130 	xvstelm.w	$xr16,$r9,-464(0x230),0x4
1c005b2d:	37363534 	0x37363534
1c005b31:	62613938 	blt	$r9,$r24,-106184(0x26138) # 1bfebc69 <_start-0x14397>
1c005b35:	66656463 	bge	$r3,$r3,-105116(0x26564) # 1bfec099 <_start-0x13f67>
1c005b39:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c005b3d:	79654b0a 	0x79654b0a
1c005b41:	73657220 	vssrani.wu.d	$vr0,$vr17,0x1c
1c005b45:	0d217465 	xvbitsel.v	$xr5,$xr3,$xr29,$xr2
1c005b49:	0d00000a 	fsel	$f10,$f0,$f0,$fcc0
1c005b4d:	6970730a 	bltu	$r24,$r10,94320(0x17070) # 1c01cbbd <_sidata+0x161b5>
1c005b51:	6f6f6220 	bgeu	$r17,$r0,-37024(0x36f60) # 1bffcab1 <_start-0x354f>
1c005b55:	0d000074 	fsel	$f20,$f3,$f0,$fcc0
1c005b59:	676f640a 	bge	$r0,$r10,-37020(0x36f64) # 1bffcabd <_start-0x3543>
1c005b5d:	72616220 	0x72616220
1c005b61:	0a0d216b 	0x0a0d216b
1c005b65:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c005b69:	6b61770a 	bltu	$r24,$r10,-40588(0x36174) # 1bffbcdd <_start-0x4323>
1c005b6d:	21705565 	sc.w	$r5,$r11,28756(0x7054)
1c005b71:	cc000a0d 	0xcc000a0d
1c005b75:	e81c001e 	0xe81c001e
1c005b79:	e81c001f 	0xe81c001f
1c005b7d:	e81c001f 	0xe81c001f
1c005b81:	e81c001f 	0xe81c001f
1c005b85:	e81c001f 	0xe81c001f
1c005b89:	e81c001f 	0xe81c001f
1c005b8d:	e81c001f 	0xe81c001f
1c005b91:	e81c001f 	0xe81c001f
1c005b95:	e81c001f 	0xe81c001f
1c005b99:	e81c001f 	0xe81c001f
1c005b9d:	e41c001f 	0xe41c001f
1c005ba1:	6c1c001e 	bgeu	$r0,$r30,7168(0x1c00) # 1c0077a1 <_sidata+0xd99>
1c005ba5:	6c1c001f 	bgeu	$r0,$r31,7168(0x1c00) # 1c0077a5 <_sidata+0xd9d>
1c005ba9:	6c1c001f 	bgeu	$r0,$r31,7168(0x1c00) # 1c0077a9 <_sidata+0xda1>
1c005bad:	6c1c001f 	bgeu	$r0,$r31,7168(0x1c00) # 1c0077ad <_sidata+0xda5>
1c005bb1:	6c1c001f 	bgeu	$r0,$r31,7168(0x1c00) # 1c0077b1 <_sidata+0xda9>
1c005bb5:	6c1c001f 	bgeu	$r0,$r31,7168(0x1c00) # 1c0077b5 <_sidata+0xdad>
1c005bb9:	6c1c001f 	bgeu	$r0,$r31,7168(0x1c00) # 1c0077b9 <_sidata+0xdb1>
1c005bbd:	6c1c001f 	bgeu	$r0,$r31,7168(0x1c00) # 1c0077bd <_sidata+0xdb5>
1c005bc1:	6c1c001f 	bgeu	$r0,$r31,7168(0x1c00) # 1c0077c1 <_sidata+0xdb9>
1c005bc5:	e81c001f 	0xe81c001f
1c005bc9:	e81c001f 	0xe81c001f
1c005bcd:	e81c001f 	0xe81c001f
1c005bd1:	e81c001f 	0xe81c001f
1c005bd5:	e81c001f 	0xe81c001f
1c005bd9:	e81c001f 	0xe81c001f
1c005bdd:	e81c001f 	0xe81c001f
1c005be1:	e81c001f 	0xe81c001f
1c005be5:	e81c001f 	0xe81c001f
1c005be9:	e81c001f 	0xe81c001f
1c005bed:	e81c001f 	0xe81c001f
1c005bf1:	e81c001f 	0xe81c001f
1c005bf5:	e81c001f 	0xe81c001f
1c005bf9:	e81c001f 	0xe81c001f
1c005bfd:	e81c001f 	0xe81c001f
1c005c01:	e81c001f 	0xe81c001f
1c005c05:	e81c001f 	0xe81c001f
1c005c09:	e81c001f 	0xe81c001f
1c005c0d:	e81c001f 	0xe81c001f
1c005c11:	e81c001f 	0xe81c001f
1c005c15:	e81c001f 	0xe81c001f
1c005c19:	e81c001f 	0xe81c001f
1c005c1d:	e81c001f 	0xe81c001f
1c005c21:	e81c001f 	0xe81c001f
1c005c25:	e81c001f 	0xe81c001f
1c005c29:	e81c001f 	0xe81c001f
1c005c2d:	e81c001f 	0xe81c001f
1c005c31:	e81c001f 	0xe81c001f
1c005c35:	e81c001f 	0xe81c001f
1c005c39:	e81c001f 	0xe81c001f
1c005c3d:	e81c001f 	0xe81c001f
1c005c41:	e81c001f 	0xe81c001f
1c005c45:	e81c001f 	0xe81c001f
1c005c49:	e81c001f 	0xe81c001f
1c005c4d:	e81c001f 	0xe81c001f
1c005c51:	e81c001f 	0xe81c001f
1c005c55:	e81c001f 	0xe81c001f
1c005c59:	e81c001f 	0xe81c001f
1c005c5d:	e81c001f 	0xe81c001f
1c005c61:	e81c001f 	0xe81c001f
1c005c65:	5c1c001f 	bne	$r0,$r31,7168(0x1c00) # 1c007865 <_sidata+0xe5d>
1c005c69:	841c001e 	0x841c001e
1c005c6d:	ec1c001d 	0xec1c001d
1c005c71:	e81c001d 	0xe81c001d
1c005c75:	e81c001f 	0xe81c001f
1c005c79:	e81c001f 	0xe81c001f
1c005c7d:	e81c001f 	0xe81c001f
1c005c81:	e81c001f 	0xe81c001f
1c005c85:	e81c001f 	0xe81c001f
1c005c89:	e81c001f 	0xe81c001f
1c005c8d:	e81c001f 	0xe81c001f
1c005c91:	e81c001f 	0xe81c001f
1c005c95:	e81c001f 	0xe81c001f
1c005c99:	241c001f 	ldptr.w	$r31,$r0,7168(0x1c00)
1c005c9d:	941c001e 	0x941c001e
1c005ca1:	e81c001e 	0xe81c001e
1c005ca5:	e81c001f 	0xe81c001f
1c005ca9:	581c001f 	beq	$r0,$r31,7168(0x1c00) # 1c0078a9 <_sidata+0xea1>
1c005cad:	e81c001d 	0xe81c001d
1c005cb1:	b41c001f 	0xb41c001f
1c005cb5:	e81c001d 	0xe81c001d
1c005cb9:	e81c001f 	0xe81c001f
1c005cbd:	941c001f 	0x941c001f
1c005cc1:	c01c001e 	0xc01c001e
1c005cc5:	e41c0022 	0xe41c0022
1c005cc9:	e41c0023 	0xe41c0023
1c005ccd:	e41c0023 	0xe41c0023
1c005cd1:	e41c0023 	0xe41c0023
1c005cd5:	e41c0023 	0xe41c0023
1c005cd9:	e41c0023 	0xe41c0023
1c005cdd:	e41c0023 	0xe41c0023
1c005ce1:	e41c0023 	0xe41c0023
1c005ce5:	e41c0023 	0xe41c0023
1c005ce9:	e41c0023 	0xe41c0023
1c005ced:	e01c0023 	0xe01c0023
1c005cf1:	681c0022 	bltu	$r1,$r2,7168(0x1c00) # 1c0078f1 <_sidata+0xee9>
1c005cf5:	681c0023 	bltu	$r1,$r3,7168(0x1c00) # 1c0078f5 <_sidata+0xeed>
1c005cf9:	681c0023 	bltu	$r1,$r3,7168(0x1c00) # 1c0078f9 <_sidata+0xef1>
1c005cfd:	681c0023 	bltu	$r1,$r3,7168(0x1c00) # 1c0078fd <_sidata+0xef5>
1c005d01:	681c0023 	bltu	$r1,$r3,7168(0x1c00) # 1c007901 <_sidata+0xef9>
1c005d05:	681c0023 	bltu	$r1,$r3,7168(0x1c00) # 1c007905 <_sidata+0xefd>
1c005d09:	681c0023 	bltu	$r1,$r3,7168(0x1c00) # 1c007909 <_sidata+0xf01>
1c005d0d:	681c0023 	bltu	$r1,$r3,7168(0x1c00) # 1c00790d <_sidata+0xf05>
1c005d11:	681c0023 	bltu	$r1,$r3,7168(0x1c00) # 1c007911 <_sidata+0xf09>
1c005d15:	e41c0023 	0xe41c0023
1c005d19:	e41c0023 	0xe41c0023
1c005d1d:	e41c0023 	0xe41c0023
1c005d21:	e41c0023 	0xe41c0023
1c005d25:	e41c0023 	0xe41c0023
1c005d29:	e41c0023 	0xe41c0023
1c005d2d:	e41c0023 	0xe41c0023
1c005d31:	e41c0023 	0xe41c0023
1c005d35:	e41c0023 	0xe41c0023
1c005d39:	e41c0023 	0xe41c0023
1c005d3d:	e41c0023 	0xe41c0023
1c005d41:	e41c0023 	0xe41c0023
1c005d45:	e41c0023 	0xe41c0023
1c005d49:	e41c0023 	0xe41c0023
1c005d4d:	e41c0023 	0xe41c0023
1c005d51:	e41c0023 	0xe41c0023
1c005d55:	e41c0023 	0xe41c0023
1c005d59:	e41c0023 	0xe41c0023
1c005d5d:	e41c0023 	0xe41c0023
1c005d61:	e41c0023 	0xe41c0023
1c005d65:	e41c0023 	0xe41c0023
1c005d69:	e41c0023 	0xe41c0023
1c005d6d:	e41c0023 	0xe41c0023
1c005d71:	e41c0023 	0xe41c0023
1c005d75:	e41c0023 	0xe41c0023
1c005d79:	e41c0023 	0xe41c0023
1c005d7d:	e41c0023 	0xe41c0023
1c005d81:	e41c0023 	0xe41c0023
1c005d85:	e41c0023 	0xe41c0023
1c005d89:	e41c0023 	0xe41c0023
1c005d8d:	7c1c0023 	0x7c1c0023
1c005d91:	e41c0022 	0xe41c0022
1c005d95:	e41c0023 	0xe41c0023
1c005d99:	e41c0023 	0xe41c0023
1c005d9d:	e41c0023 	0xe41c0023
1c005da1:	e41c0023 	0xe41c0023
1c005da5:	e41c0023 	0xe41c0023
1c005da9:	e41c0023 	0xe41c0023
1c005dad:	e41c0023 	0xe41c0023
1c005db1:	e41c0023 	0xe41c0023
1c005db5:	381c0023 	stx.d	$r3,$r1,$r0
1c005db9:	341c0022 	0x341c0022
1c005dbd:	b01c0021 	0xb01c0021
1c005dc1:	e41c0021 	0xe41c0021
1c005dc5:	e41c0023 	0xe41c0023
1c005dc9:	e41c0023 	0xe41c0023
1c005dcd:	e41c0023 	0xe41c0023
1c005dd1:	e41c0023 	0xe41c0023
1c005dd5:	e41c0023 	0xe41c0023
1c005dd9:	e41c0023 	0xe41c0023
1c005ddd:	e41c0023 	0xe41c0023
1c005de1:	e41c0023 	0xe41c0023
1c005de5:	e41c0023 	0xe41c0023
1c005de9:	f41c0023 	0xf41c0023
1c005ded:	7c1c0021 	0x7c1c0021
1c005df1:	e41c0022 	0xe41c0022
1c005df5:	e41c0023 	0xe41c0023
1c005df9:	001c0023 	mul.w	$r3,$r1,$r0
1c005dfd:	e41c0021 	0xe41c0021
1c005e01:	6c1c0023 	bgeu	$r1,$r3,7168(0x1c00) # 1c007a01 <_sidata+0xff9>
1c005e05:	e41c0021 	0xe41c0021
1c005e09:	e41c0023 	0xe41c0023
1c005e0d:	7c1c0023 	0x7c1c0023
1c005e11:	0a1c0022 	xvfmadd.s	$xr2,$xr1,$xr0,$xr24
1c005e15:	7c000000 	0x7c000000
1c005e19:	7c7c7c7c 	0x7c7c7c7c
1c005e1d:	7c7c7c7c 	0x7c7c7c7c
1c005e21:	7c7c7c7c 	0x7c7c7c7c
1c005e25:	7c7c7c7c 	0x7c7c7c7c
1c005e29:	7c7c7c7c 	0x7c7c7c7c
1c005e2d:	7c7c7c7c 	0x7c7c7c7c
1c005e31:	7c7c7c7c 	0x7c7c7c7c
1c005e35:	7c7c7c7c 	0x7c7c7c7c
1c005e39:	7c7c7c7c 	0x7c7c7c7c
1c005e3d:	7c7c7c7c 	0x7c7c7c7c
1c005e41:	7c7c7c7c 	0x7c7c7c7c
1c005e45:	7c7c7c7c 	0x7c7c7c7c
1c005e49:	7c7c7c7c 	0x7c7c7c7c
1c005e4d:	7c7c7c7c 	0x7c7c7c7c
1c005e51:	7c7c7c7c 	0x7c7c7c7c
1c005e55:	7c7c7c7c 	0x7c7c7c7c
1c005e59:	7c7c7c7c 	0x7c7c7c7c
1c005e5d:	7c7c7c7c 	0x7c7c7c7c
1c005e61:	7c7c7c7c 	0x7c7c7c7c
1c005e65:	7c7c7c7c 	0x7c7c7c7c
1c005e69:	7c7c7c7c 	0x7c7c7c7c
1c005e6d:	7c7c7c7c 	0x7c7c7c7c
1c005e71:	7c7c7c7c 	0x7c7c7c7c
1c005e75:	7c7c7c7c 	0x7c7c7c7c
1c005e79:	7c00000a 	0x7c00000a
1c005e7d:	7c20207c 	0x7c20207c
1c005e81:	7c7c7c7c 	0x7c7c7c7c
1c005e85:	7c7c7c7c 	0x7c7c7c7c
1c005e89:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c005e8d:	7c202020 	0x7c202020
1c005e91:	7c7c7c7c 	0x7c7c7c7c
1c005e95:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c005e99:	7c202020 	0x7c202020
1c005e9d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005ea1:	7c7c2020 	0x7c7c2020
1c005ea5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005ea9:	7c7c7c20 	0x7c7c7c20
1c005ead:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c005eb1:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c005eb5:	7c7c7c7c 	0x7c7c7c7c
1c005eb9:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c005ebd:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c005ec1:	7c7c7c7c 	0x7c7c7c7c
1c005ec5:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c005ec9:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c005ecd:	7c7c7c7c 	0x7c7c7c7c
1c005ed1:	7c202020 	0x7c202020
1c005ed5:	7c7c7c7c 	0x7c7c7c7c
1c005ed9:	7c7c2020 	0x7c7c2020
1c005edd:	7c00000a 	0x7c00000a
1c005ee1:	7c20207c 	0x7c20207c
1c005ee5:	7c7c7c7c 	0x7c7c7c7c
1c005ee9:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005eed:	7c7c2020 	0x7c7c2020
1c005ef1:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c005ef5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005ef9:	7c7c2020 	0x7c7c2020
1c005efd:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c005f01:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005f05:	7c202020 	0x7c202020
1c005f09:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005f0d:	7c7c7c20 	0x7c7c7c20
1c005f11:	7c20207c 	0x7c20207c
1c005f15:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005f19:	7c7c7c20 	0x7c7c7c20
1c005f1d:	7c202020 	0x7c202020
1c005f21:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005f25:	7c7c7c20 	0x7c7c7c20
1c005f29:	7c202020 	0x7c202020
1c005f2d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005f31:	7c7c7c20 	0x7c7c7c20
1c005f35:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c005f39:	7c7c7c7c 	0x7c7c7c7c
1c005f3d:	7c7c2020 	0x7c7c2020
1c005f41:	7c00000a 	0x7c00000a
1c005f45:	7c20207c 	0x7c20207c
1c005f49:	7c7c7c7c 	0x7c7c7c7c
1c005f4d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005f51:	7c7c7c20 	0x7c7c7c20
1c005f55:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005f59:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005f5d:	7c7c7c20 	0x7c7c7c20
1c005f61:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005f65:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005f69:	20207c20 	ll.w	$r0,$r1,8316(0x207c)
1c005f6d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005f71:	7c7c7c20 	0x7c7c7c20
1c005f75:	7c7c2020 	0x7c7c2020
1c005f79:	7c7c7c7c 	0x7c7c7c7c
1c005f7d:	7c7c7c7c 	0x7c7c7c7c
1c005f81:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c005f85:	7c7c7c20 	0x7c7c7c20
1c005f89:	7c7c7c7c 	0x7c7c7c7c
1c005f8d:	7c7c2020 	0x7c7c2020
1c005f91:	7c7c7c7c 	0x7c7c7c7c
1c005f95:	7c7c7c20 	0x7c7c7c20
1c005f99:	207c2020 	ll.w	$r0,$r1,31776(0x7c20)
1c005f9d:	7c7c7c20 	0x7c7c7c20
1c005fa1:	7c7c2020 	0x7c7c2020
1c005fa5:	7c00000a 	0x7c00000a
1c005fa9:	7c20207c 	0x7c20207c
1c005fad:	7c7c7c7c 	0x7c7c7c7c
1c005fb1:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005fb5:	7c7c7c20 	0x7c7c7c20
1c005fb9:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005fbd:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005fc1:	7c7c7c20 	0x7c7c7c20
1c005fc5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005fc9:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005fcd:	207c7c20 	ll.w	$r0,$r1,31868(0x7c7c)
1c005fd1:	207c7c20 	ll.w	$r0,$r1,31868(0x7c7c)
1c005fd5:	7c7c7c20 	0x7c7c7c20
1c005fd9:	7c7c2020 	0x7c7c2020
1c005fdd:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c005fe1:	7c7c7c20 	0x7c7c7c20
1c005fe5:	7c7c7c7c 	0x7c7c7c7c
1c005fe9:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c005fed:	7c7c7c7c 	0x7c7c7c7c
1c005ff1:	7c7c2020 	0x7c7c2020
1c005ff5:	7c7c7c7c 	0x7c7c7c7c
1c005ff9:	7c7c7c20 	0x7c7c7c20
1c005ffd:	7c7c2020 	0x7c7c2020
1c006001:	7c7c2020 	0x7c7c2020
1c006005:	7c7c2020 	0x7c7c2020
1c006009:	7c00000a 	0x7c00000a
1c00600d:	7c20207c 	0x7c20207c
1c006011:	7c7c7c7c 	0x7c7c7c7c
1c006015:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006019:	7c7c7c20 	0x7c7c7c20
1c00601d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006021:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006025:	7c7c7c20 	0x7c7c7c20
1c006029:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00602d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006031:	7c7c7c20 	0x7c7c7c20
1c006035:	207c2020 	ll.w	$r0,$r1,31776(0x7c20)
1c006039:	7c7c7c20 	0x7c7c7c20
1c00603d:	7c7c2020 	0x7c7c2020
1c006041:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006045:	7c7c7c20 	0x7c7c7c20
1c006049:	7c7c7c7c 	0x7c7c7c7c
1c00604d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006051:	7c7c7c20 	0x7c7c7c20
1c006055:	7c7c2020 	0x7c7c2020
1c006059:	7c7c7c7c 	0x7c7c7c7c
1c00605d:	7c7c7c20 	0x7c7c7c20
1c006061:	7c7c2020 	0x7c7c2020
1c006065:	7c20207c 	0x7c20207c
1c006069:	7c7c2020 	0x7c7c2020
1c00606d:	7c00000a 	0x7c00000a
1c006071:	7c20207c 	0x7c20207c
1c006075:	7c7c7c7c 	0x7c7c7c7c
1c006079:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00607d:	7c7c2020 	0x7c7c2020
1c006081:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006085:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006089:	7c7c2020 	0x7c7c2020
1c00608d:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006091:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006095:	7c7c7c20 	0x7c7c7c20
1c006099:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c00609d:	7c7c7c20 	0x7c7c7c20
1c0060a1:	7c202020 	0x7c202020
1c0060a5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0060a9:	7c7c7c20 	0x7c7c7c20
1c0060ad:	7c202020 	0x7c202020
1c0060b1:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0060b5:	7c7c7c7c 	0x7c7c7c7c
1c0060b9:	7c202020 	0x7c202020
1c0060bd:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0060c1:	7c7c7c20 	0x7c7c7c20
1c0060c5:	7c7c2020 	0x7c7c2020
1c0060c9:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0060cd:	7c7c2020 	0x7c7c2020
1c0060d1:	7c00000a 	0x7c00000a
1c0060d5:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c0060d9:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0060dd:	7c7c7c7c 	0x7c7c7c7c
1c0060e1:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0060e5:	7c202020 	0x7c202020
1c0060e9:	7c7c7c7c 	0x7c7c7c7c
1c0060ed:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0060f1:	7c202020 	0x7c202020
1c0060f5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0060f9:	7c7c7c20 	0x7c7c7c20
1c0060fd:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006101:	7c7c7c20 	0x7c7c7c20
1c006105:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c006109:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00610d:	7c7c7c7c 	0x7c7c7c7c
1c006111:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c006115:	7c202020 	0x7c202020
1c006119:	7c7c7c7c 	0x7c7c7c7c
1c00611d:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c006121:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006125:	7c7c7c7c 	0x7c7c7c7c
1c006129:	7c7c2020 	0x7c7c2020
1c00612d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006131:	7c7c2020 	0x7c7c2020
1c006135:	7c00000a 	0x7c00000a
1c006139:	7c7c7c7c 	0x7c7c7c7c
1c00613d:	7c7c7c7c 	0x7c7c7c7c
1c006141:	7c7c7c7c 	0x7c7c7c7c
1c006145:	7c7c7c7c 	0x7c7c7c7c
1c006149:	7c7c7c7c 	0x7c7c7c7c
1c00614d:	7c7c7c7c 	0x7c7c7c7c
1c006151:	7c7c7c7c 	0x7c7c7c7c
1c006155:	7c7c7c7c 	0x7c7c7c7c
1c006159:	7c7c7c7c 	0x7c7c7c7c
1c00615d:	325b7c7c 	xvldrepl.h	$xr28,$r3,-578(0xdbe)
1c006161:	20303230 	ll.w	$r16,$r17,12336(0x3030)
1c006165:	4e4f4f4c 	jirl	$r12,$r26,-110772(0x24f4c)
1c006169:	4e4f5347 	jirl	$r7,$r26,-110768(0x24f50)
1c00616d:	7c7c7c5d 	0x7c7c7c5d
1c006171:	7c7c7c7c 	0x7c7c7c7c
1c006175:	7c7c7c7c 	0x7c7c7c7c
1c006179:	7c7c7c7c 	0x7c7c7c7c
1c00617d:	7c7c7c7c 	0x7c7c7c7c
1c006181:	7c7c7c7c 	0x7c7c7c7c
1c006185:	7c7c7c7c 	0x7c7c7c7c
1c006189:	7c7c7c7c 	0x7c7c7c7c
1c00618d:	7c7c7c7c 	0x7c7c7c7c
1c006191:	7c7c7c7c 	0x7c7c7c7c
1c006195:	7c7c7c7c 	0x7c7c7c7c
1c006199:	5400000a 	bl	2621440(0x280000) # 1c286199 <_sidata+0x27f791>
1c00619d:	253a6d65 	stptr.w	$r5,$r11,14956(0x3a6c)
1c0061a1:	20202064 	ll.w	$r4,$r3,8224(0x2020)
1c0061a5:	00200a0d 	div.w	$r13,$r16,$r2
1c0061a9:	68000000 	bltu	$r0,$r0,0 # 1c0061a9 <hexdecarr+0x680>
1c0061ad:	64696d75 	bge	$r11,$r21,26988(0x696c) # 1c00cb19 <_sidata+0x6111>
1c0061b1:	2064253a 	ll.w	$r26,$r9,25636(0x6424)
1c0061b5:	0d202020 	xvbitsel.v	$xr0,$xr1,$xr8,$xr0
1c0061b9:	4500000a 	bnez	$r0,2686976(0x290000) # 1c2961b9 <_sidata+0x28f7b1>
1c0061bd:	0a0d6425 	0x0a0d6425
1c0061c1:	55000000 	bl	65536(0x10000) # 1c0161c1 <_sidata+0xf7b9>
1c0061c5:	0a0d6425 	0x0a0d6425
1c0061c9:	09000000 	0x09000000
1c0061cd:	0a006425 	0x0a006425
1c0061d1:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c0061d5:	776f440a 	xvssrarni.du.q	$xr10,$xr0,0x51
1c0061d9:	0d00006e 	fsel	$f14,$f3,$f0,$fcc0
1c0061dd:	0050550a 	0x0050550a
1c0061e1:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c0061e5:	6c754d0a 	bgeu	$r8,$r10,30028(0x754c) # 1c00d731 <_sidata+0x6d29>
1c0061e9:	776f4469 	xvssrarni.du.q	$xr9,$xr3,0x51
1c0061ed:	0d00006e 	fsel	$f14,$f3,$f0,$fcc0
1c0061f1:	756f430a 	0x756f430a
1c0061f5:	4f20746e 	jirl	$r14,$r3,-57228(0x32074)
1c0061f9:	0d000056 	fsel	$f22,$f2,$f0,$fcc0
1c0061fd:	3030090a 	0x3030090a
1c006201:	09313009 	0x09313009
1c006205:	30093230 	0x30093230
1c006209:	34300933 	0x34300933
1c00620d:	09353009 	0x09353009
1c006211:	30093630 	0x30093630
1c006215:	38300937 	fldx.s	$f23,$r9,$r2
1c006219:	09393009 	0x09393009
1c00621d:	31093031 	0x31093031
1c006221:	0d000031 	fsel	$f17,$f1,$f0,$fcc0
1c006225:	746e630a 	0x746e630a
1c006229:	09000000 	0x09000000
1c00622d:	00643425 	bstrins.w	$r5,$r1,0x4,0xd
1c006231:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c006235:	7361420a 	vssrani.w.d	$vr10,$vr16,0x10
1c006239:	6c615665 	bgeu	$r19,$r5,24916(0x6154) # 1c00c38d <_sidata+0x5985>
1c00623d:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c006241:	6275530a 	blt	$r24,$r10,-101040(0x27550) # 1bfed791 <_start-0x1286f>
1c006245:	006c6156 	bstrins.w	$r22,$r10,0xc,0x18
1c006249:	09000000 	0x09000000
1c00624d:	00643225 	bstrins.w	$r5,$r17,0x4,0xc
1c006251:	09000000 	0x09000000
1c006255:	00643325 	bstrins.w	$r5,$r25,0x4,0xc
1c006259:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c00625d:	203c200a 	ll.w	$r10,$r0,15392(0x3c20)
1c006261:	3a515249 	0x3a515249
1c006265:	20642520 	ll.w	$r0,$r9,25636(0x6424)
1c006269:	636e7566 	blt	$r11,$r6,-37260(0x36e74) # 1bffd0dd <_start-0x2f23>
1c00626d:	2073253a 	ll.w	$r26,$r9,29476(0x7324)
1c006271:	0d3e2020 	0x0d3e2020
1c006275:	0a00000a 	0x0a00000a
1c006279:	2e2e2e2e 	0x2e2e2e2e
1c00627d:	2e2e2e2e 	0x2e2e2e2e
1c006281:	2e2e2e2e 	0x2e2e2e2e
1c006285:	464f532e 	bnez	$r25,3821392(0x3a4f50) # 1c3ab1d5 <_sidata+0x3a47cd>
1c006289:	4e495f54 	jirl	$r20,$r26,-112292(0x2495c)
1c00628d:	2e2e2e54 	0x2e2e2e54
1c006291:	2e2e2e2e 	0x2e2e2e2e
1c006295:	2e2e2e2e 	0x2e2e2e2e
1c006299:	0a2e2e2e 	xvfmadd.d	$xr14,$xr17,$xr11,$xr28
1c00629d:	0d00000d 	fsel	$f13,$f0,$f0,$fcc0
1c0062a1:	2e2e2e0a 	0x2e2e2e0a
1c0062a5:	2e2e2e2e 	0x2e2e2e2e
1c0062a9:	2e2e2e2e 	0x2e2e2e2e
1c0062ad:	41422e2e 	beqz	$r17,3752492(0x39422c) # 1c39a4d9 <_sidata+0x393ad1>
1c0062b1:	41465f54 	beqz	$r26,-3062180(0x51465c) # 1bd1a90d <_start-0x2e56f3>
1c0062b5:	2e2e4c49 	0x2e2e4c49
1c0062b9:	2e2e2e2e 	0x2e2e2e2e
1c0062bd:	2e2e2e2e 	0x2e2e2e2e
1c0062c1:	2e2e2e2e 	0x2e2e2e2e
1c0062c5:	0d000a0d 	fsel	$f13,$f16,$f2,$fcc0
1c0062c9:	2e2e2e0a 	0x2e2e2e0a
1c0062cd:	2e2e2e2e 	0x2e2e2e2e
1c0062d1:	2e2e2e2e 	0x2e2e2e2e
1c0062d5:	44412e2e 	bnez	$r17,3686700(0x38412c) # 1c38a401 <_sidata+0x3839f9>
1c0062d9:	2e2e2e43 	0x2e2e2e43
1c0062dd:	2e2e2e2e 	0x2e2e2e2e
1c0062e1:	2e2e2e2e 	0x2e2e2e2e
1c0062e5:	0d2e2e2e 	xvbitsel.v	$xr14,$xr17,$xr11,$xr28
1c0062e9:	4300000a 	beqz	$r0,2818048(0x2b0000) # 1c2b62e9 <_sidata+0x2af8e1>
1c0062ed:	2065726f 	ll.w	$r15,$r19,25968(0x6570)
1c0062f1:	656d6954 	bge	$r10,$r20,93544(0x16d68) # 1c01d059 <_sidata+0x16651>
1c0062f5:	6c632072 	bgeu	$r3,$r18,25376(0x6320) # 1c00c615 <_sidata+0x5c0d>
1c0062f9:	20726165 	ll.w	$r5,$r11,29280(0x7260)
1c0062fd:	65746e69 	bge	$r19,$r9,95340(0x1746c) # 1c01d769 <_sidata+0x16d61>
1c006301:	70757272 	vmax.wu	$vr18,$vr19,$vr28
1c006305:	0d2e2e74 	xvbitsel.v	$xr20,$xr19,$xr11,$xr28
1c006309:	 	0x8400000a

1c00630c <Ext_IrqHandle>:
1c00630c:	1c004584 	pcaddu12i	$r4,556(0x22c)
1c006310:	1c0045d0 	pcaddu12i	$r16,558(0x22e)
1c006314:	1c00461c 	pcaddu12i	$r28,560(0x230)
1c006318:	1c004668 	pcaddu12i	$r8,563(0x233)
1c00631c:	1c0046b4 	pcaddu12i	$r20,565(0x235)
1c006320:	1c004700 	pcaddu12i	$r0,568(0x238)
1c006324:	1c00474c 	pcaddu12i	$r12,570(0x23a)
1c006328:	1c004798 	pcaddu12i	$r24,572(0x23c)
1c00632c:	1c0047e4 	pcaddu12i	$r4,575(0x23f)
1c006330:	1c004830 	pcaddu12i	$r16,577(0x241)
1c006334:	1c00487c 	pcaddu12i	$r28,579(0x243)
1c006338:	1c0048c8 	pcaddu12i	$r8,582(0x246)
1c00633c:	1c004914 	pcaddu12i	$r20,584(0x248)
1c006340:	1c004960 	pcaddu12i	$r0,587(0x24b)
1c006344:	1c0049ac 	pcaddu12i	$r12,589(0x24d)
1c006348:	1c0049f8 	pcaddu12i	$r24,591(0x24f)
1c00634c:	1c004a44 	pcaddu12i	$r4,594(0x252)
1c006350:	1c004a90 	pcaddu12i	$r16,596(0x254)
1c006354:	1c004adc 	pcaddu12i	$r28,598(0x256)
1c006358:	1c004b28 	pcaddu12i	$r8,601(0x259)
1c00635c:	1c004b74 	pcaddu12i	$r20,603(0x25b)
1c006360:	1c004bc0 	pcaddu12i	$r0,606(0x25e)
1c006364:	1c004c0c 	pcaddu12i	$r12,608(0x260)
1c006368:	1c004c58 	pcaddu12i	$r24,610(0x262)
1c00636c:	1c004ca4 	pcaddu12i	$r4,613(0x265)
1c006370:	1c004cf0 	pcaddu12i	$r16,615(0x267)
1c006374:	1c004d3c 	pcaddu12i	$r28,617(0x269)
1c006378:	1c004d88 	pcaddu12i	$r8,620(0x26c)
1c00637c:	1c004dd4 	pcaddu12i	$r20,622(0x26e)
1c006380:	1c004e20 	pcaddu12i	$r0,625(0x271)
1c006384:	1c004e6c 	pcaddu12i	$r12,627(0x273)
1c006388:	1c004eb8 	pcaddu12i	$r24,629(0x275)
1c00638c:	1c00519c 	pcaddu12i	$r28,652(0x28c)
1c006390:	1c00514c 	pcaddu12i	$r12,650(0x28a)
1c006394:	1c00519c 	pcaddu12i	$r28,652(0x28c)
1c006398:	1c00519c 	pcaddu12i	$r28,652(0x28c)
1c00639c:	1c00519c 	pcaddu12i	$r28,652(0x28c)
1c0063a0:	1c00519c 	pcaddu12i	$r28,652(0x28c)
1c0063a4:	1c00519c 	pcaddu12i	$r28,652(0x28c)
1c0063a8:	1c00519c 	pcaddu12i	$r28,652(0x28c)
1c0063ac:	1c00519c 	pcaddu12i	$r28,652(0x28c)
1c0063b0:	1c00519c 	pcaddu12i	$r28,652(0x28c)
1c0063b4:	1c00519c 	pcaddu12i	$r28,652(0x28c)
1c0063b8:	1c00519c 	pcaddu12i	$r28,652(0x28c)
1c0063bc:	1c00519c 	pcaddu12i	$r28,652(0x28c)
1c0063c0:	1c00519c 	pcaddu12i	$r28,652(0x28c)
1c0063c4:	1c00519c 	pcaddu12i	$r28,652(0x28c)
1c0063c8:	1c00519c 	pcaddu12i	$r28,652(0x28c)
1c0063cc:	1c005168 	pcaddu12i	$r8,651(0x28b)

1c0063d0 <__FUNCTION__.1642>:
1c0063d0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01d848 <_sidata+0x16e40>
1c0063d4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d438 <_sidata+0x16a30>
1c0063d8:	5f30616f 	bne	$r11,$r15,-53152(0x33060) # 1bff9438 <_start-0x6bc8>
1c0063dc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd54c <_start-0x2ab4>
1c0063e0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d240 <_sidata+0x6838>
1c0063e4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0063e8 <__FUNCTION__.1646>:
1c0063e8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01d860 <_sidata+0x16e58>
1c0063ec:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d450 <_sidata+0x16a48>
1c0063f0:	5f31616f 	bne	$r11,$r15,-52896(0x33160) # 1bff9550 <_start-0x6ab0>
1c0063f4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd564 <_start-0x2a9c>
1c0063f8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d258 <_sidata+0x6850>
1c0063fc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006400 <__FUNCTION__.1650>:
1c006400:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01d878 <_sidata+0x16e70>
1c006404:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d468 <_sidata+0x16a60>
1c006408:	5f32616f 	bne	$r11,$r15,-52640(0x33260) # 1bff9668 <_start-0x6998>
1c00640c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd57c <_start-0x2a84>
1c006410:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d270 <_sidata+0x6868>
1c006414:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006418 <__FUNCTION__.1654>:
1c006418:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01d890 <_sidata+0x16e88>
1c00641c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d480 <_sidata+0x16a78>
1c006420:	5f33616f 	bne	$r11,$r15,-52384(0x33360) # 1bff9780 <_start-0x6880>
1c006424:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd594 <_start-0x2a6c>
1c006428:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d288 <_sidata+0x6880>
1c00642c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006430 <__FUNCTION__.1658>:
1c006430:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01d8a8 <_sidata+0x16ea0>
1c006434:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d498 <_sidata+0x16a90>
1c006438:	5f34616f 	bne	$r11,$r15,-52128(0x33460) # 1bff9898 <_start-0x6768>
1c00643c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd5ac <_start-0x2a54>
1c006440:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d2a0 <_sidata+0x6898>
1c006444:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006448 <__FUNCTION__.1662>:
1c006448:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01d8c0 <_sidata+0x16eb8>
1c00644c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d4b0 <_sidata+0x16aa8>
1c006450:	5f35616f 	bne	$r11,$r15,-51872(0x33560) # 1bff99b0 <_start-0x6650>
1c006454:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd5c4 <_start-0x2a3c>
1c006458:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d2b8 <_sidata+0x68b0>
1c00645c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006460 <__FUNCTION__.1666>:
1c006460:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01d8d8 <_sidata+0x16ed0>
1c006464:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d4c8 <_sidata+0x16ac0>
1c006468:	5f36616f 	bne	$r11,$r15,-51616(0x33660) # 1bff9ac8 <_start-0x6538>
1c00646c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd5dc <_start-0x2a24>
1c006470:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d2d0 <_sidata+0x68c8>
1c006474:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006478 <__FUNCTION__.1670>:
1c006478:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01d8f0 <_sidata+0x16ee8>
1c00647c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d4e0 <_sidata+0x16ad8>
1c006480:	5f37616f 	bne	$r11,$r15,-51360(0x33760) # 1bff9be0 <_start-0x6420>
1c006484:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd5f4 <_start-0x2a0c>
1c006488:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d2e8 <_sidata+0x68e0>
1c00648c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006490 <__FUNCTION__.1674>:
1c006490:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01d908 <_sidata+0x16f00>
1c006494:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d4f8 <_sidata+0x16af0>
1c006498:	5f30626f 	bne	$r19,$r15,-53152(0x33060) # 1bff94f8 <_start-0x6b08>
1c00649c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd60c <_start-0x29f4>
1c0064a0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d300 <_sidata+0x68f8>
1c0064a4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0064a8 <__FUNCTION__.1678>:
1c0064a8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01d920 <_sidata+0x16f18>
1c0064ac:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d510 <_sidata+0x16b08>
1c0064b0:	5f31626f 	bne	$r19,$r15,-52896(0x33160) # 1bff9610 <_start-0x69f0>
1c0064b4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd624 <_start-0x29dc>
1c0064b8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d318 <_sidata+0x6910>
1c0064bc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0064c0 <__FUNCTION__.1682>:
1c0064c0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01d938 <_sidata+0x16f30>
1c0064c4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d528 <_sidata+0x16b20>
1c0064c8:	5f32626f 	bne	$r19,$r15,-52640(0x33260) # 1bff9728 <_start-0x68d8>
1c0064cc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd63c <_start-0x29c4>
1c0064d0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d330 <_sidata+0x6928>
1c0064d4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0064d8 <__FUNCTION__.1686>:
1c0064d8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01d950 <_sidata+0x16f48>
1c0064dc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d540 <_sidata+0x16b38>
1c0064e0:	5f33626f 	bne	$r19,$r15,-52384(0x33360) # 1bff9840 <_start-0x67c0>
1c0064e4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd654 <_start-0x29ac>
1c0064e8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d348 <_sidata+0x6940>
1c0064ec:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0064f0 <__FUNCTION__.1690>:
1c0064f0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01d968 <_sidata+0x16f60>
1c0064f4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d558 <_sidata+0x16b50>
1c0064f8:	5f34626f 	bne	$r19,$r15,-52128(0x33460) # 1bff9958 <_start-0x66a8>
1c0064fc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd66c <_start-0x2994>
1c006500:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d360 <_sidata+0x6958>
1c006504:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006508 <__FUNCTION__.1694>:
1c006508:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01d980 <_sidata+0x16f78>
1c00650c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d570 <_sidata+0x16b68>
1c006510:	5f35626f 	bne	$r19,$r15,-51872(0x33560) # 1bff9a70 <_start-0x6590>
1c006514:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd684 <_start-0x297c>
1c006518:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d378 <_sidata+0x6970>
1c00651c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006520 <__FUNCTION__.1698>:
1c006520:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01d998 <_sidata+0x16f90>
1c006524:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d588 <_sidata+0x16b80>
1c006528:	5f36626f 	bne	$r19,$r15,-51616(0x33660) # 1bff9b88 <_start-0x6478>
1c00652c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd69c <_start-0x2964>
1c006530:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d390 <_sidata+0x6988>
1c006534:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006538 <__FUNCTION__.1702>:
1c006538:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01d9b0 <_sidata+0x16fa8>
1c00653c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d5a0 <_sidata+0x16b98>
1c006540:	5f37626f 	bne	$r19,$r15,-51360(0x33760) # 1bff9ca0 <_start-0x6360>
1c006544:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd6b4 <_start-0x294c>
1c006548:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d3a8 <_sidata+0x69a0>
1c00654c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006550 <__FUNCTION__.1706>:
1c006550:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01d9c8 <_sidata+0x16fc0>
1c006554:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d5b8 <_sidata+0x16bb0>
1c006558:	5f30636f 	bne	$r27,$r15,-53152(0x33060) # 1bff95b8 <_start-0x6a48>
1c00655c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd6cc <_start-0x2934>
1c006560:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d3c0 <_sidata+0x69b8>
1c006564:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006568 <__FUNCTION__.1710>:
1c006568:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01d9e0 <_sidata+0x16fd8>
1c00656c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d5d0 <_sidata+0x16bc8>
1c006570:	5f31636f 	bne	$r27,$r15,-52896(0x33160) # 1bff96d0 <_start-0x6930>
1c006574:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd6e4 <_start-0x291c>
1c006578:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d3d8 <_sidata+0x69d0>
1c00657c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006580 <__FUNCTION__.1714>:
1c006580:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01d9f8 <_sidata+0x16ff0>
1c006584:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d5e8 <_sidata+0x16be0>
1c006588:	5f32636f 	bne	$r27,$r15,-52640(0x33260) # 1bff97e8 <_start-0x6818>
1c00658c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd6fc <_start-0x2904>
1c006590:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d3f0 <_sidata+0x69e8>
1c006594:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006598 <__FUNCTION__.1718>:
1c006598:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01da10 <_sidata+0x17008>
1c00659c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d600 <_sidata+0x16bf8>
1c0065a0:	5f33636f 	bne	$r27,$r15,-52384(0x33360) # 1bff9900 <_start-0x6700>
1c0065a4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd714 <_start-0x28ec>
1c0065a8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d408 <_sidata+0x6a00>
1c0065ac:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0065b0 <__FUNCTION__.1722>:
1c0065b0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01da28 <_sidata+0x17020>
1c0065b4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d618 <_sidata+0x16c10>
1c0065b8:	5f34636f 	bne	$r27,$r15,-52128(0x33460) # 1bff9a18 <_start-0x65e8>
1c0065bc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd72c <_start-0x28d4>
1c0065c0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d420 <_sidata+0x6a18>
1c0065c4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0065c8 <__FUNCTION__.1726>:
1c0065c8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01da40 <_sidata+0x17038>
1c0065cc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d630 <_sidata+0x16c28>
1c0065d0:	5f35636f 	bne	$r27,$r15,-51872(0x33560) # 1bff9b30 <_start-0x64d0>
1c0065d4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd744 <_start-0x28bc>
1c0065d8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d438 <_sidata+0x6a30>
1c0065dc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0065e0 <__FUNCTION__.1730>:
1c0065e0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01da58 <_sidata+0x17050>
1c0065e4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d648 <_sidata+0x16c40>
1c0065e8:	5f36636f 	bne	$r27,$r15,-51616(0x33660) # 1bff9c48 <_start-0x63b8>
1c0065ec:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd75c <_start-0x28a4>
1c0065f0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d450 <_sidata+0x6a48>
1c0065f4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0065f8 <__FUNCTION__.1734>:
1c0065f8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01da70 <_sidata+0x17068>
1c0065fc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d660 <_sidata+0x16c58>
1c006600:	5f37636f 	bne	$r27,$r15,-51360(0x33760) # 1bff9d60 <_start-0x62a0>
1c006604:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd774 <_start-0x288c>
1c006608:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d468 <_sidata+0x6a60>
1c00660c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006610 <__FUNCTION__.1738>:
1c006610:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01da88 <_sidata+0x17080>
1c006614:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d678 <_sidata+0x16c70>
1c006618:	5f30646f 	bne	$r3,$r15,-53148(0x33064) # 1bff967c <_start-0x6984>
1c00661c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd78c <_start-0x2874>
1c006620:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d480 <_sidata+0x6a78>
1c006624:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006628 <__FUNCTION__.1742>:
1c006628:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01daa0 <_sidata+0x17098>
1c00662c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d690 <_sidata+0x16c88>
1c006630:	5f31646f 	bne	$r3,$r15,-52892(0x33164) # 1bff9794 <_start-0x686c>
1c006634:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd7a4 <_start-0x285c>
1c006638:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d498 <_sidata+0x6a90>
1c00663c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006640 <__FUNCTION__.1746>:
1c006640:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dab8 <_sidata+0x170b0>
1c006644:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d6a8 <_sidata+0x16ca0>
1c006648:	5f32646f 	bne	$r3,$r15,-52636(0x33264) # 1bff98ac <_start-0x6754>
1c00664c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd7bc <_start-0x2844>
1c006650:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d4b0 <_sidata+0x6aa8>
1c006654:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006658 <__FUNCTION__.1750>:
1c006658:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dad0 <_sidata+0x170c8>
1c00665c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d6c0 <_sidata+0x16cb8>
1c006660:	5f33646f 	bne	$r3,$r15,-52380(0x33364) # 1bff99c4 <_start-0x663c>
1c006664:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd7d4 <_start-0x282c>
1c006668:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d4c8 <_sidata+0x6ac0>
1c00666c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006670 <__FUNCTION__.1754>:
1c006670:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dae8 <_sidata+0x170e0>
1c006674:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d6d8 <_sidata+0x16cd0>
1c006678:	5f34646f 	bne	$r3,$r15,-52124(0x33464) # 1bff9adc <_start-0x6524>
1c00667c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd7ec <_start-0x2814>
1c006680:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d4e0 <_sidata+0x6ad8>
1c006684:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006688 <__FUNCTION__.1758>:
1c006688:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01db00 <_sidata+0x170f8>
1c00668c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d6f0 <_sidata+0x16ce8>
1c006690:	5f35646f 	bne	$r3,$r15,-51868(0x33564) # 1bff9bf4 <_start-0x640c>
1c006694:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd804 <_start-0x27fc>
1c006698:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d4f8 <_sidata+0x6af0>
1c00669c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0066a0 <__FUNCTION__.1762>:
1c0066a0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01db18 <_sidata+0x17110>
1c0066a4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d708 <_sidata+0x16d00>
1c0066a8:	5f36646f 	bne	$r3,$r15,-51612(0x33664) # 1bff9d0c <_start-0x62f4>
1c0066ac:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd81c <_start-0x27e4>
1c0066b0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d510 <_sidata+0x6b08>
1c0066b4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0066b8 <__FUNCTION__.1766>:
1c0066b8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01db30 <_sidata+0x17128>
1c0066bc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d720 <_sidata+0x16d18>
1c0066c0:	5f37646f 	bne	$r3,$r15,-51356(0x33764) # 1bff9e24 <_start-0x61dc>
1c0066c4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd834 <_start-0x27cc>
1c0066c8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d528 <_sidata+0x6b20>
1c0066cc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19
1c0066d0:	30303632 	0x30303632
1c0066d4:	2520203a 	stptr.w	$r26,$r1,8224(0x2020)
1c0066d8:	20202064 	ll.w	$r4,$r3,8224(0x2020)
1c0066dc:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0066e0:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0066e4:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0066e8:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0066ec:	0a0d2020 	0x0a0d2020
1c0066f0:	00000000 	0x00000000
1c0066f4:	30313632 	0x30313632
1c0066f8:	2520203a 	stptr.w	$r26,$r1,8224(0x2020)
1c0066fc:	20202064 	ll.w	$r4,$r3,8224(0x2020)
1c006700:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006704:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006708:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00670c:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006710:	0a0d2020 	0x0a0d2020
1c006714:	00000000 	0x00000000
1c006718:	31313632 	0x31313632
1c00671c:	2520203a 	stptr.w	$r26,$r1,8224(0x2020)
1c006720:	20202064 	ll.w	$r4,$r3,8224(0x2020)
1c006724:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006728:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00672c:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006730:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006734:	0a0d2020 	0x0a0d2020
1c006738:	00000000 	0x00000000
1c00673c:	30323632 	0x30323632
1c006740:	2520203a 	stptr.w	$r26,$r1,8224(0x2020)
1c006744:	20202064 	ll.w	$r4,$r3,8224(0x2020)
1c006748:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00674c:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006750:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006754:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006758:	0a0d2020 	0x0a0d2020
1c00675c:	00000000 	0x00000000
1c006760:	696c6e6f 	bltu	$r19,$r15,93292(0x16c6c) # 1c01d3cc <_sidata+0x169c4>
1c006764:	0000656e 	rdtimeh.w	$r14,$r11
1c006768:	0d642541 	xvshuf.b	$xr1,$xr10,$xr9,$xr8
1c00676c:	0000000a 	0x0000000a
1c006770:	0d642542 	xvshuf.b	$xr2,$xr10,$xr9,$xr8
1c006774:	0000000a 	0x0000000a
1c006778:	0d642543 	xvshuf.b	$xr3,$xr10,$xr9,$xr8
1c00677c:	0000000a 	0x0000000a
1c006780:	0d642544 	xvshuf.b	$xr4,$xr10,$xr9,$xr8
1c006784:	0000000a 	0x0000000a
1c006788:	00004e4f 	bitrev.8b	$r15,$r18
1c00678c:	3a6b6361 	0x3a6b6361
1c006790:	0a0d4e4f 	0x0a0d4e4f
1c006794:	00000000 	0x00000000
1c006798:	0046464f 	0x0046464f
1c00679c:	3a6b6361 	0x3a6b6361
1c0067a0:	0d46464f 	0x0d46464f
1c0067a4:	0000000a 	0x0000000a
1c0067a8:	63656863 	blt	$r3,$r3,-39576(0x36568) # 1bffcd10 <_start-0x32f0>
1c0067ac:	4155206b 	beqz	$r3,2970912(0x2d5520) # 1c2dbccc <_sidata+0x2d52c4>
1c0067b0:	5f305452 	bne	$r2,$r18,-53164(0x33054) # 1bff9804 <_start-0x67fc>
1c0067b4:	425f5852 	beqz	$r2,-3514536(0x4a5f58) # 1bcac70c <_start-0x3538f4>
1c0067b8:	253a4655 	stptr.w	$r21,$r18,14916(0x3a44)
1c0067bc:	000a0d73 	0x000a0d73
1c0067c0:	3a646d63 	0x3a646d63
1c0067c4:	0a0d7325 	0x0a0d7325
1c0067c8:	00000000 	0x00000000
1c0067cc:	0a0d7325 	0x0a0d7325
1c0067d0:	00000000 	0x00000000
1c0067d4:	3a6b6361 	0x3a6b6361
1c0067d8:	0a0d7325 	0x0a0d7325
1c0067dc:	00000000 	0x00000000
1c0067e0:	3a736572 	0x3a736572
1c0067e4:	0a0d6425 	0x0a0d6425
1c0067e8:	00000000 	0x00000000
1c0067ec:	432b5441 	beqz	$r2,469844(0x72b54) # 1c079340 <_sidata+0x72938>
1c0067f0:	444f4d57 	bnez	$r10,-2338996(0x5c4f4c) # 1bdcb73c <_start-0x2348c4>
1c0067f4:	0d313d45 	0x0d313d45
1c0067f8:	0000000a 	0x0000000a
1c0067fc:	00004b4f 	bitrev.4b	$r15,$r26
1c006800:	432b5441 	beqz	$r2,469844(0x72b54) # 1c079354 <_sidata+0x7294c>
1c006804:	444f4d57 	bnez	$r10,-2338996(0x5c4f4c) # 1bdcb750 <_start-0x2348b0>
1c006808:	00313d45 	0x00313d45
1c00680c:	522b5441 	b	17181524(0x1062b54) # 1d069360 <_sidata+0x1062958>
1c006810:	0a0d5453 	0x0a0d5453
1c006814:	00000000 	0x00000000
1c006818:	522b5441 	b	17181524(0x1062b54) # 1d06936c <_sidata+0x1062964>
1c00681c:	00005453 	bitrev.d	$r19,$r2
1c006820:	432b5441 	beqz	$r2,469844(0x72b54) # 1c079374 <_sidata+0x7296c>
1c006824:	50414a57 	b	-111394488(0x95c4148) # 155ca96c <_start-0x6a35694>
1c006828:	3031783d 	0x3031783d
1c00682c:	3332312c 	xvstelm.w	$xr12,$r9,-464(0x230),0x4
1c006830:	37363534 	0x37363534
1c006834:	000a0d38 	0x000a0d38
1c006838:	432b5441 	beqz	$r2,469844(0x72b54) # 1c07938c <_sidata+0x72984>
1c00683c:	50414a57 	b	-111394488(0x95c4148) # 155ca984 <_start-0x6a3567c>
1c006840:	3178223d 	0x3178223d
1c006844:	222c2230 	ll.d	$r16,$r17,11296(0x2c20)
1c006848:	34333231 	0x34333231
1c00684c:	38373635 	0x38373635
1c006850:	00000022 	0x00000022
1c006854:	432b5441 	beqz	$r2,469844(0x72b54) # 1c0793a8 <_sidata+0x729a0>
1c006858:	554d5049 	bl	19221840(0x1254d50) # 1d25b5a8 <_sidata+0x1254ba0>
1c00685c:	0d303d58 	0x0d303d58
1c006860:	0000000a 	0x0000000a
1c006864:	432b5441 	beqz	$r2,469844(0x72b54) # 1c0793b8 <_sidata+0x729b0>
1c006868:	554d5049 	bl	19221840(0x1254d50) # 1d25b5b8 <_sidata+0x1254bb0>
1c00686c:	00303d58 	0x00303d58
1c006870:	432b5441 	beqz	$r2,469844(0x72b54) # 1c0793c4 <_sidata+0x729bc>
1c006874:	54535049 	bl	19157840(0x1245350) # 1d24bbc4 <_sidata+0x12451bc>
1c006878:	3d545241 	0x3d545241
1c00687c:	2c504354 	vst	$vr20,$r26,1040(0x410)
1c006880:	2e323731 	0x2e323731
1c006884:	312e3032 	vstelm.w	$vr18,$r1,-464(0x230),0x3
1c006888:	2c332e30 	vld	$vr16,$r17,-821(0xccb)
1c00688c:	30383038 	0x30383038
1c006890:	00000a0d 	0x00000a0d
1c006894:	432b5441 	beqz	$r2,469844(0x72b54) # 1c0793e8 <_sidata+0x729e0>
1c006898:	54535049 	bl	19157840(0x1245350) # 1d24bbe8 <_sidata+0x12451e0>
1c00689c:	3d545241 	0x3d545241
1c0068a0:	50435422 	b	8930132(0x884354) # 1c88abf4 <_sidata+0x8841ec>
1c0068a4:	31222c22 	vstelm.w	$vr2,$r1,-468(0x22c),0x0
1c0068a8:	322e3237 	xvldrepl.w	$xr23,$r17,-464(0xe30)
1c0068ac:	30312e30 	0x30312e30
1c0068b0:	2c22332e 	vld	$vr14,$r25,-1908(0x88c)
1c0068b4:	30383038 	0x30383038
1c0068b8:	00000000 	0x00000000
1c0068bc:	432b5441 	beqz	$r2,469844(0x72b54) # 1c079410 <_sidata+0x72a08>
1c0068c0:	4f4d5049 	jirl	$r9,$r2,-45744(0x34d50)
1c0068c4:	313d4544 	0x313d4544
1c0068c8:	00000a0d 	0x00000a0d
1c0068cc:	432b5441 	beqz	$r2,469844(0x72b54) # 1c079420 <_sidata+0x72a18>
1c0068d0:	4f4d5049 	jirl	$r9,$r2,-45744(0x34d50)
1c0068d4:	313d4544 	0x313d4544
1c0068d8:	00000000 	0x00000000
1c0068dc:	432b5441 	beqz	$r2,469844(0x72b54) # 1c079430 <_sidata+0x72a28>
1c0068e0:	45535049 	bnez	$r2,2446160(0x255350) # 1c25bc30 <_sidata+0x255228>
1c0068e4:	0a0d444e 	0x0a0d444e
1c0068e8:	00000000 	0x00000000
1c0068ec:	432b5441 	beqz	$r2,469844(0x72b54) # 1c079440 <_sidata+0x72a38>
1c0068f0:	45535049 	bnez	$r2,2446160(0x255350) # 1c25bc40 <_sidata+0x255238>
1c0068f4:	0000444e 	revh.d	$r14,$r2
1c0068f8:	00007325 	0x00007325
1c0068fc:	6c6c6568 	bgeu	$r11,$r8,27748(0x6c64) # 1c00d560 <_sidata+0x6b58>
1c006900:	2f722f6f 	0x2f722f6f
1c006904:	2020206e 	ll.w	$r14,$r3,8224(0x2020)
1c006908:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00690c:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006910:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006914:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006918:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00691c:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006920:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006924:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006928:	00000020 	0x00000020
1c00692c:	00005441 	bitrev.d	$r1,$r2
1c006930:	49466957 	bcnez	$fcc2,-2275736(0x5d4668) # 1bddaf98 <_start-0x225068>
1c006934:	73657420 	vssrani.wu.d	$vr0,$vr1,0x1d
1c006938:	69662074 	bltu	$r3,$r20,91680(0x16620) # 1c01cf58 <_sidata+0x16550>
1c00693c:	6568736e 	bge	$r27,$r14,92272(0x16870) # 1c01d1ac <_sidata+0x167a4>
1c006940:	20202064 	ll.w	$r4,$r3,8224(0x2020)
1c006944:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006948:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00694c:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006950:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006954:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006958:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00695c:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006960:	00000000 	0x00000000
1c006964:	49464957 	bcnez	$fcc2,-2275768(0x5d4648) # 1bddafac <_start-0x225054>
1c006968:	544f4720 	bl	-58699964(0xc804f44) # 1880b8ac <_start-0x37f4754>
1c00696c:	00504920 	0x00504920
1c006970:	432b5441 	beqz	$r2,469844(0x72b54) # 1c0794c4 <_sidata+0x72abc>
1c006974:	50414a57 	b	-111394488(0x95c4148) # 155caabc <_start-0x6a35544>
1c006978:	4759223d 	bnez	$r17,-567008(0x775920) # 1bf7c298 <_start-0x83d68>
1c00697c:	2c22484e 	vld	$vr14,$r2,-1902(0x892)
1c006980:	63667922 	blt	$r9,$r2,-39304(0x36678) # 1bffcff8 <_start-0x3008>
1c006984:	32393231 	0x32393231
1c006988:	37363833 	0x37363833
1c00698c:	00223731 	div.d	$r17,$r25,$r13
1c006990:	69666977 	bltu	$r11,$r23,91752(0x16668) # 1c01cff8 <_sidata+0x165f0>
1c006994:	6e6f6320 	bgeu	$r25,$r0,-102560(0x26f60) # 1bfed8f4 <_start-0x1270c>
1c006998:	7463656e 	xvabsd.wu	$xr14,$xr11,$xr25
1c00699c:	20206465 	ll.w	$r5,$r3,8292(0x2064)
1c0069a0:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0069a4:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0069a8:	00000020 	0x00000020
1c0069ac:	554f4c43 	bl	17649484(0x10d4f4c) # 1d0db8f8 <_sidata+0x10d4ef0>
1c0069b0:	4f432044 	jirl	$r4,$r2,-48352(0x34320)
1c0069b4:	43454e4e 	beqz	$r18,3884364(0x3b454c) # 1c3baf00 <_sidata+0x3b44f8>
1c0069b8:	00444554 	0x00444554
1c0069bc:	412b5441 	beqz	$r2,338772(0x52b54) # 1c059510 <_sidata+0x52b08>
1c0069c0:	4c434b54 	jirl	$r20,$r26,17224(0x4348)
1c0069c4:	41545344 	beqz	$r26,1135696(0x115450) # 1c11be14 <_sidata+0x11540c>
1c0069c8:	3533223d 	0x3533223d
1c0069cc:	37363130 	0x37363130
1c0069d0:	32383937 	0x32383937
1c0069d4:	38323032 	0x38323032
1c0069d8:	34383236 	0x34383236
1c0069dc:	2c223638 	vld	$vr24,$r17,-1907(0x88d)
1c0069e0:	33323122 	xvstelm.w	$xr2,$r9,-464(0x230),0x4
1c0069e4:	37363534 	0x37363534
1c0069e8:	00002238 	clo.d	$r24,$r17
1c0069ec:	204b5441 	ll.w	$r1,$r2,19284(0x4b54)
1c0069f0:	756f6c63 	0x756f6c63
1c0069f4:	6f632064 	bgeu	$r3,$r4,-40160(0x36320) # 1bffcd14 <_start-0x32ec>
1c0069f8:	63656e6e 	blt	$r19,$r14,-39572(0x3656c) # 1bffcf64 <_start-0x309c>
1c0069fc:	20646574 	ll.w	$r20,$r11,25700(0x6464)
1c006a00:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006a04:	00002020 	clo.d	$r0,$r1

Disassembly of section .data:

80001000 <_sdata>:
_sdata():
80001000:	00000000 	0x00000000
80001004:	1c005b29 	pcaddu12i	$r9,729(0x2d9)
80001008:	80000134 	0x80000134
8000100c:	8000101c 	0x8000101c
80001010:	80000004 	0x80000004
80001014:	1c005b20 	pcaddu12i	$r0,729(0x2d9)
80001018:	80000138 	0x80000138

8000101c <g_SystemFreq>:
8000101c:	007a1200 	bstrins.w	$r0,$r16,0x1a,0x4

Disassembly of section .bss:

80000000 <_sbss>:
_sbss():
80000000:	00000000 	0x00000000

80000004 <Circular_queue>:
	...

80000134 <Read_length>:
80000134:	00000000 	0x00000000

80000138 <Read_Buffer>:
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	0x3a434347
   4:	4e472820 	jirl	$r0,$r1,-112856(0x24728)
   8:	38202955 	ldx.bu	$r21,$r10,$r10
   c:	302e332e 	vldrepl.w	$vr14,$r25,-464(0xe30)
	...
