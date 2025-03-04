Return-Path: <devicetree+bounces-153768-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FB14A4DBA0
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 12:00:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 44B6E188F5FE
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 10:59:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41583202982;
	Tue,  4 Mar 2025 10:58:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KvITfh15"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBDC61FF1A6
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 10:58:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741085892; cv=none; b=XIXyPq4NTq+HEDDMBFp6+Q90y1ERtQuL3sIVVxmQnJfIVpXPO+fcwCS/R1qAzO92Tj4O/Wlz8R/83FpSRL10pAd6vtv5D3+iN79VRJxrT9EB3Cz82nHO2+XrSSeVh42t5odlIoCUZaZDx6gO8DdtFRUwPP6smwQv1MkasKtxNa0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741085892; c=relaxed/simple;
	bh=At2/cH9HxDTB9wsQQvfRedTu4ysEEOazKpTa96o+66Y=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=FDdcj522nB3XiAP2B6oOQeVecQ6S/LhqMrGgS4J2MDOLHA4g2vRBSGHOKYJAHlaoP1S80LUFTzca3TFho7aZgmPZ23IjXtNBA9OXvKLW4pebA+SEDFumfZNrY2n8jP2/phbRFnDGlaumNWQJmAWp4rD5p9J/bw/zrK0AOSzF9gM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KvITfh15; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-5e5050d19e9so6638847a12.3
        for <devicetree@vger.kernel.org>; Tue, 04 Mar 2025 02:58:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741085888; x=1741690688; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PeWAqmXYZb/2NILKb29w6HH1tC2iqhJM7ZuCEYgwg/I=;
        b=KvITfh15vuQ6Mv4L0E/QsWgTKrkTLsQllZ1TVEfTL4GWJj4q75TEefv8v5p6eVQstN
         xMVa6ixZx0ZuGtmBRcs9hAlebRqz5Evtqz9xrR58X5YiRayze3MYcFZUFtM9JCd+zXkd
         7rWaafpnCYhTm2UQ8lQwxAJqe6QnFr4z1JzCgS3SDYU4liE3tMK3w5BwlxCXV0N9QXj1
         fC5JfCNcAAPcG9/02/Xm2PZAMO6mN+0YdiTC6aAls7v6+4uCZyMzSOZGBlD31pr5vr1Z
         cFqgXH+DBgcgCTU/4Y7iVbTw/KmBCqWz/M/NDK3zzmL5Jx7yviuu5z0JHc3RBcAkFY8L
         XMYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741085888; x=1741690688;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PeWAqmXYZb/2NILKb29w6HH1tC2iqhJM7ZuCEYgwg/I=;
        b=o29Rb3XRvpoFC05cjvO35TN2XzgJQ2tAV9FzW7VbMVbxJr9Ssd8x0whNlGvNFTOtfP
         jxTQWmXSIwq7cgKEZ8f+K2umV8W0DafqJ5YfADcdv57BNgZmm4gGv21AvcI1pcG9njLR
         qSnDisvCoZu6hCZrQjnd4WbnqB+mBktQSdT/sjsOvU/7VDI2QsviSh8HIurPD/RT+6Dt
         8Om4pdyrtWzSIWohYh7NvNH+smGQJuFk9M7T8D2/XfLXS7FX12/RADK7kZrlqm4XfRhC
         zNptQslO2I8f3ZvSMZLEjKzUeKBMS8jdSq+437cGrhaeNEs+SkCArOo7bEoVBJUxczR9
         6gzg==
X-Forwarded-Encrypted: i=1; AJvYcCVZgYZmhLPq/JKvvngFSz5BwvHtWrkYlyFzMt6hHw/dlxt4zdV9MWbPEPXY51ECtAk/l4Pi6IPlxl8Q@vger.kernel.org
X-Gm-Message-State: AOJu0YwhSD5CqDCJrJQ9qWEmsD9Oe+m86CzB5QTRxFRbPU93SPtMVOxe
	kkmxj3+ag2le17jexVDT81NYmAxlEEFKN1/imCZf6zEECUYygDOELmU777R9vPc=
X-Gm-Gg: ASbGnctpDWsNt/lVAUEPwFr39sOxmDQau9PHXs9VGom7fZgTTdwQvwcz029h9g7JY4k
	0i7Ui/jdiWuOHfBlGgaCvEuIiHBtU8DqndXV6cfY9Y/phczRQCFy/Fl1X9LM0Ypi378yrUEcHNh
	9sIcJLrzjvGpDO9nnArVDhtksC8FO++B64dO/mBdZZPKHFRdULNqpnJXveDAG8thsSTvdheVbIy
	IOWYHbvcXmHNsCeMeoZqVfrVsXuW7/JT3KklBL3VEuP0stafZ9lsBilG1XuHzEW/7qv7wZbMx2d
	WsbzEILn6O8f4UFMAdSa9Xk6JU1ctRX/0OtF0XEC5AY=
X-Google-Smtp-Source: AGHT+IEuwnmzGIWA9M2OGouJH6rUzzRpKTXYrGxnVdhr/VjhWeloIv8HXKUriRkcVkiBFcrAnvBj1Q==
X-Received: by 2002:a17:907:c908:b0:abf:40a2:40c5 with SMTP id a640c23a62f3a-abf40a2450fmr1218217366b.27.1741085888180;
        Tue, 04 Mar 2025 02:58:08 -0800 (PST)
Received: from [127.0.1.1] ([62.231.96.41])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac1fde3f585sm38973266b.53.2025.03.04.02.58.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Mar 2025 02:58:07 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Tue, 04 Mar 2025 12:57:46 +0200
Subject: [PATCH v6 1/4] arm64: dts: qcom: x1e80100-crd: Describe the Parade
 PS8830 retimers
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250304-x1e80100-dts-crd-t14s-enable-typec-retimers-v6-1-e5a49fae4e94@linaro.org>
References: <20250304-x1e80100-dts-crd-t14s-enable-typec-retimers-v6-0-e5a49fae4e94@linaro.org>
In-Reply-To: <20250304-x1e80100-dts-crd-t14s-enable-typec-retimers-v6-0-e5a49fae4e94@linaro.org>
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
 Abel Vesa <abel.vesa@linaro.org>, Johan Hovold <johan+linaro@kernel.org>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=12471; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=At2/cH9HxDTB9wsQQvfRedTu4ysEEOazKpTa96o+66Y=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBnxty46SmDA5xFiMldvGzW2Vbc9FubKeLZKIr+v
 5XGXYBC/X+JAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZ8bcuAAKCRAbX0TJAJUV
 VsQTD/wIi0aGJGpI9L4dakqEIAC5JK5HBDTjDZDA56j7CKsR8tF5Z/tM1H4wDpreCI2od6hRhFI
 mp9c3vODlKb16L6izHx4nFXt1JrzcRvgWqg4wwx9IkridrGNaFAQcj9AH0agGNz4+bHycNkkeZk
 2fbJjkBqwR8XVmcqu/gHSa7pfdy25ON0ZyytpzpUk8Yrneuh6mCO/jYBqXL0c94Op7clRgVUOqH
 ycagQAoPSobfgrBK5cq+sb1XtgHPNW6PK/8+VqtPlE4EHIpHpKDE9oZGgmf6K1olgMDNpFfdW/L
 Lp75K2MzCKZ38rlrGyaguHxiUPnxKHjLG5i1in3aUukT52f6SukWPr/W/YdytOgJVKALQttRpQH
 0V8gj/wpO8lSixcJ60FREyBJk7H5lHGB07qLLNGFizdGKdbi86TixeU7JTyTkuHvZH+xwxfR81m
 4ct3yJmycCf461JKYH7BEgni+xeSm/YatpPC3SjbNNNJ3zJ0/XOHFDKhT0CeMsnALObKu+z2xx8
 jFdCWEazPJ+jkZ3zQ0HJ4ePDFb6uANOryy/otST+/utrp1UQO83lE4aIRGva1jFCcAY1ISbR63J
 6Me+sYx583FbwSrYF3AgCe4aVW9nzEkAksF3JSInEZKSC3WXQCSvJ8X6cd7ZkBM9s+aKqdwCcto
 m9xaEbe1laQGSFQ==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

The X Elite CRD board comes with 3 Parade PS8830 retimers, one for each
Type-C port. These handle the orientation and altmode switching and are
controlled over I2C. In the connection chain, they sit between the
USB/DisplayPort combo PHY and the Type-C connector.

Describe the retimers and all gpio controlled voltage regulators used by
each retimer. Also, modify the pmic glink graph to include the retimers in
between the SuperSpeed/Sideband in endpoints and the QMP PHY out endpoints.

Reviewed-by: Johan Hovold <johan+linaro@kernel.org>
Tested-by: Johan Hovold <johan+linaro@kernel.org>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1-crd.dtsi | 449 ++++++++++++++++++++++++++++++++++-
 1 file changed, 443 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/x1-crd.dtsi b/arch/arm64/boot/dts/qcom/x1-crd.dtsi
index 296b41409ad1797d1da837c2674d6048932ff8ee..34e203fb7a4bfd781cf268429b3e4174e8d19bf9 100644
--- a/arch/arm64/boot/dts/qcom/x1-crd.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1-crd.dtsi
@@ -97,7 +97,15 @@ port@1 {
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
@@ -126,7 +134,15 @@ port@1 {
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
@@ -155,7 +171,15 @@ port@1 {
 					reg = <1>;
 
 					pmic_glink_ss2_ss_in: endpoint {
-						remote-endpoint = <&usb_1_ss2_qmpphy_out>;
+						remote-endpoint = <&retimer_ss2_ss_out>;
+					};
+				};
+
+				port@2 {
+					reg = <2>;
+
+					pmic_glink_ss2_con_sbu_in: endpoint {
+						remote-endpoint = <&retimer_ss2_con_sbu_out>;
 					};
 				};
 			};
@@ -308,6 +332,150 @@ vreg_nvme: regulator-nvme {
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
+	vreg_rtmr2_1p15: regulator-rtmr2-1p15 {
+		compatible = "regulator-fixed";
+
+		regulator-name = "VREG_RTMR2_1P15";
+		regulator-min-microvolt = <1150000>;
+		regulator-max-microvolt = <1150000>;
+
+		gpio = <&tlmm 189 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+
+		pinctrl-0 = <&usb2_pwr_1p15_reg_en>;
+		pinctrl-names = "default";
+
+		regulator-boot-on;
+	};
+
+	vreg_rtmr2_1p8: regulator-rtmr2-1p8 {
+		compatible = "regulator-fixed";
+
+		regulator-name = "VREG_RTMR2_1P8";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+
+		gpio = <&tlmm 126 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+
+		pinctrl-0 = <&usb2_pwr_1p8_reg_en>;
+		pinctrl-names = "default";
+
+		regulator-boot-on;
+	};
+
+	vreg_rtmr2_3p3: regulator-rtmr2-3p3 {
+		compatible = "regulator-fixed";
+
+		regulator-name = "VREG_RTMR2_3P3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+
+		gpio = <&tlmm 187 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+
+		pinctrl-0 = <&usb2_pwr_3p3_reg_en>;
+		pinctrl-names = "default";
+
+		regulator-boot-on;
+	};
+
 	vph_pwr: regulator-vph-pwr {
 		compatible = "regulator-fixed";
 
@@ -728,6 +896,177 @@ keyboard@3a {
 	};
 };
 
+&i2c1 {
+	clock-frequency = <400000>;
+
+	status = "okay";
+
+	typec-mux@8 {
+		compatible = "parade,ps8830";
+		reg = <0x08>;
+
+		clocks = <&rpmhcc RPMH_RF_CLK5>;
+
+		vdd-supply = <&vreg_rtmr2_1p15>;
+		vdd33-supply = <&vreg_rtmr2_3p3>;
+		vdd33-cap-supply = <&vreg_rtmr2_3p3>;
+		vddar-supply = <&vreg_rtmr2_1p15>;
+		vddat-supply = <&vreg_rtmr2_1p15>;
+		vddio-supply = <&vreg_rtmr2_1p8>;
+
+		reset-gpios = <&tlmm 185 GPIO_ACTIVE_LOW>;
+
+		pinctrl-0 = <&rtmr2_default>;
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
+				retimer_ss2_ss_out: endpoint {
+					remote-endpoint = <&pmic_glink_ss2_ss_in>;
+				};
+			};
+
+			port@1 {
+				reg = <1>;
+
+				retimer_ss2_ss_in: endpoint {
+					remote-endpoint = <&usb_1_ss2_qmpphy_out>;
+				};
+			};
+
+			port@2 {
+				reg = <2>;
+
+				retimer_ss2_con_sbu_out: endpoint {
+					remote-endpoint = <&pmic_glink_ss2_con_sbu_in>;
+				};
+			};
+		};
+	};
+};
+
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
+		};
+	};
+};
+
 &i2c8 {
 	clock-frequency = <400000>;
 
@@ -876,6 +1215,26 @@ &pcie6a_phy {
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
 &pm8550ve_8_gpios {
 	misc_3p3_reg_en: misc-3p3-reg-en-state {
 		pins = "gpio6";
@@ -889,6 +1248,17 @@ misc_3p3_reg_en: misc-3p3-reg-en-state {
 	};
 };
 
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
@@ -899,6 +1269,17 @@ edp_bl_en: edp-bl-en-state {
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
@@ -1136,6 +1517,20 @@ wake-n-pins {
 		};
 	};
 
+	rtmr1_default: rtmr1-reset-n-active-state {
+		pins = "gpio176";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-disable;
+	};
+
+	rtmr2_default: rtmr2-reset-n-active-state {
+		pins = "gpio185";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-disable;
+	};
+
 	tpad_default: tpad-default-state {
 		pins = "gpio3";
 		function = "gpio";
@@ -1157,6 +1552,48 @@ reset-n-pins {
 		};
 	};
 
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
+	usb2_pwr_1p15_reg_en: usb2-pwr-1p15-reg-en-state {
+		pins = "gpio189";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-disable;
+	};
+
+	usb2_pwr_1p8_reg_en: usb2-pwr-1p8-reg-en-state {
+		pins = "gpio126";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-disable;
+	};
+
+	usb2_pwr_3p3_reg_en: usb2-pwr-3p3-reg-en-state {
+		pins = "gpio187";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-disable;
+	};
+
 	wcd_default: wcd-reset-n-active-state {
 		pins = "gpio191";
 		function = "gpio";
@@ -1207,7 +1644,7 @@ &usb_1_ss0_dwc3_hs {
 };
 
 &usb_1_ss0_qmpphy_out {
-	remote-endpoint = <&pmic_glink_ss0_ss_in>;
+	remote-endpoint = <&retimer_ss0_ss_in>;
 };
 
 &usb_1_ss1_hsphy {
@@ -1239,7 +1676,7 @@ &usb_1_ss1_dwc3_hs {
 };
 
 &usb_1_ss1_qmpphy_out {
-	remote-endpoint = <&pmic_glink_ss1_ss_in>;
+	remote-endpoint = <&retimer_ss1_ss_in>;
 };
 
 &usb_1_ss2_hsphy {
@@ -1271,5 +1708,5 @@ &usb_1_ss2_dwc3_hs {
 };
 
 &usb_1_ss2_qmpphy_out {
-	remote-endpoint = <&pmic_glink_ss2_ss_in>;
+	remote-endpoint = <&retimer_ss2_ss_in>;
 };

-- 
2.34.1


