Return-Path: <devicetree+bounces-248420-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BFFF5CD28B4
	for <lists+devicetree@lfdr.de>; Sat, 20 Dec 2025 07:36:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 74701301D9E3
	for <lists+devicetree@lfdr.de>; Sat, 20 Dec 2025 06:36:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B37BF1F874C;
	Sat, 20 Dec 2025 06:36:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Xiy4kNK5";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Z4kN7F3T"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16CC22BE64C
	for <devicetree@vger.kernel.org>; Sat, 20 Dec 2025 06:36:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766212596; cv=none; b=op9tGr/viEtt1kGGy4CDD/ZnmVvqSpEvgXfIUW+XytaQei1eODn01ufgZsYy/RepfwbA/UDL1G8sNL+CNUQF5Z7JUjxOQ93p0XEQo6/xmi94LNko9DzFBfROI+LckI8TovBVw8kLpsUmjgBA8j0JiO1L2gJoevwV28LKoKlatuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766212596; c=relaxed/simple;
	bh=+TO9BHN9dqsZdCeMLdCOkLD5oWhxZd8LOnnSEJKZauQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=sAPXQxvEe/Mnw1X1FF4OwxPxVxofM93QhkNlDasWb4qmM71bWh1CVVSjZymf2F3Qn0jpwwZnSAb5T/Rv6lElWE9SpPtbCiOxIrgqfLftoJkqRz1M07dofgI8gPk0fdiqpSVIeZkV2psOpQviik1h6hAHG1aoVnLcBOQ7eX2hpUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Xiy4kNK5; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Z4kN7F3T; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BK4dlgl607015
	for <devicetree@vger.kernel.org>; Sat, 20 Dec 2025 06:36:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=2Nx7Cr/k4HX
	aH74wUNAFiQCRYfHpTk7Bi2OnazsTsiM=; b=Xiy4kNK5meAHEyKPSXhYemIIqxo
	zzXTHXDSrwjTB4VHklC94w2hl+nIJF1qgysOn9ZDsiqmqOUu6aoxg1BHV+Nb/e7S
	Hd3bp08Yyku/X1R/RZAgtca1vH6M+xyPw8fHFWp4mXv2DuDRr+VS+KGx1fHdJnhg
	HbjtCZPsAbG5ZMgpazMt4hl4DJG662qVnF6ij0ro28qSdO7LRoQfYU5z9VLDDUhW
	KpD2IIXM4GQs9YEG4toNV9E2Dbuz+Rq+zZskFywH1uoqPyZOIronvRXqjUJ80f5P
	EGQHJaZk81lgHWbCnjIu/UXLLnhvza95YysAMgPtQKMfzBvCG2Wg78A29Zw==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b5mydr55v-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 20 Dec 2025 06:36:30 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-34ab8aafd24so2551034a91.0
        for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 22:36:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766212590; x=1766817390; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2Nx7Cr/k4HXaH74wUNAFiQCRYfHpTk7Bi2OnazsTsiM=;
        b=Z4kN7F3TO9eDmgzuDO39GfYxm2cLEzfIh1Wm0riKg8pzqujUpCB/vOh2qIQoqoV0x9
         isjdclIheWfrupAgyo8JJ4OKWorGjBhscNsFQaDH3E3ZdRTM0RrIfBbLrlu1dccsTQEo
         tHe18rACoQNuOI8EZub987unQ6yjhfxVfsRGT9if7wnN3F2w8E3DoETL2K4gM8qlxbEZ
         5AG4VzDISKDY93O1UmaW8Aecz6JTy4PUF6vfJsI3Eq00N41P6nSTPivUq6jsH3VJhLCt
         PyQMBpkMo1/Fa5maUiL+PHMcOGFmnqEWJIMxZK/low+mYQZHJaS3xyHVYj9wTwiRJKMK
         9BnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766212590; x=1766817390;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=2Nx7Cr/k4HXaH74wUNAFiQCRYfHpTk7Bi2OnazsTsiM=;
        b=nm+UohFumvLBf8+WlNEnZ58nt6nogbFmh6RMxduBNhtY1kKk6DzhlNC6zWzhR1AGDb
         iPufBJyt40rETZlZE1m2lomRdCcpsu05Xh7fNXiAmhkQAUXbu++nBsGSOi6qt3bowzaT
         cVhAWLvnpxZB0jAJ8WXEscc7t6ohzC7gPgqZfJE420e4bkTfso4DCNOM3Hb19Dt6EDTe
         lc9ntPaOCpc5L4XHAVsE+wkCHm3AvM/YnLoAzTBwuRWl+UksbVlmKvI+Uoxyte7UaWHU
         NC+3Bc8UWHipcFem0Dfa4FM6RwJHmNgqnaCpHBSrhQ1YdbnZ26OoPMWTjZXOEKwzI6rC
         MmGA==
X-Forwarded-Encrypted: i=1; AJvYcCWUVizeHwoXoA83TUxv9WQsnx56YubyYwZmAHaFUUyJ0JVY9bk6+wBX8QsSWqGZ0waimV5PCTbGHJmK@vger.kernel.org
X-Gm-Message-State: AOJu0YxcvNHkUTUOu0//fce+XWqoXXSuw2c6sZGCvrhemoztTOXFlh0M
	5Yvp3sfbZsQiNySuEFSgDrkZMPM3hcNnu19Cfl4ZXNJ8HP/mAEey6XhsVnb/QHvnmkylJzXzIOK
	C/metYSGTCMOomJhCyZuYCI2qh4hmL3JiCP9tegDhIut8LAkXxalfv1TSMWXMr1tR
X-Gm-Gg: AY/fxX60sxNzQTxIhIZhfOerAkAMCsWsCf2tGyyDIDoMSZX9B9fA1injKF0iSda9JEG
	44SA+BuIrCCV37VJdkMymxFcqzv9A4QldM48UuKMBQnxAEwa5PN44erj+ctSkYSgtl9j2fPegYI
	B0pxXmvpjK+0nu9pN5ZDWp9SG5APCz4QSRwK7vtEmnuBurbN2Cw90RvIt4U8oFUTwC63mXmENhG
	4Bwx+O7WyG6wbbk/69kzRvZ+imzYjUtQix3xHA/AYCQW2aNpV0wO0sEcJcGmP8NCCq+itxnHlGa
	ATNNhFxVfTE2DdPvyhA8J5kjn+FSSYQvirRScR4eYs8Y5jORyn/+Ooou0MQshwoo55ox62C6upP
	2QwlG67RhDNWnBbbHnOKtIR5mZkz0Yoeypy+BMWUITxw=
X-Received: by 2002:a17:90b:4b0b:b0:340:c094:fbff with SMTP id 98e67ed59e1d1-34e71e09fecmr7232414a91.10.1766212590175;
        Fri, 19 Dec 2025 22:36:30 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHu9AxmyQj8/54hV6LdKcLMacPqBaV8Ajwg+Uf1W9s25P7nzhIFvHlYNlQXhWCBeA0d2hFuhA==
X-Received: by 2002:a17:90b:4b0b:b0:340:c094:fbff with SMTP id 98e67ed59e1d1-34e71e09fecmr7232371a91.10.1766212589520;
        Fri, 19 Dec 2025 22:36:29 -0800 (PST)
Received: from hu-swatagar-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34e7723b3a8sm2847143a91.3.2025.12.19.22.36.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Dec 2025 22:36:28 -0800 (PST)
From: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Icenowy Zheng <uwu@icenowy.me>,
        Matthias Kaehlcke <mka@chromium.org>,
        =?UTF-8?q?J=20=2E=20Neusch=C3=A4fer?= <j.ne@posteo.net>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Jens Glathe <jens.glathe@oldschoolsolutions.biz>,
        Mike Looijmans <mike.looijmans@topic.nl>,
        Catalin Popescu <catalin.popescu@leica-geosystems.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Pin-yen Lin <treapking@chromium.org>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Swati Agarwal <swati.agarwal@oss.qualcomm.com>
Subject: [PATCH v3 4/4] arm64: dts: qcom: lemans-evk: Enable secondary USB controller in host mode
Date: Sat, 20 Dec 2025 12:05:37 +0530
Message-Id: <20251220063537.3639535-5-swati.agarwal@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251220063537.3639535-1-swati.agarwal@oss.qualcomm.com>
References: <20251220063537.3639535-1-swati.agarwal@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: bIElNJa59yjW4Nak9v6bBmmGYDeMsRQG
X-Proofpoint-ORIG-GUID: bIElNJa59yjW4Nak9v6bBmmGYDeMsRQG
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIwMDA1MCBTYWx0ZWRfX+hl3wL/F/ip0
 cRmggNTp/ba2SLikebemytEg5ccZXy+JgdkCC6opmJJsbwgYvXHGVcn2f5hb80y0Z1YMGaMcc/6
 hxt//sPANxRuKBbJc30UxphjsbKx9+FRFmA5tHnSItwbzNCUxnTy+n6Tc0qfoRaNq4DCkaBk0JK
 uoWJ8reMGd01d/U0HFN+n9dJeyHKHaXn8I3BmTGgLnNfTO7xtMKRrx6Aru615Q7GjZsenupZdy1
 RSP0zY8fpXzR+MjJH+mn4RtSTOcPPE/gFEQoqLtjtn5DIKP+cVKm0FecMIx6J3w0AljRe80wD6K
 Yo9ctdzApGD5jgO21V56E92SN2jGXlwlmrfjxS8XKe/DxB42WVdigyMHHag5FyNjOtPQ7TtosaK
 7MPpf/q8HP/agbMosDB7XW9Kyl0LsPRUTkde/FFpQQuFe6yP1u3FX0peH5A65IN4ZkJmYTlkGRN
 v3XI6SgDjQrL9lgl2aw==
X-Authority-Analysis: v=2.4 cv=N6wk1m9B c=1 sm=1 tr=0 ts=694643ee cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=0PLguQYFKghNqROady8A:9 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-20_01,2025-12-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 phishscore=0 malwarescore=0 bulkscore=0
 lowpriorityscore=0 adultscore=0 spamscore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512200050

Enable secondary USB controller in host mode on lemans EVK Platform.

For secondary USB Typec port, there is a genesys USB HUB GL3590 having 4
ports sitting in between SOC and HD3SS3220 Type-C port controller and SS
lines run from the SoC through the hub to the Port controller. Mark the
second USB controller as host only capable.

Add HD3SS3220 Type-C port controller along with Type-c connector for
controlling vbus supply.

Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans-evk.dts | 158 ++++++++++++++++++++++++
 1 file changed, 158 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
index 70d85b6ba772..d72639479d75 100644
--- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
+++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
@@ -67,6 +67,47 @@ usb0_con_ss_ep: endpoint {
 		};
 	};
 
+	connector-1 {
+		compatible = "usb-c-connector";
+		label = "USB1-Type-C";
+		data-role = "host";
+		power-role = "dual";
+		try-power-role = "source";
+
+		vbus-supply = <&vbus_supply_regulator_1>;
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+
+				usb1_con_ss_ep: endpoint {
+					remote-endpoint = <&hd3ss3220_1_in_ep>;
+				};
+			};
+
+			port@1 {
+				reg = <1>;
+
+				usb1_hs_in: endpoint {
+					remote-endpoint = <&usb_hub_2_1>;
+				};
+
+			};
+
+			port@2 {
+				reg = <2>;
+
+				usb1_ss_in: endpoint {
+					remote-endpoint = <&usb_hub_3_1>;
+				};
+
+			};
+		};
+	};
+
 	edp0-connector {
 		compatible = "dp-connector";
 		label = "EDP0";
@@ -140,6 +181,16 @@ vbus_supply_regulator_0: regulator-vbus-supply-0 {
 		enable-active-high;
 	};
 
+	vbus_supply_regulator_1: regulator-vbus-supply-1 {
+		compatible = "regulator-fixed";
+		regulator-name = "vbus_supply_1";
+		gpio = <&expander1 3 GPIO_ACTIVE_HIGH>;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-boot-on;
+		enable-active-high;
+	};
+
 	vmmc_sdc: regulator-vmmc-sdc {
 		compatible = "regulator-fixed";
 
@@ -527,6 +578,33 @@ hd3ss3220_0_out_ep: endpoint {
 			};
 		};
 	};
+
+	usb-typec@47 {
+		compatible = "ti,hd3ss3220";
+		reg = <0x47>;
+
+		interrupts-extended = <&pmm8654au_2_gpios 6 IRQ_TYPE_EDGE_FALLING>;
+
+		id-gpios = <&tlmm 51 GPIO_ACTIVE_HIGH>;
+
+		pinctrl-0 = <&usb1_id>, <&usb1_intr>;
+		pinctrl-names = "default";
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+
+				hd3ss3220_1_in_ep: endpoint {
+					remote-endpoint = <&usb1_con_ss_ep>;
+				};
+			};
+
+		};
+	};
+
 };
 
 &i2c18 {
@@ -690,6 +768,14 @@ usb0_intr_state: usb0-intr-state {
 		bias-pull-up;
 		power-source = <0>;
 	};
+
+	usb1_intr: usb1-intr-state {
+		pins = "gpio6";
+		function = "normal";
+		input-enable;
+		bias-pull-up;
+		power-source = <0>;
+	};
 };
 
 &qup_i2c19_default {
@@ -849,6 +935,12 @@ usb_id: usb-id-state {
 		function = "gpio";
 		bias-pull-up;
 	};
+
+	usb1_id: usb1-id-state {
+		pins = "gpio51";
+		function = "gpio";
+		bias-pull-up;
+	};
 };
 
 &uart10 {
@@ -903,6 +995,72 @@ &usb_0_qmpphy {
 	status = "okay";
 };
 
+&usb_1 {
+	dr_mode = "host";
+
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	status = "okay";
+
+	usb_hub_2_x: hub@1 {
+		compatible = "usb5e3,610";
+		reg = <1>;
+		peer-hub = <&usb_hub_3_x>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@1 {
+				reg = <1>;
+
+				usb_hub_2_1: endpoint {
+					remote-endpoint = <&usb1_hs_in>;
+				};
+			};
+
+		};
+	};
+
+	usb_hub_3_x: hub@2 {
+		compatible = "usb5e3,625";
+		reg = <2>;
+		peer-hub = <&usb_hub_2_x>;
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@1 {
+				reg = <1>;
+
+				usb_hub_3_1: endpoint {
+					remote-endpoint = <&usb1_ss_in>;
+				};
+			};
+
+		};
+	};
+};
+
+&usb_1_hsphy {
+	vdda-pll-supply = <&vreg_l7a>;
+	vdda18-supply = <&vreg_l6c>;
+	vdda33-supply = <&vreg_l9a>;
+
+	status = "okay";
+};
+
+&usb_1_qmpphy {
+	vdda-phy-supply = <&vreg_l1c>;
+	vdda-pll-supply = <&vreg_l7a>;
+
+	status = "okay";
+};
+
 &xo_board_clk {
 	clock-frequency = <38400000>;
 };
-- 
2.34.1


