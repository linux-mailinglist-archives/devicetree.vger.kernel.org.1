Return-Path: <devicetree+bounces-272335-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2B4WOTEyq2n2agEAu9opvQ
	(envelope-from <devicetree+bounces-272335-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 20:59:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6877A227547
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 20:59:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A9D2730EAFE2
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 19:58:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF3C543CED5;
	Fri,  6 Mar 2026 19:58:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jg5a4cPN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC1573128C9
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 19:58:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772827126; cv=none; b=JUvhGzabQzPmpqoONe0NaYjcrcFoH5NmMqMQRZH5PHgcxLeNQYum8ij2RpBK0qNClAHXYRO6dPHZn1+GhH6iYqqmZyQmW+K3NnbucyFFCYdcqtRXN0oGbGNm4XYKZoR2V3Mm4F3ujMiwYTKUFpFElDVvIthaz3hC8GS30C245yE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772827126; c=relaxed/simple;
	bh=RbHefVkgLW/juSY4reOUNZrIf52EgmBQR78zr0wC3AI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=KpKSI8iPyZX/9oEpt3jrviNga1EKw5pqk1+CHhTrDF86iQ4GG5xl5UZVVTqnF7Ny28URYWg5T3TtDz1CfVvf0ZeD29FdregBtzJ5NlrSdduVLh00ejNlh71YuRnq1pfmoT3VyUdslDBCD/eO+wYkc0t+w17pOIJ8czl+1XYxZiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jg5a4cPN; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4836f363ad2so112203445e9.1
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 11:58:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772827123; x=1773431923; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PabYKucFhlAPL24rWY9exRhx841+oNvFcXCQw1AMR9c=;
        b=jg5a4cPN/U/XTkSybVA3LaQg+aQGdI1HaoGZvAVJGTx/yf6dBAcKa8c96KSB3Ripiv
         Ek3DXbJW8o076xEzGKgk4meiL7u+F/uF0u91DeT3QlsnyfNtFXAfNWgzlhmuqbTsVT8S
         Uf1Is02nlUolPM+vrxmM0OzXepoFhwTjqgeWCNnLoMNjm9MeA4yHSME41CvaElC2Wieg
         DDO8RK6l3IE2ajbQLyVKF63AovjqorvfqCJMTL6BSM5m25ByNE2i0qwZ2jvIdtL29sSw
         8mV1PoonCj9oIIG1po7I4L+ItSgQG4cRhvV6dp4IT6JCwBHvttPUP/FYf65HR7HiKZ4h
         8VXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772827123; x=1773431923;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=PabYKucFhlAPL24rWY9exRhx841+oNvFcXCQw1AMR9c=;
        b=Btv/RkmddtnnfDUXYCbCCoeSpAAjioae8STPcjploz3NXQ3ez9ZyBBlH1Lq5haETMB
         MHac7DLG2007R6FyPCPP6nOXR2JY/HxpIjyvyAzaNw2xFjWaWQbrNfFKYCiyH9WL17Ru
         YCg5svoHaz9B9ird7gg6Hc1EsROCtAy31oldmfXVVspEJ0lRgzoZtiljEq1fXwtcS/Wn
         L6DaTjerwTDALjJUX10qjfERreI8l5dkuGSY5csgUGQ6Udyb6erzoQ8TaT3fIMZlqx1x
         5/AXeB95mtP5YP+q8SXSk5SlQft32QSTyuUD1xJEcfSavQ5GCUPym4jLXmNoelWkUVMO
         K/NA==
X-Forwarded-Encrypted: i=1; AJvYcCUK/2j9fQ29S6wDh6WZ+uCKwyr3YbKNRKgEsf7QVEfoH842g7o/MPsze+csVB7QdwGiny52vYmdueNv@vger.kernel.org
X-Gm-Message-State: AOJu0YwD2ongEdC5vqVDd/f5djPM7VZ6oPM/4kpTECYtvFsQb8MA/7/T
	4qGGU/FK+jlWX4uo15dMkSQ+zIwfDiARkJKO70uwkOqh2qcd3pPj+n1M
X-Gm-Gg: ATEYQzwTGBFwPkXrl3DYSBEJZ/yJNy7yoGTNDI7YhyB2NRD0WkEbdUG7R4XwqAlracZ
	kF9DKkdaWbUyUMIxUX/nR3n+SgC2Z5Sil1/vyUKlUEq4jB1tzZPCZxOpn3N4MSxVo55Rf6U4iQl
	vRzJ4zUw4492y2EJtIbpV0VCfqTff3Qu6F6PRv0mKgjliJ4plGId3Y61VoktJhuEG2hhq+RlvbC
	Bx58mrSMixd+3mYEGAqA4hP6GNv/GTq8qvuhrjeBizPZbQcPSg//2PEgELGGo4UO4yP2Fi4wI4b
	4YEuAhHGP41vRivGoCFV5S4k56bgAZUtpB9vmXZ2AeqCgE7ijqkP+RjCGA6ac3C6flAZ28jRhML
	TLfGwu2UQlVOLZICeox/RY2G0L35ZlpXeqcd1ArPIyGXvXVXowQRV15Q714z0Gh9EgHl9N5Lbr3
	yVlOjPyqdd2Fbef9Lv9HfiGGvi9PVC3uhwOjsBKMO66D1DSs0OR2qyCzi4CYosU4JrKbzTUoCZv
	AMOkXEfg6198KyMaRTYt+tbdot628JESmhxhkc=
X-Received: by 2002:a05:600c:8a1b:10b0:485:2af3:3f91 with SMTP id 5b1f17b1804b1-4852af3406emr19423515e9.14.1772827123274;
        Fri, 06 Mar 2026 11:58:43 -0800 (PST)
Received: from Lord-Beerus.station (net-188-152-100-94.cust.dsl.teletu.it. [188.152.100.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48523803b5fsm25167265e9.7.2026.03.06.11.58.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 11:58:42 -0800 (PST)
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
X-Google-Original-From: Stefano Radaelli <stefano.r@variscite.com>
To: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
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
Subject: [PATCH v2 04/11] arm64: dts: freescale: imx8mm-var-som: Add support for WM8904 audio codec
Date: Fri,  6 Mar 2026 20:58:23 +0100
Message-ID: <bb76d92b9bfb164827f53eafceada37fb3312145.1772826534.git.stefano.r@variscite.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1772826534.git.stefano.r@variscite.com>
References: <cover.1772826534.git.stefano.r@variscite.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 6877A227547
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-272335-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[variscite.com,kernel.org,nxp.com,pengutronix.de,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.993];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[variscite.com:mid,variscite.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,2.98.90.0:email,1a:email]
X-Rspamd-Action: no action

From: Stefano Radaelli <stefano.r@variscite.com>

The VAR-SOM-MX8MM can integrate the WM8904, a high-performance
ultra-low-power stereo codec optimized for portable audio applications.

This patch adds the WM8904 device to the appropriate I2C bus, enables
the SAI peripheral, and introduces the sound node to expose the
sound card to the system.

Signed-off-by: Stefano Radaelli <stefano.r@variscite.com>
---
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


