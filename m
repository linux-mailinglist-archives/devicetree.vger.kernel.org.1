Return-Path: <devicetree+bounces-246275-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A233CBB4B6
	for <lists+devicetree@lfdr.de>; Sun, 14 Dec 2025 00:11:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 603E33024E51
	for <lists+devicetree@lfdr.de>; Sat, 13 Dec 2025 23:09:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67A801F03EF;
	Sat, 13 Dec 2025 23:09:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MQGPdZ06"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18F0E266B6B
	for <devicetree@vger.kernel.org>; Sat, 13 Dec 2025 23:09:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765667379; cv=none; b=bqQtJs7M7jAF01HO0A+BgaS1z8sDIxZMax7IlUHb+/TicVTLc7L8m4lExfVHHB6kEMdraNnD0/jo1yuMj+OdEMYZfB2jSzwSyom/cj0tm+5lEwqUtZljtsJlLBU9DtyW1z92EBysTtrQulrTS11dtF7doL9Wl/Pk1dOVczsrEHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765667379; c=relaxed/simple;
	bh=2BUPsrNioNxK4+IHCCv/2w8ycDCSKi9sjQBr9y1shEE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=cFdVNdepQZaDA3AQfR+86CQx5bhlX8fSeQAG9s5xwmCWYgL+BdGudTb4y67BjhlPzZdj0PPm4lZmfoS0SyqPlEkle54FSdCBxBkQIQRU6/XUMDfS9HBmco1H2wVEbKr4izKXSk2/+yvmYjsmD0oHrmWwvVaIOobnudeiEisFpL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MQGPdZ06; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4779aa4f928so29336535e9.1
        for <devicetree@vger.kernel.org>; Sat, 13 Dec 2025 15:09:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765667375; x=1766272175; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WOpZh7LYAA8Dtx9qfwir93rZZO8/sCuUlp6Rdd8i9AU=;
        b=MQGPdZ06M6M+2h4Ok5mIQRPsNZBjN+MTLdea4Wjq/lms9KDUdjttXU1AZioXeyMnJg
         oPmCSfzW04/TGdjEUCvCCt14V6UuC0/zA0sEaAbU2c/t/40bPCOWnr/12Ee7Ir5h7zip
         0ICNW3IU21iLmhsMwJj1dqV0j1yI1VdnK5BX7iP5F2AxpNEh14/E7jrIoF2GS+uaVffZ
         FE2b/5cl6cAaIRDKLSiKdRERuVaZ9rTSjdNWwxkZvSRCNFX5yoZaaIO/JyjsEoTjXURN
         tfE97Zw6rGPQZAXL4415lEe5HzRldQ0fXuzIh50iLQeGYajFgLMcDOFwlnRrRGkBsDXG
         iUQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765667375; x=1766272175;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=WOpZh7LYAA8Dtx9qfwir93rZZO8/sCuUlp6Rdd8i9AU=;
        b=dCNzT4NQRWHn/vuPGn03wFAUhSeS2O2NEjltPpGDl7t/dD8vSYwsBZfnqYdfjiQD3N
         B+LhTAo7UNgjquiqbCwO9+y8tL7U/wjUHb6SbAH1mkb8u8qrtXS1ha89tX0/xHlRn9ln
         MM3KFeq5uEhtgnUux/xYAgEfpMaCsWfmcHevKjstwyw+n9STjuUo3OnHqxJJ4KlK95hd
         kHD1/4BWzm7L88p0nFWojcGx+aKUD6UfNuX7tlNz3iEFUFy4QhLdkkyQekQK4lLce8oU
         +RA0Fj/R3VU/UYPST3gv/9nbDhVyVdDyfQEQA3C5A3ppmkDLeDibVhzgB0UYD6Tqe9Ik
         +hSQ==
X-Gm-Message-State: AOJu0Yw1VilEfJyS9+q+qJYDtcJOvJ+sAPxp7MQW+tunQf7nHTuDqYek
	g6N3+Jcj/J0Kc6aBRyVwbUILAupkgYlz9rlvk84zn7q+QpgdqgaqE+K0vG/KTAz+
X-Gm-Gg: AY/fxX7WOOXaeLjy7iV81aK7R++9UcfAVv+CyJK90j5bcrXbzrPIl5DR/KKORnlqDLS
	6GXu/2ep+FVk/nlXrnYe2vNWVSBSeMcrHDpbCSca6yHQKaxX37o3aXg0hOLuMiXmb7GvvDEU+pX
	6MJ8sjxD2J8Fwc2wFY81e9lOx5UwmgU2k1E1LzloB5eMmFRDSTPGtJneBQMzF+e2+ant4Xbi8Bn
	mggpsupezA9JUCZsoCrHZqAtVb8oIJZwNbllxgbRi0ITf6mq6MO+8BRcxH83kZCarXu2UBxD+ei
	SjxioPubM6HekKnLLbHjJ27Q5suQj4dvHaO3eo2pUlugrIz7rsDDsB5fotlfZYtghVnVqqGUlU1
	kLphigIO1Ij1O1/L8XD3fe80rOr99SewxSbSrcSWkomYu4OlsrhSwxkJhR7bTv5M+uf6Gpi2AnK
	OZCDQEOO1nlZbY7sMRoSv2pl3xuPkSndOsKcezD62oKWt3dy+SP5vDlXq8qv8xhQHf6ImiRHD4L
	apEvv1WEHKYOyY=
X-Google-Smtp-Source: AGHT+IFh/ZiZ9L++4UdOLlAP7bnIG/paHtZaS1ZXQpXk440Sin8Fz6Voei7JBvcemO+FNI3s4UJtDQ==
X-Received: by 2002:a05:600c:37ce:b0:477:9574:d641 with SMTP id 5b1f17b1804b1-47a8f903a23mr65879575e9.22.1765667375035;
        Sat, 13 Dec 2025 15:09:35 -0800 (PST)
Received: from Lord-Beerus.station (net-5-94-28-5.cust.vodafonedsl.it. [5.94.28.5])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47a8f4f4150sm106040995e9.11.2025.12.13.15.09.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Dec 2025 15:09:34 -0800 (PST)
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
Subject: [PATCH v2 5/6] arm64: dts: imx8mp-var-som: Add support for WM8904 audio codec
Date: Sun, 14 Dec 2025 00:09:05 +0100
Message-ID: <20251213230909.16810-6-stefano.r@variscite.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251213230909.16810-1-stefano.r@variscite.com>
References: <20251213230909.16810-1-stefano.r@variscite.com>
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
index e7f5ec10cbac..169fc6a9c8cb 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-var-som.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp-var-som.dtsi
@@ -30,6 +30,14 @@ iw61x_pwrseq: wifi-pwrseq {
 		status = "okay";
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
@@ -47,6 +55,34 @@ reg_phy_vddio: regulator-phy-vddio {
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
@@ -209,6 +245,52 @@ ldo5: LDO5 {
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
+		 <&clk IMX8MP_CLK_DUMMY>,
+		 <&audio_blk_ctrl IMX8MP_CLK_AUDIOMIX_SAI3_MCLK1>,
+		 <&clk IMX8MP_CLK_DUMMY>,
+		 <&clk IMX8MP_CLK_DUMMY>;
+	clock-names = "bus", "mclk0", "mclk1", "mclk2", "mclk3";
+	fsl,sai-mclk-direction-output;
+	status = "okay";
 };
 
 /* BT */
@@ -300,6 +382,18 @@ MX8MP_IOMUXC_SPDIF_RX__GPIO5_IO04				0x1c0
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


