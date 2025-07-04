Return-Path: <devicetree+bounces-192909-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 31AE8AF8839
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 08:44:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DE5801891C7B
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 06:44:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70AE6262FEC;
	Fri,  4 Jul 2025 06:43:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Z9hi0tk2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA8D4262FDB
	for <devicetree@vger.kernel.org>; Fri,  4 Jul 2025 06:43:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751611423; cv=none; b=kBf3O4WgLHZoWlV6MON1CzkljuUsmgQdhNFOVq15luZRPmmPNWkKuABGVQ7rvRS+/3UCkayC4tx4kch4Az9ii7cbNFhivvqdapa5Ku/nTopuQZwgEVK9PHNvy7rpWYDaAXqL6YXDqLu/yIVhdRxqjdHrCMAWZNeB5cfAYoSuUoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751611423; c=relaxed/simple;
	bh=Y7okKbQ+abWkqsZR3FSBPtlNKOlDb1SKPlwBBSOrJ0Y=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=NulKnQDV44traRl3be2OYpSK9T/VrN+YJTGdHSdKw/l4ItCb4xROJvCDCAIL9HHiSL4r5y9fLsNu4/LuRXzFrVV95M1iKCBpofRj/tRAuVDzc68txTX163ufQYSL7m5IxNDUPZqOtdhmRmHDn/L1O3EA8Xexyz6ZVcILBYgtEeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Z9hi0tk2; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5646VYkv016379
	for <devicetree@vger.kernel.org>; Fri, 4 Jul 2025 06:43:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XY4mycc9eGNoFjLkdL3V/aOO4QflX+QnXB06ZfuD9dg=; b=Z9hi0tk2usSXxtBv
	a/zkTBJQruU+zy2J1O6AaO9ZBWZgtSu+WuKV2lGhvFOO2J7vKkXeICUgDz8jL35y
	MINDQQ1zRIbtihWITwQU4x8TQH3zj9jVA5yWeVVwJHJ3keTGpC30Mhge1l5/B+l4
	NC5Il/tTedcpzgUcZAKyVGK+T2T8Lz35P7mv5XDVSK/tMpUwAMvkjdZ1Uq5g0vld
	MpUM3KyeSdVPhjEpEy7OzUKoSDE3u0gRmtF8OHB07uQadQHgtRoTaSRlfKwjprQo
	r0O5kOdf9YvmkG7IUQU2sToC1Jc3K2e7h65cgOIC5GD733flFSYBOk9WpcwtllzP
	V++iMQ==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47j802ahnf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 04 Jul 2025 06:43:40 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-3122368d82bso1231373a91.0
        for <devicetree@vger.kernel.org>; Thu, 03 Jul 2025 23:43:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751611419; x=1752216219;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XY4mycc9eGNoFjLkdL3V/aOO4QflX+QnXB06ZfuD9dg=;
        b=L+blINJXecU7n70aZJ/X8VajME0NZ3VnPdvdSZ2OHaS+51bdFZZTkMlzUSasscgv7N
         l2mVzs9J2nJq22RHkUa+cFZt2ByFt48J//onJVIiFQjNdGMGjnUX8Lnvo7QrAGjtV4Ff
         IYKXhvsA+nhIkectLKx2p51iOKi0pBXYE/hgPi/5GGXuoego3wfq+vGT8wBvjgrEHLlO
         Q8I8RnPMVE3ss3j8A282Pj+UAYYvPjoEA7QhETkBFF0xicaQMywOiewLDy9qSyTNoP7S
         yML2DETqtCxT/2AJa36k5IK+cmIPpYchXqOqRyrf7LIJYS9oGjOfgUU4pr63yHSZYThq
         c9jg==
X-Forwarded-Encrypted: i=1; AJvYcCXHGrYQh/4kc6SIpF5O0Tge/LSUrptFd63yRIAQmS1g/QAKiBX2gcqUUs4ciyzEBLBIcEgu8EaZN5Pd@vger.kernel.org
X-Gm-Message-State: AOJu0Ywxrh5p1y/B+wkBzaTClP0ADepRB69Sc3KK4TxHiWfagiqeRN63
	99eJTOMETMv5PPMvFotKaLNLMybc48IP8UKTr+I8oYNIuBALJ3SFzcGz6ZTXxcDGZqKqwKd0QDr
	pefkT3S7yb3zjvs2GVhC7YPTKG6cusmcxvxIN/QpbJmXPX518g9QmWSlVK8Tbix17
X-Gm-Gg: ASbGncsZhnTo1TqZ96Eu0Jc2oSYoF8fE084gxoYyKD01aNzY4IxCWOpPW00wiSDrOgo
	A9JcG8nfAftLOnqSZcfEERPDssxlcM2cJ6ejVVL13Us94Wf2h192Oc8or8hmdEGpnlaCIXnHhwv
	0f5HdLy+mGTZ4kBjFiRiV6p0s3nsp9VkCO0uiGJxpF6YHcDOo9Sgw66PTG/i/eoivzxCvcmg2Y3
	ag+lOVX0RT5pQ09/6e3ZazZO05xlCwVAj4cInkQ+XRndHTM74iVpHJ8LmjF75ecPbNS4rohPsKA
	WMXxeu1SxS4I/DeLWz9DrWLCAT020UnyXL2tAWWtI8nO0HodU5i2dH7VRcl0TEYOJZu7a5aal/1
	xbxdynqZ3JQ==
X-Received: by 2002:a17:90b:3c50:b0:311:d28a:73ef with SMTP id 98e67ed59e1d1-31aac447bc9mr2535362a91.10.1751611419081;
        Thu, 03 Jul 2025 23:43:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHPVGGwwAqSgxWpv+FpYeN5/LOE4UCVIYAMsBEHzg/oj6y2VXO0m2Zdc5WReer63LHGOEjuhA==
X-Received: by 2002:a17:90b:3c50:b0:311:d28a:73ef with SMTP id 98e67ed59e1d1-31aac447bc9mr2535319a91.10.1751611418516;
        Thu, 03 Jul 2025 23:43:38 -0700 (PDT)
Received: from yuzha-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31aaae3e24asm1260338a91.5.2025.07.03.23.43.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Jul 2025 23:43:38 -0700 (PDT)
From: "Yu Zhang(Yuriy)" <yu.zhang@oss.qualcomm.com>
Date: Fri, 04 Jul 2025 14:43:21 +0800
Subject: [PATCH v3 2/2] arm64: dts: qcom: qcs615-ride: add WiFi/BT nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250704-615-v3-2-6c384e0470f2@oss.qualcomm.com>
References: <20250704-615-v3-0-6c384e0470f2@oss.qualcomm.com>
In-Reply-To: <20250704-615-v3-0-6c384e0470f2@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        "Yu Zhang (Yuriy)" <yu.zhang@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1751611410; l=4826;
 i=yu.zhang@oss.qualcomm.com; s=20250625; h=from:subject:message-id;
 bh=Y7okKbQ+abWkqsZR3FSBPtlNKOlDb1SKPlwBBSOrJ0Y=;
 b=7RXT+Bc91c+xUDmJiV/YiILIGEgvh3KUheky5OeXLU/rnK6J9hUdLnb5VC9QN7fm0afmub8we
 SP1Wi1jLIjMBmdhZ506O64lkHIaBwkE8iQvw+mrIso4Bejy09oJsRNX
X-Developer-Key: i=yu.zhang@oss.qualcomm.com; a=ed25519;
 pk=ZS+pKT1eEx1+Yb0k2iKe8mk1Rk+MUki89iurrz9iucA=
X-Proofpoint-GUID: S_bCoRFTe3s4y2o-jvFnf7PDCqjP1Et8
X-Authority-Analysis: v=2.4 cv=YPWfyQGx c=1 sm=1 tr=0 ts=6867781c cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=cKvnr5XBRiLjHSnd2BMA:9
 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-ORIG-GUID: S_bCoRFTe3s4y2o-jvFnf7PDCqjP1Et8
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzA0MDA1MSBTYWx0ZWRfXxMNYjrCApzIa
 m6e1ws32hm5yayZz3xjL4r/682NdM+j8i9nona6ndaCuHPIRdWuJ0sPLCNbKWrMTmeg0CsN+M3J
 CEdCkaN0RXMqerXrZH7NhcY0vg0wQNy47vz1bIIiAyV/tV8/7R2j6NwqGpfD1/uwFN9cjypj5zs
 JUkefgalH3t753p4IpVYQQSQebPy8XYovVhUuVB7m5jIu/+dgzzAtwrbnRdJ4I+c2iSe2Fu6/6G
 kBs0ZHhfDlfXpoz5F1k77YnDOnqWSkbmyokQWF7Jger4yBoSk/wB0u0OBA4lXnjG0/T2VyNr07R
 2Blg52szOmFDr7FINufR+3AiN8fqIUpMzACs3jYicT0LasGo+u1B/cS71NBT5Jl3JDwy32hchgT
 oj7dS1e7NoIz/C+PoufK1obBQxlMatAVsVSk2CGZaNdcwr+n391t8gVrA/MFhp6Hu770vfaV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-04_02,2025-07-02_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 mlxlogscore=999 mlxscore=0 malwarescore=0 suspectscore=0
 lowpriorityscore=0 clxscore=1015 impostorscore=0 adultscore=0
 priorityscore=1501 bulkscore=0 phishscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507040051

Add a node for the PMU module of the WCN6855 present on the qcs615 ride
board. Assign its LDO power outputs to the existing WiFi/BT module.

Signed-off-by: Yu Zhang(Yuriy) <yu.zhang@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/qcs615-ride.dts | 135 +++++++++++++++++++++++++++++++
 1 file changed, 135 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs615-ride.dts b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
index 011f8ae077c256f079ce1b07720374a9bf721488..e21524a8ceffca0c68951d04fa6895cac5bb3d0e 100644
--- a/arch/arm64/boot/dts/qcom/qcs615-ride.dts
+++ b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
@@ -18,6 +18,7 @@ aliases {
 		mmc0 = &sdhc_1;
 		mmc1 = &sdhc_2;
 		serial0 = &uart0;
+		serial1 = &uart7;
 	};
 
 	chosen {
@@ -209,6 +210,85 @@ vreg_l17a: ldo17 {
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
+		vddpmumx-supply = <&vreg_conn_1p8>;
+		vddpmucx-supply = <&vreg_conn_pa>;
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
@@ -234,6 +314,25 @@ &pcie_phy {
 	status = "okay";
 };
 
+&pcie_port0 {
+	wifi@0 {
+		compatible = "pci17cb,1103";
+		reg = <0x10000 0x0 0x0 0x0 0x0>;
+
+		qcom,calibration-variant = "QC_QCS615_Ride";
+
+		vddrfacmn-supply = <&vreg_pmu_rfa_cmn>;
+		vddaon-supply = <&vreg_pmu_aon_0p59>;
+		vddwlcx-supply = <&vreg_pmu_wlcx_0p8>;
+		vddwlmx-supply = <&vreg_pmu_wlmx_0p85>;
+		vddrfa0p8-supply = <&vreg_pmu_rfa_0p8>;
+		vddrfa1p2-supply = <&vreg_pmu_rfa_1p2>;
+		vddrfa1p8-supply = <&vreg_pmu_rfa_1p7>;
+		vddpcie0p9-supply = <&vreg_pmu_pcie_0p9>;
+		vddpcie1p8-supply = <&vreg_pmu_pcie_1p8>;
+	};
+};
+
 &pm8150_gpios {
 	usb2_en: usb2-en-state {
 		pins = "gpio10";
@@ -257,6 +356,10 @@ &qupv3_id_0 {
 	status = "okay";
 };
 
+&qupv3_id_1 {
+	status = "okay";
+};
+
 &remoteproc_adsp {
 	firmware-name = "qcom/qcs615/adsp.mbn";
 
@@ -274,6 +377,13 @@ &rpmhcc {
 };
 
 &tlmm {
+	bt_en_state: bt-en-state {
+		pins = "gpio85";
+		function = "gpio";
+		bias-pull-down;
+		output-low;
+	};
+
 	pcie_default_state: pcie-default-state {
 		clkreq-pins {
 			pins = "gpio90";
@@ -296,6 +406,13 @@ wake-pins {
 			bias-pull-up;
 		};
 	};
+
+	wlan_en_state: wlan-en-state {
+		pins = "gpio98";
+		function = "gpio";
+		bias-pull-down;
+		output-low;
+	};
 };
 
 &sdhc_1 {
@@ -336,6 +453,24 @@ &uart0 {
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
+		vddwlcx-supply = <&vreg_pmu_wlcx_0p8>;
+		vddwlmx-supply = <&vreg_pmu_wlmx_0p85>;
+		vddbtcmx-supply = <&vreg_pmu_btcmx_0p85>;
+		vddrfa0p8-supply = <&vreg_pmu_rfa_0p8>;
+		vddrfa1p2-supply = <&vreg_pmu_rfa_1p2>;
+		vddrfa1p8-supply = <&vreg_pmu_rfa_1p7>;
+	};
+};
+
 &usb_1_hsphy {
 	vdd-supply = <&vreg_l5a>;
 	vdda-pll-supply = <&vreg_l12a>;

-- 
2.34.1


