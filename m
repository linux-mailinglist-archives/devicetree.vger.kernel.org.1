Return-Path: <devicetree+bounces-209987-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DD571B39C6C
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 14:11:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 904F01C81643
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 12:11:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B17DA3112AB;
	Thu, 28 Aug 2025 12:10:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AwrcEOBW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06E10310655
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 12:10:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756383028; cv=none; b=RYo192AhjS8yikZgJWdQ6ZCvZ/LCZGvagRigGN5/Pr4eV6hdBJJyKVNRzq03JiEvsK9ixmTVwWgvFmKUDTwapmOH2+eWuK1Qzmq/azaNAqihu7zlYz0aE+akEipPwjJ1ai8wnh0Z15m7IjTlHIwtJ4l1Mx9B4kp/67XR5V2RG7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756383028; c=relaxed/simple;
	bh=n8CibSDGW6LOAsbVMBvzXuiN9JBP2yv07nnGPm97ghY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=CuUtPjkx7LuT0DtdH/WsOsBft/dATzNrM2PZ/IhjxOvCWPJH6aVXulhdeQVDFE9p9BLDYD8AsXApKLP61/ngJpUHwY22IcltPUqp8MwMLWjUQDwtJ/HK2vQrF4eka3RwCFURshSgD7ZsQmbBbHBTkcHBfjo7k1BU2JHlRP3LB4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AwrcEOBW; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57S5F2B4022920
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 12:10:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QD2A9FXdBy8jgphnzP4Dp1Qnf+lFGk8RL2fW6YxOKeo=; b=AwrcEOBWI3psTFQH
	N34qF8P4UKb0GSAtBTOkzzoXlCkmIrfFRLCJ5+C5lOv6SLFRYkDZt0xy0E0lB7Xn
	fFRCZGO3/8B/509YpwWTesZTO3bE5Srt1Qc/jU+AZfJS8mYSLf+PQlE98/nLXfKA
	38fUi3AtnRXg14ZfGaY0dUyvjCvNNACRqYeK9jcg9x9MBoIdS6BTGtM8AgVsKasl
	rZyXrxFG9NKZNxJy+zalmDo11nJgHBenWLUrG90QJFXfXoByc6vlDJKtPdJ4j+Ok
	2ELVj972r3nzB+42H4BtLcgMjuyJdOFKpdaiq0nMoX8YjP+iEX+f3gwrh9OWV4dt
	1Jo0TQ==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48q5y5qwv0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 12:10:25 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-325ce9b32baso1127317a91.0
        for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 05:10:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756383017; x=1756987817;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QD2A9FXdBy8jgphnzP4Dp1Qnf+lFGk8RL2fW6YxOKeo=;
        b=pnWe8rq4SgKGc98QXBSQuVTGtt9OrSDnJDFzqJHlUlrtw/DZih0S4iUvWuSSb04SP/
         BCbw0nJYzrIkVh0Q+l1OC5hBrekFr0vmA0D0CYpNJtM0AMVgP+PVTxzl+EEzY1T3Fyht
         lW1R0/yNF7VpfdrZq98vdcVJ8dVeadYZ1utm8Ps04KYiyM8XLP4UjuvJ7P3jOIcLgn5Y
         MC/cWTwho+yJsxnywVN2V+Ww57znRnk+1/h1PHoG4mn8petflaMf5aox6D0e0ZrJFWXe
         1yP1/sWugFzwAAMjtPAAfmV2jT4O65Iyb27u0jk2IET0rRczDZSoEEYye8dcL6WyzoB/
         t7tA==
X-Forwarded-Encrypted: i=1; AJvYcCW1mX3ha183CGsRKirRjLR/w4zvEaqnNlMB/n0qOzrxuTCVnyTdyQYV+Zr7lHAv4RZfj59cUZwn7LBU@vger.kernel.org
X-Gm-Message-State: AOJu0YwBCcwANwkDTBTv5s+wkWv98125S4ksCcCQwdYkMtNkQnvYU6+m
	nOg5QC8R1yg8iySYVfZUyqnNknt9PBR/Nj6k7XInHJeXIQIJcTMvDIxsJsUOuxCYmN+mAKYRSAm
	RTlg1YNAFu5WzH6Zxmu+fEBlJSyttFXp8V8G9MApV+ODrD/ydH9v8f2se/KBmwOl5
X-Gm-Gg: ASbGncvVzST70FtjV+k09q6i1FmKRNqp86T27+eVFhu/yOopIyEuYUlwl/AGEyjfoEd
	gc+GYXwqzr4EJ/9gFRll2h3OwBZS+HBvC2PR2NR4nRaaBG+xykCluVG5SvYN2++nsoc0fAcoH9R
	15uzrtxwQs8LGUkLdWcFT0FSKATr2ci7T5eio1upmiwZ1XXIWLEqq7EncjejP4sM/AeLxSRVK7P
	lHGu4C6W2Tx3Ld/kiqyHAhErAwj3bvuLACwRkY65k8QS/VxzTjllDx1ggLDdbnPELcqvvqzUUmx
	TNP9bS+NrXqFyB+9J9XpI8ElxZRo8Ihky2/JnRlCGzAYODHz6YGBCH3nFZn8HvQwjuu5qE3Ag3c
	=
X-Received: by 2002:a17:90b:2ec7:b0:2fe:85f0:e115 with SMTP id 98e67ed59e1d1-32517b2f78dmr28934707a91.26.1756383016779;
        Thu, 28 Aug 2025 05:10:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGMU0B8A5NXSc4XW6YWiuMgcNVOratxHDn2mKFqdBmgUSXAIgy8tSO3FCpdWkWDpp9LMEmetw==
X-Received: by 2002:a17:90b:2ec7:b0:2fe:85f0:e115 with SMTP id 98e67ed59e1d1-32517b2f78dmr28934664a91.26.1756383016208;
        Thu, 28 Aug 2025 05:10:16 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-32741503367sm4019070a91.0.2025.08.28.05.10.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Aug 2025 05:10:15 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Thu, 28 Aug 2025 17:38:59 +0530
Subject: [PATCH v6 2/9] arm64: dts: qcom: qcs6490-rb3gen2: Add TC9563 PCIe
 switch node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250828-qps615_v4_1-v6-2-985f90a7dd03@oss.qualcomm.com>
References: <20250828-qps615_v4_1-v6-0-985f90a7dd03@oss.qualcomm.com>
In-Reply-To: <20250828-qps615_v4_1-v6-0-985f90a7dd03@oss.qualcomm.com>
To: Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        chaitanya chundru <quic_krichai@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, Jingoo Han <jingoohan1@gmail.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>
Cc: quic_vbadigan@quicnic.com, amitk@kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, jorge.ramirez@oss.qualcomm.com,
        linux-arm-kernel@lists.infradead.org,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756382994; l=4925;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=n8CibSDGW6LOAsbVMBvzXuiN9JBP2yv07nnGPm97ghY=;
 b=U2c9vFnZy5/c1yfkChdy65ugAsH2zjxUx3I6kV/ChW2PovrY+W+IZJuZ4D10SvAyAPCjD5a60
 SELE5P96AiVB+6sziwPSWmlXNVny9jm3ltfp0jjoGFqBdZMPfU/eMzx
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIzMDAzMyBTYWx0ZWRfX6vfP7AnfxXIU
 4jogFIDUcnadR+17BvVv259yOL4TLFM6l1gFuWCTO92in4VnFRN/1+TMhh0ywbHy3KdSH7NYGC+
 QNvPt80gs0TwOZywqz+hdFXzPgDXupAVpD1b9BQTwcY7GL0SoVdcpvZGTkvZDPFcVlxW69PEzrQ
 gU9YX9UrzlpjmIzw55XW3ynrauhOUSRwREH/R0Cs7laumtF2jTMozVekbWp8gwamaw5R1oRJ1UH
 VVUP+ZO23KbVybB/UKctn7DR0bgxFLIveQS2CJuQprjZhciIeeuWp7q0gFsoUNvG5Zb61/jk9mS
 mUKi05I+WC0eH/J+DUIizZ87Fh2DC0gTgFriR45+tgMHUXPo5XGL/5W0NmaEP7H1nDSIA2eRuSz
 L+nqfwwh
X-Authority-Analysis: v=2.4 cv=Lco86ifi c=1 sm=1 tr=0 ts=68b04731 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8
 a=KKAkSRfTAAAA:8 a=UN7QK-OhvXrGNVVRcS8A:9 a=+jEqtf1s3R9VXZ0wqowq2kgwd+I=:19
 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: E6nxcsJlqF5lOf4YJ6cHnbyktz1x3_rs
X-Proofpoint-ORIG-GUID: E6nxcsJlqF5lOf4YJ6cHnbyktz1x3_rs
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-28_03,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 clxscore=1015 malwarescore=0 spamscore=0
 suspectscore=0 phishscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508230033

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
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 128 +++++++++++++++++++++++++++
 arch/arm64/boot/dts/qcom/sc7280.dtsi         |   2 +-
 2 files changed, 129 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
index 5fbcd48f2e2d839835fa464a8d5682f00557f82e..1dc4b498d39565398f83f9bfecbde19e68a61030 100644
--- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
+++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
@@ -261,6 +261,30 @@ vph_pwr: vph-pwr-regulator {
 		regulator-max-microvolt = <3700000>;
 	};
 
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
 	wcn6750-pmu {
 		compatible = "qcom,wcn6750-pmu";
 		pinctrl-0 = <&bt_en>;
@@ -834,6 +858,78 @@ &pcie1_phy {
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
@@ -1039,6 +1135,38 @@ &sdhc_2 {
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
index 64a2abd3010018e94eb50c534a509d6b4cf2473b..7a840c90505e83b3c233ab13c53be818824c9b8d 100644
--- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
@@ -2294,7 +2294,7 @@ pcie1: pcie@1c08000 {
 
 			status = "disabled";
 
-			pcie@0 {
+			pcie1_port0: pcie@0 {
 				device_type = "pci";
 				reg = <0x0 0x0 0x0 0x0 0x0>;
 				bus-range = <0x01 0xff>;

-- 
2.34.1


