Return-Path: <devicetree+bounces-138270-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4181CA0C4C0
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 23:32:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 57D6716A793
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 22:30:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1EC7B1FBBC1;
	Mon, 13 Jan 2025 22:29:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EB231F9EA9
	for <devicetree@vger.kernel.org>; Mon, 13 Jan 2025 22:29:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736807379; cv=none; b=GIZywNyGnR51jPRZPeEvvV4BsDuK05T1PCB1dNqPN/ixTIfNMEWi0ueg7rNDmB0LptgXN3OTxIOMq9gv4HXscy7BDP2tTlUPmk0aXvXBEqzR4Tb+/7AWBjwCcPOMPRzI9m1dD64hzSoqOi69SMaUf9JgQ8OSF55NLVWHFBBjuDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736807379; c=relaxed/simple;
	bh=ZKVdVgazIRw6bW7LXkyObO1onYtAKngJnsNMJi8dIos=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=QL2ilzm7Vw/mEuogJMb1CtuNVP1n+ity2vUTM+4iLFlhCYbapKqgt7YFRHq1yf4TPwhNGvsfsyahrrkMDYQR7+Ju7aHeekxQbuA9Iyjk6fnOoXq3QSrN9X6IeZpYFHmTdL7oz3VN+mZ/YXXW6vVXVs5e7sLPPE8Ird5wrGxlT0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tXSvv-0006tw-5k; Mon, 13 Jan 2025 23:29:19 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tXSvu-000KaJ-0u;
	Mon, 13 Jan 2025 23:29:18 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tXSvv-008syM-1L;
	Mon, 13 Jan 2025 23:29:18 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 13 Jan 2025 23:29:09 +0100
Subject: [PATCH 5/6] arm64: dts: imx8mp-skov: add revC BD500 board
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250113-skov-imx8mp-new-boards-v1-5-75288def1271@pengutronix.de>
References: <20250113-skov-imx8mp-new-boards-v1-0-75288def1271@pengutronix.de>
In-Reply-To: <20250113-skov-imx8mp-new-boards-v1-0-75288def1271@pengutronix.de>
To: Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Fabio Estevam <festevam@gmail.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 Oleksij Rempel <o.rempel@pengutronix.de>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.14.2
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: a.fatoum@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

The BD500 replaces the touch display with 3 bicolor LEDs and a push
button on top of a Skov i.MX8-CPU revision C.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm64/boot/dts/freescale/Makefile             |  1 +
 .../boot/dts/freescale/imx8mp-skov-revc-bd500.dts  | 91 ++++++++++++++++++++++
 2 files changed, 92 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
index ea4da899b44be0aaac745f6a0503bed3bb8ba20c..6ee3a7ffe4792106118b8201c1f5f51c8ecd0ff2 100644
--- a/arch/arm64/boot/dts/freescale/Makefile
+++ b/arch/arm64/boot/dts/freescale/Makefile
@@ -197,6 +197,7 @@ dtb-$(CONFIG_ARCH_MXC) += imx8mp-skov-basic.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-skov-revb-hdmi.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-skov-revb-lt6.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-skov-revb-mi1010ait-1cp1.dtb
+dtb-$(CONFIG_ARCH_MXC) += imx8mp-skov-revc-bd500.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-tqma8mpql-mba8mpxl.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-tqma8mpql-mba8mp-ras314.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-var-som-symphony.dtb
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-skov-revc-bd500.dts b/arch/arm64/boot/dts/freescale/imx8mp-skov-revc-bd500.dts
new file mode 100644
index 0000000000000000000000000000000000000000..b816c6cd3bca60b14cf6bc7f40cb780aa893958d
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8mp-skov-revc-bd500.dts
@@ -0,0 +1,91 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+
+/dts-v1/;
+
+#include "imx8mp-skov-reva.dtsi"
+
+/ {
+	model = "SKOV IMX8MP CPU revC - bd500";
+	compatible = "skov,imx8mp-skov-revc-bd500", "fsl,imx8mp";
+
+	leds {
+		led_system_red: led-3 {
+			label = "bd500:system:red";
+			color = <LED_COLOR_ID_RED>;
+			/* Inverted compared to others due to NMOS inverter */
+			gpios = <&gpioexp 3 GPIO_ACTIVE_HIGH>;
+			default-state = "off";
+		};
+
+		led_system_green: led-4 {
+			label = "bd500:system:green";
+			color = <LED_COLOR_ID_GREEN>;
+			gpios = <&gpioexp 2 GPIO_ACTIVE_LOW>;
+			default-state = "on";
+		};
+
+		led_lan1_red: led-5 {
+			label = "bd500:lan1:act";
+			color = <LED_COLOR_ID_RED>;
+			linux,default-trigger = "netdev";
+			gpios = <&gpioexp 1 GPIO_ACTIVE_LOW>;
+		};
+
+		led_lan1_green: led-6 {
+			label = "bd500:lan1:link";
+			color = <LED_COLOR_ID_GREEN>;
+			linux,default-trigger = "netdev";
+			gpios = <&gpioexp 0 GPIO_ACTIVE_LOW>;
+		};
+
+		led_lan2_red: led-7 {
+			label = "bd500:lan2:act";
+			color = <LED_COLOR_ID_RED>;
+			linux,default-trigger = "netdev";
+			gpios = <&gpioexp 6 GPIO_ACTIVE_LOW>;
+		};
+
+		led_lan2_green: led-8 {
+			label = "bd500:lan2:link";
+			color = <LED_COLOR_ID_GREEN>;
+			linux,default-trigger = "netdev";
+			gpios = <&gpioexp 7 GPIO_ACTIVE_LOW>;
+		};
+	};
+
+	gpio-keys {
+		compatible = "gpio-keys";
+
+		button-1 {
+			label = "S1";
+			linux,code = <KEY_CONFIG>;
+			gpios = <&gpioexp 5 GPIO_ACTIVE_LOW>;
+		};
+	};
+};
+
+&i2c2 {
+	clock-frequency = <100000>;
+	status = "okay";
+
+	gpioexp: gpio@20 {
+		compatible = "nxp,pca6408";
+		reg = <0x20>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_gpio_exp>;
+		interrupts-extended = <&gpio4 28 IRQ_TYPE_EDGE_FALLING>;
+		reset-gpios = <&gpio4 29 GPIO_ACTIVE_LOW>;
+		vcc-supply = <&reg_vdd_3v3>;
+		gpio-controller;
+		#gpio-cells = <2>;
+	};
+};
+
+&iomuxc {
+	pinctrl_gpio_exp: gpioexpgrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SAI3_RXFS__GPIO4_IO28	0x0
+			MX8MP_IOMUXC_SAI3_RXC__GPIO4_IO29	0x0
+		>;
+	};
+};

-- 
2.39.5


