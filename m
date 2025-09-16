Return-Path: <devicetree+bounces-217809-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E6BDB59442
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 12:50:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 004AA2A7CF5
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 10:50:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88EE93081CB;
	Tue, 16 Sep 2025 10:47:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DImXAdby"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC1D6307AF9
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 10:47:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758019679; cv=none; b=PpSslE4Q4GHXmzPz15TVbCxjcXi8ZoVmjWWj3jKU29r/79T8Fun0blxumtbMEQjzlpN3U7WyEySPx2/EUOZKJOVKaskuaOXJ9C8V1KWFx4E0eYT11dL+LWtFaFuWkaF/+nVpsBzq9TpBrqGKJiSRQc9pu2+2gygsfUXVNtIbEUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758019679; c=relaxed/simple;
	bh=EVxv7pTuTXtbJBbTq1cFIyCcb5+PnMhD77kH76TEvKM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ZsZQI2erEEZfGfm1MQCjgap/lUItGfy8hrgGPhNeFGe8mvwja9Ctilw6R+I6WUbfdvtagKL2Tm94N/1oQlmBUoGPS0pjsqPKlfK1iJDufJIdCgPuJ7b704TFw0ebT/02/yOv4sLYXD018pHvkR8p2qZTNh+5vq/bth68V7vA7DI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DImXAdby; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58GADP6T019573
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 10:47:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	lP2WRzsTd7EkrIRJP7HeDDxQJ4fUG5rGQbk5fNbcD/c=; b=DImXAdby+60nerr4
	Dzmp+kxlH5hu7V/UUx7cNOaGy4IpVMbvDPpX6nLvLVBRuTqpMdj7KtzLFF20lKe1
	h8jdrKqgHs43vf70Duy77C/ZC3FDGSwkK9bR7ayq4d1GA6WaKVAWk+lvKJtAYc2J
	KEB/qPMpzZzVtRdwwDPj1VqIiXMVx5IOSp/rQS3wKhWtoLtwksIYvBlgyXDF3bYE
	F22adXU3/lQQAG/m1uiA8nLHx+M6/A1ZGkLaqvdF4TPZWE4xgwoXa1v8HZbCqpRF
	BTa3mbsLRK7vzbCaGnECQUPYuI8xFIrK+pm0aSTYdDoLjCX5dkFgQ3F/40z8/0RC
	d2BEtQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 494yma8j6q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 10:47:56 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-25d7c72e163so81527245ad.0
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 03:47:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758019676; x=1758624476;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lP2WRzsTd7EkrIRJP7HeDDxQJ4fUG5rGQbk5fNbcD/c=;
        b=hVnZFT2aeb1caboSsI6RC8CKynBF+5dj3v/vZtodXWO4f5NrbfOUToo0e79XVwgj9C
         VfmRfNL1a7wLv/zQHojPfdgjmTq+VPPDDh4B5QJoVX04rMccjwkMAnEuVFfjBHwvpCfR
         R2PlBq8t8rHSvM4Mdw5itHXRPPqv14wZv406aWllufj7XosdWYFzJmsZKvIX/7d3sMAk
         kd4cB1OrTBZjrEeePtxq7Smm2X6V7fxZQKFSDfW/F8pxM+8emyuJfxPeK0Ynna4TQb6c
         S0BBCZNaU7uKNfcQcxI19bKeY1AEM9RBEylFDDD6cEu4JxELqnqGaXlEBwAph89F12tv
         Pckw==
X-Forwarded-Encrypted: i=1; AJvYcCWLnzksGMuD/+ojcfj4CNs+cIK7CjUDtkq/WRHWkQIOH8WXtVJJPVRd1PEfw4ESyYwPEL+6sPItTrCC@vger.kernel.org
X-Gm-Message-State: AOJu0YwUjg/DmoKjF2PaZGuYzES43WAdHUXaKLUfTwAcZp1SiRCOYgiv
	7c5x1vUo6eGWjXIb1GmwzE061hptbIgKvs9dcUFcMSUe0WF8rCh2/OvVNnKkO9PmkCvRExlH725
	suj746zrF38r8MMYq+absJp5/Hdykqpi3o4ahAzmqKJm8rH2CdqTdf6LdXP2blxLR
X-Gm-Gg: ASbGncumd25Tahr8fCKI+rDCmaZ40hMQ4qQTta0n0wyiI8hCM6gV4TuDlUT5Wee+0xM
	zHvr2LsJqh297TO7juFgiw6i9sNztdbqqg6bPPgjRQiZMJ1IKRSeup3Z4y3qSvlhv9VlhZ/kQ5n
	pBsNyGve+2/gGx+gbXsMompycqbVIN8lb2p27D+57BW4NqL88Nb3C7AXsnnHz3kSVzM605pODDU
	GOX4ba2aKvk6simes3fKBqb6LiIasqB0cgEhIO/ZAiEEn/zPrwjJvNbkHIlUdsZhIkj2yyeCPlR
	nP39eC8MlOuQI5P9VTbpcMrvYBA3TOucZVudQZL5h/kqLhg9DBDsjyZcKAb9N5WHtBff
X-Received: by 2002:a17:902:d2c2:b0:248:96af:51e with SMTP id d9443c01a7336-25d27d20531mr220848285ad.45.1758019675668;
        Tue, 16 Sep 2025 03:47:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGhaMhuKnR3pAjBpv8t60tJ004Bz9yN6AtGwrZpjJVtA5m9XzDgoW9T0S6/ba9fgL6bzap8Ag==
X-Received: by 2002:a17:902:d2c2:b0:248:96af:51e with SMTP id d9443c01a7336-25d27d20531mr220847945ad.45.1758019675200;
        Tue, 16 Sep 2025 03:47:55 -0700 (PDT)
Received: from hu-wasimn-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-267b2246d32sm33122355ad.143.2025.09.16.03.47.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Sep 2025 03:47:54 -0700 (PDT)
From: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
Date: Tue, 16 Sep 2025 16:16:58 +0530
Subject: [PATCH v5 10/10] arm64: dts: qcom: lemans-evk: Enable 2.5G
 Ethernet interface
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250916-lemans-evk-bu-v5-10-53d7d206669d@oss.qualcomm.com>
References: <20250916-lemans-evk-bu-v5-0-53d7d206669d@oss.qualcomm.com>
In-Reply-To: <20250916-lemans-evk-bu-v5-0-53d7d206669d@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758019616; l=3663;
 i=wasim.nazir@oss.qualcomm.com; s=20250807; h=from:subject:message-id;
 bh=d0901W5oS2IB+UAGgSU2EHYZ0jt+yeCd47Ja4xYspro=;
 b=rvMKyY9l1x9ja3pS3CXgVRZG9ysWFnYa7CyFQpUDBx1Xank5T/Mc5hl5+Q+cC0Vj5HTIOF0R3
 kuFZqw2/MK9AoDamBj2yds0dWyb3VbObnvctRJl/8IsH3rpc0UXcQJC
X-Developer-Key: i=wasim.nazir@oss.qualcomm.com; a=ed25519;
 pk=4ymqwKogZUOQnbcvSUHyO19kcEVTLEk3Qc4u795hiZM=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEzMDAxOSBTYWx0ZWRfX8HAshg1P9pu5
 hwOyR/ytGT3SUEPy4rBxLKEpPsaJS0LoSc3AIg4PAotIdOT7+caWRRFC22NrFWrf4V8vbLRSfx4
 YHbfvnESqblP0W/I70cE/4Z/8Kfi4Z/+UIfLea+LUi3DEZn/kkH/tVHBRfD8Ze9MLHKW8kqfpbm
 d5m9R8v84TdWgNVw+9jP+gmMVe2N1w01qZJvrPnWzXjs+L6/ny/e79C/2YQt3LkltwuNdVob8cn
 EuPx1AUjVQa9XTqfzSZNrrPrXhCrNi7LSRsSAhXiBlbBpr7XwL/tRjC2FBNyMK3q3+7l3Zk2c+X
 UtGYYSFlub32Rd+tY3VLMXMV01c+5PJust5YLVPKzdrKCgcbziqv/Z0ZYocKsNmVOoDMT2Cv3TP
 qD1p5SAx
X-Authority-Analysis: v=2.4 cv=cdTSrmDM c=1 sm=1 tr=0 ts=68c9405d cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=z9nD9lg9_nmlpaFE3BIA:9 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: W3Cdkqb7lA_5vlftAoGvoRLv5MWSyRdG
X-Proofpoint-GUID: W3Cdkqb7lA_5vlftAoGvoRLv5MWSyRdG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-16_02,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 priorityscore=1501 adultscore=0 suspectscore=0
 bulkscore=0 impostorscore=0 spamscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509130019

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


