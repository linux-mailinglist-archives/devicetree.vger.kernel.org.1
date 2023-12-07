Return-Path: <devicetree+bounces-22779-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 02969808B63
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 16:05:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 86F07B20D33
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 15:05:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0560644389;
	Thu,  7 Dec 2023 15:05:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=hugovil.com header.i=@hugovil.com header.b="avp5YckG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.hugovil.com (mail.hugovil.com [162.243.120.170])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B4F5510D1;
	Thu,  7 Dec 2023 07:05:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=hugovil.com
	; s=x; h=Subject:Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Cc:To
	:From:subject:date:message-id:reply-to;
	bh=9xk7eqmQQbP0qXxNQwUcuRhbhRaYrmKwNtQD6VG5v0A=; b=avp5YckG8I9xwQ0PmnVTo+0NHP
	4kVg+KdebEvBMAVADZOp5PuaOeluo9OZGAUVVc1E7kCsx/AL8r3AumvfWagThdwcFMAGjWK47n2XA
	rQ5Lkkz8LY/tWu96N4DLOkUzoHAUDNaaCV44CUH1hncC6X6BfKnrNx7OYQTbVc6N4WBY=;
Received: from modemcable168.174-80-70.mc.videotron.ca ([70.80.174.168]:59044 helo=pettiford.lan)
	by mail.hugovil.com with esmtpa (Exim 4.92)
	(envelope-from <hugo@hugovil.com>)
	id 1rBFwM-0006Zh-5o; Thu, 07 Dec 2023 10:05:27 -0500
From: Hugo Villeneuve <hugo@hugovil.com>
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	festevam@gmail.com,
	linux-imx@nxp.com,
	leoyang.li@nxp.com,
	robh@kernel.org
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	hugo@hugovil.com,
	Hugo Villeneuve <hvilleneuve@dimonoff.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Thu,  7 Dec 2023 10:05:19 -0500
Message-Id: <20231207150519.1264808-4-hugo@hugovil.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231207150519.1264808-1-hugo@hugovil.com>
References: <20231207150519.1264808-1-hugo@hugovil.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 70.80.174.168
X-SA-Exim-Mail-From: hugo@hugovil.com
X-Spam-Level: 
Subject: [PATCH v2 3/3] arm64: dts: freescale: introduce dimonoff-gateway-evk board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on mail.hugovil.com)

From: Hugo Villeneuve <hvilleneuve@dimonoff.com>

The Dimonoff gateway EVK board is based on a Variscite
VAR-SOM-NANO, with a NXP MX8MN nano CPU and also based on a Symphony
mx8mn EVK.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Hugo Villeneuve <hvilleneuve@dimonoff.com>
---
 arch/arm64/boot/dts/freescale/Makefile        |   1 +
 .../freescale/imx8mn-dimonoff-gateway-evk.dts | 160 ++++++++++++++++++
 2 files changed, 161 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mn-dimonoff-gateway-evk.dts

diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
index d22e4f4f886d..1f29215ea9bb 100644
--- a/arch/arm64/boot/dts/freescale/Makefile
+++ b/arch/arm64/boot/dts/freescale/Makefile
@@ -97,6 +97,7 @@ dtb-$(CONFIG_ARCH_MXC) += imx8mm-tqma8mqml-mba8mx-lvds-tm070jvhg33.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mn-beacon-kit.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mn-bsh-smm-s2.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mn-bsh-smm-s2pro.dtb
+dtb-$(CONFIG_ARCH_MXC) += imx8mn-dimonoff-gateway-evk.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mn-evk.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mn-ddr3l-evk.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mn-ddr4-evk.dtb
diff --git a/arch/arm64/boot/dts/freescale/imx8mn-dimonoff-gateway-evk.dts b/arch/arm64/boot/dts/freescale/imx8mn-dimonoff-gateway-evk.dts
new file mode 100644
index 000000000000..6f9b82958b96
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8mn-dimonoff-gateway-evk.dts
@@ -0,0 +1,160 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright 2022 DimOnOff
+ */
+
+/dts-v1/;
+
+#include <dt-bindings/usb/pd.h>
+#include "imx8mn-var-som-symphony.dts"
+
+/ {
+	model = "DimOnOff Gateway EVK board";
+	compatible = "dimonoff,gateway-evk", "variscite,var-som-mx8mn",
+		     "fsl,imx8mn";
+
+	/*
+	 * U30 FPF2193 regulator.
+	 * Source = BASE_PER_3V3 = SOM_3V3 (COM pin 49).
+	 */
+	reg_disp_3v3: regulator-disp-3v3 {
+		compatible = "regulator-fixed";
+		regulator-name = "Display 3V3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+		regulator-boot-on;
+	};
+
+	gpio-keys {
+		compatible = "gpio-keys";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_gpio_keys>;
+
+		key-enter {
+			label = "enter";
+			gpios = <&gpio1 8 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_ENTER>;
+			wakeup-source;
+		};
+	};
+
+	/* Bourns PEC12R rotary encoder, 24 steps. */
+	rotary: rotary-encoder {
+		compatible = "rotary-encoder";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_rotary>;
+		gpios = <&gpio5 12 GPIO_ACTIVE_LOW>, /* A */
+			<&gpio5 13 GPIO_ACTIVE_LOW>; /* B */
+		linux,axis = <0>; /* REL_X */
+		rotary-encoder,encoding = "gray";
+		rotary-encoder,relative-axis;
+	};
+};
+
+/* Disable Asynchronous Sample Rate Converter (audio) */
+&easrc {
+	status = "disabled";
+};
+
+&ecspi1 {
+	/* Resistive touch controller */
+	/delete-node/ touchscreen@0;
+};
+
+&gpu {
+	status = "disabled";
+};
+
+&i2c2 {
+	adc@48 {
+		compatible = "ti,ads7924";
+		reg = <0x48>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_adc>;
+		vref-supply = <&reg_disp_3v3>;
+		reset-gpios = <&gpio5 5 GPIO_ACTIVE_LOW>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		channel@0 {
+			reg = <0>;
+			label = "Pot0";
+		};
+		channel@1 {
+			reg = <1>;
+			label = "Pot1";
+		};
+		channel@2 {
+			reg = <2>;
+			label = "Pot2";
+		};
+		channel@3 {
+			reg = <3>;
+			label = "Pot3";
+		};
+	};
+
+	rtc@51 {
+		compatible = "nxp,pcf2129";
+		reg = <0x51>;
+		reset-source; /* For watchdog. */
+	};
+
+	rtc@53 {
+		compatible = "nxp,pcf2131";
+		reg = <0x53>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_rtc>;
+		reset-source; /* For watchdog. */
+		interrupt-parent = <&gpio5>;
+		interrupts = <10 IRQ_TYPE_EDGE_FALLING>; /* J17.6 on EVK */
+	};
+};
+
+&i2c3 {
+	touchscreen@38 {
+		status = "disabled";
+	};
+
+	codec@1a {
+		status = "disabled";
+	};
+
+	/* DS1337 RTC module */
+	rtc@68 {
+		status = "disabled";
+	};
+};
+
+&sai5 {
+	status = "disabled";
+};
+
+&iomuxc {
+	pinctrl_gpio_keys: gpiokeysgrp {
+		fsl,pins = <
+			MX8MN_IOMUXC_GPIO1_IO08_GPIO1_IO8	0xc6
+		>;
+	};
+
+	pinctrl_rotary: rotarygrp {
+		fsl,pins = <
+			MX8MN_IOMUXC_ECSPI2_MISO_GPIO5_IO12	0x00000156
+			MX8MN_IOMUXC_ECSPI2_SS0_GPIO5_IO13	0x00000156
+		>;
+	};
+
+	pinctrl_adc: adcgrp {
+		fsl,pins = <
+			MX8MN_IOMUXC_SPDIF_EXT_CLK_GPIO5_IO5	0x00000156
+		>;
+	};
+
+	pinctrl_rtc: rtcgrp {
+		fsl,pins = <
+			MX8MN_IOMUXC_ECSPI2_SCLK_GPIO5_IO10	0x00000156
+			MX8MN_IOMUXC_ECSPI2_MOSI_GPIO5_IO11	0x00000156
+		>;
+	};
+};
-- 
2.39.2


