Return-Path: <devicetree+bounces-254423-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EAE0D1815A
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 11:37:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 341B13046370
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 10:29:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3BA4E38E5C0;
	Tue, 13 Jan 2026 10:28:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="js2ENYLI";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ScujVZ5f"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A6E738BF76
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 10:28:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768300121; cv=none; b=l+35fPD9vVonYCIluBzx+/AXi1x7W+qQOl6NYJjVqOouI3zY/sYsdeVx9PLZJvlcm41e08ZnBYeuN76Mh+3uRtZUGg4tmI0f6GjmmTXFgUEEPGt4eOyfryjW922rqQRSRi8TAlmOTI5iQSlSMx5Dcz51A9DK2h4E6gNCoeohDeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768300121; c=relaxed/simple;
	bh=nPoaCvXC9fYWvhq/vZ4lvnfmGxbhql3x2Jf6rQgElDA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=fsYKtAJReknxbWuc3Lo80bJ8mff0COMnU/GTxOp9a8oDp8YUVFOHvzp0Sn8MUrYo12DiKfw0CQyywJLJLxsMk7i+s85JBLxSD2eaYXcwTcMhDx6lG9e53Wi/Qc6jHXAle39quoIWTITY8F7h+hAwkADPt4dgQaMJ40NoNvdwkD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=js2ENYLI; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ScujVZ5f; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60D5SmL53868700
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 10:28:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=45zdGDb6r1W
	HhSgDsq/WdGHrGhA2G9S3kLXgLp5fVU8=; b=js2ENYLIrwFQEc+9d7wLKKmET5c
	B6YnpNOlWT6Wji7uqtXIMjuZ4hyze3iOsc4taI3je6KCjmQu0eQ1hNB9YOXKn2u5
	qTzTLkzOUg5Zd0sA19Mqt4xO1UmHbwvcTxPAW6/zaFiXuYX95tuu7ub2YKhEpwDy
	LGtp9J6bMixVVsns+o7Z1rUBzSD7Eixx9vWQoCmK4w35jPZ/3VGmjoKeNe7yriB+
	lvw1mvT3Z88CVSofPG46SWzBsmJTJtOzcs+d+HLZx5l7e3rVuVHITaxY+q3dHlaI
	GYijOATqopJUfQEDaW6NE9c8LtZDmG9ZTI1y5xPPm4wgULAOGwfFU8vytpg==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bnfxk8w3r-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 10:28:37 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2a0bb1192cbso68739575ad.1
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 02:28:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768300116; x=1768904916; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=45zdGDb6r1WHhSgDsq/WdGHrGhA2G9S3kLXgLp5fVU8=;
        b=ScujVZ5fRPPQV/XTtGAAVkai3HAN0f4ym+khv71haU/y0RgBItkf98rWziuFV9x6B/
         QORkjupqkmUeW92J5HqiLrK0V1+IBssIqQG+K9tnMB4mEMxIlRRvf550DpKLfOm8yST4
         7w/F/miAvlGtVGWvKJqnvkq7WbtxOtEPKsJqWmFYvMVoqV3glGUqConDmnJeBgWy3LUT
         NN/1HvaOntNkUIdUTWtAHKX/axLHosqTCez8B7OqTJ3n5EcfGK8ADTY60qEXoOI1tOHE
         zFlompjogKtxrgz/zvZkl+WAFM8yn8SHZi9MkdjsQ9ytGS0Vc0fFoV1xJ61cQMjnXxKG
         ceBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768300116; x=1768904916;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=45zdGDb6r1WHhSgDsq/WdGHrGhA2G9S3kLXgLp5fVU8=;
        b=o1xZbX8cFjgxE3TT5C/Z3Pd4zRIIHuy1dFnn0gjRDoHlYuBvh8RvnVsUtkXeI+IJ6h
         qQ9n2OF7KkmSWYACD20VZ2BZknMpVYs5H0P/oO7barNNHd7YKTL60XyQtAFC59q99/vz
         Z2M1oxoxd/ylXETYShqvELTbBxV2bCfLcdpM6csF5ZLIYk3+KLWv95GGCtHK217Vf/OR
         5Ezd+cPXuIJBzDdz/OwYF2iwun+NHbJ95oyk7mX2DoFbS+1svAwnLlPnX5KzHvCr92Qy
         NeDsqdofFqG0cAtsK8r+08OfS8oc6ySDI4vASrOPAF11tQxdoHFPRtutWEczur1SAiDj
         oIfg==
X-Forwarded-Encrypted: i=1; AJvYcCX+oX+3eGwgZPu15hp1f+hGwM44qko247g9p/ZQeK8Wfw2wiyKSZStSJiqA8EpolOKAMB0iH6by97qu@vger.kernel.org
X-Gm-Message-State: AOJu0Yyz0Uan71Z7v4hSBoyMWZoMYxKPR4zLFPqzrvhOC0kllBVTuoqw
	xR87swxk1gJBsgD4NQeTkK6wsMI2R4E+LcLhq0RWwxM08A6lyT62DvpuKns9rLuCE+mxaG7/EHG
	94pZoLU9SdQp2TkQ01EOU+oGLsRP+/QBMBhT37CpcKXFl1aTglWmj5osW8bueMRsj
X-Gm-Gg: AY/fxX6npiCRgLku/dHstHNUADqDV5seYOH5Em6+Fa5wibNrqpgQreq1rltogMHkkSK
	FNfg6Xg/reUJKdKg2M4c0l7NTRUZKfklMHIVxBgzgksupwGu8I/G8+zCShAcRb0urjJ4Opb5jRP
	5GS/VQGgmvfk8mLsqgPwisTpxY09NPDzaPsqX/pP0RlW9sgsXwb4nh/cZqYUhEmIAzy4mMwmCv6
	cDXkKc0tJfF6pfIviXtWI1Mm4lXBw57wFO/FIfKIW/CTTplG/i1wfdK2UdXLlrl0CQBNQsxNKVw
	KcdGCYpumncT3UX2Z2hlZqQJb+mzepXaMPeyyH2xPET5sf8QCo1aLF4+SOO8FlM2xDoEor9SUox
	TBgF0S8bNXlSoMsKFRx7ENDaxuuDWkerFk+uFbViId8WK4ZsbqANIUD9a1IqptkoxgsW1PXMThV
	8=
X-Received: by 2002:a17:902:f54e:b0:29d:584e:6349 with SMTP id d9443c01a7336-2a3ee451f29mr199749865ad.13.1768300116112;
        Tue, 13 Jan 2026 02:28:36 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHH04odkjGB6quhBjYqwJMFLA59SWVl1C++R5m41jC2rLFV3i109d/dOXfEva5lPqb2gZvo3Q==
X-Received: by 2002:a17:902:f54e:b0:29d:584e:6349 with SMTP id d9443c01a7336-2a3ee451f29mr199749685ad.13.1768300115608;
        Tue, 13 Jan 2026 02:28:35 -0800 (PST)
Received: from yijiyang-gv.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3cc8d76sm197125265ad.84.2026.01.13.02.28.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 02:28:35 -0800 (PST)
From: YijieYang <yijie.yang@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, yijie.yang@oss.qualcomm.com
Subject: [PATCH v3 4/4] arm64: dts: qcom: Add base PURWA-IOT-EVK board
Date: Tue, 13 Jan 2026 18:28:16 +0800
Message-Id: <20260113102822.590677-4-yijie.yang@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260113-purwa-v3-0-16eefacbdce9@oss.qualcomm.com>
References: <20260113-purwa-v3-0-16eefacbdce9@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: 37hBBBxKiJeNJVaqK0FDWGw4NDZ98JsE
X-Proofpoint-GUID: 37hBBBxKiJeNJVaqK0FDWGw4NDZ98JsE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEzMDA4OCBTYWx0ZWRfX+BToVsJjSHFP
 ZsaTO9wKweYtkhezXFZKcQ/m8LX/KiOPiVM3sYAIIgAsSGIAGp2LCmf7gd4hc9AIfteVlZ7Mbmn
 wsTpjBySvyLmx1ZDcKN0OR3/qJBI/HXC3giMQxTOu/jlf1R4MlIJzMiJFeNoO9LrM/7+naenDGt
 O3HZBN0J7G8fiCIfLkGhAeDpsRxk/KVRkjlIpA7suFh+BtxglBAMyWgWQH7Hr4UMD7PyrL5p+oa
 uZxPnOc5XdM96x/NG9vFzj1ZH2s+lwFiXAHYIYRUFbDaqbxb2/tlEBoX7LzPfzoYfiqfCI6Odwk
 TI49SzzQ3fuU/jsfFhI+/w7MnlJMbj3iYKlVsoJQK7a9N0P7+kPCDMvbNSP5Uhc61lfoQBXgdbw
 aUESIdyN0xVd/RnIsj21c3fqm3pjmClsGxdj6L9oVvW11D+eGm7dBBrHgeegzxr6NYDi1kKA59C
 X5Bhw2vydAjjfeON7zw==
X-Authority-Analysis: v=2.4 cv=PvSergM3 c=1 sm=1 tr=0 ts=69661e55 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=dNVs3vikzzgUXnu04FQA:9 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-13_02,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 malwarescore=0 lowpriorityscore=0
 adultscore=0 spamscore=0 clxscore=1015 impostorscore=0 suspectscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601130088

From: Yijie Yang <yijie.yang@oss.qualcomm.com>

The PURWA-IOT-EVK is an evaluation platform for IoT products, composed of
the Purwa IoT SoM and a carrier board. Together, they form a complete
embedded system capable of booting to UART.

PURWA-IOT-EVK uses the PS8833 as a retimer for USB0, unlike HAMOA-IOT-EVK.
Meanwhile, USB0 bypasses the SBU selector FSUSB42. As a result, the glink
topology differs from that of HAMOA-IOT-EVK.

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

Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/Makefile             |   1 +
 .../{hamoa-iot-evk.dts => purwa-iot-evk.dts}  | 102 +++++++++++-------
 2 files changed, 65 insertions(+), 38 deletions(-)
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
index 2390648a248f..6f779be3c6d7 100644
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
@@ -1171,16 +1207,6 @@ &smb2360_2_eusb2_repeater {
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
 
@@ -1470,7 +1496,7 @@ &usb_1_ss0_hsphy {
 };
 
 &usb_1_ss0_qmpphy_out {
-	remote-endpoint = <&pmic_glink_ss0_ss_in>;
+	remote-endpoint = <&retimer_ss0_ss_in>;
 };
 
 &usb_1_ss1_dwc3_hs {
-- 
2.34.1


