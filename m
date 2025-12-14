Return-Path: <devicetree+bounces-246296-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E84A1CBB9AE
	for <lists+devicetree@lfdr.de>; Sun, 14 Dec 2025 12:06:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 54D1B3011F95
	for <lists+devicetree@lfdr.de>; Sun, 14 Dec 2025 11:05:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 049A02C0277;
	Sun, 14 Dec 2025 11:05:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="e8zysEDA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74B5B8F48
	for <devicetree@vger.kernel.org>; Sun, 14 Dec 2025 11:05:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765710354; cv=none; b=OtH1ac5PYlZXAMdFBAGzR9t7EyaH/WVvNsaGqBRt/YTdNHXN3IWftpw59OngBfC5RWRD9H0GqurbTOa5abiDQRrnUuGZEjIpTIO9TwA4366njjL1wqiEfBxy5D3yJMPAaxQp69G373/7+9hmMUy3+kGpK1RhD92/la+3GmymtGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765710354; c=relaxed/simple;
	bh=uYZSnZuRrwJRAmm9rMjS2CEsXeIqm8YEwy7l+zm6we8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=cjFA3jJgsHsv6opIdI7kDKt9rFcLzkim+2UYwYobQtk3cb8JIYG2ARjGiNtRsOpcxW6WQ4TKLW2xD6/ggGDbKGn03QeSj3yJzM8bbaWAXG62fjPSRzaW1gL9S9+LCE0j0xIu9J6IjSwNvPiZlulhBthZ9pRu2aByXritQyL4924=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=e8zysEDA; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-42fb5810d39so992573f8f.2
        for <devicetree@vger.kernel.org>; Sun, 14 Dec 2025 03:05:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765710350; x=1766315150; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=r8jury4dWgJkw8r5nImNRFf5uOLhU7BpYSo44vohOG4=;
        b=e8zysEDA1jTvwpK6p8HxRFQhE0bG9CPc8DU2puW+vMBrKGygQIfVOTbCNDxOYwDBWF
         vlwp5XLQJW0BSO8BjQeJ0wJ1X8O1u3DF/3Byg7clc3hAobJfmRxCywnLl50mxtXXW5iD
         YfkIvfiIiq3ZFfVWNL5ooeRAH5Jzt3gb2ne+sCoZk2AhhyK4JMU/aYN3jf8LlhBYiVng
         ijIcXYpLRIHf72g4v527lb23JSQpkA7uEUFSU6D5GJQIDf6OlwqW/mIQ7DLjhtSaja5z
         YYByfgMA0QCnogKJrS1BM3evLoQeGlNGAfUTFmPyQj3TYAoLMBgL5nY5qQ5gOJwcOArc
         FITg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765710350; x=1766315150;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=r8jury4dWgJkw8r5nImNRFf5uOLhU7BpYSo44vohOG4=;
        b=Ji0syasvLt1Jn+k/mrRFO7Cy5btc+5lAlR9XDW1qg+B9RH182AgiJlHcTBTsRGl065
         oGXgcmbzTI7nujZa7Rztnx4Jo2bzBucGO6rHzYsFnqKkr4fPp4dm+vZpvuZwHeHIFlYt
         qE+jqrQvOH3OoOYUqq6gP6pKI4x9JUIcGhajo3xXvVNjyjcopDhkjCT2ckqa15gOW0Ak
         33LdGrBqcF4oVtxS36TREobfteOjhdza+c7tuQAnmPhedbyBQMA0ScgkruxvTGk8NXCr
         R6u5xcbcI9xtiZnzMIXrxQGkqRg6i6T5DPhzZ0hoL0D6h5AvPF1oWuUw1etF8+E7b6Yb
         5DdA==
X-Gm-Message-State: AOJu0YxBM5fKDfZjbKKaCkdHdg+EZibDVrZrAWjWB3aegh/fEvnhaMI5
	26wY4vEjxcx8BenQbjmhq0U4hlkq54RlA7Mm5Rbe8GM4lvxBbFej9rKjqMLuEkXS
X-Gm-Gg: AY/fxX5j9DpYDwh4dH5hCtAla+A8Uez6xUtRz1LpUJL02/WEWtdoFuYHFZmz/bb69Id
	0eLCQBikg6ns9h3JA/Tvw82ttWzDmXxomPnEwsQjsD7459hTaOmCXHuxXcqCEfbS9VU0ToJmAJr
	OjfzToe7/jOnBhuqWmq1sNivHAZzXkbLx4glAWM3YxjG9T2YsjyRvxebvajEVnRILKBvaX0tUxM
	biEDUR4KMazdLmczg4UmMKuAin+GnvCXby5P9s6jp4G/ijYgqwNpH7vz1yNuoxlh0fRE2GKUzUL
	gVywiHNeNURjCEJmy9pnNqoGBx2s1zAwPjF5orUTDwA6P07Tn1jMfxtCArVepJsoRle6UsUBIxI
	I8ozlHrRUyyN1waScniDMVixzTP1oBgDNycGnefcHtT7oZah7G2gagITGKCFPvT5XIL6O+ZgBZy
	eKwNVPEaCZUyOwBEQ0N5DYZRA4m9x6jGDulDqiUF5UYneSxyps84Cxe2OEbkPSP09a8ovb7W9lL
	4K4NqRrlFVLYb4=
X-Google-Smtp-Source: AGHT+IHBNPTTgk+ZY0LSAwyjZh4NsXuPGDMKLr7V1eirb7wDZS7diFfCXYns/WQowcG2+dA8ESJLgw==
X-Received: by 2002:a05:6000:2505:b0:42f:b3b9:8732 with SMTP id ffacd0b85a97d-42fb46e3070mr8331041f8f.40.1765710350339;
        Sun, 14 Dec 2025 03:05:50 -0800 (PST)
Received: from Lord-Beerus.station (net-5-94-28-5.cust.vodafonedsl.it. [5.94.28.5])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-430f36b6a19sm7823660f8f.38.2025.12.14.03.05.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Dec 2025 03:05:50 -0800 (PST)
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
Subject: [PATCH v3 2/6] arm64: dts: imx8mp-var-som: Move PCA9534 GPIO expander to Symphony carrier
Date: Sun, 14 Dec 2025 12:05:25 +0100
Message-ID: <20251214110531.9475-3-stefano.r@variscite.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251214110531.9475-1-stefano.r@variscite.com>
References: <20251214110531.9475-1-stefano.r@variscite.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The VAR-SOM-MX8MP module does not include the PCA9534 GPIO expander nor
the LED connected to it. These components are present only on the
Symphony carrier board and may vary across custom carrier designs.

Move the PCA9534 GPIO expander node and the associated LED definition
from the SOM device tree to the Symphony carrier DTS, ensuring the SOM
dtsi describes only hardware present on the module.

Signed-off-by: Stefano Radaelli <stefano.r@variscite.com>
---
 .../dts/freescale/imx8mp-var-som-symphony.dts | 50 +++++++++++++++++++
 .../boot/dts/freescale/imx8mp-var-som.dtsi    | 50 -------------------
 2 files changed, 50 insertions(+), 50 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-var-som-symphony.dts b/arch/arm64/boot/dts/freescale/imx8mp-var-som-symphony.dts
index ea3c193bb684..361e6122bdc3 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-var-som-symphony.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-var-som-symphony.dts
@@ -9,6 +9,16 @@ / {
 	model = "Variscite VAR-SOM-MX8M-PLUS on Symphony-Board";
 	compatible = "variscite,var-som-mx8mp-symphony", "variscite,var-som-mx8mp", "fsl,imx8mp";
 
+	gpio-leds {
+		compatible = "gpio-leds";
+
+		led-0 {
+			function = LED_FUNCTION_POWER;
+			gpios = <&pca9534 0 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "heartbeat";
+		};
+	};
+
 	reg_usdhc2_vmmc: regulator-usdhc2-vmmc {
 		compatible = "regulator-fixed";
 		regulator-name = "VSD_3V3";
@@ -31,6 +41,33 @@ reg_usdhc2_vqmmc: regulator-usdhc2-vqmmc {
 	};
 };
 
+&i2c3 {
+	clock-frequency = <400000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c3>;
+	status = "okay";
+
+	/* GPIO expander */
+	pca9534: gpio@20 {
+		compatible = "nxp,pca9534";
+		reg = <0x20>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_pca9534>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <15 IRQ_TYPE_EDGE_FALLING>;
+		wakeup-source;
+
+		usb3-sata-sel-hog {
+			gpio-hog;
+			gpios = <4 0>;
+			output-low;
+			line-name = "usb3_sata_sel";
+		};
+	};
+};
+
 /* SD-card */
 &usdhc2 {
 	pinctrl-names = "default", "state_100mhz", "state_200mhz";
@@ -45,6 +82,19 @@ &usdhc2 {
 };
 
 &iomuxc {
+	pinctrl_i2c3: i2c3grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_I2C3_SCL__I2C3_SCL                                 0x400001c2
+			MX8MP_IOMUXC_I2C3_SDA__I2C3_SDA                                 0x400001c2
+		>;
+	};
+
+	pinctrl_pca9534: pca9534grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_GPIO1_IO15__GPIO1_IO15                             0xc0
+		>;
+	};
+
 	pinctrl_usdhc2_gpio: usdhc2-gpiogrp {
 		fsl,pins = <
 			MX8MP_IOMUXC_GPIO1_IO14__GPIO1_IO14                             0x1c4
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-var-som.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-var-som.dtsi
index 949d9878f395..158a78ec9656 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-var-som.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp-var-som.dtsi
@@ -19,16 +19,6 @@ chosen {
 		stdout-path = &uart2;
 	};
 
-	gpio-leds {
-	        compatible = "gpio-leds";
-
-	        led-0 {
-	                function = LED_FUNCTION_POWER;
-	                gpios = <&pca9534 0 GPIO_ACTIVE_HIGH>;
-	                linux,default-trigger = "heartbeat";
-	        };
-	};
-
 	memory@40000000 {
 		device_type = "memory";
 		reg = <0x0 0x40000000 0 0xc0000000>,
@@ -216,33 +206,6 @@ ldo5: LDO5 {
 	};
 };
 
-&i2c3 {
-        clock-frequency = <400000>;
-        pinctrl-names = "default";
-        pinctrl-0 = <&pinctrl_i2c3>;
-        status = "okay";
-
-	/* GPIO expander */
-	pca9534: gpio@20 {
-	        compatible = "nxp,pca9534";
-	        reg = <0x20>;
-	        pinctrl-names = "default";
-	        pinctrl-0 = <&pinctrl_pca9534>;
-	        gpio-controller;
-	        #gpio-cells = <2>;
-	        interrupt-parent = <&gpio1>;
-	        interrupts = <15 IRQ_TYPE_EDGE_FALLING>;
-	        wakeup-source;
-
-	        usb3-sata-sel-hog {
-	                gpio-hog;
-	                gpios = <4 0>;
-	                output-low;
-	                line-name = "usb3_sata_sel";
-	        };
-	};
-};
-
 /* Console */
 &uart2 {
         pinctrl-names = "default";
@@ -298,19 +261,6 @@ MX8MP_IOMUXC_SD1_DATA5__I2C1_SDA				0x400001c2
 		>;
 	};
 
-	pinctrl_i2c3: i2c3grp {
-	        fsl,pins = <
-	                MX8MP_IOMUXC_I2C3_SCL__I2C3_SCL                                 0x400001c2
-	                MX8MP_IOMUXC_I2C3_SDA__I2C3_SDA                                 0x400001c2
-	        >;
-	};
-
-	pinctrl_pca9534: pca9534grp {
-	        fsl,pins = <
-	                MX8MP_IOMUXC_GPIO1_IO15__GPIO1_IO15                             0xc0
-	        >;
-	};
-
 	pinctrl_pmic: pmicgrp {
 		fsl,pins = <
 			MX8MP_IOMUXC_SPDIF_RX__GPIO5_IO04				0x1c0
-- 
2.47.3


