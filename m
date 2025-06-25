Return-Path: <devicetree+bounces-189311-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 78378AE7930
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 09:56:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8EC5B7ADC68
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 07:55:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3805C214A6A;
	Wed, 25 Jun 2025 07:55:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oA7wk0se"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 917E62135AD
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 07:55:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750838141; cv=none; b=ITQfELGJIeaknAuOnZY8aQF7J3/aMuixQMWlaCmLtwsuxsiIlf4pcwtvqa7tJApKJ3E+9WRno3xYd8pXguLSdvtmxEhmDW6OcR9+ESWgMHV4Zr06lcLJHUjiw7Lq5xz2hFOTBtH8gMIfDEzI4fkRY6QaXVs0LHo5mqLQFo0BZsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750838141; c=relaxed/simple;
	bh=qmAaAgyAvFaRCJNeZygFXPW8o2/QgBY/gsAXcTTt30Q=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=FTAhObRLfzJ8ekC8BgeMlMo/pFhzkCOseRBiiqsMrkw3GpBbjOdQj0QVLkusPcuShsDj9xoLicIf7VRn/gtfVLOqvwnxt6Ug4x8ogop8VgpAxfv7Y7S9SwiYUhChXKvRzmrIMlVVzBhlhZM5/3NZGpX0uryi3ZoicMDmq/sjzI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oA7wk0se; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55P5UaKr014612
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 07:55:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	10O1gzx2RVhUKUSFNt+AB/dN8LNlejk69sx6Hj6vKMM=; b=oA7wk0seQf8pjVeb
	fjOxIL1cDnX+v9ER0wE1S59VY9zYVnrb3k28FVF+05lmFLcglzgTykw4YzVCHxg/
	fsWAtsY2/YoT4MOl38y+7uHEUDh4RfGBCdUFtK+bly+8n2jOMbzyzc6l035G1l+D
	8X+/iAVqtk9DbWNduhFVycj6u22Ow0ko7v//fwDJTE/k6nvv3kqRdQBzh2/dQyc8
	7KB5DgjzDGN/v811C1IduIWylWzJAkLiqOrQWwG5aQElh3yolS/MOm3gRG/CP+LM
	u71Qj0Wn1hc/b60rLYEiRiitl1vrW7l5uJ+Nvc/rCDAruH+nbEHO1WOvdCkB44xY
	RS4I1w==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47f2rpy8ub-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 07:55:38 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-748764d84feso8595095b3a.2
        for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 00:55:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750838137; x=1751442937;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=10O1gzx2RVhUKUSFNt+AB/dN8LNlejk69sx6Hj6vKMM=;
        b=dq231vCzR/vJfmvmVe6e5GvgZfjA30EdNqcB/WossWgqD3nPW6GS/IG7GgDz9zH89Y
         GF40rHNajOujmiEt3AFLeKUFqEbQobUNRx2uOOV/pQ/E50eBKkuFEkOobT0Djza1ORr1
         9vNaa56+c2F1mygwU57pRiV0WdOTXOVidU9n1GQdLiZQ5CnrNHDJ7aqxS3HAQesJzVLx
         I0kS1i+2G+L9p+96lrIg8gLyfSkjbqOc7QiMTH6rHuBPRh4VIx3lY3/Uydm+VVF+rOp2
         pLcEfS133QoH0541iWll9N6gwaGDWo13uDfx/EqPdZaQPWg4pdCT2EOgEH2+QsIlIZJD
         5tPQ==
X-Forwarded-Encrypted: i=1; AJvYcCURb7bjRg2nbH7yI4Kyfd0TJnXp+eWY+wKivTl9qBQvEeWVZHiOSzvFuDo27js9V9eIHdjo7NFiaJtf@vger.kernel.org
X-Gm-Message-State: AOJu0YxLkkhPg15pepOQakW12ShfO9rgkpOlfkSzJz3D0i4G6PfgeLE8
	7qPYGleLSuWKFXYYemygmPqOAg399wkeCFngxesC59woSovt6cRY/BP47Yj9cxCqI+m9KrEB0pr
	xFqPrMAOOz0f5VeGufwO48f5kJmvoOn1PC6+8NvTH67Oz7ZF4HuBh4VcZsRoXkDpC
X-Gm-Gg: ASbGnctSG69bjXF0/TXCvemLLRdacr1vKxCjxB4n7qJnVlUz8/AUxiKy+rVzV9oBa6c
	aPLOSdM//DS9i3i8CAHaWNqUtfkyRLl6UZliOpbOhpG13qO9ihUegzD37IoLFIHZFJ/TSdIcYOb
	e5sQqOKZyDjVyGrG5GtRWvKmhB99JqLlcXud36xaPNsILWo8qJAqZonwhE2RYYkQyCelKxfvO4R
	Jpqtk8PdWP6iy+Pfk2+vJtJFwSa8VU2OhyZZx7Ot0qONPijPn1+BGUbpCt5YE2zKGRqlS9tXC+9
	YtdCVD6Fk9EkbrxiC9S5Eef36YrLGgKOPGA17C6pFW2yyDLhBixYHy9JYPnz+EbtLwpfGVjL69Y
	niG7EGRhGDQ==
X-Received: by 2002:a05:6a21:680b:b0:204:4573:d854 with SMTP id adf61e73a8af0-2207f1adf3bmr3113954637.9.1750838136943;
        Wed, 25 Jun 2025 00:55:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHC3jHPZgRF6kJlMuOp8DFSDHAfRZ3QhMCmd78xMwOjAaKhLkEJyX5fbMo71k17lpmzCifvGQ==
X-Received: by 2002:a05:6a21:680b:b0:204:4573:d854 with SMTP id adf61e73a8af0-2207f1adf3bmr3113921637.9.1750838136522;
        Wed, 25 Jun 2025 00:55:36 -0700 (PDT)
Received: from yuzha-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-749c8853133sm3707478b3a.129.2025.06.25.00.55.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Jun 2025 00:55:36 -0700 (PDT)
From: "Yu Zhang(Yuriy)" <yu.zhang@oss.qualcomm.com>
Date: Wed, 25 Jun 2025 15:55:07 +0800
Subject: [PATCH v2 2/2] arm64: dts: qcom: qcs615-ride: add WiFi/BT nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250625-qcs615-v2-2-0f1899647b36@oss.qualcomm.com>
References: <20250625-qcs615-v2-0-0f1899647b36@oss.qualcomm.com>
In-Reply-To: <20250625-qcs615-v2-0-0f1899647b36@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        "Yu Zhang (Yuriy)" <yu.zhang@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750838128; l=4666;
 i=yu.zhang@oss.qualcomm.com; s=20250625; h=from:subject:message-id;
 bh=qmAaAgyAvFaRCJNeZygFXPW8o2/QgBY/gsAXcTTt30Q=;
 b=F2RjplUhdhDnPLL4TvkSqg+/kunIM+Sryysuj8fqy1bInJdbHRTxcCvmjWlIKszBn6OtXSgMQ
 Tt4NF1M0DbqDFYe/0+38Kgiy1A0Q3XNPkVV6KNnTWbRnMw0XQuWagKF
X-Developer-Key: i=yu.zhang@oss.qualcomm.com; a=ed25519;
 pk=ZS+pKT1eEx1+Yb0k2iKe8mk1Rk+MUki89iurrz9iucA=
X-Authority-Analysis: v=2.4 cv=NdDm13D4 c=1 sm=1 tr=0 ts=685bab7a cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=cKvnr5XBRiLjHSnd2BMA:9
 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI1MDA1OCBTYWx0ZWRfX3k9AwUlz2/qn
 9DlxHABmCBEq5WjmADL+JPaOcIK2kAuo6lzonl9QdoozXkZItw/UHeAqk1TlXWvHf7ongmrLr7G
 WHkqr5aupMLk3X98VygbqyOD9gv/X8yuc4xmG5Z+z8c7n5ihK0G/sAa8R6k8W7CqjsLaYfOna1R
 xfCi7ZrM1riYwXWwnPwizpcTKgQ8SI2hKwk1NVCCHcScVuXMIBf+ES0S8bcvrUsuPnfwl+0qXNm
 Y1WPYzpdmt6Cu/R3VyfmXYn4LA/kejbQzm42HyRUvmq56i9cg2yvDQuXQDCYvd0q59RRoECyEAc
 gkKjIzx609+ySdFCKjk1LEodtpJi0dKry0rhu2Q0+IBroz/9+GQhw8lAm9EVvFtmvscACatOkb0
 NKBg436vJPey/UNaDDK38SKDMtcMMiuk5IYUC0f9BSwH91WygeGesjU/m5gRHjatKDa6PBpu
X-Proofpoint-ORIG-GUID: l7oaeFxtSrszNKHyPdSX1jSIrE8HfR_h
X-Proofpoint-GUID: l7oaeFxtSrszNKHyPdSX1jSIrE8HfR_h
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-25_01,2025-06-23_07,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 mlxscore=0 spamscore=0 malwarescore=0 lowpriorityscore=0
 phishscore=0 priorityscore=1501 suspectscore=0 mlxlogscore=999 adultscore=0
 clxscore=1011 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506250058

Add a node for the PMU module of the WCN6855 present on the qcs615 ride
board. Assign its LDO power outputs to the existing WiFi/BT module.

Signed-off-by: Yu Zhang(Yuriy) <yu.zhang@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/qcs615-ride.dts | 131 +++++++++++++++++++++++++++++++
 1 file changed, 131 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs615-ride.dts b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
index 011f8ae077c256f079ce1b07720374a9bf721488..69597b6f9d0bccb294a6dcac3fe4eb0e21f2cf7a 100644
--- a/arch/arm64/boot/dts/qcom/qcs615-ride.dts
+++ b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
@@ -18,6 +18,7 @@ aliases {
 		mmc0 = &sdhc_1;
 		mmc1 = &sdhc_2;
 		serial0 = &uart0;
+		serial1 = &uart7;
 	};
 
 	chosen {
@@ -209,6 +210,83 @@ vreg_l17a: ldo17 {
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
 		};
 	};
+
+	vreg_conn_1p8: vreg_conn_1p8 {
+		compatible = "regulator-fixed";
+		regulator-name = "vreg_conn_1p8";
+		startup-delay-us = <4000>;
+		enable-active-high;
+		gpio = <&pm8150_gpios 1 GPIO_ACTIVE_HIGH>;
+	};
+
+	vreg_conn_pa: vreg_conn_pa {
+		compatible = "regulator-fixed";
+		regulator-name = "vreg_conn_pa";
+		startup-delay-us = <4000>;
+		enable-active-high;
+		gpio = <&pm8150_gpios 6 GPIO_ACTIVE_HIGH>;
+	};
+
+	wcn6855-pmu {
+		compatible = "qcom,wcn6855-pmu";
+
+		pinctrl-0 = <&bt_en_state>, <&wlan_en_state>;
+		pinctrl-names = "default";
+
+		bt-enable-gpios = <&tlmm 85 GPIO_ACTIVE_HIGH>;
+		wlan-enable-gpios = <&tlmm 98 GPIO_ACTIVE_HIGH>;
+
+		vddio-supply = <&vreg_conn_pa>;
+		vddaon-supply = <&vreg_s5a>;
+		vddpmu-supply = <&vreg_conn_1p8>;
+		vddrfa0p95-supply = <&vreg_s5a>;
+		vddrfa1p3-supply = <&vreg_s6a>;
+		vddrfa1p9-supply = <&vreg_l15a>;
+		vddpcie1p3-supply = <&vreg_s6a>;
+		vddpcie1p9-supply = <&vreg_l15a>;
+
+		regulators {
+			vreg_pmu_rfa_cmn: ldo0 {
+				regulator-name = "vreg_pmu_rfa_cmn";
+			};
+
+			vreg_pmu_aon_0p59: ldo1 {
+				regulator-name = "vreg_pmu_aon_0p59";
+			};
+
+			vreg_pmu_wlcx_0p8: ldo2 {
+				regulator-name = "vreg_pmu_wlcx_0p8";
+			};
+
+			vreg_pmu_wlmx_0p85: ldo3 {
+				regulator-name = "vreg_pmu_wlmx_0p85";
+			};
+
+			vreg_pmu_btcmx_0p85: ldo4 {
+				regulator-name = "vreg_pmu_btcmx_0p85";
+			};
+
+			vreg_pmu_rfa_0p8: ldo5 {
+				regulator-name = "vreg_pmu_rfa_0p8";
+			};
+
+			vreg_pmu_rfa_1p2: ldo6 {
+				regulator-name = "vreg_pmu_rfa_1p2";
+			};
+
+			vreg_pmu_rfa_1p7: ldo7 {
+				regulator-name = "vreg_pmu_rfa_1p7";
+			};
+
+			vreg_pmu_pcie_0p9: ldo8 {
+				regulator-name = "vreg_pmu_pcie_0p9";
+			};
+
+			vreg_pmu_pcie_1p8: ldo9 {
+				regulator-name = "vreg_pmu_pcie_1p8";
+			};
+		};
+	};
 };
 
 &gcc {
@@ -234,6 +312,25 @@ &pcie_phy {
 	status = "okay";
 };
 
+&pcieport0 {
+	wifi@0 {
+		compatible = "pci17cb,1103";
+		reg = <0x10000 0x0 0x0 0x0 0x0>;
+
+		qcom,ath11k-calibration-variant = "QC_QCS615_Ride";
+
+		vddrfacmn-supply = <&vreg_pmu_rfa_cmn>;
+		vddaon-supply = <&vreg_pmu_aon_0p59>;
+		vddwlcx-supply = <&vreg_pmu_wlcx_0p8>;
+		vddwlmx-supply = <&vreg_pmu_wlmx_0p85>;
+		vddrfa0p8-supply = <&vreg_pmu_rfa_0p8>;
+		vddrfa1p2-supply = <&vreg_pmu_rfa_1p2>;
+		vddrfa1p7-supply = <&vreg_pmu_rfa_1p7>;
+		vddpcie0p9-supply = <&vreg_pmu_pcie_0p9>;
+		vddpcie1p8-supply = <&vreg_pmu_pcie_1p8>;
+	};
+};
+
 &pm8150_gpios {
 	usb2_en: usb2-en-state {
 		pins = "gpio10";
@@ -257,6 +354,10 @@ &qupv3_id_0 {
 	status = "okay";
 };
 
+&qupv3_id_1 {
+	status = "okay";
+};
+
 &remoteproc_adsp {
 	firmware-name = "qcom/qcs615/adsp.mbn";
 
@@ -274,6 +375,13 @@ &rpmhcc {
 };
 
 &tlmm {
+	bt_en_state: bt-en-state {
+		pins = "gpio85";
+		function = "gpio";
+		output-low;
+		bias-pull-down;
+	};
+
 	pcie_default_state: pcie-default-state {
 		clkreq-pins {
 			pins = "gpio90";
@@ -296,6 +404,13 @@ wake-pins {
 			bias-pull-up;
 		};
 	};
+
+	wlan_en_state: wlan-en-state {
+		pins = "gpio98";
+		function = "gpio";
+		output-low;
+		bias-pull-down;
+	};
 };
 
 &sdhc_1 {
@@ -336,6 +451,22 @@ &uart0 {
 	status = "okay";
 };
 
+&uart7 {
+	status = "okay";
+
+	bluetooth {
+		compatible = "qcom,wcn6855-bt";
+		firmware-name = "QCA6698/hpnv21", "QCA6698/hpbtfw21.tlv";
+
+		vddrfacmn-supply = <&vreg_pmu_rfa_cmn>;
+		vddaon-supply = <&vreg_pmu_aon_0p59>;
+		vddbtcmx-supply = <&vreg_pmu_btcmx_0p85>;
+		vddrfa0p8-supply = <&vreg_pmu_rfa_0p8>;
+		vddrfa1p2-supply = <&vreg_pmu_rfa_1p2>;
+		vddrfa1p7-supply = <&vreg_pmu_rfa_1p7>;
+	};
+};
+
 &usb_1_hsphy {
 	vdd-supply = <&vreg_l5a>;
 	vdda-pll-supply = <&vreg_l12a>;

-- 
2.34.1


