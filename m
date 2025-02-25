Return-Path: <devicetree+bounces-150811-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 03CE2A439A0
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 10:35:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A3B79174E9B
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 09:35:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C95A263898;
	Tue, 25 Feb 2025 09:34:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="D8a0RB3r"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C75CC262D20
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 09:34:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740476084; cv=none; b=U57o3PLr5kux5Iwz4mm41zfqznq9qI5PzuU909aOfOBlbghv1gUt53GcuC4M7dfA2jscP8Im0opGJZVOUBAAQwzplZozLdxvL3FmrhmVjDhxTa2bwk4rXKG86YNT+IVxoV+o7IaGOsnD2oJFAdEpsSJa3iiv05pSRSL3S5A3ksQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740476084; c=relaxed/simple;
	bh=HkGQp4f5hZyVT3mZhk8V9rDY2/ZkK33BHDhuHHrUTW8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=l3byaUFa5ccYjZAIbFijdYSiTmEYxqnZwKdlfJcsdUesGaGzilWhVUAiJOQRgF0M2rSmzT4Kq92TYYWB86DW6z0S8Zc+zygFektdwA0uZ3w5gGRSeYTgFEl1Wdm/PvxJL/b/1x1X6FVKHKTxIsxmaMfVS/RLiaUOmWc0kOTjwto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=D8a0RB3r; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51P8BGwI020173
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 09:34:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Cdyl6Kdke6YaeFojQXtf30VB8RI5y+oayrn/e2SqI6Y=; b=D8a0RB3r7zIiX+vO
	P22hM0d56Y79FwngHhr5l3MdaRqNiCG9Xq6hVKbmwfaXpwGFXsqFsyIgKMItAvva
	o+HtoO/IbkneTgwRxa/ji++FcBP/QKNM3EpRG0DgjHal2gknaecY1e474deYsVld
	0jQ8SSJdvTVC9fRONNpTTLO/dklf7hpXSMTRf7fHjBTTZW+0tbVuhQQ/gM0ep/Cp
	oT71dscAGf6+TOln94yw2qkvnAE24NmNn+BdFfHhVQSRaBZOAu2JwdHPgi/YijhJ
	sEKggxgW35Y5SaBjZfp2fl8uPtHGJ7/uB/K+lvoJTzsqZOHQO1KJ3EoSiJs2JGZZ
	O9RJNQ==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44y6t2r76p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 09:34:42 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-2f816a85facso11299026a91.3
        for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 01:34:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740476081; x=1741080881;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Cdyl6Kdke6YaeFojQXtf30VB8RI5y+oayrn/e2SqI6Y=;
        b=a7hkFRxl9GrFHxKUHG2j/OAuoBcF0ZszyNLH6zKo4oK3XoqdBtzmafDaeafZK/PYL5
         YGqG6Roo53hpiTMgv0X5agHm2ZKx3CGecYv766UY86S3BrF2hRcs+ZnVyE0P8ZreOwR9
         XcOxfKR7uBKtHsYPy8dGYcTSjPP7mbstulJgDNpRjlq8k67sD+BOppVWZ4eBOD6is11x
         q2PVOiPzXtFJy2+Ng3NQDP/xyGArDJp1Unv/ADFB+t+NVRo4V68xDg+58sGM0kW3SR02
         go0wLAn2IkCgqG2ZQCrd4Lst/ROz6eNIRaliC3LqVratuVV27KEZ2jcJblPx8jY1FHto
         4+JA==
X-Forwarded-Encrypted: i=1; AJvYcCVWFAh/Kbmbj5Fv0SIYtEPb9MT9eZBZJeVY6E4zeeuRsh/UIONK7FdJZdTfzoF54mXNgHoP516BMi0p@vger.kernel.org
X-Gm-Message-State: AOJu0YxPwiyWaE2zQXuP39EcDcO1JAOjuzl74kyK8uPUolMsi05Leq+j
	2bP8qFmMt2qYOdLTtvb+Y6VgyUERRqgLejlp9rnXFCrlcc1ra7RBTmdzJboR2IxJ8nPZAydvhY8
	fKRUOl4ClFEVhVp9d0ilTnMp/YcnCNipM4bTezd3WyTcDRVktnkRYZjdvhE61
X-Gm-Gg: ASbGncvDVhS//ZEm5mY6n4rwRqNe8Z2+v0v9oKI3EI+7HDQycGZe90eBTX6Bkp3U3n/
	6lUaVMnsbTRBopraVyLz3onMPex6ZRGcza66dhsJMYclrkfq3muJAxtZ6BGuSAQOfS+pS6cN2pj
	b3055k28KNLYE8wIhINMH9wP3/3pvu7K90g7MLhTqOr1pnbbmodZePHUL8ln/sjFuvnaxij8Naw
	uY33wDODFL70K2NGaTUZPbYcOMRq3NVZLvuqA25M1IJcfMWcqiQwnHWcjdJ+o5yucJUCUlVRyDw
	gY84mrQM66pXWhiWrSYZv3soiKdr5+f4JFOI28wwhos+zAjSSh0=
X-Received: by 2002:a17:90b:2e8c:b0:2ee:d024:e4e2 with SMTP id 98e67ed59e1d1-2fce868cc3bmr29003218a91.7.1740476081282;
        Tue, 25 Feb 2025 01:34:41 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEGr5dYTc2AoXKciY6yWDKYzrILdl2vJlc/XmwUCQsBft75O5wJyu8qmlUhamieBoEO53lW4w==
X-Received: by 2002:a17:90b:2e8c:b0:2ee:d024:e4e2 with SMTP id 98e67ed59e1d1-2fce868cc3bmr29003190a91.7.1740476080871;
        Tue, 25 Feb 2025 01:34:40 -0800 (PST)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2fe6a3dec52sm1080770a91.20.2025.02.25.01.34.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Feb 2025 01:34:40 -0800 (PST)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Tue, 25 Feb 2025 15:03:59 +0530
Subject: [PATCH v4 02/10] arm64: dts: qcom: qcs6490-rb3gen2: Add TC956x
 PCIe switch node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250225-qps615_v4_1-v4-2-e08633a7bdf8@oss.qualcomm.com>
References: <20250225-qps615_v4_1-v4-0-e08633a7bdf8@oss.qualcomm.com>
In-Reply-To: <20250225-qps615_v4_1-v4-0-e08633a7bdf8@oss.qualcomm.com>
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
Cc: quic_vbadigan@quicnic.com, amitk@kernel.org, dmitry.baryshkov@linaro.org,
        linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        jorge.ramirez@oss.qualcomm.com,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1740476062; l=4401;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=HkGQp4f5hZyVT3mZhk8V9rDY2/ZkK33BHDhuHHrUTW8=;
 b=BHVLAnv7hiU61nR3ANxetqjSkTrZ6HoEYepvQt/giU0Nr3mEMACl/9nBOX6Sl2G/ZJ1qQXmue
 TwGPNgbYCDVAly1AM2MmUf3tpIrE2JpFaVOI/H/dBqAzcwVRe9Bvlfo
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-ORIG-GUID: z0zndlr6SwqdHpsk1EiynAcJ1UsYRPPs
X-Proofpoint-GUID: z0zndlr6SwqdHpsk1EiynAcJ1UsYRPPs
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-25_03,2025-02-24_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 suspectscore=0
 spamscore=0 priorityscore=1501 mlxscore=0 phishscore=0 malwarescore=0
 adultscore=0 bulkscore=0 lowpriorityscore=0 impostorscore=0
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502100000 definitions=main-2502250066

Add a node for the TC956x PCIe switch, which has three downstream ports.
Two embedded Ethernet devices are present on one of the downstream ports.

Power to the TC956x is supplied through two LDO regulators, controlled by
two GPIOs, which are added as fixed regulators. Configure the TC956x
through I2C.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Reviewed-by: Bjorn Andersson <andersson@kernel.org>
Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 116 +++++++++++++++++++++++++++
 arch/arm64/boot/dts/qcom/sc7280.dtsi         |   2 +-
 2 files changed, 117 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
index 7a36c90ad4ec..13dbb24a3179 100644
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
@@ -735,6 +760,75 @@ &pcie1_phy {
 	status = "okay";
 };
 
+&pcie1_port {
+	pcie@0,0 {
+		compatible = "pci1179,0623", "pciclass,0604";
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
+			pcie@0,0 {
+				reg = <0x50000 0x0 0x0 0x0 0x0>;
+				#address-cells = <3>;
+				#size-cells = <2>;
+				device_type = "pci";
+				ranges;
+			};
+
+			pcie@0,1 {
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
@@ -839,6 +933,28 @@ &sdhc_2 {
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
+};
+
 &tlmm {
 	gpio-reserved-ranges = <32 2>, /* ADSP */
 			       <48 4>; /* NFC */
diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
index 0f2caf36910b..b2e2b1f26731 100644
--- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
@@ -2284,7 +2284,7 @@ pcie1: pcie@1c08000 {
 
 			status = "disabled";
 
-			pcie@0 {
+			pcie1_port: pcie@0 {
 				device_type = "pci";
 				reg = <0x0 0x0 0x0 0x0 0x0>;
 				bus-range = <0x01 0xff>;

-- 
2.34.1


