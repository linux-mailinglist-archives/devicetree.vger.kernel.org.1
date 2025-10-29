Return-Path: <devicetree+bounces-232910-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E303EC1D02A
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 20:30:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 67B054E1A7E
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 19:29:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D20B435A138;
	Wed, 29 Oct 2025 19:29:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bB3cQBUY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A064A359FA7
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 19:29:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761766156; cv=none; b=hS6EHgSG4mDc6Q2D+f/CblvuKSlB6H2JsVOkrRiV8AnnsgLJeprk9Pnr8bSRRbLCiPUJ4UVxe08BuDbv/xbmlvExl/UHXFIC6PFhTVYkGLJqMv5nR5rpyV/9KvdV1Er5ss2riTmKBNqWlJrrYvp6BhSc1aIXlKYfD8pjpcnMQKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761766156; c=relaxed/simple;
	bh=L4cc62I8VBtR9WYn3KE48vIMlnYDeTk5okhOWpkUMz8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=PPlp+cBrfi/RDPT5uU6No2qeQewhgSLZ9LT52Pqyzsnzuw/d1DOAzyNqNekCgHIR0pHOaC47kuQJOTwqBpdTaFrcvfllYtt+wwVDNAzOIU9VYm0O4np876Gr+Zw0vSy6PXCQhEyX+C5RF7inr3vD7PhR3CMYJsY5My20g7UC5o4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bB3cQBUY; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-afcb7ae6ed0so57280766b.3
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 12:29:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761766153; x=1762370953; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+QiFp/LdLdfHAJfOJPJO9VTxDlMuNiD8Zbuk8ezHLYs=;
        b=bB3cQBUY2Sk+BlS028oWK0FNDLPcooOY0/tR3murTWV+dYNrJ0sCAXxVwfPk+mArJD
         oVX4HFde/NBVr4e9Lhs6Am5aettcsVLSJ5Bl5J6jAfe2wQ/Dq0e6uM6wydU8cnUQii8c
         Y9is9pdnDXhBh5LOnTCgbti4SB4z4A1SuRICYtpaMGrTeKJaAZC83aZgHCpOX6Ar+OVt
         5OcVxDeXvPgTM/TSVo22ZxxyQUMRt+cj5YF8Hl7jBjOrqahOWOvtzgpOoQK2YXx0xgSR
         9SKlSd8+VSYnATkf8cbJG2qyv//9Ph3eKgAA+udRGEnpkXu+0h0sbEhnH7ucYkwJDb17
         MxTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761766153; x=1762370953;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+QiFp/LdLdfHAJfOJPJO9VTxDlMuNiD8Zbuk8ezHLYs=;
        b=Ff4vLZjd7wd15n0KTiJUXLLW5Ji4Jsor9DcPK043Otm/TbEW5myB/BX3+dd8Xdtvjj
         cl3/1QbiNoOkw7BGC+Ea8j5SzeDUalxu/Pw0h2buIKHACf8+l2R3pUk2pwwP/oVmwGO2
         W/kcr527NLrPzKpL/Za2M/V1Nar5TgMXoU9DpNmTk8CINwg6QOxWm0enbjGWUAzOJoRb
         Szu0RvcM6Pu1EMYBjeHsJE+UesN6JwXDgcewLA0VHfv/j237VrX3neuVJChhEaCAJj8e
         Wje2/67nqsxjoUiQN3gCGwM9Nzh9pqrp9fcNLK7HXLXHnDVrUL63OtjnViV+l6bgIT9J
         nkRg==
X-Gm-Message-State: AOJu0YytCAhkPgX3YIVzjiJAmSAt9mERkA8bylu+Gzz47qub3Qpsf5mU
	H++3HaGia+puMFRdOo6bd0yW8zBs5a9x7bgUAV1YmaZewKtb3O4UNiE+wF43M08j
X-Gm-Gg: ASbGnctLgy+yTDy0VI8J/j8IG88b6PKYgUiy8cXvgI0Zzw+HTv3QMf5s4eIimfz5DRu
	DEI4hfu/hWUiuUbs//POpKvfMcwX48Vnpwa2s8BLNxdvPX5FF7oqb98laKRR3QnRj97YyMesML+
	oBb1QxageAzzkn6lZzhlzgnfEI/GU0spbDKKIdX2usP4MdvuISq6ohcjtfQzcT0+46v/7PBIrix
	+akR4PtUky6nvffsa/PyTr2MCyMKvIpjONGHjPV1o2xyumKSlcWcBNvWgmaJ/47SYIL+nHJ5xYM
	5q4iQYkfk+222eyRCxrnM4q5DLtbZgsKjWMWAPAc8RdzgPBdaWnmTKeVDgFdefB69JWNiylbteA
	9VDW2fzwukftnEPDHwUl2JKKcsiRskvi+uzvwqA2MM8pp/zlXEnQm0v7oxrC3XPaiEqHasnXrKF
	kjFzCXGRcMSU7ppbGt57hkysyADg4LLzV9AutrpE1Dh0EmOGBYCKsbMdqiGSmR7Q==
X-Google-Smtp-Source: AGHT+IFMO9AToKhALDtmsrq81s5iqoQxzOiv7HbkBgHJatpEZpryGrj89HkqN9nJYwlK5nQZ6d5XOA==
X-Received: by 2002:a17:907:c0f:b0:b6f:9da9:4b46 with SMTP id a640c23a62f3a-b703d5333b1mr421529766b.43.1761766152587;
        Wed, 29 Oct 2025 12:29:12 -0700 (PDT)
Received: from Lord-Beerus.station (net-93-146-98-100.cust.vodafonedsl.it. [93.146.98.100])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d8548eda6sm1496673266b.75.2025.10.29.12.29.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 12:29:12 -0700 (PDT)
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
To: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Stefano Radaelli <stefano.radaelli21@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v1 3/4] arm64: dts: freescale: imx93-var-som: Add support for WM8904 audio codec
Date: Wed, 29 Oct 2025 20:28:48 +0100
Message-ID: <20251029192852.656806-4-stefano.radaelli21@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251029192852.656806-1-stefano.radaelli21@gmail.com>
References: <20251029192852.656806-1-stefano.radaelli21@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The VAR-SOM-MX93 can integrate the WM8904, a high-performance
ultra-low-power stereo codec optimized for portable audio applications.

This patch adds the WM8904 device to the appropriate I2C bus, enables
the SAI peripheral, and introduces the sound node to expose the
sound card to the system.

Signed-off-by: Stefano Radaelli <stefano.radaelli21@gmail.com>
---
 .../boot/dts/freescale/imx93-var-som.dtsi     | 93 +++++++++++++++++++
 1 file changed, 93 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx93-var-som.dtsi b/arch/arm64/boot/dts/freescale/imx93-var-som.dtsi
index 368530f5831f..d94b40d1d804 100644
--- a/arch/arm64/boot/dts/freescale/imx93-var-som.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx93-var-som.dtsi
@@ -12,6 +12,34 @@ /{
 	model = "Variscite VAR-SOM-MX93 module";
 	compatible = "variscite,var-som-mx93", "fsl,imx93";
 
+	sound {
+		compatible = "simple-audio-card";
+		simple-audio-card,bitclock-master = <&codec_dai>;
+		simple-audio-card,format = "i2s";
+		simple-audio-card,frame-master = <&codec_dai>;
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
+		simple-audio-card,mclk-fs = <256>;
+
+		codec_dai: simple-audio-card,codec {
+			sound-dai = <&wm8904>;
+		};
+
+		simple-audio-card,cpu {
+			sound-dai = <&sai1>;
+		};
+	};
+
 	usdhc3_pwrseq: mmc-pwrseq {
 		compatible = "mmc-pwrseq-simple";
 		post-power-on-delay-ms = <100>;
@@ -152,6 +180,36 @@ ldo5: LDO5 {
 			};
 		};
 	};
+
+	wm8904: audio-codec@1a {
+		compatible = "wlf,wm8904";
+		reg = <0x1a>;
+		#sound-dai-cells = <0>;
+		clocks = <&clk IMX93_CLK_SAI1_GATE>;
+		clock-names = "mclk";
+		AVDD-supply = <&buck5>;
+		CPVDD-supply = <&buck5>;
+		DBVDD-supply = <&buck4>;
+		DCVDD-supply = <&buck5>;
+		MICVDD-supply = <&buck5>;
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
 };
 
 /* BT module */
@@ -166,6 +224,17 @@ bluetooth {
 	};
 };
 
+&sai1 {
+	pinctrl-names = "default", "sleep";
+	pinctrl-0 = <&pinctrl_sai1>;
+	pinctrl-1 = <&pinctrl_sai1_sleep>;
+	assigned-clocks = <&clk IMX93_CLK_SAI1>;
+	assigned-clock-parents = <&clk IMX93_CLK_AUDIO_PLL>;
+	assigned-clock-rates = <12288000>;
+	fsl,sai-mclk-direction-output;
+	status = "okay";
+};
+
 /* eMMC */
 &usdhc1 {
 	pinctrl-names = "default", "state_100mhz", "state_200mhz";
@@ -247,6 +316,30 @@ MX93_PAD_DAP_TCLK_SWCLK__LPUART5_CTS_B  0x31e
 		>;
 	};
 
+	pinctrl_sai1: sai1grp {
+		fsl,pins = <
+			MX93_PAD_SAI1_TXC__SAI1_TX_BCLK                 0x31e
+			MX93_PAD_SAI1_TXFS__SAI1_TX_SYNC                0x31e
+			MX93_PAD_SAI1_TXD0__SAI1_TX_DATA00              0x31e
+			MX93_PAD_SAI1_RXD0__SAI1_RX_DATA00              0x31e
+			MX93_PAD_I2C2_SDA__SAI1_RX_BCLK                 0x31e
+			MX93_PAD_I2C2_SCL__SAI1_RX_SYNC                 0x31e
+			MX93_PAD_UART2_RXD__SAI1_MCLK                   0x31e
+		>;
+	};
+
+	pinctrl_sai1_sleep: sai1-sleepgrp {
+		fsl,pins = <
+			MX93_PAD_SAI1_TXC__GPIO1_IO12           0x31e
+			MX93_PAD_SAI1_TXFS__GPIO1_IO11          0x31e
+			MX93_PAD_SAI1_TXD0__GPIO1_IO13          0x31e
+			MX93_PAD_SAI1_RXD0__GPIO1_IO14          0x31e
+			MX93_PAD_UART2_RXD__GPIO1_IO06          0x31e
+			MX93_PAD_I2C2_SDA__GPIO1_IO03           0x31e
+			MX93_PAD_I2C2_SCL__GPIO1_IO02           0x31e
+		>;
+	};
+
 	pinctrl_usdhc1: usdhc1grp {
 		fsl,pins = <
 			MX93_PAD_SD1_CLK__USDHC1_CLK		0x15fe
-- 
2.43.0


