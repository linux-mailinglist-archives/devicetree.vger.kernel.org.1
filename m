Return-Path: <devicetree+bounces-19828-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 052B57FCEA9
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 07:02:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B0B9928354E
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 06:02:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8E9B79D6;
	Wed, 29 Nov 2023 06:02:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from ex01.ufhost.com (ex01.ufhost.com [61.152.239.75])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D98DA1BC3;
	Tue, 28 Nov 2023 22:02:21 -0800 (PST)
Received: from EXMBX166.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX166", Issuer "EXMBX166" (not verified))
	by ex01.ufhost.com (Postfix) with ESMTP id ACE6124DD82;
	Wed, 29 Nov 2023 14:02:20 +0800 (CST)
Received: from EXMBX066.cuchost.com (172.16.7.66) by EXMBX166.cuchost.com
 (172.16.6.76) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Wed, 29 Nov
 2023 14:02:20 +0800
Received: from jsia-virtual-machine.localdomain (60.54.3.230) by
 EXMBX066.cuchost.com (172.16.6.66) with Microsoft SMTP Server (TLS) id
 15.0.1497.42; Wed, 29 Nov 2023 14:02:09 +0800
From: Sia Jee Heng <jeeheng.sia@starfivetech.com>
To: <kernel@esmil.dk>, <robh+dt@kernel.org>,
	<krzysztof.kozlowski+dt@linaro.org>, <krzk@kernel.org>,
	<conor+dt@kernel.org>, <paul.walmsley@sifive.com>, <palmer@dabbelt.com>,
	<aou@eecs.berkeley.edu>, <daniel.lezcano@linaro.org>, <tglx@linutronix.de>,
	<conor@kernel.org>, <anup@brainfault.org>, <gregkh@linuxfoundation.org>,
	<jirislaby@kernel.org>, <michal.simek@amd.com>,
	<michael.zhu@starfivetech.com>, <drew@beagleboard.org>
CC: <devicetree@vger.kernel.org>, <linux-riscv@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, <jeeheng.sia@starfivetech.com>,
	<leyfoon.tan@starfivetech.com>
Subject: [PATCH v2 6/6] riscv: dts: starfive: Add initial StarFive JH8100 device tree
Date: Wed, 29 Nov 2023 14:00:43 +0800
Message-ID: <20231129060043.368874-7-jeeheng.sia@starfivetech.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231129060043.368874-1-jeeheng.sia@starfivetech.com>
References: <20231129060043.368874-1-jeeheng.sia@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-ClientProxiedBy: EXCAS066.cuchost.com (172.16.6.26) To EXMBX066.cuchost.com
 (172.16.6.66)
X-YovoleRuleAgent: yovoleflag
Content-Transfer-Encoding: quoted-printable

Add initial device tree for the StarFive JH8100 RISC-V SoC.

Signed-off-by: Sia Jee Heng <jeeheng.sia@starfivetech.com>
Reviewed-by: Ley Foon Tan <leyfoon.tan@starfivetech.com>
---
 arch/riscv/boot/dts/starfive/Makefile       |   1 +
 arch/riscv/boot/dts/starfive/jh8100-evb.dts |  28 ++
 arch/riscv/boot/dts/starfive/jh8100.dtsi    | 378 ++++++++++++++++++++
 3 files changed, 407 insertions(+)
 create mode 100644 arch/riscv/boot/dts/starfive/jh8100-evb.dts
 create mode 100644 arch/riscv/boot/dts/starfive/jh8100.dtsi

diff --git a/arch/riscv/boot/dts/starfive/Makefile b/arch/riscv/boot/dts/=
starfive/Makefile
index 0141504c0f5c..fbb0dc619102 100644
--- a/arch/riscv/boot/dts/starfive/Makefile
+++ b/arch/riscv/boot/dts/starfive/Makefile
@@ -10,3 +10,4 @@ dtb-$(CONFIG_ARCH_STARFIVE) +=3D jh7100-starfive-vision=
five-v1.dtb
=20
 dtb-$(CONFIG_ARCH_STARFIVE) +=3D jh7110-starfive-visionfive-2-v1.2a.dtb
 dtb-$(CONFIG_ARCH_STARFIVE) +=3D jh7110-starfive-visionfive-2-v1.3b.dtb
+dtb-$(CONFIG_ARCH_STARFIVE) +=3D jh8100-evb.dtb
diff --git a/arch/riscv/boot/dts/starfive/jh8100-evb.dts b/arch/riscv/boo=
t/dts/starfive/jh8100-evb.dts
new file mode 100644
index 000000000000..39a11226731c
--- /dev/null
+++ b/arch/riscv/boot/dts/starfive/jh8100-evb.dts
@@ -0,0 +1,28 @@
+// SPDX-License-Identifier: GPL-2.0 OR MIT
+/*
+ * Copyright (c) 2021-2023 StarFive Technology Co., Ltd.
+ */
+
+#include "jh8100.dtsi"
+
+/ {
+	model =3D "StarFive JH8100 EVB";
+	compatible =3D "starfive,jh8100-evb", "starfive,jh8100";
+
+	aliases {
+		serial0 =3D &uart0;
+	};
+
+	chosen {
+		stdout-path =3D "serial0:115200n8";
+	};
+
+	memory {
+		device_type =3D "memory";
+		reg =3D <0x0 0x40000000 0x2 0x00000000>;
+	};
+};
+
+&uart0 {
+	status =3D "okay";
+};
diff --git a/arch/riscv/boot/dts/starfive/jh8100.dtsi b/arch/riscv/boot/d=
ts/starfive/jh8100.dtsi
new file mode 100644
index 000000000000..f26aff5c1ddf
--- /dev/null
+++ b/arch/riscv/boot/dts/starfive/jh8100.dtsi
@@ -0,0 +1,378 @@
+// SPDX-License-Identifier: GPL-2.0 OR MIT
+/*
+ * Copyright (c) 2021-2023 StarFive Technology Co., Ltd.
+ */
+
+/dts-v1/;
+
+/ {
+	compatible =3D "starfive,jh8100";
+	#address-cells =3D <2>;
+	#size-cells =3D <2>;
+
+	cpus {
+		#address-cells =3D <1>;
+		#size-cells =3D <0>;
+		timebase-frequency =3D <4000000>;
+
+		cpu0: cpu@0 {
+			compatible =3D "starfive,dubhe-80", "riscv";
+			capacity-dmips-mhz =3D <768>;
+			d-cache-block-size =3D <64>;
+			d-cache-sets =3D <512>;
+			d-cache-size =3D <32768>;
+			d-tlb-sets =3D <1>;
+			d-tlb-size =3D <48>;
+			device_type =3D "cpu";
+			i-cache-block-size =3D <64>;
+			i-cache-sets =3D <512>;
+			i-cache-size =3D <32768>;
+			i-tlb-sets =3D <1>;
+			i-tlb-size =3D <48>;
+			mmu-type =3D "riscv,sv48";
+			next-level-cache =3D <&l2c0>;
+			reg =3D <0x0>;
+			riscv,isa =3D "rv64imafdch";
+			riscv,isa-base =3D "rv64i";
+			riscv,isa-extensions =3D "i", "m", "a", "f", "d", "c", "h", "zicntr",
+					       "zicsr", "zifencei", "zihintpause", "zihpm",
+					       "zba", "zbb", "zbs", "sscofpmf";
+			tlb-split;
+
+			cpu0_intc: interrupt-controller {
+				compatible =3D "riscv,cpu-intc";
+				interrupt-controller;
+				#interrupt-cells =3D <1>;
+			};
+		};
+
+		cpu1: cpu@1 {
+			compatible =3D "starfive,dubhe-80", "riscv";
+			capacity-dmips-mhz =3D <768>;
+			d-cache-block-size =3D <64>;
+			d-cache-sets =3D <512>;
+			d-cache-size =3D <32768>;
+			d-tlb-sets =3D <1>;
+			d-tlb-size =3D <48>;
+			device_type =3D "cpu";
+			i-cache-block-size =3D <64>;
+			i-cache-sets =3D <512>;
+			i-cache-size =3D <32768>;
+			i-tlb-sets =3D <1>;
+			i-tlb-size =3D <48>;
+			mmu-type =3D "riscv,sv48";
+			next-level-cache =3D <&l2c1>;
+			reg =3D <0x1>;
+			riscv,isa =3D "rv64imafdch";
+			riscv,isa-base =3D "rv64i";
+			riscv,isa-extensions =3D "i", "m", "a", "f", "d", "c", "h", "zicntr",
+					       "zicsr", "zifencei", "zihintpause", "zihpm",
+					       "zba", "zbb", "zbs", "sscofpmf";
+			tlb-split;
+
+			cpu1_intc: interrupt-controller {
+				compatible =3D "riscv,cpu-intc";
+				interrupt-controller;
+				#interrupt-cells =3D <1>;
+			};
+		};
+
+		cpu2: cpu@2 {
+			compatible =3D "starfive,dubhe-90", "riscv";
+			capacity-dmips-mhz =3D <1024>;
+			d-cache-block-size =3D <64>;
+			d-cache-sets =3D <1024>;
+			d-cache-size =3D <65536>;
+			d-tlb-sets =3D <1>;
+			d-tlb-size =3D <48>;
+			device_type =3D "cpu";
+			i-cache-block-size =3D <64>;
+			i-cache-sets =3D <1024>;
+			i-cache-size =3D <65536>;
+			i-tlb-sets =3D <1>;
+			i-tlb-size =3D <48>;
+			mmu-type =3D "riscv,sv48";
+			next-level-cache =3D <&l2c2>;
+			reg =3D <0x2>;
+			riscv,isa =3D "rv64imafdch";
+			riscv,isa-base =3D "rv64i";
+			riscv,isa-extensions =3D "i", "m", "a", "f", "d", "c", "h", "zicntr",
+					       "zicsr", "zifencei", "zihintpause", "zihpm",
+					       "zba", "zbb", "zbs", "sscofpmf";
+			tlb-split;
+
+			cpu2_intc: interrupt-controller {
+				compatible =3D "riscv,cpu-intc";
+				interrupt-controller;
+				#interrupt-cells =3D <1>;
+			};
+		};
+
+		cpu3: cpu@3 {
+			compatible =3D "starfive,dubhe-90", "riscv";
+			capacity-dmips-mhz =3D <1024>;
+			d-cache-block-size =3D <64>;
+			d-cache-sets =3D <1024>;
+			d-cache-size =3D <65536>;
+			d-tlb-sets =3D <1>;
+			d-tlb-size =3D <48>;
+			device_type =3D "cpu";
+			i-cache-block-size =3D <64>;
+			i-cache-sets =3D <1024>;
+			i-cache-size =3D <65536>;
+			i-tlb-sets =3D <1>;
+			i-tlb-size =3D <48>;
+			mmu-type =3D "riscv,sv48";
+			next-level-cache =3D <&l2c2>;
+			reg =3D <0x3>;
+			riscv,isa =3D "rv64imafdch";
+			riscv,isa-base =3D "rv64i";
+			riscv,isa-extensions =3D "i", "m", "a", "f", "d", "c", "h", "zicntr",
+					       "zicsr", "zifencei", "zihintpause", "zihpm",
+					       "zba", "zbb", "zbs", "sscofpmf";
+			tlb-split;
+
+			cpu3_intc: interrupt-controller {
+				compatible =3D "riscv,cpu-intc";
+				interrupt-controller;
+				#interrupt-cells =3D <1>;
+			};
+		};
+
+		cpu4: cpu@4 {
+			compatible =3D "starfive,dubhe-90", "riscv";
+			capacity-dmips-mhz =3D <1024>;
+			d-cache-block-size =3D <64>;
+			d-cache-sets =3D <1024>;
+			d-cache-size =3D <65536>;
+			d-tlb-sets =3D <1>;
+			d-tlb-size =3D <48>;
+			device_type =3D "cpu";
+			i-cache-block-size =3D <64>;
+			i-cache-sets =3D <1024>;
+			i-cache-size =3D <65536>;
+			i-tlb-sets =3D <1>;
+			i-tlb-size =3D <48>;
+			mmu-type =3D "riscv,sv48";
+			next-level-cache =3D <&l2c2>;
+			reg =3D <0x4>;
+			riscv,isa =3D "rv64imafdch";
+			riscv,isa-base =3D "rv64i";
+			riscv,isa-extensions =3D "i", "m", "a", "f", "d", "c", "h", "zicntr",
+					       "zicsr", "zifencei", "zihintpause", "zihpm",
+					       "zba", "zbb", "zbs", "sscofpmf";
+			tlb-split;
+
+			cpu4_intc: interrupt-controller {
+				compatible =3D "riscv,cpu-intc";
+				interrupt-controller;
+				#interrupt-cells =3D <1>;
+			};
+		};
+
+		cpu5: cpu@5 {
+			compatible =3D "starfive,dubhe-90", "riscv";
+			capacity-dmips-mhz =3D <1024>;
+			d-cache-block-size =3D <64>;
+			d-cache-sets =3D <1024>;
+			d-cache-size =3D <65536>;
+			d-tlb-sets =3D <1>;
+			d-tlb-size =3D <48>;
+			device_type =3D "cpu";
+			i-cache-block-size =3D <64>;
+			i-cache-sets =3D <1024>;
+			i-cache-size =3D <65536>;
+			i-tlb-sets =3D <1>;
+			i-tlb-size =3D <48>;
+			mmu-type =3D "riscv,sv48";
+			next-level-cache =3D <&l2c2>;
+			reg =3D <0x5>;
+			riscv,isa =3D "rv64imafdch";
+			riscv,isa-base =3D "rv64i";
+			riscv,isa-extensions =3D "i", "m", "a", "f", "d", "c", "h", "zicntr",
+					       "zicsr", "zifencei", "zihintpause", "zihpm",
+					       "zba", "zbb", "zbs", "sscofpmf";
+			tlb-split;
+
+			cpu5_intc: interrupt-controller {
+				compatible =3D "riscv,cpu-intc";
+				interrupt-controller;
+				#interrupt-cells =3D <1>;
+			};
+		};
+
+		cpu-map {
+			cluster0 {
+				core0 {
+					cpu =3D <&cpu0>;
+				};
+			};
+
+			cluster1 {
+				core0 {
+					cpu =3D <&cpu1>;
+				};
+			};
+
+			cluster2 {
+				core0 {
+					cpu =3D <&cpu2>;
+				};
+
+				core1 {
+					cpu =3D <&cpu3>;
+				};
+
+				core2 {
+					cpu =3D <&cpu4>;
+				};
+
+				core3 {
+					cpu =3D <&cpu5>;
+				};
+			};
+		};
+
+		l2c0: cache-controller-0 {
+			compatible =3D "cache";
+			cache-block-size =3D <64>;
+			cache-level =3D <2>;
+			cache-sets =3D <512>;
+			cache-size =3D <0x40000>;
+			cache-unified;
+			next-level-cache =3D <&l3_cache>;
+		};
+
+		l2c1: cache-controller-1 {
+			compatible =3D "cache";
+			cache-block-size =3D <64>;
+			cache-level =3D <2>;
+			cache-sets =3D <512>;
+			cache-size =3D <0x40000>;
+			cache-unified;
+			next-level-cache =3D <&l3_cache>;
+		};
+
+		l2c2: cache-controller-2{
+			compatible =3D "cache";
+			cache-block-size =3D <64>;
+			cache-level =3D <2>;
+			cache-sets =3D <4096>;
+			cache-size =3D <0x200000>;
+			cache-unified;
+			next-level-cache =3D <&l3_cache>;
+		};
+
+		l3_cache: cache-controller-3 {
+			compatible =3D "cache";
+			cache-block-size =3D <64>;
+			cache-level =3D <3>;
+			cache-sets =3D <8192>;
+			cache-size =3D <0x400000>;
+			cache-unified;
+		};
+	};
+
+	clk_uart: clk-uart {
+		compatible =3D "fixed-clock"; /* Initial clock handler for UART */
+		#clock-cells =3D <0>;
+		clock-frequency =3D <24000000>;
+	};
+
+	soc {
+		compatible =3D "simple-bus";
+		interrupt-parent =3D <&plic>;
+		#address-cells =3D <2>;
+		#size-cells =3D <2>;
+		ranges;
+
+		clint: clint@2000000 {
+			compatible =3D "starfive,jh8100-clint", "sifive,clint0";
+			reg =3D <0x0 0x2000000 0x0 0x10000>;
+			interrupts-extended =3D <&cpu0_intc 3>, <&cpu0_intc 7>,
+					      <&cpu1_intc 3>, <&cpu1_intc 7>,
+					      <&cpu2_intc 3>, <&cpu2_intc 7>,
+					      <&cpu3_intc 3>, <&cpu3_intc 7>,
+					      <&cpu4_intc 3>, <&cpu4_intc 7>,
+					      <&cpu5_intc 3>, <&cpu5_intc 7>;
+		};
+
+		plic: interrupt-controller@c000000 {
+			#interrupt-cells =3D <1>;
+			#address-cells =3D <0>;
+			compatible =3D "starfive,jh8100-plic", "sifive,plic-1.0.0";
+			reg =3D <0x0 0x0c000000 0x0 0x4000000>;
+			riscv,ndev =3D <200>;
+			interrupt-controller;
+			interrupts-extended =3D <&cpu0_intc 11>, <&cpu1_intc 11>,
+					      <&cpu0_intc 9>, <&cpu1_intc 9>,
+					      <&cpu2_intc 11>, <&cpu3_intc 11>,
+					      <&cpu4_intc 11>, <&cpu5_intc 11>,
+					      <&cpu2_intc 9>, <&cpu3_intc 9>,
+					      <&cpu4_intc 9>, <&cpu5_intc 9>;
+		};
+
+		uart0: serial@12160000 {
+			compatible =3D "starfive,jh8100-uart", "cdns,uart-r1p8";
+			reg =3D <0x0 0x12160000 0x0 0x10000>;
+			clock-names =3D "uart_clk", "pclk";
+			clocks =3D <&clk_uart>, <&clk_uart>;
+			interrupts =3D <67>;
+			status =3D "disabled";
+		};
+
+		uart1: serial@12170000  {
+			compatible =3D "starfive,jh8100-uart", "cdns,uart-r1p8";
+			reg =3D <0x0 0x12170000 0x0 0x10000>;
+			clock-names =3D "uart_clk", "pclk";
+			clocks =3D <&clk_uart>, <&clk_uart>;
+			interrupts =3D <68>;
+			status =3D "disabled";
+		};
+
+		uart2: serial@12180000  {
+			compatible =3D "starfive,jh8100-uart", "cdns,uart-r1p8";
+			reg =3D <0x0 0x12180000 0x0 0x10000>;
+			clock-names =3D "uart_clk", "pclk";
+			clocks =3D <&clk_uart>, <&clk_uart>;
+			interrupts =3D <69>;
+			status =3D "disabled";
+		};
+
+		uart3: serial@12190000  {
+			compatible =3D "starfive,jh8100-uart", "cdns,uart-r1p8";
+			reg =3D <0x0 0x12190000 0x0 0x10000>;
+			clock-names =3D "uart_clk", "pclk";
+			clocks =3D <&clk_uart>, <&clk_uart>;
+			interrupts =3D <70>;
+			status =3D "disabled";
+		};
+
+		uart4: serial@121a0000  {
+			compatible =3D "starfive,jh8100-uart", "cdns,uart-r1p8";
+			reg =3D <0x0 0x121a0000 0x0 0x10000>;
+			clock-names =3D "uart_clk", "pclk";
+			clocks =3D <&clk_uart>, <&clk_uart>;
+			interrupts =3D <71>;
+			status =3D "disabled";
+		};
+
+		uart5: serial@127d0000  {
+			compatible =3D "starfive,jh8100-uart", "cdns,uart-r1p8";
+			reg =3D <0x0 0x127d0000 0x0 0x10000>;
+			clock-names =3D "uart_clk", "pclk";
+			clocks =3D <&clk_uart>, <&clk_uart>;
+			interrupts =3D <72>;
+			status =3D "disabled";
+		};
+
+		uart6: serial@127e0000  {
+			compatible =3D "starfive,jh8100-uart", "cdns,uart-r1p8";
+			reg =3D <0x0 0x127e0000 0x0 0x10000>;
+			clock-names =3D "uart_clk", "pclk";
+			clocks =3D <&clk_uart>, <&clk_uart>;
+			interrupts =3D <73>;
+			status =3D "disabled";
+		};
+	};
+};
--=20
2.34.1


