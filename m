Return-Path: <devicetree+bounces-266254-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KPYaHBq3lGlMHQIAu9opvQ
	(envelope-from <devicetree+bounces-266254-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 19:44:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D5EDD14F4D4
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 19:44:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B1361305ED0D
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 18:43:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55505374194;
	Tue, 17 Feb 2026 18:43:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XzKq87dM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B94D4374177
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 18:43:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771353813; cv=none; b=kE+/StjXfjmLNGadP5Tj+QdFvNk0jy5i4QL7D6n1EzV/QldBzE/gtTUuRt2Y/Mtb0LB65eOOqDecxPqu6kCs3kMvz6Rj2t/qdwg8i7C8kcOMK6PUT9GTgS0w5siGE4ochLgSqJ0OorI0ABTnAYKyk1S+tQZ3mpckYRSgcXBuFgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771353813; c=relaxed/simple;
	bh=sH3g/D/feOy6HRPpZvgse1l8RLfsseXya0OCko0vim8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=QEVPR1364/2jRMOuYto9asXD30OTWwHdyNgTSXxGGopgxlbu04XLq23DvPtfMgcbDDV07N9pwUQnC954pgCD04bvX4A1jygteGuyd6C18ydCVKa/02Nh/U0B/MEIfxLO/s1hzGdbIhPPWh52cSLh4CxpP/K2QXU5mpiKMmoZH1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XzKq87dM; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-436309f1ad7so3693892f8f.3
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 10:43:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771353809; x=1771958609; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zsvZHHMHNdlwLacCrgd+fOKcEC9NeExJe/PUTUm5+0c=;
        b=XzKq87dMCgXjoHxn8icFMSIUPsm7IFo8ZHdKHJZ2DVLQOvHvW/2HiYppafQLIVGBKV
         Irq3aikxMGyRLpz3Iyj1aJ5GZy0RjavsGTWLTAJ5mWT6bV1q7LFsG9LnyW5yE541PGUh
         kQbiMaXfH9HaP0QIVFj6tQhuQkp4KSZBH753gnI+/1xNquOsbokBOVyR3+S2hADS0ifX
         +5823ULrbCE3tP46YFoA0b5lYQl3J0Q3yCOnUOLZ5VW6gf/XAVSbmd0YKtdzzhOLQDxK
         10oC25hzbd0bzMx7r1FzNTDWTEhS4B2dV1TYMYt/AN//vBUakDAGiToDDGDLpKnYkSru
         O+3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771353809; x=1771958609;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=zsvZHHMHNdlwLacCrgd+fOKcEC9NeExJe/PUTUm5+0c=;
        b=EIU5tgpoULfnXlOPKkFmu+f55IsLnzqkgYiw/PiYD9W2nWWxT/V0Fw1GONXazoqxpe
         MEb5ecK719uT8Zmlj2vdPUf5O5qSSr0dd0ALhaQDGKv2OCNO18CFaUPwHSai/Ol1PLBL
         naB/eCx2JJOzUUMAj/oFC2SFm6Yi+Nf+Pzf5PUg31QYg8z2Y6q1hjfVGmTd+Y44SZ6ys
         g4Z3imGRhf/ojnD9YqbDauFg1Wo493wdikR1TX2TzQfmRbePCW/UMGiLcdvkt56Rp6sQ
         SrKUwux8bA/4RSA1TAAQtb30o5o/w/Zq5oT/DL91NPSiNThtoGv621xxk+Ex2hslrEoM
         o9hQ==
X-Forwarded-Encrypted: i=1; AJvYcCUadaGBkwqdl7DdFcBn3qk2IkqMHfqEjCn8nFofTO5FUuymuHCfKplDeywpFa9/A1VoKTUpo7Rxt5q0@vger.kernel.org
X-Gm-Message-State: AOJu0YxkVDVV04Ijrd/zxaKlMI+LTlKkXD+ESPvqJjvIbYgLWKdamRv5
	gWUlvJVd7y454MlDbaizBcVFjDIMnsCCXcXDh/7yOFHV/1P3THZhuQhnEfrkfA==
X-Gm-Gg: AZuq6aKP/AUCQ4dP/dUUr1rCHBaGZpj1a6uT7qRCBnCgjyHW0wgLozSYXb8hmJONwoF
	YbiZzdN4LVgIE9ZtdzVDYZHgfF2WNJB7WHj2DTR1jP0tILNHqfDDd+qk9ZAs0roArV8CrLyfHfy
	1VJiWwMes7HqeRQltHUYV0sT+KdSLX+S3gKhoCiqkej3HxErk90s9DweEEm+jwfZy4AcR5P8U7G
	WaD0A19U2vS/x0l0/jB/hkdmIbnHwK4W/wQWSeerEoBXvl4wrugUWNfecwQlKytlomxw5ESsN0c
	zBi1pYoJxPPqmOS8Masfm4AnrfHtxiTYLSYUDwCqj8dqI5ys7oEQ3a40/3PUeLl8FF0p21jYZBr
	HpZOyjre3az/afuApomiGEvV4FIqR77k5RXgl3Pb0WBwXfpMi0mUZd9iDov7OqaB7jav5LdvP19
	naStSzhaWMCBEYB6en0esJx0+V5pjgZ64t3tCGr83b9JoUXmSfiZ4u4kV9wqixNBo4vxWQAKydf
	hUFt3slOtRrLo8DetAmgXng7BjJXF3wkBOrbhKj
X-Received: by 2002:a05:6000:2f83:b0:437:6e0b:7147 with SMTP id ffacd0b85a97d-4379db352e5mr19506480f8f.7.1771353808829;
        Tue, 17 Feb 2026 10:43:28 -0800 (PST)
Received: from Lord-Beerus.station (net-188-152-100-94.cust.vodafonedsl.it. [188.152.100.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4839731d7c3sm1096185e9.18.2026.02.17.10.43.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Feb 2026 10:43:28 -0800 (PST)
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
X-Google-Original-From: Stefano Radaelli <stefano.r@variscite.com>
To: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Cc: Stefano Radaelli <stefano.r@variscite.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v1 03/11] arm64: dts: freescale: imx8mm-var-som: Update FEC support with MaxLinear PHY
Date: Tue, 17 Feb 2026 19:42:37 +0100
Message-ID: <3b984b93a43a07bc9c4f6414a08a3a0f45daaaa8.1771353301.git.stefano.r@variscite.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1771353301.git.stefano.r@variscite.com>
References: <cover.1771353301.git.stefano.r@variscite.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-266254-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[variscite.com,kernel.org,nxp.com,pengutronix.de,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_PROHIBIT(0.00)[0.0.0.1:email,0.0.0.4:email];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,variscite.com:mid,variscite.com:email]
X-Rspamd-Queue-Id: D5EDD14F4D4
X-Rspamd-Action: no action

From: Stefano Radaelli <stefano.r@variscite.com>

Update the FEC Ethernet controller on the i.MX8MM VAR-SOM to match the
latest SOM hardware revision using the integrated MaxLinear MXL86110 PHY.

This patch adds:
- PHY VDDIO 1.8V supply regulator.
- Proper reset timings for the MXL86110.
- LED configuration for link/activity indication via the LED subsystem
  under /sys/class/leds/, leveraging the support in the MXL86110 PHY
  driver.
  Two LEDs are defined to match the VAR-SOM carrier design:
    * LED@0: Yellow, netdev trigger.
    * LED@1: Green, netdev trigger.
- A pinctrl sleep state for low-power operation.

The PHY reset is now handled in the SOM .dtsi using the SoC GPIO.
The previous carrier-specific reset-gpios property in the Symphony
device tree is therefore removed.

The enet_rst GPIO hog on the carrier is kept to ensure a defined
board-level reset line state during boot.

Wake-on-LAN via magic packet is not supported at the VAR-SOM level and
is therefore not enabled in the SOM device tree nor in the official
evaluation carrier board configuration (symphony).
Designs requiring WoL support may enable it in their own carrier-specific
device trees if properly integrated at the hardware level.

Signed-off-by: Stefano Radaelli <stefano.r@variscite.com>
---
 .../dts/freescale/imx8mm-var-som-symphony.dts | 11 ++--
 .../boot/dts/freescale/imx8mm-var-som.dtsi    | 59 ++++++++++++++++++-
 2 files changed, 63 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts b/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts
index 819707e6f3bf..689894405b27 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts
@@ -70,10 +70,6 @@ led {
 	};
 };
 
-&ethphy {
-	reset-gpios = <&pca9534 5 GPIO_ACTIVE_HIGH>;
-};
-
 &i2c2 {
 	clock-frequency = <400000>;
 	pinctrl-names = "default";
@@ -99,6 +95,13 @@ usb3-sata-sel-hog {
 			line-name = "usb3_sata_sel";
 		};
 
+		enet-rst-hog {
+			gpio-hog;
+			gpios = <5 GPIO_ACTIVE_HIGH>;
+			output-low;
+			line-name = "enet_rst";
+		};
+
 		som-vselect-hog {
 			gpio-hog;
 			gpios = <6 GPIO_ACTIVE_HIGH>;
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-var-som.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-var-som.dtsi
index da3c7332ec34..23045f54e00e 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-var-som.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm-var-som.dtsi
@@ -4,6 +4,7 @@
  * Copyright (C) 2020 Krzysztof Kozlowski <krzk@kernel.org>
  */
 
+#include <dt-bindings/leds/common.h>
 #include "imx8mm.dtsi"
 
 / {
@@ -24,6 +25,13 @@ reg_eth_phy: regulator-eth-phy {
 		gpio = <&gpio2 9 GPIO_ACTIVE_HIGH>;
 		enable-active-high;
 	};
+
+	reg_phy_vddio: regulator-phy-vddio {
+		compatible = "regulator-fixed";
+		regulator-name = "vddio-1v8";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+	};
 };
 
 &A53_0 {
@@ -99,12 +107,17 @@ touchscreen@0 {
 };
 
 &fec1 {
-	pinctrl-names = "default";
+	pinctrl-names = "default", "sleep";
 	pinctrl-0 = <&pinctrl_fec1>;
+	pinctrl-1 = <&pinctrl_fec1_sleep>;
+	/*
+	 * The required RGMII TX and RX 2ns delays are implemented directly
+	 * in hardware via passive delay elements on the SOM PCB.
+	 * No delay configuration is needed in software via PHY driver.
+	 */
 	phy-mode = "rgmii";
 	phy-handle = <&ethphy>;
 	phy-supply = <&reg_eth_phy>;
-	fsl,magic-packet;
 	status = "okay";
 
 	mdio {
@@ -116,7 +129,27 @@ ethphy: ethernet-phy@4 {
 			reg = <4>;
 			reset-gpios = <&gpio1 9 GPIO_ACTIVE_LOW>;
 			reset-assert-us = <10000>;
-			reset-deassert-us = <10000>;
+			reset-deassert-us = <100000>;
+			vddio-supply = <&reg_phy_vddio>;
+
+			leds {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				led@0 {
+					reg = <0>;
+					color = <LED_COLOR_ID_YELLOW>;
+					function = LED_FUNCTION_LAN;
+					linux,default-trigger = "netdev";
+				};
+
+				led@1 {
+					reg = <1>;
+					color = <LED_COLOR_ID_GREEN>;
+					function = LED_FUNCTION_LAN;
+					linux,default-trigger = "netdev";
+				};
+			};
 		};
 	};
 };
@@ -366,6 +399,26 @@ MX8MM_IOMUXC_GPIO1_IO09_GPIO1_IO9		0x19
 		>;
 	};
 
+	pinctrl_fec1_sleep: fec1sleepgrp {
+		fsl,pins = <
+			MX8MM_IOMUXC_ENET_MDC_GPIO1_IO16		0x120
+			MX8MM_IOMUXC_ENET_MDIO_GPIO1_IO17		0x120
+			MX8MM_IOMUXC_ENET_TD3_GPIO1_IO18		0x120
+			MX8MM_IOMUXC_ENET_TD2_GPIO1_IO19		0x120
+			MX8MM_IOMUXC_ENET_TD1_GPIO1_IO20		0x120
+			MX8MM_IOMUXC_ENET_TD0_GPIO1_IO21		0x120
+			MX8MM_IOMUXC_ENET_RD3_GPIO1_IO29		0x120
+			MX8MM_IOMUXC_ENET_RD2_GPIO1_IO28		0x120
+			MX8MM_IOMUXC_ENET_RD1_GPIO1_IO27		0x120
+			MX8MM_IOMUXC_ENET_RD0_GPIO1_IO26		0x120
+			MX8MM_IOMUXC_ENET_TXC_GPIO1_IO23		0x120
+			MX8MM_IOMUXC_ENET_RXC_GPIO1_IO25		0x120
+			MX8MM_IOMUXC_ENET_RX_CTL_GPIO1_IO24		0x120
+			MX8MM_IOMUXC_ENET_TX_CTL_GPIO1_IO22		0x120
+			MX8MM_IOMUXC_GPIO1_IO09_GPIO1_IO9		0x100
+		>;
+	};
+
 	pinctrl_i2c1: i2c1grp {
 		fsl,pins = <
 			MX8MM_IOMUXC_I2C1_SCL_I2C1_SCL			0x400001c3
-- 
2.47.3


