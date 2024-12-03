Return-Path: <devicetree+bounces-126581-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 345E59E1C59
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 13:41:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6DC3216700A
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 12:40:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA2F21EB9F9;
	Tue,  3 Dec 2024 12:40:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RsMm53Uj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7B1B1E882A
	for <devicetree@vger.kernel.org>; Tue,  3 Dec 2024 12:40:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733229631; cv=none; b=KQedlggFrtMd77vj5NGSnYWTWcEJACvtDpOQwJAudhbC4AvumaF1o2Y/WFp7XTrij3VBDZk5aOcDOEQQ280G1FhBcyPOX/iciE0E72OCayz9Jpin6eTC5S/LYc0HYaEAONt8YhDHrbVqy7yCa2wqoqPWFhW4T74GyuLK/tAKPgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733229631; c=relaxed/simple;
	bh=DOYEeW5fqX/hFVVI8pW02sXtNsbbcwN8fdtcTm5OO/Y=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=pp0Ua2W880zILqb7Q2MuDLHG7W0/FKKjiSLzYu1nlBS7WvJ31Drx/4UFnyRpxBA7Awr/7DvkmdOL4fvLdMsJ6ypcISxtpF6rD156jbBqV6X2fBbHIWm1eQpPiWfPkrVU0zpuk3lLpJ5NrkNbplRODqo/qFyB51V02Y5qkNfcL8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RsMm53Uj; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-53df1e063d8so7092008e87.3
        for <devicetree@vger.kernel.org>; Tue, 03 Dec 2024 04:40:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733229628; x=1733834428; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tZ+3x4XN/pFJwUZ9Fq6iibS8haA6YmZ1TimlQMAiSR8=;
        b=RsMm53Uj0wIJTGGQVSpfqb4qeutgmCqI0I0olMdgWSSErnZP3K9wpdgm4LklsiFm4X
         DnK+OQ8cnwSjSIh+VBS/ttWxB6cVCc0tMDC0I2FdqUDmqOVVzttVrN34VZ82ZAmhzkuD
         SbBmwm3OJ/9Dssf6d65G+qQoNnRgOaK+i3PxuJT2ztAtiWFYpeRImfoHc43xKmEWC9Rn
         JUZIVBW4cAD3VGGd4z1bjImGJJKUL8PLojmXZdWhVmxy7qU3Z32qMFg469Rjn/BQ9QeB
         vpZm/VkgkCi0BDMctyDw8lMa28OVDGDM8eiMeNHm8zkzxmwVa15eTkadqsZPqmG/b45B
         XqBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733229628; x=1733834428;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tZ+3x4XN/pFJwUZ9Fq6iibS8haA6YmZ1TimlQMAiSR8=;
        b=db+GcroCVPGBXFcT9KUGDT7rP2RAfMw7Yd8b0u5xZyK5lJ3qTDv8ivJ2zMvXhRlZWx
         bLDNipyDb0hkjfZrH+ry9wr9WYCWJM1P2ZzxmPyXL6XCucrkHCBBkfPjsbkhbbXAwyCU
         9+y6Q1VxaAeyWq+759o6pern+CaFqxVdQw/pG5OO24FJ6g2rgm18J4qhCZMVLqFTiw+S
         IYSmtvjAjcs4OT3lzeRexHbFaLw2r9AhFC2siaH8hRTbteV867BbehBdQjayilCyCxNs
         qTu4lGKGLf7t3gdEVOUnUWvbFbid7i+2qTa5mqLnXBDo+0RFagA3ZfnQhqrdazQqb577
         wVLQ==
X-Forwarded-Encrypted: i=1; AJvYcCVt5JL/MyINSLgRCuzAn7xsC5WKCSCNCq3rTix4cRyjYiYM7cMZQQAhS+bdnFO7/KGcJ7gABjunJMRH@vger.kernel.org
X-Gm-Message-State: AOJu0YwB5/41HbKPfhEtqHIE/PN6lG+kp7j4M6A0eAMgq00o/gl1GunH
	KEVp3YM1kf+4eC8+Bf/OjCWi4iE9U9ZD+HTURvq+sRAOx88tR1Rja7EjXgYI+lk=
X-Gm-Gg: ASbGncurMoECbsgKqmeqncbJWrAIVrT7apNsT80ziA6SL8/nCcDdBIrvNsstYvr+J3a
	18XVzeQPZi0nsKHkEbEyDDwOzbUM3AnXgyNrJvpL5C+c2Tc4rCdO6JExky9k1kReFtQtSGPYZWa
	rvOwRIXl3CZfheYorgPLoyCNI69Wd8xFtOD+pL+fvO/IXiaE+civ2z/TA+nvtWSRll912YJG3Yh
	JNDKC1hholDtRKiUPIucCmv86cFhZWTj6CSO0vUYlI3aXTLVlt7Fue6SJp49V2i02xN3N9pcDZc
	k9LH5Avoen2KgrUdEi0liZJR1CHpx9eH+Q==
X-Google-Smtp-Source: AGHT+IHeO/mKEhXVpXi9pdteGlsI4F23sERp53+a3TrAQPMUegvKy3+VOm9U1xkMFuv9jqKNjlvGEw==
X-Received: by 2002:a05:6512:6c9:b0:53d:a8cd:4285 with SMTP id 2adb3069b0e04-53e12a2e8damr1334975e87.39.1733229627590;
        Tue, 03 Dec 2024 04:40:27 -0800 (PST)
Received: from puffmais.c.googlers.com (64.227.90.34.bc.googleusercontent.com. [34.90.227.64])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa5998e6a4csm616809466b.106.2024.12.03.04.40.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2024 04:40:27 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Tue, 03 Dec 2024 12:40:27 +0000
Subject: [PATCH v2 4/5] arm64: dts: exynos: gs101-oriole: enable Maxim
 max77759 TCPCi
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20241203-gs101-phy-lanes-orientation-dts-v2-4-1412783a6b01@linaro.org>
References: <20241203-gs101-phy-lanes-orientation-dts-v2-0-1412783a6b01@linaro.org>
In-Reply-To: <20241203-gs101-phy-lanes-orientation-dts-v2-0-1412783a6b01@linaro.org>
To: Catalin Marinas <catalin.marinas@arm.com>, 
 Will Deacon <will@kernel.org>, Peter Griffin <peter.griffin@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>
Cc: Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Sam Protsenko <semen.protsenko@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, Roy Luo <royluo@google.com>, 
 kernel-team@android.com, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.13.0

On Pixel 6 (and Pro), a max77759 companion PMIC for USB Type-C
applications is used, which contains four functional blocks (at
distinct I2C addresses):
  * top (including GPIO)
  * charger
  * fuel gauge
  * TCPCi

While in the same package, TCPCi and Fuel Gauge have separate I2C
addresses, interrupt lines and interrupt status registers and can be
treated independently.

The TCPCi is required to detect and handle connector orientation in
Pixel's USB PHY driver, and to configure the USB controller's role
(host vs device).

This change adds the TCPCi part as it can be independent and doesn't
need a top-level MFD.

Signed-off-by: André Draszik <andre.draszik@linaro.org>

---
v2:
* compatible has changed to maxim,max77759-tcpci
* clarify that GPIO is actually part of 'top' in commit message, not
  separate
---
 arch/arm64/boot/dts/exynos/google/gs101-oriole.dts | 99 ++++++++++++++++++++++
 1 file changed, 99 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts b/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts
index 387fb779bd29..a5cbf1e10c7b 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts
+++ b/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts
@@ -10,6 +10,7 @@
 
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
+#include <dt-bindings/usb/pd.h>
 #include "gs101-pinctrl.h"
 #include "gs101.dtsi"
 
@@ -90,6 +91,84 @@ eeprom: eeprom@50 {
 &hsi2c_12 {
 	status = "okay";
 	/* TODO: add the devices once drivers exist */
+
+	usb-typec@25 {
+		compatible = "maxim,max77759-tcpci", "maxim,max33359";
+		reg = <0x25>;
+		interrupts-extended = <&gpa8 2 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-0 = <&typec_int>;
+		pinctrl-names = "default";
+
+		connector {
+			compatible = "usb-c-connector";
+			label = "USB-C";
+			data-role = "dual";
+			power-role = "dual";
+			self-powered;
+			try-power-role = "sink";
+			op-sink-microwatt = <2600000>;
+			new-source-frs-typec-current = <FRS_5V_1P5A>;
+			slow-charger-loop;
+			/*
+			 * max77759 operating in reverse boost mode (0xA) can
+			 * source up to 1.5A while extboost can only do ~1A.
+			 * Since extboost is the primary path, advertise 900mA.
+			 */
+			source-pdos = <PDO_FIXED(5000, 900,
+						 (PDO_FIXED_SUSPEND
+						  | PDO_FIXED_USB_COMM
+						  | PDO_FIXED_DATA_SWAP
+						  | PDO_FIXED_DUAL_ROLE))>;
+			sink-pdos = <PDO_FIXED(5000, 3000,
+					       (PDO_FIXED_DATA_SWAP
+						| PDO_FIXED_USB_COMM
+						| PDO_FIXED_HIGHER_CAP
+						| PDO_FIXED_DUAL_ROLE))
+				     PDO_FIXED(9000, 2200, 0)
+				     PDO_PPS_APDO(5000, 11000, 3000)>;
+			sink-vdos = <VDO_IDH(1, 1, IDH_PTYPE_PERIPH, 0,
+					     IDH_PTYPE_DFP_HOST, 2, 0x18d1)
+				     VDO_CERT(0x0)
+				     VDO_PRODUCT(0x4ee1, 0x0)
+				     VDO_UFP(UFP_VDO_VER1_2,
+					     (DEV_USB2_CAPABLE
+					      | DEV_USB3_CAPABLE),
+					     UFP_RECEPTACLE, 0,
+					     AMA_VCONN_NOT_REQ, 0,
+					     UFP_ALTMODE_NOT_SUPP,
+					     UFP_USB32_GEN1)
+				     /* padding */ 0
+				     VDO_DFP(DFP_VDO_VER1_1,
+					     (HOST_USB2_CAPABLE
+					      | HOST_USB3_CAPABLE),
+					     DFP_RECEPTACLE, 0)>;
+			sink-vdos-v1 = <VDO_IDH(1, 1, IDH_PTYPE_PERIPH, 0,
+						0, 0, 0x18d1)
+					VDO_CERT(0x0)
+					VDO_PRODUCT(0x4ee1, 0x0)>;
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					usbc0_orien_sw: endpoint {
+						remote-endpoint = <&usbdrd31_phy_orien_switch>;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+
+					usbc0_role_sw: endpoint {
+						remote-endpoint = <&usbdrd31_dwc3_role_switch>;
+					};
+				};
+			};
+		};
+	};
 };
 
 &pinctrl_far_alive {
@@ -106,6 +185,13 @@ key_volup: key-volup-pins {
 		samsung,pin-pud = <GS101_PIN_PULL_NONE>;
 		samsung,pin-drv = <GS101_PIN_DRV_2_5_MA>;
 	};
+
+	typec_int: typec-int-pins {
+		samsung,pins = "gpa8-2";
+		samsung,pin-function = <GS101_PIN_FUNC_EINT>;
+		samsung,pin-pud = <GS101_PIN_PULL_UP>;
+		samsung,pin-drv = <GS101_PIN_DRV_2_5_MA>;
+	};
 };
 
 &pinctrl_gpio_alive {
@@ -142,9 +228,16 @@ &usbdrd31_dwc3 {
 	role-switch-default-mode = "peripheral";
 	maximum-speed = "super-speed-plus";
 	status = "okay";
+
+	port {
+		usbdrd31_dwc3_role_switch: endpoint {
+			remote-endpoint = <&usbc0_role_sw>;
+		};
+	};
 };
 
 &usbdrd31_phy {
+	orientation-switch;
 	/* TODO: Update these once PMIC is implemented */
 	pll-supply = <&reg_placeholder>;
 	dvdd-usb20-supply = <&reg_placeholder>;
@@ -153,6 +246,12 @@ &usbdrd31_phy {
 	vdda-usbdp-supply = <&reg_placeholder>;
 	vddh-usbdp-supply = <&reg_placeholder>;
 	status = "okay";
+
+	port {
+		usbdrd31_phy_orien_switch: endpoint {
+			remote-endpoint = <&usbc0_orien_sw>;
+		};
+	};
 };
 
 &usi_uart {

-- 
2.47.0.338.g60cca15819-goog


