Return-Path: <devicetree+bounces-212090-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 26DC8B41C54
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 12:54:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9E89D1A87F35
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 10:54:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81AD92FB626;
	Wed,  3 Sep 2025 10:52:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="m4sxe+Xq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C453A2FB610
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 10:52:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756896730; cv=none; b=ihdrCFjQqSOqSchN/PCFMjLLIhBD9nabvuqsyMsRz1MWUztBH4qIFVZIiMun+wwSvLLek5+BiHLMlpm9jCu3h8PnCgsxdfJWnMZO7csSb/cBw9MiHs7eUFh4PFVjKoFoWYTpy8ocLcmJrT/LkZoDF6zTv6oxGl19yO39fzKFoeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756896730; c=relaxed/simple;
	bh=adWF80ugC+EDwBzUUBDcIfxbXVrvKhBukeq7yh/1elw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=dvm5N6KDbdbUbnnDWzM3GDha7UWM+GfEOAIy1s0tADqMbcOftS6mQwGXMu0UPCeAA7HWPuAqf10bDLCE4zJhzl9L+6xBlKpy057dPxKmXKYXe9LcrCmYJflr7e/M57choe0vwfI0L2WsQl8NVT9U2b14jGnVS8y4gO9uWJpMVlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=m4sxe+Xq; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 583AUXpl023409
	for <devicetree@vger.kernel.org>; Wed, 3 Sep 2025 10:52:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dgbAUrFTyrgVN9+6rZcIArY1i8eYje+6+RRRMcTrAp0=; b=m4sxe+XqGgzcxtYP
	r3r8dOEH9MCtAYG6fzVtmqzniViOv6HqMjhnvyWqoEX7NcJaLftjmSuExc+kmeQc
	ru/rjVW+akG5hgI295q9dHM22Y0LUMKscLKQob0yxFLAl8QmS2mMa93AcKyTa+qZ
	7SVV6HujbFWA9G8gsed5n6CwDOS1UDk37VCg6h4we76QxZVZt6PB1pbouYqrB0jQ
	iqfWQXtEJysNWylwZZvnCFf3bn8eDSoAKm0KnnIl+e0ej8V83YkRxAnCp/qRE/iV
	KngysCVksSIAe2g/ccbbb6vFgwBRPe3KAQy9iyxzwBj94jwBV3bOveDuWKFC5gvD
	4wVJhw==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48upnpbh0j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 10:52:07 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-3276af4de80so9040506a91.1
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 03:52:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756896726; x=1757501526;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dgbAUrFTyrgVN9+6rZcIArY1i8eYje+6+RRRMcTrAp0=;
        b=B1hqIMKpp4eJmEKfIIMuXUyaqVL+yv85Xk30xd9msUWWOPwwrQBMptwuOfI8w1/keA
         rFwqL2F9FwmjF+4DKI8pooAYaB392h/uDvsVDOBT76Eqac7eDRRBdY0lpD0e0XoAsrAK
         X9ekVsW6p5grx7DLYtu5nxhOJuWZuV5yrIAx4z43MvMaOccY5kFM7CePUcmW2zlIuhIm
         cg5Dnf8BwOY/LTyllziml8fsqX2Vucyzxqu7wCrqTb+9/chXsSN+jINRnY6oM2hmOJy9
         qhfom0AlWPUOtrQ1tF52JAnETItPLWLMWl9KzogtLN67yjj03nOFNHCUvFh4YH6zjX1t
         DcHQ==
X-Forwarded-Encrypted: i=1; AJvYcCUULNqdDKzoXP9Gef88rYoSaCott3e12/CAL0taYpyKUCoga02UaVNa3Q9AfhKseKMtHZPzmHUfu/yA@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9In8xvtbZ4gcR8aljvaOJsI2bb3U5tdiUCxxKXMnp5YVbvCwy
	/XdVJM0QpBAPTXi5+JThL4eslPqBweraHbFJbLuNyCOdNahmBS2qzO6RBNlWgGv3v98oNr1YxOo
	OL+Z5kUB2RldofxsxMunb68ioIFIpeb2crqV+rBXSR3cvRisVvk2ip0LSVsaIy0ue
X-Gm-Gg: ASbGncuFraaLDUwIWGxdnGaSkECQFygWovdjkdFk1PS0g3humGFwcU1+L2Hea0ZRsfy
	o5Z2f9U5xY2PMY0Jq97bJVjayMWJCY3kVZiLVHt91xbN+gZ4MonEPhtkivBdL4yGiFIsKq0fl1l
	IWqaO+Esb7kppG6WVj0t5NTwL6OGIIDRYh/9C15mNsgmGfdCq4HVqmfF/KXG9a38yO5zU+EvZ/j
	1kytkS/ho4i8uWJFgFQ4g90Y8vGgV2eGKnCoia2i9+/vj6AF2ZdsJ366YVflh7ngZh4FOjP35eD
	k3zkzildja3NfkLfDdEcp6HDiI0m39al5JmNWN0WfDUouss1biliHPRI4naFnVJKAsSIburM0bW
	Hf6I4JZmUhSmsSBvUrAbqVIGHB9odR3rv6fQsNp8xA/UpPKOO9snMd2Re
X-Received: by 2002:a17:90b:5865:b0:328:a89:3dc8 with SMTP id 98e67ed59e1d1-3281543cc5emr19254859a91.14.1756896726475;
        Wed, 03 Sep 2025 03:52:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGtGvYlX8gAE+JcTZy031VmBvW4sOHPDohNqWmfr51tBQxFnmGCZiWsm2Od1jnlZ0X3zRBcHw==
X-Received: by 2002:a17:90b:5865:b0:328:a89:3dc8 with SMTP id 98e67ed59e1d1-3281543cc5emr19254825a91.14.1756896725994;
        Wed, 03 Sep 2025 03:52:05 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-329e3a6720asm4856888a91.11.2025.09.03.03.52.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Sep 2025 03:52:05 -0700 (PDT)
From: Fange Zhang <fange.zhang@oss.qualcomm.com>
Date: Wed, 03 Sep 2025 18:49:29 +0800
Subject: [PATCH v8 2/2] arm64: dts: qcom: Add display support for QCS615
 RIDE board
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250903-add-display-support-for-qcs615-platform-v8-2-7971c05d1262@oss.qualcomm.com>
References: <20250903-add-display-support-for-qcs615-platform-v8-0-7971c05d1262@oss.qualcomm.com>
In-Reply-To: <20250903-add-display-support-for-qcs615-platform-v8-0-7971c05d1262@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        xiangxu.yin@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Li Liu <li.liu@oss.qualcomm.com>,
        Fange Zhang <fange.zhang@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756896714; l=4362;
 i=fange.zhang@oss.qualcomm.com; s=20250714; h=from:subject:message-id;
 bh=iioqO7Yy62GZNJa0hLNm5uNqstxqzn757DeXBVJ7XU4=;
 b=UYL982xrh2KbMh0Uyj5T1eMaCvghDY9q0URqUzRenLwApB4Hhk4i16F1DE/0fdr9BkUbzC8ag
 HHmLio/93f3ANtqCBNi8SgIvsqQbxF/LVO2FjnNl/kzxla/q71SvoVR
X-Developer-Key: i=fange.zhang@oss.qualcomm.com; a=ed25519;
 pk=tn190A7bjF3/EyH7AYy/eNzPoS9lwXGznYamlMv6TE0=
X-Proofpoint-GUID: cixPRBHBwEdJEsyRRW6KC2fVOMVhNrUu
X-Authority-Analysis: v=2.4 cv=Jt/xrN4C c=1 sm=1 tr=0 ts=68b81dd7 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=M5YQ4GC9HTMohWAA_GoA:9
 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-ORIG-GUID: cixPRBHBwEdJEsyRRW6KC2fVOMVhNrUu
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAwMSBTYWx0ZWRfX1pZRvQHOLQuh
 KGuFsE5d+9GM5hPR8Uc9aggEAjFvkw1iSoXYG1wO3dZ1+/Y1cvDeVEE5sXiXT1AVS1FMAwcyH96
 MzwHfK8dLXPgE4lmeE+JQB9iNaE+UJSVqbGJhJJARu0Cb7d67H2fVboxxh1gQ3qxY+Yk1s8WyYl
 OK29fKEEoPpbhpDdlWoF+JNsZhzRFqv0solFB/1YUFCOBroqgrMIcTci3uVgsekpgJwDGJw73Dv
 Gx4bJA420yqyReIgFUljcIJ0cUo/k6nRrs5A90062EdJt/zjgxrI5mI9bgpzhxEGIWuAhAPt0em
 14VpwwDEhf/UpL9ATlOnjSIzQsPdAmVFBVe+GrWgE99fCkvJsOkw8JS7iceQaGxj4+3+5BKSReU
 OrycOY1x
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-03_06,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 clxscore=1015 bulkscore=0 impostorscore=0
 spamscore=0 phishscore=0 suspectscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508300001

From: Li Liu <li.liu@oss.qualcomm.com>

Add display MDSS and DSI configuration for QCS615 RIDE board.
QCS615 has a DP port, and DP support will be added in a later patch.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Li Liu <li.liu@oss.qualcomm.com>
Signed-off-by: Fange Zhang <fange.zhang@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/qcs615-ride.dts | 150 +++++++++++++++++++++++++++++++
 1 file changed, 150 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs615-ride.dts b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
index e663343df75d59481786192cde647017a83c4191..00f85e58c941f59335a4e53fcacd6779eaaf00c1 100644
--- a/arch/arm64/boot/dts/qcom/qcs615-ride.dts
+++ b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
@@ -39,6 +39,18 @@ xo_board_clk: xo-board-clk {
 		};
 	};
 
+	dp-dsi0-connector {
+		compatible = "dp-connector";
+		label = "DSI0";
+		type = "mini";
+
+		port {
+			dp_dsi0_connector_in: endpoint {
+				remote-endpoint = <&dsi2dp_bridge_out>;
+			};
+		};
+	};
+
 	vreg_conn_1p8: regulator-conn-1p8 {
 		compatible = "regulator-fixed";
 		regulator-name = "vreg_conn_1p8";
@@ -65,6 +77,64 @@ regulator-usb2-vbus {
 		regulator-always-on;
 	};
 
+	vreg_12p0: regulator-vreg-12p0 {
+		compatible = "regulator-fixed";
+		regulator-name = "VREG_12P0";
+
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <12000000>;
+		regulator-max-microvolt = <12000000>;
+	};
+
+	vreg_1p0: regulator-vreg-1p0 {
+		compatible = "regulator-fixed";
+		regulator-name = "VREG_1P0";
+
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <1000000>;
+		regulator-max-microvolt = <1000000>;
+
+		vin-supply = <&vreg_1p8>;
+	};
+
+	vreg_1p8: regulator-vreg-1p8 {
+		compatible = "regulator-fixed";
+		regulator-name = "VREG_1P8";
+
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+
+		vin-supply = <&vreg_5p0>;
+	};
+
+	vreg_3p0: regulator-vreg-3p0 {
+		compatible = "regulator-fixed";
+		regulator-name = "VREG_3P0";
+
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <3000000>;
+		regulator-max-microvolt = <3000000>;
+
+		vin-supply = <&vreg_12p0>;
+	};
+
+	vreg_5p0: regulator-vreg-5p0 {
+		compatible = "regulator-fixed";
+		regulator-name = "VREG_5P0";
+
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+
+		vin-supply = <&vreg_12p0>;
+	};
+
 	wcn6855-pmu {
 		compatible = "qcom,wcn6855-pmu";
 
@@ -288,6 +358,86 @@ vreg_l17a: ldo17 {
 	};
 };
 
+&i2c2 {
+	clock-frequency = <400000>;
+	status = "okay";
+
+	io_expander: pinctrl@3e {
+		compatible = "semtech,sx1509q";
+		reg = <0x3e>;
+		interrupts-extended = <&tlmm 58 IRQ_TYPE_EDGE_FALLING>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+		semtech,probe-reset;
+	};
+
+	i2c-mux@77 {
+		compatible = "nxp,pca9542";
+		reg = <0x77>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		i2c@0 {
+			reg = <0>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			bridge@58 {
+				compatible = "analogix,anx7625";
+				reg = <0x58>;
+				interrupts-extended = <&io_expander 0 IRQ_TYPE_EDGE_FALLING>;
+				enable-gpios = <&tlmm 4 GPIO_ACTIVE_HIGH>;
+				reset-gpios = <&tlmm 5 GPIO_ACTIVE_HIGH>;
+				vdd10-supply = <&vreg_1p0>;
+				vdd18-supply = <&vreg_1p8>;
+				vdd33-supply = <&vreg_3p0>;
+
+				ports {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					port@0 {
+						reg = <0>;
+
+						dsi2dp_bridge_in: endpoint {
+							remote-endpoint = <&mdss_dsi0_out>;
+						};
+					};
+
+					port@1 {
+						reg = <1>;
+
+						dsi2dp_bridge_out: endpoint {
+							remote-endpoint = <&dp_dsi0_connector_in>;
+						};
+					};
+				};
+			};
+		};
+	};
+};
+
+&mdss {
+	status = "okay";
+};
+
+&mdss_dsi0 {
+	vdda-supply = <&vreg_l11a>;
+	status = "okay";
+};
+
+&mdss_dsi0_out {
+	remote-endpoint = <&dsi2dp_bridge_in>;
+	data-lanes = <0 1 2 3>;
+};
+
+&mdss_dsi0_phy {
+	vcca-supply = <&vreg_l5a>;
+	status = "okay";
+};
+
 &pcie {
 	perst-gpios = <&tlmm 101 GPIO_ACTIVE_LOW>;
 	wake-gpios = <&tlmm 100 GPIO_ACTIVE_HIGH>;

-- 
2.34.1


