Return-Path: <devicetree+bounces-214224-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 178A0B486CD
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 10:25:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BE2A234219E
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 08:24:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C19352FC869;
	Mon,  8 Sep 2025 08:21:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ghv8pI1J"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D3952FC019
	for <devicetree@vger.kernel.org>; Mon,  8 Sep 2025 08:21:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757319674; cv=none; b=HjFsvNNsNXA38RKN469be2kAxJQf111sy2CXRusE67hcN7ujiht4Dm4+ToTSq4aYUyP4jmq85zJ7sxSe8FOIWSIQQZW04+qwL/2VXFdsa7uCkDFCO1kjEIfu8mZbuq+w4Y6po+VcioPTNi13jFdQBzxXdZdP/xarTFo+v77VXA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757319674; c=relaxed/simple;
	bh=ynWWfmuOZH738K5h1hVDK+fLyCGdjyFsLL3ly6nUHqo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=OEWeFTiSDKIKmY0UovPBPY5r7l7+0TBbJdz7fvq3Te2lQWdxj85WKUQe6jVTaqlYPtrBfzjEC5K1s2qhyF8zfRb6Sv2jr3LGkhxD67p5nTUaXD8jDOWwrTDDf6ulPEIhmSJITnEMzbevRzSrx9ejlblGZMU+O6FHn81J0N/kDWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ghv8pI1J; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 587LtxAf014843
	for <devicetree@vger.kernel.org>; Mon, 8 Sep 2025 08:21:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kUehLoxPYFguIke0YZr7WflOvoeqoE8uy3ntTtXR3EY=; b=Ghv8pI1J01x6qXlw
	EDFuRbumT1PoHo+5KtQGm86gkFXXo66O9ee6HrQNcwLjLIaVUU1v1lEdZeLDNU9M
	b7vCz2hsWH573BT+aBipWZYL3e1WccaB+kOyRitLKR0pT6Qk422BG4M6F+QsLha1
	pVFwVmmVPsiVdmiTCljagLT3vMbWSG2lEPPeObUDOucaYgfwpNPv61qLjnUAYvr8
	neR2DO2tu6asW5qJBHLVw9Biy49s6UDyvnaJFDwwRSEpXMHhOMei5a0p3kuLV6Fy
	r2NY5BwpYEL4EigavpcrkqZuBpoajtCITuwJN3r/BhS1scKN45ewzrFtg//nbObx
	3reN9g==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490dqfuq6n-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 08:21:11 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-24458345f5dso57839245ad.3
        for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 01:21:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757319671; x=1757924471;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kUehLoxPYFguIke0YZr7WflOvoeqoE8uy3ntTtXR3EY=;
        b=H4yFkB6hlbS8osPETpGFEhQdt7PQKpeilPj9iaCMsaTDU8pPhn9VWfN4VJTlBEUFYZ
         +cYNgJNHP0o+223AyR8lrpY1rm2+cuGk+JMwRdXnv7l+1qw7gySXEx9Uz5zbBVQSCOY/
         Jxl1EKFSce9ss6/YUF844D8uUZRhFSrw2vAPo4NnRwS00W/O0+xjxXfysQDZ/4EvHV9v
         NbdlEpvgeOrtxr4FrWHxi2Qxz4FTvTsk/Kl5LqkZmq6hsbENEaROXdHcf+dwydF2Hs25
         nsLxKIJRYpepmRgSXZgOlNhlxOwWVvUEaUQlEJM7qbr7OMSHr7afS7iKa4X2cM6TYF5X
         dVsw==
X-Forwarded-Encrypted: i=1; AJvYcCXadXillA8Po0luIPfG3egv+zfeiXBORDCBu3O3Su6V01090719NafJVv3Ieea4QGIdn203VVrMswe5@vger.kernel.org
X-Gm-Message-State: AOJu0YzeHWOEoBzQN+IvyyTCiOqjNWoN4gt/vOg54D1TfuSWLBzhIDKB
	WZ9Msns9EVpC5KEtIwZz0fTPjcF/so942G+QTkoNQkycCuYJ3DTQ99MO5AWBdojBlj8luqd7h2g
	MNAmvg3cPUU4Pet+T/tMOFH42pv0PGcfLJlM2zDGBj+mrI9ukCVT1sugTQF9GFGu/
X-Gm-Gg: ASbGncs59yck6AqJ3CGIUjk5n2NdPtsv74kHNDiKD8K64wNZih3GFiLs/WlxFh64M6Y
	cke93DcHqcBRUVL4ktFd0tGjzyQ7elQ6LO/Pfydw9QGXmkCJXOadiTo1jBXT+0ku8kphSUbzyfc
	65oQZC6yxCcxgEW91GOGR22SEfPm4VYBTryMd7OjF9g1NjXj8s3EJywTz9s6lMGKCJUp4hC3hlt
	rsyOgJOzcGjy6spGCHSvAhmpgn+Cr0afVVhCXR6YwA97TKR9dkc4eNZsIeM9pCTLjytuY435gjm
	jv97eQ2QIMkYKmBBByB8CsDPzrDtHaI3UG1xChQvHvUxaqSUQgREk1PMfot2rsrJz5/H
X-Received: by 2002:a17:902:e5d0:b0:24b:2b07:5fa5 with SMTP id d9443c01a7336-25172291ab5mr90918655ad.29.1757319670774;
        Mon, 08 Sep 2025 01:21:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGUtcSUkOkO+dTfuatcYwsPYrubU+qI8Lp/5D/7A6MAMWz8SmZSETwtGcwyZVbO8TqpPMEBRw==
X-Received: by 2002:a17:902:e5d0:b0:24b:2b07:5fa5 with SMTP id d9443c01a7336-25172291ab5mr90918415ad.29.1757319670296;
        Mon, 08 Sep 2025 01:21:10 -0700 (PDT)
Received: from hu-wasimn-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-24ccfc7f988sm104852845ad.144.2025.09.08.01.21.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Sep 2025 01:21:09 -0700 (PDT)
From: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
Date: Mon, 08 Sep 2025 13:50:02 +0530
Subject: [PATCH v4 12/14] arm64: dts: qcom: lemans-evk: Enable 2.5G
 Ethernet interface
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250908-lemans-evk-bu-v4-12-5c319c696a7d@oss.qualcomm.com>
References: <20250908-lemans-evk-bu-v4-0-5c319c696a7d@oss.qualcomm.com>
In-Reply-To: <20250908-lemans-evk-bu-v4-0-5c319c696a7d@oss.qualcomm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>
Cc: kernel@oss.qualcomm.com, linux-mmc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, netdev@vger.kernel.org,
        linux-i2c@vger.kernel.org,
        Mohd Ayaan Anwar <quic_mohdayaa@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Wasim Nazir <wasim.nazir@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-e44bb
X-Developer-Signature: v=1; a=ed25519-sha256; t=1757319602; l=3663;
 i=wasim.nazir@oss.qualcomm.com; s=20250807; h=from:subject:message-id;
 bh=T8ZZhZAuKSNtjHcghH+T9PxS/Yw/QtH5Z1v/0Byz0pg=;
 b=Me+SBvge5FuSQ1h8JklnOvj+EWfveHntHOtpm/71ellh1kiesdCWibSliFZA3LDIZIkIId9KS
 GCSUJXHdIjIDvfCH1de1UK++8Mbfu+gi1CF2V632Znhm1E0jw896p39
X-Developer-Key: i=wasim.nazir@oss.qualcomm.com; a=ed25519;
 pk=4ymqwKogZUOQnbcvSUHyO19kcEVTLEk3Qc4u795hiZM=
X-Proofpoint-ORIG-GUID: IaHqoWC6qR1c5tmYE03J9wcHbkoMB_0g
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzNSBTYWx0ZWRfX3l5nNrZZh11U
 9hk40k9+MQSSAhVhjZED5A0WASw5aLggKC3jl9qV8v4Acf2Us3JcxfoA3i6e3yptWwh11K439lv
 B/bq9+IhIhUYtzsNrsAWtKZdkVvRzXXRuA378UKiCwEaspBAItKr5bDNU/Oxn99lbYktZUZdvGi
 HRd0ngTzuAhM9C0QKmC9n+xw2sSX7Xl7N/741Lqimdiu+angIGrguVYLjGO/anabQfBo6e3s8z2
 HqYL/iwRYJrca7NnCFRNse3VKgj+eLY3x4HvniPnCLxBBxRpYPtwigPkJD55EpsyLn9RfyFQ6/D
 GAJCC3ig8Ray/RmuU3b+A+YMSu2IdWTMhpty6TdcBQbx6nNdJiKZUWUznm741VjyN87Lu5u5D8a
 ZRgr2xQM
X-Proofpoint-GUID: IaHqoWC6qR1c5tmYE03J9wcHbkoMB_0g
X-Authority-Analysis: v=2.4 cv=N8UpF39B c=1 sm=1 tr=0 ts=68be91f7 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=z9nD9lg9_nmlpaFE3BIA:9 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-08_02,2025-09-08_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 malwarescore=0 clxscore=1015 bulkscore=0
 suspectscore=0 priorityscore=1501 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060035

From: Mohd Ayaan Anwar <quic_mohdayaa@quicinc.com>

Enable the QCA8081 2.5G Ethernet PHY on port 0. Add MDC and MDIO pin
functions for ethernet0, and enable the internal SGMII/SerDes PHY node.
Additionally, support fetching the MAC address from EEPROM via an nvmem
cell.

Signed-off-by: Mohd Ayaan Anwar <quic_mohdayaa@quicinc.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans-evk.dts | 115 ++++++++++++++++++++++++++++++++
 1 file changed, 115 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
index 60e365a13da3..3e91ac928fa5 100644
--- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
+++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
@@ -16,6 +16,7 @@ / {
 	compatible = "qcom,lemans-evk", "qcom,qcs9100", "qcom,sa8775p";
 
 	aliases {
+		ethernet0 = &ethernet0;
 		mmc1 = &sdhc;
 		serial0 = &uart10;
 	};
@@ -300,6 +301,94 @@ vreg_l8e: ldo8 {
 	};
 };
 
+&ethernet0 {
+	phy-handle = <&hsgmii_phy0>;
+	phy-mode = "2500base-x";
+
+	pinctrl-0 = <&ethernet0_default>;
+	pinctrl-names = "default";
+
+	snps,mtl-rx-config = <&mtl_rx_setup>;
+	snps,mtl-tx-config = <&mtl_tx_setup>;
+
+	nvmem-cells = <&mac_addr0>;
+	nvmem-cell-names = "mac-address";
+
+	status = "okay";
+
+	mdio {
+		compatible = "snps,dwmac-mdio";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		hsgmii_phy0: ethernet-phy@1c {
+			compatible = "ethernet-phy-id004d.d101";
+			reg = <0x1c>;
+			reset-gpios = <&pmm8654au_2_gpios 8 GPIO_ACTIVE_LOW>;
+			reset-assert-us = <11000>;
+			reset-deassert-us = <70000>;
+		};
+	};
+
+	mtl_rx_setup: rx-queues-config {
+		snps,rx-queues-to-use = <4>;
+		snps,rx-sched-sp;
+
+		queue0 {
+			snps,dcb-algorithm;
+			snps,map-to-dma-channel = <0x0>;
+			snps,route-up;
+			snps,priority = <0x1>;
+		};
+
+		queue1 {
+			snps,dcb-algorithm;
+			snps,map-to-dma-channel = <0x1>;
+			snps,route-ptp;
+		};
+
+		queue2 {
+			snps,avb-algorithm;
+			snps,map-to-dma-channel = <0x2>;
+			snps,route-avcp;
+		};
+
+		queue3 {
+			snps,avb-algorithm;
+			snps,map-to-dma-channel = <0x3>;
+			snps,priority = <0xc>;
+		};
+	};
+
+	mtl_tx_setup: tx-queues-config {
+		snps,tx-queues-to-use = <4>;
+
+		queue0 {
+			snps,dcb-algorithm;
+		};
+
+		queue1 {
+			snps,dcb-algorithm;
+		};
+
+		queue2 {
+			snps,avb-algorithm;
+			snps,send_slope = <0x1000>;
+			snps,idle_slope = <0x1000>;
+			snps,high_credit = <0x3e800>;
+			snps,low_credit = <0xffc18000>;
+		};
+
+		queue3 {
+			snps,avb-algorithm;
+			snps,send_slope = <0x1000>;
+			snps,idle_slope = <0x1000>;
+			snps,high_credit = <0x3e800>;
+			snps,low_credit = <0xffc18000>;
+		};
+	};
+};
+
 &gpi_dma0 {
 	status = "okay";
 };
@@ -352,6 +441,10 @@ nvmem-layout {
 			compatible = "fixed-layout";
 			#address-cells = <1>;
 			#size-cells = <1>;
+
+			mac_addr0: mac-addr@0 {
+				reg = <0x0 0x6>;
+			};
 		};
 	};
 };
@@ -500,11 +593,33 @@ &sdhc {
 	status = "okay";
 };
 
+&serdes0 {
+	phy-supply = <&vreg_l5a>;
+
+	status = "okay";
+};
+
 &sleep_clk {
 	clock-frequency = <32768>;
 };
 
 &tlmm {
+	ethernet0_default: ethernet0-default-state {
+		ethernet0_mdc: ethernet0-mdc-pins {
+			pins = "gpio8";
+			function = "emac0_mdc";
+			drive-strength = <16>;
+			bias-pull-up;
+		};
+
+		ethernet0_mdio: ethernet0-mdio-pins {
+			pins = "gpio9";
+			function = "emac0_mdio";
+			drive-strength = <16>;
+			bias-pull-up;
+		};
+	};
+
 	pcie0_default_state: pcie0-default-state {
 		clkreq-pins {
 			pins = "gpio1";

-- 
2.51.0


