Return-Path: <devicetree+bounces-27971-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5771C81C61D
	for <lists+devicetree@lfdr.de>; Fri, 22 Dec 2023 09:01:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A24D5B21D4D
	for <lists+devicetree@lfdr.de>; Fri, 22 Dec 2023 08:01:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE392C127;
	Fri, 22 Dec 2023 08:01:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.loongson.cn (mail.loongson.cn [114.242.206.163])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7C23BE48
	for <devicetree@vger.kernel.org>; Fri, 22 Dec 2023 08:01:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=loongson.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=loongson.cn
Received: from loongson.cn (unknown [112.20.110.252])
	by gateway (Coremail) with SMTP id _____8Cx+uhRQoVlrMoDAA--.19114S3;
	Fri, 22 Dec 2023 16:01:21 +0800 (CST)
Received: from localhost.localdomain (unknown [112.20.110.252])
	by localhost.localdomain (Coremail) with SMTP id AQAAf8Bx3uRPQoVlA1IFAA--.26691S2;
	Fri, 22 Dec 2023 16:01:20 +0800 (CST)
From: Binbin Zhou <zhoubinbin@loongson.cn>
To: Binbin Zhou <zhoubb.aaron@gmail.com>,
	Huacai Chen <chenhuacai@loongson.cn>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Cc: Huacai Chen <chenhuacai@kernel.org>,
	Xuerui Wang <kernel@xen0n.name>,
	loongarch@lists.linux.dev,
	Jiaxun Yang <jiaxun.yang@flygoat.com>,
	Hongliang Wang <wanghongliang@loongson.cn>,
	Binbin Zhou <zhoubinbin@loongson.cn>
Subject: [PATCH v6 4/7] LoongArch: dts: DeviceTree for Loongson-2K0500
Date: Fri, 22 Dec 2023 16:01:10 +0800
Message-Id: <a171f196bf53c1ed08403b91da92d0b592ec3a3c.1703229766.git.zhoubinbin@loongson.cn>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <cover.1703229766.git.zhoubinbin@loongson.cn>
References: <cover.1703229766.git.zhoubinbin@loongson.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:AQAAf8Bx3uRPQoVlA1IFAA--.26691S2
X-CM-SenderInfo: p2kr3uplqex0o6or00hjvr0hdfq/
X-Coremail-Antispam: 1Uk129KBj93XoWxtw18Jw1UWFWDuryrWrW3urX_yoWfAr4rpa
	srC3yDWr40vF15K3yUJFWjyF1DGFZYkF97Wwn7AFW8GrZ2qryqvw4xtFy3JF1rGrWDX342
	qFnYv34UtF1DJwcCm3ZEXasCq-sJn29KB7ZKAUJUUUU7529EdanIXcx71UUUUU7KY7ZEXa
	sCq-sGcSsGvfJ3Ic02F40EFcxC0VAKzVAqx4xG6I80ebIjqfuFe4nvWSU5nxnvy29KBjDU
	0xBIdaVrnRJUUUBIb4IE77IF4wAFF20E14v26r1j6r4UM7CY07I20VC2zVCF04k26cxKx2
	IYs7xG6rWj6s0DM7CIcVAFz4kK6r1Y6r17M28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48v
	e4kI8wA2z4x0Y4vE2Ix0cI8IcVAFwI0_Xr0_Ar1l84ACjcxK6xIIjxv20xvEc7CjxVAFwI
	0_Gr0_Cr1l84ACjcxK6I8E87Iv67AKxVW8Jr0_Cr1UM28EF7xvwVC2z280aVCY1x0267AK
	xVW8Jr0_Cr1UM2kKe7AKxVWUXVWUAwAS0I0E0xvYzxvE52x082IY62kv0487Mc804VCY07
	AIYIkI8VC2zVCFFI0UMc02F40EFcxC0VAKzVAqx4xG6I80ewAv7VC0I7IYx2IY67AKxVWr
	XVW3AwAv7VC2z280aVAFwI0_Gr0_Cr1lOx8S6xCaFVCjc4AY6r1j6r4UM4x0Y48IcxkI7V
	AKI48JMxkF7I0En4kS14v26r126r1DMxAIw28IcxkI7VAKI48JMxC20s026xCaFVCjc4AY
	6r1j6r4UMxCIbckI1I0E14v26r1Y6r17MI8I3I0E5I8CrVAFwI0_Jr0_Jr4lx2IqxVCjr7
	xvwVAFwI0_JrI_JrWlx4CE17CEb7AF67AKxVWUtVW8ZwCIc40Y0x0EwIxGrwCI42IY6xII
	jxv20xvE14v26ryj6F1UMIIF0xvE2Ix0cI8IcVCY1x0267AKxVW8JVWxJwCI42IY6xAIw2
	0EY4v20xvaj40_Jr0_JF4lIxAIcVC2z280aVAFwI0_Gr0_Cr1lIxAIcVC2z280aVCY1x02
	67AKxVW8JVW8JrUvcSsGvfC2KfnxnUUI43ZEXa7IUneRRtUUUUU==

Add DeviceTree file for Loongson-2K0500 processor, which integrates one
64-bit 2-issue superscalar LA264 processor core.

Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
---
 arch/loongarch/boot/dts/Makefile              |   2 +
 .../boot/dts/loongson-2k0500-ref.dts          |  88 ++++++
 arch/loongarch/boot/dts/loongson-2k0500.dtsi  | 266 ++++++++++++++++++
 3 files changed, 356 insertions(+)
 create mode 100644 arch/loongarch/boot/dts/loongson-2k0500-ref.dts
 create mode 100644 arch/loongarch/boot/dts/loongson-2k0500.dtsi

diff --git a/arch/loongarch/boot/dts/Makefile b/arch/loongarch/boot/dts/Makefile
index 1e24cdb5180a..89c9758bba7f 100644
--- a/arch/loongarch/boot/dts/Makefile
+++ b/arch/loongarch/boot/dts/Makefile
@@ -1,3 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
+dtb-y = loongson-2k0500-ref.dtb
+
 obj-$(CONFIG_BUILTIN_DTB)	+= $(addsuffix .dtb.o, $(CONFIG_BUILTIN_DTB_NAME))
diff --git a/arch/loongarch/boot/dts/loongson-2k0500-ref.dts b/arch/loongarch/boot/dts/loongson-2k0500-ref.dts
new file mode 100644
index 000000000000..b38071a4d0b0
--- /dev/null
+++ b/arch/loongarch/boot/dts/loongson-2k0500-ref.dts
@@ -0,0 +1,88 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2023 Loongson Technology Corporation Limited
+ */
+
+/dts-v1/;
+
+#include "loongson-2k0500.dtsi"
+
+/ {
+	compatible = "loongson,ls2k0500-ref", "loongson,ls2k0500";
+	model = "Loongson-2K0500 Reference Board";
+
+	aliases {
+		ethernet0 = &gmac0;
+		ethernet1 = &gmac1;
+		serial0 = &uart0;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	memory@200000 {
+		device_type = "memory";
+		reg = <0x0 0x00200000 0x0 0x0ee00000>,
+		      <0x0 0x90000000 0x0 0x60000000>;
+	};
+
+	reserved-memory {
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+
+		linux,cma {
+			compatible = "shared-dma-pool";
+			reusable;
+			size = <0x0 0x2000000>;
+			linux,cma-default;
+		};
+	};
+};
+
+&gmac0 {
+	status = "okay";
+
+	phy-mode = "rgmii";
+	bus_id = <0x0>;
+};
+
+&gmac1 {
+	status = "okay";
+
+	phy-mode = "rgmii";
+	bus_id = <0x1>;
+};
+
+&i2c0 {
+	status = "okay";
+
+	#address-cells = <1>;
+	#size-cells = <0>;
+	eeprom@57{
+		compatible = "atmel,24c16";
+		reg = <0x57>;
+		pagesize = <16>;
+	};
+};
+
+&ehci0 {
+	status = "okay";
+};
+
+&ohci0 {
+	status = "okay";
+};
+
+&sata {
+	status = "okay";
+};
+
+&uart0 {
+	status = "okay";
+};
+
+&rtc0 {
+	status = "okay";
+};
diff --git a/arch/loongarch/boot/dts/loongson-2k0500.dtsi b/arch/loongarch/boot/dts/loongson-2k0500.dtsi
new file mode 100644
index 000000000000..444779c21034
--- /dev/null
+++ b/arch/loongarch/boot/dts/loongson-2k0500.dtsi
@@ -0,0 +1,266 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2023 Loongson Technology Corporation Limited
+ */
+
+/dts-v1/;
+
+#include <dt-bindings/interrupt-controller/irq.h>
+
+/ {
+	#address-cells = <2>;
+	#size-cells = <2>;
+
+	cpus {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		cpu0: cpu@0 {
+			compatible = "loongson,la264";
+			device_type = "cpu";
+			reg = <0x0>;
+			clocks = <&cpu_clk>;
+		};
+	};
+
+	cpu_clk: cpu-clk {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <500000000>;
+	};
+
+	cpuintc: interrupt-controller {
+		compatible = "loongson,cpu-interrupt-controller";
+		#interrupt-cells = <1>;
+		interrupt-controller;
+	};
+
+	bus@10000000 {
+		compatible = "simple-bus";
+		ranges = <0x0 0x10000000 0x0 0x10000000 0x0 0x10000000>,
+			 <0x0 0x02000000 0x0 0x02000000 0x0 0x02000000>,
+			 <0x0 0x20000000 0x0 0x20000000 0x0 0x10000000>,
+			 <0x0 0x40000000 0x0 0x40000000 0x0 0x40000000>,
+			 <0xfe 0x0 0xfe 0x0 0x0 0x40000000>;
+		#address-cells = <2>;
+		#size-cells = <2>;
+
+		isa@16400000 {
+			compatible = "isa";
+			#size-cells = <1>;
+			#address-cells = <2>;
+			ranges = <1 0x0 0x0 0x16400000 0x4000>;
+		};
+
+		liointc0: interrupt-controller@1fe11400 {
+			compatible = "loongson,liointc-2.0";
+			reg = <0x0 0x1fe11400 0x0 0x40>,
+			      <0x0 0x1fe11040 0x0 0x8>;
+			reg-names = "main", "isr0";
+
+			interrupt-controller;
+			#interrupt-cells = <2>;
+			interrupt-parent = <&cpuintc>;
+			interrupts = <2>;
+			interrupt-names = "int0";
+
+			loongson,parent_int_map = <0xffffffff>, /* int0 */
+						  <0x00000000>, /* int1 */
+						  <0x00000000>, /* int2 */
+						  <0x00000000>; /* int3 */
+		};
+
+		liointc1: interrupt-controller@1fe11440 {
+			compatible = "loongson,liointc-2.0";
+			reg = <0x0 0x1fe11440 0x0 0x40>,
+			      <0x0 0x1fe11048 0x0 0x8>;
+			reg-names = "main", "isr0";
+
+			interrupt-controller;
+			#interrupt-cells = <2>;
+			interrupt-parent = <&cpuintc>;
+			interrupts = <4>;
+			interrupt-names = "int2";
+
+			loongson,parent_int_map = <0x00000000>, /* int0 */
+						  <0x00000000>, /* int1 */
+						  <0xffffffff>, /* int2 */
+						  <0x00000000>; /* int3 */
+		};
+
+		eiointc: interrupt-controller@1fe11600 {
+			compatible = "loongson,ls2k0500-eiointc";
+			reg = <0x0 0x1fe11600 0x0 0xea00>;
+			interrupt-controller;
+			#interrupt-cells = <1>;
+			interrupt-parent = <&cpuintc>;
+			interrupts = <3>;
+		};
+
+		gmac0: ethernet@1f020000 {
+			compatible = "snps,dwmac-3.70a";
+			reg = <0x0 0x1f020000 0x0 0x10000>;
+			interrupt-parent = <&liointc0>;
+			interrupts = <12 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "macirq";
+			status = "disabled";
+		};
+
+		gmac1: ethernet@1f030000 {
+			compatible = "snps,dwmac-3.70a";
+			reg = <0x0 0x1f030000 0x0 0x10000>;
+			interrupt-parent = <&liointc0>;
+			interrupts = <14 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "macirq";
+			status = "disabled";
+		};
+
+		sata: sata@1f040000 {
+			compatible = "snps,spear-ahci";
+			reg = <0x0 0x1f040000 0x0 0x10000>;
+			interrupt-parent = <&eiointc>;
+			interrupts = <75>;
+			status = "disabled";
+		};
+
+		ehci0: usb@1f050000 {
+			compatible = "generic-ehci";
+			reg = <0x0 0x1f050000 0x0 0x8000>;
+			interrupt-parent = <&eiointc>;
+			interrupts = <71>;
+			status = "disabled";
+		};
+
+		ohci0: usb@1f058000 {
+			compatible = "generic-ohci";
+			reg = <0x0 0x1f058000 0x0 0x8000>;
+			interrupt-parent = <&eiointc>;
+			interrupts = <72>;
+			status = "disabled";
+		};
+
+		uart0: serial@1ff40800 {
+			compatible = "ns16550a";
+			reg = <0x0 0x1ff40800 0x0 0x10>;
+			clock-frequency = <100000000>;
+			interrupt-parent = <&eiointc>;
+			interrupts = <2>;
+			no-loopback-test;
+			status = "disabled";
+		};
+
+		i2c0: i2c@1ff48000 {
+			compatible = "loongson,ls2k-i2c";
+			reg = <0x0 0x1ff48000 0x0 0x0800>;
+			interrupt-parent = <&eiointc>;
+			interrupts = <14>;
+			status = "disabled";
+		};
+
+		i2c@1ff48800 {
+			compatible = "loongson,ls2k-i2c";
+			reg = <0x0 0x1ff48800 0x0 0x0800>;
+			interrupt-parent = <&eiointc>;
+			interrupts = <15>;
+			status = "disabled";
+		};
+
+		i2c@1ff49000 {
+			compatible = "loongson,ls2k-i2c";
+			reg = <0x0 0x1ff49000 0x0 0x0800>;
+			interrupt-parent = <&eiointc>;
+			interrupts = <16>;
+			status = "disabled";
+		};
+
+		i2c@1ff49800 {
+			compatible = "loongson,ls2k-i2c";
+			reg = <0x0 0x1ff49800 0x0 0x0800>;
+			interrupt-parent = <&eiointc>;
+			interrupts = <17>;
+			status = "disabled";
+		};
+
+		i2c@1ff4a000 {
+			compatible = "loongson,ls2k-i2c";
+			reg = <0x0 0x1ff4a000 0x0 0x0800>;
+			interrupt-parent = <&eiointc>;
+			interrupts = <18>;
+			status = "disabled";
+		};
+
+		i2c@1ff4a800 {
+			compatible = "loongson,ls2k-i2c";
+			reg = <0x0 0x1ff4a800 0x0 0x0800>;
+			interrupt-parent = <&eiointc>;
+			interrupts = <19>;
+			status = "disabled";
+		};
+
+		pmc: power-management@1ff6c000 {
+			compatible = "loongson,ls2k0500-pmc", "syscon";
+			reg = <0x0 0x1ff6c000 0x0 0x58>;
+			interrupt-parent = <&eiointc>;
+			interrupts = <56>;
+			loongson,suspend-address = <0x0 0x1c000500>;
+
+			syscon-reboot {
+				compatible = "syscon-reboot";
+				offset = <0x30>;
+				mask = <0x1>;
+			};
+
+			syscon-poweroff {
+				compatible = "syscon-poweroff";
+				regmap = <&pmc>;
+				offset = <0x14>;
+				mask = <0x3c00>;
+				value = <0x3c00>;
+			};
+		};
+
+		rtc0: rtc@1ff6c100 {
+			compatible = "loongson,ls2k0500-rtc", "loongson,ls7a-rtc";
+			reg = <0x0 0x1ff6c100 0x0 0x100>;
+			interrupt-parent = <&eiointc>;
+			interrupts = <35>;
+			status = "disabled";
+		};
+
+		pcie@1a000000 {
+			compatible = "loongson,ls2k-pci";
+			reg = <0x0 0x1a000000 0x0 0x02000000>,
+			      <0xfe 0x0 0x0 0x20000000>;
+			#address-cells = <3>;
+			#size-cells = <2>;
+			device_type = "pci";
+			bus-range = <0x0 0x5>;
+			ranges = <0x01000000 0x0 0x00004000 0x0 0x16404000 0x0 0x00004000>,
+				 <0x02000000 0x0 0x40000000 0x0 0x40000000 0x0 0x40000000>;
+
+			pcie@0,0 {
+				reg = <0x0000 0x0 0x0 0x0 0x0>;
+				#address-cells = <3>;
+				#size-cells = <2>;
+				device_type = "pci";
+				interrupt-parent = <&eiointc>;
+				#interrupt-cells = <1>;
+				interrupt-map-mask = <0x0 0x0 0x0 0x0>;
+				interrupt-map = <0x0 0x0 0x0 0x0 &eiointc 81>;
+				ranges;
+			};
+
+			pcie@1,0 {
+				reg = <0x0800 0x0 0x0 0x0 0x0>;
+				#address-cells = <3>;
+				#size-cells = <2>;
+				device_type = "pci";
+				interrupt-parent = <&eiointc>;
+				#interrupt-cells = <1>;
+				interrupt-map-mask = <0x0 0x0 0x0 0x0>;
+				interrupt-map = <0x0 0x0 0x0 0x0 &eiointc 82>;
+				ranges;
+			};
+		};
+	};
+};
-- 
2.39.3


