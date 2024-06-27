Return-Path: <devicetree+bounces-80955-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E26AB91ACD1
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 18:30:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 608C91F271DF
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 16:30:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A21519A28A;
	Thu, 27 Jun 2024 16:29:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b="F88cmHmN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C88C619AA77
	for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 16:29:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719505774; cv=none; b=lEMsrqxGTfWemqdi2CrqKqD4eoz+j/nMTMKBPqtR2Pm0W7Ssbh8N85vigRAOMb8NvdR9K0bFoHF1p/vtkwDHd7jsferApl8N6akWaPnByG2lp/kL2gBM8Vum9JISExXp8Vqr5HJ5LQdr1fapRVxpeuwEQzs31RlzG1xt55yJBgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719505774; c=relaxed/simple;
	bh=0t/wFPVC4l/yw5eF3OeLLEEWm+E+fxx+yaa8gVfDqK0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JinvnpF11OYiQEZ2jtqddTTfTWmv/u31j0XpeiluGg+XCRQhfK6JK5+IgEjDAQBlKHRM4n2LfiCESoch4g+FRr09DkxrvE6Ml9cK0vaeZ5LzDJVnr/ZWvg3bUJuQbaau6uY4+kUSOpvh33Fx+VjMrjIjTzw2XD+Ze3CrpjYHsEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org; spf=fail smtp.mailfrom=beagleboard.org; dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b=F88cmHmN; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=beagleboard.org
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-7066bb06c70so148734b3a.3
        for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 09:29:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=beagleboard-org.20230601.gappssmtp.com; s=20230601; t=1719505772; x=1720110572; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Vf+oty1NdLS1qae2Gc3SWM3tL3BZVhVoAyzz4KnihM4=;
        b=F88cmHmNPEDt+7BI9WdweNgB/T/fM1jY6LdoKBtLoZXT3eONnGGIlb5UqWVKFDkfHs
         aKhUQYVh164stCYYIQ2OFi0OCVbtdkVKY4qqo9uUNGhakq4qGKaB7OTsaLvK5nJ+D8+2
         gAwborMm9Rlr34dq62K2mCo73iGrx223I2fRm8cKjUyt4ItC5/BhwjDGzKVD5tZxLv/x
         KOYB8WnINziqQ8nuKhiWY2sY59m6P914uIJMZEGwG851Zp+nlCS42I/Wgu49bJumH39n
         Ts8ks3v+kaXxcI4muQ3bqDL7lau2T7nd8hFp6vBE+74KyFni4b7YjKiITbVHF+ikyLDj
         KY3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719505772; x=1720110572;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Vf+oty1NdLS1qae2Gc3SWM3tL3BZVhVoAyzz4KnihM4=;
        b=jw0t9lmsv9td6Or7Uq7Jtp2tvCDJ8QSqlV1D9d3RXaatwUSEbRUpLdAmIUBKPF7Aqr
         cHs1o572+HC/q5wRAepeA8W+nDKM7D80i4SMrl5SQBduyu9M3EzPMvqJ6LkqRfcv7862
         tcdLdgKfS2qEbA217kXnkPl1+uRsvu9vqrXLDpWMnjiPfWzNmm7bTyZOMUCbgr3bgUfZ
         GEpHINAQb/Q/p2gsYJy/yJafXNr8//sYM8Z5CLfTYdjc4972UqwwnDiPZM5MyAAuUf7H
         /uwOSe0PADb3SlIhK+kD7hIioB2g+RvEKYIza7+MXqusvg/L7WxTqwmvZbLkZnM2sf7s
         9Sag==
X-Forwarded-Encrypted: i=1; AJvYcCVYaU79H03PJwsns7TqRu9Kt6gJMHEmlb+cgXjxRF1/8Mp7BpiNtSRgJAV93dvRTcDJWBGWMMp2GwVy6DIDbrQV7u1FBNrgx6AZnQ==
X-Gm-Message-State: AOJu0YxKvcIivcXgJ/Ouv/5Mo8SrL7KsgWSRT0VWIYiM4t0duRGOn+dQ
	XzK71yoM39naZ2e9o7gxi1zVY3bTxitOIkbFYwOrB7Jf2uqmMs5N45XgvFKclQ==
X-Google-Smtp-Source: AGHT+IEM53rJZfG+wXWNukg7BNDZblkSojZV/fyTaxHEkXKgKetvOptN3XWLNYHdMUoSnCpCZfNjsw==
X-Received: by 2002:a05:6a00:3e24:b0:706:7d86:487f with SMTP id d2e1a72fcca58-7067d864f28mr12998499b3a.1.1719505772201;
        Thu, 27 Jun 2024 09:29:32 -0700 (PDT)
Received: from [127.0.0.1] ([2401:4900:1f3e:18b0:e4e6:ed1:4c03:dcec])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-706b4a58dbdsm1560739b3a.198.2024.06.27.09.29.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Jun 2024 09:29:31 -0700 (PDT)
From: Ayush Singh <ayush@beagleboard.org>
Date: Thu, 27 Jun 2024 21:56:17 +0530
Subject: [PATCH v5 7/7] dts: ti: k3-am625-beagleplay: Add mikroBUS
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240627-mikrobus-scratch-spi-v5-7-9e6c148bf5f0@beagleboard.org>
References: <20240627-mikrobus-scratch-spi-v5-0-9e6c148bf5f0@beagleboard.org>
In-Reply-To: <20240627-mikrobus-scratch-spi-v5-0-9e6c148bf5f0@beagleboard.org>
To: Mark Brown <broonie@kernel.org>, 
 Vaishnav M A <vaishnav@beagleboard.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Derek Kiernan <derek.kiernan@amd.com>, 
 Dragan Cvetic <dragan.cvetic@amd.com>, Arnd Bergmann <arnd@arndb.de>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Nishanth Menon <nm@ti.com>, 
 Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>, 
 Michael Walle <mwalle@kernel.org>, Andrew Lunn <andrew@lunn.ch>, 
 jkridner@beagleboard.org, robertcnelson@beagleboard.org
Cc: linux-spi@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 Ayush Singh <ayush@beagleboard.org>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=5723; i=ayush@beagleboard.org;
 h=from:subject:message-id; bh=0t/wFPVC4l/yw5eF3OeLLEEWm+E+fxx+yaa8gVfDqK0=;
 b=owEBbQKS/ZANAwAIAQXO9ceJ5Vp0AcsmYgBmfZM459JpVph8a7o9EFioAHe3jzmpm5BUTLvDx
 XeluaGM06CJAjMEAAEIAB0WIQTfzBMe8k8tZW+lBNYFzvXHieVadAUCZn2TOAAKCRAFzvXHieVa
 dHpEEADUBssv55R+SULKv6RULv+gOVxAXjyNVscI7LK8hDDfBEOV5xQlG5hFW92XtL9Bfrb5lgl
 ZQaS2VYyLcEzhTxJDPL6b0oKD3/xdOJ/y8vYBptr3YzlyS+Cg8S9h1HFL3W1wQSG4LT5HhegLHT
 710faT8vf3t9XYdJqWNJyoCtBOgeMHMRRl+3ttbE9nfGpSIMvRurgAB0No8tO9pkgEZwAv72f9g
 /4LZO8Dor8YNa/U0HTaTrgrBAppF+TQg7jRTRE41/Og4KalwNzJKU1IuoFqlSYQzI+97d7P+R75
 JRRt6H9U08UAvbJJ7JENif3m0nvLjPAGmUMsFVnEdult61dDpBoXzY3ZOUdYf1X+/BmXPFc6sUP
 bU4CRyOYFXPIlr5eRK5cybJv1neaVxdUlrqjh460vj3KS8f64760NPhd0lOCy4xQ/UBcw7ie6Gd
 /ZA8IWz091iwfRve1IneXpEjtnMM4/nQq+dZs32pQb/IgtTShP3jZXr+ldxFA5azE40lLVjH6yg
 mBopgaiLW0aFD3Cw20n0TnihXe9fsOkddjiJAXMFLESb7i3O41GnNAjh9hLS4E+hWTmK4Z569Ap
 q/YPzQtimt+rqtnByhlWUYaf6yJpLPYuL3vSjjlAngvbQgCI3Ir+L1uWyerY7T8CqDQVCPzObJ2
 PqOaFYgnkKeIUoA==
X-Developer-Key: i=ayush@beagleboard.org; a=openpgp;
 fpr=DFCC131EF24F2D656FA504D605CEF5C789E55A74

DONOTMERGE

Add mikroBUS connector and some mikroBUS boards support for Beagleplay.
The mikroBUS boards node should probably be moved to a more appropriate
location but I am not quite sure where it should go since it is not
dependent on specific arch.

Signed-off-by: Ayush Singh <ayush@beagleboard.org>
---
 arch/arm64/boot/dts/ti/k3-am625-beagleplay.dts | 94 +++++++++++++++++++++++---
 1 file changed, 86 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am625-beagleplay.dts b/arch/arm64/boot/dts/ti/k3-am625-beagleplay.dts
index 70de288d728e..3f3cd70345c4 100644
--- a/arch/arm64/boot/dts/ti/k3-am625-beagleplay.dts
+++ b/arch/arm64/boot/dts/ti/k3-am625-beagleplay.dts
@@ -38,6 +38,7 @@ aliases {
 		serial2 = &main_uart0;
 		usb0 = &usb0;
 		usb1 = &usb1;
+		mikrobus0 = &mikrobus0;
 	};
 
 	chosen {
@@ -227,6 +228,56 @@ simple-audio-card,codec {
 		};
 	};
 
+	mikrobus0: mikrobus-connector {
+		compatible = "mikrobus-connector";
+		pinctrl-names = "default", "pwm_default", "pwm_gpio",
+				"uart_default", "uart_gpio", "i2c_default",
+				"i2c_gpio", "spi_default", "spi_gpio";
+		pinctrl-0 = <&mikrobus_gpio_pins_default>;
+		pinctrl-1 = <&mikrobus_pwm_pins_default>;
+		pinctrl-2 = <&mikrobus_pwm_pins_gpio>;
+		pinctrl-3 = <&mikrobus_uart_pins_default>;
+		pinctrl-4 = <&mikrobus_uart_pins_gpio>;
+		pinctrl-5 = <&mikrobus_i2c_pins_default>;
+		pinctrl-6 = <&mikrobus_i2c_pins_gpio>;
+		pinctrl-7 = <&mikrobus_spi_pins_default>;
+		pinctrl-8 = <&mikrobus_spi_pins_gpio>;
+
+		mikrobus-gpio-names = "pwm", "int", "rx", "tx", "scl", "sda",
+				      "mosi", "miso", "sck", "cs", "rst", "an";
+		mikrobus-gpios = <&main_gpio1 11 GPIO_ACTIVE_HIGH>,
+				 <&main_gpio1 9 GPIO_ACTIVE_HIGH>,
+				 <&main_gpio1 24 GPIO_ACTIVE_HIGH>,
+				 <&main_gpio1 25 GPIO_ACTIVE_HIGH>,
+				 <&main_gpio1 22 GPIO_ACTIVE_HIGH>,
+				 <&main_gpio1 23 GPIO_ACTIVE_HIGH>,
+				 <&main_gpio1 7 GPIO_ACTIVE_HIGH>,
+				 <&main_gpio1 8 GPIO_ACTIVE_HIGH>,
+				 <&main_gpio1 14 GPIO_ACTIVE_HIGH>,
+				 <&main_gpio1 13 GPIO_ACTIVE_HIGH>,
+				 <&main_gpio1 12 GPIO_ACTIVE_HIGH>,
+				 <&main_gpio1 10 GPIO_ACTIVE_HIGH>;
+
+		spi-controller = <&main_spi2>;
+		spi-cs = <0>;
+		spi-cs-names = "default";
+
+		board = <&lsm6dsl_click>;
+	};
+
+	mikrobus_boards {
+		thermo_click: thermo-click {
+			compatible = "maxim,max31855k", "mikrobus-spi";
+			spi-max-frequency = <1000000>;
+			pinctrl-apply = "spi_default";
+		};
+
+		lsm6dsl_click: lsm6dsl-click {
+			compatible = "st,lsm6ds3", "mikrobus-spi";
+			spi-max-frequency = <1000000>;
+			pinctrl-apply = "spi_default";
+		};
+	};
 };
 
 &main_pmx0 {
@@ -387,6 +438,18 @@ AM62X_IOPAD(0x01f0, PIN_OUTPUT, 5) /* (A18) EXT_REFCLK1.CLKOUT0 */
 		>;
 	};
 
+	mikrobus_pwm_pins_default: mikrobus-pwm-default-pins {
+		pinctrl-single,pins = <
+			AM62X_IOPAD(0x01a4, PIN_INPUT, 2) /* (B20) MCASP0_ACLKX.ECAP2_IN_APWM_OUT */
+		>;
+	};
+
+	mikrobus_pwm_pins_gpio: mikrobus-pwm-gpio-pins {
+		pinctrl-single,pins = <
+			AM62X_IOPAD(0x01a4, PIN_INPUT, 7) /* (B20) MCASP0_ACLKX.GPIO1_11 */
+		>;
+	};
+
 	mikrobus_i2c_pins_default: mikrobus-i2c-default-pins {
 		pinctrl-single,pins = <
 			AM62X_IOPAD(0x01d0, PIN_INPUT_PULLUP, 2) /* (A15) UART0_CTSn.I2C3_SCL */
@@ -394,6 +457,13 @@ AM62X_IOPAD(0x01d4, PIN_INPUT_PULLUP, 2) /* (B15) UART0_RTSn.I2C3_SDA */
 		>;
 	};
 
+	mikrobus_i2c_pins_gpio: mikrobus-i2c-gpio-pins {
+		pinctrl-single,pins = <
+			AM62X_IOPAD(0x01d0, PIN_INPUT, 7) /* (A15) UART0_CTSn.GPIO1_22 */
+			AM62X_IOPAD(0x01d4, PIN_INPUT, 7) /* (B15) UART0_RTSn.GPIO1_23 */
+		>;
+	};
+
 	mikrobus_uart_pins_default: mikrobus-uart-default-pins {
 		pinctrl-single,pins = <
 			AM62X_IOPAD(0x01d8, PIN_INPUT, 1) /* (C15) MCAN0_TX.UART5_RXD */
@@ -401,6 +471,13 @@ AM62X_IOPAD(0x01dc, PIN_OUTPUT, 1) /* (E15) MCAN0_RX.UART5_TXD */
 		>;
 	};
 
+	mikrobus_uart_pins_gpio: mikrobus-uart-gpio-pins {
+		pinctrl-single,pins = <
+			AM62X_IOPAD(0x01d8, PIN_INPUT, 7) /* (C15) MCAN0_TX.GPIO1_24 */
+			AM62X_IOPAD(0x01dc, PIN_INPUT, 7) /* (E15) MCAN0_RX.GPIO1_25 */
+		>;
+	};
+
 	mikrobus_spi_pins_default: mikrobus-spi-default-pins {
 		pinctrl-single,pins = <
 			AM62X_IOPAD(0x01b0, PIN_INPUT, 1) /* (A20) MCASP0_ACLKR.SPI2_CLK */
@@ -410,6 +487,15 @@ AM62X_IOPAD(0x0198, PIN_INPUT, 1) /* (A19) MCASP0_AXR2.SPI2_D1 */
 		>;
 	};
 
+	mikrobus_spi_pins_gpio: mikrobus-spi-gpio-pins {
+		pinctrl-single,pins = <
+			AM62X_IOPAD(0x0194, PIN_INPUT, 7) /* (B19) MCASP0_AXR3.GPIO1_7 */
+			AM62X_IOPAD(0x0198, PIN_INPUT, 7) /* (A19) MCASP0_AXR2.GPIO1_8 */
+			AM62X_IOPAD(0x01ac, PIN_INPUT, 7) /* (E19) MCASP0_AFSR.GPIO1_13 */
+			AM62X_IOPAD(0x01b0, PIN_INPUT, 7) /* (A20) MCASP0_ACLKR.GPIO1_14 */
+		>;
+	};
+
 	mikrobus_gpio_pins_default: mikrobus-gpio-default-pins {
 		bootph-all;
 		pinctrl-single,pins = <
@@ -630,8 +716,6 @@ &main_gpio0 {
 
 &main_gpio1 {
 	bootph-all;
-	pinctrl-names = "default";
-	pinctrl-0 = <&mikrobus_gpio_pins_default>;
 	gpio-line-names = "", "", "", "", "",			/* 0-4 */
 		"SPE_RSTN", "SPE_INTN", "MIKROBUS_GPIO1_7",	/* 5-7 */
 		"MIKROBUS_GPIO1_8", "MIKROBUS_GPIO1_9",		/* 8-9 */
@@ -804,15 +888,11 @@ it66121_out: endpoint {
 };
 
 &main_i2c3 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&mikrobus_i2c_pins_default>;
 	clock-frequency = <400000>;
 	status = "okay";
 };
 
 &main_spi2 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&mikrobus_spi_pins_default>;
 	status = "okay";
 };
 
@@ -876,8 +956,6 @@ &main_uart1 {
 };
 
 &main_uart5 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&mikrobus_uart_pins_default>;
 	status = "okay";
 };
 

-- 
2.45.2


