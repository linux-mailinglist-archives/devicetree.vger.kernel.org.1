Return-Path: <devicetree+bounces-246337-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C1E7CBC09F
	for <lists+devicetree@lfdr.de>; Sun, 14 Dec 2025 22:53:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8B1E23009A9A
	for <lists+devicetree@lfdr.de>; Sun, 14 Dec 2025 21:53:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5BC94316182;
	Sun, 14 Dec 2025 21:53:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VC+P5Z27"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 700E5315D2B
	for <devicetree@vger.kernel.org>; Sun, 14 Dec 2025 21:53:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765749186; cv=none; b=I1N83Fwc+ea5L4rgF5xGqVKptIWUWVCLWjmvQA2qgzA0x5WIYhB9uNG5MDqdvtd5/PDjgaMW5UFCQVqngAOwx959e/1qnMBlACvtdK6oWOj6kSzAZV/3XMwAFq04ThO4VEUP/UCtGsX8wSOlen/y2OAo95kxu4Dx9N3e1YRPRA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765749186; c=relaxed/simple;
	bh=uYZSnZuRrwJRAmm9rMjS2CEsXeIqm8YEwy7l+zm6we8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ZfBsMsDQghS2Cli4Bf6DoUMK/gKibZmFs2EuVR4LkMpc7K0F97QuvayjBxcg8lAlNgfrZV/H1v6Z21P8sTxMkxfkX0ZnZfFiaExW9M0vx4PGJCMegm1Ic3G2bKQamqdNp8d7vFP2nvmQbLgrHITH9uLQ8WONVJBh3oOVWT/Uo6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VC+P5Z27; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-42fbc305914so1321965f8f.0
        for <devicetree@vger.kernel.org>; Sun, 14 Dec 2025 13:53:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765749183; x=1766353983; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=r8jury4dWgJkw8r5nImNRFf5uOLhU7BpYSo44vohOG4=;
        b=VC+P5Z27WjsOTw19Xe3fCRfEAeM2hnO+tfNi280N7iE7ahT64Q4lj1JIJrFj7DCf6h
         nl4daD3oq2sfGAzlAkHwXjYzcQV3hl4GuNSFpzT5kUTILcjWDgMC1TcnxfKF8bPlkncE
         vnQ5XxAtTghtZofv9jicANGjKtGLE3aq4CLaZUxpOnqNwGDTp5IAkU9MVfDwDF67s9TO
         mYfP9bU8i1U3ZHKwyARgGeY/IJ9Xs003qKgQ7olLiTOp96ZPnmwqlpu0D1KS3ARuPdcn
         IqrnR/yMuHKUrpNpLwPCQaIinlwWT9SSwCd2/SNJd36vO8WFDRJVcBjCfprkTnMnN0XX
         hNKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765749183; x=1766353983;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=r8jury4dWgJkw8r5nImNRFf5uOLhU7BpYSo44vohOG4=;
        b=vs/DYDQfE1D0Pau8RBTBbvvv/BndPHZ6JvhdWYTrH0K9JQn+IVCEd6RbQHqv5PczCe
         o1ZQyuIcPJl13Jx5quXBjDC42ZI2xY3PDLR1sEh8g29abS5EkpZlZVmMlVEea2v8iTQz
         rH9nsVPRtkKT6ee0h205Y8y5nr6zdXKbjbPQkef9oyvDdx/owgEnBt/N+EZVisch8LDK
         GNsttcYSlBw0t3eH1rcCcTpIoV7FGhuL0cm+ruUAk02PmTobtgy1XDumSyH4mbHlTS0W
         e/rXZkbsK0uidT4kG6EBwc7Zkp25nL9ScXxWmo7WFeSkxSZX3ErJl/rKp+jAQZQkHZqu
         +CNQ==
X-Gm-Message-State: AOJu0YzJe/TJOJN2m3geOy2VbCrwUXSdVprTu6tNPz7ldsWsu+0M+s1Y
	NTHTZrf4cmm0BoLTgGwg8lYg6UT4Uhl0zFkwMHreynwj77PSy2ZyKrhg9+uQskey
X-Gm-Gg: AY/fxX7MCk94Ma8VYB05OAVT7IuIt9kkDZXRSX9hMF6FLYM2XKomHRwwzZPWYsw6XF/
	IAQmU5iuW2/XleOyDirCA+BTLF8o2rl8zSxuW493TsaLE9ip5p+lK6a5qh5LDGp03hox6u7u5Ni
	4VgvNPiIwcR+wykQIzitKInIt8NFQtNI2YtARYW+hdB9+s1KZXnhNIJSjjBFayfpmftbWwPLbdd
	BXsWh1cxtdtu7RlpG2bAfmWEY+TEuoHuwlmqHmRezwTHhJlJ76+yZkNGaLTwHif69/bH+FKUGpX
	SgaQl6TAn9r7Ld0+L7JIJGPrTk17WQ2RxOQvii7Qv+Sc1lABa2PtnRicUBF854l7aHNva9T9Nlw
	UJD6gpS8qCIzglAqV0fN5l1NCragXjtaLG11AkgSiS8nt6TYAvlWxNUdguFG9f6qD1sz4addjhf
	JZyd1j/nAStVf5xddtiVRWPxiBZs6egpeyF2hpz0WjTDmTdXs/k4j4Bv4p90xUsf/rZpe+NtMnB
	rZz2ER+jPtaqOxjvukla8MeNw==
X-Google-Smtp-Source: AGHT+IHlwvUwhglREyCe2v0pBDkwpLJw4hn2MzBwpG419jFwAHwhdlcI6pbWRQtcoEeM5mlvwGC+Zw==
X-Received: by 2002:a05:6000:1a8d:b0:430:f742:fbb8 with SMTP id ffacd0b85a97d-430f742fd90mr2518662f8f.21.1765749182731;
        Sun, 14 Dec 2025 13:53:02 -0800 (PST)
Received: from Lord-Beerus.station (net-5-94-28-5.cust.vodafonedsl.it. [5.94.28.5])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-430f6a42c8csm7625568f8f.16.2025.12.14.13.53.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Dec 2025 13:53:02 -0800 (PST)
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
Subject: [PATCH v4 2/6] arm64: dts: imx8mp-var-som: Move PCA9534 GPIO expander to Symphony carrier
Date: Sun, 14 Dec 2025 22:52:49 +0100
Message-ID: <20251214215256.5812-3-stefano.r@variscite.com>
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


