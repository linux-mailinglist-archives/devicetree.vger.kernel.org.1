Return-Path: <devicetree+bounces-26376-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C63C81642F
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 02:53:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5B88A2825CA
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 01:53:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A60320EE;
	Mon, 18 Dec 2023 01:53:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.loongson.cn (mail.loongson.cn [114.242.206.163])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F37320F4
	for <devicetree@vger.kernel.org>; Mon, 18 Dec 2023 01:53:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=loongson.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=loongson.cn
Received: from loongson.cn (unknown [112.20.112.176])
	by gateway (Coremail) with SMTP id _____8BxbOkIpn9lQ+YBAA--.9910S3;
	Mon, 18 Dec 2023 09:53:12 +0800 (CST)
Received: from localhost.localdomain (unknown [112.20.112.176])
	by localhost.localdomain (Coremail) with SMTP id AQAAf8Cx3+EEpn9l0l8JAA--.45072S3;
	Mon, 18 Dec 2023 09:53:10 +0800 (CST)
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
Subject: [PATCH v5 5/7] LoongArch: dts: DeviceTree for Loongson-2K1000
Date: Mon, 18 Dec 2023 09:52:59 +0800
Message-Id: <f528fa7f8bce79d5f0a748597bb3b50ec1cd6f83.1702862779.git.zhoubinbin@loongson.cn>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <cover.1702862778.git.zhoubinbin@loongson.cn>
References: <cover.1702862778.git.zhoubinbin@loongson.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:AQAAf8Cx3+EEpn9l0l8JAA--.45072S3
X-CM-SenderInfo: p2kr3uplqex0o6or00hjvr0hdfq/
X-Coremail-Antispam: 1Uk129KBj9fXoW3uFWUtw1UCFy7ZFWftF1DJwc_yoW8XFWkWo
	ZIyF4rtrW8K34UZws7XF1fG3W7Gr1DKF4agrWjvF1fGr4Fkw47Jas5Zw4Yk3429rWrtryD
	Z34I9FW5JwnFvr4kl-sFpf9Il3svdjkaLaAFLSUrUUUU8b8apTn2vfkv8UJUUUU8wcxFpf
	9Il3svdxBIdaVrn0xqx4xG64xvF2IEw4CE5I8CrVC2j2Jv73VFW2AGmfu7bjvjm3AaLaJ3
	UjIYCTnIWjp_UUUYC7kC6x804xWl14x267AKxVWUJVW8JwAFc2x0x2IEx4CE42xK8VAvwI
	8IcIk0rVWrJVCq3wAFIxvE14AKwVWUXVWUAwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xG
	Y2AK021l84ACjcxK6xIIjxv20xvE14v26F1j6w1UM28EF7xvwVC0I7IYx2IY6xkF7I0E14
	v26F4j6r4UJwA2z4x0Y4vEx4A2jsIE14v26F4j6r4UJwA2z4x0Y4vEx4A2jsIEc7CjxVAF
	wI0_Gr0_Gr1UM2kKe7AKxVWUXVWUAwAS0I0E0xvYzxvE52x082IY62kv0487Mc804VCY07
	AIYIkI8VC2zVCFFI0UMc02F40EFcxC0VAKzVAqx4xG6I80ewAv7VC0I7IYx2IY67AKxVWr
	XVW3AwAv7VC2z280aVAFwI0_Gr0_Cr1lOx8S6xCaFVCjc4AY6r1j6r4UM4x0Y48IcxkI7V
	AKI48JMxkF7I0En4kS14v26r126r1DMxAIw28IcxkI7VAKI48JMxC20s026xCaFVCjc4AY
	6r1j6r4UMxCIbckI1I0E14v26r1Y6r17MI8I3I0E5I8CrVAFwI0_Jr0_Jr4lx2IqxVCjr7
	xvwVAFwI0_JrI_JrWlx4CE17CEb7AF67AKxVWUtVW8ZwCIc40Y0x0EwIxGrwCI42IY6xII
	jxv20xvE14v26F1j6w1UMIIF0xvE2Ix0cI8IcVCY1x0267AKxVWxJVW8Jr1lIxAIcVCF04
	k26cxKx2IYs7xG6r1j6r1xMIIF0xvEx4A2jsIE14v26r4j6F4UMIIF0xvEx4A2jsIEc7Cj
	xVAFwI0_Gr0_Gr1UYxBIdaVFxhVjvjDU0xZFpf9x07jqRRiUUUUU=

Add DeviceTree file for Loongson-2K1000 processor, which integrates two
64-bit dual emission superscalar LA264 processor cores.

Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
---
 arch/loongarch/boot/dts/Makefile              |   3 +-
 .../boot/dts/loongson-2k1000-ref.dts          | 184 +++++++
 arch/loongarch/boot/dts/loongson-2k1000.dtsi  | 453 ++++++++++++++++++
 3 files changed, 639 insertions(+), 1 deletion(-)
 create mode 100644 arch/loongarch/boot/dts/loongson-2k1000-ref.dts
 create mode 100644 arch/loongarch/boot/dts/loongson-2k1000.dtsi

diff --git a/arch/loongarch/boot/dts/Makefile b/arch/loongarch/boot/dts/Makefile
index aa0b21d73d4e..dc0782315bed 100644
--- a/arch/loongarch/boot/dts/Makefile
+++ b/arch/loongarch/boot/dts/Makefile
@@ -1,5 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
-dtb-$(CONFIG_MACH_LOONGSON64)	= loongson-2k0500-ref.dtb
+dtb-$(CONFIG_MACH_LOONGSON64)	= loongson-2k0500-ref.dtb \
+				  loongson-2k1000-ref.dtb
 
 obj-$(CONFIG_BUILTIN_DTB)	+= $(addsuffix .dtb.o, $(CONFIG_BUILTIN_DTB_NAME))
diff --git a/arch/loongarch/boot/dts/loongson-2k1000-ref.dts b/arch/loongarch/boot/dts/loongson-2k1000-ref.dts
new file mode 100644
index 000000000000..95346bcbea71
--- /dev/null
+++ b/arch/loongarch/boot/dts/loongson-2k1000-ref.dts
@@ -0,0 +1,184 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2023 Loongson Technology Corporation Limited
+ */
+
+/dts-v1/;
+
+#include "loongson-2k1000.dtsi"
+
+/ {
+	compatible = "loongson,ls2k1000-ref", "loongson,ls2k1000";
+	model = "Loongson-2K1000 Reference Board";
+
+	aliases {
+		serial0 = &uart0;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+		bootargs = "console=ttyS0,115200";
+	};
+
+	memory@200000 {
+		device_type = "memory";
+		reg = <0x0 0x00200000 0x0 0x06e00000>,
+		      <0x0 0x08000000 0x0 0x07000000>,
+		      <0x0 0x90000000 0x1 0xe0000000>;
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
+	phy-handle = <&phy0>;
+	mdio {
+		compatible = "snps,dwmac-mdio";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		phy0: ethernet-phy@0 {
+			reg = <0>;
+		};
+	};
+};
+
+&gmac1 {
+	status = "okay";
+
+	phy-mode = "rgmii";
+	phy-handle = <&phy1>;
+	mdio {
+		compatible = "snps,dwmac-mdio";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		phy1: ethernet-phy@1 {
+			reg = <16>;
+		};
+	};
+};
+
+&i2c2 {
+	status = "okay";
+
+	pinctrl-0 = <&i2c0_pins_default>;
+	pinctrl-names = "default";
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
+&spi0 {
+	status = "okay";
+
+	#address-cells = <1>;
+	#size-cells = <0>;
+	spidev@0 {
+		compatible = "rohm,dh2228fv";
+		spi-max-frequency = <100000000>;
+		reg = <0>;
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
+&clk {
+	status = "okay";
+};
+
+&rtc0 {
+	status = "okay";
+};
+
+&pctrl {
+	status = "okay";
+
+	sdio_pins_default: sdio-pins {
+		sdio-pinmux {
+			groups = "sdio";
+			function = "sdio";
+		};
+		sdio-det-pinmux {
+			groups = "pwm2";
+			function = "gpio";
+		};
+	};
+
+	pwm1_pins_default: pwm1-pins {
+		pinmux {
+			groups = "pwm1";
+			function = "pwm1";
+		};
+	};
+
+	pwm0_pins_default: pwm0-pins {
+		pinmux {
+			groups = "pwm0";
+			function = "pwm0";
+		};
+	};
+
+	i2c1_pins_default: i2c1-pins {
+		pinmux {
+			groups = "i2c1";
+			function = "i2c1";
+		};
+	};
+
+	i2c0_pins_default: i2c0-pins {
+		pinmux {
+			groups = "i2c0";
+			function = "i2c0";
+		};
+	};
+
+	nand_pins_default: nand-pins {
+		pinmux {
+			groups = "nand";
+			function = "nand";
+		};
+	};
+
+	hda_pins_default: hda-pins {
+		grp0-pinmux {
+			groups = "hda";
+			function = "hda";
+		};
+		grp1-pinmux {
+			groups = "i2s";
+			function = "gpio";
+		};
+	};
+};
diff --git a/arch/loongarch/boot/dts/loongson-2k1000.dtsi b/arch/loongarch/boot/dts/loongson-2k1000.dtsi
new file mode 100644
index 000000000000..a7541bd35d84
--- /dev/null
+++ b/arch/loongarch/boot/dts/loongson-2k1000.dtsi
@@ -0,0 +1,453 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2023 Loongson Technology Corporation Limited
+ */
+
+/dts-v1/;
+
+#include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/clock/loongson,ls2k-clk.h>
+#include <dt-bindings/gpio/gpio.h>
+
+/ {
+	#address-cells = <2>;
+	#size-cells = <2>;
+
+	cpus {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		cpu-map {
+			cluster0 {
+				core0 {
+					cpu = <&cpu0>;
+				};
+				core1 {
+					cpu = <&cpu1>;
+				};
+			};
+		};
+
+		cpu0: cpu@0 {
+			compatible = "loongson,la264";
+			device_type = "cpu";
+			reg= <0x0>;
+			clocks = <&clk LOONGSON2_NODE_CLK>;
+		};
+
+		cpu1: cpu@1 {
+			compatible = "loongson,la264";
+			device_type = "cpu";
+			reg = <0x1>;
+			clocks = <&clk LOONGSON2_NODE_CLK>;
+		};
+	};
+
+	ref_100m: clock-ref-100m {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <100000000>;
+		clock-output-names = "ref_100m";
+	};
+
+	cpuintc: interrupt-controller {
+		compatible = "loongson,cpu-interrupt-controller";
+		#interrupt-cells = <1>;
+		interrupt-controller;
+	};
+
+	/* i2c of the dvi eeprom edid */
+	i2c-gpio-0 {
+		compatible = "i2c-gpio";
+		scl-gpios = <&gpio0 0 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+		sda-gpios = <&gpio0 1 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+		i2c-gpio,delay-us = <5>;        /* ~100 kHz */
+		#address-cells = <1>;
+		#size-cells = <0>;
+		status = "disabled";
+	};
+
+	/* i2c of the eeprom edid */
+	i2c-gpio-1 {
+		compatible = "i2c-gpio";
+		scl-gpios = <&gpio0 33 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+		sda-gpios = <&gpio0 32 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+		i2c-gpio,delay-us = <5>;        /* ~100 kHz */
+		#address-cells = <1>;
+		#size-cells = <0>;
+		status = "disabled";
+	};
+
+	thermal-zones {
+		cpu-thermal {
+			polling-delay-passive = <1000>;
+			polling-delay = <5000>;
+			thermal-sensors = <&tsensor 0>;
+
+			trips {
+				cpu_alert: cpu-alert {
+					temperature = <33000>;
+					hysteresis = <2000>;
+					type = "active";
+				};
+
+				cpu_crit: cpu-crit {
+					temperature = <85000>;
+					hysteresis = <5000>;
+					type = "critical";
+				};
+			};
+		};
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
+		dma-coherent;
+
+		liointc0: interrupt-controller@1fe01400 {
+			compatible = "loongson,liointc-2.0";
+			reg = <0x0 0x1fe01400 0x0 0x40>,
+			      <0x0 0x1fe01040 0x0 0x8>,
+			      <0x0 0x1fe01140 0x0 0x8>;
+			reg-names = "main", "isr0", "isr1";
+			interrupt-controller;
+			#interrupt-cells = <2>;
+			interrupt-parent = <&cpuintc>;
+			interrupts = <2>;
+			interrupt-names = "int0";
+			loongson,parent_int_map = <0xffffffff>, /* int0 */
+						  <0x00000000>, /* int1 */
+						  <0x00000000>, /* int2 */
+						  <0x00000000>; /* int3 */
+		};
+
+		liointc1: interrupt-controller@1fe01440 {
+			compatible = "loongson,liointc-2.0";
+			reg = <0x0 0x1fe01440 0x0 0x40>,
+			      <0x0 0x1fe01048 0x0 0x8>,
+			      <0x0 0x1fe01148 0x0 0x8>;
+			reg-names = "main", "isr0", "isr1";
+			interrupt-controller;
+			#interrupt-cells = <2>;
+			interrupt-parent = <&cpuintc>;
+			interrupts = <3>;
+			interrupt-names = "int1";
+			loongson,parent_int_map = <0x00000000>, /* int0 */
+						  <0xffffffff>, /* int1 */
+						  <0x00000000>, /* int2 */
+						  <0x00000000>; /* int3 */
+		};
+
+		chipid@1fe00000 {
+			compatible = "loongson,ls2k-chipid";
+			reg = <0x0 0x1fe00000 0x0 0x30>;
+			little-endian;
+		};
+
+		pctrl: pinctrl@1fe00420 {
+			compatible = "loongson,ls2k-pinctrl";
+			reg = <0x0 0x1fe00420 0x0 0x18>;
+			status = "disabled";
+		};
+
+		clk: clock-controller@1fe00480 {
+			compatible = "loongson,ls2k-clk";
+			reg = <0x0 0x1fe00480 0x0 0x58>;
+			#clock-cells = <1>;
+			clocks = <&ref_100m>;
+			clock-names = "ref_100m";
+			status = "disabled";
+		};
+
+		gpio0: gpio@1fe00500 {
+			compatible = "loongson,ls2k-gpio";
+			reg = <0x0 0x1fe00500 0x0 0x38>;
+			ngpios = <64>;
+			#gpio-cells = <2>;
+			gpio-controller;
+			gpio-ranges = <&pctrl 0x0 0x0 15>,
+				      <&pctrl 16 16 15>,
+				      <&pctrl 32 32 10>,
+				      <&pctrl 44 44 20>;
+			interrupt-parent = <&liointc1>;
+			interrupts = <28 IRQ_TYPE_LEVEL_HIGH>,
+				     <29 IRQ_TYPE_LEVEL_HIGH>,
+				     <30 IRQ_TYPE_LEVEL_HIGH>,
+				     <30 IRQ_TYPE_LEVEL_HIGH>,
+				     <26 IRQ_TYPE_LEVEL_HIGH>,
+				     <26 IRQ_TYPE_LEVEL_HIGH>,
+				     <26 IRQ_TYPE_LEVEL_HIGH>,
+				     <26 IRQ_TYPE_LEVEL_HIGH>,
+				     <26 IRQ_TYPE_LEVEL_HIGH>,
+				     <26 IRQ_TYPE_LEVEL_HIGH>,
+				     <26 IRQ_TYPE_LEVEL_HIGH>,
+				     <26 IRQ_TYPE_LEVEL_HIGH>,
+				     <26 IRQ_TYPE_LEVEL_HIGH>,
+				     <26 IRQ_TYPE_LEVEL_HIGH>,
+				     <26 IRQ_TYPE_LEVEL_HIGH>,
+				     <>,
+				     <26 IRQ_TYPE_LEVEL_HIGH>,
+				     <26 IRQ_TYPE_LEVEL_HIGH>,
+				     <26 IRQ_TYPE_LEVEL_HIGH>,
+				     <26 IRQ_TYPE_LEVEL_HIGH>,
+				     <26 IRQ_TYPE_LEVEL_HIGH>,
+				     <26 IRQ_TYPE_LEVEL_HIGH>,
+				     <26 IRQ_TYPE_LEVEL_HIGH>,
+				     <26 IRQ_TYPE_LEVEL_HIGH>,
+				     <26 IRQ_TYPE_LEVEL_HIGH>,
+				     <26 IRQ_TYPE_LEVEL_HIGH>,
+				     <26 IRQ_TYPE_LEVEL_HIGH>,
+				     <26 IRQ_TYPE_LEVEL_HIGH>,
+				     <26 IRQ_TYPE_LEVEL_HIGH>,
+				     <26 IRQ_TYPE_LEVEL_HIGH>,
+				     <26 IRQ_TYPE_LEVEL_HIGH>,
+				     <26 IRQ_TYPE_LEVEL_HIGH>,
+				     <27 IRQ_TYPE_LEVEL_HIGH>,
+				     <27 IRQ_TYPE_LEVEL_HIGH>,
+				     <27 IRQ_TYPE_LEVEL_HIGH>,
+				     <27 IRQ_TYPE_LEVEL_HIGH>,
+				     <27 IRQ_TYPE_LEVEL_HIGH>,
+				     <>,
+				     <27 IRQ_TYPE_LEVEL_HIGH>,
+				     <27 IRQ_TYPE_LEVEL_HIGH>,
+				     <27 IRQ_TYPE_LEVEL_HIGH>,
+				     <27 IRQ_TYPE_LEVEL_HIGH>,
+				     <>,
+				     <>,
+				     <27 IRQ_TYPE_LEVEL_HIGH>,
+				     <27 IRQ_TYPE_LEVEL_HIGH>,
+				     <27 IRQ_TYPE_LEVEL_HIGH>,
+				     <27 IRQ_TYPE_LEVEL_HIGH>,
+				     <27 IRQ_TYPE_LEVEL_HIGH>,
+				     <27 IRQ_TYPE_LEVEL_HIGH>,
+				     <27 IRQ_TYPE_LEVEL_HIGH>,
+				     <27 IRQ_TYPE_LEVEL_HIGH>,
+				     <27 IRQ_TYPE_LEVEL_HIGH>,
+				     <27 IRQ_TYPE_LEVEL_HIGH>,
+				     <27 IRQ_TYPE_LEVEL_HIGH>,
+				     <27 IRQ_TYPE_LEVEL_HIGH>,
+				     <27 IRQ_TYPE_LEVEL_HIGH>,
+				     <27 IRQ_TYPE_LEVEL_HIGH>,
+				     <27 IRQ_TYPE_LEVEL_HIGH>,
+				     <27 IRQ_TYPE_LEVEL_HIGH>,
+				     <27 IRQ_TYPE_LEVEL_HIGH>,
+				     <27 IRQ_TYPE_LEVEL_HIGH>,
+				     <27 IRQ_TYPE_LEVEL_HIGH>,
+				     <27 IRQ_TYPE_LEVEL_HIGH>;
+		};
+
+		tsensor: thermal-sensor@1fe01500 {
+			compatible = "loongson,ls2k1000-thermal";
+			reg = <0x0 0x1fe01500 0x0 0x30>;
+			interrupt-parent = <&liointc0>;
+			interrupts = <7 IRQ_TYPE_LEVEL_HIGH>;
+			#thermal-sensor-cells = <1>;
+		};
+
+		uart0: serial@1fe20000 {
+			compatible = "ns16550a";
+			reg = <0x0 0x1fe20000 0x0 0x10>;
+			clock-frequency = <125000000>;
+			interrupt-parent = <&liointc0>;
+			interrupts = <0x0 IRQ_TYPE_LEVEL_HIGH>;
+			no-loopback-test;
+			status = "disabled";
+		};
+
+		i2c2: i2c@1fe21000 {
+			compatible = "loongson,ls2k-i2c";
+			reg = <0x0 0x1fe21000 0x0 0x8>;
+			interrupt-parent = <&liointc0>;
+			interrupts = <22 IRQ_TYPE_LEVEL_HIGH>;
+			status = "disabled";
+		};
+
+		i2c3: i2c@1fe21800 {
+			compatible = "loongson,ls2k-i2c";
+			reg = <0x0 0x1fe21800 0x0 0x8>;
+			interrupt-parent = <&liointc0>;
+			interrupts = <23 IRQ_TYPE_LEVEL_HIGH>;
+			status = "disabled";
+		};
+
+		pmc: power-management@1fe27000 {
+			compatible = "loongson,ls2k1000-pmc", "loongson,ls2k0500-pmc", "syscon";
+			reg = <0x0 0x1fe27000 0x0 0x58>;
+			interrupt-parent = <&liointc1>;
+			interrupts = <11 IRQ_TYPE_LEVEL_HIGH>;
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
+		rtc0: rtc@1fe27800 {
+			compatible = "loongson,ls2k1000-rtc";
+			reg = <0x0 0x1fe27800 0x0 0x100>;
+			interrupt-parent = <&liointc1>;
+			interrupts = <8 IRQ_TYPE_LEVEL_HIGH>;
+			status = "disabled";
+		};
+
+		spi0: spi@1fff0220 {
+			compatible = "loongson,ls2k1000-spi";
+			reg = <0x0 0x1fff0220 0x0 0x10>;
+			clocks = <&clk LOONGSON2_BOOT_CLK>;
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
+			bus-range = <0x0 0xff>;
+			ranges = <0x01000000 0x0 0x00008000 0x0 0x18008000 0x0 0x00008000>,
+				 <0x02000000 0x0 0x60000000 0x0 0x60000000 0x0 0x20000000>;
+
+			gmac0: ethernet@3,0 {
+				reg = <0x1800 0x0 0x0 0x0 0x0>;
+				interrupt-parent = <&liointc0>;
+				interrupts = <12 IRQ_TYPE_LEVEL_HIGH>,
+					     <13 IRQ_TYPE_LEVEL_HIGH>;
+				interrupt-names = "macirq", "eth_lpi";
+				status = "disabled";
+			};
+
+			gmac1: ethernet@3,1 {
+				reg = <0x1900 0x0 0x0 0x0 0x0>;
+				interrupt-parent = <&liointc0>;
+				interrupts = <14 IRQ_TYPE_LEVEL_HIGH>,
+					     <15 IRQ_TYPE_LEVEL_HIGH>;
+				interrupt-names = "macirq", "eth_lpi";
+				status = "disabled";
+			};
+
+			ehci0: usb@4,1 {
+				reg = <0x2100 0x0 0x0 0x0 0x0>;
+				interrupt-parent = <&liointc1>;
+				interrupts = <18 IRQ_TYPE_LEVEL_HIGH>;
+				status = "disabled";
+			};
+
+			ohci0: usb@4,2 {
+				reg = <0x2200 0x0 0x0 0x0 0x0>;
+				interrupt-parent = <&liointc1>;
+				interrupts = <19 IRQ_TYPE_LEVEL_HIGH>;
+				status = "disabled";
+			};
+
+			display@6,0 {
+				reg = <0x3000 0x0 0x0 0x0 0x0>;
+				interrupt-parent = <&liointc0>;
+				interrupts = <28 IRQ_TYPE_LEVEL_HIGH>;
+				status = "disabled";
+			};
+
+			hda@7,0 {
+				reg = <0x3800 0x0 0x0 0x0 0x0>;
+				interrupt-parent = <&liointc0>;
+				interrupts = <4 IRQ_TYPE_LEVEL_HIGH>;
+				status = "disabled";
+			};
+
+			sata: sata@8,0 {
+				reg = <0x4000 0x0 0x0 0x0 0x0>;
+				interrupt-parent = <&liointc0>;
+				interrupts = <19 IRQ_TYPE_LEVEL_HIGH>;
+				status = "disabled";
+			};
+
+			pcie@9,0 {
+				reg = <0x4800 0x0 0x0 0x0 0x0>;
+				#address-cells = <3>;
+				#size-cells = <2>;
+				device_type = "pci";
+				#interrupt-cells = <1>;
+				interrupt-map-mask = <0x0 0x0 0x0 0x0>;
+				interrupt-map = <0x0 0x0 0x0 0x0 &liointc1 0x0 IRQ_TYPE_LEVEL_HIGH>;
+				ranges;
+			};
+
+			pcie@a,0 {
+				reg = <0x5000 0x0 0x0 0x0 0x0>;
+				#address-cells = <3>;
+				#size-cells = <2>;
+				device_type = "pci";
+				interrupt-parent = <&liointc1>;
+				#interrupt-cells = <1>;
+				interrupt-map-mask = <0x0 0x0 0x0 0x0>;
+				interrupt-map = <0x0 0x0 0x0 0x0 &liointc1 1 IRQ_TYPE_LEVEL_HIGH>;
+				ranges;
+			};
+
+			pcie@b,0 {
+				reg = <0x5800 0x0 0x0 0x0 0x0>;
+				#address-cells = <3>;
+				#size-cells = <2>;
+				device_type = "pci";
+				interrupt-parent = <&liointc1>;
+				#interrupt-cells = <1>;
+				interrupt-map-mask = <0x0 0x0 0x0 0x0>;
+				interrupt-map = <0x0 0x0 0x0 0x0 &liointc1 2 IRQ_TYPE_LEVEL_HIGH>;
+				ranges;
+			};
+
+			pcie@c,0 {
+				reg = <0x6000 0x0 0x0 0x0 0x0>;
+				#address-cells = <3>;
+				#size-cells = <2>;
+				device_type = "pci";
+				interrupt-parent = <&liointc1>;
+				#interrupt-cells = <1>;
+				interrupt-map-mask = <0x0 0x0 0x0 0x0>;
+				interrupt-map = <0x0 0x0 0x0 0x0 &liointc1 3 IRQ_TYPE_LEVEL_HIGH>;
+				ranges;
+			};
+
+			pcie@d,0 {
+				reg = <0x6800 0x0 0x0 0x0 0x0>;
+				#address-cells = <3>;
+				#size-cells = <2>;
+				device_type = "pci";
+				interrupt-parent = <&liointc1>;
+				#interrupt-cells = <1>;
+				interrupt-map-mask = <0x0 0x0 0x0 0x0>;
+				interrupt-map = <0x0 0x0 0x0 0x0 &liointc1 4 IRQ_TYPE_LEVEL_HIGH>;
+				ranges;
+			};
+
+			pcie@e,0 {
+				reg = <0x7000 0x0 0x0 0x0 0x0>;
+				#address-cells = <3>;
+				#size-cells = <2>;
+				device_type = "pci";
+				interrupt-parent = <&liointc1>;
+				#interrupt-cells = <1>;
+				interrupt-map-mask = <0x0 0x0 0x0 0x0>;
+				interrupt-map = <0x0 0x0 0x0 0x0 &liointc1 5 IRQ_TYPE_LEVEL_HIGH>;
+				ranges;
+			};
+		};
+	};
+};
-- 
2.39.3


