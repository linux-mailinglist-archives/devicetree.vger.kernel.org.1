Return-Path: <devicetree+bounces-2211-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 75A767A9D41
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 21:30:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2AFA0282A6C
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 19:30:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD05E1803A;
	Thu, 21 Sep 2023 19:30:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4FA7C121
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 19:30:11 +0000 (UTC)
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3ECAD1481A
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 12:29:50 -0700 (PDT)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 52E3B864D4;
	Thu, 21 Sep 2023 21:29:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1695324588;
	bh=ee5U+NdLE2mE3qUJboSGfXt4t6IhpxHsXpTIzdvG7oA=;
	h=From:To:Cc:Subject:Date:From;
	b=bukNI2dYEbRpkl5COWX2dAW+/PWygsRhNRLrqfT+L/Bl4hO0sy3r+YzfLFKmGb4hR
	 pwjabDXN4BvZKy/yAJBcsvJUZsG/zqzQUzx/u7oxX+s+zSkUiqmsLwj6ZgDr2JISxT
	 uENofm1HqFjfCtPwbmQF4ov/SjhlibP5G2wdXeLByjhLVzJoJfnFEzsxEgL1zyfTiB
	 ri3LyGO7CKeXVfBcNl3FJYwL/IP496RzRuAkTEd78qquiNksqp/gB3JZag9ZjjUQxs
	 41y+i5WXwbdeQfCka67oqVCaMjxq+ltjqsP0cmxv17ZTCvCXiPxU1T2eO/r4wXM00j
	 VZK525NX89REw==
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Cc: Marek Vasut <marex@denx.de>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Frieder Schrempf <frieder.schrempf@kontron.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	NXP Linux Team <linux-imx@nxp.com>,
	Peng Fan <peng.fan@nxp.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH 1/2] arm64: dts: imx8mp: Update i.MX8MP DHCOM SoM DT to production rev.200
Date: Thu, 21 Sep 2023 21:29:32 +0200
Message-Id: <20230921192933.71639-1-marex@denx.de>
X-Mailer: git-send-email 2.40.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

The current imx8mp-dhcom-som.dtsi describes prototype rev.100 SoM,
update the DT to describe production rev.200 SoM which brings the
following changes:
- Fast SoC GPIOs exposed on the SoM edge connector
- Slow GPIOs like component resets moved to I2C GPIO expander
- ADC upgraded from TLA2024 to ADS1015 with conversion interrupt
- EEPROM size increased from 256 B to 4 kiB

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Frieder Schrempf <frieder.schrempf@kontron.de>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: Peng Fan <peng.fan@nxp.com>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
---
 .../boot/dts/freescale/imx8mp-dhcom-som.dtsi  | 145 +++++++++++-------
 1 file changed, 90 insertions(+), 55 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi
index 4582a0bbe3726..d8963f32ec84c 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi
@@ -25,9 +25,7 @@ memory@40000000 {
 
 	reg_eth_vio: regulator-eth-vio {
 		compatible = "regulator-fixed";
-		gpio = <&gpio2 10 GPIO_ACTIVE_LOW>;
-		pinctrl-0 = <&pinctrl_enet_vio>;
-		pinctrl-names = "default";
+		gpio = <&ioexp 2 GPIO_ACTIVE_LOW>;
 		regulator-always-on;
 		regulator-boot-on;
 		regulator-min-microvolt = <3300000>;
@@ -60,7 +58,7 @@ reg_vdd_3p3v_awo: regulator-vdd-3p3v-awo {	/* VDD_3V3_AWO */
 
 	wlan_pwrseq: wifi-pwrseq {
 		compatible = "mmc-pwrseq-simple";
-		reset-gpios = <&gpio1 13 GPIO_ACTIVE_LOW>;
+		reset-gpios = <&ioexp 1 GPIO_ACTIVE_LOW>;
 	};
 };
 
@@ -117,7 +115,7 @@ ethphy0f: ethernet-phy@0 { /* SMSC LAN8740Ai */
 			reg = <0>;
 			reset-assert-us = <1000>;
 			reset-deassert-us = <1000>;
-			reset-gpios = <&gpio3 20 GPIO_ACTIVE_LOW>;
+			reset-gpios = <&ioexp 4 GPIO_ACTIVE_LOW>;
 			/* Non-default PHY population option. */
 			status = "disabled";
 		};
@@ -133,7 +131,7 @@ ethphy0g: ethernet-phy@5 { /* Micrel KSZ9131RNXI */
 			reg = <5>;
 			reset-assert-us = <1000>;
 			reset-deassert-us = <1000>;
-			reset-gpios = <&gpio3 20 GPIO_ACTIVE_LOW>;
+			reset-gpios = <&ioexp 4 GPIO_ACTIVE_LOW>;
 			/* Default PHY population option. */
 			status = "okay";
 		};
@@ -355,8 +353,9 @@ ldo5: LDO5 {	/* NVCC_SD2 */
 	};
 
 	adc@48 {
-		compatible = "ti,tla2024";
+		compatible = "ti,ads1015";
 		reg = <0x48>;
+		interrupts-extended = <&ioexp 7 IRQ_TYPE_EDGE_FALLING>;
 		#address-cells = <1>;
 		#size-cells = <0>;
 
@@ -403,25 +402,42 @@ touchscreen@49 {
 	};
 
 	eeprom0: eeprom@50 {	/* EEPROM with EQoS MAC address */
-		compatible = "atmel,24c02";
-		pagesize = <16>;
+		compatible = "atmel,24c32";	/* M24C32-D */
+		pagesize = <32>;
 		reg = <0x50>;
 	};
 
 	rv3032: rtc@51 {
 		compatible = "microcrystal,rv3032";
 		reg = <0x51>;
-		interrupts-extended = <&gpio5 5 IRQ_TYPE_LEVEL_LOW>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&pinctrl_rtc>;
+		interrupts-extended = <&ioexp 3 IRQ_TYPE_EDGE_FALLING>;
 		wakeup-source;
 	};
 
 	eeprom1: eeprom@53 {	/* EEPROM with FEC MAC address */
-		compatible = "atmel,24c02";
-		pagesize = <16>;
+		compatible = "atmel,24c32";	/* M24C32-D */
+		pagesize = <32>;
 		reg = <0x53>;
 	};
+
+	ioexp: gpio@74 {
+		compatible = "nxp,pca9539";
+		reg = <0x74>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		interrupts-extended = <&gpio3 20 IRQ_TYPE_LEVEL_LOW>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_ioexp>;
+		wakeup-source;
+
+		gpio-line-names =
+			"BT_REG_EN", "WL_REG_EN", "VIO_SWITCHED_#EN", "RTC_#INT",
+			"ENET_QOS_#RST", "RGB_OSZ_ENABLE", "USB1_ID", "ADC_ALTER_RDY",
+			"DHCOM-W", "DHCOM-V", "DHCOM-U", "DHCOM-T",
+			"BT_HOST_WAKE", "BT_DEV_WAKE", "", "";
+	};
 };
 
 &i2c4 {
@@ -493,10 +509,8 @@ &uart2 {
 	assigned-clock-rates = <80000000>;
 
 	bluetooth {
-		pinctrl-names = "default";
-		pinctrl-0 = <&pinctrl_uart2_bt>;
 		compatible = "cypress,cyw4373a0-bt";
-		shutdown-gpios = <&gpio1 12 GPIO_ACTIVE_HIGH>;
+		shutdown-gpios = <&ioexp 0 GPIO_ACTIVE_HIGH>;
 		max-speed = <4000000>;
 	};
 };
@@ -523,8 +537,6 @@ &usb3_0 {
 };
 
 &usb_dwc3_0 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_usb0_vbus>;
 	dr_mode = "otg";
 	status = "okay";
 };
@@ -610,8 +622,9 @@ &pinctrl_dhcom_a &pinctrl_dhcom_b &pinctrl_dhcom_c
 		     &pinctrl_dhcom_d &pinctrl_dhcom_e &pinctrl_dhcom_f
 		     &pinctrl_dhcom_g &pinctrl_dhcom_h &pinctrl_dhcom_i
 		     &pinctrl_dhcom_j &pinctrl_dhcom_k &pinctrl_dhcom_l
-		     /* GPIO_M is connected to CLKOUT1 */
-		     &pinctrl_dhcom_int>;
+		     &pinctrl_dhcom_m &pinctrl_dhcom_n &pinctrl_dhcom_o
+		     &pinctrl_dhcom_p &pinctrl_dhcom_q &pinctrl_dhcom_r
+		     &pinctrl_dhcom_s &pinctrl_dhcom_int>;
 	pinctrl-names = "default";
 
 	pinctrl_dhcom_a: dhcom-a-grp {
@@ -698,6 +711,55 @@ MX8MP_IOMUXC_GPIO1_IO07__GPIO1_IO07		0x2
 		>;
 	};
 
+	pinctrl_dhcom_m: dhcom-m-grp {
+		fsl,pins = <
+			/* CSIx_MCLK */
+			MX8MP_IOMUXC_SPDIF_EXT_CLK__GPIO5_IO05		0x2
+		>;
+	};
+
+	pinctrl_dhcom_n: dhcom-n-grp {
+		fsl,pins = <
+			/* CSI2_D3- */
+			MX8MP_IOMUXC_SD1_DATA7__GPIO2_IO09		0x2
+		>;
+	};
+
+	pinctrl_dhcom_o: dhcom-o-grp {
+		fsl,pins = <
+			/* CSI2_D3+ */
+			MX8MP_IOMUXC_SD1_DATA6__GPIO2_IO08		0x2
+		>;
+	};
+
+	pinctrl_dhcom_p: dhcom-p-grp {
+		fsl,pins = <
+			/* CSI2_D2- */
+			MX8MP_IOMUXC_SD1_RESET_B__GPIO2_IO10		0x2
+		>;
+	};
+
+	pinctrl_dhcom_q: dhcom-q-grp {
+		fsl,pins = <
+			/* CSI2_D2+ */
+			MX8MP_IOMUXC_GPIO1_IO13__GPIO1_IO13		0x2
+		>;
+	};
+
+	pinctrl_dhcom_r: dhcom-r-grp {
+		fsl,pins = <
+			/* CSI2_D1- */
+			MX8MP_IOMUXC_GPIO1_IO12__GPIO1_IO12		0x2
+		>;
+	};
+
+	pinctrl_dhcom_s: dhcom-s-grp {
+		fsl,pins = <
+			/* CSI2_D1+ */
+			MX8MP_IOMUXC_GPIO1_IO10__GPIO1_IO10		0x2
+		>;
+	};
+
 	pinctrl_dhcom_int: dhcom-int-grp {
 		fsl,pins = <
 			/* INT_HIGHEST_PRIO */
@@ -771,16 +833,8 @@ MX8MP_IOMUXC_ENET_TD2__CCM_ENET_QOS_CLOCK_GENERATE_REF_CLK	0x4000001f
 		>;
 	};
 
-	pinctrl_enet_vio: dhcom-enet-vio-grp {
-		fsl,pins = <
-			MX8MP_IOMUXC_SD1_RESET_B__GPIO2_IO10		0x22
-		>;
-	};
-
 	pinctrl_ethphy0: dhcom-ethphy0-grp {
 		fsl,pins = <
-			/* ENET_QOS_#RST Reset */
-			MX8MP_IOMUXC_SAI5_RXC__GPIO3_IO20		0x22
 			/* ENET_QOS_#INT Interrupt */
 			MX8MP_IOMUXC_SAI5_RXFS__GPIO3_IO19		0x22
 		>;
@@ -906,6 +960,13 @@ MX8MP_IOMUXC_HDMI_DDC_SDA__GPIO3_IO27		0x84
 		>;
 	};
 
+	pinctrl_ioexp: dhcom-ioexp-grp {
+		fsl,pins = <
+			/* #GPIO_EXP_INT */
+			MX8MP_IOMUXC_SAI5_RXC__GPIO3_IO20		0x22
+		>;
+	};
+
 	pinctrl_pmic: dhcom-pmic-grp {
 		fsl,pins = <
 			/* PMIC_nINT */
@@ -919,13 +980,6 @@ MX8MP_IOMUXC_GPIO1_IO01__PWM1_OUT		0x6
 		>;
 	};
 
-	pinctrl_rtc: dhcom-rtc-grp {
-		fsl,pins = <
-			/* RTC_#INT Interrupt */
-			MX8MP_IOMUXC_SPDIF_EXT_CLK__GPIO5_IO05		0x40000080
-		>;
-	};
-
 	pinctrl_tc9595: dhcom-tc9595-grp {
 		fsl,pins = <
 			/* RESET_DSIBRIDGE */
@@ -971,13 +1025,6 @@ MX8MP_IOMUXC_SD1_DATA5__UART2_DCE_CTS		0x49
 		>;
 	};
 
-	pinctrl_uart2_bt: dhcom-uart2-bt-grp {
-		fsl,pins = <
-			/* BT_REG_EN */
-			MX8MP_IOMUXC_GPIO1_IO12__GPIO1_IO12		0x144
-		>;
-	};
-
 	pinctrl_uart3: dhcom-uart3-grp {
 		fsl,pins = <
 			MX8MP_IOMUXC_ECSPI1_SCLK__UART3_DCE_RX		0x49
@@ -994,12 +1041,6 @@ MX8MP_IOMUXC_UART4_TXD__UART4_DCE_TX		0x49
 		>;
 	};
 
-	pinctrl_usb0_vbus: dhcom-usb0-grp {
-		fsl,pins = <
-			MX8MP_IOMUXC_GPIO1_IO10__USB1_OTG_ID		0x0
-		>;
-	};
-
 	pinctrl_usb1_vbus: dhcom-usb1-grp {
 		fsl,pins = <
 			MX8MP_IOMUXC_GPIO1_IO14__USB2_OTG_PWR		0x6
@@ -1015,8 +1056,6 @@ MX8MP_IOMUXC_SD1_DATA0__USDHC1_DATA0		0x1d0
 			MX8MP_IOMUXC_SD1_DATA1__USDHC1_DATA1		0x1d0
 			MX8MP_IOMUXC_SD1_DATA2__USDHC1_DATA2		0x1d0
 			MX8MP_IOMUXC_SD1_DATA3__USDHC1_DATA3		0x1d0
-			/* WL_REG_EN */
-			MX8MP_IOMUXC_GPIO1_IO13__GPIO1_IO13		0x144
 		>;
 	};
 
@@ -1028,8 +1067,6 @@ MX8MP_IOMUXC_SD1_DATA0__USDHC1_DATA0		0x1d4
 			MX8MP_IOMUXC_SD1_DATA1__USDHC1_DATA1		0x1d4
 			MX8MP_IOMUXC_SD1_DATA2__USDHC1_DATA2		0x1d4
 			MX8MP_IOMUXC_SD1_DATA3__USDHC1_DATA3		0x1d4
-			/* WL_REG_EN */
-			MX8MP_IOMUXC_GPIO1_IO13__GPIO1_IO13		0x144
 		>;
 	};
 
@@ -1041,8 +1078,6 @@ MX8MP_IOMUXC_SD1_DATA0__USDHC1_DATA0		0x1d6
 			MX8MP_IOMUXC_SD1_DATA1__USDHC1_DATA1		0x1d6
 			MX8MP_IOMUXC_SD1_DATA2__USDHC1_DATA2		0x1d6
 			MX8MP_IOMUXC_SD1_DATA3__USDHC1_DATA3		0x1d6
-			/* WL_REG_EN */
-			MX8MP_IOMUXC_GPIO1_IO13__GPIO1_IO13		0x144
 		>;
 	};
 
-- 
2.40.1


