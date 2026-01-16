Return-Path: <devicetree+bounces-256015-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id A32AED2FB5E
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 11:42:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 64E45300B37D
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 10:41:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1447361664;
	Fri, 16 Jan 2026 10:41:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jWIQMqI8";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="a/R27Bn0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FBD535FF46
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 10:41:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768560115; cv=none; b=rjrWT0vLuHapJs+e0e5kwpp1UcmBwBXktqejBBTaE69fwpDUCLHnh7C2Cf3bihKKBrvDWmH+iPf+KjcVpDkVLP6GCbOhPE/wai8kteyVAl2TjHwCGE4/nNJxSZQ4HJk3MljGBhvJTk6vxlWUtbwEYd1Cf1kHvyvuJW7HnvpMn6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768560115; c=relaxed/simple;
	bh=6WWH0BxtbsHAJF5KlpW3HNSHjXXaRuCPbBD3fB0j6EU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Gg2GQkMoMZOOx6NfP8pXOjgtZEny3dI7UElJlw/UrrF1eX4SvJtQ9gzUfifHzo+PWKSNnqfnA/Prm406jJQ2RRDNYn13vCv0HTwrd8G3vNDIykfkmhsE5fkiTMQgbtKFU2pxT936NrS0gT5gsoq4k1BlyBIHM3nhqTA2C50zmcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jWIQMqI8; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=a/R27Bn0; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60G7e7va3583180
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 10:41:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=lTyxVB+XCtW
	5KdnFDG/vprmLeOONz4Jr3SwhGCI7sz0=; b=jWIQMqI8Y7tJ7GT/hrIH0iZB+ug
	4pfvsv2WGPZOzZy/zs5aZGv8PYjmfSeMYgrAXFurOOy07CBVOh/hhrqbFn7u2o0+
	bBboYk0Qdx8BwOipPhOCJjMjgsGmlYRU631UlsHHKgVpcYZw8kFm3qJHrtjMvb9s
	+2W3WKOUdwdvEdwQju43E8qLAGbhMTBBGL3Oo3vEWsZJMuY6vikec6jRZRwRZp2L
	K0fFHhFn2O/rSs19ts57Kj/0AZcfzmPqi6pxXrxsvmG26oaoeNKCf/zEmdHs1qpl
	paq4Ad6eM5NFKD7/3iFnySw8XKEWlgZiv8HGOmtjdZBRWW3xtuz8p8LfgxQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bq9aysuh3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 10:41:50 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2a0dabc192eso19890575ad.0
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 02:41:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768560110; x=1769164910; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lTyxVB+XCtW5KdnFDG/vprmLeOONz4Jr3SwhGCI7sz0=;
        b=a/R27Bn0n1+wcJmOp5QQZGokaX2me6kQIAC9OmM0IvMLwWmhqEu4oyEuSXKFpkDeWu
         3Le4C7MYitoo5PxpUOi24bkaDpWlO7grWPG3qnkTMA9nJ+u8YLG/ychNIbZUTbNXfpyT
         ikEmfsrBdo/hGLCL7LtHDyUHZ+ZvCXKdu0jIL85XGixJYIj5OoJ4BfAGqAVxuF4x+uuf
         pfSOvayCFiKgkYKsoGJqXcfe1nsTzDs3zsC+pAKlSXQSM5cTYPAP9LhGIj/0mVxEWW5O
         DbGn+R+pL8qVJ4dJp1vZwD6JpP7Lkejys15HOfS6a24ZH+jN5LW9oDJBnGf0tXwFXRUe
         iQeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768560110; x=1769164910;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=lTyxVB+XCtW5KdnFDG/vprmLeOONz4Jr3SwhGCI7sz0=;
        b=PYf+aTAPsr6vuZ2UfSQ9qCMvW8gse3LwLvDXMZ5P/EoIkrJsLnWtMGobD/FqPdgKEM
         QFk8Rsjs80ph2iXZ3wxB/p837GT2oihpgPuP/3IXr0cH+DME/uhjZfsSgOmGSk+wI+Cf
         z9uwkxKelJxqUUJBQCWDceKQm9EWcrZB9VSJSJQwJATfuP5mb2Eleh1ipZMycikVFRlQ
         BDijdniyZp0UV0NWveh0M3261bUSlKGWBU0dfGqFC/Juavm3C+q4Re6tyD4borrHP7Wr
         4jd7NHgUU+jsLbgf50Ccjc6NsIGmbqrhIaDNMaTajN55zCiS6G+6lUgKme4lY5zCry6e
         GZ9Q==
X-Forwarded-Encrypted: i=1; AJvYcCVs4a5UdB4s4QzJYQSc5DzJnspZpcorjZXk8I1Ygg5PBc3KQLHwZAgxjsKbHYqSPRpcT0MUBk1cv19p@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1UDXcm1UhpnuJVjgmEcNwX4cWLOVsETWm6ZiaNXYbo7eipzRg
	wMQK8yhub+5TWDue9QPVXLECUOV8PjsHhTz9ea24L26asnQHNHjnQEmzcfJW18C3KdHUodUslm0
	TaM4hJPyXxOxyFwO+7ROOpclJWghwbM01LHAefIxUuGzQMcdKtyBXlv2n7DHKkxpl
X-Gm-Gg: AY/fxX52gB4jcau7SVKINAMxZU0DsFoRO7RQlHyVopSr4jn5EWiaS85dwB0Tx8wuFEI
	JcibgSNeI4CNe+14wApri+JuD9KuyL2cCibsCo4vY0fU12pK+Uxd1dGhUJJCBAqWuMEODjgA8kZ
	X6NV87kAi1Xm9ZScCKlx+2vMG/GxwwFf/ZJr0CuCq0mSHID05kU0uolauCMyPyobaXFRGlZYAru
	QrxD4MNmxNWELNcf9J6XvAct7buOLvYx1Ch3Q+lnK+3ZwXs3hkLsZlSAQU3/Ugfus5IplZud3EQ
	AmbT+B8Wx4AyuaqTex90oRpBR7rZwAUX/b5Gtg/WJAXV3s91R/KXwdexCl3Y5ARE0uX6YXex8ok
	GqI/NyC/hKVXiuFiQF3GG8u5zUbO3hoi2mqUbKgQHjoZEYyty9GQ+PW22+oPeDjG9jdchl1zPkE
	U=
X-Received: by 2002:a17:902:da48:b0:2a0:9d0f:b1ed with SMTP id d9443c01a7336-2a7188be6f2mr23867735ad.24.1768560109646;
        Fri, 16 Jan 2026 02:41:49 -0800 (PST)
X-Received: by 2002:a17:902:da48:b0:2a0:9d0f:b1ed with SMTP id d9443c01a7336-2a7188be6f2mr23867475ad.24.1768560109175;
        Fri, 16 Jan 2026 02:41:49 -0800 (PST)
Received: from yijiyang-gv.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a7190aa340sm18009215ad.3.2026.01.16.02.41.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 02:41:48 -0800 (PST)
From: YijieYang <yijie.yang@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, yijie.yang@oss.qualcomm.com
Subject: [PATCH v4 4/4] arm64: dts: qcom: Add base PURWA-IOT-EVK board
Date: Fri, 16 Jan 2026 18:41:30 +0800
Message-Id: <20260116104136.2922032-4-yijie.yang@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260116-purwa-v4-0-89b2adae9f09@oss.qualcomm.com>
References: <20260116-purwa-v4-0-89b2adae9f09@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: kaO4GEKT1rO6oTuEqUmNILSY8oP9SDFg
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE2MDA3OSBTYWx0ZWRfX/p/BTgvKtJpy
 ea9frX3zYFi5/IBbJ2Vjtn5/zf3god43/a4SXLUd1Fjv5DbMV631vzTVDEKKr2SqON0zBjXVtaT
 WRIWLfrozA6XiU/9PXN1tzmqMdaw3pGc8mz/tJyoFONh0G3HCbxw7vav55Ry1b2Lbh4ZubBff4s
 vNjqUg6vyJSYvBYsCPMOZV0FYhzkAd+Ti8xtnK1VMK9MZDbvIZj4jOmKcBEgPFyhf5oGXoFOznw
 n63VIzQlGPldkrB+RbovQBfG2tU2InZQQc2Barb4rTHtW2ie/kjejYbuxm8q3SPzHrOfvV1IwO2
 IGA/KikzyHvjSQemU6fhhrtYqx9GKSweHzlGmTyFy9LRkwtX0iXReEcjDRQ2wE75OCkIjPJC4uI
 0AmGMqllRdAharInE7AML2gaYQcdm7BZIvUW80+hUmf2wBce9xfI2zgw0CVWPxaAhAh7DCzb+B4
 s5+WkB0sAzT3ndbktxw==
X-Proofpoint-GUID: kaO4GEKT1rO6oTuEqUmNILSY8oP9SDFg
X-Authority-Analysis: v=2.4 cv=NfDrFmD4 c=1 sm=1 tr=0 ts=696a15ee cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=qttkq7nP6dpe1EO-CVAA:9 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-16_03,2026-01-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 impostorscore=0 suspectscore=0 spamscore=0
 phishscore=0 clxscore=1015 priorityscore=1501 lowpriorityscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601160079

From: Yijie Yang <yijie.yang@oss.qualcomm.com>

The PURWA-IOT-EVK is an evaluation platform for IoT products, composed of
the Purwa IoT SoM and a carrier board. Together, they form a complete
embedded system capable of booting to UART.

PURWA-IOT-EVK uses the PS8833 as a retimer for USB0, unlike HAMOA-IOT-EVK.
Meanwhile, USB0 bypasses the SBU selector FSUSB42.

Make the following peripherals on the carrier board enabled:
- UART
- On-board regulators
- USB Type-C mux
- Pinctrl
- Embedded USB (EUSB) repeaters
- NVMe
- pmic-glink
- USB DisplayPorts
- Bluetooth
- WLAN
- Audio
- PCIe ports for PCIe3 through PCIe6a
- TPM

Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/Makefile             |   1 +
 .../{hamoa-iot-evk.dts => purwa-iot-evk.dts}  | 112 ++++++++++++------
 2 files changed, 75 insertions(+), 38 deletions(-)
 copy arch/arm64/boot/dts/qcom/{hamoa-iot-evk.dts => purwa-iot-evk.dts} (95%)

diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
index a5d6f451f85c..d276b3cf14ee 100644
--- a/arch/arm64/boot/dts/qcom/Makefile
+++ b/arch/arm64/boot/dts/qcom/Makefile
@@ -126,6 +126,7 @@ dtb-$(CONFIG_ARCH_QCOM)	+= msm8998-sony-xperia-yoshino-lilac.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= msm8998-sony-xperia-yoshino-maple.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= msm8998-sony-xperia-yoshino-poplar.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= msm8998-xiaomi-sagit.dtb
+dtb-$(CONFIG_ARCH_QCOM)	+= purwa-iot-evk.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= qcm6490-fairphone-fp5.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= qcm6490-idp.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= qcm6490-particle-tachyon.dtb
diff --git a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts b/arch/arm64/boot/dts/qcom/purwa-iot-evk.dts
similarity index 95%
copy from arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
copy to arch/arm64/boot/dts/qcom/purwa-iot-evk.dts
index 2390648a248f..2a2cbcd9eace 100644
--- a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
+++ b/arch/arm64/boot/dts/qcom/purwa-iot-evk.dts
@@ -6,12 +6,12 @@
 /dts-v1/;
 
 #include <dt-bindings/leds/common.h>
-#include "hamoa-iot-som.dtsi"
+#include "purwa-iot-som.dtsi"
 #include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
 
 / {
-	model = "Qualcomm Technologies, Inc. Hamoa IoT EVK";
-	compatible = "qcom,hamoa-iot-evk", "qcom,hamoa-iot-som", "qcom,x1e80100";
+	model = "Qualcomm Technologies, Inc. Purwa IoT EVK";
+	compatible = "qcom,purwa-iot-evk", "qcom,purwa-iot-som", "qcom,x1p42100";
 	chassis-type = "embedded";
 
 	aliases {
@@ -118,15 +118,15 @@ port@1 {
 					reg = <1>;
 
 					pmic_glink_ss0_ss_in: endpoint {
-						remote-endpoint = <&usb_1_ss0_qmpphy_out>;
+						remote-endpoint = <&retimer_ss0_ss_out>;
 					};
 				};
 
 				port@2 {
 					reg = <2>;
 
-					pmic_glink_ss0_sbu: endpoint {
-						remote-endpoint = <&usb_1_ss0_sbu_mux>;
+					pmic_glink_ss0_con_sbu_in: endpoint {
+						remote-endpoint = <&retimer_ss0_con_sbu_out>;
 					};
 				};
 			};
@@ -618,25 +618,6 @@ platform {
 		};
 	};
 
-	usb-1-ss0-sbu-mux {
-		compatible = "onnn,fsusb42", "gpio-sbu-mux";
-
-		enable-gpios = <&tlmm 168 GPIO_ACTIVE_LOW>;
-		select-gpios = <&tlmm 167 GPIO_ACTIVE_HIGH>;
-
-		pinctrl-0 = <&usb_1_ss0_sbu_default>;
-		pinctrl-names = "default";
-
-		mode-switch;
-		orientation-switch;
-
-		port {
-			usb_1_ss0_sbu_mux: endpoint {
-				remote-endpoint = <&pmic_glink_ss0_sbu>;
-			};
-		};
-	};
-
 	wcn7850-pmu {
 		compatible = "qcom,wcn7850-pmu";
 
@@ -753,6 +734,63 @@ retimer_ss2_con_sbu_out: endpoint {
 	};
 };
 
+&i2c3 {
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
 &i2c5 {
 	clock-frequency = <400000>;
 
@@ -1102,9 +1140,7 @@ edp_bl_reg_en: edp-bl-reg-en-state {
 		pins = "gpio10";
 		function = "normal";
 	};
-};
 
-&pmc8380_3_gpios {
 	pm_sde7_aux_3p3_en: pcie-aux-3p3-default-state {
 		pins = "gpio8";
 		function = "normal";
@@ -1144,6 +1180,16 @@ &pmk8550_pwm {
 	status = "okay";
 };
 
+&spi11 {
+	status = "okay";
+
+	tpm@0 {
+		compatible = "st,st33htpm-spi", "tcg,tpm_tis-spi";
+		reg = <0>;
+		spi-max-frequency = <20000000>;
+	};
+};
+
 &smb2360_0 {
 	status = "okay";
 };
@@ -1171,16 +1217,6 @@ &smb2360_2_eusb2_repeater {
 	vdd3-supply = <&vreg_l8b_3p0>;
 };
 
-&spi11 {
-	status = "okay";
-
-	tpm@0 {
-		compatible = "st,st33htpm-spi", "tcg,tpm_tis-spi";
-		reg = <0>;
-		spi-max-frequency = <20000000>;
-	};
-};
-
 &swr0 {
 	status = "okay";
 
@@ -1470,7 +1506,7 @@ &usb_1_ss0_hsphy {
 };
 
 &usb_1_ss0_qmpphy_out {
-	remote-endpoint = <&pmic_glink_ss0_ss_in>;
+	remote-endpoint = <&retimer_ss0_ss_in>;
 };
 
 &usb_1_ss1_dwc3_hs {
-- 
2.34.1


