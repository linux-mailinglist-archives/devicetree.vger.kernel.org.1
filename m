Return-Path: <devicetree+bounces-272479-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eNkVKp9KrGn+oQEAu9opvQ
	(envelope-from <devicetree+bounces-272479-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 16:56:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1449522C945
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 16:56:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 075423049710
	for <lists+devicetree@lfdr.de>; Sat,  7 Mar 2026 15:55:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BB043A1E9B;
	Sat,  7 Mar 2026 15:55:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iPV+qtkR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81176392C57
	for <devicetree@vger.kernel.org>; Sat,  7 Mar 2026 15:55:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772898919; cv=none; b=GDd/JqavL1p3OditsDgmTip3OULMuCn/EAZf7ZEvFlMLhRQVRRgIxPzUtIEKQdWNbLLawTI1ELzUKS9co1pNzdKKyTb/q30WhWqw2IixEOtZOoq/O/2VmG/v35mqcS3l0lwedcQ7Dkq7/2BfxUQkUXO/1h/K5rujrlulfPr0Ztg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772898919; c=relaxed/simple;
	bh=VPyDTnvLeRqiDgmW6qES5qmQu9LuQ9ur/YJohfW0aUk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=TZ39S+0xME2sislUua137C4PoVqcpr9uc5mmI+bcdhtYsApKu/+9aeMcJmqiAqzm5CcSl7Fah9LdJRCi+CKkSF+Pd6DORNCHpUMOP6lRGA3PW2V/zIZT7OCu/s27QnSAtnQcVCw+O7aqEEbXNQ1uLm8iPznYFd1QZj7Cxftech0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iPV+qtkR; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4852f8ac7e9so6918125e9.1
        for <devicetree@vger.kernel.org>; Sat, 07 Mar 2026 07:55:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772898916; x=1773503716; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=76UifUem1CcpJi2DmZ9pX1KLlPf7UqUfrwIn74xAbJ8=;
        b=iPV+qtkRTew3bH+DfgAS59kw4sBrwZbtSsFfFwIfE763jK1tMaO0MXg8EzopjHT8fs
         8bZ5qHeZ6J2Al5qLNlyuEZYeImWrvtJs4pePZFQ/VrI0nlMnXR52j9il6EuLVQh0jFNV
         LHEgwq46/VMApwdV6TUreCskbnX3siFw5wk/RS5k1qbiqmv+h2a1tgNLTtOj5ZiEuE9i
         uaaw4XDSEFPz7fCw6Wd0A7cHVAk0iD7jvV32WkKizWaKIw+gyra60x9qYCcOuvVVBXRB
         /wOHFQpGbnq0Or7YsCNCKLOOSuw9VTNIxvfwnVosY//yEaf1CQgcDh9S5BZyyUcPUBMk
         yT7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772898916; x=1773503716;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=76UifUem1CcpJi2DmZ9pX1KLlPf7UqUfrwIn74xAbJ8=;
        b=sJy3D2/0LeMdhk+7zSpcfH6bDWC3dsZCEnfCxX3WN3nMiCTFA9FxpEac4T3ndlAGgg
         NJtpVwyOImF4W/rjzXpBj3/Q2hjxJlaTYG9q8UMWeV5OVhbCrSvB8ZkbZVGAl1oOQzc5
         3nfy2/AiQOUqXTFfeM6rlj5wNlTNfOOjm8WQwbs4vecBbvfFnxWO4TUIwejeliyqFX1m
         3f1OiSbSb3DM+ymzrdofbXxYpSkRSI/r4X5+VdbvDJI+JwLY7T6FSkDQJQ7ylcx8GZac
         b2RvrX14gbrByLwacaTy2jlvqzuZNiuFHb5Qrik2yOBHPihha/Rfc9Jy4E/T7pCVhLxN
         rk/Q==
X-Gm-Message-State: AOJu0YzHTaCT37HZyNlwwlTHE/pDJE1PSuKo7UY0cDGB+EHm+G6LJFfq
	mOWu7GIZE9UXsWSVHCpWJKp+xBN103TAC0prUgYcy1YTzY9UgLDwK3/xGlyiCA==
X-Gm-Gg: ATEYQzzsPu/gIgUhiP3L8VnyENZfzUX4VSy66k6s5qYd9HYfTkz0Q2CHFxuEz6raLBV
	D1218YB696ps8rMddtqD0TH7n/cPycgUSW3XPGpsCh4lVaLPJBM5qI8fMu3CxbsFbAC5Ft5fSPJ
	1/Eh2iP+Jjk/uGgOdCzRT0j/DAuDXmGyw74UlLAu9Fj+YBYEopvyubCne2e/5ZjJkZzACtYeu1e
	puMA7a+0kW7Mo7xdmhKJZxxDU9/pN5OYHgTWN4kFsfcW2YTiJUcYxFThKgD6Yg14ac33mE7O4Z0
	tF8F8sxqP6qz4/IljE7NdZN18c63Nv9N0KP7SmufkTkqjf0eHUJOV8NBGQjqUQtg/fft7PPAg3O
	rX41OYap+EiZJ35hlUc4bsCgS5kO9XeDK1HkPzwebNP4g0/BHAHDzTDB1aNxxyffMc9n9rjtabJ
	54VUQBzRiHPU6HszWnu+IXGJuQ+S8Lg7AcPJ3ZgqlQpvHlHGbo1JE40NCPw7kO1J0tV5RenQqUW
	VvqW7cDda4SeI6LDkK2+qyd4w==
X-Received: by 2002:a05:600c:3acf:b0:483:6f37:1b33 with SMTP id 5b1f17b1804b1-48526978d48mr102487035e9.30.1772898915750;
        Sat, 07 Mar 2026 07:55:15 -0800 (PST)
Received: from GLaDOS.lan (93-35-179-236.ip56.fastwebnet.it. [93.35.179.236])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48527681a3esm261097785e9.4.2026.03.07.07.55.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Mar 2026 07:55:15 -0800 (PST)
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
To: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Cc: pierluigi.p@variscite.com,
	Stefano Radaelli <stefano.r@variscite.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v3 04/11] arm64: dts: freescale: imx8mm-var-som: Add support for WM8904 audio codec
Date: Sat,  7 Mar 2026 16:54:40 +0100
Message-ID: <bb76d92b9bfb164827f53eafceada37fb3312145.1772898346.git.stefano.radaelli21@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1772898346.git.stefano.radaelli21@gmail.com>
References: <cover.1772898346.git.stefano.radaelli21@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 1449522C945
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_CC(0.00)[variscite.com,kernel.org,nxp.com,pengutronix.de,gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272479-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.993];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[variscite.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,2.98.90.0:email,1a:email]
X-Rspamd-Action: no action

From: Stefano Radaelli <stefano.r@variscite.com>

From: Stefano Radaelli <stefano.r@variscite.com>

The VAR-SOM-MX8MM can integrate the WM8904, a high-performance
ultra-low-power stereo codec optimized for portable audio applications.

This patch adds the WM8904 device to the appropriate I2C bus, enables
the SAI peripheral, and introduces the sound node to expose the
sound card to the system.

Signed-off-by: Stefano Radaelli <stefano.r@variscite.com>
---
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


