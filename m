Return-Path: <devicetree+bounces-246340-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D80CCBC0AE
	for <lists+devicetree@lfdr.de>; Sun, 14 Dec 2025 22:54:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D4C873021E45
	for <lists+devicetree@lfdr.de>; Sun, 14 Dec 2025 21:53:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05A2C31619E;
	Sun, 14 Dec 2025 21:53:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EqmYigmA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92696315D27
	for <devicetree@vger.kernel.org>; Sun, 14 Dec 2025 21:53:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765749192; cv=none; b=gq+f4O6SLesLzjWRxO2fd4cBvSrttRbL2L8rw0L0zCgxhWSuzL0tESYmMbxYvcizSq9F078aPZjCBqqAYzmP6q4XCJG1g6RJdYtzNg0a6Fknjwx1RRxMjoqqNvsKjZKAoS/yTOO9+5lA9Ti9Ssf+uQSqDFEE6KHgZxXXT1/x344=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765749192; c=relaxed/simple;
	bh=9KUtdwNzjKPOlpkRFydDU5oxTYkDvAsUbiyPboaBOYo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=q7nou/2PksuI6xaffFMk7eO9D0SbhH12BCNWXnZhE5JlNSZnd62QoPlrq7wg199zS2lePBIW6sQ6kCe0KA0IMMV+Ra9XzfJd03pftwb6HaO1+x0xE6LogcIGCE+MPB7GeQPIFr3Yh2gMVqCCGUpmbzboeCZkB6mAi9z5w3GF+PM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EqmYigmA; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-42fbab737f5so1123365f8f.1
        for <devicetree@vger.kernel.org>; Sun, 14 Dec 2025 13:53:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765749189; x=1766353989; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/Tdn9gV/6JqfNO9pbAvhWxvcOUTKXJcAnzs6w4PTTfM=;
        b=EqmYigmATl6bjCAKb8GVYmNgIN6FMVr416AqZVxKFgIr7qithCBqx8QoO9QfLwc/Xm
         yP7+tbOBXFI7kFK1Ly3Ck16z48yRO7iFLHkGPZBVoQIc1XWPjXP5spxoBqBPdhHHutdw
         UPPT+6DlbXWnlV5vS5OvzBYoJ0DBcSLCYrCTut3TUctqWIpLuYkOZA0OlMS+ct9e3b0/
         uFXFx9LHpKlOrVIaruN+Y7kLcugw1vi5+yV9eV70+suqga/PMj97DCVifnRGwCUCwE44
         Ml/pAUHQZ8FldRblflRQYDai1wa77me/eCvG4F6hhAOP0ucJeGG4Bw3VizYRDReNJcDS
         jOUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765749189; x=1766353989;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=/Tdn9gV/6JqfNO9pbAvhWxvcOUTKXJcAnzs6w4PTTfM=;
        b=k/ZFZkq+MxzJc9/x6p/UDg3PldsURbqemhdFTBYNV5m8G03s7ID8veI/fj31jVnx/9
         WdyD/Fc2xin8RbtoqGOAVRN98Ti5wao1crtzON0cZfWQfDxtSI7NwkErpC1BoUgahHdU
         /3HGMZNzotv7ZlYzsSEYf8mujK1yS6/hi7UP1gVbPV9Tm+h7VMpQtrvFhB1eSWStHPGm
         /mxGaxbHtfdgM2DXKGiW3wgtVr36RupdW9zeXDR8LsvSB8VrhBcnlv7mzkks2y2VNC3M
         cMm9RnUICUKRtViVOP1h1uZgimZ2ofqa/nJd3NLfyU2L/2NYDt4D45OeehD5c44W/arr
         KL3A==
X-Gm-Message-State: AOJu0YybupzAO+IA/JKdSkdQhjmpkeGNBi8j/TQ7WBjUz11W+fkfgnGn
	W8VxSWcpbQxpCksCrqIVEqXrSTfOdYwlc4iqD5KOcLvYdguSMi7OUKsC5Apy8yY6
X-Gm-Gg: AY/fxX6jCUn4P0GZjV4AMwXyMF/3x3gY33fjTnWx76rO6NH/NIvnlBSeF5kcWP0Jsb7
	YfdCwQhe9H9+dShVDVp/rkeHYED1LF1YZRvjqDNgI/H3xRERyzCKma/fVlliBxW/+jyutgmni8p
	XvV0s9dklZjWlkftR8JTJ3CJnNnhm76mZIfhSkGV6koopJSPMIomfwZ79g6ZmKWcZOG8nUN/MV9
	tW+Bit11ozI07tdVavY5kp7AX5ZpUgzkRZwGPPgM2zXB+O5oDYyhNUxHfcXsSFeZL1CohUhmpAm
	1mu5xHqEHELhlNQfR0/2+erdcUfbE5mkP++ZfNmG2fDXb8BwquNw9YdUW4ZJm19KRAPPWcWnIck
	Z/5VMcEe5i7qHSpVLGCnhx/wypl+kZx3Wuu1YWLMf2UMZ13ygu5q7Q55zZBM2HJoPDgPhW6bWRE
	LbVBi7r3oiHo5UCXUSrZfU9kbjISGbRTMNMpCLHllgDG6y1sMeT4vZ8fLc6n2Q4xNmUplxXa2pT
	TnR2I6MpAXMdvw=
X-Google-Smtp-Source: AGHT+IG+rgfgN+Ap9RYxSwhweoK+D05CCHg0wt/q7sG4diqCgX52kzMUBhkWGakUvtMafmHzyyuIVA==
X-Received: by 2002:a05:6000:24c4:b0:411:3c14:3ad9 with SMTP id ffacd0b85a97d-42fb3ecd768mr9691867f8f.21.1765749188732;
        Sun, 14 Dec 2025 13:53:08 -0800 (PST)
Received: from Lord-Beerus.station (net-5-94-28-5.cust.vodafonedsl.it. [5.94.28.5])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-430f6a42c8csm7625568f8f.16.2025.12.14.13.53.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Dec 2025 13:53:07 -0800 (PST)
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
X-Google-Original-From: Stefano Radaelli <stefano.r@variscite.com>
To: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Stefano Radaelli <stefano.r@variscite.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 5/6] arm64: dts: imx8mp-var-som: Add support for WM8904 audio codec
Date: Sun, 14 Dec 2025 22:52:52 +0100
Message-ID: <20251214215256.5812-6-stefano.r@variscite.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251214215256.5812-1-stefano.r@variscite.com>
References: <20251214215256.5812-1-stefano.r@variscite.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The VAR-SOM-MX8MP can integrate the WM8904, a high-performance
ultra-low-power stereo codec optimized for portable audio applications.

This patch adds the WM8904 device to the appropriate I2C bus, enables
the SAI peripheral, and introduces the sound node to expose the
sound card to the system.

Signed-off-by: Stefano Radaelli <stefano.r@variscite.com>
---
 .../boot/dts/freescale/imx8mp-var-som.dtsi    | 94 +++++++++++++++++++
 1 file changed, 94 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-var-som.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-var-som.dtsi
index 2c49d53e30c3..6da5df11c44a 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-var-som.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp-var-som.dtsi
@@ -29,6 +29,14 @@ iw61x_pwrseq: wifi-pwrseq {
 			      <&gpio2 19 GPIO_ACTIVE_LOW>; /* WIFI_PWR_EN */
 	};
 
+	reg_audio_supply: regulator-3p3v {
+		compatible = "regulator-fixed";
+		regulator-name = "wm8904-supply";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+	};
+
 	reg_phy_supply: regulator-phy-supply {
 		compatible = "regulator-fixed";
 		regulator-name = "phy-supply";
@@ -46,6 +54,34 @@ reg_phy_vddio: regulator-phy-vddio {
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
+			sound-dai = <&sai3>;
+		};
+	};
 };
 
 &A53_0 {
@@ -208,6 +244,52 @@ ldo5: LDO5 {
 			};
 		};
 	};
+
+	wm8904: audio-codec@1a {
+		compatible = "wlf,wm8904";
+		reg = <0x1a>;
+		#sound-dai-cells = <0>;
+		clocks = <&audio_blk_ctrl IMX8MP_CLK_AUDIOMIX_SAI3_MCLK1>;
+		clock-names = "mclk";
+		AVDD-supply = <&reg_audio_supply>;
+		CPVDD-supply = <&reg_audio_supply>;
+		DBVDD-supply = <&reg_audio_supply>;
+		DCVDD-supply = <&reg_audio_supply>;
+		MICVDD-supply = <&reg_audio_supply>;
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
+	};
+};
+
+&sai3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_sai3>;
+	assigned-clocks = <&clk IMX8MP_CLK_SAI3>;
+	assigned-clock-parents = <&clk IMX8MP_AUDIO_PLL1_OUT>;
+	assigned-clock-rates = <11536000>;
+	clocks = <&audio_blk_ctrl IMX8MP_CLK_AUDIOMIX_SAI3_IPG>,
+		<&clk IMX8MP_CLK_DUMMY>,
+		<&audio_blk_ctrl IMX8MP_CLK_AUDIOMIX_SAI3_MCLK1>,
+		<&clk IMX8MP_CLK_DUMMY>,
+		<&clk IMX8MP_CLK_DUMMY>;
+	clock-names = "bus", "mclk0", "mclk1", "mclk2", "mclk3";
+	fsl,sai-mclk-direction-output;
+	status = "okay";
 };
 
 /* BT */
@@ -299,6 +381,18 @@ MX8MP_IOMUXC_SPDIF_RX__GPIO5_IO04				0x1c0
 		>;
 	};
 
+	pinctrl_sai3: sai3grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SAI3_TXFS__AUDIOMIX_SAI3_TX_SYNC                   0xd6
+			MX8MP_IOMUXC_SAI3_TXC__AUDIOMIX_SAI3_TX_BCLK                    0xd6
+			MX8MP_IOMUXC_SAI3_RXD__AUDIOMIX_SAI3_RX_DATA00                  0xd6
+			MX8MP_IOMUXC_SAI3_TXD__AUDIOMIX_SAI3_TX_DATA00                  0xd6
+			MX8MP_IOMUXC_SAI3_MCLK__AUDIOMIX_SAI3_MCLK                      0xd6
+			MX8MP_IOMUXC_SAI3_RXFS__AUDIOMIX_SAI3_RX_SYNC                   0xd6
+			MX8MP_IOMUXC_SAI3_RXC__AUDIOMIX_SAI3_RX_BCLK                    0xd6
+		>;
+	};
+
 	pinctrl_uart3: uart3grp {
 		fsl,pins = <
 			MX8MP_IOMUXC_ECSPI1_SCLK__UART3_DCE_RX                          0x140
-- 
2.47.3


