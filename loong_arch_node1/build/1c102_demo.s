
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
1c00000c:	03b641ef 	ori	$r15,$r15,0xd90
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
1c001090:	5443b400 	bl	17332(0x43b4) # 1c005444 <TIMER_WAKE_INT>
1c001094:	50003c00 	b	60(0x3c) # 1c0010d0 <exception_exit>

1c001098 <touch_label>:
touch_label():
1c001098:	5443fc00 	bl	17404(0x43fc) # 1c005494 <TOUCH>
1c00109c:	50003400 	b	52(0x34) # 1c0010d0 <exception_exit>

1c0010a0 <uart2_label>:
uart2_label():
1c0010a0:	54448800 	bl	17544(0x4488) # 1c005528 <UART2_INT>
1c0010a4:	50002c00 	b	44(0x2c) # 1c0010d0 <exception_exit>

1c0010a8 <bcc_label>:
bcc_label():
1c0010a8:	5444bc00 	bl	17596(0x44bc) # 1c005564 <BAT_FAIL>
1c0010ac:	50002400 	b	36(0x24) # 1c0010d0 <exception_exit>

1c0010b0 <exint_label>:
exint_label():
1c0010b0:	5442dc00 	bl	17116(0x42dc) # 1c00538c <ext_handler>
1c0010b4:	50001c00 	b	28(0x1c) # 1c0010d0 <exception_exit>

1c0010b8 <timer_label>:
timer_label():
1c0010b8:	54468c00 	bl	18060(0x468c) # 1c005744 <TIMER_HANDLER>
1c0010bc:	50001400 	b	20(0x14) # 1c0010d0 <exception_exit>

1c0010c0 <exception_core_check>:
exception_core_check():
1c0010c0:	0341018d 	andi	$r13,$r12,0x40
1c0010c4:	40000da0 	beqz	$r13,12(0xc) # 1c0010d0 <exception_exit>
1c0010c8:	54457400 	bl	17780(0x4574) # 1c00563c <intc_handler>
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
1c0013d4:	541d8400 	bl	7556(0x1d84) # 1c003158 <DisableInt>
1c0013d8:	541cac00 	bl	7340(0x1cac) # 1c003084 <SystemClockInit>
1c0013dc:	57ff53ff 	bl	-176(0xfffff50) # 1c00132c <GPIOInit>
1c0013e0:	5424a400 	bl	9380(0x24a4) # 1c003884 <WdgInit>
1c0013e4:	02802004 	addi.w	$r4,$r0,8(0x8)
1c0013e8:	5423e400 	bl	9188(0x23e4) # 1c0037cc <WDG_SetWatchDog>
1c0013ec:	1400038c 	lu12i.w	$r12,28(0x1c)
1c0013f0:	03880184 	ori	$r4,$r12,0x200
1c0013f4:	54155800 	bl	5464(0x1558) # 1c00294c <Uart0_init>
1c0013f8:	1400038c 	lu12i.w	$r12,28(0x1c)
1c0013fc:	03880184 	ori	$r4,$r12,0x200
1c001400:	54161000 	bl	5648(0x1610) # 1c002a10 <Uart1_init>
1c001404:	541f4800 	bl	8008(0x1f48) # 1c00334c <ls1x_logo>
1c001408:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00140c:	0380118c 	ori	$r12,$r12,0x4
1c001410:	2880018e 	ld.w	$r14,$r12,0
1c001414:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001418:	0380118c 	ori	$r12,$r12,0x4
1c00141c:	1404000d 	lu12i.w	$r13,8192(0x2000)
1c001420:	001535cd 	or	$r13,$r14,$r13
1c001424:	2980018d 	st.w	$r13,$r12,0
1c001428:	541d5400 	bl	7508(0x1d54) # 1c00317c <EnableInt>
1c00142c:	541fe800 	bl	8168(0x1fe8) # 1c003414 <open_count>
1c001430:	02801804 	addi.w	$r4,$r0,6(0x6)
1c001434:	541db000 	bl	7600(0x1db0) # 1c0031e4 <Wake_Set>
1c001438:	54242000 	bl	9248(0x2420) # 1c003858 <WDG_DogFeed>
1c00143c:	541e5400 	bl	7764(0x1e54) # 1c003290 <PMU_GetRstRrc>
1c001440:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001444:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001448:	44003180 	bnez	$r12,48(0x30) # 1c001478 <bsp_init+0xb4>
1c00144c:	1c0000a4 	pcaddu12i	$r4,5(0x5)
1c001450:	02acc084 	addi.w	$r4,$r4,-1232(0xb30)
1c001454:	5408a800 	bl	2216(0x8a8) # 1c001cfc <myprintf>
1c001458:	541ea400 	bl	7844(0x1ea4) # 1c0032fc <PMU_GetBootSpiStatus>
1c00145c:	0015008c 	move	$r12,$r4
1c001460:	40001180 	beqz	$r12,16(0x10) # 1c001470 <bsp_init+0xac>
1c001464:	1c0000a4 	pcaddu12i	$r4,5(0x5)
1c001468:	02aca084 	addi.w	$r4,$r4,-1240(0xb28)
1c00146c:	54089000 	bl	2192(0x890) # 1c001cfc <myprintf>
1c001470:	54430c00 	bl	17164(0x430c) # 1c00577c <main>
1c001474:	50004000 	b	64(0x40) # 1c0014b4 <bsp_init+0xf0>
1c001478:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00147c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001480:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c001498 <bsp_init+0xd4>
1c001484:	1c0000a4 	pcaddu12i	$r4,5(0x5)
1c001488:	02ac5084 	addi.w	$r4,$r4,-1260(0xb14)
1c00148c:	54087000 	bl	2160(0x870) # 1c001cfc <myprintf>
1c001490:	5442ec00 	bl	17132(0x42ec) # 1c00577c <main>
1c001494:	50002000 	b	32(0x20) # 1c0014b4 <bsp_init+0xf0>
1c001498:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00149c:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0014a0:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c0014b4 <bsp_init+0xf0>
1c0014a4:	1c0000a4 	pcaddu12i	$r4,5(0x5)
1c0014a8:	02ac1084 	addi.w	$r4,$r4,-1276(0xb04)
1c0014ac:	54085000 	bl	2128(0x850) # 1c001cfc <myprintf>
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

1c001598 <gpio_get_pin>:
gpio_get_pin():
1c001598:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00159c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0015a0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0015a4:	0015008c 	move	$r12,$r4
1c0015a8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0015ac:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0015b0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0015b4:	0382018c 	ori	$r12,$r12,0x80
1c0015b8:	001031ac 	add.w	$r12,$r13,$r12
1c0015bc:	29000180 	st.b	$r0,$r12,0
1c0015c0:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0015c4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0015c8:	0382018c 	ori	$r12,$r12,0x80
1c0015cc:	001031ac 	add.w	$r12,$r13,$r12
1c0015d0:	2a00018c 	ld.bu	$r12,$r12,0
1c0015d4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0015d8:	00150184 	move	$r4,$r12
1c0015dc:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0015e0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0015e4:	4c000020 	jirl	$r0,$r1,0

1c0015e8 <gpio_write_pin>:
gpio_write_pin():
1c0015e8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0015ec:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0015f0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0015f4:	0015008c 	move	$r12,$r4
1c0015f8:	001500ad 	move	$r13,$r5
1c0015fc:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001600:	001501ac 	move	$r12,$r13
1c001604:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c001608:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c00160c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001610:	5c0025ac 	bne	$r13,$r12,36(0x24) # 1c001634 <gpio_write_pin+0x4c>
1c001614:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c001618:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00161c:	0382018c 	ori	$r12,$r12,0x80
1c001620:	001031ac 	add.w	$r12,$r13,$r12
1c001624:	0015018d 	move	$r13,$r12
1c001628:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c00162c:	290001ac 	st.b	$r12,$r13,0
1c001630:	50002000 	b	32(0x20) # 1c001650 <gpio_write_pin+0x68>
1c001634:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c001638:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00163c:	0382018c 	ori	$r12,$r12,0x80
1c001640:	001031ac 	add.w	$r12,$r13,$r12
1c001644:	0015018d 	move	$r13,$r12
1c001648:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c00164c:	290001ac 	st.b	$r12,$r13,0
1c001650:	03400000 	andi	$r0,$r0,0x0
1c001654:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001658:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00165c:	4c000020 	jirl	$r0,$r1,0

1c001660 <gpio_pin_remap>:
gpio_pin_remap():
1c001660:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001664:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c001668:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00166c:	0015008c 	move	$r12,$r4
1c001670:	001500ad 	move	$r13,$r5
1c001674:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c001678:	001501ac 	move	$r12,$r13
1c00167c:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c001680:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c001684:	0044918c 	srli.w	$r12,$r12,0x4
1c001688:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00168c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001690:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c001694:	03403d8c 	andi	$r12,$r12,0xf
1c001698:	0040858c 	slli.w	$r12,$r12,0x1
1c00169c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0016a0:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c0016a4:	0280fc0c 	addi.w	$r12,$r0,63(0x3f)
1c0016a8:	6801b58d 	bltu	$r12,$r13,436(0x1b4) # 1c00185c <gpio_pin_remap+0x1fc>
1c0016ac:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0016b0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0016b4:	580089ac 	beq	$r13,$r12,136(0x88) # 1c00173c <gpio_pin_remap+0xdc>
1c0016b8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0016bc:	40002180 	beqz	$r12,32(0x20) # 1c0016dc <gpio_pin_remap+0x7c>
1c0016c0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0016c4:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0016c8:	5800d5ac 	beq	$r13,$r12,212(0xd4) # 1c00179c <gpio_pin_remap+0x13c>
1c0016cc:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0016d0:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c0016d4:	580129ac 	beq	$r13,$r12,296(0x128) # 1c0017fc <gpio_pin_remap+0x19c>
1c0016d8:	50018800 	b	392(0x188) # 1c001860 <gpio_pin_remap+0x200>
1c0016dc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0016e0:	0380418c 	ori	$r12,$r12,0x10
1c0016e4:	2880018d 	ld.w	$r13,$r12,0
1c0016e8:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c0016ec:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0016f0:	001731cc 	sll.w	$r12,$r14,$r12
1c0016f4:	0014300c 	nor	$r12,$r0,$r12
1c0016f8:	0015018e 	move	$r14,$r12
1c0016fc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001700:	0380418c 	ori	$r12,$r12,0x10
1c001704:	0014b9ad 	and	$r13,$r13,$r14
1c001708:	2980018d 	st.w	$r13,$r12,0
1c00170c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001710:	0380418c 	ori	$r12,$r12,0x10
1c001714:	2880018d 	ld.w	$r13,$r12,0
1c001718:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c00171c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001720:	001731cc 	sll.w	$r12,$r14,$r12
1c001724:	0015018e 	move	$r14,$r12
1c001728:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00172c:	0380418c 	ori	$r12,$r12,0x10
1c001730:	001539ad 	or	$r13,$r13,$r14
1c001734:	2980018d 	st.w	$r13,$r12,0
1c001738:	50012800 	b	296(0x128) # 1c001860 <gpio_pin_remap+0x200>
1c00173c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001740:	0380518c 	ori	$r12,$r12,0x14
1c001744:	2880018d 	ld.w	$r13,$r12,0
1c001748:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c00174c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001750:	001731cc 	sll.w	$r12,$r14,$r12
1c001754:	0014300c 	nor	$r12,$r0,$r12
1c001758:	0015018e 	move	$r14,$r12
1c00175c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001760:	0380518c 	ori	$r12,$r12,0x14
1c001764:	0014b9ad 	and	$r13,$r13,$r14
1c001768:	2980018d 	st.w	$r13,$r12,0
1c00176c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001770:	0380518c 	ori	$r12,$r12,0x14
1c001774:	2880018d 	ld.w	$r13,$r12,0
1c001778:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c00177c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001780:	001731cc 	sll.w	$r12,$r14,$r12
1c001784:	0015018e 	move	$r14,$r12
1c001788:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00178c:	0380518c 	ori	$r12,$r12,0x14
1c001790:	001539ad 	or	$r13,$r13,$r14
1c001794:	2980018d 	st.w	$r13,$r12,0
1c001798:	5000c800 	b	200(0xc8) # 1c001860 <gpio_pin_remap+0x200>
1c00179c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017a0:	0380618c 	ori	$r12,$r12,0x18
1c0017a4:	2880018d 	ld.w	$r13,$r12,0
1c0017a8:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c0017ac:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0017b0:	001731cc 	sll.w	$r12,$r14,$r12
1c0017b4:	0014300c 	nor	$r12,$r0,$r12
1c0017b8:	0015018e 	move	$r14,$r12
1c0017bc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017c0:	0380618c 	ori	$r12,$r12,0x18
1c0017c4:	0014b9ad 	and	$r13,$r13,$r14
1c0017c8:	2980018d 	st.w	$r13,$r12,0
1c0017cc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017d0:	0380618c 	ori	$r12,$r12,0x18
1c0017d4:	2880018d 	ld.w	$r13,$r12,0
1c0017d8:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c0017dc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0017e0:	001731cc 	sll.w	$r12,$r14,$r12
1c0017e4:	0015018e 	move	$r14,$r12
1c0017e8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017ec:	0380618c 	ori	$r12,$r12,0x18
1c0017f0:	001539ad 	or	$r13,$r13,$r14
1c0017f4:	2980018d 	st.w	$r13,$r12,0
1c0017f8:	50006800 	b	104(0x68) # 1c001860 <gpio_pin_remap+0x200>
1c0017fc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001800:	0380718c 	ori	$r12,$r12,0x1c
1c001804:	2880018d 	ld.w	$r13,$r12,0
1c001808:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c00180c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001810:	001731cc 	sll.w	$r12,$r14,$r12
1c001814:	0014300c 	nor	$r12,$r0,$r12
1c001818:	0015018e 	move	$r14,$r12
1c00181c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001820:	0380718c 	ori	$r12,$r12,0x1c
1c001824:	0014b9ad 	and	$r13,$r13,$r14
1c001828:	2980018d 	st.w	$r13,$r12,0
1c00182c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001830:	0380718c 	ori	$r12,$r12,0x1c
1c001834:	2880018d 	ld.w	$r13,$r12,0
1c001838:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c00183c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001840:	001731cc 	sll.w	$r12,$r14,$r12
1c001844:	0015018e 	move	$r14,$r12
1c001848:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00184c:	0380718c 	ori	$r12,$r12,0x1c
1c001850:	001539ad 	or	$r13,$r13,$r14
1c001854:	2980018d 	st.w	$r13,$r12,0
1c001858:	50000800 	b	8(0x8) # 1c001860 <gpio_pin_remap+0x200>
1c00185c:	03400000 	andi	$r0,$r0,0x0
1c001860:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c001864:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001868:	4c000020 	jirl	$r0,$r1,0

1c00186c <myputchar>:
myputchar():
1c00186c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001870:	29807061 	st.w	$r1,$r3,28(0x1c)
1c001874:	29806076 	st.w	$r22,$r3,24(0x18)
1c001878:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00187c:	0015008c 	move	$r12,$r4
1c001880:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001884:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001888:	00150185 	move	$r5,$r12
1c00188c:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c001890:	54102400 	bl	4132(0x1024) # 1c0028b4 <UART_SendData>
1c001894:	03400000 	andi	$r0,$r0,0x0
1c001898:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00189c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0018a0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0018a4:	4c000020 	jirl	$r0,$r1,0

1c0018a8 <myputchar2>:
myputchar2():
1c0018a8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0018ac:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0018b0:	29806076 	st.w	$r22,$r3,24(0x18)
1c0018b4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0018b8:	0015008c 	move	$r12,$r4
1c0018bc:	001500ad 	move	$r13,$r5
1c0018c0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0018c4:	001501ac 	move	$r12,$r13
1c0018c8:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c0018cc:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0018d0:	44001580 	bnez	$r12,20(0x14) # 1c0018e4 <myputchar2+0x3c>
1c0018d4:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0018d8:	00150184 	move	$r4,$r12
1c0018dc:	5411b800 	bl	4536(0x11b8) # 1c002a94 <Uart0_send>
1c0018e0:	50003800 	b	56(0x38) # 1c001918 <myputchar2+0x70>
1c0018e4:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0018e8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0018ec:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c001900 <myputchar2+0x58>
1c0018f0:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0018f4:	00150184 	move	$r4,$r12
1c0018f8:	5411d800 	bl	4568(0x11d8) # 1c002ad0 <Uart1_send>
1c0018fc:	50001c00 	b	28(0x1c) # 1c001918 <myputchar2+0x70>
1c001900:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c001904:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c001908:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c001918 <myputchar2+0x70>
1c00190c:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c001910:	00150184 	move	$r4,$r12
1c001914:	5411f800 	bl	4600(0x11f8) # 1c002b0c <Uart2_send>
1c001918:	03400000 	andi	$r0,$r0,0x0
1c00191c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c001920:	28806076 	ld.w	$r22,$r3,24(0x18)
1c001924:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001928:	4c000020 	jirl	$r0,$r1,0

1c00192c <printbase>:
printbase():
1c00192c:	02be4063 	addi.w	$r3,$r3,-112(0xf90)
1c001930:	2981b061 	st.w	$r1,$r3,108(0x6c)
1c001934:	2981a076 	st.w	$r22,$r3,104(0x68)
1c001938:	0281c076 	addi.w	$r22,$r3,112(0x70)
1c00193c:	29be72c4 	st.w	$r4,$r22,-100(0xf9c)
1c001940:	29be62c5 	st.w	$r5,$r22,-104(0xf98)
1c001944:	29be52c6 	st.w	$r6,$r22,-108(0xf94)
1c001948:	29be42c7 	st.w	$r7,$r22,-112(0xf90)
1c00194c:	28be42cc 	ld.w	$r12,$r22,-112(0xf90)
1c001950:	40002580 	beqz	$r12,36(0x24) # 1c001974 <printbase+0x48>
1c001954:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c001958:	64001d80 	bge	$r12,$r0,28(0x1c) # 1c001974 <printbase+0x48>
1c00195c:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c001960:	0011300c 	sub.w	$r12,$r0,$r12
1c001964:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001968:	0280b404 	addi.w	$r4,$r0,45(0x2d)
1c00196c:	57ff03ff 	bl	-256(0xfffff00) # 1c00186c <myputchar>
1c001970:	50000c00 	b	12(0xc) # 1c00197c <printbase+0x50>
1c001974:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c001978:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00197c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c001980:	50005000 	b	80(0x50) # 1c0019d0 <printbase+0xa4>
1c001984:	28be52cc 	ld.w	$r12,$r22,-108(0xf94)
1c001988:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c00198c:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c001990:	5c000980 	bne	$r12,$r0,8(0x8) # 1c001998 <printbase+0x6c>
1c001994:	002a0007 	break	0x7
1c001998:	00005dcc 	ext.w.b	$r12,$r14
1c00199c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0019a0:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c0019a4:	001035cd 	add.w	$r13,$r14,$r13
1c0019a8:	293ec1ac 	st.b	$r12,$r13,-80(0xfb0)
1c0019ac:	28be52cd 	ld.w	$r13,$r22,-108(0xf94)
1c0019b0:	28bf92ce 	ld.w	$r14,$r22,-28(0xfe4)
1c0019b4:	002135cc 	div.wu	$r12,$r14,$r13
1c0019b8:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c0019c0 <printbase+0x94>
1c0019bc:	002a0007 	break	0x7
1c0019c0:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0019c4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0019c8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0019cc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0019d0:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0019d4:	47ffb19f 	bnez	$r12,-80(0x7fffb0) # 1c001984 <printbase+0x58>
1c0019d8:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c0019dc:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0019e0:	28bfb2ce 	ld.w	$r14,$r22,-20(0xfec)
1c0019e4:	001231ad 	slt	$r13,$r13,$r12
1c0019e8:	0013b5ce 	masknez	$r14,$r14,$r13
1c0019ec:	0013358c 	maskeqz	$r12,$r12,$r13
1c0019f0:	001531cc 	or	$r12,$r14,$r12
1c0019f4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0019f8:	50007400 	b	116(0x74) # 1c001a6c <printbase+0x140>
1c0019fc:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c001a00:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001a04:	60001d8d 	blt	$r12,$r13,28(0x1c) # 1c001a20 <printbase+0xf4>
1c001a08:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001a0c:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c001a10:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c001a14:	001031ac 	add.w	$r12,$r13,$r12
1c001a18:	283ec18c 	ld.b	$r12,$r12,-80(0xfb0)
1c001a1c:	50000800 	b	8(0x8) # 1c001a24 <printbase+0xf8>
1c001a20:	0015000c 	move	$r12,$r0
1c001a24:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c001a28:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c001a2c:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c001a30:	6000198d 	blt	$r12,$r13,24(0x18) # 1c001a48 <printbase+0x11c>
1c001a34:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c001a38:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001a3c:	0280c18c 	addi.w	$r12,$r12,48(0x30)
1c001a40:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001a44:	50001400 	b	20(0x14) # 1c001a58 <printbase+0x12c>
1c001a48:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c001a4c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001a50:	02815d8c 	addi.w	$r12,$r12,87(0x57)
1c001a54:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001a58:	00150184 	move	$r4,$r12
1c001a5c:	57fe13ff 	bl	-496(0xffffe10) # 1c00186c <myputchar>
1c001a60:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001a64:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c001a68:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001a6c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001a70:	63ff8c0c 	blt	$r0,$r12,-116(0x3ff8c) # 1c0019fc <printbase+0xd0>
1c001a74:	0015000c 	move	$r12,$r0
1c001a78:	00150184 	move	$r4,$r12
1c001a7c:	2881b061 	ld.w	$r1,$r3,108(0x6c)
1c001a80:	2881a076 	ld.w	$r22,$r3,104(0x68)
1c001a84:	0281c063 	addi.w	$r3,$r3,112(0x70)
1c001a88:	4c000020 	jirl	$r0,$r1,0

1c001a8c <printbase2>:
printbase2():
1c001a8c:	02be0063 	addi.w	$r3,$r3,-128(0xf80)
1c001a90:	2981f061 	st.w	$r1,$r3,124(0x7c)
1c001a94:	2981e076 	st.w	$r22,$r3,120(0x78)
1c001a98:	02820076 	addi.w	$r22,$r3,128(0x80)
1c001a9c:	0015008c 	move	$r12,$r4
1c001aa0:	29be62c5 	st.w	$r5,$r22,-104(0xf98)
1c001aa4:	29be52c6 	st.w	$r6,$r22,-108(0xf94)
1c001aa8:	29be42c7 	st.w	$r7,$r22,-112(0xf90)
1c001aac:	29be32c8 	st.w	$r8,$r22,-116(0xf8c)
1c001ab0:	293e7ecc 	st.b	$r12,$r22,-97(0xf9f)
1c001ab4:	28be32cc 	ld.w	$r12,$r22,-116(0xf8c)
1c001ab8:	40002d80 	beqz	$r12,44(0x2c) # 1c001ae4 <printbase2+0x58>
1c001abc:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c001ac0:	64002580 	bge	$r12,$r0,36(0x24) # 1c001ae4 <printbase2+0x58>
1c001ac4:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c001ac8:	0011300c 	sub.w	$r12,$r0,$r12
1c001acc:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001ad0:	2a3e7ecc 	ld.bu	$r12,$r22,-97(0xf9f)
1c001ad4:	0280b405 	addi.w	$r5,$r0,45(0x2d)
1c001ad8:	00150184 	move	$r4,$r12
1c001adc:	57fdcfff 	bl	-564(0xffffdcc) # 1c0018a8 <myputchar2>
1c001ae0:	50000c00 	b	12(0xc) # 1c001aec <printbase2+0x60>
1c001ae4:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c001ae8:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001aec:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c001af0:	50005000 	b	80(0x50) # 1c001b40 <printbase2+0xb4>
1c001af4:	28be42cc 	ld.w	$r12,$r22,-112(0xf90)
1c001af8:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c001afc:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c001b00:	5c000980 	bne	$r12,$r0,8(0x8) # 1c001b08 <printbase2+0x7c>
1c001b04:	002a0007 	break	0x7
1c001b08:	00005dcc 	ext.w.b	$r12,$r14
1c001b0c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001b10:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c001b14:	001035cd 	add.w	$r13,$r14,$r13
1c001b18:	293ec1ac 	st.b	$r12,$r13,-80(0xfb0)
1c001b1c:	28be42cd 	ld.w	$r13,$r22,-112(0xf90)
1c001b20:	28bf92ce 	ld.w	$r14,$r22,-28(0xfe4)
1c001b24:	002135cc 	div.wu	$r12,$r14,$r13
1c001b28:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c001b30 <printbase2+0xa4>
1c001b2c:	002a0007 	break	0x7
1c001b30:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001b34:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001b38:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001b3c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001b40:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001b44:	47ffb19f 	bnez	$r12,-80(0x7fffb0) # 1c001af4 <printbase2+0x68>
1c001b48:	28be52cc 	ld.w	$r12,$r22,-108(0xf94)
1c001b4c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001b50:	28bfb2ce 	ld.w	$r14,$r22,-20(0xfec)
1c001b54:	001231ad 	slt	$r13,$r13,$r12
1c001b58:	0013b5ce 	masknez	$r14,$r14,$r13
1c001b5c:	0013358c 	maskeqz	$r12,$r12,$r13
1c001b60:	001531cc 	or	$r12,$r14,$r12
1c001b64:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001b68:	50007c00 	b	124(0x7c) # 1c001be4 <printbase2+0x158>
1c001b6c:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c001b70:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001b74:	60001d8d 	blt	$r12,$r13,28(0x1c) # 1c001b90 <printbase2+0x104>
1c001b78:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001b7c:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c001b80:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c001b84:	001031ac 	add.w	$r12,$r13,$r12
1c001b88:	283ec18c 	ld.b	$r12,$r12,-80(0xfb0)
1c001b8c:	50000800 	b	8(0x8) # 1c001b94 <printbase2+0x108>
1c001b90:	0015000c 	move	$r12,$r0
1c001b94:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c001b98:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c001b9c:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c001ba0:	6000198d 	blt	$r12,$r13,24(0x18) # 1c001bb8 <printbase2+0x12c>
1c001ba4:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c001ba8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001bac:	0280c18c 	addi.w	$r12,$r12,48(0x30)
1c001bb0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001bb4:	50001400 	b	20(0x14) # 1c001bc8 <printbase2+0x13c>
1c001bb8:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c001bbc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001bc0:	02815d8c 	addi.w	$r12,$r12,87(0x57)
1c001bc4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001bc8:	2a3e7ecd 	ld.bu	$r13,$r22,-97(0xf9f)
1c001bcc:	00150185 	move	$r5,$r12
1c001bd0:	001501a4 	move	$r4,$r13
1c001bd4:	57fcd7ff 	bl	-812(0xffffcd4) # 1c0018a8 <myputchar2>
1c001bd8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001bdc:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c001be0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001be4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001be8:	63ff840c 	blt	$r0,$r12,-124(0x3ff84) # 1c001b6c <printbase2+0xe0>
1c001bec:	0015000c 	move	$r12,$r0
1c001bf0:	00150184 	move	$r4,$r12
1c001bf4:	2881f061 	ld.w	$r1,$r3,124(0x7c)
1c001bf8:	2881e076 	ld.w	$r22,$r3,120(0x78)
1c001bfc:	02820063 	addi.w	$r3,$r3,128(0x80)
1c001c00:	4c000020 	jirl	$r0,$r1,0

1c001c04 <puts>:
puts():
1c001c04:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001c08:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c001c0c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c001c10:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001c14:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001c18:	50003000 	b	48(0x30) # 1c001c48 <puts+0x44>
1c001c1c:	283fbecd 	ld.b	$r13,$r22,-17(0xfef)
1c001c20:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001c24:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c001c30 <puts+0x2c>
1c001c28:	02803404 	addi.w	$r4,$r0,13(0xd)
1c001c2c:	57fc43ff 	bl	-960(0xffffc40) # 1c00186c <myputchar>
1c001c30:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001c34:	00150184 	move	$r4,$r12
1c001c38:	57fc37ff 	bl	-972(0xffffc34) # 1c00186c <myputchar>
1c001c3c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001c40:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001c44:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c001c48:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001c4c:	2a00018c 	ld.bu	$r12,$r12,0
1c001c50:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001c54:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c001c58:	47ffc59f 	bnez	$r12,-60(0x7fffc4) # 1c001c1c <puts+0x18>
1c001c5c:	0015000c 	move	$r12,$r0
1c001c60:	00150184 	move	$r4,$r12
1c001c64:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c001c68:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c001c6c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001c70:	4c000020 	jirl	$r0,$r1,0

1c001c74 <puts2>:
puts2():
1c001c74:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001c78:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c001c7c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c001c80:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001c84:	0015008c 	move	$r12,$r4
1c001c88:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c001c8c:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c001c90:	50004000 	b	64(0x40) # 1c001cd0 <puts2+0x5c>
1c001c94:	283fbecd 	ld.b	$r13,$r22,-17(0xfef)
1c001c98:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001c9c:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c001cb0 <puts2+0x3c>
1c001ca0:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c001ca4:	02803405 	addi.w	$r5,$r0,13(0xd)
1c001ca8:	00150184 	move	$r4,$r12
1c001cac:	57fbffff 	bl	-1028(0xffffbfc) # 1c0018a8 <myputchar2>
1c001cb0:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c001cb4:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c001cb8:	001501a5 	move	$r5,$r13
1c001cbc:	00150184 	move	$r4,$r12
1c001cc0:	57fbebff 	bl	-1048(0xffffbe8) # 1c0018a8 <myputchar2>
1c001cc4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c001cc8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001ccc:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c001cd0:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c001cd4:	2a00018c 	ld.bu	$r12,$r12,0
1c001cd8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001cdc:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c001ce0:	47ffb59f 	bnez	$r12,-76(0x7fffb4) # 1c001c94 <puts2+0x20>
1c001ce4:	0015000c 	move	$r12,$r0
1c001ce8:	00150184 	move	$r4,$r12
1c001cec:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c001cf0:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c001cf4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001cf8:	4c000020 	jirl	$r0,$r1,0

1c001cfc <myprintf>:
myprintf():
1c001cfc:	02be8063 	addi.w	$r3,$r3,-96(0xfa0)
1c001d00:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c001d04:	2980e076 	st.w	$r22,$r3,56(0x38)
1c001d08:	02810076 	addi.w	$r22,$r3,64(0x40)
1c001d0c:	29bf32c4 	st.w	$r4,$r22,-52(0xfcc)
1c001d10:	298012c5 	st.w	$r5,$r22,4(0x4)
1c001d14:	298022c6 	st.w	$r6,$r22,8(0x8)
1c001d18:	298032c7 	st.w	$r7,$r22,12(0xc)
1c001d1c:	298042c8 	st.w	$r8,$r22,16(0x10)
1c001d20:	298052c9 	st.w	$r9,$r22,20(0x14)
1c001d24:	298062ca 	st.w	$r10,$r22,24(0x18)
1c001d28:	298072cb 	st.w	$r11,$r22,28(0x1c)
1c001d2c:	028082cc 	addi.w	$r12,$r22,32(0x20)
1c001d30:	02bf918c 	addi.w	$r12,$r12,-28(0xfe4)
1c001d34:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c001d38:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001d3c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001d40:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c001d44:	50033000 	b	816(0x330) # 1c002074 <myprintf+0x378>
1c001d48:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001d4c:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001d50:	001031ac 	add.w	$r12,$r13,$r12
1c001d54:	2a00018c 	ld.bu	$r12,$r12,0
1c001d58:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c001d5c:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c001d60:	0280940c 	addi.w	$r12,$r0,37(0x25)
1c001d64:	5c02e5ac 	bne	$r13,$r12,740(0x2e4) # 1c002048 <myprintf+0x34c>
1c001d68:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001d6c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001d70:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001d74:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001d78:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001d7c:	001031ac 	add.w	$r12,$r13,$r12
1c001d80:	2800018c 	ld.b	$r12,$r12,0
1c001d84:	02bf6d8c 	addi.w	$r12,$r12,-37(0xfdb)
1c001d88:	02814c0d 	addi.w	$r13,$r0,83(0x53)
1c001d8c:	6802adac 	bltu	$r13,$r12,684(0x2ac) # 1c002038 <myprintf+0x33c>
1c001d90:	0040898d 	slli.w	$r13,$r12,0x2
1c001d94:	1c00008c 	pcaddu12i	$r12,4(0x4)
1c001d98:	0288818c 	addi.w	$r12,$r12,544(0x220)
1c001d9c:	001031ac 	add.w	$r12,$r13,$r12
1c001da0:	2880018c 	ld.w	$r12,$r12,0
1c001da4:	4c000180 	jirl	$r0,$r12,0
1c001da8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001dac:	2880018c 	ld.w	$r12,$r12,0
1c001db0:	00150184 	move	$r4,$r12
1c001db4:	57fe53ff 	bl	-432(0xffffe50) # 1c001c04 <puts>
1c001db8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001dbc:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001dc0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001dc4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001dc8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001dcc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001dd0:	50029800 	b	664(0x298) # 1c002068 <myprintf+0x36c>
1c001dd4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001dd8:	2880018c 	ld.w	$r12,$r12,0
1c001ddc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001de0:	00150184 	move	$r4,$r12
1c001de4:	57fa8bff 	bl	-1400(0xffffa88) # 1c00186c <myputchar>
1c001de8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001dec:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001df0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001df4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001df8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001dfc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001e00:	50026800 	b	616(0x268) # 1c002068 <myprintf+0x36c>
1c001e04:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001e08:	2880018c 	ld.w	$r12,$r12,0
1c001e0c:	00150007 	move	$r7,$r0
1c001e10:	02802806 	addi.w	$r6,$r0,10(0xa)
1c001e14:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001e18:	00150184 	move	$r4,$r12
1c001e1c:	57fb13ff 	bl	-1264(0xffffb10) # 1c00192c <printbase>
1c001e20:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001e24:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001e28:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001e2c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e30:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e34:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001e38:	50023000 	b	560(0x230) # 1c002068 <myprintf+0x36c>
1c001e3c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001e40:	2880018c 	ld.w	$r12,$r12,0
1c001e44:	02800407 	addi.w	$r7,$r0,1(0x1)
1c001e48:	02802806 	addi.w	$r6,$r0,10(0xa)
1c001e4c:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001e50:	00150184 	move	$r4,$r12
1c001e54:	57fadbff 	bl	-1320(0xffffad8) # 1c00192c <printbase>
1c001e58:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001e5c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001e60:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001e64:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e68:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e6c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001e70:	5001f800 	b	504(0x1f8) # 1c002068 <myprintf+0x36c>
1c001e74:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001e78:	2880018c 	ld.w	$r12,$r12,0
1c001e7c:	00150007 	move	$r7,$r0
1c001e80:	02802006 	addi.w	$r6,$r0,8(0x8)
1c001e84:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001e88:	00150184 	move	$r4,$r12
1c001e8c:	57faa3ff 	bl	-1376(0xffffaa0) # 1c00192c <printbase>
1c001e90:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001e94:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001e98:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001e9c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001ea0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001ea4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001ea8:	5001c000 	b	448(0x1c0) # 1c002068 <myprintf+0x36c>
1c001eac:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001eb0:	2880018c 	ld.w	$r12,$r12,0
1c001eb4:	00150007 	move	$r7,$r0
1c001eb8:	02800806 	addi.w	$r6,$r0,2(0x2)
1c001ebc:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001ec0:	00150184 	move	$r4,$r12
1c001ec4:	57fa6bff 	bl	-1432(0xffffa68) # 1c00192c <printbase>
1c001ec8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001ecc:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001ed0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001ed4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001ed8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001edc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001ee0:	50018800 	b	392(0x188) # 1c002068 <myprintf+0x36c>
1c001ee4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001ee8:	2880018c 	ld.w	$r12,$r12,0
1c001eec:	00150007 	move	$r7,$r0
1c001ef0:	02804006 	addi.w	$r6,$r0,16(0x10)
1c001ef4:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001ef8:	00150184 	move	$r4,$r12
1c001efc:	57fa33ff 	bl	-1488(0xffffa30) # 1c00192c <printbase>
1c001f00:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001f04:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001f08:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001f0c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001f10:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001f14:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001f18:	50015000 	b	336(0x150) # 1c002068 <myprintf+0x36c>
1c001f1c:	02809404 	addi.w	$r4,$r0,37(0x25)
1c001f20:	57f94fff 	bl	-1716(0xffff94c) # 1c00186c <myputchar>
1c001f24:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001f28:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001f2c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001f30:	50013800 	b	312(0x138) # 1c002068 <myprintf+0x36c>
1c001f34:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001f38:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001f3c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001f40:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c001f44:	50003c00 	b	60(0x3c) # 1c001f80 <myprintf+0x284>
1c001f48:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c001f4c:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001f50:	001c31ad 	mul.w	$r13,$r13,$r12
1c001f54:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001f58:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001f5c:	28bf32ce 	ld.w	$r14,$r22,-52(0xfcc)
1c001f60:	001031cc 	add.w	$r12,$r14,$r12
1c001f64:	2800018c 	ld.b	$r12,$r12,0
1c001f68:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c001f6c:	001031ac 	add.w	$r12,$r13,$r12
1c001f70:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001f74:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001f78:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001f7c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001f80:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001f84:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001f88:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001f8c:	001031ac 	add.w	$r12,$r13,$r12
1c001f90:	2800018d 	ld.b	$r13,$r12,0
1c001f94:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c001f98:	67fdd98d 	bge	$r12,$r13,-552(0x3fdd8) # 1c001d70 <myprintf+0x74>
1c001f9c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001fa0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001fa4:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001fa8:	001031ac 	add.w	$r12,$r13,$r12
1c001fac:	2800018d 	ld.b	$r13,$r12,0
1c001fb0:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c001fb4:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c001f48 <myprintf+0x24c>
1c001fb8:	53fdbbff 	b	-584(0xffffdb8) # 1c001d70 <myprintf+0x74>
1c001fbc:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c001fc0:	50003c00 	b	60(0x3c) # 1c001ffc <myprintf+0x300>
1c001fc4:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c001fc8:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001fcc:	001c31ad 	mul.w	$r13,$r13,$r12
1c001fd0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001fd4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001fd8:	28bf32ce 	ld.w	$r14,$r22,-52(0xfcc)
1c001fdc:	001031cc 	add.w	$r12,$r14,$r12
1c001fe0:	2800018c 	ld.b	$r12,$r12,0
1c001fe4:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c001fe8:	001031ac 	add.w	$r12,$r13,$r12
1c001fec:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001ff0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001ff4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001ff8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001ffc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002000:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002004:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c002008:	001031ac 	add.w	$r12,$r13,$r12
1c00200c:	2800018d 	ld.b	$r13,$r12,0
1c002010:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c002014:	67fd5d8d 	bge	$r12,$r13,-676(0x3fd5c) # 1c001d70 <myprintf+0x74>
1c002018:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00201c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002020:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c002024:	001031ac 	add.w	$r12,$r13,$r12
1c002028:	2800018d 	ld.b	$r13,$r12,0
1c00202c:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c002030:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c001fc4 <myprintf+0x2c8>
1c002034:	53fd3fff 	b	-708(0xffffd3c) # 1c001d70 <myprintf+0x74>
1c002038:	02809404 	addi.w	$r4,$r0,37(0x25)
1c00203c:	57f833ff 	bl	-2000(0xffff830) # 1c00186c <myputchar>
1c002040:	03400000 	andi	$r0,$r0,0x0
1c002044:	50002400 	b	36(0x24) # 1c002068 <myprintf+0x36c>
1c002048:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c00204c:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c002050:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c00205c <myprintf+0x360>
1c002054:	02803404 	addi.w	$r4,$r0,13(0xd)
1c002058:	57f817ff 	bl	-2028(0xffff814) # 1c00186c <myputchar>
1c00205c:	2a3f8ecc 	ld.bu	$r12,$r22,-29(0xfe3)
1c002060:	00150184 	move	$r4,$r12
1c002064:	57f80bff 	bl	-2040(0xffff808) # 1c00186c <myputchar>
1c002068:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00206c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002070:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002074:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002078:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c00207c:	001031ac 	add.w	$r12,$r13,$r12
1c002080:	2800018c 	ld.b	$r12,$r12,0
1c002084:	47fcc59f 	bnez	$r12,-828(0x7ffcc4) # 1c001d48 <myprintf+0x4c>
1c002088:	0015000c 	move	$r12,$r0
1c00208c:	00150184 	move	$r4,$r12
1c002090:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c002094:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c002098:	02818063 	addi.w	$r3,$r3,96(0x60)
1c00209c:	4c000020 	jirl	$r0,$r1,0

1c0020a0 <myprintf2>:
myprintf2():
1c0020a0:	02be8063 	addi.w	$r3,$r3,-96(0xfa0)
1c0020a4:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c0020a8:	2980e076 	st.w	$r22,$r3,56(0x38)
1c0020ac:	02810076 	addi.w	$r22,$r3,64(0x40)
1c0020b0:	0015008c 	move	$r12,$r4
1c0020b4:	29bf22c5 	st.w	$r5,$r22,-56(0xfc8)
1c0020b8:	298022c6 	st.w	$r6,$r22,8(0x8)
1c0020bc:	298032c7 	st.w	$r7,$r22,12(0xc)
1c0020c0:	298042c8 	st.w	$r8,$r22,16(0x10)
1c0020c4:	298052c9 	st.w	$r9,$r22,20(0x14)
1c0020c8:	298062ca 	st.w	$r10,$r22,24(0x18)
1c0020cc:	298072cb 	st.w	$r11,$r22,28(0x1c)
1c0020d0:	293f3ecc 	st.b	$r12,$r22,-49(0xfcf)
1c0020d4:	028082cc 	addi.w	$r12,$r22,32(0x20)
1c0020d8:	02bfa18c 	addi.w	$r12,$r12,-24(0xfe8)
1c0020dc:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c0020e0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0020e4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0020e8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0020ec:	50039c00 	b	924(0x39c) # 1c002488 <myprintf2+0x3e8>
1c0020f0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0020f4:	28bf22cd 	ld.w	$r13,$r22,-56(0xfc8)
1c0020f8:	001031ac 	add.w	$r12,$r13,$r12
1c0020fc:	2a00018c 	ld.bu	$r12,$r12,0
1c002100:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c002104:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c002108:	0280940c 	addi.w	$r12,$r0,37(0x25)
1c00210c:	5c0341ac 	bne	$r13,$r12,832(0x340) # 1c00244c <myprintf2+0x3ac>
1c002110:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002114:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002118:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00211c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002120:	28bf22cd 	ld.w	$r13,$r22,-56(0xfc8)
1c002124:	001031ac 	add.w	$r12,$r13,$r12
1c002128:	2800018c 	ld.b	$r12,$r12,0
1c00212c:	02bf6d8c 	addi.w	$r12,$r12,-37(0xfdb)
1c002130:	02814c0d 	addi.w	$r13,$r0,83(0x53)
1c002134:	680301ac 	bltu	$r13,$r12,768(0x300) # 1c002434 <myprintf2+0x394>
1c002138:	0040898d 	slli.w	$r13,$r12,0x2
1c00213c:	1c00008c 	pcaddu12i	$r12,4(0x4)
1c002140:	02bf218c 	addi.w	$r12,$r12,-56(0xfc8)
1c002144:	001031ac 	add.w	$r12,$r13,$r12
1c002148:	2880018c 	ld.w	$r12,$r12,0
1c00214c:	4c000180 	jirl	$r0,$r12,0
1c002150:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002154:	2880018d 	ld.w	$r13,$r12,0
1c002158:	2a3f3ecc 	ld.bu	$r12,$r22,-49(0xfcf)
1c00215c:	001501a5 	move	$r5,$r13
1c002160:	00150184 	move	$r4,$r12
1c002164:	57fb13ff 	bl	-1264(0xffffb10) # 1c001c74 <puts2>
1c002168:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00216c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c002170:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002174:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002178:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00217c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002180:	5002fc00 	b	764(0x2fc) # 1c00247c <myprintf2+0x3dc>
1c002184:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002188:	2880018c 	ld.w	$r12,$r12,0
1c00218c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002190:	2a3f3ecc 	ld.bu	$r12,$r22,-49(0xfcf)
1c002194:	001501a5 	move	$r5,$r13
1c002198:	00150184 	move	$r4,$r12
1c00219c:	57f70fff 	bl	-2292(0xffff70c) # 1c0018a8 <myputchar2>
1c0021a0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0021a4:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c0021a8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0021ac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0021b0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0021b4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0021b8:	5002c400 	b	708(0x2c4) # 1c00247c <myprintf2+0x3dc>
1c0021bc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0021c0:	2880018c 	ld.w	$r12,$r12,0
1c0021c4:	0015018d 	move	$r13,$r12
1c0021c8:	2a3f3ecc 	ld.bu	$r12,$r22,-49(0xfcf)
1c0021cc:	00150008 	move	$r8,$r0
1c0021d0:	02802807 	addi.w	$r7,$r0,10(0xa)
1c0021d4:	28bf92c6 	ld.w	$r6,$r22,-28(0xfe4)
1c0021d8:	001501a5 	move	$r5,$r13
1c0021dc:	00150184 	move	$r4,$r12
1c0021e0:	57f8afff 	bl	-1876(0xffff8ac) # 1c001a8c <printbase2>
1c0021e4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0021e8:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c0021ec:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0021f0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0021f4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0021f8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0021fc:	50028000 	b	640(0x280) # 1c00247c <myprintf2+0x3dc>
1c002200:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002204:	2880018c 	ld.w	$r12,$r12,0
1c002208:	0015018d 	move	$r13,$r12
1c00220c:	2a3f3ecc 	ld.bu	$r12,$r22,-49(0xfcf)
1c002210:	02800408 	addi.w	$r8,$r0,1(0x1)
1c002214:	02802807 	addi.w	$r7,$r0,10(0xa)
1c002218:	28bf92c6 	ld.w	$r6,$r22,-28(0xfe4)
1c00221c:	001501a5 	move	$r5,$r13
1c002220:	00150184 	move	$r4,$r12
1c002224:	57f86bff 	bl	-1944(0xffff868) # 1c001a8c <printbase2>
1c002228:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00222c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c002230:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002234:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002238:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00223c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002240:	50023c00 	b	572(0x23c) # 1c00247c <myprintf2+0x3dc>
1c002244:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002248:	2880018c 	ld.w	$r12,$r12,0
1c00224c:	0015018d 	move	$r13,$r12
1c002250:	2a3f3ecc 	ld.bu	$r12,$r22,-49(0xfcf)
1c002254:	00150008 	move	$r8,$r0
1c002258:	02802007 	addi.w	$r7,$r0,8(0x8)
1c00225c:	28bf92c6 	ld.w	$r6,$r22,-28(0xfe4)
1c002260:	001501a5 	move	$r5,$r13
1c002264:	00150184 	move	$r4,$r12
1c002268:	57f827ff 	bl	-2012(0xffff824) # 1c001a8c <printbase2>
1c00226c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002270:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c002274:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002278:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00227c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002280:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002284:	5001f800 	b	504(0x1f8) # 1c00247c <myprintf2+0x3dc>
1c002288:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00228c:	2880018c 	ld.w	$r12,$r12,0
1c002290:	0015018d 	move	$r13,$r12
1c002294:	2a3f3ecc 	ld.bu	$r12,$r22,-49(0xfcf)
1c002298:	00150008 	move	$r8,$r0
1c00229c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0022a0:	28bf92c6 	ld.w	$r6,$r22,-28(0xfe4)
1c0022a4:	001501a5 	move	$r5,$r13
1c0022a8:	00150184 	move	$r4,$r12
1c0022ac:	57f7e3ff 	bl	-2080(0xffff7e0) # 1c001a8c <printbase2>
1c0022b0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0022b4:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c0022b8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0022bc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0022c0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0022c4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0022c8:	5001b400 	b	436(0x1b4) # 1c00247c <myprintf2+0x3dc>
1c0022cc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0022d0:	2880018c 	ld.w	$r12,$r12,0
1c0022d4:	0015018d 	move	$r13,$r12
1c0022d8:	2a3f3ecc 	ld.bu	$r12,$r22,-49(0xfcf)
1c0022dc:	00150008 	move	$r8,$r0
1c0022e0:	02804007 	addi.w	$r7,$r0,16(0x10)
1c0022e4:	28bf92c6 	ld.w	$r6,$r22,-28(0xfe4)
1c0022e8:	001501a5 	move	$r5,$r13
1c0022ec:	00150184 	move	$r4,$r12
1c0022f0:	57f79fff 	bl	-2148(0xffff79c) # 1c001a8c <printbase2>
1c0022f4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0022f8:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c0022fc:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002300:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002304:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002308:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00230c:	50017000 	b	368(0x170) # 1c00247c <myprintf2+0x3dc>
1c002310:	2a3f3ecc 	ld.bu	$r12,$r22,-49(0xfcf)
1c002314:	02809405 	addi.w	$r5,$r0,37(0x25)
1c002318:	00150184 	move	$r4,$r12
1c00231c:	57f58fff 	bl	-2676(0xffff58c) # 1c0018a8 <myputchar2>
1c002320:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002324:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002328:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00232c:	50015000 	b	336(0x150) # 1c00247c <myprintf2+0x3dc>
1c002330:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002334:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002338:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00233c:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c002340:	50003c00 	b	60(0x3c) # 1c00237c <myprintf2+0x2dc>
1c002344:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c002348:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c00234c:	001c31ad 	mul.w	$r13,$r13,$r12
1c002350:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002354:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002358:	28bf22ce 	ld.w	$r14,$r22,-56(0xfc8)
1c00235c:	001031cc 	add.w	$r12,$r14,$r12
1c002360:	2800018c 	ld.b	$r12,$r12,0
1c002364:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c002368:	001031ac 	add.w	$r12,$r13,$r12
1c00236c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002370:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002374:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002378:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00237c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002380:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002384:	28bf22cd 	ld.w	$r13,$r22,-56(0xfc8)
1c002388:	001031ac 	add.w	$r12,$r13,$r12
1c00238c:	2800018d 	ld.b	$r13,$r12,0
1c002390:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c002394:	67fd858d 	bge	$r12,$r13,-636(0x3fd84) # 1c002118 <myprintf2+0x78>
1c002398:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00239c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0023a0:	28bf22cd 	ld.w	$r13,$r22,-56(0xfc8)
1c0023a4:	001031ac 	add.w	$r12,$r13,$r12
1c0023a8:	2800018d 	ld.b	$r13,$r12,0
1c0023ac:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c0023b0:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c002344 <myprintf2+0x2a4>
1c0023b4:	53fd67ff 	b	-668(0xffffd64) # 1c002118 <myprintf2+0x78>
1c0023b8:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c0023bc:	50003c00 	b	60(0x3c) # 1c0023f8 <myprintf2+0x358>
1c0023c0:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c0023c4:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0023c8:	001c31ad 	mul.w	$r13,$r13,$r12
1c0023cc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0023d0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0023d4:	28bf22ce 	ld.w	$r14,$r22,-56(0xfc8)
1c0023d8:	001031cc 	add.w	$r12,$r14,$r12
1c0023dc:	2800018c 	ld.b	$r12,$r12,0
1c0023e0:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c0023e4:	001031ac 	add.w	$r12,$r13,$r12
1c0023e8:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0023ec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0023f0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0023f4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0023f8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0023fc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002400:	28bf22cd 	ld.w	$r13,$r22,-56(0xfc8)
1c002404:	001031ac 	add.w	$r12,$r13,$r12
1c002408:	2800018d 	ld.b	$r13,$r12,0
1c00240c:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c002410:	67fd098d 	bge	$r12,$r13,-760(0x3fd08) # 1c002118 <myprintf2+0x78>
1c002414:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002418:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00241c:	28bf22cd 	ld.w	$r13,$r22,-56(0xfc8)
1c002420:	001031ac 	add.w	$r12,$r13,$r12
1c002424:	2800018d 	ld.b	$r13,$r12,0
1c002428:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c00242c:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c0023c0 <myprintf2+0x320>
1c002430:	53fcebff 	b	-792(0xffffce8) # 1c002118 <myprintf2+0x78>
1c002434:	2a3f3ecc 	ld.bu	$r12,$r22,-49(0xfcf)
1c002438:	02809405 	addi.w	$r5,$r0,37(0x25)
1c00243c:	00150184 	move	$r4,$r12
1c002440:	57f46bff 	bl	-2968(0xffff468) # 1c0018a8 <myputchar2>
1c002444:	03400000 	andi	$r0,$r0,0x0
1c002448:	50003400 	b	52(0x34) # 1c00247c <myprintf2+0x3dc>
1c00244c:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c002450:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c002454:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c002468 <myprintf2+0x3c8>
1c002458:	2a3f3ecc 	ld.bu	$r12,$r22,-49(0xfcf)
1c00245c:	02803405 	addi.w	$r5,$r0,13(0xd)
1c002460:	00150184 	move	$r4,$r12
1c002464:	57f447ff 	bl	-3004(0xffff444) # 1c0018a8 <myputchar2>
1c002468:	2a3f8ecd 	ld.bu	$r13,$r22,-29(0xfe3)
1c00246c:	2a3f3ecc 	ld.bu	$r12,$r22,-49(0xfcf)
1c002470:	001501a5 	move	$r5,$r13
1c002474:	00150184 	move	$r4,$r12
1c002478:	57f433ff 	bl	-3024(0xffff430) # 1c0018a8 <myputchar2>
1c00247c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002480:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002484:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002488:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00248c:	28bf22cd 	ld.w	$r13,$r22,-56(0xfc8)
1c002490:	001031ac 	add.w	$r12,$r13,$r12
1c002494:	2800018c 	ld.b	$r12,$r12,0
1c002498:	47fc599f 	bnez	$r12,-936(0x7ffc58) # 1c0020f0 <myprintf2+0x50>
1c00249c:	0015000c 	move	$r12,$r0
1c0024a0:	00150184 	move	$r4,$r12
1c0024a4:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c0024a8:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c0024ac:	02818063 	addi.w	$r3,$r3,96(0x60)
1c0024b0:	4c000020 	jirl	$r0,$r1,0

1c0024b4 <UART_Init>:
UART_Init():
1c0024b4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0024b8:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0024bc:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0024c0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0024c4:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0024c8:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0024cc:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c0024d0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0024d4:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c0024d8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0024dc:	03403d8c 	andi	$r12,$r12,0xf
1c0024e0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0024e4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0024e8:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c0024ec:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0024f0:	0044918c 	srli.w	$r12,$r12,0x4
1c0024f4:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c0024f8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0024fc:	40000d80 	beqz	$r12,12(0xc) # 1c002508 <UART_Init+0x54>
1c002500:	2a3f8ecc 	ld.bu	$r12,$r22,-29(0xfe3)
1c002504:	44001980 	bnez	$r12,24(0x18) # 1c00251c <UART_Init+0x68>
1c002508:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00250c:	0280e00d 	addi.w	$r13,$r0,56(0x38)
1c002510:	2900118d 	st.b	$r13,$r12,4(0x4)
1c002514:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c002518:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00251c:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002520:	157fd18c 	lu12i.w	$r12,-262516(0xbfe8c)
1c002524:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c00253c <UART_Init+0x88>
1c002528:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00252c:	02808c0d 	addi.w	$r13,$r0,35(0x23)
1c002530:	2900118d 	st.b	$r13,$r12,4(0x4)
1c002534:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c002538:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00253c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002540:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c002544:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002548:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c00254c:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c002550:	580011ac 	beq	$r13,$r12,16(0x10) # 1c002560 <UART_Init+0xac>
1c002554:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002558:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c00255c:	5c0061ac 	bne	$r13,$r12,96(0x60) # 1c0025bc <UART_Init+0x108>
1c002560:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002564:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c002568:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00256c:	2880018c 	ld.w	$r12,$r12,0
1c002570:	002131ae 	div.wu	$r14,$r13,$r12
1c002574:	5c000980 	bne	$r12,$r0,8(0x8) # 1c00257c <UART_Init+0xc8>
1c002578:	002a0007 	break	0x7
1c00257c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c002580:	002135cc 	div.wu	$r12,$r14,$r13
1c002584:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c00258c <UART_Init+0xd8>
1c002588:	002a0007 	break	0x7
1c00258c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002590:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002594:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c002598:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00259c:	2880018e 	ld.w	$r14,$r12,0
1c0025a0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0025a4:	001c31ce 	mul.w	$r14,$r14,$r12
1c0025a8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0025ac:	001c31cc 	mul.w	$r12,$r14,$r12
1c0025b0:	001131ac 	sub.w	$r12,$r13,$r12
1c0025b4:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0025b8:	50005400 	b	84(0x54) # 1c00260c <UART_Init+0x158>
1c0025bc:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0025c0:	2880018c 	ld.w	$r12,$r12,0
1c0025c4:	1400010d 	lu12i.w	$r13,8(0x8)
1c0025c8:	002131ae 	div.wu	$r14,$r13,$r12
1c0025cc:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0025d4 <UART_Init+0x120>
1c0025d0:	002a0007 	break	0x7
1c0025d4:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0025d8:	002135cc 	div.wu	$r12,$r14,$r13
1c0025dc:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c0025e4 <UART_Init+0x130>
1c0025e0:	002a0007 	break	0x7
1c0025e4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0025e8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0025ec:	2880018d 	ld.w	$r13,$r12,0
1c0025f0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0025f4:	001c31ad 	mul.w	$r13,$r13,$r12
1c0025f8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0025fc:	001c31ac 	mul.w	$r12,$r13,$r12
1c002600:	1400010d 	lu12i.w	$r13,8(0x8)
1c002604:	001131ac 	sub.w	$r12,$r13,$r12
1c002608:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00260c:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c002610:	0283fc0c 	addi.w	$r12,$r0,255(0xff)
1c002614:	001c31ad 	mul.w	$r13,$r13,$r12
1c002618:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00261c:	2880018c 	ld.w	$r12,$r12,0
1c002620:	002131ae 	div.wu	$r14,$r13,$r12
1c002624:	5c000980 	bne	$r12,$r0,8(0x8) # 1c00262c <UART_Init+0x178>
1c002628:	002a0007 	break	0x7
1c00262c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c002630:	002135cc 	div.wu	$r12,$r14,$r13
1c002634:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c00263c <UART_Init+0x188>
1c002638:	002a0007 	break	0x7
1c00263c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002640:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002644:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002648:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00264c:	02be000c 	addi.w	$r12,$r0,-128(0xf80)
1c002650:	001531ac 	or	$r12,$r13,$r12
1c002654:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002658:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00265c:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002660:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002664:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002668:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00266c:	2900018d 	st.b	$r13,$r12,0
1c002670:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002674:	0044a18c 	srli.w	$r12,$r12,0x8
1c002678:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00267c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002680:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002684:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002688:	2900058d 	st.b	$r13,$r12,1(0x1)
1c00268c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002690:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002694:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002698:	2900098d 	st.b	$r13,$r12,2(0x2)
1c00269c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0026a0:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c0026a4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0026a8:	0341fd8c 	andi	$r12,$r12,0x7f
1c0026ac:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0026b0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0026b4:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c0026b8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0026bc:	29000580 	st.b	$r0,$r12,1(0x1)
1c0026c0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0026c4:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c0026c8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0026cc:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0026d0:	2a00298c 	ld.bu	$r12,$r12,10(0xa)
1c0026d4:	001531ac 	or	$r12,$r13,$r12
1c0026d8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0026dc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0026e0:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c0026e4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0026e8:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c0026ec:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0026f0:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0026f4:	2a00358c 	ld.bu	$r12,$r12,13(0xd)
1c0026f8:	001531ac 	or	$r12,$r13,$r12
1c0026fc:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002700:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002704:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002708:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00270c:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002710:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002714:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002718:	2a00398c 	ld.bu	$r12,$r12,14(0xe)
1c00271c:	001531ac 	or	$r12,$r13,$r12
1c002720:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002724:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002728:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c00272c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002730:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002734:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002738:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00273c:	2a002d8c 	ld.bu	$r12,$r12,11(0xb)
1c002740:	001531ac 	or	$r12,$r13,$r12
1c002744:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002748:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00274c:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002750:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002754:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002758:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00275c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002760:	2a003d8c 	ld.bu	$r12,$r12,15(0xf)
1c002764:	001531ac 	or	$r12,$r13,$r12
1c002768:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00276c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002770:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002774:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002778:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c00277c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002780:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002784:	2a00318c 	ld.bu	$r12,$r12,12(0xc)
1c002788:	001531ac 	or	$r12,$r13,$r12
1c00278c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002790:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002794:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002798:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00279c:	2a00018c 	ld.bu	$r12,$r12,0
1c0027a0:	03400000 	andi	$r0,$r0,0x0
1c0027a4:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0027a8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0027ac:	4c000020 	jirl	$r0,$r1,0

1c0027b0 <UART_StructInit>:
UART_StructInit():
1c0027b0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0027b4:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0027b8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0027bc:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0027c0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0027c4:	1400038d 	lu12i.w	$r13,28(0x1c)
1c0027c8:	038801ad 	ori	$r13,$r13,0x200
1c0027cc:	2980018d 	st.w	$r13,$r12,0
1c0027d0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0027d4:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c0027d8:	038801ad 	ori	$r13,$r13,0x200
1c0027dc:	2980118d 	st.w	$r13,$r12,4(0x4)
1c0027e0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0027e4:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c0027e8:	2900298d 	st.b	$r13,$r12,10(0xa)
1c0027ec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0027f0:	29002d80 	st.b	$r0,$r12,11(0xb)
1c0027f4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0027f8:	29003580 	st.b	$r0,$r12,13(0xd)
1c0027fc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002800:	29003180 	st.b	$r0,$r12,12(0xc)
1c002804:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002808:	29003d80 	st.b	$r0,$r12,15(0xf)
1c00280c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002810:	29003980 	st.b	$r0,$r12,14(0xe)
1c002814:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002818:	29402180 	st.h	$r0,$r12,8(0x8)
1c00281c:	03400000 	andi	$r0,$r0,0x0
1c002820:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002824:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002828:	4c000020 	jirl	$r0,$r1,0

1c00282c <UART_ITConfig>:
UART_ITConfig():
1c00282c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002830:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002834:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002838:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c00283c:	001500ac 	move	$r12,$r5
1c002840:	29bf92c6 	st.w	$r6,$r22,-28(0xfe4)
1c002844:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c002848:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c00284c:	40002980 	beqz	$r12,40(0x28) # 1c002874 <UART_ITConfig+0x48>
1c002850:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002854:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c002858:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00285c:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c002860:	001531ac 	or	$r12,$r13,$r12
1c002864:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002868:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00286c:	2900058d 	st.b	$r13,$r12,1(0x1)
1c002870:	50003400 	b	52(0x34) # 1c0028a4 <UART_ITConfig+0x78>
1c002874:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002878:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c00287c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002880:	00005d8d 	ext.w.b	$r13,$r12
1c002884:	283faecc 	ld.b	$r12,$r22,-21(0xfeb)
1c002888:	0014300c 	nor	$r12,$r0,$r12
1c00288c:	00005d8c 	ext.w.b	$r12,$r12
1c002890:	0014b1ac 	and	$r12,$r13,$r12
1c002894:	00005d8c 	ext.w.b	$r12,$r12
1c002898:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00289c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028a0:	2900058d 	st.b	$r13,$r12,1(0x1)
1c0028a4:	03400000 	andi	$r0,$r0,0x0
1c0028a8:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0028ac:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0028b0:	4c000020 	jirl	$r0,$r1,0

1c0028b4 <UART_SendData>:
UART_SendData():
1c0028b4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0028b8:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0028bc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0028c0:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0028c4:	001500ac 	move	$r12,$r5
1c0028c8:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c0028cc:	03400000 	andi	$r0,$r0,0x0
1c0028d0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028d4:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c0028d8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0028dc:	0340818c 	andi	$r12,$r12,0x20
1c0028e0:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c0028d0 <UART_SendData+0x1c>
1c0028e4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028e8:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c0028ec:	2900018d 	st.b	$r13,$r12,0
1c0028f0:	03400000 	andi	$r0,$r0,0x0
1c0028f4:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0028f8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0028fc:	4c000020 	jirl	$r0,$r1,0

1c002900 <UART_ReceiveData>:
UART_ReceiveData():
1c002900:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002904:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c002908:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00290c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002910:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c002914:	03400000 	andi	$r0,$r0,0x0
1c002918:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00291c:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c002920:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002924:	0340058c 	andi	$r12,$r12,0x1
1c002928:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c002918 <UART_ReceiveData+0x18>
1c00292c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002930:	2a00018c 	ld.bu	$r12,$r12,0
1c002934:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002938:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00293c:	00150184 	move	$r4,$r12
1c002940:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c002944:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002948:	4c000020 	jirl	$r0,$r1,0

1c00294c <Uart0_init>:
Uart0_init():
1c00294c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002950:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002954:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002958:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00295c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002960:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002964:	02801804 	addi.w	$r4,$r0,6(0x6)
1c002968:	57ecfbff 	bl	-4872(0xfffecf8) # 1c001660 <gpio_pin_remap>
1c00296c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002970:	02801c04 	addi.w	$r4,$r0,7(0x7)
1c002974:	57ecefff 	bl	-4884(0xfffecec) # 1c001660 <gpio_pin_remap>
1c002978:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c00297c:	00150184 	move	$r4,$r12
1c002980:	57fe33ff 	bl	-464(0xffffe30) # 1c0027b0 <UART_StructInit>
1c002984:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002988:	289a218c 	ld.w	$r12,$r12,1672(0x688)
1c00298c:	2880018c 	ld.w	$r12,$r12,0
1c002990:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002994:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002998:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c00299c:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c0029a0:	00150185 	move	$r5,$r12
1c0029a4:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c0029a8:	57fb0fff 	bl	-1268(0xffffb0c) # 1c0024b4 <UART_Init>
1c0029ac:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c0029b0:	0380098c 	ori	$r12,$r12,0x2
1c0029b4:	2a00018c 	ld.bu	$r12,$r12,0
1c0029b8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0029bc:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c0029c0:	0380098c 	ori	$r12,$r12,0x2
1c0029c4:	038021ad 	ori	$r13,$r13,0x8
1c0029c8:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c0029cc:	2900018d 	st.b	$r13,$r12,0
1c0029d0:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c0029d4:	2a00018c 	ld.bu	$r12,$r12,0
1c0029d8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0029dc:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c0029e0:	038021ad 	ori	$r13,$r13,0x8
1c0029e4:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c0029e8:	2900018d 	st.b	$r13,$r12,0
1c0029ec:	02800406 	addi.w	$r6,$r0,1(0x1)
1c0029f0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0029f4:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c0029f8:	57fe37ff 	bl	-460(0xffffe34) # 1c00282c <UART_ITConfig>
1c0029fc:	03400000 	andi	$r0,$r0,0x0
1c002a00:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002a04:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002a08:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002a0c:	4c000020 	jirl	$r0,$r1,0

1c002a10 <Uart1_init>:
Uart1_init():
1c002a10:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002a14:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002a18:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002a1c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002a20:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002a24:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002a28:	02802004 	addi.w	$r4,$r0,8(0x8)
1c002a2c:	57ec37ff 	bl	-5068(0xfffec34) # 1c001660 <gpio_pin_remap>
1c002a30:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002a34:	02802404 	addi.w	$r4,$r0,9(0x9)
1c002a38:	57ec2bff 	bl	-5080(0xfffec28) # 1c001660 <gpio_pin_remap>
1c002a3c:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c002a40:	00150184 	move	$r4,$r12
1c002a44:	57fd6fff 	bl	-660(0xffffd6c) # 1c0027b0 <UART_StructInit>
1c002a48:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002a4c:	2897118c 	ld.w	$r12,$r12,1476(0x5c4)
1c002a50:	2880018c 	ld.w	$r12,$r12,0
1c002a54:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002a58:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002a5c:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c002a60:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c002a64:	00150185 	move	$r5,$r12
1c002a68:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c002a6c:	57fa4bff 	bl	-1464(0xffffa48) # 1c0024b4 <UART_Init>
1c002a70:	00150006 	move	$r6,$r0
1c002a74:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002a78:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c002a7c:	57fdb3ff 	bl	-592(0xffffdb0) # 1c00282c <UART_ITConfig>
1c002a80:	03400000 	andi	$r0,$r0,0x0
1c002a84:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002a88:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002a8c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002a90:	4c000020 	jirl	$r0,$r1,0

1c002a94 <Uart0_send>:
Uart0_send():
1c002a94:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002a98:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002a9c:	29806076 	st.w	$r22,$r3,24(0x18)
1c002aa0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002aa4:	0015008c 	move	$r12,$r4
1c002aa8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002aac:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002ab0:	00150185 	move	$r5,$r12
1c002ab4:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c002ab8:	57fdffff 	bl	-516(0xffffdfc) # 1c0028b4 <UART_SendData>
1c002abc:	03400000 	andi	$r0,$r0,0x0
1c002ac0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002ac4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002ac8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002acc:	4c000020 	jirl	$r0,$r1,0

1c002ad0 <Uart1_send>:
Uart1_send():
1c002ad0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002ad4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002ad8:	29806076 	st.w	$r22,$r3,24(0x18)
1c002adc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002ae0:	0015008c 	move	$r12,$r4
1c002ae4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002ae8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002aec:	00150185 	move	$r5,$r12
1c002af0:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c002af4:	57fdc3ff 	bl	-576(0xffffdc0) # 1c0028b4 <UART_SendData>
1c002af8:	03400000 	andi	$r0,$r0,0x0
1c002afc:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002b00:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002b04:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002b08:	4c000020 	jirl	$r0,$r1,0

1c002b0c <Uart2_send>:
Uart2_send():
1c002b0c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002b10:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002b14:	29806076 	st.w	$r22,$r3,24(0x18)
1c002b18:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002b1c:	0015008c 	move	$r12,$r4
1c002b20:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002b24:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002b28:	00150185 	move	$r5,$r12
1c002b2c:	157fd184 	lu12i.w	$r4,-262516(0xbfe8c)
1c002b30:	57fd87ff 	bl	-636(0xffffd84) # 1c0028b4 <UART_SendData>
1c002b34:	03400000 	andi	$r0,$r0,0x0
1c002b38:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002b3c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002b40:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002b44:	4c000020 	jirl	$r0,$r1,0

1c002b48 <CLOCK_WaitForHSEStartUp>:
CLOCK_WaitForHSEStartUp():
1c002b48:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002b4c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002b50:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002b54:	1400006c 	lu12i.w	$r12,3(0x3)
1c002b58:	03ba018c 	ori	$r12,$r12,0xe80
1c002b5c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002b60:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002b64:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002b68:	2880018d 	ld.w	$r13,$r12,0
1c002b6c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002b70:	038101ad 	ori	$r13,$r13,0x40
1c002b74:	2980018d 	st.w	$r13,$r12,0
1c002b78:	03400000 	andi	$r0,$r0,0x0
1c002b7c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002b80:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002b84:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c002b88:	47fff59f 	bnez	$r12,-12(0x7ffff4) # 1c002b7c <CLOCK_WaitForHSEStartUp+0x34>
1c002b8c:	50001c00 	b	28(0x1c) # 1c002ba8 <CLOCK_WaitForHSEStartUp+0x60>
1c002b90:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002b94:	2880018e 	ld.w	$r14,$r12,0
1c002b98:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002b9c:	02bdfc0d 	addi.w	$r13,$r0,-129(0xf7f)
1c002ba0:	0014b5cd 	and	$r13,$r14,$r13
1c002ba4:	2980018d 	st.w	$r13,$r12,0
1c002ba8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002bac:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c002bb0:	63ffe180 	blt	$r12,$r0,-32(0x3ffe0) # 1c002b90 <CLOCK_WaitForHSEStartUp+0x48>
1c002bb4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002bb8:	2880018d 	ld.w	$r13,$r12,0
1c002bbc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002bc0:	038201ad 	ori	$r13,$r13,0x80
1c002bc4:	2980018d 	st.w	$r13,$r12,0
1c002bc8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002bcc:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002bd0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002bd4:	00150184 	move	$r4,$r12
1c002bd8:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002bdc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002be0:	4c000020 	jirl	$r0,$r1,0

1c002be4 <CLOCK_WaitForLSEStartUp>:
CLOCK_WaitForLSEStartUp():
1c002be4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002be8:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002bec:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002bf0:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c002bf4:	50008800 	b	136(0x88) # 1c002c7c <CLOCK_WaitForLSEStartUp+0x98>
1c002bf8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002bfc:	2880018e 	ld.w	$r14,$r12,0
1c002c00:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c04:	02bf7c0d 	addi.w	$r13,$r0,-33(0xfdf)
1c002c08:	0014b5cd 	and	$r13,$r14,$r13
1c002c0c:	2980018d 	st.w	$r13,$r12,0
1c002c10:	0280700c 	addi.w	$r12,$r0,28(0x1c)
1c002c14:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002c18:	50001400 	b	20(0x14) # 1c002c2c <CLOCK_WaitForLSEStartUp+0x48>
1c002c1c:	03400000 	andi	$r0,$r0,0x0
1c002c20:	03400000 	andi	$r0,$r0,0x0
1c002c24:	03400000 	andi	$r0,$r0,0x0
1c002c28:	03400000 	andi	$r0,$r0,0x0
1c002c2c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002c30:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002c34:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c002c38:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002c1c <CLOCK_WaitForLSEStartUp+0x38>
1c002c3c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c40:	2880018d 	ld.w	$r13,$r12,0
1c002c44:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c48:	038081ad 	ori	$r13,$r13,0x20
1c002c4c:	2980018d 	st.w	$r13,$r12,0
1c002c50:	0280700c 	addi.w	$r12,$r0,28(0x1c)
1c002c54:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002c58:	50001400 	b	20(0x14) # 1c002c6c <CLOCK_WaitForLSEStartUp+0x88>
1c002c5c:	03400000 	andi	$r0,$r0,0x0
1c002c60:	03400000 	andi	$r0,$r0,0x0
1c002c64:	03400000 	andi	$r0,$r0,0x0
1c002c68:	03400000 	andi	$r0,$r0,0x0
1c002c6c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002c70:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002c74:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c002c78:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002c5c <CLOCK_WaitForLSEStartUp+0x78>
1c002c7c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c80:	0380118c 	ori	$r12,$r12,0x4
1c002c84:	2880018d 	ld.w	$r13,$r12,0
1c002c88:	1420000c 	lu12i.w	$r12,65536(0x10000)
1c002c8c:	0014b1ac 	and	$r12,$r13,$r12
1c002c90:	43ff699f 	beqz	$r12,-152(0x7fff68) # 1c002bf8 <CLOCK_WaitForLSEStartUp+0x14>
1c002c94:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c98:	0380118c 	ori	$r12,$r12,0x4
1c002c9c:	2880018d 	ld.w	$r13,$r12,0
1c002ca0:	1440000c 	lu12i.w	$r12,131072(0x20000)
1c002ca4:	0014b1ac 	and	$r12,$r13,$r12
1c002ca8:	47ff519f 	bnez	$r12,-176(0x7fff50) # 1c002bf8 <CLOCK_WaitForLSEStartUp+0x14>
1c002cac:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002cb0:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002cb4:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002cb8:	00150184 	move	$r4,$r12
1c002cbc:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002cc0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002cc4:	4c000020 	jirl	$r0,$r1,0

1c002cc8 <CLOCK_HSEConfig>:
CLOCK_HSEConfig():
1c002cc8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002ccc:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002cd0:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002cd4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002cd8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002cdc:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002ce0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ce4:	2880018e 	ld.w	$r14,$r12,0
1c002ce8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002cec:	0014300d 	nor	$r13,$r0,$r12
1c002cf0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002cf4:	0014b5cd 	and	$r13,$r14,$r13
1c002cf8:	2980018d 	st.w	$r13,$r12,0
1c002cfc:	1400002c 	lu12i.w	$r12,1(0x1)
1c002d00:	03b4bd8c 	ori	$r12,$r12,0xd2f
1c002d04:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002d08:	50001400 	b	20(0x14) # 1c002d1c <CLOCK_HSEConfig+0x54>
1c002d0c:	03400000 	andi	$r0,$r0,0x0
1c002d10:	03400000 	andi	$r0,$r0,0x0
1c002d14:	03400000 	andi	$r0,$r0,0x0
1c002d18:	03400000 	andi	$r0,$r0,0x0
1c002d1c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002d20:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002d24:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c002d28:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002d0c <CLOCK_HSEConfig+0x44>
1c002d2c:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002d30:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c002d34:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c002d44 <CLOCK_HSEConfig+0x7c>
1c002d38:	57fe13ff 	bl	-496(0xffffe10) # 1c002b48 <CLOCK_WaitForHSEStartUp>
1c002d3c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002d40:	50002400 	b	36(0x24) # 1c002d64 <CLOCK_HSEConfig+0x9c>
1c002d44:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002d48:	2880018e 	ld.w	$r14,$r12,0
1c002d4c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002d50:	02bdfc0d 	addi.w	$r13,$r0,-129(0xf7f)
1c002d54:	0014b5cd 	and	$r13,$r14,$r13
1c002d58:	2980018d 	st.w	$r13,$r12,0
1c002d5c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002d60:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002d64:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002d68:	00150184 	move	$r4,$r12
1c002d6c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002d70:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002d74:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002d78:	4c000020 	jirl	$r0,$r1,0

1c002d7c <CLOCK_LSEConfig>:
CLOCK_LSEConfig():
1c002d7c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002d80:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002d84:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002d88:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002d8c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002d90:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002d94:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002d98:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c002d9c:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c002dac <CLOCK_LSEConfig+0x30>
1c002da0:	57fe47ff 	bl	-444(0xffffe44) # 1c002be4 <CLOCK_WaitForLSEStartUp>
1c002da4:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002da8:	50002400 	b	36(0x24) # 1c002dcc <CLOCK_LSEConfig+0x50>
1c002dac:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002db0:	2880018e 	ld.w	$r14,$r12,0
1c002db4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002db8:	02bf7c0d 	addi.w	$r13,$r0,-33(0xfdf)
1c002dbc:	0014b5cd 	and	$r13,$r14,$r13
1c002dc0:	2980018d 	st.w	$r13,$r12,0
1c002dc4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002dc8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002dcc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002dd0:	00150184 	move	$r4,$r12
1c002dd4:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002dd8:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002ddc:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002de0:	4c000020 	jirl	$r0,$r1,0

1c002de4 <CLOCK_StructInit>:
CLOCK_StructInit():
1c002de4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002de8:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002dec:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002df0:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002df4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002df8:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c002dfc:	2980018d 	st.w	$r13,$r12,0
1c002e00:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002e04:	0282000d 	addi.w	$r13,$r0,128(0x80)
1c002e08:	2980118d 	st.w	$r13,$r12,4(0x4)
1c002e0c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002e10:	0280800d 	addi.w	$r13,$r0,32(0x20)
1c002e14:	2980218d 	st.w	$r13,$r12,8(0x8)
1c002e18:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002e1c:	29803180 	st.w	$r0,$r12,12(0xc)
1c002e20:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002e24:	29804180 	st.w	$r0,$r12,16(0x10)
1c002e28:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002e2c:	29805180 	st.w	$r0,$r12,20(0x14)
1c002e30:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002e34:	29806180 	st.w	$r0,$r12,24(0x18)
1c002e38:	03400000 	andi	$r0,$r0,0x0
1c002e3c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002e40:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002e44:	4c000020 	jirl	$r0,$r1,0

1c002e48 <CLOCK_Init>:
CLOCK_Init():
1c002e48:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002e4c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002e50:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002e54:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002e58:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002e5c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002e60:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e64:	2880018e 	ld.w	$r14,$r12,0
1c002e68:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e6c:	02b3fc0d 	addi.w	$r13,$r0,-769(0xcff)
1c002e70:	0014b5cd 	and	$r13,$r14,$r13
1c002e74:	2980018d 	st.w	$r13,$r12,0
1c002e78:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e7c:	2880018e 	ld.w	$r14,$r12,0
1c002e80:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002e84:	2880418d 	ld.w	$r13,$r12,16(0x10)
1c002e88:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e8c:	001535cd 	or	$r13,$r14,$r13
1c002e90:	2980018d 	st.w	$r13,$r12,0
1c002e94:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e98:	2880018e 	ld.w	$r14,$r12,0
1c002e9c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ea0:	02bfbc0d 	addi.w	$r13,$r0,-17(0xfef)
1c002ea4:	0014b5cd 	and	$r13,$r14,$r13
1c002ea8:	2980018d 	st.w	$r13,$r12,0
1c002eac:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002eb0:	2880018e 	ld.w	$r14,$r12,0
1c002eb4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002eb8:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c002ebc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ec0:	001535cd 	or	$r13,$r14,$r13
1c002ec4:	2980018d 	st.w	$r13,$r12,0
1c002ec8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ecc:	2880018e 	ld.w	$r14,$r12,0
1c002ed0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ed4:	15ffffed 	lu12i.w	$r13,-1(0xfffff)
1c002ed8:	039ffdad 	ori	$r13,$r13,0x7ff
1c002edc:	0014b5cd 	and	$r13,$r14,$r13
1c002ee0:	2980018d 	st.w	$r13,$r12,0
1c002ee4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ee8:	2880018e 	ld.w	$r14,$r12,0
1c002eec:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002ef0:	2880518d 	ld.w	$r13,$r12,20(0x14)
1c002ef4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ef8:	001535cd 	or	$r13,$r14,$r13
1c002efc:	2980018d 	st.w	$r13,$r12,0
1c002f00:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002f04:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c002f08:	00150184 	move	$r4,$r12
1c002f0c:	57fdbfff 	bl	-580(0xffffdbc) # 1c002cc8 <CLOCK_HSEConfig>
1c002f10:	0015008d 	move	$r13,$r4
1c002f14:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002f18:	58000dac 	beq	$r13,$r12,12(0xc) # 1c002f24 <CLOCK_Init+0xdc>
1c002f1c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002f20:	50015000 	b	336(0x150) # 1c003070 <CLOCK_Init+0x228>
1c002f24:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002f28:	2880218c 	ld.w	$r12,$r12,8(0x8)
1c002f2c:	00150184 	move	$r4,$r12
1c002f30:	57fe4fff 	bl	-436(0xffffe4c) # 1c002d7c <CLOCK_LSEConfig>
1c002f34:	0015008d 	move	$r13,$r4
1c002f38:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002f3c:	58000dac 	beq	$r13,$r12,12(0xc) # 1c002f48 <CLOCK_Init+0x100>
1c002f40:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002f44:	50012c00 	b	300(0x12c) # 1c003070 <CLOCK_Init+0x228>
1c002f48:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002f4c:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c002f50:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c002f54:	5800fdac 	beq	$r13,$r12,252(0xfc) # 1c003050 <CLOCK_Init+0x208>
1c002f58:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002f5c:	2880518c 	ld.w	$r12,$r12,20(0x14)
1c002f60:	4000a180 	beqz	$r12,160(0xa0) # 1c003000 <CLOCK_Init+0x1b8>
1c002f64:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f68:	2880018e 	ld.w	$r14,$r12,0
1c002f6c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f70:	15efffed 	lu12i.w	$r13,-32769(0xf7fff)
1c002f74:	03bffdad 	ori	$r13,$r13,0xfff
1c002f78:	0014b5cd 	and	$r13,$r14,$r13
1c002f7c:	2980018d 	st.w	$r13,$r12,0
1c002f80:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f84:	2880018e 	ld.w	$r14,$r12,0
1c002f88:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002f8c:	2880618d 	ld.w	$r13,$r12,24(0x18)
1c002f90:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f94:	001535cd 	or	$r13,$r14,$r13
1c002f98:	2980018d 	st.w	$r13,$r12,0
1c002f9c:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c002fa0:	0386c18c 	ori	$r12,$r12,0x1b0
1c002fa4:	2880018c 	ld.w	$r12,$r12,0
1c002fa8:	40004180 	beqz	$r12,64(0x40) # 1c002fe8 <CLOCK_Init+0x1a0>
1c002fac:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c002fb0:	0386c18c 	ori	$r12,$r12,0x1b0
1c002fb4:	2880018c 	ld.w	$r12,$r12,0
1c002fb8:	0040898e 	slli.w	$r14,$r12,0x2
1c002fbc:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c002fc0:	002031cd 	div.w	$r13,$r14,$r12
1c002fc4:	5c000980 	bne	$r12,$r0,8(0x8) # 1c002fcc <CLOCK_Init+0x184>
1c002fc8:	002a0007 	break	0x7
1c002fcc:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
1c002fd0:	001c31ac 	mul.w	$r12,$r13,$r12
1c002fd4:	0015018d 	move	$r13,$r12
1c002fd8:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002fdc:	0281118c 	addi.w	$r12,$r12,68(0x44)
1c002fe0:	2980018d 	st.w	$r13,$r12,0
1c002fe4:	50008000 	b	128(0x80) # 1c003064 <CLOCK_Init+0x21c>
1c002fe8:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002fec:	0280d18c 	addi.w	$r12,$r12,52(0x34)
1c002ff0:	1401458d 	lu12i.w	$r13,2604(0xa2c)
1c002ff4:	038fe1ad 	ori	$r13,$r13,0x3f8
1c002ff8:	2980018d 	st.w	$r13,$r12,0
1c002ffc:	50006800 	b	104(0x68) # 1c003064 <CLOCK_Init+0x21c>
1c003000:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c003004:	0386c18c 	ori	$r12,$r12,0x1b0
1c003008:	2880018c 	ld.w	$r12,$r12,0
1c00300c:	40002d80 	beqz	$r12,44(0x2c) # 1c003038 <CLOCK_Init+0x1f0>
1c003010:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c003014:	0386c18c 	ori	$r12,$r12,0x1b0
1c003018:	2880018d 	ld.w	$r13,$r12,0
1c00301c:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
1c003020:	001c31ac 	mul.w	$r12,$r13,$r12
1c003024:	0015018d 	move	$r13,$r12
1c003028:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c00302c:	02bfd18c 	addi.w	$r12,$r12,-12(0xff4)
1c003030:	2980018d 	st.w	$r13,$r12,0
1c003034:	50003000 	b	48(0x30) # 1c003064 <CLOCK_Init+0x21c>
1c003038:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c00303c:	02bf918c 	addi.w	$r12,$r12,-28(0xfe4)
1c003040:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c003044:	038801ad 	ori	$r13,$r13,0x200
1c003048:	2980018d 	st.w	$r13,$r12,0
1c00304c:	50001800 	b	24(0x18) # 1c003064 <CLOCK_Init+0x21c>
1c003050:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c003054:	02bf318c 	addi.w	$r12,$r12,-52(0xfcc)
1c003058:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c00305c:	038801ad 	ori	$r13,$r13,0x200
1c003060:	2980018d 	st.w	$r13,$r12,0
1c003064:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003068:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00306c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003070:	00150184 	move	$r4,$r12
1c003074:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003078:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c00307c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003080:	4c000020 	jirl	$r0,$r1,0

1c003084 <SystemClockInit>:
SystemClockInit():
1c003084:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003088:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c00308c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003090:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003094:	29bf52c0 	st.w	$r0,$r22,-44(0xfd4)
1c003098:	29bf62c0 	st.w	$r0,$r22,-40(0xfd8)
1c00309c:	29bf72c0 	st.w	$r0,$r22,-36(0xfdc)
1c0030a0:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c0030a4:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c0030a8:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0030ac:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0030b0:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c0030b4:	00150184 	move	$r4,$r12
1c0030b8:	57fd2fff 	bl	-724(0xffffd2c) # 1c002de4 <CLOCK_StructInit>
1c0030bc:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c0030c0:	29bf52cc 	st.w	$r12,$r22,-44(0xfd4)
1c0030c4:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c0030c8:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c0030cc:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c0030d0:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c0030d4:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c0030d8:	0284000c 	addi.w	$r12,$r0,256(0x100)
1c0030dc:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0030e0:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0030e4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0030e8:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c0030ec:	00150184 	move	$r4,$r12
1c0030f0:	57fd5bff 	bl	-680(0xffffd58) # 1c002e48 <CLOCK_Init>
1c0030f4:	0015008d 	move	$r13,$r4
1c0030f8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0030fc:	58000dac 	beq	$r13,$r12,12(0xc) # 1c003108 <SystemClockInit+0x84>
1c003100:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c003104:	50000800 	b	8(0x8) # 1c00310c <SystemClockInit+0x88>
1c003108:	0015000c 	move	$r12,$r0
1c00310c:	00150184 	move	$r4,$r12
1c003110:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003114:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003118:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00311c:	4c000020 	jirl	$r0,$r1,0

1c003120 <IsGlobalIntOpen>:
IsGlobalIntOpen():
1c003120:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003124:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003128:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00312c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003130:	0400000c 	csrrd	$r12,0x0
1c003134:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003138:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00313c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003140:	0340118c 	andi	$r12,$r12,0x4
1c003144:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003148:	00150184 	move	$r4,$r12
1c00314c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003150:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003154:	4c000020 	jirl	$r0,$r1,0

1c003158 <DisableInt>:
DisableInt():
1c003158:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00315c:	29803076 	st.w	$r22,$r3,12(0xc)
1c003160:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003164:	0380100c 	ori	$r12,$r0,0x4
1c003168:	04000180 	csrxchg	$r0,$r12,0x0
1c00316c:	03400000 	andi	$r0,$r0,0x0
1c003170:	28803076 	ld.w	$r22,$r3,12(0xc)
1c003174:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003178:	4c000020 	jirl	$r0,$r1,0

1c00317c <EnableInt>:
EnableInt():
1c00317c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003180:	29803076 	st.w	$r22,$r3,12(0xc)
1c003184:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003188:	0380100c 	ori	$r12,$r0,0x4
1c00318c:	0400018c 	csrxchg	$r12,$r12,0x0
1c003190:	03400000 	andi	$r0,$r0,0x0
1c003194:	28803076 	ld.w	$r22,$r3,12(0xc)
1c003198:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00319c:	4c000020 	jirl	$r0,$r1,0

1c0031a0 <Set_Timer_stop>:
Set_Timer_stop():
1c0031a0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0031a4:	29803076 	st.w	$r22,$r3,12(0xc)
1c0031a8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0031ac:	04010420 	csrwr	$r0,0x41
1c0031b0:	03400000 	andi	$r0,$r0,0x0
1c0031b4:	28803076 	ld.w	$r22,$r3,12(0xc)
1c0031b8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0031bc:	4c000020 	jirl	$r0,$r1,0

1c0031c0 <Set_Timer_clear>:
Set_Timer_clear():
1c0031c0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0031c4:	29803076 	st.w	$r22,$r3,12(0xc)
1c0031c8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0031cc:	0380040c 	ori	$r12,$r0,0x1
1c0031d0:	0401102c 	csrwr	$r12,0x44
1c0031d4:	03400000 	andi	$r0,$r0,0x0
1c0031d8:	28803076 	ld.w	$r22,$r3,12(0xc)
1c0031dc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0031e0:	4c000020 	jirl	$r0,$r1,0

1c0031e4 <Wake_Set>:
Wake_Set():
1c0031e4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0031e8:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0031ec:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0031f0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0031f4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0031f8:	40006980 	beqz	$r12,104(0x68) # 1c003260 <Wake_Set+0x7c>
1c0031fc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003200:	0040a18c 	slli.w	$r12,$r12,0x8
1c003204:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003208:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c00320c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003210:	0380218c 	ori	$r12,$r12,0x8
1c003214:	2880018d 	ld.w	$r13,$r12,0
1c003218:	14001fec 	lu12i.w	$r12,255(0xff)
1c00321c:	03bffd8c 	ori	$r12,$r12,0xfff
1c003220:	0014b1ac 	and	$r12,$r13,$r12
1c003224:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003228:	001031ac 	add.w	$r12,$r13,$r12
1c00322c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003230:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003234:	0380318c 	ori	$r12,$r12,0xc
1c003238:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c00323c:	2980018d 	st.w	$r13,$r12,0
1c003240:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003244:	0380118c 	ori	$r12,$r12,0x4
1c003248:	2880018d 	ld.w	$r13,$r12,0
1c00324c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003250:	0380118c 	ori	$r12,$r12,0x4
1c003254:	038601ad 	ori	$r13,$r13,0x180
1c003258:	2980018d 	st.w	$r13,$r12,0
1c00325c:	50002400 	b	36(0x24) # 1c003280 <Wake_Set+0x9c>
1c003260:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003264:	0380118c 	ori	$r12,$r12,0x4
1c003268:	2880018e 	ld.w	$r14,$r12,0
1c00326c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003270:	0380118c 	ori	$r12,$r12,0x4
1c003274:	02b9fc0d 	addi.w	$r13,$r0,-385(0xe7f)
1c003278:	0014b5cd 	and	$r13,$r14,$r13
1c00327c:	2980018d 	st.w	$r13,$r12,0
1c003280:	03400000 	andi	$r0,$r0,0x0
1c003284:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003288:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00328c:	4c000020 	jirl	$r0,$r1,0

1c003290 <PMU_GetRstRrc>:
PMU_GetRstRrc():
1c003290:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003294:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003298:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00329c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0032a0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0032a4:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c0032a8:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c0032ac:	0014b1ac 	and	$r12,$r13,$r12
1c0032b0:	44000d80 	bnez	$r12,12(0xc) # 1c0032bc <PMU_GetRstRrc+0x2c>
1c0032b4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0032b8:	50003000 	b	48(0x30) # 1c0032e8 <PMU_GetRstRrc+0x58>
1c0032bc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0032c0:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c0032c4:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c0032c8:	0014b1ad 	and	$r13,$r13,$r12
1c0032cc:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c0032d0:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c0032e0 <PMU_GetRstRrc+0x50>
1c0032d4:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0032d8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0032dc:	50000c00 	b	12(0xc) # 1c0032e8 <PMU_GetRstRrc+0x58>
1c0032e0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0032e4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0032e8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0032ec:	00150184 	move	$r4,$r12
1c0032f0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0032f4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0032f8:	4c000020 	jirl	$r0,$r1,0

1c0032fc <PMU_GetBootSpiStatus>:
PMU_GetBootSpiStatus():
1c0032fc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003300:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003304:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003308:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00330c:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c003310:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c003314:	0380198c 	ori	$r12,$r12,0x6
1c003318:	2a00018c 	ld.bu	$r12,$r12,0
1c00331c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003320:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003324:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003328:	0340058c 	andi	$r12,$r12,0x1
1c00332c:	40000d80 	beqz	$r12,12(0xc) # 1c003338 <PMU_GetBootSpiStatus+0x3c>
1c003330:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003334:	50000800 	b	8(0x8) # 1c00333c <PMU_GetBootSpiStatus+0x40>
1c003338:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00333c:	00150184 	move	$r4,$r12
1c003340:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003344:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003348:	4c000020 	jirl	$r0,$r1,0

1c00334c <ls1x_logo>:
ls1x_logo():
1c00334c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003350:	29803061 	st.w	$r1,$r3,12(0xc)
1c003354:	29802076 	st.w	$r22,$r3,8(0x8)
1c003358:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00335c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003360:	02bbe084 	addi.w	$r4,$r4,-264(0xef8)
1c003364:	57e99bff 	bl	-5736(0xfffe998) # 1c001cfc <myprintf>
1c003368:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00336c:	02bbc084 	addi.w	$r4,$r4,-272(0xef0)
1c003370:	57e98fff 	bl	-5748(0xfffe98c) # 1c001cfc <myprintf>
1c003374:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003378:	02bd2084 	addi.w	$r4,$r4,-184(0xf48)
1c00337c:	57e983ff 	bl	-5760(0xfffe980) # 1c001cfc <myprintf>
1c003380:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003384:	02be8084 	addi.w	$r4,$r4,-96(0xfa0)
1c003388:	57e977ff 	bl	-5772(0xfffe974) # 1c001cfc <myprintf>
1c00338c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003390:	02bfe084 	addi.w	$r4,$r4,-8(0xff8)
1c003394:	57e96bff 	bl	-5784(0xfffe968) # 1c001cfc <myprintf>
1c003398:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00339c:	02814084 	addi.w	$r4,$r4,80(0x50)
1c0033a0:	57e95fff 	bl	-5796(0xfffe95c) # 1c001cfc <myprintf>
1c0033a4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0033a8:	0282a084 	addi.w	$r4,$r4,168(0xa8)
1c0033ac:	57e953ff 	bl	-5808(0xfffe950) # 1c001cfc <myprintf>
1c0033b0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0033b4:	02840084 	addi.w	$r4,$r4,256(0x100)
1c0033b8:	57e947ff 	bl	-5820(0xfffe944) # 1c001cfc <myprintf>
1c0033bc:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0033c0:	02856084 	addi.w	$r4,$r4,344(0x158)
1c0033c4:	57e93bff 	bl	-5832(0xfffe938) # 1c001cfc <myprintf>
1c0033c8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0033cc:	0286c084 	addi.w	$r4,$r4,432(0x1b0)
1c0033d0:	57e92fff 	bl	-5844(0xfffe92c) # 1c001cfc <myprintf>
1c0033d4:	03400000 	andi	$r0,$r0,0x0
1c0033d8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0033dc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0033e0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0033e4:	4c000020 	jirl	$r0,$r1,0

1c0033e8 <get_count>:
get_count():
1c0033e8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0033ec:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0033f0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0033f4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0033f8:	0000600c 	rdtimel.w	$r12,$r0
1c0033fc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003400:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003404:	00150184 	move	$r4,$r12
1c003408:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c00340c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003410:	4c000020 	jirl	$r0,$r1,0

1c003414 <open_count>:
open_count():
1c003414:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003418:	29803076 	st.w	$r22,$r3,12(0xc)
1c00341c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003420:	0380400c 	ori	$r12,$r0,0x10
1c003424:	0402bd80 	csrxchg	$r0,$r12,0xaf
1c003428:	03400000 	andi	$r0,$r0,0x0
1c00342c:	28803076 	ld.w	$r22,$r3,12(0xc)
1c003430:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003434:	4c000020 	jirl	$r0,$r1,0

1c003438 <start_count>:
start_count():
1c003438:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00343c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003440:	29806076 	st.w	$r22,$r3,24(0x18)
1c003444:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003448:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c00344c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003450:	29800180 	st.w	$r0,$r12,0
1c003454:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003458:	29801180 	st.w	$r0,$r12,4(0x4)
1c00345c:	57ff8fff 	bl	-116(0xfffff8c) # 1c0033e8 <get_count>
1c003460:	0015008d 	move	$r13,$r4
1c003464:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003468:	2980018d 	st.w	$r13,$r12,0
1c00346c:	03400000 	andi	$r0,$r0,0x0
1c003470:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003474:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003478:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00347c:	4c000020 	jirl	$r0,$r1,0

1c003480 <stop_count>:
stop_count():
1c003480:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003484:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003488:	2980a076 	st.w	$r22,$r3,40(0x28)
1c00348c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003490:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003494:	57ff57ff 	bl	-172(0xfffff54) # 1c0033e8 <get_count>
1c003498:	0015008d 	move	$r13,$r4
1c00349c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0034a0:	2980118d 	st.w	$r13,$r12,4(0x4)
1c0034a4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0034a8:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c0034ac:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0034b0:	2880018c 	ld.w	$r12,$r12,0
1c0034b4:	68001dac 	bltu	$r13,$r12,28(0x1c) # 1c0034d0 <stop_count+0x50>
1c0034b8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0034bc:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c0034c0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0034c4:	2880018c 	ld.w	$r12,$r12,0
1c0034c8:	001131ac 	sub.w	$r12,$r13,$r12
1c0034cc:	50002800 	b	40(0x28) # 1c0034f4 <stop_count+0x74>
1c0034d0:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c0034d4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0034d8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0034dc:	2880018c 	ld.w	$r12,$r12,0
1c0034e0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0034e4:	001131ad 	sub.w	$r13,$r13,$r12
1c0034e8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0034ec:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c0034f0:	001031ac 	add.w	$r12,$r13,$r12
1c0034f4:	00150184 	move	$r4,$r12
1c0034f8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0034fc:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003500:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003504:	4c000020 	jirl	$r0,$r1,0

1c003508 <delay_cycle>:
delay_cycle():
1c003508:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00350c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003510:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003514:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003518:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00351c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003520:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c003524:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c003528:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c00352c:	00150184 	move	$r4,$r12
1c003530:	57ff0bff 	bl	-248(0xfffff08) # 1c003438 <start_count>
1c003534:	50001400 	b	20(0x14) # 1c003548 <delay_cycle+0x40>
1c003538:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c00353c:	00150184 	move	$r4,$r12
1c003540:	57ff43ff 	bl	-192(0xfffff40) # 1c003480 <stop_count>
1c003544:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003548:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00354c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003550:	6bffe9ac 	bltu	$r13,$r12,-24(0x3ffe8) # 1c003538 <delay_cycle+0x30>
1c003554:	03400000 	andi	$r0,$r0,0x0
1c003558:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c00355c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003560:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003564:	4c000020 	jirl	$r0,$r1,0

1c003568 <delay_us>:
delay_us():
1c003568:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00356c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003570:	29806076 	st.w	$r22,$r3,24(0x18)
1c003574:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003578:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c00357c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003580:	00408d8c 	slli.w	$r12,$r12,0x3
1c003584:	00150184 	move	$r4,$r12
1c003588:	57ff83ff 	bl	-128(0xfffff80) # 1c003508 <delay_cycle>
1c00358c:	03400000 	andi	$r0,$r0,0x0
1c003590:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003594:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003598:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00359c:	4c000020 	jirl	$r0,$r1,0

1c0035a0 <delay_ms>:
delay_ms():
1c0035a0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0035a4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0035a8:	29806076 	st.w	$r22,$r3,24(0x18)
1c0035ac:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0035b0:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0035b4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0035b8:	1400002c 	lu12i.w	$r12,1(0x1)
1c0035bc:	03bd018c 	ori	$r12,$r12,0xf40
1c0035c0:	001c31ac 	mul.w	$r12,$r13,$r12
1c0035c4:	00150184 	move	$r4,$r12
1c0035c8:	57ff43ff 	bl	-192(0xfffff40) # 1c003508 <delay_cycle>
1c0035cc:	03400000 	andi	$r0,$r0,0x0
1c0035d0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0035d4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0035d8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0035dc:	4c000020 	jirl	$r0,$r1,0

1c0035e0 <memset>:
memset():
1c0035e0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0035e4:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0035e8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0035ec:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0035f0:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0035f4:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c0035f8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0035fc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003600:	50001c00 	b	28(0x1c) # 1c00361c <memset+0x3c>
1c003604:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003608:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c00360c:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c003610:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c003614:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c003618:	2900018d 	st.b	$r13,$r12,0
1c00361c:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c003620:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003624:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c003628:	47ffdd9f 	bnez	$r12,-36(0x7fffdc) # 1c003604 <memset+0x24>
1c00362c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003630:	00150184 	move	$r4,$r12
1c003634:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003638:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00363c:	4c000020 	jirl	$r0,$r1,0

1c003640 <pstrstr>:
pstrstr():
1c003640:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003644:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003648:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00364c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003650:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c003654:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003658:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00365c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c003660:	2800018c 	ld.b	$r12,$r12,0
1c003664:	44008580 	bnez	$r12,132(0x84) # 1c0036e8 <pstrstr+0xa8>
1c003668:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00366c:	50008c00 	b	140(0x8c) # 1c0036f8 <pstrstr+0xb8>
1c003670:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003674:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003678:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00367c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c003680:	50001c00 	b	28(0x1c) # 1c00369c <pstrstr+0x5c>
1c003684:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003688:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00368c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003690:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c003694:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003698:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00369c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0036a0:	2800018c 	ld.b	$r12,$r12,0
1c0036a4:	40002580 	beqz	$r12,36(0x24) # 1c0036c8 <pstrstr+0x88>
1c0036a8:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0036ac:	2800018c 	ld.b	$r12,$r12,0
1c0036b0:	40001980 	beqz	$r12,24(0x18) # 1c0036c8 <pstrstr+0x88>
1c0036b4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0036b8:	2800018d 	ld.b	$r13,$r12,0
1c0036bc:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0036c0:	2800018c 	ld.b	$r12,$r12,0
1c0036c4:	5bffc1ac 	beq	$r13,$r12,-64(0x3ffc0) # 1c003684 <pstrstr+0x44>
1c0036c8:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0036cc:	2800018c 	ld.b	$r12,$r12,0
1c0036d0:	44000d80 	bnez	$r12,12(0xc) # 1c0036dc <pstrstr+0x9c>
1c0036d4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0036d8:	50002000 	b	32(0x20) # 1c0036f8 <pstrstr+0xb8>
1c0036dc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0036e0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0036e4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0036e8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0036ec:	2800018c 	ld.b	$r12,$r12,0
1c0036f0:	47ff819f 	bnez	$r12,-128(0x7fff80) # 1c003670 <pstrstr+0x30>
1c0036f4:	0015000c 	move	$r12,$r0
1c0036f8:	00150184 	move	$r4,$r12
1c0036fc:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003700:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003704:	4c000020 	jirl	$r0,$r1,0

1c003708 <EXTI_ClearITPendingBit>:
EXTI_ClearITPendingBit():
1c003708:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00370c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003710:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003714:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003718:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c00371c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003720:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c003724:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003728:	001531ad 	or	$r13,$r13,$r12
1c00372c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003730:	2980318d 	st.w	$r13,$r12,12(0xc)
1c003734:	03400000 	andi	$r0,$r0,0x0
1c003738:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c00373c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003740:	4c000020 	jirl	$r0,$r1,0

1c003744 <WDG_getOddValue>:
WDG_getOddValue():
1c003744:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003748:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c00374c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003750:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003754:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003758:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c00375c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003760:	50003800 	b	56(0x38) # 1c003798 <WDG_getOddValue+0x54>
1c003764:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c003768:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00376c:	001731ac 	sll.w	$r12,$r13,$r12
1c003770:	0015018d 	move	$r13,$r12
1c003774:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003778:	0014b1ac 	and	$r12,$r13,$r12
1c00377c:	40001180 	beqz	$r12,16(0x10) # 1c00378c <WDG_getOddValue+0x48>
1c003780:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003784:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003788:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00378c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003790:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003794:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003798:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00379c:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c0037a0:	67ffc58d 	bge	$r12,$r13,-60(0x3ffc4) # 1c003764 <WDG_getOddValue+0x20>
1c0037a4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0037a8:	0340058c 	andi	$r12,$r12,0x1
1c0037ac:	44000d80 	bnez	$r12,12(0xc) # 1c0037b8 <WDG_getOddValue+0x74>
1c0037b0:	1400010c 	lu12i.w	$r12,8(0x8)
1c0037b4:	50000800 	b	8(0x8) # 1c0037bc <WDG_getOddValue+0x78>
1c0037b8:	0015000c 	move	$r12,$r0
1c0037bc:	00150184 	move	$r4,$r12
1c0037c0:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0037c4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0037c8:	4c000020 	jirl	$r0,$r1,0

1c0037cc <WDG_SetWatchDog>:
WDG_SetWatchDog():
1c0037cc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0037d0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0037d4:	29806076 	st.w	$r22,$r3,24(0x18)
1c0037d8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0037dc:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0037e0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0037e4:	140000ec 	lu12i.w	$r12,7(0x7)
1c0037e8:	03bffd8c 	ori	$r12,$r12,0xfff
1c0037ec:	0014b1ac 	and	$r12,$r13,$r12
1c0037f0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0037f4:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c0037f8:	57ff4fff 	bl	-180(0xfffff4c) # 1c003744 <WDG_getOddValue>
1c0037fc:	0015008c 	move	$r12,$r4
1c003800:	0015018d 	move	$r13,$r12
1c003804:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003808:	0015358c 	or	$r12,$r12,$r13
1c00380c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003810:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003814:	154ab4ad 	lu12i.w	$r13,-371291(0xa55a5)
1c003818:	0396a9ad 	ori	$r13,$r13,0x5aa
1c00381c:	2980d18d 	st.w	$r13,$r12,52(0x34)
1c003820:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003824:	0014300c 	nor	$r12,$r0,$r12
1c003828:	0040c18c 	slli.w	$r12,$r12,0x10
1c00382c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003830:	001531ac 	or	$r12,$r13,$r12
1c003834:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003838:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00383c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003840:	2980c18d 	st.w	$r13,$r12,48(0x30)
1c003844:	03400000 	andi	$r0,$r0,0x0
1c003848:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00384c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003850:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003854:	4c000020 	jirl	$r0,$r1,0

1c003858 <WDG_DogFeed>:
WDG_DogFeed():
1c003858:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00385c:	29803076 	st.w	$r22,$r3,12(0xc)
1c003860:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003864:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003868:	154ab4ad 	lu12i.w	$r13,-371291(0xa55a5)
1c00386c:	0396a9ad 	ori	$r13,$r13,0x5aa
1c003870:	2980d18d 	st.w	$r13,$r12,52(0x34)
1c003874:	03400000 	andi	$r0,$r0,0x0
1c003878:	28803076 	ld.w	$r22,$r3,12(0xc)
1c00387c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003880:	4c000020 	jirl	$r0,$r1,0

1c003884 <WdgInit>:
WdgInit():
1c003884:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003888:	29803061 	st.w	$r1,$r3,12(0xc)
1c00388c:	29802076 	st.w	$r22,$r3,8(0x8)
1c003890:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003894:	150000ec 	lu12i.w	$r12,-524281(0x80007)
1c003898:	03bffd84 	ori	$r4,$r12,0xfff
1c00389c:	57ff33ff 	bl	-208(0xfffff30) # 1c0037cc <WDG_SetWatchDog>
1c0038a0:	03400000 	andi	$r0,$r0,0x0
1c0038a4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0038a8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0038ac:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0038b0:	4c000020 	jirl	$r0,$r1,0

1c0038b4 <I2C_Init>:
I2C_Init():
1c0038b4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0038b8:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0038bc:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0038c0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0038c4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0038c8:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0038cc:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0038d0:	1400f42c 	lu12i.w	$r12,1953(0x7a1)
1c0038d4:	0388018c 	ori	$r12,$r12,0x200
1c0038d8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0038dc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0038e0:	0280800d 	addi.w	$r13,$r0,32(0x20)
1c0038e4:	2900098d 	st.b	$r13,$r12,2(0x2)
1c0038e8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0038ec:	2880018d 	ld.w	$r13,$r12,0
1c0038f0:	28bfa2ce 	ld.w	$r14,$r22,-24(0xfe8)
1c0038f4:	002135cc 	div.wu	$r12,$r14,$r13
1c0038f8:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c003900 <I2C_Init+0x4c>
1c0038fc:	002a0007 	break	0x7
1c003900:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003904:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003908:	0044898c 	srli.w	$r12,$r12,0x2
1c00390c:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c003910:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003914:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003918:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00391c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003920:	2900018d 	st.b	$r13,$r12,0
1c003924:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003928:	0044a18c 	srli.w	$r12,$r12,0x8
1c00392c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c003930:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003934:	2900058d 	st.b	$r13,$r12,1(0x1)
1c003938:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00393c:	2a00118d 	ld.bu	$r13,$r12,4(0x4)
1c003940:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c003944:	2a00198c 	ld.bu	$r12,$r12,6(0x6)
1c003948:	001531ac 	or	$r12,$r13,$r12
1c00394c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c003950:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c003954:	2a001d8c 	ld.bu	$r12,$r12,7(0x7)
1c003958:	001531ac 	or	$r12,$r13,$r12
1c00395c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c003960:	02be000c 	addi.w	$r12,$r0,-128(0xf80)
1c003964:	001531ac 	or	$r12,$r13,$r12
1c003968:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00396c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003970:	2900098d 	st.b	$r13,$r12,2(0x2)
1c003974:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c003978:	2a00198c 	ld.bu	$r12,$r12,6(0x6)
1c00397c:	40001180 	beqz	$r12,16(0x10) # 1c00398c <I2C_Init+0xd8>
1c003980:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003984:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c003988:	2900118d 	st.b	$r13,$r12,4(0x4)
1c00398c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c003990:	2a00158d 	ld.bu	$r13,$r12,5(0x5)
1c003994:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003998:	29001d8d 	st.b	$r13,$r12,7(0x7)
1c00399c:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c0039a0:	54022000 	bl	544(0x220) # 1c003bc0 <I2C_wait>
1c0039a4:	03400000 	andi	$r0,$r0,0x0
1c0039a8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0039ac:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0039b0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0039b4:	4c000020 	jirl	$r0,$r1,0

1c0039b8 <I2C_StructInit>:
I2C_StructInit():
1c0039b8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0039bc:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0039c0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0039c4:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0039c8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0039cc:	1400030d 	lu12i.w	$r13,24(0x18)
1c0039d0:	039a81ad 	ori	$r13,$r13,0x6a0
1c0039d4:	2980018d 	st.w	$r13,$r12,0
1c0039d8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0039dc:	0280800d 	addi.w	$r13,$r0,32(0x20)
1c0039e0:	2900118d 	st.b	$r13,$r12,4(0x4)
1c0039e4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0039e8:	0280a80d 	addi.w	$r13,$r0,42(0x2a)
1c0039ec:	2900158d 	st.b	$r13,$r12,5(0x5)
1c0039f0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0039f4:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c0039f8:	2900198d 	st.b	$r13,$r12,6(0x6)
1c0039fc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003a00:	29001d80 	st.b	$r0,$r12,7(0x7)
1c003a04:	03400000 	andi	$r0,$r0,0x0
1c003a08:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003a0c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003a10:	4c000020 	jirl	$r0,$r1,0

1c003a14 <I2C_GenerateSTART>:
I2C_GenerateSTART():
1c003a14:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003a18:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003a1c:	29806076 	st.w	$r22,$r3,24(0x18)
1c003a20:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003a24:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003a28:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c003a2c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003a30:	40002980 	beqz	$r12,40(0x28) # 1c003a58 <I2C_GenerateSTART+0x44>
1c003a34:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003a38:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c003a3c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c003a40:	02be000c 	addi.w	$r12,$r0,-128(0xf80)
1c003a44:	001531ac 	or	$r12,$r13,$r12
1c003a48:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c003a4c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003a50:	2900118d 	st.b	$r13,$r12,4(0x4)
1c003a54:	50002000 	b	32(0x20) # 1c003a74 <I2C_GenerateSTART+0x60>
1c003a58:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003a5c:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c003a60:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003a64:	0341fd8c 	andi	$r12,$r12,0x7f
1c003a68:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c003a6c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003a70:	2900118d 	st.b	$r13,$r12,4(0x4)
1c003a74:	02806404 	addi.w	$r4,$r0,25(0x19)
1c003a78:	57faf3ff 	bl	-1296(0xffffaf0) # 1c003568 <delay_us>
1c003a7c:	03400000 	andi	$r0,$r0,0x0
1c003a80:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003a84:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003a88:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003a8c:	4c000020 	jirl	$r0,$r1,0

1c003a90 <I2C_GenerateSTOP>:
I2C_GenerateSTOP():
1c003a90:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003a94:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003a98:	29806076 	st.w	$r22,$r3,24(0x18)
1c003a9c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003aa0:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003aa4:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c003aa8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003aac:	40002580 	beqz	$r12,36(0x24) # 1c003ad0 <I2C_GenerateSTOP+0x40>
1c003ab0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003ab4:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c003ab8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003abc:	0381018c 	ori	$r12,$r12,0x40
1c003ac0:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c003ac4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003ac8:	2900118d 	st.b	$r13,$r12,4(0x4)
1c003acc:	50002400 	b	36(0x24) # 1c003af0 <I2C_GenerateSTOP+0x60>
1c003ad0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003ad4:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c003ad8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c003adc:	02befc0c 	addi.w	$r12,$r0,-65(0xfbf)
1c003ae0:	0014b1ac 	and	$r12,$r13,$r12
1c003ae4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c003ae8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003aec:	2900118d 	st.b	$r13,$r12,4(0x4)
1c003af0:	02806404 	addi.w	$r4,$r0,25(0x19)
1c003af4:	57fa77ff 	bl	-1420(0xffffa74) # 1c003568 <delay_us>
1c003af8:	03400000 	andi	$r0,$r0,0x0
1c003afc:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003b00:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003b04:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003b08:	4c000020 	jirl	$r0,$r1,0

1c003b0c <I2C_SendData>:
I2C_SendData():
1c003b0c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003b10:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003b14:	29806076 	st.w	$r22,$r3,24(0x18)
1c003b18:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003b1c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003b20:	001500ac 	move	$r12,$r5
1c003b24:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c003b28:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c003b2c:	5400dc00 	bl	220(0xdc) # 1c003c08 <I2C_Unlock>
1c003b30:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003b34:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c003b38:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c003b3c:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c003b40:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c003b44:	2900118d 	st.b	$r13,$r12,4(0x4)
1c003b48:	03400000 	andi	$r0,$r0,0x0
1c003b4c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003b50:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003b54:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003b58:	4c000020 	jirl	$r0,$r1,0

1c003b5c <I2C_ReceiveData>:
I2C_ReceiveData():
1c003b5c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003b60:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003b64:	29806076 	st.w	$r22,$r3,24(0x18)
1c003b68:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003b6c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003b70:	001500ac 	move	$r12,$r5
1c003b74:	001500cd 	move	$r13,$r6
1c003b78:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c003b7c:	001501ac 	move	$r12,$r13
1c003b80:	293faacc 	st.b	$r12,$r22,-22(0xfea)
1c003b84:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c003b88:	54008000 	bl	128(0x80) # 1c003c08 <I2C_Unlock>
1c003b8c:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c003b90:	2a3faacc 	ld.bu	$r12,$r22,-22(0xfea)
1c003b94:	001531ac 	or	$r12,$r13,$r12
1c003b98:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003b9c:	0380818c 	ori	$r12,$r12,0x20
1c003ba0:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c003ba4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003ba8:	2900118d 	st.b	$r13,$r12,4(0x4)
1c003bac:	03400000 	andi	$r0,$r0,0x0
1c003bb0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003bb4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003bb8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003bbc:	4c000020 	jirl	$r0,$r1,0

1c003bc0 <I2C_wait>:
I2C_wait():
1c003bc0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003bc4:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003bc8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003bcc:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003bd0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003bd4:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c003bd8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c003bdc:	50001000 	b	16(0x10) # 1c003bec <I2C_wait+0x2c>
1c003be0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003be4:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c003be8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c003bec:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003bf0:	0340098c 	andi	$r12,$r12,0x2
1c003bf4:	47ffed9f 	bnez	$r12,-20(0x7fffec) # 1c003be0 <I2C_wait+0x20>
1c003bf8:	03400000 	andi	$r0,$r0,0x0
1c003bfc:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003c00:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003c04:	4c000020 	jirl	$r0,$r1,0

1c003c08 <I2C_Unlock>:
I2C_Unlock():
1c003c08:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003c0c:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003c10:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003c14:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003c18:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003c1c:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c003c20:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c003c24:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003c28:	0340118c 	andi	$r12,$r12,0x4
1c003c2c:	40002180 	beqz	$r12,32(0x20) # 1c003c4c <I2C_Unlock+0x44>
1c003c30:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003c34:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c003c38:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003c3c:	0380118c 	ori	$r12,$r12,0x4
1c003c40:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c003c44:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003c48:	2900118d 	st.b	$r13,$r12,4(0x4)
1c003c4c:	03400000 	andi	$r0,$r0,0x0
1c003c50:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003c54:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003c58:	4c000020 	jirl	$r0,$r1,0

1c003c5c <Sht30_Init>:
Sht30_Init():
1c003c5c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003c60:	29803061 	st.w	$r1,$r3,12(0xc)
1c003c64:	29802076 	st.w	$r22,$r3,8(0x8)
1c003c68:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003c6c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c003c70:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003c74:	57fda3ff 	bl	-608(0xffffda0) # 1c003a14 <I2C_GenerateSTART>
1c003c78:	02822005 	addi.w	$r5,$r0,136(0x88)
1c003c7c:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003c80:	57fe8fff 	bl	-372(0xffffe8c) # 1c003b0c <I2C_SendData>
1c003c84:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003c88:	57ff3bff 	bl	-200(0xfffff38) # 1c003bc0 <I2C_wait>
1c003c8c:	02808405 	addi.w	$r5,$r0,33(0x21)
1c003c90:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003c94:	57fe7bff 	bl	-392(0xffffe78) # 1c003b0c <I2C_SendData>
1c003c98:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003c9c:	57ff27ff 	bl	-220(0xfffff24) # 1c003bc0 <I2C_wait>
1c003ca0:	0280c005 	addi.w	$r5,$r0,48(0x30)
1c003ca4:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003ca8:	57fe67ff 	bl	-412(0xffffe64) # 1c003b0c <I2C_SendData>
1c003cac:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003cb0:	57ff13ff 	bl	-240(0xfffff10) # 1c003bc0 <I2C_wait>
1c003cb4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c003cb8:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003cbc:	57fdd7ff 	bl	-556(0xffffdd4) # 1c003a90 <I2C_GenerateSTOP>
1c003cc0:	02825804 	addi.w	$r4,$r0,150(0x96)
1c003cc4:	57f8dfff 	bl	-1828(0xffff8dc) # 1c0035a0 <delay_ms>
1c003cc8:	03400000 	andi	$r0,$r0,0x0
1c003ccc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003cd0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003cd4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003cd8:	4c000020 	jirl	$r0,$r1,0

1c003cdc <Send_Tem_Humid>:
Send_Tem_Humid():
1c003cdc:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003ce0:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003ce4:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003ce8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003cec:	02800405 	addi.w	$r5,$r0,1(0x1)
1c003cf0:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003cf4:	57fd23ff 	bl	-736(0xffffd20) # 1c003a14 <I2C_GenerateSTART>
1c003cf8:	02822005 	addi.w	$r5,$r0,136(0x88)
1c003cfc:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003d00:	57fe0fff 	bl	-500(0xffffe0c) # 1c003b0c <I2C_SendData>
1c003d04:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003d08:	57febbff 	bl	-328(0xffffeb8) # 1c003bc0 <I2C_wait>
1c003d0c:	02838005 	addi.w	$r5,$r0,224(0xe0)
1c003d10:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003d14:	57fdfbff 	bl	-520(0xffffdf8) # 1c003b0c <I2C_SendData>
1c003d18:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003d1c:	57fea7ff 	bl	-348(0xffffea4) # 1c003bc0 <I2C_wait>
1c003d20:	00150005 	move	$r5,$r0
1c003d24:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003d28:	57fde7ff 	bl	-540(0xffffde4) # 1c003b0c <I2C_SendData>
1c003d2c:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003d30:	57fe93ff 	bl	-368(0xffffe90) # 1c003bc0 <I2C_wait>
1c003d34:	02800405 	addi.w	$r5,$r0,1(0x1)
1c003d38:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003d3c:	57fcdbff 	bl	-808(0xffffcd8) # 1c003a14 <I2C_GenerateSTART>
1c003d40:	02822405 	addi.w	$r5,$r0,137(0x89)
1c003d44:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003d48:	57fdc7ff 	bl	-572(0xffffdc4) # 1c003b0c <I2C_SendData>
1c003d4c:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003d50:	57fe73ff 	bl	-400(0xffffe70) # 1c003bc0 <I2C_wait>
1c003d54:	00150006 	move	$r6,$r0
1c003d58:	00150005 	move	$r5,$r0
1c003d5c:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003d60:	57fdffff 	bl	-516(0xffffdfc) # 1c003b5c <I2C_ReceiveData>
1c003d64:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003d68:	57fe5bff 	bl	-424(0xffffe58) # 1c003bc0 <I2C_wait>
1c003d6c:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c003d70:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c003d74:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003d78:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003d7c:	297f62cc 	st.h	$r12,$r22,-40(0xfd8)
1c003d80:	00150006 	move	$r6,$r0
1c003d84:	00150005 	move	$r5,$r0
1c003d88:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003d8c:	57fdd3ff 	bl	-560(0xffffdd0) # 1c003b5c <I2C_ReceiveData>
1c003d90:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003d94:	57fe2fff 	bl	-468(0xffffe2c) # 1c003bc0 <I2C_wait>
1c003d98:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c003d9c:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c003da0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003da4:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003da8:	297f6acc 	st.h	$r12,$r22,-38(0xfda)
1c003dac:	00150006 	move	$r6,$r0
1c003db0:	00150005 	move	$r5,$r0
1c003db4:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003db8:	57fda7ff 	bl	-604(0xffffda4) # 1c003b5c <I2C_ReceiveData>
1c003dbc:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003dc0:	57fe03ff 	bl	-512(0xffffe00) # 1c003bc0 <I2C_wait>
1c003dc4:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c003dc8:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c003dcc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003dd0:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003dd4:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c003dd8:	00150006 	move	$r6,$r0
1c003ddc:	00150005 	move	$r5,$r0
1c003de0:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003de4:	57fd7bff 	bl	-648(0xffffd78) # 1c003b5c <I2C_ReceiveData>
1c003de8:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003dec:	57fdd7ff 	bl	-556(0xffffdd4) # 1c003bc0 <I2C_wait>
1c003df0:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c003df4:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c003df8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003dfc:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003e00:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c003e04:	00150006 	move	$r6,$r0
1c003e08:	00150005 	move	$r5,$r0
1c003e0c:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003e10:	57fd4fff 	bl	-692(0xffffd4c) # 1c003b5c <I2C_ReceiveData>
1c003e14:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003e18:	57fdabff 	bl	-600(0xffffda8) # 1c003bc0 <I2C_wait>
1c003e1c:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c003e20:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c003e24:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003e28:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003e2c:	297f82cc 	st.h	$r12,$r22,-32(0xfe0)
1c003e30:	02810006 	addi.w	$r6,$r0,64(0x40)
1c003e34:	02802005 	addi.w	$r5,$r0,8(0x8)
1c003e38:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003e3c:	57fd23ff 	bl	-736(0xffffd20) # 1c003b5c <I2C_ReceiveData>
1c003e40:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003e44:	57fd7fff 	bl	-644(0xffffd7c) # 1c003bc0 <I2C_wait>
1c003e48:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c003e4c:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c003e50:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003e54:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003e58:	297f8acc 	st.h	$r12,$r22,-30(0xfe2)
1c003e5c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c003e60:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003e64:	57fc2fff 	bl	-980(0xffffc2c) # 1c003a90 <I2C_GenerateSTOP>
1c003e68:	2a7f62cc 	ld.hu	$r12,$r22,-40(0xfd8)
1c003e6c:	0040a18c 	slli.w	$r12,$r12,0x8
1c003e70:	0000598d 	ext.w.h	$r13,$r12
1c003e74:	2a7f6acc 	ld.hu	$r12,$r22,-38(0xfda)
1c003e78:	0000598c 	ext.w.h	$r12,$r12
1c003e7c:	001531ac 	or	$r12,$r13,$r12
1c003e80:	0000598c 	ext.w.h	$r12,$r12
1c003e84:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c003e88:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c003e8c:	0040a18c 	slli.w	$r12,$r12,0x8
1c003e90:	0000598d 	ext.w.h	$r13,$r12
1c003e94:	2a7f82cc 	ld.hu	$r12,$r22,-32(0xfe0)
1c003e98:	0000598c 	ext.w.h	$r12,$r12
1c003e9c:	001531ac 	or	$r12,$r13,$r12
1c003ea0:	0000598c 	ext.w.h	$r12,$r12
1c003ea4:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c003ea8:	2a7fbacd 	ld.hu	$r13,$r22,-18(0xfee)
1c003eac:	0282bc0c 	addi.w	$r12,$r0,175(0xaf)
1c003eb0:	001c31ae 	mul.w	$r14,$r13,$r12
1c003eb4:	140001ec 	lu12i.w	$r12,15(0xf)
1c003eb8:	03bffd8d 	ori	$r13,$r12,0xfff
1c003ebc:	002035cc 	div.w	$r12,$r14,$r13
1c003ec0:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c003ec8 <Send_Tem_Humid+0x1ec>
1c003ec4:	002a0007 	break	0x7
1c003ec8:	02bf4d8c 	addi.w	$r12,$r12,-45(0xfd3)
1c003ecc:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003ed0:	2a7fb2cd 	ld.hu	$r13,$r22,-20(0xfec)
1c003ed4:	0281900c 	addi.w	$r12,$r0,100(0x64)
1c003ed8:	001c31ae 	mul.w	$r14,$r13,$r12
1c003edc:	140001ec 	lu12i.w	$r12,15(0xf)
1c003ee0:	03bffd8d 	ori	$r13,$r12,0xfff
1c003ee4:	002035cc 	div.w	$r12,$r14,$r13
1c003ee8:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c003ef0 <Send_Tem_Humid+0x214>
1c003eec:	002a0007 	break	0x7
1c003ef0:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c003ef4:	28bfa2c5 	ld.w	$r5,$r22,-24(0xfe8)
1c003ef8:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003efc:	029b9084 	addi.w	$r4,$r4,1764(0x6e4)
1c003f00:	57ddffff 	bl	-8708(0xfffddfc) # 1c001cfc <myprintf>
1c003f04:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c003f08:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003f0c:	029b9084 	addi.w	$r4,$r4,1764(0x6e4)
1c003f10:	57ddefff 	bl	-8724(0xfffddec) # 1c001cfc <myprintf>
1c003f14:	28bfa2c6 	ld.w	$r6,$r22,-24(0xfe8)
1c003f18:	1c000045 	pcaddu12i	$r5,2(0x2)
1c003f1c:	029b90a5 	addi.w	$r5,$r5,1764(0x6e4)
1c003f20:	00150004 	move	$r4,$r0
1c003f24:	57e17fff 	bl	-7812(0xfffe17c) # 1c0020a0 <myprintf2>
1c003f28:	02819004 	addi.w	$r4,$r0,100(0x64)
1c003f2c:	57f677ff 	bl	-2444(0xffff674) # 1c0035a0 <delay_ms>
1c003f30:	28bf92c6 	ld.w	$r6,$r22,-28(0xfe4)
1c003f34:	1c000045 	pcaddu12i	$r5,2(0x2)
1c003f38:	029b40a5 	addi.w	$r5,$r5,1744(0x6d0)
1c003f3c:	00150004 	move	$r4,$r0
1c003f40:	57e163ff 	bl	-7840(0xfffe160) # 1c0020a0 <myprintf2>
1c003f44:	03400000 	andi	$r0,$r0,0x0
1c003f48:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003f4c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003f50:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003f54:	4c000020 	jirl	$r0,$r1,0

1c003f58 <Adc_powerOn>:
Adc_powerOn():
1c003f58:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003f5c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003f60:	29806076 	st.w	$r22,$r3,24(0x18)
1c003f64:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003f68:	57f1bbff 	bl	-3656(0xffff1b8) # 1c003120 <IsGlobalIntOpen>
1c003f6c:	0015008c 	move	$r12,$r4
1c003f70:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c003f74:	57f1e7ff 	bl	-3612(0xffff1e4) # 1c003158 <DisableInt>
1c003f78:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c003f7c:	288001ac 	ld.w	$r12,$r13,0
1c003f80:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c003f84:	007041cc 	bstrins.w	$r12,$r14,0x10,0x10
1c003f88:	298001ac 	st.w	$r12,$r13,0
1c003f8c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003f90:	40000980 	beqz	$r12,8(0x8) # 1c003f98 <Adc_powerOn+0x40>
1c003f94:	57f1ebff 	bl	-3608(0xffff1e8) # 1c00317c <EnableInt>
1c003f98:	03400000 	andi	$r0,$r0,0x0
1c003f9c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003fa0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003fa4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003fa8:	4c000020 	jirl	$r0,$r1,0

1c003fac <Adc_open>:
Adc_open():
1c003fac:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003fb0:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003fb4:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003fb8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003fbc:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003fc0:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c003fc4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003fc8:	001731ac 	sll.w	$r12,$r13,$r12
1c003fcc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003fd0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003fd4:	0340058c 	andi	$r12,$r12,0x1
1c003fd8:	40003580 	beqz	$r12,52(0x34) # 1c00400c <Adc_open+0x60>
1c003fdc:	57f147ff 	bl	-3772(0xffff144) # 1c003120 <IsGlobalIntOpen>
1c003fe0:	0015008c 	move	$r12,$r4
1c003fe4:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c003fe8:	57f173ff 	bl	-3728(0xffff170) # 1c003158 <DisableInt>
1c003fec:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c003ff0:	288001ac 	ld.w	$r12,$r13,0
1c003ff4:	0071440c 	bstrins.w	$r12,$r0,0x11,0x11
1c003ff8:	298001ac 	st.w	$r12,$r13,0
1c003ffc:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c004000:	40004980 	beqz	$r12,72(0x48) # 1c004048 <Adc_open+0x9c>
1c004004:	57f17bff 	bl	-3720(0xffff178) # 1c00317c <EnableInt>
1c004008:	50004000 	b	64(0x40) # 1c004048 <Adc_open+0x9c>
1c00400c:	57f117ff 	bl	-3820(0xffff114) # 1c003120 <IsGlobalIntOpen>
1c004010:	0015008c 	move	$r12,$r4
1c004014:	293faacc 	st.b	$r12,$r22,-22(0xfea)
1c004018:	57f143ff 	bl	-3776(0xffff140) # 1c003158 <DisableInt>
1c00401c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004020:	0044918c 	srli.w	$r12,$r12,0x4
1c004024:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c004028:	03403d8c 	andi	$r12,$r12,0xf
1c00402c:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c004030:	288001ac 	ld.w	$r12,$r13,0
1c004034:	007751cc 	bstrins.w	$r12,$r14,0x17,0x14
1c004038:	298001ac 	st.w	$r12,$r13,0
1c00403c:	2a3faacc 	ld.bu	$r12,$r22,-22(0xfea)
1c004040:	40000980 	beqz	$r12,8(0x8) # 1c004048 <Adc_open+0x9c>
1c004044:	57f13bff 	bl	-3784(0xffff138) # 1c00317c <EnableInt>
1c004048:	03400000 	andi	$r0,$r0,0x0
1c00404c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c004050:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c004054:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c004058:	4c000020 	jirl	$r0,$r1,0

1c00405c <Adc_Measure>:
Adc_Measure():
1c00405c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c004060:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c004064:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c004068:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00406c:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c004070:	297faac0 	st.h	$r0,$r22,-22(0xfea)
1c004074:	297fbac0 	st.h	$r0,$r22,-18(0xfee)
1c004078:	50008400 	b	132(0x84) # 1c0040fc <Adc_Measure+0xa0>
1c00407c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004080:	0381b18c 	ori	$r12,$r12,0x6c
1c004084:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c004088:	038401ad 	ori	$r13,$r13,0x100
1c00408c:	2980018d 	st.w	$r13,$r12,0
1c004090:	03400000 	andi	$r0,$r0,0x0
1c004094:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004098:	0381b18c 	ori	$r12,$r12,0x6c
1c00409c:	2880018c 	ld.w	$r12,$r12,0
1c0040a0:	0344018c 	andi	$r12,$r12,0x100
1c0040a4:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1c004094 <Adc_Measure+0x38>
1c0040a8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0040ac:	0381c18c 	ori	$r12,$r12,0x70
1c0040b0:	2880018c 	ld.w	$r12,$r12,0
1c0040b4:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0040b8:	037ffd8c 	andi	$r12,$r12,0xfff
1c0040bc:	297fa2cc 	st.h	$r12,$r22,-24(0xfe8)
1c0040c0:	2a7fbacd 	ld.hu	$r13,$r22,-18(0xfee)
1c0040c4:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0040c8:	6c00298d 	bgeu	$r12,$r13,40(0x28) # 1c0040f0 <Adc_Measure+0x94>
1c0040cc:	2a7faacd 	ld.hu	$r13,$r22,-22(0xfea)
1c0040d0:	2a7fa2cc 	ld.hu	$r12,$r22,-24(0xfe8)
1c0040d4:	001031ac 	add.w	$r12,$r13,$r12
1c0040d8:	297faacc 	st.h	$r12,$r22,-22(0xfea)
1c0040dc:	2a7fa2cd 	ld.hu	$r13,$r22,-24(0xfe8)
1c0040e0:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c0040e4:	6c000d8d 	bgeu	$r12,$r13,12(0xc) # 1c0040f0 <Adc_Measure+0x94>
1c0040e8:	2a7fa2cc 	ld.hu	$r12,$r22,-24(0xfe8)
1c0040ec:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c0040f0:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c0040f4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0040f8:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c0040fc:	2a7fbacd 	ld.hu	$r13,$r22,-18(0xfee)
1c004100:	0280180c 	addi.w	$r12,$r0,6(0x6)
1c004104:	6fff798d 	bgeu	$r12,$r13,-136(0x3ff78) # 1c00407c <Adc_Measure+0x20>
1c004108:	2a7faacd 	ld.hu	$r13,$r22,-22(0xfea)
1c00410c:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c004110:	001131ad 	sub.w	$r13,$r13,$r12
1c004114:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c004118:	002031ae 	div.w	$r14,$r13,$r12
1c00411c:	5c000980 	bne	$r12,$r0,8(0x8) # 1c004124 <Adc_Measure+0xc8>
1c004120:	002a0007 	break	0x7
1c004124:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c004128:	00150184 	move	$r4,$r12
1c00412c:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c004130:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c004134:	4c000020 	jirl	$r0,$r1,0

1c004138 <TOUCH_GetBaseVal>:
TOUCH_GetBaseVal():
1c004138:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00413c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c004140:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004144:	0015008c 	move	$r12,$r4
1c004148:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c00414c:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c004150:	0040898c 	slli.w	$r12,$r12,0x2
1c004154:	0015018d 	move	$r13,$r12
1c004158:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c00415c:	0381018c 	ori	$r12,$r12,0x40
1c004160:	001031ac 	add.w	$r12,$r13,$r12
1c004164:	2880018c 	ld.w	$r12,$r12,0
1c004168:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c00416c:	037ffd8c 	andi	$r12,$r12,0xfff
1c004170:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c004174:	00150184 	move	$r4,$r12
1c004178:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c00417c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004180:	4c000020 	jirl	$r0,$r1,0

1c004184 <TOUCH_GetCountValue>:
TOUCH_GetCountValue():
1c004184:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004188:	29807076 	st.w	$r22,$r3,28(0x1c)
1c00418c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004190:	0015008c 	move	$r12,$r4
1c004194:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c004198:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c00419c:	0040898c 	slli.w	$r12,$r12,0x2
1c0041a0:	0015018d 	move	$r13,$r12
1c0041a4:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c0041a8:	0382018c 	ori	$r12,$r12,0x80
1c0041ac:	001031ac 	add.w	$r12,$r13,$r12
1c0041b0:	2880018c 	ld.w	$r12,$r12,0
1c0041b4:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0041b8:	037ffd8c 	andi	$r12,$r12,0xfff
1c0041bc:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0041c0:	00150184 	move	$r4,$r12
1c0041c4:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0041c8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0041cc:	4c000020 	jirl	$r0,$r1,0

1c0041d0 <Printf_KeyChannel>:
Printf_KeyChannel():
1c0041d0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0041d4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0041d8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0041dc:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0041e0:	0015008c 	move	$r12,$r4
1c0041e4:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c0041e8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0041ec:	50003400 	b	52(0x34) # 1c004220 <Printf_KeyChannel+0x50>
1c0041f0:	2a7f7acd 	ld.hu	$r13,$r22,-34(0xfde)
1c0041f4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0041f8:	001831ac 	sra.w	$r12,$r13,$r12
1c0041fc:	0340058c 	andi	$r12,$r12,0x1
1c004200:	40001580 	beqz	$r12,20(0x14) # 1c004214 <Printf_KeyChannel+0x44>
1c004204:	28bfb2c5 	ld.w	$r5,$r22,-20(0xfec)
1c004208:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00420c:	02901084 	addi.w	$r4,$r4,1028(0x404)
1c004210:	57daefff 	bl	-9492(0xfffdaec) # 1c001cfc <myprintf>
1c004214:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004218:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00421c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004220:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004224:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c004228:	6fffc98d 	bgeu	$r12,$r13,-56(0x3ffc8) # 1c0041f0 <Printf_KeyChannel+0x20>
1c00422c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004230:	028f9084 	addi.w	$r4,$r4,996(0x3e4)
1c004234:	57dacbff 	bl	-9528(0xfffdac8) # 1c001cfc <myprintf>
1c004238:	03400000 	andi	$r0,$r0,0x0
1c00423c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c004240:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c004244:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c004248:	4c000020 	jirl	$r0,$r1,0

1c00424c <Printf_KeyType>:
Printf_KeyType():
1c00424c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004250:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004254:	29806076 	st.w	$r22,$r3,24(0x18)
1c004258:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00425c:	0015008c 	move	$r12,$r4
1c004260:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004264:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004268:	0340058c 	andi	$r12,$r12,0x1
1c00426c:	40001180 	beqz	$r12,16(0x10) # 1c00427c <Printf_KeyType+0x30>
1c004270:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004274:	028e9084 	addi.w	$r4,$r4,932(0x3a4)
1c004278:	57da87ff 	bl	-9596(0xfffda84) # 1c001cfc <myprintf>
1c00427c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004280:	0340098c 	andi	$r12,$r12,0x2
1c004284:	40001180 	beqz	$r12,16(0x10) # 1c004294 <Printf_KeyType+0x48>
1c004288:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00428c:	028e5084 	addi.w	$r4,$r4,916(0x394)
1c004290:	57da6fff 	bl	-9620(0xfffda6c) # 1c001cfc <myprintf>
1c004294:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004298:	0340118c 	andi	$r12,$r12,0x4
1c00429c:	40001180 	beqz	$r12,16(0x10) # 1c0042ac <Printf_KeyType+0x60>
1c0042a0:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0042a4:	028e1084 	addi.w	$r4,$r4,900(0x384)
1c0042a8:	57da57ff 	bl	-9644(0xfffda54) # 1c001cfc <myprintf>
1c0042ac:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0042b0:	0340218c 	andi	$r12,$r12,0x8
1c0042b4:	40001180 	beqz	$r12,16(0x10) # 1c0042c4 <Printf_KeyType+0x78>
1c0042b8:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0042bc:	028de084 	addi.w	$r4,$r4,888(0x378)
1c0042c0:	57da3fff 	bl	-9668(0xfffda3c) # 1c001cfc <myprintf>
1c0042c4:	03400000 	andi	$r0,$r0,0x0
1c0042c8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0042cc:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0042d0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0042d4:	4c000020 	jirl	$r0,$r1,0

1c0042d8 <Printf_KeyVal>:
Printf_KeyVal():
1c0042d8:	02bd4063 	addi.w	$r3,$r3,-176(0xf50)
1c0042dc:	2982b061 	st.w	$r1,$r3,172(0xac)
1c0042e0:	2982a076 	st.w	$r22,$r3,168(0xa8)
1c0042e4:	0282c076 	addi.w	$r22,$r3,176(0xb0)
1c0042e8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0042ec:	5000d800 	b	216(0xd8) # 1c0043c4 <Printf_KeyVal+0xec>
1c0042f0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0042f4:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0042f8:	00150184 	move	$r4,$r12
1c0042fc:	57fe8bff 	bl	-376(0xffffe88) # 1c004184 <TOUCH_GetCountValue>
1c004300:	0015008c 	move	$r12,$r4
1c004304:	0015018d 	move	$r13,$r12
1c004308:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00430c:	0040898c 	slli.w	$r12,$r12,0x2
1c004310:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c004314:	001031cc 	add.w	$r12,$r14,$r12
1c004318:	29bdb18d 	st.w	$r13,$r12,-148(0xf6c)
1c00431c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004320:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c004324:	00150184 	move	$r4,$r12
1c004328:	57fe13ff 	bl	-496(0xffffe10) # 1c004138 <TOUCH_GetBaseVal>
1c00432c:	0015008c 	move	$r12,$r4
1c004330:	0015018d 	move	$r13,$r12
1c004334:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004338:	0040898c 	slli.w	$r12,$r12,0x2
1c00433c:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c004340:	001031cc 	add.w	$r12,$r14,$r12
1c004344:	29be718d 	st.w	$r13,$r12,-100(0xf9c)
1c004348:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00434c:	0040898c 	slli.w	$r12,$r12,0x2
1c004350:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c004354:	001031ac 	add.w	$r12,$r13,$r12
1c004358:	28be718c 	ld.w	$r12,$r12,-100(0xf9c)
1c00435c:	40004980 	beqz	$r12,72(0x48) # 1c0043a4 <Printf_KeyVal+0xcc>
1c004360:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004364:	0040898c 	slli.w	$r12,$r12,0x2
1c004368:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c00436c:	001031ac 	add.w	$r12,$r13,$r12
1c004370:	28be718d 	ld.w	$r13,$r12,-100(0xf9c)
1c004374:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004378:	0040898c 	slli.w	$r12,$r12,0x2
1c00437c:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c004380:	001031cc 	add.w	$r12,$r14,$r12
1c004384:	28bdb18c 	ld.w	$r12,$r12,-148(0xf6c)
1c004388:	001131ad 	sub.w	$r13,$r13,$r12
1c00438c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004390:	0040898c 	slli.w	$r12,$r12,0x2
1c004394:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c004398:	001031cc 	add.w	$r12,$r14,$r12
1c00439c:	29bf318d 	st.w	$r13,$r12,-52(0xfcc)
1c0043a0:	50001800 	b	24(0x18) # 1c0043b8 <Printf_KeyVal+0xe0>
1c0043a4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0043a8:	0040898c 	slli.w	$r12,$r12,0x2
1c0043ac:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c0043b0:	001031ac 	add.w	$r12,$r13,$r12
1c0043b4:	29bf3180 	st.w	$r0,$r12,-52(0xfcc)
1c0043b8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0043bc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0043c0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0043c4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0043c8:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c0043cc:	67ff258d 	bge	$r12,$r13,-220(0x3ff24) # 1c0042f0 <Printf_KeyVal+0x18>
1c0043d0:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0043d4:	0289b084 	addi.w	$r4,$r4,620(0x26c)
1c0043d8:	57d927ff 	bl	-9948(0xfffd924) # 1c001cfc <myprintf>
1c0043dc:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0043e0:	028a2084 	addi.w	$r4,$r4,648(0x288)
1c0043e4:	57d91bff 	bl	-9960(0xfffd918) # 1c001cfc <myprintf>
1c0043e8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0043ec:	50003400 	b	52(0x34) # 1c004420 <Printf_KeyVal+0x148>
1c0043f0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0043f4:	0040898c 	slli.w	$r12,$r12,0x2
1c0043f8:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c0043fc:	001031ac 	add.w	$r12,$r13,$r12
1c004400:	28bdb18c 	ld.w	$r12,$r12,-148(0xf6c)
1c004404:	00150185 	move	$r5,$r12
1c004408:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00440c:	02899084 	addi.w	$r4,$r4,612(0x264)
1c004410:	57d8efff 	bl	-10004(0xfffd8ec) # 1c001cfc <myprintf>
1c004414:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004418:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00441c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004420:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004424:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c004428:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c0043f0 <Printf_KeyVal+0x118>
1c00442c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004430:	02892084 	addi.w	$r4,$r4,584(0x248)
1c004434:	57d8cbff 	bl	-10040(0xfffd8c8) # 1c001cfc <myprintf>
1c004438:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00443c:	50003400 	b	52(0x34) # 1c004470 <Printf_KeyVal+0x198>
1c004440:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004444:	0040898c 	slli.w	$r12,$r12,0x2
1c004448:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c00444c:	001031ac 	add.w	$r12,$r13,$r12
1c004450:	28be718c 	ld.w	$r12,$r12,-100(0xf9c)
1c004454:	00150185 	move	$r5,$r12
1c004458:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00445c:	02885084 	addi.w	$r4,$r4,532(0x214)
1c004460:	57d89fff 	bl	-10084(0xfffd89c) # 1c001cfc <myprintf>
1c004464:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004468:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00446c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004470:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004474:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c004478:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c004440 <Printf_KeyVal+0x168>
1c00447c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004480:	02881084 	addi.w	$r4,$r4,516(0x204)
1c004484:	57d87bff 	bl	-10120(0xfffd878) # 1c001cfc <myprintf>
1c004488:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00448c:	50007400 	b	116(0x74) # 1c004500 <Printf_KeyVal+0x228>
1c004490:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004494:	0040898c 	slli.w	$r12,$r12,0x2
1c004498:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c00449c:	001031ac 	add.w	$r12,$r13,$r12
1c0044a0:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c0044a4:	64002d80 	bge	$r12,$r0,44(0x2c) # 1c0044d0 <Printf_KeyVal+0x1f8>
1c0044a8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0044ac:	0040898c 	slli.w	$r12,$r12,0x2
1c0044b0:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c0044b4:	001031ac 	add.w	$r12,$r13,$r12
1c0044b8:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c0044bc:	00150185 	move	$r5,$r12
1c0044c0:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0044c4:	02873084 	addi.w	$r4,$r4,460(0x1cc)
1c0044c8:	57d837ff 	bl	-10188(0xfffd834) # 1c001cfc <myprintf>
1c0044cc:	50002800 	b	40(0x28) # 1c0044f4 <Printf_KeyVal+0x21c>
1c0044d0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0044d4:	0040898c 	slli.w	$r12,$r12,0x2
1c0044d8:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c0044dc:	001031ac 	add.w	$r12,$r13,$r12
1c0044e0:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c0044e4:	00150185 	move	$r5,$r12
1c0044e8:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0044ec:	0286b084 	addi.w	$r4,$r4,428(0x1ac)
1c0044f0:	57d80fff 	bl	-10228(0xfffd80c) # 1c001cfc <myprintf>
1c0044f4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0044f8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0044fc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004500:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004504:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c004508:	67ff898d 	bge	$r12,$r13,-120(0x3ff88) # 1c004490 <Printf_KeyVal+0x1b8>
1c00450c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004510:	02841084 	addi.w	$r4,$r4,260(0x104)
1c004514:	57d7ebff 	bl	-10264(0xfffd7e8) # 1c001cfc <myprintf>
1c004518:	03400000 	andi	$r0,$r0,0x0
1c00451c:	2882b061 	ld.w	$r1,$r3,172(0xac)
1c004520:	2882a076 	ld.w	$r22,$r3,168(0xa8)
1c004524:	0282c063 	addi.w	$r3,$r3,176(0xb0)
1c004528:	4c000020 	jirl	$r0,$r1,0

1c00452c <TIM_GetITStatus>:
TIM_GetITStatus():
1c00452c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c004530:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c004534:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c004538:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00453c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004540:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c004544:	2880018d 	ld.w	$r13,$r12,0
1c004548:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00454c:	0014b1ac 	and	$r12,$r13,$r12
1c004550:	40001180 	beqz	$r12,16(0x10) # 1c004560 <TIM_GetITStatus+0x34>
1c004554:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004558:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00455c:	50000800 	b	8(0x8) # 1c004564 <TIM_GetITStatus+0x38>
1c004560:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004564:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004568:	00150184 	move	$r4,$r12
1c00456c:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c004570:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c004574:	4c000020 	jirl	$r0,$r1,0

1c004578 <TIM_ClearIT>:
TIM_ClearIT():
1c004578:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00457c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c004580:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004584:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c004588:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c00458c:	2880018e 	ld.w	$r14,$r12,0
1c004590:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c004594:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004598:	001535cd 	or	$r13,$r14,$r13
1c00459c:	2980018d 	st.w	$r13,$r12,0
1c0045a0:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c0045a4:	03800d8c 	ori	$r12,$r12,0x3
1c0045a8:	2a00018c 	ld.bu	$r12,$r12,0
1c0045ac:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0045b0:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c0045b4:	03800d8c 	ori	$r12,$r12,0x3
1c0045b8:	038005ad 	ori	$r13,$r13,0x1
1c0045bc:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c0045c0:	2900018d 	st.b	$r13,$r12,0
1c0045c4:	03400000 	andi	$r0,$r0,0x0
1c0045c8:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0045cc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0045d0:	4c000020 	jirl	$r0,$r1,0

1c0045d4 <IIC_Start>:
IIC_Start():
1c0045d4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0045d8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0045dc:	29802076 	st.w	$r22,$r3,8(0x8)
1c0045e0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0045e4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0045e8:	02805804 	addi.w	$r4,$r0,22(0x16)
1c0045ec:	57cfffff 	bl	-12292(0xfffcffc) # 1c0015e8 <gpio_write_pin>
1c0045f0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0045f4:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0045f8:	57cff3ff 	bl	-12304(0xfffcff0) # 1c0015e8 <gpio_write_pin>
1c0045fc:	02800804 	addi.w	$r4,$r0,2(0x2)
1c004600:	57ef6bff 	bl	-4248(0xfffef68) # 1c003568 <delay_us>
1c004604:	00150005 	move	$r5,$r0
1c004608:	02800404 	addi.w	$r4,$r0,1(0x1)
1c00460c:	57cfdfff 	bl	-12324(0xfffcfdc) # 1c0015e8 <gpio_write_pin>
1c004610:	00150005 	move	$r5,$r0
1c004614:	02805804 	addi.w	$r4,$r0,22(0x16)
1c004618:	57cfd3ff 	bl	-12336(0xfffcfd0) # 1c0015e8 <gpio_write_pin>
1c00461c:	03400000 	andi	$r0,$r0,0x0
1c004620:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004624:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004628:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00462c:	4c000020 	jirl	$r0,$r1,0

1c004630 <IIC_Stop>:
IIC_Stop():
1c004630:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004634:	29803061 	st.w	$r1,$r3,12(0xc)
1c004638:	29802076 	st.w	$r22,$r3,8(0x8)
1c00463c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004640:	00150005 	move	$r5,$r0
1c004644:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004648:	57cfa3ff 	bl	-12384(0xfffcfa0) # 1c0015e8 <gpio_write_pin>
1c00464c:	00150005 	move	$r5,$r0
1c004650:	02805804 	addi.w	$r4,$r0,22(0x16)
1c004654:	57cf97ff 	bl	-12396(0xfffcf94) # 1c0015e8 <gpio_write_pin>
1c004658:	02800804 	addi.w	$r4,$r0,2(0x2)
1c00465c:	57ef0fff 	bl	-4340(0xfffef0c) # 1c003568 <delay_us>
1c004660:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004664:	02805804 	addi.w	$r4,$r0,22(0x16)
1c004668:	57cf83ff 	bl	-12416(0xfffcf80) # 1c0015e8 <gpio_write_pin>
1c00466c:	02800804 	addi.w	$r4,$r0,2(0x2)
1c004670:	57eefbff 	bl	-4360(0xfffeef8) # 1c003568 <delay_us>
1c004674:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004678:	02800404 	addi.w	$r4,$r0,1(0x1)
1c00467c:	57cf6fff 	bl	-12436(0xfffcf6c) # 1c0015e8 <gpio_write_pin>
1c004680:	03400000 	andi	$r0,$r0,0x0
1c004684:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004688:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00468c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004690:	4c000020 	jirl	$r0,$r1,0

1c004694 <IIC_SendAck>:
IIC_SendAck():
1c004694:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c004698:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c00469c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0046a0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0046a4:	0015008c 	move	$r12,$r4
1c0046a8:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c0046ac:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c0046b0:	0340058c 	andi	$r12,$r12,0x1
1c0046b4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0046b8:	00150005 	move	$r5,$r0
1c0046bc:	02805804 	addi.w	$r4,$r0,22(0x16)
1c0046c0:	57cf2bff 	bl	-12504(0xfffcf28) # 1c0015e8 <gpio_write_pin>
1c0046c4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0046c8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0046cc:	00150185 	move	$r5,$r12
1c0046d0:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0046d4:	57cf17ff 	bl	-12524(0xfffcf14) # 1c0015e8 <gpio_write_pin>
1c0046d8:	02800804 	addi.w	$r4,$r0,2(0x2)
1c0046dc:	57ee8fff 	bl	-4468(0xfffee8c) # 1c003568 <delay_us>
1c0046e0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0046e4:	02805804 	addi.w	$r4,$r0,22(0x16)
1c0046e8:	57cf03ff 	bl	-12544(0xfffcf00) # 1c0015e8 <gpio_write_pin>
1c0046ec:	02800804 	addi.w	$r4,$r0,2(0x2)
1c0046f0:	57ee7bff 	bl	-4488(0xfffee78) # 1c003568 <delay_us>
1c0046f4:	00150005 	move	$r5,$r0
1c0046f8:	02805804 	addi.w	$r4,$r0,22(0x16)
1c0046fc:	57ceefff 	bl	-12564(0xfffceec) # 1c0015e8 <gpio_write_pin>
1c004700:	03400000 	andi	$r0,$r0,0x0
1c004704:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c004708:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c00470c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c004710:	4c000020 	jirl	$r0,$r1,0

1c004714 <IIC_Wait_Ack>:
IIC_Wait_Ack():
1c004714:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004718:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00471c:	29806076 	st.w	$r22,$r3,24(0x18)
1c004720:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004724:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c004728:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00472c:	02805804 	addi.w	$r4,$r0,22(0x16)
1c004730:	57cebbff 	bl	-12616(0xfffceb8) # 1c0015e8 <gpio_write_pin>
1c004734:	03400000 	andi	$r0,$r0,0x0
1c004738:	02800404 	addi.w	$r4,$r0,1(0x1)
1c00473c:	57ce5fff 	bl	-12708(0xfffce5c) # 1c001598 <gpio_get_pin>
1c004740:	0015008c 	move	$r12,$r4
1c004744:	40003d80 	beqz	$r12,60(0x3c) # 1c004780 <IIC_Wait_Ack+0x6c>
1c004748:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00474c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004750:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004754:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c004758:	0283e80c 	addi.w	$r12,$r0,250(0xfa)
1c00475c:	6c00118d 	bgeu	$r12,$r13,16(0x10) # 1c00476c <IIC_Wait_Ack+0x58>
1c004760:	57fed3ff 	bl	-304(0xffffed0) # 1c004630 <IIC_Stop>
1c004764:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004768:	50001800 	b	24(0x18) # 1c004780 <IIC_Wait_Ack+0x6c>
1c00476c:	00150005 	move	$r5,$r0
1c004770:	02805804 	addi.w	$r4,$r0,22(0x16)
1c004774:	57ce77ff 	bl	-12684(0xfffce74) # 1c0015e8 <gpio_write_pin>
1c004778:	0015000c 	move	$r12,$r0
1c00477c:	50000400 	b	4(0x4) # 1c004780 <IIC_Wait_Ack+0x6c>
1c004780:	00150184 	move	$r4,$r12
1c004784:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004788:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00478c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004790:	4c000020 	jirl	$r0,$r1,0

1c004794 <IIC_Send_Byte>:
IIC_Send_Byte():
1c004794:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c004798:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c00479c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0047a0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0047a4:	0015008c 	move	$r12,$r4
1c0047a8:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c0047ac:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0047b0:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0047b4:	50006800 	b	104(0x68) # 1c00481c <IIC_Send_Byte+0x88>
1c0047b8:	00150005 	move	$r5,$r0
1c0047bc:	02805804 	addi.w	$r4,$r0,22(0x16)
1c0047c0:	57ce2bff 	bl	-12760(0xfffce28) # 1c0015e8 <gpio_write_pin>
1c0047c4:	283f7ecc 	ld.b	$r12,$r22,-33(0xfdf)
1c0047c8:	64001580 	bge	$r12,$r0,20(0x14) # 1c0047dc <IIC_Send_Byte+0x48>
1c0047cc:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0047d0:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0047d4:	57ce17ff 	bl	-12780(0xfffce14) # 1c0015e8 <gpio_write_pin>
1c0047d8:	50001000 	b	16(0x10) # 1c0047e8 <IIC_Send_Byte+0x54>
1c0047dc:	00150005 	move	$r5,$r0
1c0047e0:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0047e4:	57ce07ff 	bl	-12796(0xfffce04) # 1c0015e8 <gpio_write_pin>
1c0047e8:	02800804 	addi.w	$r4,$r0,2(0x2)
1c0047ec:	57ed7fff 	bl	-4740(0xfffed7c) # 1c003568 <delay_us>
1c0047f0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0047f4:	02805804 	addi.w	$r4,$r0,22(0x16)
1c0047f8:	57cdf3ff 	bl	-12816(0xfffcdf0) # 1c0015e8 <gpio_write_pin>
1c0047fc:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c004800:	0040858c 	slli.w	$r12,$r12,0x1
1c004804:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c004808:	02800804 	addi.w	$r4,$r0,2(0x2)
1c00480c:	57ed5fff 	bl	-4772(0xfffed5c) # 1c003568 <delay_us>
1c004810:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004814:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004818:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00481c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c004820:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c004824:	6fff958d 	bgeu	$r12,$r13,-108(0x3ff94) # 1c0047b8 <IIC_Send_Byte+0x24>
1c004828:	00150005 	move	$r5,$r0
1c00482c:	02805804 	addi.w	$r4,$r0,22(0x16)
1c004830:	57cdbbff 	bl	-12872(0xfffcdb8) # 1c0015e8 <gpio_write_pin>
1c004834:	03400000 	andi	$r0,$r0,0x0
1c004838:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c00483c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c004840:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c004844:	4c000020 	jirl	$r0,$r1,0

1c004848 <IIC_Read_Byte>:
IIC_Read_Byte():
1c004848:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00484c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004850:	29806076 	st.w	$r22,$r3,24(0x18)
1c004854:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004858:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c00485c:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c004860:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c004864:	50006000 	b	96(0x60) # 1c0048c4 <IIC_Read_Byte+0x7c>
1c004868:	00150005 	move	$r5,$r0
1c00486c:	02805804 	addi.w	$r4,$r0,22(0x16)
1c004870:	57cd7bff 	bl	-12936(0xfffcd78) # 1c0015e8 <gpio_write_pin>
1c004874:	02800804 	addi.w	$r4,$r0,2(0x2)
1c004878:	57ecf3ff 	bl	-4880(0xfffecf0) # 1c003568 <delay_us>
1c00487c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004880:	02805804 	addi.w	$r4,$r0,22(0x16)
1c004884:	57cd67ff 	bl	-12956(0xfffcd64) # 1c0015e8 <gpio_write_pin>
1c004888:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c00488c:	0040858c 	slli.w	$r12,$r12,0x1
1c004890:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c004894:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004898:	57cd03ff 	bl	-13056(0xfffcd00) # 1c001598 <gpio_get_pin>
1c00489c:	0015008c 	move	$r12,$r4
1c0048a0:	40001180 	beqz	$r12,16(0x10) # 1c0048b0 <IIC_Read_Byte+0x68>
1c0048a4:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0048a8:	0380058c 	ori	$r12,$r12,0x1
1c0048ac:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c0048b0:	02800804 	addi.w	$r4,$r0,2(0x2)
1c0048b4:	57ecb7ff 	bl	-4940(0xfffecb4) # 1c003568 <delay_us>
1c0048b8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0048bc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0048c0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0048c4:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0048c8:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c0048cc:	6fff9d8d 	bgeu	$r12,$r13,-100(0x3ff9c) # 1c004868 <IIC_Read_Byte+0x20>
1c0048d0:	00150005 	move	$r5,$r0
1c0048d4:	02805804 	addi.w	$r4,$r0,22(0x16)
1c0048d8:	57cd13ff 	bl	-13040(0xfffcd10) # 1c0015e8 <gpio_write_pin>
1c0048dc:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0048e0:	00150184 	move	$r4,$r12
1c0048e4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0048e8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0048ec:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0048f0:	4c000020 	jirl	$r0,$r1,0

1c0048f4 <GY30_data_send>:
GY30_data_send():
1c0048f4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0048f8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0048fc:	29806076 	st.w	$r22,$r3,24(0x18)
1c004900:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004904:	0015008c 	move	$r12,$r4
1c004908:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00490c:	57fccbff 	bl	-824(0xffffcc8) # 1c0045d4 <IIC_Start>
1c004910:	02811804 	addi.w	$r4,$r0,70(0x46)
1c004914:	57fe83ff 	bl	-384(0xffffe80) # 1c004794 <IIC_Send_Byte>
1c004918:	57fdffff 	bl	-516(0xffffdfc) # 1c004714 <IIC_Wait_Ack>
1c00491c:	0015008c 	move	$r12,$r4
1c004920:	47ffed9f 	bnez	$r12,-20(0x7fffec) # 1c00490c <GY30_data_send+0x18>
1c004924:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004928:	00150184 	move	$r4,$r12
1c00492c:	57fe6bff 	bl	-408(0xffffe68) # 1c004794 <IIC_Send_Byte>
1c004930:	57fde7ff 	bl	-540(0xffffde4) # 1c004714 <IIC_Wait_Ack>
1c004934:	57fcffff 	bl	-772(0xffffcfc) # 1c004630 <IIC_Stop>
1c004938:	03400000 	andi	$r0,$r0,0x0
1c00493c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004940:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004944:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004948:	4c000020 	jirl	$r0,$r1,0

1c00494c <GY30_data_read>:
GY30_data_read():
1c00494c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004950:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004954:	29806076 	st.w	$r22,$r3,24(0x18)
1c004958:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00495c:	57fc7bff 	bl	-904(0xffffc78) # 1c0045d4 <IIC_Start>
1c004960:	02811c04 	addi.w	$r4,$r0,71(0x47)
1c004964:	57fe33ff 	bl	-464(0xffffe30) # 1c004794 <IIC_Send_Byte>
1c004968:	57fdafff 	bl	-596(0xffffdac) # 1c004714 <IIC_Wait_Ack>
1c00496c:	57fedfff 	bl	-292(0xffffedc) # 1c004848 <IIC_Read_Byte>
1c004970:	0015008c 	move	$r12,$r4
1c004974:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c004978:	00150004 	move	$r4,$r0
1c00497c:	57fd1bff 	bl	-744(0xffffd18) # 1c004694 <IIC_SendAck>
1c004980:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c004984:	0040a18c 	slli.w	$r12,$r12,0x8
1c004988:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c00498c:	57febfff 	bl	-324(0xffffebc) # 1c004848 <IIC_Read_Byte>
1c004990:	0015008c 	move	$r12,$r4
1c004994:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c004998:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c00499c:	001031ac 	add.w	$r12,$r13,$r12
1c0049a0:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c0049a4:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0049a8:	57fcefff 	bl	-788(0xffffcec) # 1c004694 <IIC_SendAck>
1c0049ac:	57fc87ff 	bl	-892(0xffffc84) # 1c004630 <IIC_Stop>
1c0049b0:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c0049b4:	00150184 	move	$r4,$r12
1c0049b8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0049bc:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0049c0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0049c4:	4c000020 	jirl	$r0,$r1,0

1c0049c8 <GY30init>:
GY30init():
1c0049c8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0049cc:	29803061 	st.w	$r1,$r3,12(0xc)
1c0049d0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0049d4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0049d8:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0049dc:	57ff1bff 	bl	-232(0xfffff18) # 1c0048f4 <GY30_data_send>
1c0049e0:	02801c04 	addi.w	$r4,$r0,7(0x7)
1c0049e4:	57ff13ff 	bl	-240(0xfffff10) # 1c0048f4 <GY30_data_send>
1c0049e8:	02804004 	addi.w	$r4,$r0,16(0x10)
1c0049ec:	57ff0bff 	bl	-248(0xfffff08) # 1c0048f4 <GY30_data_send>
1c0049f0:	0282d004 	addi.w	$r4,$r0,180(0xb4)
1c0049f4:	57ebafff 	bl	-5204(0xfffebac) # 1c0035a0 <delay_ms>
1c0049f8:	03400000 	andi	$r0,$r0,0x0
1c0049fc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004a00:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004a04:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004a08:	4c000020 	jirl	$r0,$r1,0

1c004a0c <exti_gpioa0_irq_handler>:
exti_gpioa0_irq_handler():
1c004a0c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004a10:	29803061 	st.w	$r1,$r3,12(0xc)
1c004a14:	29802076 	st.w	$r22,$r3,8(0x8)
1c004a18:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004a1c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004a20:	02b7d0c6 	addi.w	$r6,$r6,-524(0xdf4)
1c004a24:	02804c05 	addi.w	$r5,$r0,19(0x13)
1c004a28:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004a2c:	02b1d084 	addi.w	$r4,$r4,-908(0xc74)
1c004a30:	57d2cfff 	bl	-11572(0xfffd2cc) # 1c001cfc <myprintf>
1c004a34:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004a38:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004a3c:	03808184 	ori	$r4,$r12,0x20
1c004a40:	57eccbff 	bl	-4920(0xfffecc8) # 1c003708 <EXTI_ClearITPendingBit>
1c004a44:	03400000 	andi	$r0,$r0,0x0
1c004a48:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004a4c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004a50:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004a54:	4c000020 	jirl	$r0,$r1,0

1c004a58 <exti_gpioa1_irq_handler>:
exti_gpioa1_irq_handler():
1c004a58:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004a5c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004a60:	29802076 	st.w	$r22,$r3,8(0x8)
1c004a64:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004a68:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004a6c:	02b700c6 	addi.w	$r6,$r6,-576(0xdc0)
1c004a70:	02806005 	addi.w	$r5,$r0,24(0x18)
1c004a74:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004a78:	02b0a084 	addi.w	$r4,$r4,-984(0xc28)
1c004a7c:	57d283ff 	bl	-11648(0xfffd280) # 1c001cfc <myprintf>
1c004a80:	02800805 	addi.w	$r5,$r0,2(0x2)
1c004a84:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004a88:	03808184 	ori	$r4,$r12,0x20
1c004a8c:	57ec7fff 	bl	-4996(0xfffec7c) # 1c003708 <EXTI_ClearITPendingBit>
1c004a90:	03400000 	andi	$r0,$r0,0x0
1c004a94:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004a98:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004a9c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004aa0:	4c000020 	jirl	$r0,$r1,0

1c004aa4 <exti_gpioa2_irq_handler>:
exti_gpioa2_irq_handler():
1c004aa4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004aa8:	29803061 	st.w	$r1,$r3,12(0xc)
1c004aac:	29802076 	st.w	$r22,$r3,8(0x8)
1c004ab0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004ab4:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004ab8:	02b630c6 	addi.w	$r6,$r6,-628(0xd8c)
1c004abc:	02807405 	addi.w	$r5,$r0,29(0x1d)
1c004ac0:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004ac4:	02af7084 	addi.w	$r4,$r4,-1060(0xbdc)
1c004ac8:	57d237ff 	bl	-11724(0xfffd234) # 1c001cfc <myprintf>
1c004acc:	02801005 	addi.w	$r5,$r0,4(0x4)
1c004ad0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004ad4:	03808184 	ori	$r4,$r12,0x20
1c004ad8:	57ec33ff 	bl	-5072(0xfffec30) # 1c003708 <EXTI_ClearITPendingBit>
1c004adc:	03400000 	andi	$r0,$r0,0x0
1c004ae0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004ae4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004ae8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004aec:	4c000020 	jirl	$r0,$r1,0

1c004af0 <exti_gpioa3_irq_handler>:
exti_gpioa3_irq_handler():
1c004af0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004af4:	29803061 	st.w	$r1,$r3,12(0xc)
1c004af8:	29802076 	st.w	$r22,$r3,8(0x8)
1c004afc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004b00:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004b04:	02b560c6 	addi.w	$r6,$r6,-680(0xd58)
1c004b08:	02808805 	addi.w	$r5,$r0,34(0x22)
1c004b0c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004b10:	02ae4084 	addi.w	$r4,$r4,-1136(0xb90)
1c004b14:	57d1ebff 	bl	-11800(0xfffd1e8) # 1c001cfc <myprintf>
1c004b18:	02802005 	addi.w	$r5,$r0,8(0x8)
1c004b1c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004b20:	03808184 	ori	$r4,$r12,0x20
1c004b24:	57ebe7ff 	bl	-5148(0xfffebe4) # 1c003708 <EXTI_ClearITPendingBit>
1c004b28:	03400000 	andi	$r0,$r0,0x0
1c004b2c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004b30:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004b34:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004b38:	4c000020 	jirl	$r0,$r1,0

1c004b3c <exti_gpioa4_irq_handler>:
exti_gpioa4_irq_handler():
1c004b3c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004b40:	29803061 	st.w	$r1,$r3,12(0xc)
1c004b44:	29802076 	st.w	$r22,$r3,8(0x8)
1c004b48:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004b4c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004b50:	02b490c6 	addi.w	$r6,$r6,-732(0xd24)
1c004b54:	02809c05 	addi.w	$r5,$r0,39(0x27)
1c004b58:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004b5c:	02ad1084 	addi.w	$r4,$r4,-1212(0xb44)
1c004b60:	57d19fff 	bl	-11876(0xfffd19c) # 1c001cfc <myprintf>
1c004b64:	02804005 	addi.w	$r5,$r0,16(0x10)
1c004b68:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004b6c:	03808184 	ori	$r4,$r12,0x20
1c004b70:	57eb9bff 	bl	-5224(0xfffeb98) # 1c003708 <EXTI_ClearITPendingBit>
1c004b74:	03400000 	andi	$r0,$r0,0x0
1c004b78:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004b7c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004b80:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004b84:	4c000020 	jirl	$r0,$r1,0

1c004b88 <exti_gpioa5_irq_handler>:
exti_gpioa5_irq_handler():
1c004b88:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004b8c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004b90:	29802076 	st.w	$r22,$r3,8(0x8)
1c004b94:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004b98:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004b9c:	02b3c0c6 	addi.w	$r6,$r6,-784(0xcf0)
1c004ba0:	0280b005 	addi.w	$r5,$r0,44(0x2c)
1c004ba4:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004ba8:	02abe084 	addi.w	$r4,$r4,-1288(0xaf8)
1c004bac:	57d153ff 	bl	-11952(0xfffd150) # 1c001cfc <myprintf>
1c004bb0:	02808005 	addi.w	$r5,$r0,32(0x20)
1c004bb4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004bb8:	03808184 	ori	$r4,$r12,0x20
1c004bbc:	57eb4fff 	bl	-5300(0xfffeb4c) # 1c003708 <EXTI_ClearITPendingBit>
1c004bc0:	03400000 	andi	$r0,$r0,0x0
1c004bc4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004bc8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004bcc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004bd0:	4c000020 	jirl	$r0,$r1,0

1c004bd4 <exti_gpioa6_irq_handler>:
exti_gpioa6_irq_handler():
1c004bd4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004bd8:	29803061 	st.w	$r1,$r3,12(0xc)
1c004bdc:	29802076 	st.w	$r22,$r3,8(0x8)
1c004be0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004be4:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004be8:	02b2f0c6 	addi.w	$r6,$r6,-836(0xcbc)
1c004bec:	0280c405 	addi.w	$r5,$r0,49(0x31)
1c004bf0:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004bf4:	02aab084 	addi.w	$r4,$r4,-1364(0xaac)
1c004bf8:	57d107ff 	bl	-12028(0xfffd104) # 1c001cfc <myprintf>
1c004bfc:	02810005 	addi.w	$r5,$r0,64(0x40)
1c004c00:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004c04:	03808184 	ori	$r4,$r12,0x20
1c004c08:	57eb03ff 	bl	-5376(0xfffeb00) # 1c003708 <EXTI_ClearITPendingBit>
1c004c0c:	03400000 	andi	$r0,$r0,0x0
1c004c10:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004c14:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004c18:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004c1c:	4c000020 	jirl	$r0,$r1,0

1c004c20 <exti_gpioa7_irq_handler>:
exti_gpioa7_irq_handler():
1c004c20:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004c24:	29803061 	st.w	$r1,$r3,12(0xc)
1c004c28:	29802076 	st.w	$r22,$r3,8(0x8)
1c004c2c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004c30:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004c34:	02b220c6 	addi.w	$r6,$r6,-888(0xc88)
1c004c38:	0280d805 	addi.w	$r5,$r0,54(0x36)
1c004c3c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004c40:	02a98084 	addi.w	$r4,$r4,-1440(0xa60)
1c004c44:	57d0bbff 	bl	-12104(0xfffd0b8) # 1c001cfc <myprintf>
1c004c48:	02820005 	addi.w	$r5,$r0,128(0x80)
1c004c4c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004c50:	03808184 	ori	$r4,$r12,0x20
1c004c54:	57eab7ff 	bl	-5452(0xfffeab4) # 1c003708 <EXTI_ClearITPendingBit>
1c004c58:	03400000 	andi	$r0,$r0,0x0
1c004c5c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004c60:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004c64:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004c68:	4c000020 	jirl	$r0,$r1,0

1c004c6c <exti_gpiob0_irq_handler>:
exti_gpiob0_irq_handler():
1c004c6c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004c70:	29803061 	st.w	$r1,$r3,12(0xc)
1c004c74:	29802076 	st.w	$r22,$r3,8(0x8)
1c004c78:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004c7c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004c80:	02b150c6 	addi.w	$r6,$r6,-940(0xc54)
1c004c84:	0280ec05 	addi.w	$r5,$r0,59(0x3b)
1c004c88:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004c8c:	02a85084 	addi.w	$r4,$r4,-1516(0xa14)
1c004c90:	57d06fff 	bl	-12180(0xfffd06c) # 1c001cfc <myprintf>
1c004c94:	02840005 	addi.w	$r5,$r0,256(0x100)
1c004c98:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004c9c:	03808184 	ori	$r4,$r12,0x20
1c004ca0:	57ea6bff 	bl	-5528(0xfffea68) # 1c003708 <EXTI_ClearITPendingBit>
1c004ca4:	03400000 	andi	$r0,$r0,0x0
1c004ca8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004cac:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004cb0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004cb4:	4c000020 	jirl	$r0,$r1,0

1c004cb8 <exti_gpiob1_irq_handler>:
exti_gpiob1_irq_handler():
1c004cb8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004cbc:	29803061 	st.w	$r1,$r3,12(0xc)
1c004cc0:	29802076 	st.w	$r22,$r3,8(0x8)
1c004cc4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004cc8:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004ccc:	02b080c6 	addi.w	$r6,$r6,-992(0xc20)
1c004cd0:	02810005 	addi.w	$r5,$r0,64(0x40)
1c004cd4:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004cd8:	02a72084 	addi.w	$r4,$r4,-1592(0x9c8)
1c004cdc:	57d023ff 	bl	-12256(0xfffd020) # 1c001cfc <myprintf>
1c004ce0:	02880005 	addi.w	$r5,$r0,512(0x200)
1c004ce4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004ce8:	03808184 	ori	$r4,$r12,0x20
1c004cec:	57ea1fff 	bl	-5604(0xfffea1c) # 1c003708 <EXTI_ClearITPendingBit>
1c004cf0:	03400000 	andi	$r0,$r0,0x0
1c004cf4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004cf8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004cfc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004d00:	4c000020 	jirl	$r0,$r1,0

1c004d04 <exti_gpiob2_irq_handler>:
exti_gpiob2_irq_handler():
1c004d04:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004d08:	29803061 	st.w	$r1,$r3,12(0xc)
1c004d0c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004d10:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004d14:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004d18:	02afb0c6 	addi.w	$r6,$r6,-1044(0xbec)
1c004d1c:	02811405 	addi.w	$r5,$r0,69(0x45)
1c004d20:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004d24:	02a5f084 	addi.w	$r4,$r4,-1668(0x97c)
1c004d28:	57cfd7ff 	bl	-12332(0xfffcfd4) # 1c001cfc <myprintf>
1c004d2c:	02900005 	addi.w	$r5,$r0,1024(0x400)
1c004d30:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004d34:	03808184 	ori	$r4,$r12,0x20
1c004d38:	57e9d3ff 	bl	-5680(0xfffe9d0) # 1c003708 <EXTI_ClearITPendingBit>
1c004d3c:	03400000 	andi	$r0,$r0,0x0
1c004d40:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004d44:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004d48:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004d4c:	4c000020 	jirl	$r0,$r1,0

1c004d50 <exti_gpiob3_irq_handler>:
exti_gpiob3_irq_handler():
1c004d50:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004d54:	29803061 	st.w	$r1,$r3,12(0xc)
1c004d58:	29802076 	st.w	$r22,$r3,8(0x8)
1c004d5c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004d60:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004d64:	02aee0c6 	addi.w	$r6,$r6,-1096(0xbb8)
1c004d68:	02812805 	addi.w	$r5,$r0,74(0x4a)
1c004d6c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004d70:	02a4c084 	addi.w	$r4,$r4,-1744(0x930)
1c004d74:	57cf8bff 	bl	-12408(0xfffcf88) # 1c001cfc <myprintf>
1c004d78:	03a00005 	ori	$r5,$r0,0x800
1c004d7c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004d80:	03808184 	ori	$r4,$r12,0x20
1c004d84:	57e987ff 	bl	-5756(0xfffe984) # 1c003708 <EXTI_ClearITPendingBit>
1c004d88:	03400000 	andi	$r0,$r0,0x0
1c004d8c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004d90:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004d94:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004d98:	4c000020 	jirl	$r0,$r1,0

1c004d9c <exti_gpiob4_irq_handler>:
exti_gpiob4_irq_handler():
1c004d9c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004da0:	29803061 	st.w	$r1,$r3,12(0xc)
1c004da4:	29802076 	st.w	$r22,$r3,8(0x8)
1c004da8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004dac:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004db0:	02ae10c6 	addi.w	$r6,$r6,-1148(0xb84)
1c004db4:	02813c05 	addi.w	$r5,$r0,79(0x4f)
1c004db8:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004dbc:	02a39084 	addi.w	$r4,$r4,-1820(0x8e4)
1c004dc0:	57cf3fff 	bl	-12484(0xfffcf3c) # 1c001cfc <myprintf>
1c004dc4:	14000025 	lu12i.w	$r5,1(0x1)
1c004dc8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004dcc:	03808184 	ori	$r4,$r12,0x20
1c004dd0:	57e93bff 	bl	-5832(0xfffe938) # 1c003708 <EXTI_ClearITPendingBit>
1c004dd4:	03400000 	andi	$r0,$r0,0x0
1c004dd8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004ddc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004de0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004de4:	4c000020 	jirl	$r0,$r1,0

1c004de8 <exti_gpiob5_irq_handler>:
exti_gpiob5_irq_handler():
1c004de8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004dec:	29803061 	st.w	$r1,$r3,12(0xc)
1c004df0:	29802076 	st.w	$r22,$r3,8(0x8)
1c004df4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004df8:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004dfc:	02ad40c6 	addi.w	$r6,$r6,-1200(0xb50)
1c004e00:	02815005 	addi.w	$r5,$r0,84(0x54)
1c004e04:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004e08:	02a26084 	addi.w	$r4,$r4,-1896(0x898)
1c004e0c:	57cef3ff 	bl	-12560(0xfffcef0) # 1c001cfc <myprintf>
1c004e10:	14000045 	lu12i.w	$r5,2(0x2)
1c004e14:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004e18:	03808184 	ori	$r4,$r12,0x20
1c004e1c:	57e8efff 	bl	-5908(0xfffe8ec) # 1c003708 <EXTI_ClearITPendingBit>
1c004e20:	03400000 	andi	$r0,$r0,0x0
1c004e24:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004e28:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004e2c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004e30:	4c000020 	jirl	$r0,$r1,0

1c004e34 <exti_gpiob6_irq_handler>:
exti_gpiob6_irq_handler():
1c004e34:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004e38:	29803061 	st.w	$r1,$r3,12(0xc)
1c004e3c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004e40:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004e44:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004e48:	02ac70c6 	addi.w	$r6,$r6,-1252(0xb1c)
1c004e4c:	02816405 	addi.w	$r5,$r0,89(0x59)
1c004e50:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004e54:	02a13084 	addi.w	$r4,$r4,-1972(0x84c)
1c004e58:	57cea7ff 	bl	-12636(0xfffcea4) # 1c001cfc <myprintf>
1c004e5c:	14000085 	lu12i.w	$r5,4(0x4)
1c004e60:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004e64:	03808184 	ori	$r4,$r12,0x20
1c004e68:	57e8a3ff 	bl	-5984(0xfffe8a0) # 1c003708 <EXTI_ClearITPendingBit>
1c004e6c:	03400000 	andi	$r0,$r0,0x0
1c004e70:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004e74:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004e78:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004e7c:	4c000020 	jirl	$r0,$r1,0

1c004e80 <exti_gpiob7_irq_handler>:
exti_gpiob7_irq_handler():
1c004e80:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004e84:	29803061 	st.w	$r1,$r3,12(0xc)
1c004e88:	29802076 	st.w	$r22,$r3,8(0x8)
1c004e8c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004e90:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004e94:	02aba0c6 	addi.w	$r6,$r6,-1304(0xae8)
1c004e98:	02817805 	addi.w	$r5,$r0,94(0x5e)
1c004e9c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004ea0:	02a00084 	addi.w	$r4,$r4,-2048(0x800)
1c004ea4:	57ce5bff 	bl	-12712(0xfffce58) # 1c001cfc <myprintf>
1c004ea8:	14000105 	lu12i.w	$r5,8(0x8)
1c004eac:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004eb0:	03808184 	ori	$r4,$r12,0x20
1c004eb4:	57e857ff 	bl	-6060(0xfffe854) # 1c003708 <EXTI_ClearITPendingBit>
1c004eb8:	03400000 	andi	$r0,$r0,0x0
1c004ebc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004ec0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004ec4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004ec8:	4c000020 	jirl	$r0,$r1,0

1c004ecc <exti_gpioc0_irq_handler>:
exti_gpioc0_irq_handler():
1c004ecc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004ed0:	29803061 	st.w	$r1,$r3,12(0xc)
1c004ed4:	29802076 	st.w	$r22,$r3,8(0x8)
1c004ed8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004edc:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004ee0:	02aad0c6 	addi.w	$r6,$r6,-1356(0xab4)
1c004ee4:	02819005 	addi.w	$r5,$r0,100(0x64)
1c004ee8:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004eec:	029ed084 	addi.w	$r4,$r4,1972(0x7b4)
1c004ef0:	57ce0fff 	bl	-12788(0xfffce0c) # 1c001cfc <myprintf>
1c004ef4:	14000205 	lu12i.w	$r5,16(0x10)
1c004ef8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004efc:	03808184 	ori	$r4,$r12,0x20
1c004f00:	57e80bff 	bl	-6136(0xfffe808) # 1c003708 <EXTI_ClearITPendingBit>
1c004f04:	03400000 	andi	$r0,$r0,0x0
1c004f08:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004f0c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004f10:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004f14:	4c000020 	jirl	$r0,$r1,0

1c004f18 <exti_gpioc1_irq_handler>:
exti_gpioc1_irq_handler():
1c004f18:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004f1c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004f20:	29802076 	st.w	$r22,$r3,8(0x8)
1c004f24:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004f28:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004f2c:	02aa00c6 	addi.w	$r6,$r6,-1408(0xa80)
1c004f30:	0281a405 	addi.w	$r5,$r0,105(0x69)
1c004f34:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004f38:	029da084 	addi.w	$r4,$r4,1896(0x768)
1c004f3c:	57cdc3ff 	bl	-12864(0xfffcdc0) # 1c001cfc <myprintf>
1c004f40:	14000405 	lu12i.w	$r5,32(0x20)
1c004f44:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004f48:	03808184 	ori	$r4,$r12,0x20
1c004f4c:	57e7bfff 	bl	-6212(0xfffe7bc) # 1c003708 <EXTI_ClearITPendingBit>
1c004f50:	03400000 	andi	$r0,$r0,0x0
1c004f54:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004f58:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004f5c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004f60:	4c000020 	jirl	$r0,$r1,0

1c004f64 <exti_gpioc2_irq_handler>:
exti_gpioc2_irq_handler():
1c004f64:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004f68:	29803061 	st.w	$r1,$r3,12(0xc)
1c004f6c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004f70:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004f74:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004f78:	02a930c6 	addi.w	$r6,$r6,-1460(0xa4c)
1c004f7c:	0281b805 	addi.w	$r5,$r0,110(0x6e)
1c004f80:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004f84:	029c7084 	addi.w	$r4,$r4,1820(0x71c)
1c004f88:	57cd77ff 	bl	-12940(0xfffcd74) # 1c001cfc <myprintf>
1c004f8c:	14000805 	lu12i.w	$r5,64(0x40)
1c004f90:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004f94:	03808184 	ori	$r4,$r12,0x20
1c004f98:	57e773ff 	bl	-6288(0xfffe770) # 1c003708 <EXTI_ClearITPendingBit>
1c004f9c:	03400000 	andi	$r0,$r0,0x0
1c004fa0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004fa4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004fa8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004fac:	4c000020 	jirl	$r0,$r1,0

1c004fb0 <exti_gpioc3_irq_handler>:
exti_gpioc3_irq_handler():
1c004fb0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004fb4:	29803061 	st.w	$r1,$r3,12(0xc)
1c004fb8:	29802076 	st.w	$r22,$r3,8(0x8)
1c004fbc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004fc0:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004fc4:	02a860c6 	addi.w	$r6,$r6,-1512(0xa18)
1c004fc8:	0281cc05 	addi.w	$r5,$r0,115(0x73)
1c004fcc:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004fd0:	029b4084 	addi.w	$r4,$r4,1744(0x6d0)
1c004fd4:	57cd2bff 	bl	-13016(0xfffcd28) # 1c001cfc <myprintf>
1c004fd8:	14001005 	lu12i.w	$r5,128(0x80)
1c004fdc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004fe0:	03808184 	ori	$r4,$r12,0x20
1c004fe4:	57e727ff 	bl	-6364(0xfffe724) # 1c003708 <EXTI_ClearITPendingBit>
1c004fe8:	03400000 	andi	$r0,$r0,0x0
1c004fec:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004ff0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004ff4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004ff8:	4c000020 	jirl	$r0,$r1,0

1c004ffc <exti_gpioc4_irq_handler>:
exti_gpioc4_irq_handler():
1c004ffc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005000:	29803061 	st.w	$r1,$r3,12(0xc)
1c005004:	29802076 	st.w	$r22,$r3,8(0x8)
1c005008:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00500c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c005010:	02a790c6 	addi.w	$r6,$r6,-1564(0x9e4)
1c005014:	0281e005 	addi.w	$r5,$r0,120(0x78)
1c005018:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00501c:	029a1084 	addi.w	$r4,$r4,1668(0x684)
1c005020:	57ccdfff 	bl	-13092(0xfffccdc) # 1c001cfc <myprintf>
1c005024:	14002005 	lu12i.w	$r5,256(0x100)
1c005028:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00502c:	03808184 	ori	$r4,$r12,0x20
1c005030:	57e6dbff 	bl	-6440(0xfffe6d8) # 1c003708 <EXTI_ClearITPendingBit>
1c005034:	03400000 	andi	$r0,$r0,0x0
1c005038:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00503c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005040:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005044:	4c000020 	jirl	$r0,$r1,0

1c005048 <exti_gpioc5_irq_handler>:
exti_gpioc5_irq_handler():
1c005048:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00504c:	29803061 	st.w	$r1,$r3,12(0xc)
1c005050:	29802076 	st.w	$r22,$r3,8(0x8)
1c005054:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005058:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00505c:	02a6c0c6 	addi.w	$r6,$r6,-1616(0x9b0)
1c005060:	0281f405 	addi.w	$r5,$r0,125(0x7d)
1c005064:	1c000024 	pcaddu12i	$r4,1(0x1)
1c005068:	0298e084 	addi.w	$r4,$r4,1592(0x638)
1c00506c:	57cc93ff 	bl	-13168(0xfffcc90) # 1c001cfc <myprintf>
1c005070:	14004005 	lu12i.w	$r5,512(0x200)
1c005074:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c005078:	03808184 	ori	$r4,$r12,0x20
1c00507c:	57e68fff 	bl	-6516(0xfffe68c) # 1c003708 <EXTI_ClearITPendingBit>
1c005080:	03400000 	andi	$r0,$r0,0x0
1c005084:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005088:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00508c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005090:	4c000020 	jirl	$r0,$r1,0

1c005094 <exti_gpioc6_irq_handler>:
exti_gpioc6_irq_handler():
1c005094:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005098:	29803061 	st.w	$r1,$r3,12(0xc)
1c00509c:	29802076 	st.w	$r22,$r3,8(0x8)
1c0050a0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0050a4:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0050a8:	02a5f0c6 	addi.w	$r6,$r6,-1668(0x97c)
1c0050ac:	02820805 	addi.w	$r5,$r0,130(0x82)
1c0050b0:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0050b4:	0297b084 	addi.w	$r4,$r4,1516(0x5ec)
1c0050b8:	57cc47ff 	bl	-13244(0xfffcc44) # 1c001cfc <myprintf>
1c0050bc:	14008005 	lu12i.w	$r5,1024(0x400)
1c0050c0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0050c4:	03808184 	ori	$r4,$r12,0x20
1c0050c8:	57e643ff 	bl	-6592(0xfffe640) # 1c003708 <EXTI_ClearITPendingBit>
1c0050cc:	03400000 	andi	$r0,$r0,0x0
1c0050d0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0050d4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0050d8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0050dc:	4c000020 	jirl	$r0,$r1,0

1c0050e0 <exti_gpioc7_irq_handler>:
exti_gpioc7_irq_handler():
1c0050e0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0050e4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0050e8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0050ec:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0050f0:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0050f4:	02a520c6 	addi.w	$r6,$r6,-1720(0x948)
1c0050f8:	02821c05 	addi.w	$r5,$r0,135(0x87)
1c0050fc:	1c000024 	pcaddu12i	$r4,1(0x1)
1c005100:	02968084 	addi.w	$r4,$r4,1440(0x5a0)
1c005104:	57cbfbff 	bl	-13320(0xfffcbf8) # 1c001cfc <myprintf>
1c005108:	14010005 	lu12i.w	$r5,2048(0x800)
1c00510c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c005110:	03808184 	ori	$r4,$r12,0x20
1c005114:	57e5f7ff 	bl	-6668(0xfffe5f4) # 1c003708 <EXTI_ClearITPendingBit>
1c005118:	03400000 	andi	$r0,$r0,0x0
1c00511c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005120:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005124:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005128:	4c000020 	jirl	$r0,$r1,0

1c00512c <exti_gpiod0_irq_handler>:
exti_gpiod0_irq_handler():
1c00512c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005130:	29803061 	st.w	$r1,$r3,12(0xc)
1c005134:	29802076 	st.w	$r22,$r3,8(0x8)
1c005138:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00513c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c005140:	02a450c6 	addi.w	$r6,$r6,-1772(0x914)
1c005144:	02823005 	addi.w	$r5,$r0,140(0x8c)
1c005148:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00514c:	02955084 	addi.w	$r4,$r4,1364(0x554)
1c005150:	57cbafff 	bl	-13396(0xfffcbac) # 1c001cfc <myprintf>
1c005154:	14020005 	lu12i.w	$r5,4096(0x1000)
1c005158:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00515c:	03808184 	ori	$r4,$r12,0x20
1c005160:	57e5abff 	bl	-6744(0xfffe5a8) # 1c003708 <EXTI_ClearITPendingBit>
1c005164:	03400000 	andi	$r0,$r0,0x0
1c005168:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00516c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005170:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005174:	4c000020 	jirl	$r0,$r1,0

1c005178 <exti_gpiod1_irq_handler>:
exti_gpiod1_irq_handler():
1c005178:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00517c:	29803061 	st.w	$r1,$r3,12(0xc)
1c005180:	29802076 	st.w	$r22,$r3,8(0x8)
1c005184:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005188:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00518c:	02a380c6 	addi.w	$r6,$r6,-1824(0x8e0)
1c005190:	02824405 	addi.w	$r5,$r0,145(0x91)
1c005194:	1c000024 	pcaddu12i	$r4,1(0x1)
1c005198:	02942084 	addi.w	$r4,$r4,1288(0x508)
1c00519c:	57cb63ff 	bl	-13472(0xfffcb60) # 1c001cfc <myprintf>
1c0051a0:	14040005 	lu12i.w	$r5,8192(0x2000)
1c0051a4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0051a8:	03808184 	ori	$r4,$r12,0x20
1c0051ac:	57e55fff 	bl	-6820(0xfffe55c) # 1c003708 <EXTI_ClearITPendingBit>
1c0051b0:	03400000 	andi	$r0,$r0,0x0
1c0051b4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0051b8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0051bc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0051c0:	4c000020 	jirl	$r0,$r1,0

1c0051c4 <exti_gpiod2_irq_handler>:
exti_gpiod2_irq_handler():
1c0051c4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0051c8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0051cc:	29802076 	st.w	$r22,$r3,8(0x8)
1c0051d0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0051d4:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0051d8:	02a2b0c6 	addi.w	$r6,$r6,-1876(0x8ac)
1c0051dc:	02825805 	addi.w	$r5,$r0,150(0x96)
1c0051e0:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0051e4:	0292f084 	addi.w	$r4,$r4,1212(0x4bc)
1c0051e8:	57cb17ff 	bl	-13548(0xfffcb14) # 1c001cfc <myprintf>
1c0051ec:	14080005 	lu12i.w	$r5,16384(0x4000)
1c0051f0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0051f4:	03808184 	ori	$r4,$r12,0x20
1c0051f8:	57e513ff 	bl	-6896(0xfffe510) # 1c003708 <EXTI_ClearITPendingBit>
1c0051fc:	03400000 	andi	$r0,$r0,0x0
1c005200:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005204:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005208:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00520c:	4c000020 	jirl	$r0,$r1,0

1c005210 <exti_gpiod3_irq_handler>:
exti_gpiod3_irq_handler():
1c005210:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005214:	29803061 	st.w	$r1,$r3,12(0xc)
1c005218:	29802076 	st.w	$r22,$r3,8(0x8)
1c00521c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005220:	1c000046 	pcaddu12i	$r6,2(0x2)
1c005224:	02a1e0c6 	addi.w	$r6,$r6,-1928(0x878)
1c005228:	02826c05 	addi.w	$r5,$r0,155(0x9b)
1c00522c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c005230:	0291c084 	addi.w	$r4,$r4,1136(0x470)
1c005234:	57cacbff 	bl	-13624(0xfffcac8) # 1c001cfc <myprintf>
1c005238:	14100005 	lu12i.w	$r5,32768(0x8000)
1c00523c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c005240:	03808184 	ori	$r4,$r12,0x20
1c005244:	57e4c7ff 	bl	-6972(0xfffe4c4) # 1c003708 <EXTI_ClearITPendingBit>
1c005248:	03400000 	andi	$r0,$r0,0x0
1c00524c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005250:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005254:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005258:	4c000020 	jirl	$r0,$r1,0

1c00525c <exti_gpiod4_irq_handler>:
exti_gpiod4_irq_handler():
1c00525c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005260:	29803061 	st.w	$r1,$r3,12(0xc)
1c005264:	29802076 	st.w	$r22,$r3,8(0x8)
1c005268:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00526c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c005270:	02a110c6 	addi.w	$r6,$r6,-1980(0x844)
1c005274:	02828005 	addi.w	$r5,$r0,160(0xa0)
1c005278:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00527c:	02909084 	addi.w	$r4,$r4,1060(0x424)
1c005280:	57ca7fff 	bl	-13700(0xfffca7c) # 1c001cfc <myprintf>
1c005284:	14200005 	lu12i.w	$r5,65536(0x10000)
1c005288:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00528c:	03808184 	ori	$r4,$r12,0x20
1c005290:	57e47bff 	bl	-7048(0xfffe478) # 1c003708 <EXTI_ClearITPendingBit>
1c005294:	03400000 	andi	$r0,$r0,0x0
1c005298:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00529c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0052a0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0052a4:	4c000020 	jirl	$r0,$r1,0

1c0052a8 <exti_gpiod5_irq_handler>:
exti_gpiod5_irq_handler():
1c0052a8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0052ac:	29803061 	st.w	$r1,$r3,12(0xc)
1c0052b0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0052b4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0052b8:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0052bc:	02a040c6 	addi.w	$r6,$r6,-2032(0x810)
1c0052c0:	02829805 	addi.w	$r5,$r0,166(0xa6)
1c0052c4:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0052c8:	028f6084 	addi.w	$r4,$r4,984(0x3d8)
1c0052cc:	57ca33ff 	bl	-13776(0xfffca30) # 1c001cfc <myprintf>
1c0052d0:	14400005 	lu12i.w	$r5,131072(0x20000)
1c0052d4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0052d8:	03808184 	ori	$r4,$r12,0x20
1c0052dc:	57e42fff 	bl	-7124(0xfffe42c) # 1c003708 <EXTI_ClearITPendingBit>
1c0052e0:	03400000 	andi	$r0,$r0,0x0
1c0052e4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0052e8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0052ec:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0052f0:	4c000020 	jirl	$r0,$r1,0

1c0052f4 <exti_gpiod6_irq_handler>:
exti_gpiod6_irq_handler():
1c0052f4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0052f8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0052fc:	29802076 	st.w	$r22,$r3,8(0x8)
1c005300:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005304:	1c000026 	pcaddu12i	$r6,1(0x1)
1c005308:	029f70c6 	addi.w	$r6,$r6,2012(0x7dc)
1c00530c:	0282ac05 	addi.w	$r5,$r0,171(0xab)
1c005310:	1c000024 	pcaddu12i	$r4,1(0x1)
1c005314:	028e3084 	addi.w	$r4,$r4,908(0x38c)
1c005318:	57c9e7ff 	bl	-13852(0xfffc9e4) # 1c001cfc <myprintf>
1c00531c:	14800005 	lu12i.w	$r5,262144(0x40000)
1c005320:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c005324:	03808184 	ori	$r4,$r12,0x20
1c005328:	57e3e3ff 	bl	-7200(0xfffe3e0) # 1c003708 <EXTI_ClearITPendingBit>
1c00532c:	03400000 	andi	$r0,$r0,0x0
1c005330:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005334:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005338:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00533c:	4c000020 	jirl	$r0,$r1,0

1c005340 <exti_gpiod7_irq_handler>:
exti_gpiod7_irq_handler():
1c005340:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005344:	29803061 	st.w	$r1,$r3,12(0xc)
1c005348:	29802076 	st.w	$r22,$r3,8(0x8)
1c00534c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005350:	1c000026 	pcaddu12i	$r6,1(0x1)
1c005354:	029ea0c6 	addi.w	$r6,$r6,1960(0x7a8)
1c005358:	0282c005 	addi.w	$r5,$r0,176(0xb0)
1c00535c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c005360:	028d0084 	addi.w	$r4,$r4,832(0x340)
1c005364:	57c99bff 	bl	-13928(0xfffc998) # 1c001cfc <myprintf>
1c005368:	15000005 	lu12i.w	$r5,-524288(0x80000)
1c00536c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c005370:	03808184 	ori	$r4,$r12,0x20
1c005374:	57e397ff 	bl	-7276(0xfffe394) # 1c003708 <EXTI_ClearITPendingBit>
1c005378:	03400000 	andi	$r0,$r0,0x0
1c00537c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005380:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005384:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005388:	4c000020 	jirl	$r0,$r1,0

1c00538c <ext_handler>:
ext_handler():
1c00538c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005390:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005394:	29806076 	st.w	$r22,$r3,24(0x18)
1c005398:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00539c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0053a0:	0380f18c 	ori	$r12,$r12,0x3c
1c0053a4:	1402000d 	lu12i.w	$r13,4096(0x1000)
1c0053a8:	2980018d 	st.w	$r13,$r12,0
1c0053ac:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0053b0:	0380818c 	ori	$r12,$r12,0x20
1c0053b4:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c0053b8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0053bc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0053c0:	0380818c 	ori	$r12,$r12,0x20
1c0053c4:	2880018c 	ld.w	$r12,$r12,0
1c0053c8:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0053cc:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0053d0:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0053d4:	0014b1ac 	and	$r12,$r13,$r12
1c0053d8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0053dc:	03400000 	andi	$r0,$r0,0x0
1c0053e0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0053e4:	50004000 	b	64(0x40) # 1c005424 <ext_handler+0x98>
1c0053e8:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0053ec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0053f0:	0017b1ac 	srl.w	$r12,$r13,$r12
1c0053f4:	0340058c 	andi	$r12,$r12,0x1
1c0053f8:	40002180 	beqz	$r12,32(0x20) # 1c005418 <ext_handler+0x8c>
1c0053fc:	1c00002d 	pcaddu12i	$r13,1(0x1)
1c005400:	028d41ad 	addi.w	$r13,$r13,848(0x350)
1c005404:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005408:	0040898c 	slli.w	$r12,$r12,0x2
1c00540c:	001031ac 	add.w	$r12,$r13,$r12
1c005410:	2880018c 	ld.w	$r12,$r12,0
1c005414:	4c000181 	jirl	$r1,$r12,0
1c005418:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00541c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005420:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005424:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005428:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c00542c:	6fffbd8d 	bgeu	$r12,$r13,-68(0x3ffbc) # 1c0053e8 <ext_handler+0x5c>
1c005430:	03400000 	andi	$r0,$r0,0x0
1c005434:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005438:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00543c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005440:	4c000020 	jirl	$r0,$r1,0

1c005444 <TIMER_WAKE_INT>:
TIMER_WAKE_INT():
1c005444:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005448:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00544c:	29806076 	st.w	$r22,$r3,24(0x18)
1c005450:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005454:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c005458:	0380f18c 	ori	$r12,$r12,0x3c
1c00545c:	1400020d 	lu12i.w	$r13,16(0x10)
1c005460:	2980018d 	st.w	$r13,$r12,0
1c005464:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c005468:	0380118c 	ori	$r12,$r12,0x4
1c00546c:	2880018c 	ld.w	$r12,$r12,0
1c005470:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005474:	57e3e7ff 	bl	-7196(0xfffe3e4) # 1c003858 <WDG_DogFeed>
1c005478:	02801804 	addi.w	$r4,$r0,6(0x6)
1c00547c:	57dd6bff 	bl	-8856(0xfffdd68) # 1c0031e4 <Wake_Set>
1c005480:	03400000 	andi	$r0,$r0,0x0
1c005484:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005488:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00548c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005490:	4c000020 	jirl	$r0,$r1,0

1c005494 <TOUCH>:
TOUCH():
1c005494:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005498:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00549c:	29806076 	st.w	$r22,$r3,24(0x18)
1c0054a0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0054a4:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c0054a8:	0380118c 	ori	$r12,$r12,0x4
1c0054ac:	2880018c 	ld.w	$r12,$r12,0
1c0054b0:	0044c18c 	srli.w	$r12,$r12,0x10
1c0054b4:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0054b8:	037ffd8c 	andi	$r12,$r12,0xfff
1c0054bc:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c0054c0:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c0054c4:	0380118c 	ori	$r12,$r12,0x4
1c0054c8:	2880018c 	ld.w	$r12,$r12,0
1c0054cc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0054d0:	03403d8c 	andi	$r12,$r12,0xf
1c0054d4:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c0054d8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0054dc:	0380f18c 	ori	$r12,$r12,0x3c
1c0054e0:	1400040d 	lu12i.w	$r13,32(0x20)
1c0054e4:	2980018d 	st.w	$r13,$r12,0
1c0054e8:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c0054ec:	0380118c 	ori	$r12,$r12,0x4
1c0054f0:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c0054f4:	2980018d 	st.w	$r13,$r12,0
1c0054f8:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c0054fc:	00150184 	move	$r4,$r12
1c005500:	57ed4fff 	bl	-4788(0xfffed4c) # 1c00424c <Printf_KeyType>
1c005504:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c005508:	00150184 	move	$r4,$r12
1c00550c:	57ecc7ff 	bl	-4924(0xfffecc4) # 1c0041d0 <Printf_KeyChannel>
1c005510:	57edcbff 	bl	-4664(0xfffedc8) # 1c0042d8 <Printf_KeyVal>
1c005514:	03400000 	andi	$r0,$r0,0x0
1c005518:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00551c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005520:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005524:	4c000020 	jirl	$r0,$r1,0

1c005528 <UART2_INT>:
UART2_INT():
1c005528:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00552c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c005530:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005534:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c005538:	0380f18c 	ori	$r12,$r12,0x3c
1c00553c:	1400080d 	lu12i.w	$r13,64(0x40)
1c005540:	2980018d 	st.w	$r13,$r12,0
1c005544:	157fd18c 	lu12i.w	$r12,-262516(0xbfe8c)
1c005548:	0380098c 	ori	$r12,$r12,0x2
1c00554c:	2a00018c 	ld.bu	$r12,$r12,0
1c005550:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005554:	03400000 	andi	$r0,$r0,0x0
1c005558:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c00555c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005560:	4c000020 	jirl	$r0,$r1,0

1c005564 <BAT_FAIL>:
BAT_FAIL():
1c005564:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005568:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00556c:	29806076 	st.w	$r22,$r3,24(0x18)
1c005570:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005574:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c005578:	0380118c 	ori	$r12,$r12,0x4
1c00557c:	2880018c 	ld.w	$r12,$r12,0
1c005580:	0044cd8c 	srli.w	$r12,$r12,0x13
1c005584:	03407d8c 	andi	$r12,$r12,0x1f
1c005588:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00558c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c005590:	0380118c 	ori	$r12,$r12,0x4
1c005594:	2880018e 	ld.w	$r14,$r12,0
1c005598:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00559c:	0380f18c 	ori	$r12,$r12,0x3c
1c0055a0:	1401f00d 	lu12i.w	$r13,3968(0xf80)
1c0055a4:	0014b5cd 	and	$r13,$r14,$r13
1c0055a8:	2980018d 	st.w	$r13,$r12,0
1c0055ac:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0055b0:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c0055b4:	6800718d 	bltu	$r12,$r13,112(0x70) # 1c005624 <BAT_FAIL+0xc0>
1c0055b8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0055bc:	0040898d 	slli.w	$r13,$r12,0x2
1c0055c0:	1c00002c 	pcaddu12i	$r12,1(0x1)
1c0055c4:	0288318c 	addi.w	$r12,$r12,524(0x20c)
1c0055c8:	001031ac 	add.w	$r12,$r13,$r12
1c0055cc:	2880018c 	ld.w	$r12,$r12,0
1c0055d0:	4c000180 	jirl	$r0,$r12,0
1c0055d4:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0055d8:	02843084 	addi.w	$r4,$r4,268(0x10c)
1c0055dc:	57c723ff 	bl	-14560(0xfffc720) # 1c001cfc <myprintf>
1c0055e0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0055e4:	0380118c 	ori	$r12,$r12,0x4
1c0055e8:	29800180 	st.w	$r0,$r12,0
1c0055ec:	50003c00 	b	60(0x3c) # 1c005628 <BAT_FAIL+0xc4>
1c0055f0:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0055f4:	02846084 	addi.w	$r4,$r4,280(0x118)
1c0055f8:	57c707ff 	bl	-14588(0xfffc704) # 1c001cfc <myprintf>
1c0055fc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c005600:	0380118c 	ori	$r12,$r12,0x4
1c005604:	2880018e 	ld.w	$r14,$r12,0
1c005608:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00560c:	0380118c 	ori	$r12,$r12,0x4
1c005610:	15fffeed 	lu12i.w	$r13,-9(0xffff7)
1c005614:	03bffdad 	ori	$r13,$r13,0xfff
1c005618:	0014b5cd 	and	$r13,$r14,$r13
1c00561c:	2980018d 	st.w	$r13,$r12,0
1c005620:	50000800 	b	8(0x8) # 1c005628 <BAT_FAIL+0xc4>
1c005624:	03400000 	andi	$r0,$r0,0x0
1c005628:	03400000 	andi	$r0,$r0,0x0
1c00562c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005630:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005634:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005638:	4c000020 	jirl	$r0,$r1,0

1c00563c <intc_handler>:
intc_handler():
1c00563c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005640:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005644:	29806076 	st.w	$r22,$r3,24(0x18)
1c005648:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00564c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c005650:	0380158c 	ori	$r12,$r12,0x5
1c005654:	2a00018c 	ld.bu	$r12,$r12,0
1c005658:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00565c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005660:	0340058c 	andi	$r12,$r12,0x1
1c005664:	40001d80 	beqz	$r12,28(0x1c) # 1c005680 <intc_handler+0x44>
1c005668:	02840004 	addi.w	$r4,$r0,256(0x100)
1c00566c:	57eec3ff 	bl	-4416(0xfffeec0) # 1c00452c <TIM_GetITStatus>
1c005670:	0015008c 	move	$r12,$r4
1c005674:	40000d80 	beqz	$r12,12(0xc) # 1c005680 <intc_handler+0x44>
1c005678:	02840004 	addi.w	$r4,$r0,256(0x100)
1c00567c:	57eeffff 	bl	-4356(0xfffeefc) # 1c004578 <TIM_ClearIT>
1c005680:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005684:	0340118c 	andi	$r12,$r12,0x4
1c005688:	40001580 	beqz	$r12,20(0x14) # 1c00569c <intc_handler+0x60>
1c00568c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c005690:	03800d8c 	ori	$r12,$r12,0x3
1c005694:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c005698:	2900018d 	st.b	$r13,$r12,0
1c00569c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0056a0:	0340218c 	andi	$r12,$r12,0x8
1c0056a4:	40007d80 	beqz	$r12,124(0x7c) # 1c005720 <intc_handler+0xe4>
1c0056a8:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c0056ac:	0380098c 	ori	$r12,$r12,0x2
1c0056b0:	2a00018c 	ld.bu	$r12,$r12,0
1c0056b4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0056b8:	0340118c 	andi	$r12,$r12,0x4
1c0056bc:	40005580 	beqz	$r12,84(0x54) # 1c005710 <intc_handler+0xd4>
1c0056c0:	50003800 	b	56(0x38) # 1c0056f8 <intc_handler+0xbc>
1c0056c4:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c0056c8:	57d23bff 	bl	-11720(0xfffd238) # 1c002900 <UART_ReceiveData>
1c0056cc:	0015008c 	move	$r12,$r4
1c0056d0:	0015018d 	move	$r13,$r12
1c0056d4:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0056d8:	02a4b18c 	addi.w	$r12,$r12,-1748(0x92c)
1c0056dc:	2900018d 	st.b	$r13,$r12,0
1c0056e0:	02800406 	addi.w	$r6,$r0,1(0x1)
1c0056e4:	1cc7ff65 	pcaddu12i	$r5,409595(0x63ffb)
1c0056e8:	02a470a5 	addi.w	$r5,$r5,-1764(0x91c)
1c0056ec:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c0056f0:	28a49084 	ld.w	$r4,$r4,-1756(0x924)
1c0056f4:	5403ec00 	bl	1004(0x3ec) # 1c005ae0 <Queue_Wirte>
1c0056f8:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c0056fc:	0380158c 	ori	$r12,$r12,0x5
1c005700:	2a00018c 	ld.bu	$r12,$r12,0
1c005704:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005708:	0340058c 	andi	$r12,$r12,0x1
1c00570c:	47ffb99f 	bnez	$r12,-72(0x7fffb8) # 1c0056c4 <intc_handler+0x88>
1c005710:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c005714:	03800d8c 	ori	$r12,$r12,0x3
1c005718:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c00571c:	2900018d 	st.b	$r13,$r12,0
1c005720:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c005724:	03800d8c 	ori	$r12,$r12,0x3
1c005728:	02bffc0d 	addi.w	$r13,$r0,-1(0xfff)
1c00572c:	2900018d 	st.b	$r13,$r12,0
1c005730:	03400000 	andi	$r0,$r0,0x0
1c005734:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005738:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00573c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005740:	4c000020 	jirl	$r0,$r1,0

1c005744 <TIMER_HANDLER>:
TIMER_HANDLER():
1c005744:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005748:	29803061 	st.w	$r1,$r3,12(0xc)
1c00574c:	29802076 	st.w	$r22,$r3,8(0x8)
1c005750:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005754:	57da6fff 	bl	-9620(0xfffda6c) # 1c0031c0 <Set_Timer_clear>
1c005758:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00575c:	02bf5084 	addi.w	$r4,$r4,-44(0xfd4)
1c005760:	57c59fff 	bl	-14948(0xfffc59c) # 1c001cfc <myprintf>
1c005764:	57da3fff 	bl	-9668(0xfffda3c) # 1c0031a0 <Set_Timer_stop>
1c005768:	03400000 	andi	$r0,$r0,0x0
1c00576c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005770:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005774:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005778:	4c000020 	jirl	$r0,$r1,0

1c00577c <main>:
main():
1c00577c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005780:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005784:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005788:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00578c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005790:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c005794:	57e0f3ff 	bl	-7952(0xfffe0f0) # 1c003884 <WdgInit>
1c005798:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c00579c:	02bf780c 	addi.w	$r12,$r0,-34(0xfde)
1c0057a0:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c0057a4:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c0057a8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0057ac:	02801004 	addi.w	$r4,$r0,4(0x4)
1c0057b0:	57beb3ff 	bl	-16720(0xfffbeb0) # 1c001660 <gpio_pin_remap>
1c0057b4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0057b8:	02801404 	addi.w	$r4,$r0,5(0x5)
1c0057bc:	57bea7ff 	bl	-16732(0xfffbea4) # 1c001660 <gpio_pin_remap>
1c0057c0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0057c4:	02803404 	addi.w	$r4,$r0,13(0xd)
1c0057c8:	57be9bff 	bl	-16744(0xfffbe98) # 1c001660 <gpio_pin_remap>
1c0057cc:	02819004 	addi.w	$r4,$r0,100(0x64)
1c0057d0:	57ddd3ff 	bl	-8752(0xfffddd0) # 1c0035a0 <delay_ms>
1c0057d4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0057d8:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0057dc:	57be87ff 	bl	-16764(0xfffbe84) # 1c001660 <gpio_pin_remap>
1c0057e0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0057e4:	02805804 	addi.w	$r4,$r0,22(0x16)
1c0057e8:	57be7bff 	bl	-16776(0xfffbe78) # 1c001660 <gpio_pin_remap>
1c0057ec:	02819004 	addi.w	$r4,$r0,100(0x64)
1c0057f0:	57ddb3ff 	bl	-8784(0xfffddb0) # 1c0035a0 <delay_ms>
1c0057f4:	57e767ff 	bl	-6300(0xfffe764) # 1c003f58 <Adc_powerOn>
1c0057f8:	02801004 	addi.w	$r4,$r0,4(0x4)
1c0057fc:	57e7b3ff 	bl	-6224(0xfffe7b0) # 1c003fac <Adc_open>
1c005800:	57f1cbff 	bl	-3640(0xffff1c8) # 1c0049c8 <GY30init>
1c005804:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c005808:	00150184 	move	$r4,$r12
1c00580c:	57e1afff 	bl	-7764(0xfffe1ac) # 1c0039b8 <I2C_StructInit>
1c005810:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c005814:	00150185 	move	$r5,$r12
1c005818:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c00581c:	57e09bff 	bl	-8040(0xfffe098) # 1c0038b4 <I2C_Init>
1c005820:	00150005 	move	$r5,$r0
1c005824:	02805004 	addi.w	$r4,$r0,20(0x14)
1c005828:	57bdc3ff 	bl	-16960(0xfffbdc0) # 1c0015e8 <gpio_write_pin>
1c00582c:	54063000 	bl	1584(0x630) # 1c005e5c <ATK_esp8266>
1c005830:	0015008c 	move	$r12,$r4
1c005834:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005838:	02819004 	addi.w	$r4,$r0,100(0x64)
1c00583c:	57dd67ff 	bl	-8860(0xfffdd64) # 1c0035a0 <delay_ms>
1c005840:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005844:	02805004 	addi.w	$r4,$r0,20(0x14)
1c005848:	57bda3ff 	bl	-16992(0xfffbda0) # 1c0015e8 <gpio_write_pin>
1c00584c:	00150005 	move	$r5,$r0
1c005850:	02803404 	addi.w	$r4,$r0,13(0xd)
1c005854:	57bd97ff 	bl	-17004(0xfffbd94) # 1c0015e8 <gpio_write_pin>
1c005858:	02801004 	addi.w	$r4,$r0,4(0x4)
1c00585c:	57e803ff 	bl	-6144(0xfffe800) # 1c00405c <Adc_Measure>
1c005860:	0015008c 	move	$r12,$r4
1c005864:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c005868:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c00586c:	00150185 	move	$r5,$r12
1c005870:	1c000024 	pcaddu12i	$r4,1(0x1)
1c005874:	028a8084 	addi.w	$r4,$r4,672(0x2a0)
1c005878:	57c487ff 	bl	-15228(0xfffc484) # 1c001cfc <myprintf>
1c00587c:	57f0d3ff 	bl	-3888(0xffff0d0) # 1c00494c <GY30_data_read>
1c005880:	0015008c 	move	$r12,$r4
1c005884:	297faacc 	st.h	$r12,$r22,-22(0xfea)
1c005888:	02819004 	addi.w	$r4,$r0,100(0x64)
1c00588c:	57dd17ff 	bl	-8940(0xfffdd14) # 1c0035a0 <delay_ms>
1c005890:	2a7faacc 	ld.hu	$r12,$r22,-22(0xfea)
1c005894:	00150185 	move	$r5,$r12
1c005898:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00589c:	028a1084 	addi.w	$r4,$r4,644(0x284)
1c0058a0:	57c45fff 	bl	-15268(0xfffc45c) # 1c001cfc <myprintf>
1c0058a4:	57e3bbff 	bl	-7240(0xfffe3b8) # 1c003c5c <Sht30_Init>
1c0058a8:	57e437ff 	bl	-7116(0xfffe434) # 1c003cdc <Send_Tem_Humid>
1c0058ac:	02819004 	addi.w	$r4,$r0,100(0x64)
1c0058b0:	57dcf3ff 	bl	-8976(0xfffdcf0) # 1c0035a0 <delay_ms>
1c0058b4:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0058b8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0058bc:	5c005dac 	bne	$r13,$r12,92(0x5c) # 1c005918 <main+0x19c>
1c0058c0:	1c000025 	pcaddu12i	$r5,1(0x1)
1c0058c4:	0289a0a5 	addi.w	$r5,$r5,616(0x268)
1c0058c8:	00150004 	move	$r4,$r0
1c0058cc:	57c7d7ff 	bl	-14380(0xfffc7d4) # 1c0020a0 <myprintf2>
1c0058d0:	02819004 	addi.w	$r4,$r0,100(0x64)
1c0058d4:	57dccfff 	bl	-9012(0xfffdccc) # 1c0035a0 <delay_ms>
1c0058d8:	2a7faacc 	ld.hu	$r12,$r22,-22(0xfea)
1c0058dc:	00150186 	move	$r6,$r12
1c0058e0:	1c000025 	pcaddu12i	$r5,1(0x1)
1c0058e4:	028940a5 	addi.w	$r5,$r5,592(0x250)
1c0058e8:	00150004 	move	$r4,$r0
1c0058ec:	57c7b7ff 	bl	-14412(0xfffc7b4) # 1c0020a0 <myprintf2>
1c0058f0:	02819004 	addi.w	$r4,$r0,100(0x64)
1c0058f4:	57dcafff 	bl	-9044(0xfffdcac) # 1c0035a0 <delay_ms>
1c0058f8:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c0058fc:	00150186 	move	$r6,$r12
1c005900:	1c000025 	pcaddu12i	$r5,1(0x1)
1c005904:	0288e0a5 	addi.w	$r5,$r5,568(0x238)
1c005908:	00150004 	move	$r4,$r0
1c00590c:	57c797ff 	bl	-14444(0xfffc794) # 1c0020a0 <myprintf2>
1c005910:	02819004 	addi.w	$r4,$r0,100(0x64)
1c005914:	57dc8fff 	bl	-9076(0xfffdc8c) # 1c0035a0 <delay_ms>
1c005918:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00591c:	0288a084 	addi.w	$r4,$r4,552(0x228)
1c005920:	54037800 	bl	888(0x378) # 1c005c98 <esp8266_check_cmd>
1c005924:	0015008c 	move	$r12,$r4
1c005928:	44001180 	bnez	$r12,16(0x10) # 1c005938 <main+0x1bc>
1c00592c:	2a7fb2cd 	ld.hu	$r13,$r22,-20(0xfec)
1c005930:	029f3c0c 	addi.w	$r12,$r0,1999(0x7cf)
1c005934:	6800398d 	bltu	$r12,$r13,56(0x38) # 1c00596c <main+0x1f0>
1c005938:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00593c:	02883084 	addi.w	$r4,$r4,524(0x20c)
1c005940:	57c3bfff 	bl	-15428(0xfffc3bc) # 1c001cfc <myprintf>
1c005944:	00150005 	move	$r5,$r0
1c005948:	02803404 	addi.w	$r4,$r0,13(0xd)
1c00594c:	57bc9fff 	bl	-17252(0xfffbc9c) # 1c0015e8 <gpio_write_pin>
1c005950:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005954:	289b018c 	ld.w	$r12,$r12,1728(0x6c0)
1c005958:	2a40098d 	ld.hu	$r13,$r12,2(0x2)
1c00595c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005960:	289ad18c 	ld.w	$r12,$r12,1716(0x6b4)
1c005964:	2940018d 	st.h	$r13,$r12,0
1c005968:	50005400 	b	84(0x54) # 1c0059bc <main+0x240>
1c00596c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c005970:	02879084 	addi.w	$r4,$r4,484(0x1e4)
1c005974:	54032400 	bl	804(0x324) # 1c005c98 <esp8266_check_cmd>
1c005978:	0015008c 	move	$r12,$r4
1c00597c:	44001180 	bnez	$r12,16(0x10) # 1c00598c <main+0x210>
1c005980:	2a7fb2cd 	ld.hu	$r13,$r22,-20(0xfec)
1c005984:	029f400c 	addi.w	$r12,$r0,2000(0x7d0)
1c005988:	6ffed18d 	bgeu	$r12,$r13,-304(0x3fed0) # 1c005858 <main+0xdc>
1c00598c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c005990:	02872084 	addi.w	$r4,$r4,456(0x1c8)
1c005994:	57c36bff 	bl	-15512(0xfffc368) # 1c001cfc <myprintf>
1c005998:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00599c:	02803404 	addi.w	$r4,$r0,13(0xd)
1c0059a0:	57bc4bff 	bl	-17336(0xfffbc48) # 1c0015e8 <gpio_write_pin>
1c0059a4:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0059a8:	2899b18c 	ld.w	$r12,$r12,1644(0x66c)
1c0059ac:	2a40098d 	ld.hu	$r13,$r12,2(0x2)
1c0059b0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0059b4:	2899818c 	ld.w	$r12,$r12,1632(0x660)
1c0059b8:	2940018d 	st.h	$r13,$r12,0
1c0059bc:	53fe9fff 	b	-356(0xffffe9c) # 1c005858 <main+0xdc>

1c0059c0 <Queue_isEmpty>:
Queue_isEmpty():
1c0059c0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0059c4:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0059c8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0059cc:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0059d0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0059d4:	44000d80 	bnez	$r12,12(0xc) # 1c0059e0 <Queue_isEmpty+0x20>
1c0059d8:	0015000c 	move	$r12,$r0
1c0059dc:	50002400 	b	36(0x24) # 1c005a00 <Queue_isEmpty+0x40>
1c0059e0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0059e4:	2a40018d 	ld.hu	$r13,$r12,0
1c0059e8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0059ec:	2a40098c 	ld.hu	$r12,$r12,2(0x2)
1c0059f0:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c0059fc <Queue_isEmpty+0x3c>
1c0059f4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0059f8:	50000800 	b	8(0x8) # 1c005a00 <Queue_isEmpty+0x40>
1c0059fc:	0015000c 	move	$r12,$r0
1c005a00:	00150184 	move	$r4,$r12
1c005a04:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c005a08:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005a0c:	4c000020 	jirl	$r0,$r1,0

1c005a10 <Queue_HadUse>:
Queue_HadUse():
1c005a10:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005a14:	29807076 	st.w	$r22,$r3,28(0x1c)
1c005a18:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005a1c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c005a20:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005a24:	44000d80 	bnez	$r12,12(0xc) # 1c005a30 <Queue_HadUse+0x20>
1c005a28:	0015000c 	move	$r12,$r0
1c005a2c:	50003800 	b	56(0x38) # 1c005a64 <Queue_HadUse+0x54>
1c005a30:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005a34:	2a40098d 	ld.hu	$r13,$r12,2(0x2)
1c005a38:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005a3c:	2a40018c 	ld.hu	$r12,$r12,0
1c005a40:	001131ac 	sub.w	$r12,$r13,$r12
1c005a44:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c005a48:	0284b18c 	addi.w	$r12,$r12,300(0x12c)
1c005a4c:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005a50:	0284b00c 	addi.w	$r12,$r0,300(0x12c)
1c005a54:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c005a58:	5c000980 	bne	$r12,$r0,8(0x8) # 1c005a60 <Queue_HadUse+0x50>
1c005a5c:	002a0007 	break	0x7
1c005a60:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c005a64:	00150184 	move	$r4,$r12
1c005a68:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c005a6c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005a70:	4c000020 	jirl	$r0,$r1,0

1c005a74 <Queue_NoUse>:
Queue_NoUse():
1c005a74:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005a78:	29807076 	st.w	$r22,$r3,28(0x1c)
1c005a7c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005a80:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c005a84:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005a88:	44000d80 	bnez	$r12,12(0xc) # 1c005a94 <Queue_NoUse+0x20>
1c005a8c:	0015000c 	move	$r12,$r0
1c005a90:	50004000 	b	64(0x40) # 1c005ad0 <Queue_NoUse+0x5c>
1c005a94:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005a98:	2a40098c 	ld.hu	$r12,$r12,2(0x2)
1c005a9c:	0015018d 	move	$r13,$r12
1c005aa0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005aa4:	2a40018c 	ld.hu	$r12,$r12,0
1c005aa8:	001131ac 	sub.w	$r12,$r13,$r12
1c005aac:	0284b18d 	addi.w	$r13,$r12,300(0x12c)
1c005ab0:	0284b00c 	addi.w	$r12,$r0,300(0x12c)
1c005ab4:	0020b1ae 	mod.w	$r14,$r13,$r12
1c005ab8:	5c000980 	bne	$r12,$r0,8(0x8) # 1c005ac0 <Queue_NoUse+0x4c>
1c005abc:	002a0007 	break	0x7
1c005ac0:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c005ac4:	0284ac0d 	addi.w	$r13,$r0,299(0x12b)
1c005ac8:	001131ac 	sub.w	$r12,$r13,$r12
1c005acc:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c005ad0:	00150184 	move	$r4,$r12
1c005ad4:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c005ad8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005adc:	4c000020 	jirl	$r0,$r1,0

1c005ae0 <Queue_Wirte>:
Queue_Wirte():
1c005ae0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005ae4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005ae8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005aec:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005af0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005af4:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c005af8:	001500cc 	move	$r12,$r6
1c005afc:	297f5acc 	st.h	$r12,$r22,-42(0xfd6)
1c005b00:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005b04:	44000d80 	bnez	$r12,12(0xc) # 1c005b10 <Queue_Wirte+0x30>
1c005b08:	0015000c 	move	$r12,$r0
1c005b0c:	50009c00 	b	156(0x9c) # 1c005ba8 <Queue_Wirte+0xc8>
1c005b10:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c005b14:	57ff63ff 	bl	-160(0xfffff60) # 1c005a74 <Queue_NoUse>
1c005b18:	0015008c 	move	$r12,$r4
1c005b1c:	0015018d 	move	$r13,$r12
1c005b20:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c005b24:	6c000dac 	bgeu	$r13,$r12,12(0xc) # 1c005b30 <Queue_Wirte+0x50>
1c005b28:	0015000c 	move	$r12,$r0
1c005b2c:	50007c00 	b	124(0x7c) # 1c005ba8 <Queue_Wirte+0xc8>
1c005b30:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005b34:	50006400 	b	100(0x64) # 1c005b98 <Queue_Wirte+0xb8>
1c005b38:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005b3c:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c005b40:	001031ac 	add.w	$r12,$r13,$r12
1c005b44:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c005b48:	2a4009ad 	ld.hu	$r13,$r13,2(0x2)
1c005b4c:	001501ae 	move	$r14,$r13
1c005b50:	2a00018d 	ld.bu	$r13,$r12,0
1c005b54:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005b58:	0010398c 	add.w	$r12,$r12,$r14
1c005b5c:	2900118d 	st.b	$r13,$r12,4(0x4)
1c005b60:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005b64:	2a40098c 	ld.hu	$r12,$r12,2(0x2)
1c005b68:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005b6c:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005b70:	0284b00c 	addi.w	$r12,$r0,300(0x12c)
1c005b74:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c005b78:	5c000980 	bne	$r12,$r0,8(0x8) # 1c005b80 <Queue_Wirte+0xa0>
1c005b7c:	002a0007 	break	0x7
1c005b80:	006f81cd 	bstrpick.w	$r13,$r14,0xf,0x0
1c005b84:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005b88:	2940098d 	st.h	$r13,$r12,2(0x2)
1c005b8c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005b90:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005b94:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005b98:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c005b9c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005ba0:	63ff99ac 	blt	$r13,$r12,-104(0x3ff98) # 1c005b38 <Queue_Wirte+0x58>
1c005ba4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005ba8:	00150184 	move	$r4,$r12
1c005bac:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005bb0:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005bb4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005bb8:	4c000020 	jirl	$r0,$r1,0

1c005bbc <Queue_Read>:
Queue_Read():
1c005bbc:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005bc0:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005bc4:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005bc8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005bcc:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005bd0:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c005bd4:	001500cc 	move	$r12,$r6
1c005bd8:	297f5acc 	st.h	$r12,$r22,-42(0xfd6)
1c005bdc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005be0:	44000d80 	bnez	$r12,12(0xc) # 1c005bec <Queue_Read+0x30>
1c005be4:	0015000c 	move	$r12,$r0
1c005be8:	50009c00 	b	156(0x9c) # 1c005c84 <Queue_Read+0xc8>
1c005bec:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c005bf0:	57fe23ff 	bl	-480(0xffffe20) # 1c005a10 <Queue_HadUse>
1c005bf4:	0015008c 	move	$r12,$r4
1c005bf8:	0015018d 	move	$r13,$r12
1c005bfc:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c005c00:	6c000dac 	bgeu	$r13,$r12,12(0xc) # 1c005c0c <Queue_Read+0x50>
1c005c04:	0015000c 	move	$r12,$r0
1c005c08:	50007c00 	b	124(0x7c) # 1c005c84 <Queue_Read+0xc8>
1c005c0c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005c10:	50006400 	b	100(0x64) # 1c005c74 <Queue_Read+0xb8>
1c005c14:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005c18:	2a40018c 	ld.hu	$r12,$r12,0
1c005c1c:	0015018e 	move	$r14,$r12
1c005c20:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005c24:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c005c28:	001031ac 	add.w	$r12,$r13,$r12
1c005c2c:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c005c30:	001039ad 	add.w	$r13,$r13,$r14
1c005c34:	2a0011ad 	ld.bu	$r13,$r13,4(0x4)
1c005c38:	2900018d 	st.b	$r13,$r12,0
1c005c3c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005c40:	2a40018c 	ld.hu	$r12,$r12,0
1c005c44:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005c48:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005c4c:	0284b00c 	addi.w	$r12,$r0,300(0x12c)
1c005c50:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c005c54:	5c000980 	bne	$r12,$r0,8(0x8) # 1c005c5c <Queue_Read+0xa0>
1c005c58:	002a0007 	break	0x7
1c005c5c:	006f81cd 	bstrpick.w	$r13,$r14,0xf,0x0
1c005c60:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005c64:	2940018d 	st.h	$r13,$r12,0
1c005c68:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005c6c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005c70:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005c74:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c005c78:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005c7c:	63ff99ac 	blt	$r13,$r12,-104(0x3ff98) # 1c005c14 <Queue_Read+0x58>
1c005c80:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005c84:	00150184 	move	$r4,$r12
1c005c88:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005c8c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005c90:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005c94:	4c000020 	jirl	$r0,$r1,0

1c005c98 <esp8266_check_cmd>:
esp8266_check_cmd():
1c005c98:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005c9c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005ca0:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005ca4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005ca8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005cac:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005cb0:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005cb4:	288d8084 	ld.w	$r4,$r4,864(0x360)
1c005cb8:	57fd0bff 	bl	-760(0xffffd08) # 1c0059c0 <Queue_isEmpty>
1c005cbc:	0015008c 	move	$r12,$r4
1c005cc0:	44009580 	bnez	$r12,148(0x94) # 1c005d54 <esp8266_check_cmd+0xbc>
1c005cc4:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005cc8:	288d3084 	ld.w	$r4,$r4,844(0x34c)
1c005ccc:	57fd47ff 	bl	-700(0xffffd44) # 1c005a10 <Queue_HadUse>
1c005cd0:	0015008c 	move	$r12,$r4
1c005cd4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005cd8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005cdc:	288cc18c 	ld.w	$r12,$r12,816(0x330)
1c005ce0:	2900018d 	st.b	$r13,$r12,0
1c005ce4:	0284b006 	addi.w	$r6,$r0,300(0x12c)
1c005ce8:	00150005 	move	$r5,$r0
1c005cec:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005cf0:	288cb084 	ld.w	$r4,$r4,812(0x32c)
1c005cf4:	57d8efff 	bl	-10004(0xfffd8ec) # 1c0035e0 <memset>
1c005cf8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005cfc:	288c418c 	ld.w	$r12,$r12,784(0x310)
1c005d00:	2a00018c 	ld.bu	$r12,$r12,0
1c005d04:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c005d08:	00150186 	move	$r6,$r12
1c005d0c:	1cc7ff65 	pcaddu12i	$r5,409595(0x63ffb)
1c005d10:	288c30a5 	ld.w	$r5,$r5,780(0x30c)
1c005d14:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005d18:	288bf084 	ld.w	$r4,$r4,764(0x2fc)
1c005d1c:	57fea3ff 	bl	-352(0xffffea0) # 1c005bbc <Queue_Read>
1c005d20:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005d24:	288ba18c 	ld.w	$r12,$r12,744(0x2e8)
1c005d28:	2a00018c 	ld.bu	$r12,$r12,0
1c005d2c:	0015018d 	move	$r13,$r12
1c005d30:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005d34:	288ba18c 	ld.w	$r12,$r12,744(0x2e8)
1c005d38:	0010358c 	add.w	$r12,$r12,$r13
1c005d3c:	29000180 	st.b	$r0,$r12,0
1c005d40:	1cc7ff65 	pcaddu12i	$r5,409595(0x63ffb)
1c005d44:	288b60a5 	ld.w	$r5,$r5,728(0x2d8)
1c005d48:	1c000024 	pcaddu12i	$r4,1(0x1)
1c005d4c:	02b86084 	addi.w	$r4,$r4,-488(0xe18)
1c005d50:	57bfafff 	bl	-16468(0xfffbfac) # 1c001cfc <myprintf>
1c005d54:	28bf72c5 	ld.w	$r5,$r22,-36(0xfdc)
1c005d58:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005d5c:	288b0084 	ld.w	$r4,$r4,704(0x2c0)
1c005d60:	57d8e3ff 	bl	-10016(0xfffd8e0) # 1c003640 <pstrstr>
1c005d64:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c005d68:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005d6c:	00150184 	move	$r4,$r12
1c005d70:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005d74:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005d78:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005d7c:	4c000020 	jirl	$r0,$r1,0

1c005d80 <esp8266_send_cmd>:
esp8266_send_cmd():
1c005d80:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005d84:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005d88:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005d8c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005d90:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005d94:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c005d98:	001500cc 	move	$r12,$r6
1c005d9c:	297f5acc 	st.h	$r12,$r22,-42(0xfd6)
1c005da0:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005da4:	28bf72c5 	ld.w	$r5,$r22,-36(0xfdc)
1c005da8:	1c000024 	pcaddu12i	$r4,1(0x1)
1c005dac:	02b74084 	addi.w	$r4,$r4,-560(0xdd0)
1c005db0:	57bf4fff 	bl	-16564(0xfffbf4c) # 1c001cfc <myprintf>
1c005db4:	28bf72c6 	ld.w	$r6,$r22,-36(0xfdc)
1c005db8:	1c000025 	pcaddu12i	$r5,1(0x1)
1c005dbc:	02b730a5 	addi.w	$r5,$r5,-564(0xdcc)
1c005dc0:	00150004 	move	$r4,$r0
1c005dc4:	57c2dfff 	bl	-15652(0xfffc2dc) # 1c0020a0 <myprintf2>
1c005dc8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005dcc:	40007980 	beqz	$r12,120(0x78) # 1c005e44 <esp8266_send_cmd+0xc4>
1c005dd0:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c005dd4:	40007180 	beqz	$r12,112(0x70) # 1c005e44 <esp8266_send_cmd+0xc4>
1c005dd8:	50003000 	b	48(0x30) # 1c005e08 <esp8266_send_cmd+0x88>
1c005ddc:	028fa004 	addi.w	$r4,$r0,1000(0x3e8)
1c005de0:	57d7c3ff 	bl	-10304(0xfffd7c0) # 1c0035a0 <delay_ms>
1c005de4:	28bf62c4 	ld.w	$r4,$r22,-40(0xfd8)
1c005de8:	57feb3ff 	bl	-336(0xffffeb0) # 1c005c98 <esp8266_check_cmd>
1c005dec:	0015008c 	move	$r12,$r4
1c005df0:	40001980 	beqz	$r12,24(0x18) # 1c005e08 <esp8266_send_cmd+0x88>
1c005df4:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c005df8:	1c000024 	pcaddu12i	$r4,1(0x1)
1c005dfc:	02b65084 	addi.w	$r4,$r4,-620(0xd94)
1c005e00:	57beffff 	bl	-16644(0xfffbefc) # 1c001cfc <myprintf>
1c005e04:	50001800 	b	24(0x18) # 1c005e1c <esp8266_send_cmd+0x9c>
1c005e08:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c005e0c:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c005e10:	297f5acc 	st.h	$r12,$r22,-42(0xfd6)
1c005e14:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c005e18:	47ffc59f 	bnez	$r12,-60(0x7fffc4) # 1c005ddc <esp8266_send_cmd+0x5c>
1c005e1c:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c005e20:	44001180 	bnez	$r12,16(0x10) # 1c005e30 <esp8266_send_cmd+0xb0>
1c005e24:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005e28:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005e2c:	50001800 	b	24(0x18) # 1c005e44 <esp8266_send_cmd+0xc4>
1c005e30:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c005e34:	00150185 	move	$r5,$r12
1c005e38:	1c000024 	pcaddu12i	$r4,1(0x1)
1c005e3c:	02b58084 	addi.w	$r4,$r4,-672(0xd60)
1c005e40:	57bebfff 	bl	-16708(0xfffbebc) # 1c001cfc <myprintf>
1c005e44:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c005e48:	00150184 	move	$r4,$r12
1c005e4c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005e50:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005e54:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005e58:	4c000020 	jirl	$r0,$r1,0

1c005e5c <ATK_esp8266>:
ATK_esp8266():
1c005e5c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005e60:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005e64:	29806076 	st.w	$r22,$r3,24(0x18)
1c005e68:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005e6c:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005e70:	03400000 	andi	$r0,$r0,0x0
1c005e74:	0287d006 	addi.w	$r6,$r0,500(0x1f4)
1c005e78:	1c000025 	pcaddu12i	$r5,1(0x1)
1c005e7c:	02b4f0a5 	addi.w	$r5,$r5,-708(0xd3c)
1c005e80:	1c000024 	pcaddu12i	$r4,1(0x1)
1c005e84:	02b8d084 	addi.w	$r4,$r4,-460(0xe34)
1c005e88:	57fefbff 	bl	-264(0xffffef8) # 1c005d80 <esp8266_send_cmd>
1c005e8c:	0015008c 	move	$r12,$r4
1c005e90:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c005e74 <ATK_esp8266+0x18>
1c005e94:	1c000024 	pcaddu12i	$r4,1(0x1)
1c005e98:	02b89084 	addi.w	$r4,$r4,-476(0xe24)
1c005e9c:	57be63ff 	bl	-16800(0xfffbe60) # 1c001cfc <myprintf>
1c005ea0:	028fa004 	addi.w	$r4,$r0,1000(0x3e8)
1c005ea4:	57d6ffff 	bl	-10500(0xfffd6fc) # 1c0035a0 <delay_ms>
1c005ea8:	03400000 	andi	$r0,$r0,0x0
1c005eac:	03aee006 	ori	$r6,$r0,0xbb8
1c005eb0:	1c000025 	pcaddu12i	$r5,1(0x1)
1c005eb4:	02b410a5 	addi.w	$r5,$r5,-764(0xd04)
1c005eb8:	1c000024 	pcaddu12i	$r4,1(0x1)
1c005ebc:	02b40084 	addi.w	$r4,$r4,-768(0xd00)
1c005ec0:	57fec3ff 	bl	-320(0xffffec0) # 1c005d80 <esp8266_send_cmd>
1c005ec4:	0015008c 	move	$r12,$r4
1c005ec8:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c005eac <ATK_esp8266+0x50>
1c005ecc:	028fa004 	addi.w	$r4,$r0,1000(0x3e8)
1c005ed0:	57d6d3ff 	bl	-10544(0xfffd6d0) # 1c0035a0 <delay_ms>
1c005ed4:	03400000 	andi	$r0,$r0,0x0
1c005ed8:	1400004c 	lu12i.w	$r12,2(0x2)
1c005edc:	039c4186 	ori	$r6,$r12,0x710
1c005ee0:	1c000025 	pcaddu12i	$r5,1(0x1)
1c005ee4:	02b830a5 	addi.w	$r5,$r5,-500(0xe0c)
1c005ee8:	1c000024 	pcaddu12i	$r4,1(0x1)
1c005eec:	02b84084 	addi.w	$r4,$r4,-496(0xe10)
1c005ef0:	57fe93ff 	bl	-368(0xffffe90) # 1c005d80 <esp8266_send_cmd>
1c005ef4:	0015008c 	move	$r12,$r4
1c005ef8:	47ffe19f 	bnez	$r12,-32(0x7fffe0) # 1c005ed8 <ATK_esp8266+0x7c>
1c005efc:	1c000024 	pcaddu12i	$r4,1(0x1)
1c005f00:	02b87084 	addi.w	$r4,$r4,-484(0xe1c)
1c005f04:	57bdfbff 	bl	-16904(0xfffbdf8) # 1c001cfc <myprintf>
1c005f08:	03400000 	andi	$r0,$r0,0x0
1c005f0c:	1400004c 	lu12i.w	$r12,2(0x2)
1c005f10:	039c4186 	ori	$r6,$r12,0x710
1c005f14:	1c000025 	pcaddu12i	$r5,1(0x1)
1c005f18:	02b880a5 	addi.w	$r5,$r5,-480(0xe20)
1c005f1c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c005f20:	02b8a084 	addi.w	$r4,$r4,-472(0xe28)
1c005f24:	57fe5fff 	bl	-420(0xffffe5c) # 1c005d80 <esp8266_send_cmd>
1c005f28:	0015008c 	move	$r12,$r4
1c005f2c:	47ffe19f 	bnez	$r12,-32(0x7fffe0) # 1c005f0c <ATK_esp8266+0xb0>
1c005f30:	1c000024 	pcaddu12i	$r4,1(0x1)
1c005f34:	02b91084 	addi.w	$r4,$r4,-444(0xe44)
1c005f38:	57bdc7ff 	bl	-16956(0xfffbdc4) # 1c001cfc <myprintf>
1c005f3c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005f40:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005f44:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005f48:	00150184 	move	$r4,$r12
1c005f4c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005f50:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005f54:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005f58:	4c000020 	jirl	$r0,$r1,0

Disassembly of section .rodata:

1c005f60 <msg_wakeup>:
msg_wakeup():
1c005f60:	656b6177 	bge	$r11,$r23,93024(0x16b60) # 1c01cac0 <_sidata+0x15d30>
1c005f64:	0a217075 	xvfmadd.d	$xr21,$xr3,$xr28,$xr2
	...

1c005f69 <hexdecarr>:
hexdecarr():
1c005f69:	33323130 	xvstelm.w	$xr16,$r9,-464(0x230),0x4
1c005f6d:	37363534 	0x37363534
1c005f71:	62613938 	blt	$r9,$r24,-106184(0x26138) # 1bfec0a9 <_start-0x13f57>
1c005f75:	66656463 	bge	$r3,$r3,-105116(0x26564) # 1bfec4d9 <_start-0x13b27>
1c005f79:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c005f7d:	79654b0a 	0x79654b0a
1c005f81:	73657220 	vssrani.wu.d	$vr0,$vr17,0x1c
1c005f85:	0d217465 	xvbitsel.v	$xr5,$xr3,$xr29,$xr2
1c005f89:	0d00000a 	fsel	$f10,$f0,$f0,$fcc0
1c005f8d:	6970730a 	bltu	$r24,$r10,94320(0x17070) # 1c01cffd <_sidata+0x1626d>
1c005f91:	6f6f6220 	bgeu	$r17,$r0,-37024(0x36f60) # 1bffcef1 <_start-0x310f>
1c005f95:	0d000074 	fsel	$f20,$f3,$f0,$fcc0
1c005f99:	676f640a 	bge	$r0,$r10,-37020(0x36f64) # 1bffcefd <_start-0x3103>
1c005f9d:	72616220 	0x72616220
1c005fa1:	0a0d216b 	0x0a0d216b
1c005fa5:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c005fa9:	6b61770a 	bltu	$r24,$r10,-40588(0x36174) # 1bffc11d <_start-0x3ee3>
1c005fad:	21705565 	sc.w	$r5,$r11,28756(0x7054)
1c005fb1:	1c000a0d 	pcaddu12i	$r13,80(0x50)
1c005fb5:	381c001f 	stx.d	$r31,$r0,$r0
1c005fb9:	381c0020 	stx.d	$r0,$r1,$r0
1c005fbd:	381c0020 	stx.d	$r0,$r1,$r0
1c005fc1:	381c0020 	stx.d	$r0,$r1,$r0
1c005fc5:	381c0020 	stx.d	$r0,$r1,$r0
1c005fc9:	381c0020 	stx.d	$r0,$r1,$r0
1c005fcd:	381c0020 	stx.d	$r0,$r1,$r0
1c005fd1:	381c0020 	stx.d	$r0,$r1,$r0
1c005fd5:	381c0020 	stx.d	$r0,$r1,$r0
1c005fd9:	381c0020 	stx.d	$r0,$r1,$r0
1c005fdd:	341c0020 	0x341c0020
1c005fe1:	bc1c001f 	0xbc1c001f
1c005fe5:	bc1c001f 	0xbc1c001f
1c005fe9:	bc1c001f 	0xbc1c001f
1c005fed:	bc1c001f 	0xbc1c001f
1c005ff1:	bc1c001f 	0xbc1c001f
1c005ff5:	bc1c001f 	0xbc1c001f
1c005ff9:	bc1c001f 	0xbc1c001f
1c005ffd:	bc1c001f 	0xbc1c001f
1c006001:	bc1c001f 	0xbc1c001f
1c006005:	381c001f 	stx.d	$r31,$r0,$r0
1c006009:	381c0020 	stx.d	$r0,$r1,$r0
1c00600d:	381c0020 	stx.d	$r0,$r1,$r0
1c006011:	381c0020 	stx.d	$r0,$r1,$r0
1c006015:	381c0020 	stx.d	$r0,$r1,$r0
1c006019:	381c0020 	stx.d	$r0,$r1,$r0
1c00601d:	381c0020 	stx.d	$r0,$r1,$r0
1c006021:	381c0020 	stx.d	$r0,$r1,$r0
1c006025:	381c0020 	stx.d	$r0,$r1,$r0
1c006029:	381c0020 	stx.d	$r0,$r1,$r0
1c00602d:	381c0020 	stx.d	$r0,$r1,$r0
1c006031:	381c0020 	stx.d	$r0,$r1,$r0
1c006035:	381c0020 	stx.d	$r0,$r1,$r0
1c006039:	381c0020 	stx.d	$r0,$r1,$r0
1c00603d:	381c0020 	stx.d	$r0,$r1,$r0
1c006041:	381c0020 	stx.d	$r0,$r1,$r0
1c006045:	381c0020 	stx.d	$r0,$r1,$r0
1c006049:	381c0020 	stx.d	$r0,$r1,$r0
1c00604d:	381c0020 	stx.d	$r0,$r1,$r0
1c006051:	381c0020 	stx.d	$r0,$r1,$r0
1c006055:	381c0020 	stx.d	$r0,$r1,$r0
1c006059:	381c0020 	stx.d	$r0,$r1,$r0
1c00605d:	381c0020 	stx.d	$r0,$r1,$r0
1c006061:	381c0020 	stx.d	$r0,$r1,$r0
1c006065:	381c0020 	stx.d	$r0,$r1,$r0
1c006069:	381c0020 	stx.d	$r0,$r1,$r0
1c00606d:	381c0020 	stx.d	$r0,$r1,$r0
1c006071:	381c0020 	stx.d	$r0,$r1,$r0
1c006075:	381c0020 	stx.d	$r0,$r1,$r0
1c006079:	381c0020 	stx.d	$r0,$r1,$r0
1c00607d:	381c0020 	stx.d	$r0,$r1,$r0
1c006081:	381c0020 	stx.d	$r0,$r1,$r0
1c006085:	381c0020 	stx.d	$r0,$r1,$r0
1c006089:	381c0020 	stx.d	$r0,$r1,$r0
1c00608d:	381c0020 	stx.d	$r0,$r1,$r0
1c006091:	381c0020 	stx.d	$r0,$r1,$r0
1c006095:	381c0020 	stx.d	$r0,$r1,$r0
1c006099:	381c0020 	stx.d	$r0,$r1,$r0
1c00609d:	381c0020 	stx.d	$r0,$r1,$r0
1c0060a1:	381c0020 	stx.d	$r0,$r1,$r0
1c0060a5:	ac1c0020 	0xac1c0020
1c0060a9:	d41c001e 	0xd41c001e
1c0060ad:	3c1c001d 	0x3c1c001d
1c0060b1:	381c001e 	stx.d	$r30,$r0,$r0
1c0060b5:	381c0020 	stx.d	$r0,$r1,$r0
1c0060b9:	381c0020 	stx.d	$r0,$r1,$r0
1c0060bd:	381c0020 	stx.d	$r0,$r1,$r0
1c0060c1:	381c0020 	stx.d	$r0,$r1,$r0
1c0060c5:	381c0020 	stx.d	$r0,$r1,$r0
1c0060c9:	381c0020 	stx.d	$r0,$r1,$r0
1c0060cd:	381c0020 	stx.d	$r0,$r1,$r0
1c0060d1:	381c0020 	stx.d	$r0,$r1,$r0
1c0060d5:	381c0020 	stx.d	$r0,$r1,$r0
1c0060d9:	741c0020 	0x741c0020
1c0060dd:	e41c001e 	0xe41c001e
1c0060e1:	381c001e 	stx.d	$r30,$r0,$r0
1c0060e5:	381c0020 	stx.d	$r0,$r1,$r0
1c0060e9:	a81c0020 	0xa81c0020
1c0060ed:	381c001d 	stx.d	$r29,$r0,$r0
1c0060f1:	041c0020 	csrwr	$r0,0x700
1c0060f5:	381c001e 	stx.d	$r30,$r0,$r0
1c0060f9:	381c0020 	stx.d	$r0,$r1,$r0
1c0060fd:	e41c0020 	0xe41c0020
1c006101:	101c001e 	addu16i.d	$r30,$r0,1792(0x700)
1c006105:	341c0023 	0x341c0023
1c006109:	341c0024 	0x341c0024
1c00610d:	341c0024 	0x341c0024
1c006111:	341c0024 	0x341c0024
1c006115:	341c0024 	0x341c0024
1c006119:	341c0024 	0x341c0024
1c00611d:	341c0024 	0x341c0024
1c006121:	341c0024 	0x341c0024
1c006125:	341c0024 	0x341c0024
1c006129:	341c0024 	0x341c0024
1c00612d:	301c0024 	0x301c0024
1c006131:	b81c0023 	0xb81c0023
1c006135:	b81c0023 	0xb81c0023
1c006139:	b81c0023 	0xb81c0023
1c00613d:	b81c0023 	0xb81c0023
1c006141:	b81c0023 	0xb81c0023
1c006145:	b81c0023 	0xb81c0023
1c006149:	b81c0023 	0xb81c0023
1c00614d:	b81c0023 	0xb81c0023
1c006151:	b81c0023 	0xb81c0023
1c006155:	341c0023 	0x341c0023
1c006159:	341c0024 	0x341c0024
1c00615d:	341c0024 	0x341c0024
1c006161:	341c0024 	0x341c0024
1c006165:	341c0024 	0x341c0024
1c006169:	341c0024 	0x341c0024
1c00616d:	341c0024 	0x341c0024
1c006171:	341c0024 	0x341c0024
1c006175:	341c0024 	0x341c0024
1c006179:	341c0024 	0x341c0024
1c00617d:	341c0024 	0x341c0024
1c006181:	341c0024 	0x341c0024
1c006185:	341c0024 	0x341c0024
1c006189:	341c0024 	0x341c0024
1c00618d:	341c0024 	0x341c0024
1c006191:	341c0024 	0x341c0024
1c006195:	341c0024 	0x341c0024
1c006199:	341c0024 	0x341c0024
1c00619d:	341c0024 	0x341c0024
1c0061a1:	341c0024 	0x341c0024
1c0061a5:	341c0024 	0x341c0024
1c0061a9:	341c0024 	0x341c0024
1c0061ad:	341c0024 	0x341c0024
1c0061b1:	341c0024 	0x341c0024
1c0061b5:	341c0024 	0x341c0024
1c0061b9:	341c0024 	0x341c0024
1c0061bd:	341c0024 	0x341c0024
1c0061c1:	341c0024 	0x341c0024
1c0061c5:	341c0024 	0x341c0024
1c0061c9:	341c0024 	0x341c0024
1c0061cd:	cc1c0024 	0xcc1c0024
1c0061d1:	341c0022 	0x341c0022
1c0061d5:	341c0024 	0x341c0024
1c0061d9:	341c0024 	0x341c0024
1c0061dd:	341c0024 	0x341c0024
1c0061e1:	341c0024 	0x341c0024
1c0061e5:	341c0024 	0x341c0024
1c0061e9:	341c0024 	0x341c0024
1c0061ed:	341c0024 	0x341c0024
1c0061f1:	341c0024 	0x341c0024
1c0061f5:	881c0024 	0x881c0024
1c0061f9:	841c0022 	0x841c0022
1c0061fd:	001c0021 	mul.w	$r1,$r1,$r0
1c006201:	341c0022 	0x341c0022
1c006205:	341c0024 	0x341c0024
1c006209:	341c0024 	0x341c0024
1c00620d:	341c0024 	0x341c0024
1c006211:	341c0024 	0x341c0024
1c006215:	341c0024 	0x341c0024
1c006219:	341c0024 	0x341c0024
1c00621d:	341c0024 	0x341c0024
1c006221:	341c0024 	0x341c0024
1c006225:	341c0024 	0x341c0024
1c006229:	441c0024 	bnez	$r1,1055744(0x101c00) # 1c107e29 <_sidata+0x101099>
1c00622d:	cc1c0022 	0xcc1c0022
1c006231:	341c0022 	0x341c0022
1c006235:	341c0024 	0x341c0024
1c006239:	501c0024 	b	9444352(0x901c00) # 1c907e39 <_sidata+0x9010a9>
1c00623d:	341c0021 	0x341c0021
1c006241:	bc1c0024 	0xbc1c0024
1c006245:	341c0021 	0x341c0021
1c006249:	341c0024 	0x341c0024
1c00624d:	cc1c0024 	0xcc1c0024
1c006251:	0a1c0022 	xvfmadd.s	$xr2,$xr1,$xr0,$xr24
1c006255:	7c000000 	0x7c000000
1c006259:	7c7c7c7c 	0x7c7c7c7c
1c00625d:	7c7c7c7c 	0x7c7c7c7c
1c006261:	7c7c7c7c 	0x7c7c7c7c
1c006265:	7c7c7c7c 	0x7c7c7c7c
1c006269:	7c7c7c7c 	0x7c7c7c7c
1c00626d:	7c7c7c7c 	0x7c7c7c7c
1c006271:	7c7c7c7c 	0x7c7c7c7c
1c006275:	7c7c7c7c 	0x7c7c7c7c
1c006279:	7c7c7c7c 	0x7c7c7c7c
1c00627d:	7c7c7c7c 	0x7c7c7c7c
1c006281:	7c7c7c7c 	0x7c7c7c7c
1c006285:	7c7c7c7c 	0x7c7c7c7c
1c006289:	7c7c7c7c 	0x7c7c7c7c
1c00628d:	7c7c7c7c 	0x7c7c7c7c
1c006291:	7c7c7c7c 	0x7c7c7c7c
1c006295:	7c7c7c7c 	0x7c7c7c7c
1c006299:	7c7c7c7c 	0x7c7c7c7c
1c00629d:	7c7c7c7c 	0x7c7c7c7c
1c0062a1:	7c7c7c7c 	0x7c7c7c7c
1c0062a5:	7c7c7c7c 	0x7c7c7c7c
1c0062a9:	7c7c7c7c 	0x7c7c7c7c
1c0062ad:	7c7c7c7c 	0x7c7c7c7c
1c0062b1:	7c7c7c7c 	0x7c7c7c7c
1c0062b5:	7c7c7c7c 	0x7c7c7c7c
1c0062b9:	7c00000a 	0x7c00000a
1c0062bd:	7c20207c 	0x7c20207c
1c0062c1:	7c7c7c7c 	0x7c7c7c7c
1c0062c5:	7c7c7c7c 	0x7c7c7c7c
1c0062c9:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0062cd:	7c202020 	0x7c202020
1c0062d1:	7c7c7c7c 	0x7c7c7c7c
1c0062d5:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0062d9:	7c202020 	0x7c202020
1c0062dd:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0062e1:	7c7c2020 	0x7c7c2020
1c0062e5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0062e9:	7c7c7c20 	0x7c7c7c20
1c0062ed:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0062f1:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0062f5:	7c7c7c7c 	0x7c7c7c7c
1c0062f9:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c0062fd:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006301:	7c7c7c7c 	0x7c7c7c7c
1c006305:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c006309:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00630d:	7c7c7c7c 	0x7c7c7c7c
1c006311:	7c202020 	0x7c202020
1c006315:	7c7c7c7c 	0x7c7c7c7c
1c006319:	7c7c2020 	0x7c7c2020
1c00631d:	7c00000a 	0x7c00000a
1c006321:	7c20207c 	0x7c20207c
1c006325:	7c7c7c7c 	0x7c7c7c7c
1c006329:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00632d:	7c7c2020 	0x7c7c2020
1c006331:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006335:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006339:	7c7c2020 	0x7c7c2020
1c00633d:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006341:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006345:	7c202020 	0x7c202020
1c006349:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00634d:	7c7c7c20 	0x7c7c7c20
1c006351:	7c20207c 	0x7c20207c
1c006355:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006359:	7c7c7c20 	0x7c7c7c20
1c00635d:	7c202020 	0x7c202020
1c006361:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006365:	7c7c7c20 	0x7c7c7c20
1c006369:	7c202020 	0x7c202020
1c00636d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006371:	7c7c7c20 	0x7c7c7c20
1c006375:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006379:	7c7c7c7c 	0x7c7c7c7c
1c00637d:	7c7c2020 	0x7c7c2020
1c006381:	7c00000a 	0x7c00000a
1c006385:	7c20207c 	0x7c20207c
1c006389:	7c7c7c7c 	0x7c7c7c7c
1c00638d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006391:	7c7c7c20 	0x7c7c7c20
1c006395:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006399:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00639d:	7c7c7c20 	0x7c7c7c20
1c0063a1:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0063a5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0063a9:	20207c20 	ll.w	$r0,$r1,8316(0x207c)
1c0063ad:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0063b1:	7c7c7c20 	0x7c7c7c20
1c0063b5:	7c7c2020 	0x7c7c2020
1c0063b9:	7c7c7c7c 	0x7c7c7c7c
1c0063bd:	7c7c7c7c 	0x7c7c7c7c
1c0063c1:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0063c5:	7c7c7c20 	0x7c7c7c20
1c0063c9:	7c7c7c7c 	0x7c7c7c7c
1c0063cd:	7c7c2020 	0x7c7c2020
1c0063d1:	7c7c7c7c 	0x7c7c7c7c
1c0063d5:	7c7c7c20 	0x7c7c7c20
1c0063d9:	207c2020 	ll.w	$r0,$r1,31776(0x7c20)
1c0063dd:	7c7c7c20 	0x7c7c7c20
1c0063e1:	7c7c2020 	0x7c7c2020
1c0063e5:	7c00000a 	0x7c00000a
1c0063e9:	7c20207c 	0x7c20207c
1c0063ed:	7c7c7c7c 	0x7c7c7c7c
1c0063f1:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0063f5:	7c7c7c20 	0x7c7c7c20
1c0063f9:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0063fd:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006401:	7c7c7c20 	0x7c7c7c20
1c006405:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006409:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00640d:	207c7c20 	ll.w	$r0,$r1,31868(0x7c7c)
1c006411:	207c7c20 	ll.w	$r0,$r1,31868(0x7c7c)
1c006415:	7c7c7c20 	0x7c7c7c20
1c006419:	7c7c2020 	0x7c7c2020
1c00641d:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c006421:	7c7c7c20 	0x7c7c7c20
1c006425:	7c7c7c7c 	0x7c7c7c7c
1c006429:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00642d:	7c7c7c7c 	0x7c7c7c7c
1c006431:	7c7c2020 	0x7c7c2020
1c006435:	7c7c7c7c 	0x7c7c7c7c
1c006439:	7c7c7c20 	0x7c7c7c20
1c00643d:	7c7c2020 	0x7c7c2020
1c006441:	7c7c2020 	0x7c7c2020
1c006445:	7c7c2020 	0x7c7c2020
1c006449:	7c00000a 	0x7c00000a
1c00644d:	7c20207c 	0x7c20207c
1c006451:	7c7c7c7c 	0x7c7c7c7c
1c006455:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006459:	7c7c7c20 	0x7c7c7c20
1c00645d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006461:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006465:	7c7c7c20 	0x7c7c7c20
1c006469:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00646d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006471:	7c7c7c20 	0x7c7c7c20
1c006475:	207c2020 	ll.w	$r0,$r1,31776(0x7c20)
1c006479:	7c7c7c20 	0x7c7c7c20
1c00647d:	7c7c2020 	0x7c7c2020
1c006481:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006485:	7c7c7c20 	0x7c7c7c20
1c006489:	7c7c7c7c 	0x7c7c7c7c
1c00648d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006491:	7c7c7c20 	0x7c7c7c20
1c006495:	7c7c2020 	0x7c7c2020
1c006499:	7c7c7c7c 	0x7c7c7c7c
1c00649d:	7c7c7c20 	0x7c7c7c20
1c0064a1:	7c7c2020 	0x7c7c2020
1c0064a5:	7c20207c 	0x7c20207c
1c0064a9:	7c7c2020 	0x7c7c2020
1c0064ad:	7c00000a 	0x7c00000a
1c0064b1:	7c20207c 	0x7c20207c
1c0064b5:	7c7c7c7c 	0x7c7c7c7c
1c0064b9:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0064bd:	7c7c2020 	0x7c7c2020
1c0064c1:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0064c5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0064c9:	7c7c2020 	0x7c7c2020
1c0064cd:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0064d1:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0064d5:	7c7c7c20 	0x7c7c7c20
1c0064d9:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c0064dd:	7c7c7c20 	0x7c7c7c20
1c0064e1:	7c202020 	0x7c202020
1c0064e5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0064e9:	7c7c7c20 	0x7c7c7c20
1c0064ed:	7c202020 	0x7c202020
1c0064f1:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0064f5:	7c7c7c7c 	0x7c7c7c7c
1c0064f9:	7c202020 	0x7c202020
1c0064fd:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006501:	7c7c7c20 	0x7c7c7c20
1c006505:	7c7c2020 	0x7c7c2020
1c006509:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c00650d:	7c7c2020 	0x7c7c2020
1c006511:	7c00000a 	0x7c00000a
1c006515:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c006519:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00651d:	7c7c7c7c 	0x7c7c7c7c
1c006521:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006525:	7c202020 	0x7c202020
1c006529:	7c7c7c7c 	0x7c7c7c7c
1c00652d:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006531:	7c202020 	0x7c202020
1c006535:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006539:	7c7c7c20 	0x7c7c7c20
1c00653d:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006541:	7c7c7c20 	0x7c7c7c20
1c006545:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c006549:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00654d:	7c7c7c7c 	0x7c7c7c7c
1c006551:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c006555:	7c202020 	0x7c202020
1c006559:	7c7c7c7c 	0x7c7c7c7c
1c00655d:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c006561:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006565:	7c7c7c7c 	0x7c7c7c7c
1c006569:	7c7c2020 	0x7c7c2020
1c00656d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006571:	7c7c2020 	0x7c7c2020
1c006575:	7c00000a 	0x7c00000a
1c006579:	7c7c7c7c 	0x7c7c7c7c
1c00657d:	7c7c7c7c 	0x7c7c7c7c
1c006581:	7c7c7c7c 	0x7c7c7c7c
1c006585:	7c7c7c7c 	0x7c7c7c7c
1c006589:	7c7c7c7c 	0x7c7c7c7c
1c00658d:	7c7c7c7c 	0x7c7c7c7c
1c006591:	7c7c7c7c 	0x7c7c7c7c
1c006595:	7c7c7c7c 	0x7c7c7c7c
1c006599:	7c7c7c7c 	0x7c7c7c7c
1c00659d:	325b7c7c 	xvldrepl.h	$xr28,$r3,-578(0xdbe)
1c0065a1:	20303230 	ll.w	$r16,$r17,12336(0x3030)
1c0065a5:	4e4f4f4c 	jirl	$r12,$r26,-110772(0x24f4c)
1c0065a9:	4e4f5347 	jirl	$r7,$r26,-110768(0x24f50)
1c0065ad:	7c7c7c5d 	0x7c7c7c5d
1c0065b1:	7c7c7c7c 	0x7c7c7c7c
1c0065b5:	7c7c7c7c 	0x7c7c7c7c
1c0065b9:	7c7c7c7c 	0x7c7c7c7c
1c0065bd:	7c7c7c7c 	0x7c7c7c7c
1c0065c1:	7c7c7c7c 	0x7c7c7c7c
1c0065c5:	7c7c7c7c 	0x7c7c7c7c
1c0065c9:	7c7c7c7c 	0x7c7c7c7c
1c0065cd:	7c7c7c7c 	0x7c7c7c7c
1c0065d1:	7c7c7c7c 	0x7c7c7c7c
1c0065d5:	7c7c7c7c 	0x7c7c7c7c
1c0065d9:	5400000a 	bl	2621440(0x280000) # 1c2865d9 <_sidata+0x27f849>
1c0065dd:	253a6d65 	stptr.w	$r5,$r11,14956(0x3a6c)
1c0065e1:	20202064 	ll.w	$r4,$r3,8224(0x2020)
1c0065e5:	00200a0d 	div.w	$r13,$r16,$r2
1c0065e9:	68000000 	bltu	$r0,$r0,0 # 1c0065e9 <hexdecarr+0x680>
1c0065ed:	64696d75 	bge	$r11,$r21,26988(0x696c) # 1c00cf59 <_sidata+0x61c9>
1c0065f1:	2064253a 	ll.w	$r26,$r9,25636(0x6424)
1c0065f5:	0d202020 	xvbitsel.v	$xr0,$xr1,$xr8,$xr0
1c0065f9:	5400000a 	bl	2621440(0x280000) # 1c2865f9 <_sidata+0x27f869>
1c0065fd:	0a0d6425 	0x0a0d6425
1c006601:	48000000 	bceqz	$fcc0,0 # 1c006601 <hexdecarr+0x698>
1c006605:	0a0d6425 	0x0a0d6425
1c006609:	09000000 	0x09000000
1c00660d:	0a006425 	0x0a006425
1c006611:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c006615:	776f440a 	xvssrarni.du.q	$xr10,$xr0,0x51
1c006619:	0d00006e 	fsel	$f14,$f3,$f0,$fcc0
1c00661d:	0050550a 	0x0050550a
1c006621:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c006625:	6c754d0a 	bgeu	$r8,$r10,30028(0x754c) # 1c00db71 <_sidata+0x6de1>
1c006629:	776f4469 	xvssrarni.du.q	$xr9,$xr3,0x51
1c00662d:	0d00006e 	fsel	$f14,$f3,$f0,$fcc0
1c006631:	756f430a 	0x756f430a
1c006635:	4f20746e 	jirl	$r14,$r3,-57228(0x32074)
1c006639:	0d000056 	fsel	$f22,$f2,$f0,$fcc0
1c00663d:	3030090a 	0x3030090a
1c006641:	09313009 	0x09313009
1c006645:	30093230 	0x30093230
1c006649:	34300933 	0x34300933
1c00664d:	09353009 	0x09353009
1c006651:	30093630 	0x30093630
1c006655:	38300937 	fldx.s	$f23,$r9,$r2
1c006659:	09393009 	0x09393009
1c00665d:	31093031 	0x31093031
1c006661:	0d000031 	fsel	$f17,$f1,$f0,$fcc0
1c006665:	746e630a 	0x746e630a
1c006669:	09000000 	0x09000000
1c00666d:	00643425 	bstrins.w	$r5,$r1,0x4,0xd
1c006671:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c006675:	7361420a 	vssrani.w.d	$vr10,$vr16,0x10
1c006679:	6c615665 	bgeu	$r19,$r5,24916(0x6154) # 1c00c7cd <_sidata+0x5a3d>
1c00667d:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c006681:	6275530a 	blt	$r24,$r10,-101040(0x27550) # 1bfedbd1 <_start-0x1242f>
1c006685:	006c6156 	bstrins.w	$r22,$r10,0xc,0x18
1c006689:	09000000 	0x09000000
1c00668d:	00643225 	bstrins.w	$r5,$r17,0x4,0xc
1c006691:	09000000 	0x09000000
1c006695:	00643325 	bstrins.w	$r5,$r25,0x4,0xc
1c006699:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c00669d:	203c200a 	ll.w	$r10,$r0,15392(0x3c20)
1c0066a1:	3a515249 	0x3a515249
1c0066a5:	20642520 	ll.w	$r0,$r9,25636(0x6424)
1c0066a9:	636e7566 	blt	$r11,$r6,-37260(0x36e74) # 1bffd51d <_start-0x2ae3>
1c0066ad:	2073253a 	ll.w	$r26,$r9,29476(0x7324)
1c0066b1:	0d3e2020 	0x0d3e2020
1c0066b5:	0a00000a 	0x0a00000a
1c0066b9:	2e2e2e2e 	0x2e2e2e2e
1c0066bd:	2e2e2e2e 	0x2e2e2e2e
1c0066c1:	2e2e2e2e 	0x2e2e2e2e
1c0066c5:	464f532e 	bnez	$r25,3821392(0x3a4f50) # 1c3ab615 <_sidata+0x3a4885>
1c0066c9:	4e495f54 	jirl	$r20,$r26,-112292(0x2495c)
1c0066cd:	2e2e2e54 	0x2e2e2e54
1c0066d1:	2e2e2e2e 	0x2e2e2e2e
1c0066d5:	2e2e2e2e 	0x2e2e2e2e
1c0066d9:	0a2e2e2e 	xvfmadd.d	$xr14,$xr17,$xr11,$xr28
1c0066dd:	0d00000d 	fsel	$f13,$f0,$f0,$fcc0
1c0066e1:	2e2e2e0a 	0x2e2e2e0a
1c0066e5:	2e2e2e2e 	0x2e2e2e2e
1c0066e9:	2e2e2e2e 	0x2e2e2e2e
1c0066ed:	41422e2e 	beqz	$r17,3752492(0x39422c) # 1c39a919 <_sidata+0x393b89>
1c0066f1:	41465f54 	beqz	$r26,-3062180(0x51465c) # 1bd1ad4d <_start-0x2e52b3>
1c0066f5:	2e2e4c49 	0x2e2e4c49
1c0066f9:	2e2e2e2e 	0x2e2e2e2e
1c0066fd:	2e2e2e2e 	0x2e2e2e2e
1c006701:	2e2e2e2e 	0x2e2e2e2e
1c006705:	0d000a0d 	fsel	$f13,$f16,$f2,$fcc0
1c006709:	2e2e2e0a 	0x2e2e2e0a
1c00670d:	2e2e2e2e 	0x2e2e2e2e
1c006711:	2e2e2e2e 	0x2e2e2e2e
1c006715:	44412e2e 	bnez	$r17,3686700(0x38412c) # 1c38a841 <_sidata+0x383ab1>
1c006719:	2e2e2e43 	0x2e2e2e43
1c00671d:	2e2e2e2e 	0x2e2e2e2e
1c006721:	2e2e2e2e 	0x2e2e2e2e
1c006725:	0d2e2e2e 	xvbitsel.v	$xr14,$xr17,$xr11,$xr28
1c006729:	4300000a 	beqz	$r0,2818048(0x2b0000) # 1c2b6729 <_sidata+0x2af999>
1c00672d:	2065726f 	ll.w	$r15,$r19,25968(0x6570)
1c006731:	656d6954 	bge	$r10,$r20,93544(0x16d68) # 1c01d499 <_sidata+0x16709>
1c006735:	6c632072 	bgeu	$r3,$r18,25376(0x6320) # 1c00ca55 <_sidata+0x5cc5>
1c006739:	20726165 	ll.w	$r5,$r11,29280(0x7260)
1c00673d:	65746e69 	bge	$r19,$r9,95340(0x1746c) # 1c01dba9 <_sidata+0x16e19>
1c006741:	70757272 	vmax.wu	$vr18,$vr19,$vr28
1c006745:	0d2e2e74 	xvbitsel.v	$xr20,$xr19,$xr11,$xr28
1c006749:	 	0x0c00000a

1c00674c <Ext_IrqHandle>:
1c00674c:	1c004a0c 	pcaddu12i	$r12,592(0x250)
1c006750:	1c004a58 	pcaddu12i	$r24,594(0x252)
1c006754:	1c004aa4 	pcaddu12i	$r4,597(0x255)
1c006758:	1c004af0 	pcaddu12i	$r16,599(0x257)
1c00675c:	1c004b3c 	pcaddu12i	$r28,601(0x259)
1c006760:	1c004b88 	pcaddu12i	$r8,604(0x25c)
1c006764:	1c004bd4 	pcaddu12i	$r20,606(0x25e)
1c006768:	1c004c20 	pcaddu12i	$r0,609(0x261)
1c00676c:	1c004c6c 	pcaddu12i	$r12,611(0x263)
1c006770:	1c004cb8 	pcaddu12i	$r24,613(0x265)
1c006774:	1c004d04 	pcaddu12i	$r4,616(0x268)
1c006778:	1c004d50 	pcaddu12i	$r16,618(0x26a)
1c00677c:	1c004d9c 	pcaddu12i	$r28,620(0x26c)
1c006780:	1c004de8 	pcaddu12i	$r8,623(0x26f)
1c006784:	1c004e34 	pcaddu12i	$r20,625(0x271)
1c006788:	1c004e80 	pcaddu12i	$r0,628(0x274)
1c00678c:	1c004ecc 	pcaddu12i	$r12,630(0x276)
1c006790:	1c004f18 	pcaddu12i	$r24,632(0x278)
1c006794:	1c004f64 	pcaddu12i	$r4,635(0x27b)
1c006798:	1c004fb0 	pcaddu12i	$r16,637(0x27d)
1c00679c:	1c004ffc 	pcaddu12i	$r28,639(0x27f)
1c0067a0:	1c005048 	pcaddu12i	$r8,642(0x282)
1c0067a4:	1c005094 	pcaddu12i	$r20,644(0x284)
1c0067a8:	1c0050e0 	pcaddu12i	$r0,647(0x287)
1c0067ac:	1c00512c 	pcaddu12i	$r12,649(0x289)
1c0067b0:	1c005178 	pcaddu12i	$r24,651(0x28b)
1c0067b4:	1c0051c4 	pcaddu12i	$r4,654(0x28e)
1c0067b8:	1c005210 	pcaddu12i	$r16,656(0x290)
1c0067bc:	1c00525c 	pcaddu12i	$r28,658(0x292)
1c0067c0:	1c0052a8 	pcaddu12i	$r8,661(0x295)
1c0067c4:	1c0052f4 	pcaddu12i	$r20,663(0x297)
1c0067c8:	1c005340 	pcaddu12i	$r0,666(0x29a)
1c0067cc:	1c005624 	pcaddu12i	$r4,689(0x2b1)
1c0067d0:	1c0055d4 	pcaddu12i	$r20,686(0x2ae)
1c0067d4:	1c005624 	pcaddu12i	$r4,689(0x2b1)
1c0067d8:	1c005624 	pcaddu12i	$r4,689(0x2b1)
1c0067dc:	1c005624 	pcaddu12i	$r4,689(0x2b1)
1c0067e0:	1c005624 	pcaddu12i	$r4,689(0x2b1)
1c0067e4:	1c005624 	pcaddu12i	$r4,689(0x2b1)
1c0067e8:	1c005624 	pcaddu12i	$r4,689(0x2b1)
1c0067ec:	1c005624 	pcaddu12i	$r4,689(0x2b1)
1c0067f0:	1c005624 	pcaddu12i	$r4,689(0x2b1)
1c0067f4:	1c005624 	pcaddu12i	$r4,689(0x2b1)
1c0067f8:	1c005624 	pcaddu12i	$r4,689(0x2b1)
1c0067fc:	1c005624 	pcaddu12i	$r4,689(0x2b1)
1c006800:	1c005624 	pcaddu12i	$r4,689(0x2b1)
1c006804:	1c005624 	pcaddu12i	$r4,689(0x2b1)
1c006808:	1c005624 	pcaddu12i	$r4,689(0x2b1)
1c00680c:	1c0055f0 	pcaddu12i	$r16,687(0x2af)

1c006810 <__FUNCTION__.1642>:
1c006810:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dc88 <_sidata+0x16ef8>
1c006814:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d878 <_sidata+0x16ae8>
1c006818:	5f30616f 	bne	$r11,$r15,-53152(0x33060) # 1bff9878 <_start-0x6788>
1c00681c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd98c <_start-0x2674>
1c006820:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d680 <_sidata+0x68f0>
1c006824:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006828 <__FUNCTION__.1646>:
1c006828:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dca0 <_sidata+0x16f10>
1c00682c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d890 <_sidata+0x16b00>
1c006830:	5f31616f 	bne	$r11,$r15,-52896(0x33160) # 1bff9990 <_start-0x6670>
1c006834:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd9a4 <_start-0x265c>
1c006838:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d698 <_sidata+0x6908>
1c00683c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006840 <__FUNCTION__.1650>:
1c006840:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dcb8 <_sidata+0x16f28>
1c006844:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d8a8 <_sidata+0x16b18>
1c006848:	5f32616f 	bne	$r11,$r15,-52640(0x33260) # 1bff9aa8 <_start-0x6558>
1c00684c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd9bc <_start-0x2644>
1c006850:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d6b0 <_sidata+0x6920>
1c006854:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006858 <__FUNCTION__.1654>:
1c006858:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dcd0 <_sidata+0x16f40>
1c00685c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d8c0 <_sidata+0x16b30>
1c006860:	5f33616f 	bne	$r11,$r15,-52384(0x33360) # 1bff9bc0 <_start-0x6440>
1c006864:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd9d4 <_start-0x262c>
1c006868:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d6c8 <_sidata+0x6938>
1c00686c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006870 <__FUNCTION__.1658>:
1c006870:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dce8 <_sidata+0x16f58>
1c006874:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d8d8 <_sidata+0x16b48>
1c006878:	5f34616f 	bne	$r11,$r15,-52128(0x33460) # 1bff9cd8 <_start-0x6328>
1c00687c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd9ec <_start-0x2614>
1c006880:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d6e0 <_sidata+0x6950>
1c006884:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006888 <__FUNCTION__.1662>:
1c006888:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dd00 <_sidata+0x16f70>
1c00688c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d8f0 <_sidata+0x16b60>
1c006890:	5f35616f 	bne	$r11,$r15,-51872(0x33560) # 1bff9df0 <_start-0x6210>
1c006894:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffda04 <_start-0x25fc>
1c006898:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d6f8 <_sidata+0x6968>
1c00689c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0068a0 <__FUNCTION__.1666>:
1c0068a0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dd18 <_sidata+0x16f88>
1c0068a4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d908 <_sidata+0x16b78>
1c0068a8:	5f36616f 	bne	$r11,$r15,-51616(0x33660) # 1bff9f08 <_start-0x60f8>
1c0068ac:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffda1c <_start-0x25e4>
1c0068b0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d710 <_sidata+0x6980>
1c0068b4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0068b8 <__FUNCTION__.1670>:
1c0068b8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dd30 <_sidata+0x16fa0>
1c0068bc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d920 <_sidata+0x16b90>
1c0068c0:	5f37616f 	bne	$r11,$r15,-51360(0x33760) # 1bffa020 <_start-0x5fe0>
1c0068c4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffda34 <_start-0x25cc>
1c0068c8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d728 <_sidata+0x6998>
1c0068cc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0068d0 <__FUNCTION__.1674>:
1c0068d0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dd48 <_sidata+0x16fb8>
1c0068d4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d938 <_sidata+0x16ba8>
1c0068d8:	5f30626f 	bne	$r19,$r15,-53152(0x33060) # 1bff9938 <_start-0x66c8>
1c0068dc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffda4c <_start-0x25b4>
1c0068e0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d740 <_sidata+0x69b0>
1c0068e4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0068e8 <__FUNCTION__.1678>:
1c0068e8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dd60 <_sidata+0x16fd0>
1c0068ec:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d950 <_sidata+0x16bc0>
1c0068f0:	5f31626f 	bne	$r19,$r15,-52896(0x33160) # 1bff9a50 <_start-0x65b0>
1c0068f4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffda64 <_start-0x259c>
1c0068f8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d758 <_sidata+0x69c8>
1c0068fc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006900 <__FUNCTION__.1682>:
1c006900:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dd78 <_sidata+0x16fe8>
1c006904:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d968 <_sidata+0x16bd8>
1c006908:	5f32626f 	bne	$r19,$r15,-52640(0x33260) # 1bff9b68 <_start-0x6498>
1c00690c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffda7c <_start-0x2584>
1c006910:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d770 <_sidata+0x69e0>
1c006914:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006918 <__FUNCTION__.1686>:
1c006918:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dd90 <_sidata+0x17000>
1c00691c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d980 <_sidata+0x16bf0>
1c006920:	5f33626f 	bne	$r19,$r15,-52384(0x33360) # 1bff9c80 <_start-0x6380>
1c006924:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffda94 <_start-0x256c>
1c006928:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d788 <_sidata+0x69f8>
1c00692c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006930 <__FUNCTION__.1690>:
1c006930:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dda8 <_sidata+0x17018>
1c006934:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d998 <_sidata+0x16c08>
1c006938:	5f34626f 	bne	$r19,$r15,-52128(0x33460) # 1bff9d98 <_start-0x6268>
1c00693c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdaac <_start-0x2554>
1c006940:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d7a0 <_sidata+0x6a10>
1c006944:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006948 <__FUNCTION__.1694>:
1c006948:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ddc0 <_sidata+0x17030>
1c00694c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d9b0 <_sidata+0x16c20>
1c006950:	5f35626f 	bne	$r19,$r15,-51872(0x33560) # 1bff9eb0 <_start-0x6150>
1c006954:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdac4 <_start-0x253c>
1c006958:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d7b8 <_sidata+0x6a28>
1c00695c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006960 <__FUNCTION__.1698>:
1c006960:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ddd8 <_sidata+0x17048>
1c006964:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d9c8 <_sidata+0x16c38>
1c006968:	5f36626f 	bne	$r19,$r15,-51616(0x33660) # 1bff9fc8 <_start-0x6038>
1c00696c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdadc <_start-0x2524>
1c006970:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d7d0 <_sidata+0x6a40>
1c006974:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006978 <__FUNCTION__.1702>:
1c006978:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ddf0 <_sidata+0x17060>
1c00697c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d9e0 <_sidata+0x16c50>
1c006980:	5f37626f 	bne	$r19,$r15,-51360(0x33760) # 1bffa0e0 <_start-0x5f20>
1c006984:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdaf4 <_start-0x250c>
1c006988:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d7e8 <_sidata+0x6a58>
1c00698c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006990 <__FUNCTION__.1706>:
1c006990:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01de08 <_sidata+0x17078>
1c006994:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d9f8 <_sidata+0x16c68>
1c006998:	5f30636f 	bne	$r27,$r15,-53152(0x33060) # 1bff99f8 <_start-0x6608>
1c00699c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdb0c <_start-0x24f4>
1c0069a0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d800 <_sidata+0x6a70>
1c0069a4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0069a8 <__FUNCTION__.1710>:
1c0069a8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01de20 <_sidata+0x17090>
1c0069ac:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01da10 <_sidata+0x16c80>
1c0069b0:	5f31636f 	bne	$r27,$r15,-52896(0x33160) # 1bff9b10 <_start-0x64f0>
1c0069b4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdb24 <_start-0x24dc>
1c0069b8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d818 <_sidata+0x6a88>
1c0069bc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0069c0 <__FUNCTION__.1714>:
1c0069c0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01de38 <_sidata+0x170a8>
1c0069c4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01da28 <_sidata+0x16c98>
1c0069c8:	5f32636f 	bne	$r27,$r15,-52640(0x33260) # 1bff9c28 <_start-0x63d8>
1c0069cc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdb3c <_start-0x24c4>
1c0069d0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d830 <_sidata+0x6aa0>
1c0069d4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0069d8 <__FUNCTION__.1718>:
1c0069d8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01de50 <_sidata+0x170c0>
1c0069dc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01da40 <_sidata+0x16cb0>
1c0069e0:	5f33636f 	bne	$r27,$r15,-52384(0x33360) # 1bff9d40 <_start-0x62c0>
1c0069e4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdb54 <_start-0x24ac>
1c0069e8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d848 <_sidata+0x6ab8>
1c0069ec:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0069f0 <__FUNCTION__.1722>:
1c0069f0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01de68 <_sidata+0x170d8>
1c0069f4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01da58 <_sidata+0x16cc8>
1c0069f8:	5f34636f 	bne	$r27,$r15,-52128(0x33460) # 1bff9e58 <_start-0x61a8>
1c0069fc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdb6c <_start-0x2494>
1c006a00:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d860 <_sidata+0x6ad0>
1c006a04:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006a08 <__FUNCTION__.1726>:
1c006a08:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01de80 <_sidata+0x170f0>
1c006a0c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01da70 <_sidata+0x16ce0>
1c006a10:	5f35636f 	bne	$r27,$r15,-51872(0x33560) # 1bff9f70 <_start-0x6090>
1c006a14:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdb84 <_start-0x247c>
1c006a18:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d878 <_sidata+0x6ae8>
1c006a1c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006a20 <__FUNCTION__.1730>:
1c006a20:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01de98 <_sidata+0x17108>
1c006a24:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01da88 <_sidata+0x16cf8>
1c006a28:	5f36636f 	bne	$r27,$r15,-51616(0x33660) # 1bffa088 <_start-0x5f78>
1c006a2c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdb9c <_start-0x2464>
1c006a30:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d890 <_sidata+0x6b00>
1c006a34:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006a38 <__FUNCTION__.1734>:
1c006a38:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01deb0 <_sidata+0x17120>
1c006a3c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01daa0 <_sidata+0x16d10>
1c006a40:	5f37636f 	bne	$r27,$r15,-51360(0x33760) # 1bffa1a0 <_start-0x5e60>
1c006a44:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdbb4 <_start-0x244c>
1c006a48:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d8a8 <_sidata+0x6b18>
1c006a4c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006a50 <__FUNCTION__.1738>:
1c006a50:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dec8 <_sidata+0x17138>
1c006a54:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01dab8 <_sidata+0x16d28>
1c006a58:	5f30646f 	bne	$r3,$r15,-53148(0x33064) # 1bff9abc <_start-0x6544>
1c006a5c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdbcc <_start-0x2434>
1c006a60:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d8c0 <_sidata+0x6b30>
1c006a64:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006a68 <__FUNCTION__.1742>:
1c006a68:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dee0 <_sidata+0x17150>
1c006a6c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01dad0 <_sidata+0x16d40>
1c006a70:	5f31646f 	bne	$r3,$r15,-52892(0x33164) # 1bff9bd4 <_start-0x642c>
1c006a74:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdbe4 <_start-0x241c>
1c006a78:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d8d8 <_sidata+0x6b48>
1c006a7c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006a80 <__FUNCTION__.1746>:
1c006a80:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01def8 <_sidata+0x17168>
1c006a84:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01dae8 <_sidata+0x16d58>
1c006a88:	5f32646f 	bne	$r3,$r15,-52636(0x33264) # 1bff9cec <_start-0x6314>
1c006a8c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdbfc <_start-0x2404>
1c006a90:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d8f0 <_sidata+0x6b60>
1c006a94:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006a98 <__FUNCTION__.1750>:
1c006a98:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01df10 <_sidata+0x17180>
1c006a9c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01db00 <_sidata+0x16d70>
1c006aa0:	5f33646f 	bne	$r3,$r15,-52380(0x33364) # 1bff9e04 <_start-0x61fc>
1c006aa4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdc14 <_start-0x23ec>
1c006aa8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d908 <_sidata+0x6b78>
1c006aac:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006ab0 <__FUNCTION__.1754>:
1c006ab0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01df28 <_sidata+0x17198>
1c006ab4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01db18 <_sidata+0x16d88>
1c006ab8:	5f34646f 	bne	$r3,$r15,-52124(0x33464) # 1bff9f1c <_start-0x60e4>
1c006abc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdc2c <_start-0x23d4>
1c006ac0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d920 <_sidata+0x6b90>
1c006ac4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006ac8 <__FUNCTION__.1758>:
1c006ac8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01df40 <_sidata+0x171b0>
1c006acc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01db30 <_sidata+0x16da0>
1c006ad0:	5f35646f 	bne	$r3,$r15,-51868(0x33564) # 1bffa034 <_start-0x5fcc>
1c006ad4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdc44 <_start-0x23bc>
1c006ad8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d938 <_sidata+0x6ba8>
1c006adc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006ae0 <__FUNCTION__.1762>:
1c006ae0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01df58 <_sidata+0x171c8>
1c006ae4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01db48 <_sidata+0x16db8>
1c006ae8:	5f36646f 	bne	$r3,$r15,-51612(0x33664) # 1bffa14c <_start-0x5eb4>
1c006aec:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdc5c <_start-0x23a4>
1c006af0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d950 <_sidata+0x6bc0>
1c006af4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006af8 <__FUNCTION__.1766>:
1c006af8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01df70 <_sidata+0x171e0>
1c006afc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01db60 <_sidata+0x16dd0>
1c006b00:	5f37646f 	bne	$r3,$r15,-51356(0x33764) # 1bffa264 <_start-0x5d9c>
1c006b04:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdc74 <_start-0x238c>
1c006b08:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d968 <_sidata+0x6bd8>
1c006b0c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19
1c006b10:	3a32514d 	0x3a32514d
1c006b14:	0a0d6425 	0x0a0d6425
1c006b18:	00000000 	0x00000000
1c006b1c:	6867696c 	bltu	$r11,$r12,26472(0x6768) # 1c00d284 <_sidata+0x64f4>
1c006b20:	64253a74 	bge	$r19,$r20,9528(0x2538) # 1c009058 <_sidata+0x22c8>
1c006b24:	00000a0d 	0x00000a0d
1c006b28:	696c6e6f 	bltu	$r19,$r15,93292(0x16c6c) # 1c01d794 <_sidata+0x16a04>
1c006b2c:	0000656e 	rdtimeh.w	$r14,$r11
1c006b30:	0d64254c 	xvshuf.b	$xr12,$xr10,$xr9,$xr8
1c006b34:	0000000a 	0x0000000a
1c006b38:	0d64254d 	xvshuf.b	$xr13,$xr10,$xr9,$xr8
1c006b3c:	0000000a 	0x0000000a
1c006b40:	00004e4f 	bitrev.8b	$r15,$r18
1c006b44:	3a6b6361 	0x3a6b6361
1c006b48:	0a0d4e4f 	0x0a0d4e4f
1c006b4c:	00000000 	0x00000000
1c006b50:	0046464f 	0x0046464f
1c006b54:	3a6b6361 	0x3a6b6361
1c006b58:	0d46464f 	0x0d46464f
1c006b5c:	0000000a 	0x0000000a
1c006b60:	63656863 	blt	$r3,$r3,-39576(0x36568) # 1bffd0c8 <_start-0x2f38>
1c006b64:	4155206b 	beqz	$r3,2970912(0x2d5520) # 1c2dc084 <_sidata+0x2d52f4>
1c006b68:	5f305452 	bne	$r2,$r18,-53164(0x33054) # 1bff9bbc <_start-0x6444>
1c006b6c:	425f5852 	beqz	$r2,-3514536(0x4a5f58) # 1bcacac4 <_start-0x35353c>
1c006b70:	253a4655 	stptr.w	$r21,$r18,14916(0x3a44)
1c006b74:	000a0d73 	0x000a0d73
1c006b78:	3a646d63 	0x3a646d63
1c006b7c:	0a0d7325 	0x0a0d7325
1c006b80:	00000000 	0x00000000
1c006b84:	0a0d7325 	0x0a0d7325
1c006b88:	00000000 	0x00000000
1c006b8c:	3a6b6361 	0x3a6b6361
1c006b90:	0a0d7325 	0x0a0d7325
1c006b94:	00000000 	0x00000000
1c006b98:	3a736572 	0x3a736572
1c006b9c:	0a0d6425 	0x0a0d6425
1c006ba0:	00000000 	0x00000000
1c006ba4:	432b5441 	beqz	$r2,469844(0x72b54) # 1c0796f8 <_sidata+0x72968>
1c006ba8:	444f4d57 	bnez	$r10,-2338996(0x5c4f4c) # 1bdcbaf4 <_start-0x23450c>
1c006bac:	0d313d45 	0x0d313d45
1c006bb0:	0000000a 	0x0000000a
1c006bb4:	00004b4f 	bitrev.4b	$r15,$r26
1c006bb8:	432b5441 	beqz	$r2,469844(0x72b54) # 1c07970c <_sidata+0x7297c>
1c006bbc:	444f4d57 	bnez	$r10,-2338996(0x5c4f4c) # 1bdcbb08 <_start-0x2344f8>
1c006bc0:	00313d45 	0x00313d45
1c006bc4:	522b5441 	b	17181524(0x1062b54) # 1d069718 <_sidata+0x1062988>
1c006bc8:	0a0d5453 	0x0a0d5453
1c006bcc:	00000000 	0x00000000
1c006bd0:	522b5441 	b	17181524(0x1062b54) # 1d069724 <_sidata+0x1062994>
1c006bd4:	00005453 	bitrev.d	$r19,$r2
1c006bd8:	432b5441 	beqz	$r2,469844(0x72b54) # 1c07972c <_sidata+0x7299c>
1c006bdc:	50414a57 	b	-111394488(0x95c4148) # 155cad24 <_start-0x6a352dc>
1c006be0:	3031783d 	0x3031783d
1c006be4:	3332312c 	xvstelm.w	$xr12,$r9,-464(0x230),0x4
1c006be8:	37363534 	0x37363534
1c006bec:	000a0d38 	0x000a0d38
1c006bf0:	432b5441 	beqz	$r2,469844(0x72b54) # 1c079744 <_sidata+0x729b4>
1c006bf4:	50414a57 	b	-111394488(0x95c4148) # 155cad3c <_start-0x6a352c4>
1c006bf8:	3178223d 	0x3178223d
1c006bfc:	222c2230 	ll.d	$r16,$r17,11296(0x2c20)
1c006c00:	34333231 	0x34333231
1c006c04:	38373635 	0x38373635
1c006c08:	00000022 	0x00000022
1c006c0c:	432b5441 	beqz	$r2,469844(0x72b54) # 1c079760 <_sidata+0x729d0>
1c006c10:	554d5049 	bl	19221840(0x1254d50) # 1d25b960 <_sidata+0x1254bd0>
1c006c14:	0d303d58 	0x0d303d58
1c006c18:	0000000a 	0x0000000a
1c006c1c:	432b5441 	beqz	$r2,469844(0x72b54) # 1c079770 <_sidata+0x729e0>
1c006c20:	554d5049 	bl	19221840(0x1254d50) # 1d25b970 <_sidata+0x1254be0>
1c006c24:	00303d58 	0x00303d58
1c006c28:	432b5441 	beqz	$r2,469844(0x72b54) # 1c07977c <_sidata+0x729ec>
1c006c2c:	54535049 	bl	19157840(0x1245350) # 1d24bf7c <_sidata+0x12451ec>
1c006c30:	3d545241 	0x3d545241
1c006c34:	2c504354 	vst	$vr20,$r26,1040(0x410)
1c006c38:	2e323731 	0x2e323731
1c006c3c:	312e3032 	vstelm.w	$vr18,$r1,-464(0x230),0x3
1c006c40:	2c332e30 	vld	$vr16,$r17,-821(0xccb)
1c006c44:	30383038 	0x30383038
1c006c48:	00000a0d 	0x00000a0d
1c006c4c:	432b5441 	beqz	$r2,469844(0x72b54) # 1c0797a0 <_sidata+0x72a10>
1c006c50:	54535049 	bl	19157840(0x1245350) # 1d24bfa0 <_sidata+0x1245210>
1c006c54:	3d545241 	0x3d545241
1c006c58:	50435422 	b	8930132(0x884354) # 1c88afac <_sidata+0x88421c>
1c006c5c:	31222c22 	vstelm.w	$vr2,$r1,-468(0x22c),0x0
1c006c60:	322e3237 	xvldrepl.w	$xr23,$r17,-464(0xe30)
1c006c64:	30312e30 	0x30312e30
1c006c68:	2c22332e 	vld	$vr14,$r25,-1908(0x88c)
1c006c6c:	30383038 	0x30383038
1c006c70:	00000000 	0x00000000
1c006c74:	432b5441 	beqz	$r2,469844(0x72b54) # 1c0797c8 <_sidata+0x72a38>
1c006c78:	4f4d5049 	jirl	$r9,$r2,-45744(0x34d50)
1c006c7c:	313d4544 	0x313d4544
1c006c80:	00000a0d 	0x00000a0d
1c006c84:	432b5441 	beqz	$r2,469844(0x72b54) # 1c0797d8 <_sidata+0x72a48>
1c006c88:	4f4d5049 	jirl	$r9,$r2,-45744(0x34d50)
1c006c8c:	313d4544 	0x313d4544
1c006c90:	00000000 	0x00000000
1c006c94:	432b5441 	beqz	$r2,469844(0x72b54) # 1c0797e8 <_sidata+0x72a58>
1c006c98:	45535049 	bnez	$r2,2446160(0x255350) # 1c25bfe8 <_sidata+0x255258>
1c006c9c:	0a0d444e 	0x0a0d444e
1c006ca0:	00000000 	0x00000000
1c006ca4:	432b5441 	beqz	$r2,469844(0x72b54) # 1c0797f8 <_sidata+0x72a68>
1c006ca8:	45535049 	bnez	$r2,2446160(0x255350) # 1c25bff8 <_sidata+0x255268>
1c006cac:	0000444e 	revh.d	$r14,$r2
1c006cb0:	00007325 	0x00007325
1c006cb4:	00005441 	bitrev.d	$r1,$r2
1c006cb8:	49466957 	bcnez	$fcc2,-2275736(0x5d4668) # 1bddb320 <_start-0x224ce0>
1c006cbc:	73657420 	vssrani.wu.d	$vr0,$vr1,0x1d
1c006cc0:	69662074 	bltu	$r3,$r20,91680(0x16620) # 1c01d2e0 <_sidata+0x16550>
1c006cc4:	6568736e 	bge	$r27,$r14,92272(0x16870) # 1c01d534 <_sidata+0x167a4>
1c006cc8:	20202064 	ll.w	$r4,$r3,8224(0x2020)
1c006ccc:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006cd0:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006cd4:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006cd8:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006cdc:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006ce0:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006ce4:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006ce8:	00000000 	0x00000000
1c006cec:	49464957 	bcnez	$fcc2,-2275768(0x5d4648) # 1bddb334 <_start-0x224ccc>
1c006cf0:	544f4720 	bl	-58699964(0xc804f44) # 1880bc34 <_start-0x37f43cc>
1c006cf4:	00504920 	0x00504920
1c006cf8:	432b5441 	beqz	$r2,469844(0x72b54) # 1c07984c <_sidata+0x72abc>
1c006cfc:	50414a57 	b	-111394488(0x95c4148) # 155cae44 <_start-0x6a351bc>
1c006d00:	4759223d 	bnez	$r17,-567008(0x775920) # 1bf7c620 <_start-0x839e0>
1c006d04:	2c22484e 	vld	$vr14,$r2,-1902(0x892)
1c006d08:	63667922 	blt	$r9,$r2,-39304(0x36678) # 1bffd380 <_start-0x2c80>
1c006d0c:	32393231 	0x32393231
1c006d10:	37363833 	0x37363833
1c006d14:	00223731 	div.d	$r17,$r25,$r13
1c006d18:	69666977 	bltu	$r11,$r23,91752(0x16668) # 1c01d380 <_sidata+0x165f0>
1c006d1c:	6e6f6320 	bgeu	$r25,$r0,-102560(0x26f60) # 1bfedc7c <_start-0x12384>
1c006d20:	7463656e 	xvabsd.wu	$xr14,$xr11,$xr25
1c006d24:	20206465 	ll.w	$r5,$r3,8292(0x2064)
1c006d28:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006d2c:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006d30:	00000020 	0x00000020
1c006d34:	554f4c43 	bl	17649484(0x10d4f4c) # 1d0dbc80 <_sidata+0x10d4ef0>
1c006d38:	4f432044 	jirl	$r4,$r2,-48352(0x34320)
1c006d3c:	43454e4e 	beqz	$r18,3884364(0x3b454c) # 1c3bb288 <_sidata+0x3b44f8>
1c006d40:	00444554 	0x00444554
1c006d44:	412b5441 	beqz	$r2,338772(0x52b54) # 1c059898 <_sidata+0x52b08>
1c006d48:	4c434b54 	jirl	$r20,$r26,17224(0x4348)
1c006d4c:	41545344 	beqz	$r26,1135696(0x115450) # 1c11c19c <_sidata+0x11540c>
1c006d50:	3031223d 	0x3031223d
1c006d54:	36303832 	0x36303832
1c006d58:	33363932 	xvstelm.w	$xr18,$r9,-456(0x238),0x5
1c006d5c:	39383033 	0x39383033
1c006d60:	32333432 	0x32333432
1c006d64:	2c223937 	vld	$vr23,$r9,-1906(0x88e)
1c006d68:	33323122 	xvstelm.w	$xr2,$r9,-464(0x230),0x4
1c006d6c:	37363534 	0x37363534
1c006d70:	00002238 	clo.d	$r24,$r17
1c006d74:	204b5441 	ll.w	$r1,$r2,19284(0x4b54)
1c006d78:	756f6c63 	0x756f6c63
1c006d7c:	6f632064 	bgeu	$r3,$r4,-40160(0x36320) # 1bffd09c <_start-0x2f64>
1c006d80:	63656e6e 	blt	$r19,$r14,-39572(0x3656c) # 1bffd2ec <_start-0x2d14>
1c006d84:	20646574 	ll.w	$r20,$r11,25700(0x6464)
1c006d88:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006d8c:	00002020 	clo.d	$r0,$r1

Disassembly of section .data:

80001000 <_sdata>:
_sdata():
80001000:	00000000 	0x00000000
80001004:	1c005f69 	pcaddu12i	$r9,763(0x2fb)
80001008:	80000134 	0x80000134
8000100c:	8000101c 	0x8000101c
80001010:	80000004 	0x80000004
80001014:	1c005f60 	pcaddu12i	$r0,763(0x2fb)
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
