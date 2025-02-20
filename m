Return-Path: <devicetree+bounces-149070-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CEF45A3E2DF
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 18:45:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 85FD417AA78
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 17:43:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 561BB2144A3;
	Thu, 20 Feb 2025 17:42:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fIDZGBsK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23C2B213E6B
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 17:42:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740073378; cv=none; b=l1dkEb/KfKsjL8uJLkLGt7/24SQTqRBH3896wLHMhP2n2nsj3Ns4iWjAkRNkn9dVO9xSRhm0nYekvfx4qQCTwwJDQzcyKlzF0Jx2dDl/SNY62b+gZE1B9oZQOLQHdbAcsnc4rDaYe2jnjQ1Cnl27Naj0OhWCm86nYidVa9F419M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740073378; c=relaxed/simple;
	bh=H6psuYr/khWLTtcO49R4DEtibu326KaUeLgMAhahr0A=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=REKV1baBusgI8WJ0lUXADILLeCPEkMKosyCpU0GP+aqHFv+VQ8S4sFB2kMwfxZm2mEovl6GN2gcAcWowCFnvUaeNyonZbuxiV1aS3Cj8gRAvVZaPstan/aMMT9hVKVipeJ4vt4o0silhW6jr9fjUApTSZSahzTQGzUVX2cVm7/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fIDZGBsK; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-abb8045c3f3so157834566b.2
        for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 09:42:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740073374; x=1740678174; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xGkguD4WjPU3rvNjbgPApv3RRpOLC/FxxKjgFnpvQLg=;
        b=fIDZGBsKiOjsE3tzh1aUaqpDsgsI8dXDueej5/kFkND2Ktp2b/V7AZNdkf7nDBz1Ck
         Xx+4zWLsB645dC3qP5j1Fwn2preAWcdf2qUW+n+J/vjno8xV6RfXEgWmwWdr1PaP30nE
         gIyfuuouDEiKrUWSDxxyJcSvCrJcF91hByOgreUCaT13WlgMFa3eeqq8S8MvKeXzT9Z9
         Xbq+OM/mTczI2EMGrkrF+85nwsGL2+Or3iVdomBnYvXgl+dBrrEKQX3YMUH08jnXXUJt
         xnNBt9RM19KBj3B7a8n0JarfbLmps2lYP1DTuXiio+thXLBux9PSHB/O1TkZRzxV3elj
         m3zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740073374; x=1740678174;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xGkguD4WjPU3rvNjbgPApv3RRpOLC/FxxKjgFnpvQLg=;
        b=VtZGO/WRK6ZUE2bncSTG8K9IyhHtgA45sM4ArsuTyLsOITFFMkY8KRrKn2G2J8iXKb
         5ZIe5CdGLBNk1aEBe3OU++0fFXJt5CBQm0pEgxPom1kkHfJi1Hf1lVzy+UaaGG+3Po7v
         20UZikZ+j6RioyXpBv8DQr80WHZNkzOguGl+cgiSrrdTGULAsEZWeaVIdMotsPMpwnBU
         1TyoUx4hIMkmOvieHtnBIDFjo75BvG7e7AI9f/OK0q3nm6MhaJD2tcs0/XrXnV9dxtv7
         X4h5p3Kapt/EwxRG7u5Wk00ne3l6R86xAx4yNFwg3WE7FAt7yGBJvzAqIVXOoPJgPfWn
         pf1w==
X-Forwarded-Encrypted: i=1; AJvYcCW4IR86yg8XZcjIAfxuK0jf4KeVgA2hHmQXDHdnq8X9+262tZ6Mdn56mzpPBvQNIwshOIgO2J+mQjol@vger.kernel.org
X-Gm-Message-State: AOJu0YzQa4CspfBrN7whuND9lItwnElw4+p+6EctXT/Hh+GWacwcwa8Q
	bQqPPOdW+qRAQuQHneM19QweJhOanDQRM42NbwBoy2Rolufh7x0wm083ktc4bIc=
X-Gm-Gg: ASbGncsTYmX/tuEU6UNrxG+SYBw/uTUMLQ3rcErPxHX9vZ545jFq0gFMgCAMcEqNLW5
	GjI/Y8WGzUEoX0PqyNkfvCPTVQiYrnrJpfjzTMQdmhYRuPmFKxfec81RgoYnwVmODvZZupjkjWi
	sdx92ImFtvCWda/t62aKXGDwEoutR0I503qBS7ax4W8TDIUrwFSxO9m88HZhmTy1dKqk1nbL6jF
	C3fVQilOpYxRnrC1BC+XgnITS5f177y1rTH5PtYJNiVGukVd8kN1KE0Fw/HQTxsAuPCnMF3eh/A
	pSVBGc22Ccdd+A==
X-Google-Smtp-Source: AGHT+IEgAxZAVDKHz/YfBt4uHMzb8WwFtmIz0Uj9r/1bwdKE3HUZYFKVQsR2cf2enQNRmr8aG/dxXA==
X-Received: by 2002:a17:907:948c:b0:ab7:e3cb:ca81 with SMTP id a640c23a62f3a-abc09aac8cbmr26786466b.30.1740073374332;
        Thu, 20 Feb 2025 09:42:54 -0800 (PST)
Received: from [127.0.1.1] ([62.231.96.41])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abb8190d1b6sm1014496166b.36.2025.02.20.09.42.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Feb 2025 09:42:53 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Thu, 20 Feb 2025 19:42:32 +0200
Subject: [PATCH RESEND v5 3/4] arm64: dts: qcom: x1e80100-t14s: Describe
 the Parade PS8830 retimers
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250220-x1e80100-dts-crd-t14s-enable-typec-retimers-v5-3-380a3e0e7edc@linaro.org>
References: <20250220-x1e80100-dts-crd-t14s-enable-typec-retimers-v5-0-380a3e0e7edc@linaro.org>
In-Reply-To: <20250220-x1e80100-dts-crd-t14s-enable-typec-retimers-v5-0-380a3e0e7edc@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Johan Hovold <johan@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Rajendra Nayak <quic_rjendra@quicinc.com>, 
 Sibi Sankar <quic_sibis@quicinc.com>, 
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>, 
 Trilok Soni <quic_tsoni@quicinc.com>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=8894; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=H6psuYr/khWLTtcO49R4DEtibu326KaUeLgMAhahr0A=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBnt2mTKvIUixxOjaSyo4NIKICyJbUzQKFrujNVL
 HUjQCjQdNyJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZ7dpkwAKCRAbX0TJAJUV
 VqSDEADFJqTjvzeBfjpQFsMBcWQ/Wg56QhpXtC85QtVaUucIeYkNvsDgp+yvxloKha4NKA5W5O4
 campUh/TXG3etMg38sJ9xXaYBOkcnLtHmAfxp43uCP9FgsDTWFhUJ5oKcgv4Qkt8etu43Aaet6k
 2v4VrOAUmPr1qemGqh6Mm1YZd4P80HOKcYnsdcmbjYkQjGlV5zfs64SZRuPy/74P1Fhk+vpPZ3o
 2JUfh6yIumT8vnZH73Q6GH+QAWSGvI0vZIL4jhTvzRyDD1e9Nymz+dPTH0qUuiJ7KYDLtwvhhts
 L+aPjrN+njN6YKh3hpOAlTrTU382XyWNrxkGQg+byYvPn0Vftb9UrZ12rAqMo961S9uBlnrXUf+
 b/oIduo7aMwCpKyetqe8lleeMuJwoCbuBxnKPVYVJ7rI14CNi1Ez4J3A/JE+S3UFBt2g9Px5hwd
 zXT+SvC5N3zYnUdskTISAM1JS2rc/Iw87j+mtuHFtioMCfBEX3g4jwZOH0dBuOkvvNOSNbvdoK2
 Uf/jP4npogqfPx0mRQu5ICBiUYysuf/x6CEaUYAqb35/asmLLLYhp5AnXVJ7Kytm8JdZEzzcPGo
 B7DEijxw0r1KKOsGRFNrJGzzCnLPJ+70eDacSxwCeoshobCAuK2bBRea1gpZJaMceZGhbfWyDGO
 cthXGeErQFa1Lbg==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

The Lenovo ThinkPad T14s Gen6 laptop comes with 3 Parade PS8830 retimers,
one for each Type-C port. These handle the orientation and altmode
switching and are controlled over I2C. In the connection chain, they sit
between the USB/DisplayPort combo PHY and the Type-C connector.

Describe the retimers and all gpio controlled voltage regulators used by
each retimer. Also, modify the pmic glink graph to include the retimers in
between the SuperSpeed/Sideband in endpoints and the QMP PHY out
endpoints.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 .../dts/qcom/x1e78100-lenovo-thinkpad-t14s.dts     | 305 ++++++++++++++++++++-
 1 file changed, 301 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dts b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dts
index b2c2347f54fa65f9355f0d7c008119e95bb64fb2..8949afc2f10e8fe912ac118335f7dc471566cf8d 100644
--- a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dts
+++ b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dts
@@ -92,7 +92,15 @@ port@1 {
 					reg = <1>;
 
 					pmic_glink_ss0_ss_in: endpoint {
-						remote-endpoint = <&usb_1_ss0_qmpphy_out>;
+						remote-endpoint = <&retimer_ss0_ss_out>;
+					};
+				};
+
+				port@2 {
+					reg = <2>;
+
+					pmic_glink_ss0_con_sbu_in: endpoint {
+						remote-endpoint = <&retimer_ss0_con_sbu_out>;
 					};
 				};
 			};
@@ -121,7 +129,15 @@ port@1 {
 					reg = <1>;
 
 					pmic_glink_ss1_ss_in: endpoint {
-						remote-endpoint = <&usb_1_ss1_qmpphy_out>;
+						remote-endpoint = <&retimer_ss1_ss_out>;
+					};
+				};
+
+				port@2 {
+					reg = <2>;
+
+					pmic_glink_ss1_con_sbu_in: endpoint {
+						remote-endpoint = <&retimer_ss1_con_sbu_out>;
 					};
 				};
 			};
@@ -169,6 +185,102 @@ vreg_nvme: regulator-nvme {
 		regulator-boot-on;
 	};
 
+	vreg_rtmr0_1p15: regulator-rtmr0-1p15 {
+		compatible = "regulator-fixed";
+
+		regulator-name = "VREG_RTMR0_1P15";
+		regulator-min-microvolt = <1150000>;
+		regulator-max-microvolt = <1150000>;
+
+		gpio = <&pmc8380_5_gpios 8 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+
+		pinctrl-0 = <&usb0_pwr_1p15_reg_en>;
+		pinctrl-names = "default";
+
+		regulator-boot-on;
+	};
+
+	vreg_rtmr0_1p8: regulator-rtmr0-1p8 {
+		compatible = "regulator-fixed";
+
+		regulator-name = "VREG_RTMR0_1P8";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+
+		gpio = <&pm8550ve_9_gpios 8 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+
+		pinctrl-0 = <&usb0_1p8_reg_en>;
+		pinctrl-names = "default";
+
+		regulator-boot-on;
+	};
+
+	vreg_rtmr0_3p3: regulator-rtmr0-3p3 {
+		compatible = "regulator-fixed";
+
+		regulator-name = "VREG_RTMR0_3P3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+
+		gpio = <&pm8550_gpios 11 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+
+		pinctrl-0 = <&usb0_3p3_reg_en>;
+		pinctrl-names = "default";
+
+		regulator-boot-on;
+	};
+
+	vreg_rtmr1_1p15: regulator-rtmr1-1p15 {
+		compatible = "regulator-fixed";
+
+		regulator-name = "VREG_RTMR1_1P15";
+		regulator-min-microvolt = <1150000>;
+		regulator-max-microvolt = <1150000>;
+
+		gpio = <&tlmm 188 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+
+		pinctrl-0 = <&usb1_pwr_1p15_reg_en>;
+		pinctrl-names = "default";
+
+		regulator-boot-on;
+	};
+
+	vreg_rtmr1_1p8: regulator-rtmr1-1p8 {
+		compatible = "regulator-fixed";
+
+		regulator-name = "VREG_RTMR1_1P8";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+
+		gpio = <&tlmm 175 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+
+		pinctrl-0 = <&usb1_pwr_1p8_reg_en>;
+		pinctrl-names = "default";
+
+		regulator-boot-on;
+	};
+
+	vreg_rtmr1_3p3: regulator-rtmr1-3p3 {
+		compatible = "regulator-fixed";
+
+		regulator-name = "VREG_RTMR1_3P3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+
+		gpio = <&tlmm 186 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+
+		pinctrl-0 = <&usb1_pwr_3p3_reg_en>;
+		pinctrl-names = "default";
+
+		regulator-boot-on;
+	};
+
 	vph_pwr: regulator-vph-pwr {
 		compatible = "regulator-fixed";
 
@@ -607,6 +719,63 @@ keyboard@3a {
 	};
 };
 
+&i2c3 {
+	clock-frequency = <400000>;
+
+	status = "okay";
+
+	typec-mux@8 {
+		compatible = "parade,ps8830";
+		reg = <0x08>;
+
+		clocks = <&rpmhcc RPMH_RF_CLK3>;
+
+		vdd-supply = <&vreg_rtmr0_1p15>;
+		vdd33-supply = <&vreg_rtmr0_3p3>;
+		vdd33-cap-supply = <&vreg_rtmr0_3p3>;
+		vddar-supply = <&vreg_rtmr0_1p15>;
+		vddat-supply = <&vreg_rtmr0_1p15>;
+		vddio-supply = <&vreg_rtmr0_1p8>;
+
+		reset-gpios = <&pm8550_gpios 10 GPIO_ACTIVE_LOW>;
+
+		pinctrl-0 = <&rtmr0_default>;
+		pinctrl-names = "default";
+
+		orientation-switch;
+		retimer-switch;
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+
+				retimer_ss0_ss_out: endpoint {
+					remote-endpoint = <&pmic_glink_ss0_ss_in>;
+				};
+			};
+
+			port@1 {
+				reg = <1>;
+
+				retimer_ss0_ss_in: endpoint {
+					remote-endpoint = <&usb_1_ss0_qmpphy_out>;
+				};
+			};
+
+			port@2 {
+				reg = <2>;
+
+				retimer_ss0_con_sbu_out: endpoint {
+					remote-endpoint = <&pmic_glink_ss0_con_sbu_in>;
+				};
+			};
+		};
+	};
+};
+
 &i2c5 {
 	clock-frequency = <400000>;
 
@@ -655,6 +824,64 @@ eusb6_repeater: redriver@4f {
 	};
 };
 
+&i2c7 {
+	clock-frequency = <400000>;
+
+	status = "okay";
+
+	typec-mux@8 {
+		compatible = "parade,ps8830";
+		reg = <0x8>;
+
+		clocks = <&rpmhcc RPMH_RF_CLK4>;
+
+		vdd-supply = <&vreg_rtmr1_1p15>;
+		vdd33-supply = <&vreg_rtmr1_3p3>;
+		vdd33-cap-supply = <&vreg_rtmr1_3p3>;
+		vddar-supply = <&vreg_rtmr1_1p15>;
+		vddat-supply = <&vreg_rtmr1_1p15>;
+		vddio-supply = <&vreg_rtmr1_1p8>;
+
+		reset-gpios = <&tlmm 176 GPIO_ACTIVE_LOW>;
+
+		pinctrl-0 = <&rtmr1_default>;
+		pinctrl-names = "default";
+
+		retimer-switch;
+		orientation-switch;
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+
+				retimer_ss1_ss_out: endpoint {
+					remote-endpoint = <&pmic_glink_ss1_ss_in>;
+				};
+			};
+
+			port@1 {
+				reg = <1>;
+
+				retimer_ss1_ss_in: endpoint {
+					remote-endpoint = <&usb_1_ss1_qmpphy_out>;
+				};
+			};
+
+			port@2 {
+				reg = <2>;
+
+				retimer_ss1_con_sbu_out: endpoint {
+					remote-endpoint = <&pmic_glink_ss1_con_sbu_in>;
+				};
+			};
+
+		};
+	};
+};
+
 &i2c8 {
 	clock-frequency = <400000>;
 
@@ -777,6 +1004,37 @@ &pcie6a_phy {
 	status = "okay";
 };
 
+&pm8550_gpios {
+	rtmr0_default: rtmr0-reset-n-active-state {
+		pins = "gpio10";
+		function = "normal";
+		power-source = <1>; /* 1.8V */
+		bias-disable;
+		input-disable;
+		output-enable;
+	};
+
+	usb0_3p3_reg_en: usb0-3p3-reg-en-state {
+		pins = "gpio11";
+		function = "normal";
+		power-source = <1>; /* 1.8V */
+		bias-disable;
+		input-disable;
+		output-enable;
+	};
+};
+
+&pm8550ve_9_gpios {
+	usb0_1p8_reg_en: usb0-1p8-reg-en-state {
+		pins = "gpio8";
+		function = "normal";
+		power-source = <1>; /* 1.8V */
+		bias-disable;
+		input-disable;
+		output-enable;
+	};
+};
+
 &pmc8380_3_gpios {
 	edp_bl_en: edp-bl-en-state {
 		pins = "gpio4";
@@ -787,6 +1045,17 @@ edp_bl_en: edp-bl-en-state {
 	};
 };
 
+&pmc8380_5_gpios {
+	usb0_pwr_1p15_reg_en: usb0-pwr-1p15-reg-en-state {
+		pins = "gpio8";
+		function = "normal";
+		power-source = <1>; /* 1.8V */
+		bias-disable;
+		input-disable;
+		output-enable;
+	};
+};
+
 &qupv3_0 {
 	status = "okay";
 };
@@ -1007,6 +1276,34 @@ wake-n-pins {
 		};
 	};
 
+	rtmr1_default: rtmr1-reset-n-active-state {
+		pins = "gpio176";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-disable;
+	};
+
+	usb1_pwr_1p15_reg_en: usb1-pwr-1p15-reg-en-state {
+		pins = "gpio188";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-disable;
+	};
+
+	usb1_pwr_1p8_reg_en: usb1-pwr-1p8-reg-en-state {
+		pins = "gpio175";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-disable;
+	};
+
+	usb1_pwr_3p3_reg_en: usb1-pwr-3p3-reg-en-state {
+		pins = "gpio186";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-disable;
+	};
+
 	wcd_default: wcd-reset-n-active-state {
 		pins = "gpio191";
 		function = "gpio";
@@ -1045,7 +1342,7 @@ &usb_1_ss0_dwc3_hs {
 };
 
 &usb_1_ss0_qmpphy_out {
-	remote-endpoint = <&pmic_glink_ss0_ss_in>;
+	remote-endpoint = <&retimer_ss0_ss_in>;
 };
 
 &usb_1_ss1_hsphy {
@@ -1077,7 +1374,7 @@ &usb_1_ss1_dwc3_hs {
 };
 
 &usb_1_ss1_qmpphy_out {
-	remote-endpoint = <&pmic_glink_ss1_ss_in>;
+	remote-endpoint = <&retimer_ss1_ss_in>;
 };
 
 &usb_2 {

-- 
2.34.1


