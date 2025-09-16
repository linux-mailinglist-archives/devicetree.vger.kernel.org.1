Return-Path: <devicetree+bounces-217914-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 33A9CB59B61
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 17:07:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AF5234863D5
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 15:03:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0792834DCEB;
	Tue, 16 Sep 2025 15:00:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RYXPikbr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AE5136932A
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 15:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758034836; cv=none; b=L8mYdDle0k6d2o3Dg9GYQe4a/kSdgfEpP820JYGh1Qa0yHKUerDap7RnfMYvj8WnyDkybDV4W9oSjMabspJhnheyDwMG9g9HXZUSFOkdSeWiNBmEnxGEefuixGzV+pVaZvr6hanCZruiCLIhGyu7eFaxIh4g7/jIyzHNU8zl4uo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758034836; c=relaxed/simple;
	bh=EVxv7pTuTXtbJBbTq1cFIyCcb5+PnMhD77kH76TEvKM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JB0mOFy4ifriX5x8TJCjGAMXnptoxDYaJdu/EPouoUvj9lWnaHZh2IrGXQnRIa/wkz+VM2JezwZGZpOztqltEaYQ8qD/4vJW3vpUT0k9cwNlos8OInEHZjiDFyUkS1I/DSZejPtvNn3HaWJ3LqmExZj6c3c8c6qN4SL5aSKYZh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RYXPikbr; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58GA56pu005286
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 15:00:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	lP2WRzsTd7EkrIRJP7HeDDxQJ4fUG5rGQbk5fNbcD/c=; b=RYXPikbrLDGlEhvD
	aVn9+vYOfZluHjfcYh7dop1N5HQXItlx7J6vIlux9taW3Ksr0o0IFBiwPtp04y8z
	XdzMId+eKnYMG3w4fG5L9BkgFmq2ieC+YdcZsXVbqKDx2+pPxfgBULQ/Kci7hPSJ
	5bKX6JulQfDINT3Pc0jSZ2wbjUOGdIjDiLGwoy6VmFP0tZiMTvJSwf0uNjrUyqns
	0t8ftDLBb4VB4SC6OmsNgZeIXnAyrW/5t6G4x3aPLOl2ShEx+stZ8LbIru2iK39d
	fRDf+wQ7W2CIfRQyvDzH5ple0UZIdf69lHFubwY8M+020xOX74m6pK/6R2UJDojP
	7eCBEw==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 496g5n4x45-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 15:00:34 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-265e92cc3aeso25971365ad.3
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 08:00:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758034833; x=1758639633;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lP2WRzsTd7EkrIRJP7HeDDxQJ4fUG5rGQbk5fNbcD/c=;
        b=bbgDD64i/oTBNMe/G8FGHsrQh5ZwY79U+LxvORpy0XGonAOSM3QWiwWzViZacPUpqx
         uP8JQhq7rfakNAujeyuGE/93Ps1AqqVttVsa6tGtUiGSrlq0OUy8sjkNFAyBbs0UUsVO
         sbA5oHQvK0L+qk6ej9PjjYgrYjrAEi82VOswjZkHl4b5PuYKRwPyiADUYmppRq+hJhod
         yfPquHgrPyCrY+H7jSqxl2zYw7WEcxLaXd1EsSVuOY3CvKNljAnD3jfFGqJ62PVaV8/k
         doNnZqTcCH5zIjPf1/kbSakJ4xALmG/dO2Arf2Ust/esD/7Q10F7/89z4uwsikkIVE5i
         tsyg==
X-Forwarded-Encrypted: i=1; AJvYcCVIT5PJWr3bmcBR4z0mANXoVXHi+Qozc+ijs8WyldR7PjrorRXLVdaoN/HzGScUuJMCCRVmAnKnRBZB@vger.kernel.org
X-Gm-Message-State: AOJu0YznjdNphdfr8lQ6PikeQi4X73zJXrPL/yYOIq1oBHiaIuXULvsw
	vPYYHxSGlyDPtdK3Cr1R74JMwQ4NJSuKHmCABvOqDPhi8PcVj1ZbinJB8M7kU2uPeu8XnpSbopS
	hac1uhXwmkRCK+GUKc+J7blC6CQL9FHPW3paUKljmzt8xbO44iwNj9wdUpPsiklyl
X-Gm-Gg: ASbGncs0yBsCnzb8HN4iS2E+CfZolRky0TreRhVxfqXTTNcpdv6UmaB+NDYg1hJUoFi
	3+ejApchrGrHHCt+09P54JqvxnSEVQ/BuU1vC8mvWZgMJG86XGkBbdDRGOkWYVbZ7V0pEhv+Mbv
	QeTLwB21+3269ja1hebiW2i8d32C+v7+JAkGuUPJqRBlbzykIxzfD5KFPXBfAVsKM6I+cbph9tc
	CSNeV6JiPb4iXpMgf0djvW5c1OGgrvFcGtnjyNEIhZD3T5U3yEqEYqcMKypiwzOAb4U46iM9+Bd
	gBr1fEPdaCek1eYvJ9JeqcMCpGn1AaLaybGeT+gcSoRTWTpLP+wPsiO0hAC2EWvUhPZE
X-Received: by 2002:a17:903:2451:b0:267:b697:4ea with SMTP id d9443c01a7336-267b69714demr78103065ad.54.1758034832021;
        Tue, 16 Sep 2025 08:00:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEPBKc4oG1+F9yCdpRJby4Lh3p3lSPbZUVoBQDNJrpw1NiMFGEm/RzOKKvH0qJ3DfP5gn/i5w==
X-Received: by 2002:a17:903:2451:b0:267:b697:4ea with SMTP id d9443c01a7336-267b69714demr78101405ad.54.1758034831075;
        Tue, 16 Sep 2025 08:00:31 -0700 (PDT)
Received: from hu-wasimn-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2651d2df15esm74232615ad.45.2025.09.16.08.00.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Sep 2025 08:00:30 -0700 (PDT)
From: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
Date: Tue, 16 Sep 2025 20:29:32 +0530
Subject: [PATCH v6 10/10] arm64: dts: qcom: lemans-evk: Enable 2.5G
 Ethernet interface
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250916-lemans-evk-bu-v6-10-62e6a9018df4@oss.qualcomm.com>
References: <20250916-lemans-evk-bu-v6-0-62e6a9018df4@oss.qualcomm.com>
In-Reply-To: <20250916-lemans-evk-bu-v6-0-62e6a9018df4@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758034770; l=3663;
 i=wasim.nazir@oss.qualcomm.com; s=20250807; h=from:subject:message-id;
 bh=d0901W5oS2IB+UAGgSU2EHYZ0jt+yeCd47Ja4xYspro=;
 b=ypJXIiKLDhluYwEsejhys+yKyfuxi1sg+qQaO1HJXdGZ4WTiJYwLq4HfkEfkd5s4xzJmLRF21
 UODc1p62681BMPylr/ac7aKK2O4W6/rrLTzhx/ct6Z0igfDR2CJ1oM1
X-Developer-Key: i=wasim.nazir@oss.qualcomm.com; a=ed25519;
 pk=4ymqwKogZUOQnbcvSUHyO19kcEVTLEk3Qc4u795hiZM=
X-Proofpoint-GUID: gh-kIlQxi7N1bcYul24qYNnbrDxCbVAK
X-Proofpoint-ORIG-GUID: gh-kIlQxi7N1bcYul24qYNnbrDxCbVAK
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE1MDA4NyBTYWx0ZWRfX8HeLTU4eoQBi
 pNWs6U75P/P09QnBF5kBZvsEYKXUIUri6jxCI82fw0zRvx6dM9GZAIunnpDTNruXBg+9MQkpCWW
 +chOlh28YZ3MAbv/3uJyYRTQJAxete69W5Xd9LYmySpjtRZO4Uezjw9qfzkpxWtf1B5GTdTNLO+
 G8/DV00A6WttMf1t8c4XsOitMyuOkSjx+udiE0rkkSc4/3cL7GBpuhN5kLQRX3cz0P9ChvOYfjQ
 eWNraCIbl7CQR0+VPYu6BnEdRtsXLW9OKwKhLBOMEQcwC8k/rJfB/oAETC5Mondl9pbCyBeh36B
 zChvKHdcvY9JUa4zESFIntvD856v3f0XRAlXakgl7W+XDiO2H2I95pk2nXf8UK/L8Y1zlmw5yrJ
 rVpM7CDA
X-Authority-Analysis: v=2.4 cv=SaD3duRu c=1 sm=1 tr=0 ts=68c97b92 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=z9nD9lg9_nmlpaFE3BIA:9 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-16_02,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 adultscore=0 malwarescore=0 phishscore=0 spamscore=0
 priorityscore=1501 bulkscore=0 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509150087

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
index 0170da9362ae..d5dbcbd86171 100644
--- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
+++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
@@ -17,6 +17,7 @@ / {
 	compatible = "qcom,lemans-evk", "qcom,qcs9100", "qcom,sa8775p";
 
 	aliases {
+		ethernet0 = &ethernet0;
 		mmc1 = &sdhc;
 		serial0 = &uart10;
 	};
@@ -352,6 +353,94 @@ vreg_l8e: ldo8 {
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
@@ -404,6 +493,10 @@ nvmem-layout {
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
@@ -552,11 +645,33 @@ &sdhc {
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


