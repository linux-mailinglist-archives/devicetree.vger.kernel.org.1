Return-Path: <devicetree+bounces-275034-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gKGjK7DRs2ncbAAAu9opvQ
	(envelope-from <devicetree+bounces-275034-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 09:58:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id ABDF4280195
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 09:58:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 456F93022C2C
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 08:58:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8069338838E;
	Fri, 13 Mar 2026 08:58:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HPElquvu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A8BC386C3A
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 08:58:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773392289; cv=none; b=IGoaC/0i7kYHO+efYYy9/tPDVfxU1GtnulWJ2pu4tRiSaMhkAh6RR759AcdSn49q7NgTzojuyWVbArgs9jCJ9SmMGgFPhnssMi6FmcQEDtDHZv2+idNAC0z11qUe2/rPoXkNcdH1UvpIuG/pvHfNU7Ez5FFKH6IUE/ztozj8ulA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773392289; c=relaxed/simple;
	bh=w228hThsiVYRbscFhzc+2oD7eXBShJY24ORQ9uW9AFQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=jL+vRpZDL1DymI10trHFfm1ZN+sHcPFKUbaF8OUg/b/dIBrrFfgPaEiwGjtuc2wNvhoJjAaHPHIgOyI6wQRfIKTkpQWNmLbOoKXtrEUGLM6EfMDmWvTMYXqfjdK/MwPe1UHhk+Jjr8WlrgpbVzrTSodNk5NsXxe1NZBuqxOYrCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HPElquvu; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-439d8dc4ae4so2054462f8f.2
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 01:58:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773392286; x=1773997086; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wn/UD6BZCdexx1c4zCWwh2htyXc5RV8C9vfJwOLQF/M=;
        b=HPElquvuePcTDCgoaMqfoYRZNIpcibvQd9SdJxdreJ5uC39s+UjWC7Tx10oqyw6X9f
         PDQIDGc99vJL5JHlWMoWOTcCpsfznrt2qNlASlao54t3b8YqCRvCzmSmaIiZA9RphdP/
         H9L4ccIdOVrzmM2B9Qm0Tk3vMQ4kSM4gTS5C7xwCtD4oCGKd71qSfqu7J/3elCKCjfj2
         wi8lARcM7l5lxX5+N7JXCEMySvj/++Jo74xDpv2CL7sBkxtyR3fpOheNCfkAvgDl4rNI
         Y3JcmZn5U0wO2N8luDJWLJGxDuPQcttwMHK5L/McTKeKMRvJS4oiSByLholchfngzbPf
         oV8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773392286; x=1773997086;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=wn/UD6BZCdexx1c4zCWwh2htyXc5RV8C9vfJwOLQF/M=;
        b=bhnpMBWYg1D/OC/yK7hWh5vPypN6IIJOEqxiDsUlmbsKQ3Bc1H3rnNKxYfwoaHPE/j
         hS4HcikOWCbvdjSJaarehTjI2LoU0BW6Hb7iXNMrPeU5mar4oJB7n8+Gla0nawlXMHca
         kuekviXkVNUPyBTj6e2ULWA88ijrmxqeSQWFLjObgoRRocHOl5P/5seWtkGCM1V5unSZ
         0cJZxiYyne4Q6NSP4oCGi3twDAq1gQlC5PcjYH83txfDi1PKCBPXC+NSdy3TU8Xb1+/j
         2LbBPjALYg/HTiNA/l/JxZ/bNtzj7ol+AKlbgbh8I7RTHguZvEgK/xUa6SmcVWDlS3MX
         j7kw==
X-Forwarded-Encrypted: i=1; AJvYcCVPWnHTdtU8DzmTI/miVk+bhF0HVbPOorf8FDrA9dOzaC8tsAn1GRFLimoYkG6/4M0U4s/Kvl4JVtwu@vger.kernel.org
X-Gm-Message-State: AOJu0YymJb4QHTB7mWG+CcaVt9TlCt76o6oZ9xAKwIThzmhoNcEWvlk6
	iys0+JfKa1NZJWgTj7wbiwZt5yUMwgGOupOYGwFyy3VsrlSYDBdyt1Cp
X-Gm-Gg: ATEYQzzrngvaTPqqESPTi8sYNfJfVZRsgg0Ebq65kVFegYVLDk7lQMkILqNffCu+dmN
	sdIdx8Ty5avYagYlzlOpLxGYQKoHuaduDXqyclu0T7f9hHodnyv+R0xNCHDQfV4WCzI0K/6GeJo
	rSlwP/ELnS4hHe4BDrsWlwmmkg7GTJttXv/YrY+MYd+BYwv0UfiJYAWzWsxaccNNQyAiclLA/G+
	1aYPJ2Nc3BkqMndKVyp1J+G4Ym1WrQtVsxqgkSUxF0MhuwUslGRhBeUxSDH7aRbd8BDp7b4Gh3Q
	hfBRHObdsissCnSb3QHrciyGhzHxbM3jGa+HD54E6bZy1tdob3ikOKQeD3IP3h19PeBICsu/uMv
	p1IO24FmiHFwGuac87V+xdvv5ZnLj4FJhitlSgJ+3T5Jd1iuD7GGR1QDVku0eWQvWPsHCWWpKaD
	CpIFLVqQ0iRa7+8fbdc9eftyrj/3Oy98ZXs089Q2LO6TaL7sql2IN6GxDMQfMETQD7O6YgXHTBr
	kGny4TbqhM9tNnOWQt4d/Zx/1I=
X-Received: by 2002:a05:6000:1ac8:b0:435:94c1:3714 with SMTP id ffacd0b85a97d-43a04d130e8mr5113241f8f.0.1773392285759;
        Fri, 13 Mar 2026 01:58:05 -0700 (PDT)
Received: from ernest.hoecke-nb (248.201.173.83.static.wline.lns.sme.cust.swisscom.ch. [83.173.201.248])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43a03cfd18fsm7663718f8f.36.2026.03.13.01.58.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 01:58:05 -0700 (PDT)
From: Ernest Van Hoecke <ernestvanhoecke@gmail.com>
Date: Fri, 13 Mar 2026 09:57:44 +0100
Subject: [PATCH v2 3/6] arm64: dts: freescale: imx95-verdin: Add Dahlia
 carrier board
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260313-verdin-imx95-upstream-frank-li-base-v2-3-bd488be7c699@toradex.com>
References: <20260313-verdin-imx95-upstream-frank-li-base-v2-0-bd488be7c699@toradex.com>
In-Reply-To: <20260313-verdin-imx95-upstream-frank-li-base-v2-0-bd488be7c699@toradex.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Frank Li <Frank.Li@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>
Cc: Ernest Van Hoecke <ernest.vanhoecke@toradex.com>, 
 Emanuele Ghidoli <emanuele.ghidoli@toradex.com>, 
 Francesco Dolcini <francesco.dolcini@toradex.com>, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org
X-Mailer: b4 0.13.0
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-275034-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ernestvanhoecke@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	DBL_PROHIBIT(0.00)[0.0.0.40:email,0.0.0.57:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.998];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,0.0.0.1:email,0.0.0.2:email,4f:email]
X-Rspamd-Queue-Id: ABDF4280195
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ernest Van Hoecke <ernest.vanhoecke@toradex.com>

Add support for the Verdin i.MX95 mated with the Verdin Dahlia carrier
board.

Link: https://www.toradex.com/computer-on-modules/verdin-arm-family/nxp-imx95
Link: https://www.toradex.com/products/carrier-board/dahlia-carrier-board-kit
Signed-off-by: Ernest Van Hoecke <ernest.vanhoecke@toradex.com>
---
v2: Reordered nodes alphanumerically by node name
v1: https://lore.kernel.org/all/20260305-verdin-imx95-upstream-frank-li-base-v1-3-823fad02def9@toradex.com/
---
 arch/arm64/boot/dts/freescale/Makefile             |   2 +
 .../boot/dts/freescale/imx95-verdin-dahlia.dtsi    | 270 +++++++++++++++++++++
 .../dts/freescale/imx95-verdin-nonwifi-dahlia.dts  |  21 ++
 .../dts/freescale/imx95-verdin-wifi-dahlia.dts     |  21 ++
 4 files changed, 314 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
index 12cbb60cb0cd..952268856cac 100644
--- a/arch/arm64/boot/dts/freescale/Makefile
+++ b/arch/arm64/boot/dts/freescale/Makefile
@@ -452,7 +452,9 @@ dtb-$(CONFIG_ARCH_MXC) += imx95-19x19-evk.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx95-19x19-evk-sof.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx95-toradex-smarc-dev.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx95-tqma9596sa-mb-smarc-2.dtb
+dtb-$(CONFIG_ARCH_MXC) += imx95-verdin-nonwifi-dahlia.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx95-verdin-nonwifi-dev.dtb
+dtb-$(CONFIG_ARCH_MXC) += imx95-verdin-wifi-dahlia.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx95-verdin-wifi-dev.dtb
 
 imx95-15x15-evk-pcie0-ep-dtbs = imx95-15x15-evk.dtb imx-pcie0-ep.dtbo
diff --git a/arch/arm64/boot/dts/freescale/imx95-verdin-dahlia.dtsi b/arch/arm64/boot/dts/freescale/imx95-verdin-dahlia.dtsi
new file mode 100644
index 000000000000..889b71aa3de0
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx95-verdin-dahlia.dtsi
@@ -0,0 +1,270 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/*
+ * Copyright (c) Toradex
+ *
+ * Common dtsi for Verdin iMX95 SoM on Dahlia carrier board
+ *
+ * https://www.toradex.com/computer-on-modules/verdin-arm-family/nxp-imx95
+ * https://www.toradex.com/products/carrier-board/dahlia-carrier-board-kit
+ */
+
+/ {
+	aliases {
+		eeprom1 = &carrier_eeprom;
+	};
+
+	reg_1v8_sw: regulator-1v8-sw {
+		compatible = "regulator-fixed";
+		regulator-max-microvolt = <1800000>;
+		regulator-min-microvolt = <1800000>;
+		regulator-name = "On-carrier +V1.8_SW";
+	};
+
+	reg_pcie: regulator-pcie {
+		compatible = "regulator-fixed";
+		/* Verdin CTRL_SLEEP_MOCI# (SODIMM 256) */
+		gpios = <&gpio1 14 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		regulator-boot-on;
+		regulator-name = "PCIE_1_PWR_EN";
+	};
+
+	reg_usb_hub: regulator-usb-hub {
+		compatible = "regulator-fixed";
+		/* Verdin CTRL_SLEEP_MOCI# (SODIMM 256) */
+		gpios = <&gpio1 14 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		regulator-boot-on;
+		regulator-name = "HUB_PWR_EN";
+	};
+
+	sound {
+		compatible = "simple-audio-card";
+		simple-audio-card,bitclock-master = <&codec_dai>;
+		simple-audio-card,format = "i2s";
+		simple-audio-card,frame-master = <&codec_dai>;
+		simple-audio-card,mclk-fs = <256>;
+		simple-audio-card,name = "verdin-wm8904";
+		simple-audio-card,routing =
+			"Headphone Jack", "HPOUTL",
+			"Headphone Jack", "HPOUTR",
+			"IN2L", "Line In Jack",
+			"IN2R", "Line In Jack",
+			"Microphone Jack", "MICBIAS",
+			"IN1L", "Microphone Jack";
+		simple-audio-card,widgets =
+			"Microphone", "Microphone Jack",
+			"Headphone", "Headphone Jack",
+			"Line", "Line In Jack";
+
+		codec_dai: simple-audio-card,codec {
+			sound-dai = <&wm8904_1a>;
+		};
+
+		simple-audio-card,cpu {
+			sound-dai = <&sai3>;
+		};
+	};
+};
+
+/* Verdin ADC_1, ADC_2, ADC_3 and ADC_4 */
+&adc1 {
+	status = "okay";
+};
+
+/* Verdin ETH_1 (On-module PHY) */
+&enetc_port0 {
+	status = "okay";
+};
+
+/* Verdin CAN_1 */
+&flexcan1 {
+	status = "okay";
+};
+
+/* Verdin CAN_2 */
+&flexcan2 {
+	status = "okay";
+};
+
+/* Verdin QSPI_1 */
+&flexspi1 {
+	status = "okay";
+};
+
+&gpio1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_ctrl_sleep_moci>;
+};
+
+&gpio2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_gpio1>,
+		    <&pinctrl_gpio2>,
+		    <&pinctrl_gpio3>;
+};
+
+&gpio3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_gpio6>;
+};
+
+&gpio4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_gpio5>;
+};
+
+&gpio5 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_gpio4>;
+};
+
+/* Verdin I2C_3_HDMI */
+&i3c2 {
+	status = "okay";
+};
+
+/* Verdin I2C_2_DSI */
+&lpi2c3 {
+	status = "okay";
+};
+
+/* Verdin I2C_1 */
+&lpi2c4 {
+	status = "okay";
+
+	wm8904_1a: audio-codec@1a {
+		compatible = "wlf,wm8904";
+		reg = <0x1a>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_sai3_mclk>;
+		clocks = <&scmi_clk IMX95_CLK_SAI3>;
+		clock-names = "mclk";
+		#sound-dai-cells = <0>;
+		AVDD-supply = <&reg_1v8_sw>;
+		CPVDD-supply = <&reg_1v8_sw>;
+		DBVDD-supply = <&reg_1v8_sw>;
+		DCVDD-supply = <&reg_1v8_sw>;
+		MICVDD-supply = <&reg_1v8_sw>;
+	};
+
+	/* Current measurement into module VCC */
+	hwmon@40 {
+		compatible = "ti,ina219";
+		reg = <0x40>;
+		shunt-resistor = <10000>;
+	};
+
+	temperature-sensor@4f {
+		compatible = "ti,tmp75c";
+		reg = <0x4f>;
+	};
+
+	carrier_eeprom: eeprom@57 {
+		compatible = "st,24c02", "atmel,24c02";
+		reg = <0x57>;
+		pagesize = <16>;
+	};
+};
+
+/* Verdin I2C_4_CSI */
+&lpi2c5 {
+	status = "okay";
+};
+
+/* Verdin UART_3, used as the Linux console */
+&lpuart1 {
+	status = "okay";
+};
+
+/* Verdin UART_4 */
+&lpuart2 {
+	status = "okay";
+};
+
+/* Verdin UART_1 */
+&lpuart7 {
+	status = "okay";
+};
+
+/* Verdin UART_2 */
+&lpuart8 {
+	status = "okay";
+};
+
+/* Verdin PCIE_1 */
+&pcie0 {
+	vpcie-supply = <&reg_pcie>;
+
+	status = "okay";
+};
+
+/* We support turning off sleep moci on Dahlia */
+&reg_force_sleep_moci {
+	status = "disabled";
+};
+
+/* Verdin I2S_1 */
+&sai3 {
+	status = "okay";
+};
+
+/* Verdin PWM_1 */
+&tpm4 {
+	status = "okay";
+};
+
+/* Verdin PWM_2 */
+&tpm5 {
+	status = "okay";
+};
+
+/* Verdin PWM_3_DSI */
+&tpm6 {
+	status = "okay";
+};
+
+/* Verdin USB_1 */
+&usb2 {
+	status = "okay";
+};
+
+/* Verdin USB_2 */
+&usb3 {
+	fsl,permanently-attached;
+
+	status = "okay";
+};
+
+&usb3_dwc3 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	usb_hub_3_0: usb-hub@1 {
+		compatible = "usb424,5744";
+		reg = <1>;
+		peer-hub = <&usb_hub_2_0>;
+		vdd-supply = <&reg_usb_hub>;
+	};
+
+	usb_hub_2_0: usb-hub@2 {
+		compatible = "usb424,2744";
+		reg = <2>;
+		peer-hub = <&usb_hub_3_0>;
+		vdd-supply = <&reg_usb_hub>;
+	};
+};
+
+&usb3_phy {
+	status = "okay";
+};
+
+/* Verdin SD_1 */
+&usdhc2 {
+	status = "okay";
+};
+
+/* Verdin CTRL_WAKE1_MICO# */
+&verdin_gpio_keys {
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/freescale/imx95-verdin-nonwifi-dahlia.dts b/arch/arm64/boot/dts/freescale/imx95-verdin-nonwifi-dahlia.dts
new file mode 100644
index 000000000000..16975ae12fcb
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx95-verdin-nonwifi-dahlia.dts
@@ -0,0 +1,21 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/*
+ * Copyright (c) Toradex
+ *
+ * https://www.toradex.com/computer-on-modules/verdin-arm-family/nxp-imx95
+ * https://www.toradex.com/products/carrier-board/dahlia-carrier-board-kit
+ */
+
+/dts-v1/;
+
+#include "imx95-verdin.dtsi"
+#include "imx95-verdin-nonwifi.dtsi"
+#include "imx95-verdin-dahlia.dtsi"
+
+/ {
+	model = "Toradex Verdin iMX95 on Dahlia Board";
+	compatible = "toradex,verdin-imx95-nonwifi-dahlia",
+		     "toradex,verdin-imx95-nonwifi",
+		     "toradex,verdin-imx95",
+		     "fsl,imx95";
+};
diff --git a/arch/arm64/boot/dts/freescale/imx95-verdin-wifi-dahlia.dts b/arch/arm64/boot/dts/freescale/imx95-verdin-wifi-dahlia.dts
new file mode 100644
index 000000000000..bafbe1179ec8
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx95-verdin-wifi-dahlia.dts
@@ -0,0 +1,21 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/*
+ * Copyright (c) Toradex
+ *
+ * https://www.toradex.com/computer-on-modules/verdin-arm-family/nxp-imx95
+ * https://www.toradex.com/products/carrier-board/dahlia-carrier-board-kit
+ */
+
+/dts-v1/;
+
+#include "imx95-verdin.dtsi"
+#include "imx95-verdin-wifi.dtsi"
+#include "imx95-verdin-dahlia.dtsi"
+
+/ {
+	model = "Toradex Verdin iMX95 WB on Dahlia Board";
+	compatible = "toradex,verdin-imx95-wifi-dahlia",
+		     "toradex,verdin-imx95-wifi",
+		     "toradex,verdin-imx95",
+		     "fsl,imx95";
+};

-- 
2.43.0


