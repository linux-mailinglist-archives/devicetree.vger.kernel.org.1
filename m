Return-Path: <devicetree+bounces-4224-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 837247B192A
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 13:03:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 06767282FC5
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 11:03:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D775F3715E;
	Thu, 28 Sep 2023 11:03:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD4DD36AFD
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 11:03:31 +0000 (UTC)
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E77031B1
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 04:03:28 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-50306b2920dso15232602e87.0
        for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 04:03:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695899007; x=1696503807; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YOijttIhX4pC24Tx4gkoYM4fEkA3UENDYI9aQrNhx68=;
        b=L4HKxNGPgxseowmIOB8ibp2qomWmSqULGpkqINYWVekIPuu8dozTPMn2S3yR30mO0e
         CStoej/oAp9Jcn4Rf96WNZegEZCONVx74C0cOHyD3Y5/Z8o/0s50/ARQQl36n15rsuL9
         Q9OjChxlfP4zGiESj+ghGNnQ9VqaeJTAxz4aahlpYZZFq78eTjXoG6VPdIjg5O7iCfIb
         Horo4n8g13xlnUcG4vZIRlITcISiQ0YeAJ7kFyF4DZrYpGHjxEU89ub6/3bAmlhCrDI2
         gRa/M8eAhLFE3JwGwKd4DZ1zDKoiXVMM3rQ2ZbtDVH4O+K4RzQq0IMle/gt7FDnvdmYE
         2ZIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695899007; x=1696503807;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YOijttIhX4pC24Tx4gkoYM4fEkA3UENDYI9aQrNhx68=;
        b=ZhGck0wNCSkE7VhRF2wkAj5U+GeLbLe3HAjhLkmDTNrfIh6CtGtKp3T9/kgGaNlPOP
         O2W4FpPL09RIAjWHpyweH1L1760lKUDe/jiRPgoLWijWrU1WsVNHlgRwd2FuaPCVUMqe
         cikrXGORJAaH/ZZhy1AWjlrmJhnro5BlDXX1Quj34TCE0e3bx4PwDh+oZYfXNs4FKfWw
         RQExOwpNTHRAFFwAQ3eJj8siwwMLwjIHW1SDtZZWc4KS676rYiWvS9DPtMLO356drcCX
         psYFJXHIPzOmmvHSsvTlQMbr7uWR1hEt/EFJ8LJqhRUAsMU4Qq/9GGKsQj7QBFzeVSLO
         lg4w==
X-Gm-Message-State: AOJu0YwrYhdEyL99CS+wrA7f+v6RibPhYxppVNwm/sn5cJ5x7Mqj1gwo
	L1JU4kBmkI858hFJ2BmvlXg0lg==
X-Google-Smtp-Source: AGHT+IE2//BCmcGx6GyhBaAOfahmskSFK9xXsVdLRQLl48oKgtRiiDdpLOSP0F1IcKKEX9dJ+uAwaA==
X-Received: by 2002:ac2:488f:0:b0:4f8:6253:540 with SMTP id x15-20020ac2488f000000b004f862530540mr689591lfc.19.1695899007004;
        Thu, 28 Sep 2023 04:03:27 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id u2-20020a056512040200b005030a35019dsm3052953lfk.178.2023.09.28.04.03.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Sep 2023 04:03:26 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-input@vger.kernel.org
Subject: [PATCH v6 19/36] ARM: dts: qcom: msm8660: split PMIC to separate dtsi files
Date: Thu, 28 Sep 2023 14:02:52 +0300
Message-Id: <20230928110309.1212221-20-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230928110309.1212221-1-dmitry.baryshkov@linaro.org>
References: <20230928110309.1212221-1-dmitry.baryshkov@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

The PMIC is not a part of the SoC, so move PMIC to a separate file and
include it from the board files.

Suggested-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Acked-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom/pm8058.dtsi            | 160 ++++++++++++++++++
 .../dts/qcom/qcom-apq8060-dragonboard.dts     |   1 +
 arch/arm/boot/dts/qcom/qcom-msm8660-surf.dts  |   1 +
 arch/arm/boot/dts/qcom/qcom-msm8660.dtsi      | 149 +---------------
 4 files changed, 163 insertions(+), 148 deletions(-)
 create mode 100644 arch/arm/boot/dts/qcom/pm8058.dtsi

diff --git a/arch/arm/boot/dts/qcom/pm8058.dtsi b/arch/arm/boot/dts/qcom/pm8058.dtsi
new file mode 100644
index 000000000000..ad581c3bcbd2
--- /dev/null
+++ b/arch/arm/boot/dts/qcom/pm8058.dtsi
@@ -0,0 +1,160 @@
+// SPDX-License-Identifier: GPL-2.0
+
+&ssbi {
+	pm8058: pmic {
+		compatible = "qcom,pm8058";
+		#interrupt-cells = <2>;
+		interrupt-controller;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		pm8058_gpio: gpio@150 {
+			compatible = "qcom,pm8058-gpio",
+				     "qcom,ssbi-gpio";
+			reg = <0x150>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+			gpio-controller;
+			gpio-ranges = <&pm8058_gpio 0 0 44>;
+			#gpio-cells = <2>;
+		};
+
+		pm8058_mpps: mpps@50 {
+			compatible = "qcom,pm8058-mpp",
+				     "qcom,ssbi-mpp";
+			reg = <0x50>;
+			gpio-controller;
+			#gpio-cells = <2>;
+			gpio-ranges = <&pm8058_mpps 0 0 12>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+		};
+
+		pwrkey@1c {
+			compatible = "qcom,pm8058-pwrkey";
+			reg = <0x1c>;
+			interrupt-parent = <&pm8058>;
+			interrupts = <50 1>, <51 1>;
+			debounce = <15625>;
+			pull-up;
+		};
+
+		pm8058_keypad: keypad@148 {
+			compatible = "qcom,pm8058-keypad";
+			reg = <0x148>;
+			interrupt-parent = <&pm8058>;
+			interrupts = <74 1>, <75 1>;
+			debounce = <15>;
+			scan-delay = <32>;
+			row-hold = <91500>;
+		};
+
+		pm8058_xoadc: xoadc@197 {
+			compatible = "qcom,pm8058-adc";
+			reg = <0x197>;
+			interrupts-extended = <&pm8058 76 IRQ_TYPE_EDGE_RISING>;
+			#address-cells = <2>;
+			#size-cells = <0>;
+			#io-channel-cells = <2>;
+
+			vcoin: adc-channel@0 {
+				reg = <0x00 0x00>;
+			};
+
+			vbat: adc-channel@1 {
+				reg = <0x00 0x01>;
+			};
+
+			dcin: adc-channel@2 {
+				reg = <0x00 0x02>;
+			};
+
+			ichg: adc-channel@3 {
+				reg = <0x00 0x03>;
+			};
+
+			vph_pwr: adc-channel@4 {
+				reg = <0x00 0x04>;
+			};
+
+			usb_vbus: adc-channel@a {
+				reg = <0x00 0x0a>;
+			};
+
+			die_temp: adc-channel@b {
+				reg = <0x00 0x0b>;
+			};
+
+			ref_625mv: adc-channel@c {
+				reg = <0x00 0x0c>;
+			};
+
+			ref_1250mv: adc-channel@d {
+				reg = <0x00 0x0d>;
+			};
+
+			ref_325mv: adc-channel@e {
+				reg = <0x00 0x0e>;
+			};
+
+			ref_muxoff: adc-channel@f {
+				reg = <0x00 0x0f>;
+			};
+		};
+
+		rtc@1e8 {
+			compatible = "qcom,pm8058-rtc";
+			reg = <0x1e8>;
+			interrupt-parent = <&pm8058>;
+			interrupts = <39 1>;
+			allow-set-time;
+		};
+
+		vibrator@4a {
+			compatible = "qcom,pm8058-vib";
+			reg = <0x4a>;
+		};
+
+		pm8058_led48: led@48 {
+			compatible = "qcom,pm8058-keypad-led";
+			reg = <0x48>;
+			status = "disabled";
+		};
+
+		pm8058_led131: led@131 {
+			compatible = "qcom,pm8058-led";
+			reg = <0x131>;
+			status = "disabled";
+		};
+
+		pm8058_led132: led@132 {
+			compatible = "qcom,pm8058-led";
+			reg = <0x132>;
+			status = "disabled";
+		};
+
+		pm8058_led133: led@133 {
+			compatible = "qcom,pm8058-led";
+			reg = <0x133>;
+			status = "disabled";
+		};
+	};
+};
+
+/ {
+	/*
+	 * These channels from the ADC are simply hardware monitors.
+	 * That is why the ADC is referred to as "HKADC" - HouseKeeping
+	 * ADC.
+	 */
+	iio-hwmon {
+		compatible = "iio-hwmon";
+		io-channels = <&pm8058_xoadc 0x00 0x01>, /* Battery */
+			      <&pm8058_xoadc 0x00 0x02>, /* DC in (charger) */
+			      <&pm8058_xoadc 0x00 0x04>, /* VPH the main system voltage */
+			      <&pm8058_xoadc 0x00 0x0b>, /* Die temperature */
+			      <&pm8058_xoadc 0x00 0x0c>, /* Reference voltage 1.25V */
+			      <&pm8058_xoadc 0x00 0x0d>, /* Reference voltage 0.625V */
+			      <&pm8058_xoadc 0x00 0x0e>; /* Reference voltage 0.325V */
+	};
+};
diff --git a/arch/arm/boot/dts/qcom/qcom-apq8060-dragonboard.dts b/arch/arm/boot/dts/qcom/qcom-apq8060-dragonboard.dts
index e4261d729d35..10b8f529c337 100644
--- a/arch/arm/boot/dts/qcom/qcom-apq8060-dragonboard.dts
+++ b/arch/arm/boot/dts/qcom/qcom-apq8060-dragonboard.dts
@@ -5,6 +5,7 @@
 #include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
 #include <dt-bindings/pinctrl/qcom,pmic-mpp.h>
 #include "qcom-msm8660.dtsi"
+#include "pm8058.dtsi"
 
 / {
 	model = "Qualcomm APQ8060 Dragonboard";
diff --git a/arch/arm/boot/dts/qcom/qcom-msm8660-surf.dts b/arch/arm/boot/dts/qcom/qcom-msm8660-surf.dts
index a5441aecd637..be2fbc1e0950 100644
--- a/arch/arm/boot/dts/qcom/qcom-msm8660-surf.dts
+++ b/arch/arm/boot/dts/qcom/qcom-msm8660-surf.dts
@@ -2,6 +2,7 @@
 #include <dt-bindings/input/input.h>
 
 #include "qcom-msm8660.dtsi"
+#include "pm8058.dtsi"
 
 / {
 	model = "Qualcomm MSM8660 SURF";
diff --git a/arch/arm/boot/dts/qcom/qcom-msm8660.dtsi b/arch/arm/boot/dts/qcom/qcom-msm8660.dtsi
index 84b0366792d4..eef4712bbcc4 100644
--- a/arch/arm/boot/dts/qcom/qcom-msm8660.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-msm8660.dtsi
@@ -73,22 +73,6 @@ sleep-clk {
 		};
 	};
 
-	/*
-	 * These channels from the ADC are simply hardware monitors.
-	 * That is why the ADC is referred to as "HKADC" - HouseKeeping
-	 * ADC.
-	 */
-	iio-hwmon {
-		compatible = "iio-hwmon";
-		io-channels = <&pm8058_xoadc 0x00 0x01>, /* Battery */
-			      <&pm8058_xoadc 0x00 0x02>, /* DC in (charger) */
-			      <&pm8058_xoadc 0x00 0x04>, /* VPH the main system voltage */
-			      <&pm8058_xoadc 0x00 0x0b>, /* Die temperature */
-			      <&pm8058_xoadc 0x00 0x0c>, /* Reference voltage 1.25V */
-			      <&pm8058_xoadc 0x00 0x0d>, /* Reference voltage 0.625V */
-			      <&pm8058_xoadc 0x00 0x0e>; /* Reference voltage 0.325V */
-	};
-
 	soc: soc {
 		#address-cells = <1>;
 		#size-cells = <1>;
@@ -334,141 +318,10 @@ ebi2: external-bus@1a100000 {
 			status = "disabled";
 		};
 
-		ssbi@500000 {
+		ssbi: ssbi@500000 {
 			compatible = "qcom,ssbi";
 			reg = <0x500000 0x1000>;
 			qcom,controller-type = "pmic-arbiter";
-
-			pm8058: pmic {
-				compatible = "qcom,pm8058";
-				#interrupt-cells = <2>;
-				interrupt-controller;
-				#address-cells = <1>;
-				#size-cells = <0>;
-
-				pm8058_gpio: gpio@150 {
-					compatible = "qcom,pm8058-gpio",
-						     "qcom,ssbi-gpio";
-					reg = <0x150>;
-					interrupt-controller;
-					#interrupt-cells = <2>;
-					gpio-controller;
-					gpio-ranges = <&pm8058_gpio 0 0 44>;
-					#gpio-cells = <2>;
-
-				};
-
-				pm8058_mpps: mpps@50 {
-					compatible = "qcom,pm8058-mpp",
-						     "qcom,ssbi-mpp";
-					reg = <0x50>;
-					gpio-controller;
-					#gpio-cells = <2>;
-					gpio-ranges = <&pm8058_mpps 0 0 12>;
-					interrupt-controller;
-					#interrupt-cells = <2>;
-				};
-
-				pwrkey@1c {
-					compatible = "qcom,pm8058-pwrkey";
-					reg = <0x1c>;
-					interrupt-parent = <&pm8058>;
-					interrupts = <50 1>, <51 1>;
-					debounce = <15625>;
-					pull-up;
-				};
-
-				pm8058_keypad: keypad@148 {
-					compatible = "qcom,pm8058-keypad";
-					reg = <0x148>;
-					interrupt-parent = <&pm8058>;
-					interrupts = <74 1>, <75 1>;
-					debounce = <15>;
-					scan-delay = <32>;
-					row-hold = <91500>;
-				};
-
-				pm8058_xoadc: xoadc@197 {
-					compatible = "qcom,pm8058-adc";
-					reg = <0x197>;
-					interrupts-extended = <&pm8058 76 IRQ_TYPE_EDGE_RISING>;
-					#address-cells = <2>;
-					#size-cells = <0>;
-					#io-channel-cells = <2>;
-
-					vcoin: adc-channel@0 {
-						reg = <0x00 0x00>;
-					};
-					vbat: adc-channel@1 {
-						reg = <0x00 0x01>;
-					};
-					dcin: adc-channel@2 {
-						reg = <0x00 0x02>;
-					};
-					ichg: adc-channel@3 {
-						reg = <0x00 0x03>;
-					};
-					vph_pwr: adc-channel@4 {
-						reg = <0x00 0x04>;
-					};
-					usb_vbus: adc-channel@a {
-						reg = <0x00 0x0a>;
-					};
-					die_temp: adc-channel@b {
-						reg = <0x00 0x0b>;
-					};
-					ref_625mv: adc-channel@c {
-						reg = <0x00 0x0c>;
-					};
-					ref_1250mv: adc-channel@d {
-						reg = <0x00 0x0d>;
-					};
-					ref_325mv: adc-channel@e {
-						reg = <0x00 0x0e>;
-					};
-					ref_muxoff: adc-channel@f {
-						reg = <0x00 0x0f>;
-					};
-				};
-
-				rtc@1e8 {
-					compatible = "qcom,pm8058-rtc";
-					reg = <0x1e8>;
-					interrupt-parent = <&pm8058>;
-					interrupts = <39 1>;
-					allow-set-time;
-				};
-
-				vibrator@4a {
-					compatible = "qcom,pm8058-vib";
-					reg = <0x4a>;
-				};
-
-				pm8058_led48: led@48 {
-					compatible = "qcom,pm8058-keypad-led";
-					reg = <0x48>;
-					status = "disabled";
-				};
-
-				pm8058_led131: led@131 {
-					compatible = "qcom,pm8058-led";
-					reg = <0x131>;
-					status = "disabled";
-				};
-
-				pm8058_led132: led@132 {
-					compatible = "qcom,pm8058-led";
-					reg = <0x132>;
-					status = "disabled";
-				};
-
-				pm8058_led133: led@133 {
-					compatible = "qcom,pm8058-led";
-					reg = <0x133>;
-					status = "disabled";
-				};
-
-			};
 		};
 
 		l2cc: clock-controller@2082000 {
-- 
2.39.2


