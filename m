Return-Path: <devicetree+bounces-246272-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 54417CBB4A4
	for <lists+devicetree@lfdr.de>; Sun, 14 Dec 2025 00:10:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4C3FB3013957
	for <lists+devicetree@lfdr.de>; Sat, 13 Dec 2025 23:09:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DF321F03EF;
	Sat, 13 Dec 2025 23:09:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aPXZumfh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65DE92F12AF
	for <devicetree@vger.kernel.org>; Sat, 13 Dec 2025 23:09:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765667374; cv=none; b=EPrRZPU7nPEVTz7K5K9rMs5XxN1TQxYJCXPkjDKxumImRSW1rYXkIxwx+UPEOwAsCuLfaTMj1uuljZmGIywBBsYt8X/y5eWiymtusEGDKqM6saRthu2Xbmtg3y0uUXIMXkzutSU8TkR9nUQZiMhBUnFSgeQbALDei7/i2ng0oFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765667374; c=relaxed/simple;
	bh=uYZSnZuRrwJRAmm9rMjS2CEsXeIqm8YEwy7l+zm6we8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=LDWlgQ8TZwOWSnr+EhEAOnr87CKqr8hniHiF0UWQkZLqdJzczf1bxbgl6gVMYaehKd3lOVK0h2SuZsKd8nnn0feFJc07GMy8+FAWi0NtqWNHb3ks3PkMdbb8qTuV0RbTPcgFtnImH1SCEG90cQ41CEBP7hJ2wJyeQ0k6M+FmEJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=aPXZumfh; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-47755de027eso16673755e9.0
        for <devicetree@vger.kernel.org>; Sat, 13 Dec 2025 15:09:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765667371; x=1766272171; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=r8jury4dWgJkw8r5nImNRFf5uOLhU7BpYSo44vohOG4=;
        b=aPXZumfhyg+F3I9YGnmxj+YyV8YZrUUjHQTyNpPAJq3pjYvAHv76L+ks1kNRfHIy7a
         cy6M0pRaC3oaKUxl35sTKFe4JjA0ISFEZWZVd9/C3G6GT9u8E9GFFBdgcptlR/A9Bztn
         f1y592Ii6Z635eBoG4PS/Yzji9+F5szCDQ/tmU5IhmgePskdR4gyOSiYB6OE0XGVK03x
         UKCcdbcgG+NHBvrpu4JPNtrKBwxEOgMl24fCH9amBmQpAo+STA1VcpBsXulZbJquT+iU
         1s/V/yKGVIaF9etalOQm8ER0oGRoQ7tv5hs+pbL3noX4dxhvBnD3xUSwAWIGYuKyP5Ye
         iSKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765667371; x=1766272171;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=r8jury4dWgJkw8r5nImNRFf5uOLhU7BpYSo44vohOG4=;
        b=Ocwa+S71S3iEdrIbJ6DRAGJg5wjQZlTk0R/Z0IpbX1NNIId4ZwFfkoKQI3Glvc//k8
         c1OE2KPZ+hDJ3SASN2zfAqZYueXs49Uu/nG28Ja3Cg2oqIf9dWKIIo5V/q7mezLHSXw4
         MFOpkfxkQKKlq/HVIWMyFE6ICPXWyOYlTO51mg6g82kb2A4dOSh1LoyHp9cgpXcIpGDa
         nd1UhhnIRoPeFJNbbZmfZgEnIgG0NqLDVzvNw38BRXgwgTrhysTPeKItl0hr2c5BOi1Y
         w2qVmZ1B9EksDpxHRtx7kxQX9q+dUlQzQSdkdlhJ8XUfnh2MY9uYU/4pxd/39Mu7upWZ
         Q47A==
X-Gm-Message-State: AOJu0YzWuC00kLooypbi1ZJvqOP9/Q+sibWTIR5AhjZUo2Vc3aYWGOdY
	AAmFAZclb9J7BmtzZ9e/T4V7u6sqYc94EIWSQ0X/agr79Ms8hetgBeXPN75tNmY8
X-Gm-Gg: AY/fxX73QfqVjZ2882fvkxIV6VwJObxul8vMnsFF9+7UI/wMVI4zQWc54NIkBdm1sQZ
	lTLgdbqpXjdKOWxcDh6/F98pAPf3OSwdBZN08vJhq9ULgvtz9H4PEmW3TI2jW+OtTnVUM/uFQt9
	8WG0sL9iaGkA4mc6PlsZJYz91cCnItY4N7iFqB509/yvF4uGuUjUP37W/YxtOB+/QLy5GVMrumQ
	H+M4GHIF5JgG9DpCirhpmWAb0Ri3gYy9C20cO0BAqMQ2IE78NHd2RStSABjnGMZkwWhHYnqdxFv
	iE+7aExemrnb0WtPJxXUG2edGehtC7CyvPx9ZSCQUR38rWR8A5ayUw/WkCzXuRFBiVGW3TlJd43
	fjhPYxBLEQs6Ey3gKKRB3JX/fUKcGrnwSg/qbUMTkRxRx6kJiice+IRbIpnOeqp9B4V/ezeHyo+
	zbWnHLfGYatips6TusMpG/4wxunqJ3cRF15n40JoBxuMpXNA2NXo7w4d0yRfkU0d/4ipYaJLUt+
	gOXDOuQDMrJQ/I=
X-Google-Smtp-Source: AGHT+IHzWPYCHO8TYMArjtFvECMEL21nASqORB4ezLJFhG6O/tj1mS9JO/pOaU9Regy38BeBofSLBg==
X-Received: by 2002:a05:600c:444a:b0:465:a51d:d4 with SMTP id 5b1f17b1804b1-47a8f8a7570mr64372955e9.6.1765667370526;
        Sat, 13 Dec 2025 15:09:30 -0800 (PST)
Received: from Lord-Beerus.station (net-5-94-28-5.cust.vodafonedsl.it. [5.94.28.5])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47a8f4f4150sm106040995e9.11.2025.12.13.15.09.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Dec 2025 15:09:30 -0800 (PST)
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
Subject: [PATCH v2 2/6] arm64: dts: imx8mp-var-som: Move PCA9534 GPIO expander to Symphony carrier
Date: Sun, 14 Dec 2025 00:09:02 +0100
Message-ID: <20251213230909.16810-3-stefano.r@variscite.com>
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


