Return-Path: <devicetree+bounces-43967-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B744F85C09E
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 17:04:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EA6231C22E00
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 16:04:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8988F762F4;
	Tue, 20 Feb 2024 16:03:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="qOrBtrY9";
	dkim=fail reason="key not found in DNS" (0-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="Ed8r3oaW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4E45768E1
	for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 16:03:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=93.104.207.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708445030; cv=none; b=twPMW00eeRcMZc/BX1cPotf40Vezka1Xem5H+3X7DY1h/8NegKCLXADSL4j6iwHHqly9Z9CeCCQcxFGAKM09FfCr5fWcn7p1Zd/GCR9WpvADzk4cdWm1kYWMZaZ1d/ZGBtrhNqthBfCxqCGbX3tIornmT3sNeQ+mpbOac5pgm7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708445030; c=relaxed/simple;
	bh=bzrRT6CwuibZyyv1Hvyjaf7NS93l9NFQ47QRnS7ENLw=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=aDrtoei6Z5T+PKy6vvZovMVyZD0FAnO85sziEbCTViW5yCcAlwtntErRQoSs8QLUVO88y8bNbMgTzG8NMB7dZWeY1PFa6/fNKxC/oGK8/UoY3rRDBq+fqGuDlvv6I0oacwoelEM8gWy3VgiWdF0U2v35HKbXUlVe0LneiYIb7jk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b=qOrBtrY9; dkim=fail (0-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=Ed8r3oaW reason="key not found in DNS"; arc=none smtp.client-ip=93.104.207.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1708445026; x=1739981026;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=+mjv86uyuqBFCZgF8ms0aaYPzTllCKKiHhNHhZt8xds=;
  b=qOrBtrY9bAA6K64OvLVdHrHqQ4OIMnqk/1yPX+1DxTVh+nqr9QdYF1bv
   EvFVmieImWigoE9k8lrTWAg1YrUYKrSybHwEW4FaZ32kYih6tOyw0hCuy
   8fcEOKUEtJuT2o+ozC8e4jvUB9BICFXE8ZDjwwI3DXn/W79/LBzsgipiz
   fY0STEywKxMTqqC1Bv9uPR3p4qvdFOP7INVahh4DArXgHkgC4Ixq0/0wk
   xMP3SRHiMQ1decJaOYT846XFqw2OLyYDd+AAlcak+IeKomjJfxBWxOw5r
   i2sUcMXeOKJN4Sj4V8vaTminiSYfOAGHFfAuOIiYk2dLf09+dFMKERmfv
   g==;
X-IronPort-AV: E=Sophos;i="6.06,174,1705359600"; 
   d="scan'208";a="35504561"
Received: from vmailcow01.tq-net.de ([10.150.86.48])
  by mx1.tq-group.com with ESMTP; 20 Feb 2024 17:03:43 +0100
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id E998816F4F8;
	Tue, 20 Feb 2024 17:03:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ew.tq-group.com;
	s=dkim; t=1708445019; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding; bh=+mjv86uyuqBFCZgF8ms0aaYPzTllCKKiHhNHhZt8xds=;
	b=Ed8r3oaW0WVfQ477GjZo9iNg2t7xPT9lRzfLUuNhfEmFZfuCGw8/y080lDidmWFp7b5Jpd
	WjagkbUSCrv8Ib7qkcwiZPDHcw+UNYCjhMEWjigkMcknV3VdqdRF5pqwchXSkbK9HA/8vJ
	kXDx+cxn/4rcGRrUMdXmzoZSLlu5QJ24R/4ga6sh1GVQ7nApOgUkuSGEZTLP0ED2luQ0dn
	25XH3u8URJy0M8IhrLFsGm3a+lClItrS6c+8H/5XiuzjCP2Fnq6vqOOS4lmJCMm41VEEkE
	rA7FhWL+mdP32LYZpT3Fl96V8ZG1w7MBUCy1Ok4XghzbQwOvpvxFf992MoR4/Q==
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux@ew.tq-group.com
Subject: [PATCH 1/1] arm64: dts: imx8mn: tqma8mqnl-mba8mx: Add USB DR overlay
Date: Tue, 20 Feb 2024 17:03:37 +0100
Message-Id: <20240220160338.2683715-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3

imx8mn has only one USB interface. The platform supports using as USB host
(default), or switch to USB DR using this overlay.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/Makefile        |  2 +
 .../imx8mn-tqma8mqnl-mba8mx-usbotg.dtso       | 64 +++++++++++++++++++
 .../dts/freescale/imx8mn-tqma8mqnl-mba8mx.dts |  5 +-
 arch/arm64/boot/dts/freescale/mba8mx.dtsi     |  2 +-
 4 files changed, 69 insertions(+), 4 deletions(-)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mn-tqma8mqnl-mba8mx-usbotg.dtso

diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
index fa0ed4f0c9b71..7c2410bad5bac 100644
--- a/arch/arm64/boot/dts/freescale/Makefile
+++ b/arch/arm64/boot/dts/freescale/Makefile
@@ -134,7 +134,9 @@ dtb-$(CONFIG_ARCH_MXC) += imx8mn-var-som-symphony.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mn-venice-gw7902.dtb
 
 imx8mn-tqma8mqnl-mba8mx-lvds-tm070jvhg33-dtbs += imx8mn-tqma8mqnl-mba8mx.dtb imx8mn-tqma8mqnl-mba8mx-lvds-tm070jvhg33.dtbo
+imx8mn-tqma8mqnl-mba8mx-usbotg-dtbs += imx8mn-tqma8mqnl-mba8mx.dtb imx8mn-tqma8mqnl-mba8mx-usbotg.dtbo
 dtb-$(CONFIG_ARCH_MXC) += imx8mn-tqma8mqnl-mba8mx-lvds-tm070jvhg33.dtb
+dtb-$(CONFIG_ARCH_MXC) += imx8mn-tqma8mqnl-mba8mx-usbotg.dtb
 
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-beacon-kit.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-data-modul-edm-sbc.dtb
diff --git a/arch/arm64/boot/dts/freescale/imx8mn-tqma8mqnl-mba8mx-usbotg.dtso b/arch/arm64/boot/dts/freescale/imx8mn-tqma8mqnl-mba8mx-usbotg.dtso
new file mode 100644
index 0000000000000..96db07fc9bece
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8mn-tqma8mqnl-mba8mx-usbotg.dtso
@@ -0,0 +1,64 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
+/*
+ * Copyright (c) 2022-2024 TQ-Systems GmbH <linux@ew.tq-group.com>,
+ * D-82229 Seefeld, Germany.
+ * Author: Alexander Stein
+ */
+
+/dts-v1/;
+/plugin/;
+
+#include <dt-bindings/gpio/gpio.h>
+
+#include "imx8mn-pinfunc.h"
+
+&{/} {
+	connector {
+		compatible = "gpio-usb-b-connector", "usb-b-connector";
+		type = "micro";
+		label = "X19";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_usb1_connector>;
+		id-gpios = <&gpio1 10 GPIO_ACTIVE_HIGH>;
+
+		port {
+			usb_dr_connector: endpoint {
+				remote-endpoint = <&usb1_drd_sw>;
+			};
+		};
+	};
+};
+
+&rst_usb_hub_hog {
+	output-low;
+};
+
+&sel_usb_hub_hog {
+	output-low;
+};
+
+&usbotg1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usbotg>;
+	dr_mode = "otg";
+	srp-disable;
+	hnp-disable;
+	adp-disable;
+	power-active-high;
+	/delete-property/ disable-over-current;
+	over-current-active-low;
+	usb-role-switch;
+	status = "okay";
+
+	port {
+		usb1_drd_sw: endpoint {
+			remote-endpoint = <&usb_dr_connector>;
+		};
+	};
+};
+
+&iomuxc {
+	pinctrl_usb1_connector: usb1-connectorgrp {
+		fsl,pins = <MX8MN_IOMUXC_GPIO1_IO10_GPIO1_IO10		0x1c0>;
+	};
+};
diff --git a/arch/arm64/boot/dts/freescale/imx8mn-tqma8mqnl-mba8mx.dts b/arch/arm64/boot/dts/freescale/imx8mn-tqma8mqnl-mba8mx.dts
index 5b682dd907578..ca388705ec396 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn-tqma8mqnl-mba8mx.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mn-tqma8mqnl-mba8mx.dts
@@ -41,7 +41,7 @@ &gpio2 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_usb0hub_sel>;
 
-	sel-usb-hub-hog {
+	sel_usb_hub_hog: sel-usb-hub-hog {
 		gpio-hog;
 		gpios = <1 GPIO_ACTIVE_HIGH>;
 		output-high;
@@ -202,8 +202,7 @@ pinctrl_usb0hub_sel: usb0hub-selgrp {
 
 	pinctrl_usbotg: usbotggrp {
 		fsl,pins = <MX8MN_IOMUXC_GPIO1_IO12_USB1_OTG_PWR	0x84>,
-			   <MX8MN_IOMUXC_GPIO1_IO13_USB1_OTG_OC		0x84>,
-			   <MX8MN_IOMUXC_GPIO1_IO10_USB1_OTG_ID		0x1C4>;
+			   <MX8MN_IOMUXC_GPIO1_IO13_USB1_OTG_OC		0x84>;
 	};
 
 	pinctrl_usdhc2: usdhc2grp {
diff --git a/arch/arm64/boot/dts/freescale/mba8mx.dtsi b/arch/arm64/boot/dts/freescale/mba8mx.dtsi
index c82af672d1834..427467df42bfa 100644
--- a/arch/arm64/boot/dts/freescale/mba8mx.dtsi
+++ b/arch/arm64/boot/dts/freescale/mba8mx.dtsi
@@ -219,7 +219,7 @@ boot-cfg-oe-hog {
 			line-name = "BOOT_CFG_OE#";
 		};
 
-		rst-usb-hub-hog {
+		rst_usb_hub_hog: rst-usb-hub-hog {
 			gpio-hog;
 			gpios = <13 0>;
 			output-high;
-- 
2.34.1


