Return-Path: <devicetree+bounces-233214-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 905A1C1FEAB
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 13:04:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id AB92F4EAA7C
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 12:03:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DE4C34217C;
	Thu, 30 Oct 2025 12:02:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EE+C4Zsl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F5FA33FE34
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 12:02:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761825772; cv=none; b=O3bEr4DD13K6QevutxtkFCT1LAFvn8caM4btjzyvKTJxlPgTXLweHAjtAAh3PoTgpq759CeVg+/FuHmmwmpzfOCK9BIyTXnUVUs/0Ui7U3EEM88HuEXVq+w4eIY26FvutegIfbOI91jgwu/piZK/Se5AfefuiPXaQHd8/A0bUnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761825772; c=relaxed/simple;
	bh=hmqPPCWEsG0TxsTTRmCDFYbSCUWjuiTN+UklRvEShYo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=gcbwKC9w+agv/abRN4FkiL4hmvN59G5QcGujFkRLhfWay6/9U65Hev3imgLtGcgQJXC4M6IjoKyfQBcqEuAS4YfuSmE3aQiTgdzFD+uSceK+LKP5suseew4AkMhKxRC1KEB2KRJay2CUnwKFn7t9f/Nx/qenl/CxfjBWS+5AudA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EE+C4Zsl; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-3ed20bdfdffso894440f8f.2
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 05:02:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761825768; x=1762430568; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w0Gg9WxbBnDApYx2wA2XYYZNGGyZ5yPAvBIm0lYjykc=;
        b=EE+C4Zslk+XOuhBPf4oHh9NWiw/3zWDsQyYnZ1FX2dYYUIloGP+ZAicVqBQmbzUnQ+
         ce/Jg+eSELCsOON2kSBUMkds79eFLb1deNz609NGCVXiCogOL1cT1PHHQQmSYZntRm8B
         EhcTfD6oaxaTPCE8KejUEgY+eociNMiq4NrIm9JlhYuknz1cwxpXVRkDVlAiS0J8J2cx
         fDsGMHHAqow1HGSVxgMlK8bDh8Iro5pxNJW3/MTyAFevKWPTOo9LHoNMg0VXNBNoSz6y
         m4u8Q6haedKXBqwYHkttgpfS/7QhIueeO29Kvvk99n1TQOxooPjk1UwXIydFWb4XyCew
         QoNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761825768; x=1762430568;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=w0Gg9WxbBnDApYx2wA2XYYZNGGyZ5yPAvBIm0lYjykc=;
        b=tM9FFPu0YXy+SJSkwlZBsS7p3SGVpS6DAh+CDq2DiZVwn29KEX1aeG32llzPJlDeKr
         mBCqbRWd5pKzw2HCBZ9hX9EJ1o2GQYGcg3LXgQIN+4tujc2HQ0H1krL3wKixqCic96RW
         1VYwYlv0HdM4j7ivpn4zT980KyrEkKGjT9l2yB4GcXFgqH5xajHstQ8fq6Qq+ousigln
         p1tcZDaDl0UsX04CbBzueSuIeIw4W+/BmSCthu4mHCjf87DOoL1SvbZT7bNmRWJhwumC
         FIV34Mtz9yEHmIxQrt8NeDoj0NyQTNm41Gk5ePfNvnsh0rm45m1dY83d7NhnM8EtMfcm
         /prg==
X-Gm-Message-State: AOJu0YxV05ilSz/2nHq79NfLySb9T1JCw7dCdZHuX618WDcoc7oHeljW
	ROA/a2VuR15c1y2NbffuLgs/3hpYU8vje9uqQtfaJ4Fc7XqDb1cYVU7cB/wfRbGK
X-Gm-Gg: ASbGncsRqhHfrOtbffJ/L8XTB5rIgxrIE1lvvADb7tD32vLApFHWElIyEkRNo62Ba69
	5n7aDn3HUd14SyMIpZqOAH5Fp6azs1CLi8ltg6vyFJOXj4bYUPfuKYi5LTJ9A2JV3rx2kRasgmZ
	rNjqysLoLc7FIOn02b/J2WfWSWVKFTgb8wuw4K6anf/TfR9ygneiPQ4Nlryp1Nud7f4EuZxvw3B
	s7UqSEmft/xxFnuVdE9TPNsGHNiCfBPwiXaam7mwIguMC1wBGY1X02EhMsuJPwzT2I8l1t6fGLo
	TsGtj3jLCAXsocLi+4JRKvlCFJsfPSsqtAmbN8OuhwTSED4n5C6CSw6+ESKIhY5eqK2mdWdb6xx
	FO0VVfdWqcUeGFz4dGGFTRLVKyYvvkBS6YxVLn1Ue9QUCRbtfPJMMn4cLmjzneAIHcj9SMjWc1z
	qMnn0ZEvJR4Xlm52jEHr24On7ZlPqjOqAYBtm88rEJuH38l6idLC2jO2FRbYqG6C1ZnxDiVFDV
X-Google-Smtp-Source: AGHT+IFNDmrRczFVqxNz09m/FdcF3/tfoq2Go7JkbHb4AzzakE1Qcbn3maTYKR1GTJB3egHOnF+nBA==
X-Received: by 2002:a05:6000:1887:b0:3fb:9950:b9eb with SMTP id ffacd0b85a97d-429aef9515fmr5266977f8f.28.1761825768348;
        Thu, 30 Oct 2025 05:02:48 -0700 (PDT)
Received: from Lord-Beerus.station (net-93-146-98-100.cust.vodafonedsl.it. [93.146.98.100])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429b9b436efsm2399848f8f.23.2025.10.30.05.02.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Oct 2025 05:02:48 -0700 (PDT)
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
Subject: [PATCH v2 3/4] arm64: dts: freescale: imx93-var-som: Add support for WM8904 audio codec
Date: Thu, 30 Oct 2025 13:01:23 +0100
Message-ID: <20251030120127.509933-4-stefano.radaelli21@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251030120127.509933-1-stefano.radaelli21@gmail.com>
References: <20251030120127.509933-1-stefano.radaelli21@gmail.com>
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
v2:
 - Fix pinctrl alignment

 .../boot/dts/freescale/imx93-var-som.dtsi     | 93 +++++++++++++++++++
 1 file changed, 93 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx93-var-som.dtsi b/arch/arm64/boot/dts/freescale/imx93-var-som.dtsi
index 85fd9c9c9372..0b7f6740e5ad 100644
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
+			MX93_PAD_SAI1_TXC__SAI1_TX_BCLK		0x31e
+			MX93_PAD_SAI1_TXFS__SAI1_TX_SYNC	0x31e
+			MX93_PAD_SAI1_TXD0__SAI1_TX_DATA00	0x31e
+			MX93_PAD_SAI1_RXD0__SAI1_RX_DATA00	0x31e
+			MX93_PAD_I2C2_SDA__SAI1_RX_BCLK		0x31e
+			MX93_PAD_I2C2_SCL__SAI1_RX_SYNC		0x31e
+			MX93_PAD_UART2_RXD__SAI1_MCLK		0x31e
+		>;
+	};
+
+	pinctrl_sai1_sleep: sai1-sleepgrp {
+		fsl,pins = <
+			MX93_PAD_SAI1_TXC__GPIO1_IO12		0x31e
+			MX93_PAD_SAI1_TXFS__GPIO1_IO11		0x31e
+			MX93_PAD_SAI1_TXD0__GPIO1_IO13		0x31e
+			MX93_PAD_SAI1_RXD0__GPIO1_IO14		0x31e
+			MX93_PAD_UART2_RXD__GPIO1_IO06		0x31e
+			MX93_PAD_I2C2_SDA__GPIO1_IO03		0x31e
+			MX93_PAD_I2C2_SCL__GPIO1_IO02		0x31e
+		>;
+	};
+
 	pinctrl_usdhc1: usdhc1grp {
 		fsl,pins = <
 			MX93_PAD_SD1_CLK__USDHC1_CLK		0x15fe
-- 
2.43.0


