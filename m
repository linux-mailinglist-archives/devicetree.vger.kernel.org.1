Return-Path: <devicetree+bounces-166224-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 51AEDA86A2B
	for <lists+devicetree@lfdr.de>; Sat, 12 Apr 2025 03:50:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 188B27B7DE3
	for <lists+devicetree@lfdr.de>; Sat, 12 Apr 2025 01:49:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62C5B13959D;
	Sat, 12 Apr 2025 01:50:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cHa3os91"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9986151992
	for <devicetree@vger.kernel.org>; Sat, 12 Apr 2025 01:50:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744422628; cv=none; b=O92KKuR6OhPN2kHeqzF73aoRXE3lFAhAI6MqHDXDCoV8x2H8jVmp7WOnH/qZAA7HAy2gkn0pbz5HIR2xYtyRj4R1CscV71MHNhxJQxXKm63yPlQa1i/iXJ1jZ9UrfDgEW3vQLCTXcp52Q1xdpPxJKbJLniyfaTZckTsAtFSTHdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744422628; c=relaxed/simple;
	bh=9kMSFKbFRxEvKzh8AXsGO6wmCWHX5TFBYA9ElNAdiG8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kxdLt6hGNvQhM5zq1a7hXHp1Zyqn1ZuWW5Ub5PYepn4+LevUwCKRy2WYwRIXlVk8PpKVx73mGqZKcuV/oSXP4SjuNU4XNi8DV/EtBTn4Y50syzOLOZdVRwJVCt4lyRcA13xUMmksZcjhMkb6m2u5STdrVEldEzXr2wyNl4BD/S8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cHa3os91; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53BGKfMd032650
	for <devicetree@vger.kernel.org>; Sat, 12 Apr 2025 01:50:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5ZwWxumEFLCA8T+o8PihWBVEQCN4OnKd//gj5GDwfzU=; b=cHa3os91N8Rk5Wuw
	FAIIu89cCQHQyy5QyYNF9WafIsu2QD7uGar9tKGRSO/GVbkD7StBXzgrQRQkcv4P
	Fv93mtE/91wU3MZSn1xWZOYS1MIRD+urrFyDV1ccvwi3gZJMHuvkFyDJb3ecs+ef
	etGdk0MVXjefTzqrljjv34Z19Iy/35vfIT3esde9TOpjwKCmI7wczNwdynlbN3Ip
	i2eCnT23vEgndUvACNc1pyX4fAdUMIBR5vprKFwcrJK2O+CS+cZFBb+O3vmbjGqu
	X5Ud4dncL0wjbvRb/ToUNGHEEAkuO285iuYa4dahgp+5bTV+ESTDCCNt1lfkToTP
	Pgj0OA==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twfkuut4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 12 Apr 2025 01:50:25 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-7395095a505so2015971b3a.1
        for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 18:50:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744422624; x=1745027424;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5ZwWxumEFLCA8T+o8PihWBVEQCN4OnKd//gj5GDwfzU=;
        b=jWaUuhdqYRZXZKQcD1caZoFC/yd7d2teAUs5DnL8XeTATG3MmVP9NkyIBPO8xv7HWb
         g2V/n+s4jjzofoQlK/9yWlB3gPw6WJ94R1PboTl//7ZdSGS2O2yJAD+phs9SUnVPmfhM
         FctOulDFkunGmxgDWyTDSWRRL9JCBEr6aMn8Z/jx8x84K1kxrHf9+pw5J3rk2ExHqdoa
         8GGVHCtmnSV0+PVzT5szS4BIZCGiuvHZxua4M9WNXk5dvNC9wG0jQ1BpuGw/QFCgSDGT
         PdL+oOVA3Ex2L4zihxwPMPGLqqPlMpPNbi1+T8hRWiu6vkgyIio5pQFljodWK7l/P5Pf
         dcww==
X-Forwarded-Encrypted: i=1; AJvYcCWSNi1JTQmEq9FQH5yytk+45nDxSpsBLuzz3mEKXu9muU3SPm13kSF1nZzruaPk0S5QjmiT6fW5LXUv@vger.kernel.org
X-Gm-Message-State: AOJu0YzYXMStN9NrQREM3I9lu/HvH7rvx70+gW86xsXhorOw0eHJddeT
	vGkrASmWRiVKD4Bd/ZcVdpHnDbg87NBBDRL/g56amUWRiuHr/s9sjSk+FuSWJwYpege4xO+9zOd
	0N2apl9pXSsJehKZlAVx3y3GzGmcsU0hgnydUn0MHMuq8aQlj8n39qFV0icQe
X-Gm-Gg: ASbGncubsWT0WaoVk8DqyuYAJ+aYGJExC/jTzX6TGmwGEpexvhwlxV8xkB620VIpEZR
	HYXmiCd/eNvAC+kvMBgSjrpGZw3VlPuE5OLn27WKdcLuwtO9p6FKBnNavl2rV1Azz+HPX+Oi9Cu
	uD5XRwknKA6/2R6HD2/PlDOsHuTeIFzaUclw2Y/NDJnbkSrD2c8i059K92lRsaf/gJ8xi7PFreg
	Mh0dre7N54wR1Ofixg6aPIM5xQ91VKE9aqTcLmJnWTTqmI+StL5jZU8lO4IuPc0imVuXenWQbYi
	e9YNc26Nvn0eqvHQ650myKg9hReSqYf8TFLRvZjBELVMGJM=
X-Received: by 2002:a05:6a21:6d84:b0:1f3:1eb8:7597 with SMTP id adf61e73a8af0-20179990742mr6432406637.35.1744422623926;
        Fri, 11 Apr 2025 18:50:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEbC2VhoclRBCtDQ7HvSO6L/6KoDbPdsK+5pM3/wC5jdchgIt64DeDRkHKvzO2LblDkt9JHAQ==
X-Received: by 2002:a05:6a21:6d84:b0:1f3:1eb8:7597 with SMTP id adf61e73a8af0-20179990742mr6432379637.35.1744422623413;
        Fri, 11 Apr 2025 18:50:23 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b02a3221832sm5516825a12.70.2025.04.11.18.50.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Apr 2025 18:50:23 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Sat, 12 Apr 2025 07:19:51 +0530
Subject: [PATCH v5 2/9] arm64: dts: qcom: qcs6490-rb3gen2: Add TC9563 PCIe
 switch node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250412-qps615_v4_1-v5-2-5b6a06132fec@oss.qualcomm.com>
References: <20250412-qps615_v4_1-v5-0-5b6a06132fec@oss.qualcomm.com>
In-Reply-To: <20250412-qps615_v4_1-v5-0-5b6a06132fec@oss.qualcomm.com>
To: Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        chaitanya chundru <quic_krichai@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, Jingoo Han <jingoohan1@gmail.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>
Cc: quic_vbadigan@quicnic.com, amitk@kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, jorge.ramirez@oss.qualcomm.com,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1744422605; l=4839;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=9kMSFKbFRxEvKzh8AXsGO6wmCWHX5TFBYA9ElNAdiG8=;
 b=EhY058xtDHhgReJkZ31Cl9RQA0cKoywbyv51UnWzbSyJAgAP8lW18bK1W3fhyEpkBIJR4X49r
 bhvQGhLPOOsC+m+OnWVD4BKV/2sY7/fNpw86i5bTE8m7e6ueApu+fF+
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-GUID: cL4AYOBhibhtrieppPVsHtCm0GIeCgk-
X-Proofpoint-ORIG-GUID: cL4AYOBhibhtrieppPVsHtCm0GIeCgk-
X-Authority-Analysis: v=2.4 cv=b7Oy4sGx c=1 sm=1 tr=0 ts=67f9c6e1 cx=c_pps a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=UN7QK-OhvXrGNVVRcS8A:9
 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-12_01,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 malwarescore=0
 priorityscore=1501 suspectscore=0 mlxscore=0 impostorscore=0 phishscore=0
 clxscore=1015 spamscore=0 mlxlogscore=999 bulkscore=0 lowpriorityscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504120011

Add a node for the TC9563 PCIe switch, which has three downstream ports.
Two embedded Ethernet devices are present on one of the downstream ports.
As all these ports are present in the node represent the downstream
ports and embedded endpoints.

Power to the TC9563 is supplied through two LDO regulators, controlled by
two GPIOs, which are added as fixed regulators. Configure the TC9563
through I2C.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Reviewed-by: Bjorn Andersson <andersson@kernel.org>
Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 129 +++++++++++++++++++++++++++
 arch/arm64/boot/dts/qcom/sc7280.dtsi         |   2 +-
 2 files changed, 130 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
index 7a36c90ad4ec8b52f30b22b1621404857d6ef336..17d29b922ee95b87e6e048e1db19d8023b657557 100644
--- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
+++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
@@ -218,6 +218,31 @@ vph_pwr: vph-pwr-regulator {
 		regulator-min-microvolt = <3700000>;
 		regulator-max-microvolt = <3700000>;
 	};
+
+	vdd_ntn_0p9: regulator-vdd-ntn-0p9 {
+		compatible = "regulator-fixed";
+		regulator-name = "VDD_NTN_0P9";
+		gpio = <&pm8350c_gpios 2 GPIO_ACTIVE_HIGH>;
+		regulator-min-microvolt = <899400>;
+		regulator-max-microvolt = <899400>;
+		enable-active-high;
+		pinctrl-0 = <&ntn_0p9_en>;
+		pinctrl-names = "default";
+		regulator-enable-ramp-delay = <4300>;
+	};
+
+	vdd_ntn_1p8: regulator-vdd-ntn-1p8 {
+		compatible = "regulator-fixed";
+		regulator-name = "VDD_NTN_1P8";
+		gpio = <&pm8350c_gpios 3 GPIO_ACTIVE_HIGH>;
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		enable-active-high;
+		pinctrl-0 = <&ntn_1p8_en>;
+		pinctrl-names = "default";
+		regulator-enable-ramp-delay = <10000>;
+	};
+
 };
 
 &apps_rsc {
@@ -735,6 +760,78 @@ &pcie1_phy {
 	status = "okay";
 };
 
+&pcie1_port0 {
+	pcie@0,0 {
+		compatible = "pci1179,0623";
+		reg = <0x10000 0x0 0x0 0x0 0x0>;
+		#address-cells = <3>;
+		#size-cells = <2>;
+
+		device_type = "pci";
+		ranges;
+		bus-range = <0x2 0xff>;
+
+		vddc-supply = <&vdd_ntn_0p9>;
+		vdd18-supply = <&vdd_ntn_1p8>;
+		vdd09-supply = <&vdd_ntn_0p9>;
+		vddio1-supply = <&vdd_ntn_1p8>;
+		vddio2-supply = <&vdd_ntn_1p8>;
+		vddio18-supply = <&vdd_ntn_1p8>;
+
+		i2c-parent = <&i2c0 0x77>;
+
+		reset-gpios = <&pm8350c_gpios 1 GPIO_ACTIVE_LOW>;
+
+		pinctrl-0 = <&tc9563_rsex_n>;
+		pinctrl-names = "default";
+
+		pcie@1,0 {
+			reg = <0x20800 0x0 0x0 0x0 0x0>;
+			#address-cells = <3>;
+			#size-cells = <2>;
+
+			device_type = "pci";
+			ranges;
+			bus-range = <0x3 0xff>;
+		};
+
+		pcie@2,0 {
+			reg = <0x21000 0x0 0x0 0x0 0x0>;
+			#address-cells = <3>;
+			#size-cells = <2>;
+
+			device_type = "pci";
+			ranges;
+			bus-range = <0x4 0xff>;
+		};
+
+		pcie@3,0 {
+			reg = <0x21800 0x0 0x0 0x0 0x0>;
+			#address-cells = <3>;
+			#size-cells = <2>;
+			device_type = "pci";
+			ranges;
+			bus-range = <0x5 0xff>;
+
+			pci@0,0 {
+				reg = <0x50000 0x0 0x0 0x0 0x0>;
+				#address-cells = <3>;
+				#size-cells = <2>;
+				device_type = "pci";
+				ranges;
+			};
+
+			pci@0,1 {
+				reg = <0x50100 0x0 0x0 0x0 0x0>;
+				#address-cells = <3>;
+				#size-cells = <2>;
+				device_type = "pci";
+				ranges;
+			};
+		};
+	};
+};
+
 &pm7325_gpios {
 	kypd_vol_up_n: kypd-vol-up-n-state {
 		pins = "gpio6";
@@ -839,6 +936,38 @@ &sdhc_2 {
 	status = "okay";
 };
 
+&pm8350c_gpios {
+	ntn_0p9_en: ntn-0p9-en-state {
+		pins = "gpio2";
+		function = "normal";
+
+		bias-disable;
+		input-disable;
+		output-enable;
+		power-source = <0>;
+	};
+
+	ntn_1p8_en: ntn-1p8-en-state {
+		pins = "gpio3";
+		function = "normal";
+
+		bias-disable;
+		input-disable;
+		output-enable;
+		power-source = <0>;
+	};
+
+	tc9563_rsex_n: tc9563-resx-state {
+		pins = "gpio1";
+		function = "normal";
+
+		bias-disable;
+		input-disable;
+		output-enable;
+		power-source = <0>;
+	};
+};
+
 &tlmm {
 	gpio-reserved-ranges = <32 2>, /* ADSP */
 			       <48 4>; /* NFC */
diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
index 0f2caf36910b65c398c9e03800a8ce0a8a1f8fc7..4265fbf6c97e8a0be56d26ffe077cdafc80e18bb 100644
--- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
@@ -2284,7 +2284,7 @@ pcie1: pcie@1c08000 {
 
 			status = "disabled";
 
-			pcie@0 {
+			pcie1_port0: pcie@0 {
 				device_type = "pci";
 				reg = <0x0 0x0 0x0 0x0 0x0>;
 				bus-range = <0x01 0xff>;

-- 
2.34.1


