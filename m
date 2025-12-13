Return-Path: <devicetree+bounces-246273-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EF65CBB4A7
	for <lists+devicetree@lfdr.de>; Sun, 14 Dec 2025 00:10:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A56F23015EF7
	for <lists+devicetree@lfdr.de>; Sat, 13 Dec 2025 23:09:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E72CE2EC0BF;
	Sat, 13 Dec 2025 23:09:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="c1c++IMf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E5BF2F83A3
	for <devicetree@vger.kernel.org>; Sat, 13 Dec 2025 23:09:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765667375; cv=none; b=kRCn5EAB+09/+/Oyav0hvomz25QXg461DTdbR2ENR2Vel0wf73i0xIIeS49mEMlQv6XHoNcoQMVBfiJfsJgk5yJCo0U4b5jSjQk8kWpm31YCQSUya8J6fLONhwbTZPYHPGHAdcwBSJ6IuVPqTRnDI8dDZJ7y9F9BerKWlzBHdyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765667375; c=relaxed/simple;
	bh=wc1hNM9S6VyXu+UnFmmncpeycGgAm3CAAjOS0sTo/fI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=canccJv3wqozSEBeakNhLDmAYnZdOc4CsSdNH6fs+P/2z+S1N1+LjwLqlCMfG61ATEV79xzcGeQ1F/Xzj9r+Pv37nIOj8z1JcxcS83NvYWkI5gBtRuUeoA3BsprUE6lFxJcNk1/b7D/d3QsTDZn445EDJT4qdNZfuvVbJIaq++o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=c1c++IMf; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-47a95efd2ceso5732485e9.2
        for <devicetree@vger.kernel.org>; Sat, 13 Dec 2025 15:09:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765667372; x=1766272172; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bPsW6S2pqCNYFNBAk1ab6y0h0xeg8Q/fREDfEnNJpHk=;
        b=c1c++IMfWpbod4sq6Iri8umGkkPD2+8M9GCUgEur41J+hsaLLN5fPZwWlU2IfCvp5M
         JgXzIOdT/AHGyw1wOvszogbx/8TBNegkSJeJXCIsismO6Dc+Cilqcz9CRu++r4VMiwTD
         e/u3wXx6jvvLc9BOM06GF1oj+fM4AYA9jDlsIj01HVoGmq4UGX6FWKMo+BHUpsYmsxcU
         StSLbfymuH1ny3O3JiUDyiHgEOMwy1Pr4m/fKWK8f1x/WVST2PU718gsdPM8i7/ug2LS
         pVBqfKq9SXYuwf/8tHsvQTkAl5WvJ1BapZkhjG+q//wQsPe6F6cqVqhvJz9/nG28m107
         +d8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765667372; x=1766272172;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=bPsW6S2pqCNYFNBAk1ab6y0h0xeg8Q/fREDfEnNJpHk=;
        b=xQhizVF37z1N1/gyeio11UF5fWDLNmtAA3JB8XToice3IXCBnQzzOJVyuZatvuLmTA
         Ny74YrpyNJyfZi64dArgCEB0zvcp8LicmDtOU/YFBTiKOMDUfj+fkXrHvPMfu9mPz2/F
         rdrIxwnC7fVc7Ktt8Oqh5waPgypTI6LqCNbsy7vPAX0wDz1VepJs0KcoPeqpk3W1y8Sw
         eOfPZdi1SQq34vCMLWV3Lwhz24XKjdweeyoeQbtE5Lupe1fQm24EDAGDUbNKPIyr29tB
         2tQFwkeYL/6klGQ2CKU3SJUB/hCooJVTx73yd8fTJ9ngMOj/GldA1f9GQ0gfsxjio0Gn
         YEPw==
X-Gm-Message-State: AOJu0YyD0ND42VkcCDTrSArgbCQejQMU9QZqZSXAdQVfQ07ZrUaY6X96
	CUX8inrIlPl1RoeAKStlkZQS/AKjP06/NsCs1PT66HSD97quIZvVY5KI11mOZSgu
X-Gm-Gg: AY/fxX4ZJe6Zp23ThS/AKddxZoPeBOJZs/1cmsTJ/AcmlJo/EIqptFy4rcGQd0sn9xq
	bO/VfhY4XpHIJlLRqOJ8tPNNJ01hXO0mSd3D5rL8TMj4Yrxbr/42XV661ENmKI4GAUjBGyU19TQ
	oY7mfJfE4W55eHoNfL3JXYjtKm8MuDo2PloSWzIrpNuXE8T/1+n3SvwDKGM1Os5BSHT7kbJeMxs
	6kBy0X6neP6vHc3rchhu6d9Jf5mKA/aKzwIRTh+z7skFBwIWJBaygS4jOr2MnOnUhHYzm2y1UGz
	6I7QjdNSSuGFvKuml7t9GEKWX7qcPTHE0GNwxb9I/Xy3olSg5ez6EU5pwNngHlVYf7nZuTHAP3z
	pC+Yo/bYDNggs+znujzjdzhvusDjwSmi62fEsRUSxn42n4gZm1NE+gUSOxU0vEDMy9+uSHJgdmw
	zje/gg8ddePzksiLiy03BBKvnIpymJx86EeY4x9vn5uvZiPrLtK/EjfUmS71OioYZJIgKY3IcDQ
	qa5EYlWz9YtAVA=
X-Google-Smtp-Source: AGHT+IEuZVWIoOyBxLuO48JvlC/oup4uLYj7VhSXl/tQFEXAA4+Lht97mT0YBRv8y//K617sSM8eUQ==
X-Received: by 2002:a05:600c:8b62:b0:477:abea:901c with SMTP id 5b1f17b1804b1-47a953da53fmr30130495e9.11.1765667371709;
        Sat, 13 Dec 2025 15:09:31 -0800 (PST)
Received: from Lord-Beerus.station (net-5-94-28-5.cust.vodafonedsl.it. [5.94.28.5])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47a8f4f4150sm106040995e9.11.2025.12.13.15.09.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Dec 2025 15:09:31 -0800 (PST)
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
Subject: [PATCH v2 3/6] arm64: dts: imx8mp-var-som: Move UART2 description to Symphony carrier
Date: Sun, 14 Dec 2025 00:09:03 +0100
Message-ID: <20251213230909.16810-4-stefano.r@variscite.com>
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

The VAR-SOM-MX8MP module does not provide an onboard debug console.
UART2 is routed and exposed only on the Symphony carrier board, while
custom carrier designs may choose to expose a different UART.

Move the UART2 node from the SOM device tree to the
imx8mp-var-som-symphony.dts, keeping the SOM dtsi limited to hardware
present on the module itself.

Signed-off-by: Stefano Radaelli <stefano.r@variscite.com>
---
 .../dts/freescale/imx8mp-var-som-symphony.dts  | 18 ++++++++++++++++++
 .../boot/dts/freescale/imx8mp-var-som.dtsi     | 18 ------------------
 2 files changed, 18 insertions(+), 18 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-var-som-symphony.dts b/arch/arm64/boot/dts/freescale/imx8mp-var-som-symphony.dts
index 361e6122bdc3..291f65e36865 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-var-som-symphony.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-var-som-symphony.dts
@@ -9,6 +9,10 @@ / {
 	model = "Variscite VAR-SOM-MX8M-PLUS on Symphony-Board";
 	compatible = "variscite,var-som-mx8mp-symphony", "variscite,var-som-mx8mp", "fsl,imx8mp";
 
+	chosen {
+		stdout-path = &uart2;
+	};
+
 	gpio-leds {
 		compatible = "gpio-leds";
 
@@ -68,6 +72,13 @@ usb3-sata-sel-hog {
 	};
 };
 
+/* Console */
+&uart2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart2>;
+	status = "okay";
+};
+
 /* SD-card */
 &usdhc2 {
 	pinctrl-names = "default", "state_100mhz", "state_200mhz";
@@ -95,6 +106,13 @@ MX8MP_IOMUXC_GPIO1_IO15__GPIO1_IO15                             0xc0
 		>;
 	};
 
+	pinctrl_uart2: uart2grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_UART2_RXD__UART2_DCE_RX                            0x40
+			MX8MP_IOMUXC_UART2_TXD__UART2_DCE_TX                            0x40
+		>;
+	};
+
 	pinctrl_usdhc2_gpio: usdhc2-gpiogrp {
 		fsl,pins = <
 			MX8MP_IOMUXC_GPIO1_IO14__GPIO1_IO14                             0x1c4
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-var-som.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-var-som.dtsi
index 158a78ec9656..5bba91dcef17 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-var-som.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp-var-som.dtsi
@@ -15,10 +15,6 @@
 / {
 	model = "Variscite VAR-SOM-MX8M Plus module";
 
-	chosen {
-		stdout-path = &uart2;
-	};
-
 	memory@40000000 {
 		device_type = "memory";
 		reg = <0x0 0x40000000 0 0xc0000000>,
@@ -206,13 +202,6 @@ ldo5: LDO5 {
 	};
 };
 
-/* Console */
-&uart2 {
-        pinctrl-names = "default";
-        pinctrl-0 = <&pinctrl_uart2>;
-        status = "okay";
-};
-
 /* eMMC */
 &usdhc3 {
 	pinctrl-names = "default", "state_100mhz", "state_200mhz";
@@ -267,13 +256,6 @@ MX8MP_IOMUXC_SPDIF_RX__GPIO5_IO04				0x1c0
 		>;
 	};
 
-	pinctrl_uart2: uart2grp {
-	        fsl,pins = <
-		        MX8MP_IOMUXC_UART2_RXD__UART2_DCE_RX                            0x40
-			MX8MP_IOMUXC_UART2_TXD__UART2_DCE_TX                            0x40
-		>;
-	};
-
 	pinctrl_usdhc3: usdhc3grp {
 		fsl,pins = <
 			MX8MP_IOMUXC_NAND_WE_B__USDHC3_CLK				0x190
-- 
2.47.3


