Return-Path: <devicetree+bounces-84583-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E17892CD57
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 10:44:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A226EB258D7
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 08:44:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 880CC13CFB8;
	Wed, 10 Jul 2024 08:44:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OqPyM1TU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BCAA13AD04
	for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 08:44:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720601071; cv=none; b=gNAOd+D+PDrjCRG5Gg9knlFT4qIRs4dx3UJ5wHiSQJOB8Emih3KVnrOx8ihgR35eVG+N4KNh74RI/R2TsDc99pVNFpZSganNXzZ1GfyoeAbaohQf0P+i8ZQh5Fb3OqBjT3QBTjDVOW/PjSJ6MKDkQ7pvNCx1jdlMWEkc6nrmMpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720601071; c=relaxed/simple;
	bh=grwnEioxxlxwvsOdUt39GMl87MPWI0zee71uUjiHhwo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Sk0zPzfWp23yMmLiIYCAw7xIAG98l/54Wr4oulexEHa3q1eIogsdW3YjD/6L3I1WaXSP1wBizSigS66vqjN6O3BFf4/Bx4LUPqVdSc5yCfk9W1LSYd5KsxLRKlALxakUjFC7UpUEfhU6t5jhxb0AXffHXzgz3Uq8X3Ulr3pgd/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OqPyM1TU; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-36798ea618bso3933956f8f.0
        for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 01:44:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720601068; x=1721205868; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mWJLMrqzo6+QbPyAsb5CtmtcC1LUAvdXZ27fE9UFW1g=;
        b=OqPyM1TUp9JrY/tl5FCZ06klmChUdCTmKxVgvd8xl6C121e2DCsN3pXFE0u5FWDICz
         u1Jo5bVHXjQEavsy8bTHurjrNdE9EYOLT+EgNcYhs8rUGlf+d2eT1ql5YejodWlZjOBq
         6OXfS0JVbg6mEDqGfN1hV+jGMArxi+fslDWcxyYKUm6RSJzPcuflEhNKLNx6Z7H1FKox
         oPpejPk4+FWC8ldSy2h1PX0w5KAsFkyAtJ6mnyrTcyrYB1Mz8r5cGtPYbM5WsUwYcrsM
         zrDY07bJwcsh/o2yKyOzkTCfQ4tP1JTLc4DWrwgnaF3oayoZHvllulS/U5sEsi3e2jN2
         pKZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720601068; x=1721205868;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mWJLMrqzo6+QbPyAsb5CtmtcC1LUAvdXZ27fE9UFW1g=;
        b=qIVbefaVw9nBZyVaWeoDKUMMKu8LqmE6SljGnTGiKmadf+8SRHBtdXkYkfdNPco5Ik
         t8qcG9GpNJHgxuwO2DFbVGGonA8mDn5rFLxSlTJddrVOrdZnk1ArxT98E14wYmKXGzZI
         MJydiFZcfR6O2eQ1UDZ744MvaC/IZKsuOv6TMxJRk80Q1pVBunkZPYdefD1rwusDR3bU
         PIjlEEugC177IBZOIC2hUGEQ47WLBc6K1FgJtqqjfhscjT5q8ks1sgIQiXhtvN2V+aeg
         Lj3MEWdyR7amumAeI4Jw/hjVjqhhT4AKjhwgPHE/LxR6e/rusyBYV58q7s1I+NSATEjT
         WHQw==
X-Forwarded-Encrypted: i=1; AJvYcCV6leK39/41h3NSvr74Tv1AdKZxqTJwxMMEpTGBtXh77KjIOzqcpdv3SlsOqEFr9pn5h9fmMneqs5aWaiTpoU8p00A1N8n/7rVQag==
X-Gm-Message-State: AOJu0Yz6GklD8I2OJbj27kTHXvBS3e2GXavHqxMM8R4plJ7iU3DSHRXc
	QnP4SO9GwYEJnC0bQ+qTVm46PhV0sL9Tx5a0BCpw8xKhipsvJSpW5idrR3fzVX4=
X-Google-Smtp-Source: AGHT+IFOXyANY/1dUvvudPhj18sjaA09coDB8JWOM5hi0AxJpMtEc6WFOCpo7spLescgC4EivreFLQ==
X-Received: by 2002:a5d:6a4d:0:b0:367:89d5:e440 with SMTP id ffacd0b85a97d-367cea6b7b3mr2828084f8f.20.1720601068082;
        Wed, 10 Jul 2024 01:44:28 -0700 (PDT)
Received: from rayyan-pc.broadband ([2a0a:ef40:ee7:2401:197d:e048:a80f:bc44])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-367cdfa06ffsm4700403f8f.77.2024.07.10.01.44.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jul 2024 01:44:27 -0700 (PDT)
From: Rayyan Ansari <rayyan.ansari@linaro.org>
To: linux-arm-msm@vger.kernel.org
Cc: Rayyan Ansari <rayyan.ansari@linaro.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-kernel@vger.kernel.org,
	Rob Herring <robh@kernel.org>
Subject: [PATCH 2/3] ARM: dts: qcom: ipq8064: adhere to pinctrl dtschema
Date: Wed, 10 Jul 2024 09:41:10 +0100
Message-ID: <20240710084250.11342-3-rayyan.ansari@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240710084250.11342-1-rayyan.ansari@linaro.org>
References: <20240710084250.11342-1-rayyan.ansari@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Pass dt_binding_check for qcom,ipq8064-pinctrl.yaml.
Also remove invalid "bias-none" property, which I have assumed to mean
"bias-disable".

Signed-off-by: Rayyan Ansari <rayyan.ansari@linaro.org>
---
 arch/arm/boot/dts/qcom/qcom-ipq8064-ap148.dts |  11 +-
 .../arm/boot/dts/qcom/qcom-ipq8064-rb3011.dts |  76 +++++-------
 arch/arm/boot/dts/qcom/qcom-ipq8064.dtsi      | 114 ++++++++----------
 3 files changed, 87 insertions(+), 114 deletions(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-ipq8064-ap148.dts b/arch/arm/boot/dts/qcom/qcom-ipq8064-ap148.dts
index a654d3c22c4f..5a8bf1a6f559 100644
--- a/arch/arm/boot/dts/qcom/qcom-ipq8064-ap148.dts
+++ b/arch/arm/boot/dts/qcom/qcom-ipq8064-ap148.dts
@@ -7,12 +7,11 @@ / {
 
 	soc {
 		pinmux@800000 {
-			buttons_pins: buttons_pins {
-				mux {
-					pins = "gpio54", "gpio65";
-					drive-strength = <2>;
-					bias-pull-up;
-				};
+			buttons_pins: buttons-state {
+				pins = "gpio54", "gpio65";
+				function = "gpio";
+				drive-strength = <2>;
+				bias-pull-up;
 			};
 		};
 
diff --git a/arch/arm/boot/dts/qcom/qcom-ipq8064-rb3011.dts b/arch/arm/boot/dts/qcom/qcom-ipq8064-rb3011.dts
index 12e806adcda8..f09da9460c86 100644
--- a/arch/arm/boot/dts/qcom/qcom-ipq8064-rb3011.dts
+++ b/arch/arm/boot/dts/qcom/qcom-ipq8064-rb3011.dts
@@ -404,59 +404,49 @@ main@800000 {
 };
 
 &qcom_pinmux {
-	buttons_pins: buttons_pins {
-		mux {
-			pins = "gpio66";
-			drive-strength = <16>;
-			bias-disable;
-		};
+	buttons_pins: buttons-state {
+		pins = "gpio66";
+		function = "gpio";
+		drive-strength = <16>;
+		bias-disable;
 	};
 
-	leds_pins: leds_pins {
-		mux {
-			pins = "gpio33";
-			drive-strength = <16>;
-			bias-disable;
-		};
+	leds_pins: leds-state {
+		pins = "gpio33";
+		function = "gpio";
+		drive-strength = <16>;
+		bias-disable;
 	};
 
-	mdio1_pins: mdio1_pins {
-		mux {
-			pins = "gpio10", "gpio11";
-			function = "gpio";
-			drive-strength = <8>;
-			bias-disable;
-		};
+	mdio1_pins: mdio1-state {
+		pins = "gpio10", "gpio11";
+		function = "gpio";
+		drive-strength = <8>;
+		bias-disable;
 	};
 
-	sw0_reset_pin: sw0_reset_pin {
-		mux {
-			pins = "gpio16";
-			drive-strength = <16>;
-			function = "gpio";
-			bias-disable;
-			input-disable;
-		};
+	sw0_reset_pin: sw0-reset-state {
+		pins = "gpio16";
+		drive-strength = <16>;
+		function = "gpio";
+		bias-disable;
+		input-disable;
 	};
 
-	sw1_reset_pin: sw1_reset_pin {
-		mux {
-			pins = "gpio17";
-			drive-strength = <16>;
-			function = "gpio";
-			bias-disable;
-			input-disable;
-		};
+	sw1_reset_pin: sw1-reset-state {
+		pins = "gpio17";
+		drive-strength = <16>;
+		function = "gpio";
+		bias-disable;
+		input-disable;
 	};
 
-	usb1_pwr_en_pins: usb1_pwr_en_pins {
-		mux {
-			pins = "gpio4";
-			function = "gpio";
-			drive-strength = <16>;
-			bias-disable;
-			output-high;
-		};
+	usb1_pwr_en_pins: usb1-pwr-en-state {
+		pins = "gpio4";
+		function = "gpio";
+		drive-strength = <16>;
+		bias-disable;
+		output-high;
 	};
 };
 
diff --git a/arch/arm/boot/dts/qcom/qcom-ipq8064.dtsi b/arch/arm/boot/dts/qcom/qcom-ipq8064.dtsi
index da0fd75f4711..9adefc88c5b4 100644
--- a/arch/arm/boot/dts/qcom/qcom-ipq8064.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-ipq8064.dtsi
@@ -399,70 +399,58 @@ qcom_pinmux: pinmux@800000 {
 			#interrupt-cells = <2>;
 			interrupts = <GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH>;
 
-			pcie0_pins: pcie0_pinmux {
-				mux {
-					pins = "gpio3";
-					function = "pcie1_rst";
-					drive-strength = <12>;
-					bias-disable;
-				};
+			pcie0_pins: pcie0-state {
+				pins = "gpio3";
+				function = "pcie1_rst";
+				drive-strength = <12>;
+				bias-disable;
 			};
 
-			pcie1_pins: pcie1_pinmux {
-				mux {
-					pins = "gpio48";
-					function = "pcie2_rst";
-					drive-strength = <12>;
-					bias-disable;
-				};
+			pcie1_pins: pcie1-state {
+				pins = "gpio48";
+				function = "pcie2_rst";
+				drive-strength = <12>;
+				bias-disable;
 			};
 
-			pcie2_pins: pcie2_pinmux {
-				mux {
-					pins = "gpio63";
-					function = "pcie3_rst";
-					drive-strength = <12>;
-					bias-disable;
-				};
+			pcie2_pins: pcie2-state {
+				pins = "gpio63";
+				function = "pcie3_rst";
+				drive-strength = <12>;
+				bias-disable;
 			};
 
-			i2c4_pins: i2c4-default {
+			i2c4_pins: i2c4-state {
 				pins = "gpio12", "gpio13";
 				function = "gsbi4";
 				drive-strength = <12>;
 				bias-disable;
 			};
 
-			spi_pins: spi_pins {
-				mux {
-					pins = "gpio18", "gpio19", "gpio21";
-					function = "gsbi5";
-					drive-strength = <10>;
-					bias-none;
-				};
+			spi_pins: spi-state {
+				pins = "gpio18", "gpio19", "gpio21";
+				function = "gsbi5";
+				drive-strength = <10>;
+				bias-disable;
 			};
 
-			leds_pins: leds_pins {
-				mux {
-					pins = "gpio7", "gpio8", "gpio9",
-					       "gpio26", "gpio53";
-					function = "gpio";
-					drive-strength = <2>;
-					bias-pull-down;
-					output-low;
-				};
+			leds_pins: leds-state {
+				pins = "gpio7", "gpio8", "gpio9",
+					"gpio26", "gpio53";
+				function = "gpio";
+				drive-strength = <2>;
+				bias-pull-down;
+				output-low;
 			};
 
-			buttons_pins: buttons_pins {
-				mux {
-					pins = "gpio54";
-					drive-strength = <2>;
-					bias-pull-up;
-				};
+			buttons_pins: buttons-state {
+				pins = "gpio54";
+				drive-strength = <2>;
+				bias-pull-up;
 			};
 
-			nand_pins: nand_pins {
-				mux {
+			nand_pins: nand-state {
+				nand-pins {
 					pins = "gpio34", "gpio35", "gpio36",
 					       "gpio37", "gpio38", "gpio39",
 					       "gpio40", "gpio41", "gpio42",
@@ -473,14 +461,14 @@ mux {
 					bias-disable;
 				};
 
-				pullups {
+				nand-pullup-pins {
 					pins = "gpio39";
 					function = "nand";
 					drive-strength = <10>;
 					bias-pull-up;
 				};
 
-				hold {
+				nand-hold-pins {
 					pins = "gpio40", "gpio41", "gpio42",
 					       "gpio43", "gpio44", "gpio45",
 					       "gpio46", "gpio47";
@@ -490,25 +478,21 @@ hold {
 				};
 			};
 
-			mdio0_pins: mdio0-pins {
-				mux {
-					pins = "gpio0", "gpio1";
-					function = "mdio";
-					drive-strength = <8>;
-					bias-disable;
-				};
+			mdio0_pins: mdio0-state {
+				pins = "gpio0", "gpio1";
+				function = "mdio";
+				drive-strength = <8>;
+				bias-disable;
 			};
 
-			rgmii2_pins: rgmii2-pins {
-				mux {
-					pins = "gpio27", "gpio28", "gpio29",
-					       "gpio30", "gpio31", "gpio32",
-					       "gpio51", "gpio52", "gpio59",
-					       "gpio60", "gpio61", "gpio62";
-					function = "rgmii2";
-					drive-strength = <8>;
-					bias-disable;
-				};
+			rgmii2_pins: rgmii2-state {
+				pins = "gpio27", "gpio28", "gpio29",
+					"gpio30", "gpio31", "gpio32",
+					"gpio51", "gpio52", "gpio59",
+					"gpio60", "gpio61", "gpio62";
+				function = "rgmii2";
+				drive-strength = <8>;
+				bias-disable;
 			};
 		};
 
-- 
2.45.2


