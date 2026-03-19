Return-Path: <devicetree+bounces-277986-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OGQ3BHpEvGmAwAIAu9opvQ
	(envelope-from <devicetree+bounces-277986-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 19:46:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AE0E2D13F9
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 19:46:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 48B2F324719D
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 18:42:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 656C33921FF;
	Thu, 19 Mar 2026 18:41:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FHcxQzmy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDDF886329
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 18:41:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773945718; cv=none; b=Ljj2TV+xM7Gt1WsDHBcv1CdzoTOtSgHaUuTCXjAykSAR07lWYlTiIFbZmiPCX07g/9YKISrXsInolckv5DUnV0d2xzaIay84Lrs24QN3i6ceq42AwcIGGUPQ6atr59WlkYyxnVZssMP7oN37IIlJcSNusKGEMUrzts+g6lfUIRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773945718; c=relaxed/simple;
	bh=Twq8/Sdp1QWeKkMjyKbb+cbboPx1ZLUsDa9RZZ6o99I=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=b8/ZS84GntdSqMQ7WbKQQIztAhz76yf5OB5zp8HUU34/lxbOKyiofjX7qmCLAAW1nn8sHyesLqVbpwSwqRUPTQ7s15eswlKl+iToYed2eKBjptAq01ZcKvOJYh+EURNWagzt07OZU7YX4JUT99yZCGNKVwPp9SjbtXlQGP8QzfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FHcxQzmy; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-48557c8ad47so10289745e9.0
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 11:41:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773945714; x=1774550514; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jRuhOxXG+BRUmsxT9+NWnppBH4O76RAmFQCZtJj6nds=;
        b=FHcxQzmy4dES9Ocbx95Wx+qcGcbhbQAeMmOan1h+eihkYIqxiylVOY5WL9i2DwxtfN
         87XADYcNHN5ik0URrO49oHiJjb90+vDNXzyd+5gSsQdm/S5EWc4NgKHe+AFrQ3A6kxT8
         tF/u8ROWHyRMC0iUlO0w1C4p5ePRMubqqSB0EbBmWO8jx3ONhYCsRarGgjtL9NKEzP/2
         ipetvvviwNMVTxsW8WlsxKd6eGZ+qObewDibuL4sYrgUb5aRwtu/QL92+1u4FwyCIu2z
         0ptDqCwLo9PveBlrgeBzmsSIFJ8dMn+XWk7XY4evKjS8dMNKot5yrBTowll5hju/hUcc
         3hAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773945714; x=1774550514;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=jRuhOxXG+BRUmsxT9+NWnppBH4O76RAmFQCZtJj6nds=;
        b=D+JZCgXz+KDKJeLnJv8efwb7QxFkQlW9hS4nbACMid63MBuir5ahBM/Oq14WOb2Asu
         z3HIrL5n9FwrqkT2g/24hmsaYDKdpfQesiqGGIbhFtYwgWwjMpNOOoamzvLghbUq17o1
         NmxwkaWzFiiD8a0HSUrugg42eMF1fvOvLMuYFaZW60dEyv2DCOrfQNXJ02M2pFdk3/Mz
         TC5GVn8wxDZ3yjHtFCbwJoQdPIAKBWQ+3R676Ci2/l4jvUwlIDwjBNgS7VXxYQz7KQ2U
         6o18lLZdR4mhCx5n7XQApIH4DYt/14ThuNq0gmYV0MBqYrwECbLopOiOMu1A9Aa1wz2+
         N9Yw==
X-Forwarded-Encrypted: i=1; AJvYcCXm2u1txWvloyjl8RSiEnfVqCZ7Gy5cVJaaokqRvhxpD2rWOqGcI8MzNtQkO0QXKprcwIhJ8DsQHH9k@vger.kernel.org
X-Gm-Message-State: AOJu0YxfQfbI9ToYl7dFT0NL4IBlbbWCo/UrptIRqRy5CNQPGr2FBsVI
	OM3KBLlKm2WK4gXB44ERgdyXd0vuwIhKMvVgAmKA00gU26+a0KfKTG8J
X-Gm-Gg: ATEYQzwB4owohIbTTlUkvBQB9CLdFLxr7pblk+7NEq62Tcac2pkwN12NIgxTqL4yRLm
	WRJbDse/Ki7eP0YNNEoyEyU60tRyzkkAhA4FGPvCH2rzBv7fNou6WLwPzw177FgAijNmJMFvz7d
	mmpEDvGF8KNiVvKwrwX/Go3IJ6zxem/uHSRsdWfgeeF54eJ2/65V+6P0tIJrn8ljVXAwW63gaZd
	BCOiyvw3CczBYUqJXrV3cdlYa1riQireVRJrp9H8EoKMdoANOboImZJis0iYDJodm3OIGcxuEYS
	gYA3YEEds96A7PtXo7UfQ1R6/r8JOojL82ohJUPSbjHPgFKNcoGFKHGVGecRocLXveE8I3aVOgS
	NNxo9Wsekq4gn9wgXS0gQBMN2+Oy/FuVrOx9S0w7SSVOso6GmfuCM7LS59gojT1iDdeDe0YjeRX
	MeuHra7UOLCkJa5dW1B60lCYIE+P9nhKMOFmR5ceWdxNLmYQo7F/S6XN6/ZADoJwEg9abu7LnYN
	SVTQSAUeOjOvuuCkiSInIvYRjDMgRxouXy4kZw=
X-Received: by 2002:a05:600c:c16e:b0:485:4eaf:eb53 with SMTP id 5b1f17b1804b1-486fee0f975mr2351435e9.19.1773945714065;
        Thu, 19 Mar 2026 11:41:54 -0700 (PDT)
Received: from Lord-Beerus.station (net-188-152-100-94.cust.dsl.teletu.it. [188.152.100.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486f8b1fe65sm77289195e9.5.2026.03.19.11.41.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 11:41:53 -0700 (PDT)
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
X-Google-Original-From: Stefano Radaelli <stefano.r@variscite.com>
To: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Cc: pierluigi.p@variscite.com,
	Stefano Radaelli <stefano.r@variscite.com>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: [PATCH v4 04/11] arm64: dts: freescale: imx8mm-var-som: Add support for WM8904 audio codec
Date: Thu, 19 Mar 2026 19:40:24 +0100
Message-ID: <71a37de0ca214ac4ed1200479dadc25eb7820ffd.1773944896.git.stefano.r@variscite.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1773944896.git.stefano.r@variscite.com>
References: <cover.1773944896.git.stefano.r@variscite.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-277986-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[variscite.com,nxp.com,pengutronix.de,gmail.com,kernel.org];
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
	NEURAL_HAM(-0.00)[-0.784];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[2.98.90.0:email,variscite.com:email,variscite.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,1a:email]
X-Rspamd-Queue-Id: 6AE0E2D13F9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Stefano Radaelli <stefano.r@variscite.com>

The VAR-SOM-MX8MM can integrate the WM8904, a high-performance
ultra-low-power stereo codec optimized for portable audio applications.

Add the WM8904 device to the appropriate I2C bus, enable the SAI
peripheral, and introduce the sound node to expose the sound card to the
system.

Signed-off-by: Stefano Radaelli <stefano.r@variscite.com>
---
v3->v4:
 - Remove "This patch" from commit messages

v2->v3:
 - 

v1->v2:
 - 

 .../boot/dts/freescale/imx8mm-var-som.dtsi    | 100 +++++++++++++++++-
 1 file changed, 97 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-var-som.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-var-som.dtsi
index 24924ee1e8c7..7cedef8add32 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-var-som.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm-var-som.dtsi
@@ -14,6 +14,14 @@ memory@40000000 {
 		reg = <0x0 0x40000000 0 0x80000000>;
 	};
 
+	reg_audio_supply: regulator-3p3v {
+		compatible = "regulator-fixed";
+		regulator-name = "wm8904-supply";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+	};
+
 	reg_eth_phy: regulator-eth-phy {
 		compatible = "regulator-fixed";
 		pinctrl-names = "default";
@@ -31,6 +39,34 @@ reg_phy_vddio: regulator-phy-vddio {
 		regulator-min-microvolt = <1800000>;
 		regulator-max-microvolt = <1800000>;
 	};
+
+	sound {
+		compatible = "simple-audio-card";
+		simple-audio-card,bitclock-master = <&codec_dai>;
+		simple-audio-card,format = "i2s";
+		simple-audio-card,frame-master = <&codec_dai>;
+		simple-audio-card,mclk-fs = <256>;
+		simple-audio-card,name = "wm8904-audio";
+		simple-audio-card,routing =
+			"Headphone Jack", "HPOUTL",
+			"Headphone Jack", "HPOUTR",
+			"IN2L", "Line In Jack",
+			"IN2R", "Line In Jack",
+			"IN1L", "Microphone Jack",
+			"IN1R", "Microphone Jack";
+		simple-audio-card,widgets =
+			"Microphone", "Microphone Jack",
+			"Headphone", "Headphone Jack",
+			"Line", "Line In Jack";
+
+		codec_dai: simple-audio-card,codec {
+			sound-dai = <&wm8904>;
+		};
+
+		simple-audio-card,cpu {
+			sound-dai = <&sai5>;
+		};
+	};
 };
 
 &A53_0 {
@@ -257,18 +293,57 @@ ldo6_reg: LDO6 {
 
 &i2c3 {
 	clock-frequency = <400000>;
-	pinctrl-names = "default";
+	pinctrl-names = "default", "gpio";
 	pinctrl-0 = <&pinctrl_i2c3>;
+	pinctrl-1 = <&pinctrl_i2c3_gpio>;
+	scl-gpios = <&gpio5 18 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	sda-gpios = <&gpio5 19 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 	status = "okay";
 
-	/* TODO: configure audio, as of now just put a placeholder */
 	wm8904: codec@1a {
 		compatible = "wlf,wm8904";
 		reg = <0x1a>;
-		status = "disabled";
+		#sound-dai-cells = <0>;
+		clocks = <&clk IMX8MM_CLK_SAI5_ROOT>;
+		clock-names = "mclk";
+		AVDD-supply = <&ldo5_reg>;
+		CPVDD-supply = <&ldo5_reg>;
+		DBVDD-supply = <&reg_audio_supply>;
+		DCVDD-supply = <&ldo5_reg>;
+		MICVDD-supply = <&ldo5_reg>;
+		wlf,drc-cfg-names = "default", "peaklimiter", "tradition",
+				    "soft", "music";
+		/*
+		 * Config registers per name, respectively:
+		 * KNEE_IP = 0,   KNEE_OP = 0,     HI_COMP = 1,   LO_COMP = 1
+		 * KNEE_IP = -24, KNEE_OP = -6,    HI_COMP = 1/4, LO_COMP = 1
+		 * KNEE_IP = -42, KNEE_OP = -3,    HI_COMP = 0,   LO_COMP = 1
+		 * KNEE_IP = -45, KNEE_OP = -9,    HI_COMP = 1/8, LO_COMP = 1
+		 * KNEE_IP = -30, KNEE_OP = -10.5, HI_COMP = 1/4, LO_COMP = 1
+		 */
+		wlf,drc-cfg-regs = /bits/ 16 <0x01af 0x3248 0x0000 0x0000>,
+				   /bits/ 16 <0x04af 0x324b 0x0010 0x0408>,
+				   /bits/ 16 <0x04af 0x324b 0x0028 0x0704>,
+				   /bits/ 16 <0x04af 0x324b 0x0018 0x078c>,
+				   /bits/ 16 <0x04af 0x324b 0x0010 0x050e>;
+		/* GPIO1 = DMIC_CLK, don't touch others */
+		wlf,gpio-cfg = <0x0018>, <0xffff>, <0xffff>, <0xffff>;
 	};
 };
 
+&sai5 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_sai5>;
+	assigned-clocks = <&clk IMX8MM_CLK_SAI5>;
+	assigned-clock-parents = <&clk IMX8MM_AUDIO_PLL1_OUT>;
+	assigned-clock-rates = <1536000>;
+	#sound-dai-cells = <0>;
+	dmas = <&sdma2 8 25 0>, <&sdma2 9 25 0>;
+	dma-names = "rx", "tx";
+	fsl,sai-mclk-direction-output;
+	status = "okay";
+};
+
 &snvs_pwrkey {
 	status = "okay";
 };
@@ -413,6 +488,13 @@ MX8MM_IOMUXC_I2C3_SDA_I2C3_SDA			0x400001c3
 		>;
 	};
 
+	pinctrl_i2c3_gpio: i2c3gpiogrp {
+		fsl,pins = <
+			MX8MM_IOMUXC_I2C3_SCL_GPIO5_IO18		0x1c3
+			MX8MM_IOMUXC_I2C3_SDA_GPIO5_IO19		0x1c3
+		>;
+	};
+
 	pinctrl_pmic: pmicirqgrp {
 		fsl,pins = <
 			MX8MM_IOMUXC_SD1_DATA6_GPIO2_IO8		0x141
@@ -431,6 +513,18 @@ MX8MM_IOMUXC_GPIO1_IO03_GPIO1_IO3		0x1c0
 		>;
 	};
 
+	pinctrl_sai5: sai5grp {
+		fsl,pins = <
+			MX8MM_IOMUXC_SAI5_RXD1_SAI5_TX_SYNC		0xd6
+			MX8MM_IOMUXC_SAI5_RXFS_SAI5_RX_SYNC		0xd6
+			MX8MM_IOMUXC_SAI5_RXD3_SAI5_TX_DATA0		0xd6
+			MX8MM_IOMUXC_SAI5_RXD0_SAI5_RX_DATA0		0xd6
+			MX8MM_IOMUXC_SAI5_RXC_SAI5_RX_BCLK		0xd6
+			MX8MM_IOMUXC_SAI5_RXD2_SAI5_TX_BCLK		0xd6
+			MX8MM_IOMUXC_SAI5_MCLK_SAI5_MCLK		0xd6
+		>;
+	};
+
 	pinctrl_uart2: uart2grp {
 		fsl,pins = <
 			MX8MM_IOMUXC_SAI3_TXFS_UART2_DCE_RX		0x140
-- 
2.47.3


