Return-Path: <devicetree+bounces-255708-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A1E47D26457
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 18:19:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 171FF3050683
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 17:12:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 254EB3A8FED;
	Thu, 15 Jan 2026 17:12:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=antispam.mailspamprotection.com header.i=@antispam.mailspamprotection.com header.b="01RyiZj1";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=valla.it header.i=@valla.it header.b="b1iS/RdZ"
X-Original-To: devicetree@vger.kernel.org
Received: from delivery.antispam.mailspamprotection.com (delivery.antispam.mailspamprotection.com [185.56.87.0])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EBE63B8BC0;
	Thu, 15 Jan 2026 17:12:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=185.56.87.0
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768497124; cv=pass; b=l5h/efFkD2W7Vu8rYvBeUrwukrUz+wh6zEP8G1h+4Nh70E0URUpJs9+dv2iXKOgO4j5OxEEw78chpuiLmvdi6v8117mdoki0G0yR66AUMBF0zqZ8lEay73UfCgHS5ibA8vtw73VO0eJ8lEdUtRrmuus2Gi8cvlBIQWekUmnaTzo=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768497124; c=relaxed/simple;
	bh=UDNJN6h9z20eAdQX41sTSOjvbFWI2ZO13KG6s3qqNlY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=j8mg1Iv7uOF8FsIjj+3ofqPQramUqZ6/XgO7HD2xhJPIa+6VPnT1UBMt6EUcUwWoxBk/kCL390Z1/zu4+xvDLRfqfeLTqy/eerY0PGl1zlgfybzA3vkMsCJPOBpbg7wlyPbbHv36Ry2b0fNeue1/YmQwUM942gnRPorVmdreEZ8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=valla.it; spf=pass smtp.mailfrom=valla.it; dkim=pass (1024-bit key) header.d=antispam.mailspamprotection.com header.i=@antispam.mailspamprotection.com header.b=01RyiZj1; dkim=pass (1024-bit key) header.d=valla.it header.i=@valla.it header.b=b1iS/RdZ; arc=pass smtp.client-ip=185.56.87.0
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=valla.it
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=valla.it
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=outgoing.instance-europe-west4-q1tm.prod.antispam.mailspamprotection.com; s=arckey; t=1768497122;
	 b=Kro2covU5Iflprj+iTfsHpH3xbwEFujf8pUIQjAMVc+348lpAVtJ11P+6hMRcfyZvNXVAjr1MZ
	  oygyD/RzlADxTJ/+ePW+p1+8a44NPbD98pZ4jsZV1wr3ZueON65oDoZ5MC8uQfPi68ozu091CF
	  Bxq/4ZVQLa9CPUn33Tywmcbt3uPfzpFWR1Ls18ZLKVgWB/Gigxo1FKMxHpHOiH7YWAK6zvrsi+
	  NozJcnqfHxhVQ4m9qCz+qkgbRJOpIAP80TMuiLvrBsjAtf3nFLGjfcIbsEhbm7eeHrm3qnCK5V
	  bNGTov7PsOgT4hltbfaVAt1+oiJNST5T9aqIWK2S4fNpag==;
ARC-Authentication-Results: i=1; outgoing.instance-europe-west4-q1tm.prod.antispam.mailspamprotection.com; smtp.remote-ip=35.214.173.214;
	iprev=pass (214.173.214.35.bc.googleusercontent.com) smtp.remote-ip=35.214.173.214;
	auth=pass (LOGIN) smtp.auth=esm19.siteground.biz;
	dkim=pass header.d=valla.it header.s=default header.a=rsa-sha256;
	arc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed; d=outgoing.instance-europe-west4-q1tm.prod.antispam.mailspamprotection.com; s=arckey; t=1768497122;
	bh=UDNJN6h9z20eAdQX41sTSOjvbFWI2ZO13KG6s3qqNlY=;
	h=Cc:To:Message-ID:Content-Transfer-Encoding:Content-Type:MIME-Version:
	  Subject:Date:From:DKIM-Signature:DKIM-Signature;
	b=svaRtLzub3xMFOitxun08accbNdGkWwAslXEmCU5CsyX/Nwp7PYT5cXz8pFPIQeNRFs+e1CkWr
	  /SA+4zuwK10f6pOH/6Y1OtCGU1NK/rR2WDeSAQW7MkLxtSdedqbHWK+/QRBzD1hjlAzb1jsEOH
	  OzaUxmdAvzNUOsMicoJY1PkCbVPU67G5DRXIKr14MZbg8BCUV9pdAWhNDgS+x2A3FYVmCmkOOd
	  4dh2u6SmHHAut2Z5GMwZRnX3fG0Tk3QzJb9/6NzLbBT3tK+X3NCfR4k/EXG2WZfJ+xGNHWBeoT
	  7Z3+fwaZv956k2+8v9v9N7jQa3pFYc3nl5xt8ZgGaPSdQA==;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=antispam.mailspamprotection.com; s=default; h=CFBL-Feedback-ID:CFBL-Address
	:Cc:To:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject
	:Date:From:Reply-To:List-Unsubscribe;
	bh=UbXNxa+iA/ps3lkeOKk9nvJHBlfYpEGoGtY/DDNTVqI=; b=01RyiZj13VWdfJoUeie4s58uF6
	rhjx124hxr6S2CyNcLZy7+PQXrbEcHONUrphtyHSHBS8Lg5Wl1C/nPwh35sWxQ75D4Eeox9r15f9G
	gsgg6sqghuea96RJ43NHRk5ps9GuCoLYdTNIsGoXb1f+hm0+j5qx8GKa31EMqjxX4nKI=;
Received: from 214.173.214.35.bc.googleusercontent.com ([35.214.173.214] helo=esm19.siteground.biz)
	by instance-europe-west4-q1tm.prod.antispam.mailspamprotection.com with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.98.1)
	(envelope-from <francesco@valla.it>)
	id 1vgQsx-0000000AoF5-1wZS;
	Thu, 15 Jan 2026 17:11:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=valla.it;
	s=default; h=Cc:To:Subject:Date:From:list-help:list-unsubscribe:
	list-subscribe:list-post:list-owner:list-archive;
	bh=UbXNxa+iA/ps3lkeOKk9nvJHBlfYpEGoGtY/DDNTVqI=; b=b1iS/RdZ4Id4/cGi/TGuWgR2X+
	97h8limaBqXWT/Yn+7W7KxiHUi+5iGe6acwH7ZP3ipqvkrYuR/Jn/zkPtEhLbu7J2wK/XgOLZCl6Z
	51gx3tb/JNot7u88E0JVrJEiTzBPsSbps07rPofIwC32avnFupWhh+UeMD2mGAZFphEs=;
Received: from [95.248.141.113] (port=64273 helo=[192.168.178.65])
	by esm19.siteground.biz with essmtpa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.99.1)
	(envelope-from <francesco@valla.it>)
	id 1vgQsq-00000000Ee3-1WSg;
	Thu, 15 Jan 2026 17:11:44 +0000
From: Francesco Valla <francesco@valla.it>
Date: Thu, 15 Jan 2026 18:11:34 +0100
Subject: [PATCH] arm64: dts: imx93-11x11-frdm: enable additional devices
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260115-imx93_devices-v1-1-b2c840cafa2e@valla.it>
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/x2MQQqAIBAAvxJ7TnA1JPtKRFRutYcsFEIQ/550H
 JiZDJECU4ShyRDo5ci3r4BtA9u5+IMEu8qgpDISsRN8JatnV9WNolhsT4imM3rVUJsn0M7p/41
 TKR9vEzEUXwAAAA==
X-Change-ID: 20260114-imx93_devices-a98e116463b3
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, Daniel Baluta <daniel.baluta@nxp.com>
Cc: devicetree@vger.kernel.org, imx@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Francesco Valla <francesco@valla.it>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=7269; i=francesco@valla.it;
 h=from:subject:message-id; bh=UDNJN6h9z20eAdQX41sTSOjvbFWI2ZO13KG6s3qqNlY=;
 b=owGbwMvMwCX2aH1OUIzHTgbG02pJDJmZ8ucD/y+NXH3wWu6HaqPQea/v/QjJeJeh9Yhfdmllp
 Vgiy/KzHaUsDGJcDLJiiiwh627c2zPX/FvaBsZHMHNYmUCGMHBxCsBEDL0Z/nAdKtjk4b6AZbLU
 jNOxRRHT8/qnHpSs9Te4n716grXgNimGv6IdbaXt1z2//1p5VzVrxy3R1x6Ne05fkQkXi238mPV
 OkB8A
X-Developer-Key: i=francesco@valla.it; a=openpgp;
 fpr=CC70CBC9AA13257C6CCED8669601767CA07CA0EA
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - esm19.siteground.biz
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - valla.it
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-SGantispam-id: 7b4717408f8d9719738a20951ddfbb2a
AntiSpam-DLS: false
AntiSpam-DLSP: 
AntiSpam-DLSRS: 
AntiSpam-TS: 1.0
CFBL-Address: feedback@antispam.mailspamprotection.com; report=arf
CFBL-Feedback-ID: 1vgQsx-0000000AoF5-1wZS-feedback@antispam.mailspamprotection.com
Authentication-Results: outgoing.instance-europe-west4-q1tm.prod.antispam.mailspamprotection.com;
	iprev=pass (214.173.214.35.bc.googleusercontent.com) smtp.remote-ip=35.214.173.214;
	auth=pass (LOGIN) smtp.auth=esm19.siteground.biz;
	dkim=pass header.d=valla.it header.s=default header.a=rsa-sha256;
	arc=none

Enable additional devices on the i.MX93 FRDM board:

  - CAN port and associated transceiver
  - Bluetooth portion of the IW612 chipset
  - WiFi SDIO port
  - user buttons

The WiFi portion of the on-board IW612 chipset is still not supported
upstream, but since SDIO is a discoverable bus it will be probed once it
is.

Signed-off-by: Francesco Valla <francesco@valla.it>
---
Applies on top of [0].

WiFi was tested using the nxpwifi driver proposed in [1].

[0] https://lore.kernel.org/all/20260113075002.561453-1-daniel.baluta@nxp.com/
[1] https://lore.kernel.org/all/20251205065545.3325032-1-jeff.chen_1@nxp.com/

Reagrds,
Francesco
---
 arch/arm64/boot/dts/freescale/imx93-11x11-frdm.dts | 152 +++++++++++++++++++++
 1 file changed, 152 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx93-11x11-frdm.dts b/arch/arm64/boot/dts/freescale/imx93-11x11-frdm.dts
index 5bb6ae0d154a655283295b6902fc29bf6f744d5c..bd14ba28690c081817111aaabef12fb56a7c56a4 100644
--- a/arch/arm64/boot/dts/freescale/imx93-11x11-frdm.dts
+++ b/arch/arm64/boot/dts/freescale/imx93-11x11-frdm.dts
@@ -9,6 +9,7 @@ / {
 	model = "NXP i.MX93 11X11 FRDM board";
 
 	aliases {
+		can0 = &flexcan2;
 		ethernet0 = &fec;
 		ethernet1 = &eqos;
 		i2c0 = &lpi2c1;
@@ -18,12 +19,40 @@ aliases {
 		mmc1 = &usdhc2; /* uSD */
 		rtc0 = &pcf2131;
 		serial0 = &lpuart1;
+		serial4 = &lpuart5;
 	};
 
 	chosen {
 		stdout-path = &lpuart1;
 	};
 
+	flexcan2_phy: can-phy {
+		compatible = "nxp,tja1051";
+		#phy-cells = <0>;
+		max-bitrate = <5000000>;
+		silent-gpios = <&pcal6524 23 GPIO_ACTIVE_HIGH>;
+	};
+
+	gpio-keys {
+		compatible = "gpio-keys";
+
+		button-k2 {
+			label = "Button K2";
+			linux,code = <BTN_1>;
+			gpios = <&pcal6524 5 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>;
+			interrupt-parent = <&pcal6524>;
+			interrupts = <5 IRQ_TYPE_EDGE_FALLING>;
+		};
+
+		button-k3 {
+			label = "Button K3";
+			linux,code = <BTN_2>;
+			gpios = <&pcal6524 6 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>;
+			interrupt-parent = <&pcal6524>;
+			interrupts = <6 IRQ_TYPE_EDGE_FALLING>;
+		};
+	};
+
 	reg_usdhc2_vmmc: regulator-usdhc2 {
 		compatible = "regulator-fixed";
 		off-on-delay-us = <12000>;
@@ -37,6 +66,16 @@ reg_usdhc2_vmmc: regulator-usdhc2 {
 		enable-active-high;
 	};
 
+	reg_usdhc3_vmmc: regulator-usdhc3 {
+		compatible = "regulator-fixed";
+		regulator-name = "VPCIe_3V3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		startup-delay-us = <20000>;
+		gpio = <&pcal6524 13 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
+
 	reserved-memory {
 		ranges;
 		#address-cells = <2>;
@@ -88,6 +127,11 @@ sound-mqs {
 		audio-cpu = <&sai1>;
 		audio-codec = <&mqs1>;
 	};
+
+	usdhc3_pwrseq: mmc-pwrseq {
+		compatible = "mmc-pwrseq-simple";
+		reset-gpios = <&pcal6524 12 GPIO_ACTIVE_LOW>;
+	};
 };
 
 &adc1 {
@@ -157,11 +201,27 @@ ethphy2: ethernet-phy@2 {
 	};
 };
 
+&flexcan2 {
+	phys = <&flexcan2_phy>;
+	pinctrl-0 = <&pinctrl_flexcan2>;
+	pinctrl-1 = <&pinctrl_flexcan2_sleep>;
+	pinctrl-names = "default", "sleep";
+	status = "okay";
+};
+
 &lpi2c1 {
 	clock-frequency = <400000>;
 	pinctrl-0 = <&pinctrl_lpi2c1>;
 	pinctrl-names = "default";
 	status = "okay";
+
+	pcal6408: gpio@20 {
+		compatible = "nxp,pcal6408";
+		reg = <0x20>;
+		#gpio-cells = <2>;
+		gpio-controller;
+		reset-gpios = <&pcal6524 20 GPIO_ACTIVE_LOW>;
+	};
 };
 
 &lpi2c2 {
@@ -322,6 +382,21 @@ &lpuart1 { /* console */
 	status = "okay";
 };
 
+&lpuart5 {
+	pinctrl-0 = <&pinctrl_uart5>;
+	pinctrl-names = "default";
+	status = "okay";
+
+	uart-has-rtscts;
+
+	bluetooth {
+		compatible = "nxp,88w8987-bt";
+		device-wakeup-gpios = <&pcal6408 3 GPIO_ACTIVE_HIGH>;
+		reset-gpios = <&pcal6524 19 GPIO_ACTIVE_LOW>;
+		vcc-supply = <&reg_usdhc3_vmmc>;
+	};
+};
+
 &mqs1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_mqs1>;
@@ -394,6 +469,20 @@ &usdhc2 {
 	status = "okay";
 };
 
+&usdhc3 {
+	bus-width = <4>;
+	keep-power-in-suspend;
+	mmc-pwrseq = <&usdhc3_pwrseq>;
+	non-removable;
+	pinctrl-0 = <&pinctrl_usdhc3>;
+	pinctrl-1 = <&pinctrl_usdhc3_100mhz>;
+	pinctrl-2 = <&pinctrl_usdhc3_200mhz>;
+	pinctrl-3 = <&pinctrl_usdhc3_sleep>;
+	pinctrl-names = "default", "state_100mhz", "state_200mhz", "sleep";
+	vmmc-supply = <&reg_usdhc3_vmmc>;
+	status = "okay";
+};
+
 &wdog3 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_wdog>;
@@ -486,6 +575,13 @@ MX93_PAD_GPIO_IO27__CAN2_RX			0x139e
 		>;
 	};
 
+	pinctrl_flexcan2_sleep: flexcan2sleepgrp {
+		fsl,pins = <
+			MX93_PAD_GPIO_IO25__GPIO2_IO25			0x31e
+			MX93_PAD_GPIO_IO27__GPIO2_IO27			0x31e
+		>;
+	};
+
 	pinctrl_lpi2c1: lpi2c1grp {
 		fsl,pins = <
 			MX93_PAD_I2C1_SCL__LPI2C1_SCL			0x40000b9e
@@ -533,6 +629,15 @@ MX93_PAD_UART1_TXD__LPUART1_TX			0x31e
 		>;
 	};
 
+	pinctrl_uart5: uart5grp {
+		fsl,pins = <
+			MX93_PAD_DAP_TDO_TRACESWO__LPUART5_TX		0x31e
+			MX93_PAD_DAP_TDI__LPUART5_RX			0x31e
+			MX93_PAD_DAP_TMS_SWDIO__LPUART5_RTS_B		0x31e
+			MX93_PAD_DAP_TCLK_SWCLK__LPUART5_CTS_B		0x31e
+		>;
+	};
+
 	/* need to config the SION for data and cmd pad, refer to ERR052021 */
 	pinctrl_usdhc1: usdhc1grp {
 		fsl,pins = <
@@ -647,6 +752,53 @@ MX93_PAD_SD2_VSELECT__GPIO3_IO19	0x51e
 		>;
 	};
 
+		/* need to config the SION for data and cmd pad, refer to ERR052021 */
+	pinctrl_usdhc3: usdhc3grp {
+		fsl,pins = <
+			MX93_PAD_SD3_CLK__USDHC3_CLK		0x1582
+			MX93_PAD_SD3_CMD__USDHC3_CMD		0x40001382
+			MX93_PAD_SD3_DATA0__USDHC3_DATA0	0x40001382
+			MX93_PAD_SD3_DATA1__USDHC3_DATA1	0x40001382
+			MX93_PAD_SD3_DATA2__USDHC3_DATA2	0x40001382
+			MX93_PAD_SD3_DATA3__USDHC3_DATA3	0x40001382
+		>;
+	};
+
+	/* need to config the SION for data and cmd pad, refer to ERR052021 */
+	pinctrl_usdhc3_100mhz: usdhc3-100mhzgrp {
+		fsl,pins = <
+			MX93_PAD_SD3_CLK__USDHC3_CLK		0x158e
+			MX93_PAD_SD3_CMD__USDHC3_CMD		0x4000138e
+			MX93_PAD_SD3_DATA0__USDHC3_DATA0	0x4000138e
+			MX93_PAD_SD3_DATA1__USDHC3_DATA1	0x4000138e
+			MX93_PAD_SD3_DATA2__USDHC3_DATA2	0x4000138e
+			MX93_PAD_SD3_DATA3__USDHC3_DATA3	0x4000138e
+		>;
+	};
+
+	/* need to config the SION for data and cmd pad, refer to ERR052021 */
+	pinctrl_usdhc3_200mhz: usdhc3-200mhzgrp {
+		fsl,pins = <
+			MX93_PAD_SD3_CLK__USDHC3_CLK		0x15fe
+			MX93_PAD_SD3_CMD__USDHC3_CMD		0x400013fe
+			MX93_PAD_SD3_DATA0__USDHC3_DATA0	0x400013fe
+			MX93_PAD_SD3_DATA1__USDHC3_DATA1	0x400013fe
+			MX93_PAD_SD3_DATA2__USDHC3_DATA2	0x400013fe
+			MX93_PAD_SD3_DATA3__USDHC3_DATA3	0x400013fe
+		>;
+	};
+
+	pinctrl_usdhc3_sleep: usdhc3grpsleepgrp {
+		fsl,pins = <
+			MX93_PAD_SD3_CLK__GPIO3_IO20		0x31e
+			MX93_PAD_SD3_CMD__GPIO3_IO21		0x31e
+			MX93_PAD_SD3_DATA0__GPIO3_IO22		0x31e
+			MX93_PAD_SD3_DATA1__GPIO3_IO23		0x31e
+			MX93_PAD_SD3_DATA2__GPIO3_IO24		0x31e
+			MX93_PAD_SD3_DATA3__GPIO3_IO25		0x31e
+		>;
+	};
+
 	pinctrl_wdog: wdoggrp {
 		fsl,pins = <
 			MX93_PAD_WDOG_ANY__WDOG1_WDOG_ANY	0x31e

---
base-commit: 8ce368ca61310f425012fea4549d2b6ad0c5c54c
change-id: 20260114-imx93_devices-a98e116463b3

Best regards,
-- 
Francesco Valla <francesco@valla.it>


