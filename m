Return-Path: <devicetree+bounces-199948-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1994EB12F35
	for <lists+devicetree@lfdr.de>; Sun, 27 Jul 2025 12:23:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 97E433BA020
	for <lists+devicetree@lfdr.de>; Sun, 27 Jul 2025 10:23:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D6002135D7;
	Sun, 27 Jul 2025 10:23:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="D7kuqpIY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 077A6212B0C
	for <devicetree@vger.kernel.org>; Sun, 27 Jul 2025 10:23:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753611792; cv=none; b=UwSfTi1n+obSaZfeHJHzlyp8VGoKllj/E5jjWJyhtPNQHB5lXHHUF8WTpSVbEGZcwuK75Tyg0gpeCSVF1dI1+afnHCE+eOMUIi7td+UeJYPRpui6Z/j+Iu5mLuTmFu2usJOiJC2N5i5N9ogvsSNkZc6+1vH08tUS2WxqPciJ63E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753611792; c=relaxed/simple;
	bh=GOfYSmnjWjg50rzLw20CFzLtGaZOsWgHtUhEvGpajMk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Q0EPOJET9I90piM6ywezYbe9+Pcd9IPHQXk7080rUx78+sr0itJA6T5yyEI+HaJswioJTuCoMjMoScua4zhgzI9trDW35VuATrUaCUR7JhAj+hfiFlVWQsJlKTOosybK8mRKQ+63RnbjIrs7YuCtwIc3CcaIe7CaQqd/OdVeeOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=D7kuqpIY; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56R9aTGC020174
	for <devicetree@vger.kernel.org>; Sun, 27 Jul 2025 10:23:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	m2SfRBHMNs8WMnGJqJgzx8xYCjZofwg+ucKkXG1V/Mc=; b=D7kuqpIYcR5jLIg2
	Qh83neysIRZjI2BzMt2m1n6x219mG5IfdJweAeSYadN0fo+req8gFsT6UHXBV2Cx
	n1kWLNzrVwo7MU8ZARZ839a1CRZUS29abyQ9+KnMvWwnwtPhx3ecdcTKrUIIIoXP
	2p61WpnL2a01+E/ElO2/V5RuZICvqzdEpAd1Urj/FvvHSxnHUj0PyvzGFEmPVF9h
	G21gMhDKVMfIxKbs+7NSF4/ah/Fzy3a+9D2NWy+6YoyBifYZ+d8bLRvbY3noGxJl
	y00nHeLtx+GsLec/F8JQ5+Cs+kM3IoBiHEoLBOfBusXIb6qtN2dHHBDOo/MvD5fM
	Eikehw==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484pm29yjq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 27 Jul 2025 10:23:09 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-23fc5b1c983so10129785ad.0
        for <devicetree@vger.kernel.org>; Sun, 27 Jul 2025 03:23:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753611788; x=1754216588;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=m2SfRBHMNs8WMnGJqJgzx8xYCjZofwg+ucKkXG1V/Mc=;
        b=W1IfCnoIA6GS+eZGcX8V8vKKwrcU24bjdRv2GLGi5jA50hnn/YpVeA0+gfF2HkIWDj
         AKfEG7pVTNX18HCx6tCfPGQlosFOCDDqSuM8ckcXoioxJn5DxnAi6GbiVPv4Sk+cvIlM
         fSuE7eQASDc/XfYtL/NJJdIxLyxJBrD+cXy3RFkffYg08hwwck8O/r4FXr9Knlx/RDHl
         Z94/gRWs5Te8D7x9Xd/Mh19Fru+YHSggwtS6ef44+V2vSU34PiJG5aSJQTe6rR5akUjo
         BAHt2LcRM92s6oMa3KCyPYLON7b2qa3Dy2ZBlnmP6hXaqMF/0rOCJSiSrmCMdxTIqmhs
         hbXw==
X-Forwarded-Encrypted: i=1; AJvYcCUp6BQOQ5sjVLCNcjuFd1Fo47l0qtsG2QCH7fGnkXJ6j6DIc93kuB6DPw2xdu5+N3xFdsqj6zIyJGQs@vger.kernel.org
X-Gm-Message-State: AOJu0YwyQ+Ngw/Z6pg0NA/JLlzijMLZUakejyisOz00Qdgjzg84ruIz9
	R+78h0rrlz9nyns2iee2Ew35bA3o61gakzhcqyxntv0zG8fKJaS4EO6CumD5q9XMLm19hng7TKE
	wDCzL6R2rH+q0VZubYTrRIcmRFvrFyooJ5qpmHvJbOlSunjKBR+/b0Lr2PKQvnojT
X-Gm-Gg: ASbGncs1fUP0y0uSOMmkZOc9OAM14qyiH7dP0CPX9kT2H3lnXmkHdnE3idUo6RocfDu
	+Zr9+OFpkg7rJE8AQoRmDxXcwOQIv3CddAhM2saNQM+kg/nJUAawjT+C4hwVp/7fonxMYdgDV3q
	7+ZcJVnzp3jk/gG8A3GwA22Dr+ptYt0K2mFI3ZsvuV4bMljeGhf1lC4TXMYEIWy8RULJrLi5G76
	5w2VFvZq7pHefs1HM4UvjImeFKTRla3fK3m60si/JaGvMiF5YcpM404SuEZ88ScFBofeIcKWkRS
	0dgKycDg5olsswlxdRqYSSyZuwU1JdxDkiBJbEWDKX8UT3Fk1ATmnZd2G/tXuMcVfGu4Bd8tI5r
	pfyiQXe+r4d+LLd6fYiPvuunRrrI=
X-Received: by 2002:a17:903:1cb:b0:231:9817:6ec1 with SMTP id d9443c01a7336-23fb2b9994dmr122066675ad.17.1753611787774;
        Sun, 27 Jul 2025 03:23:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFcsErmuzawqbMa5LNkPKXlpUN8HUDwqsll44NNNp7K8yJMsUh3zzuAaxY8KmOH7lemHuZhBQ==
X-Received: by 2002:a17:903:1cb:b0:231:9817:6ec1 with SMTP id d9443c01a7336-23fb2b9994dmr122066475ad.17.1753611787256;
        Sun, 27 Jul 2025 03:23:07 -0700 (PDT)
Received: from yuzha-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23fbe533b1esm31869715ad.158.2025.07.27.03.23.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Jul 2025 03:23:06 -0700 (PDT)
From: "Yu Zhang(Yuriy)" <yu.zhang@oss.qualcomm.com>
Date: Sun, 27 Jul 2025 18:22:37 +0800
Subject: [PATCH v7 2/2] arm64: dts: qcom: qcs615-ride: Enable WiFi/BT nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250727-615-v7-2-2adb6233bbb9@oss.qualcomm.com>
References: <20250727-615-v7-0-2adb6233bbb9@oss.qualcomm.com>
In-Reply-To: <20250727-615-v7-0-2adb6233bbb9@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        "Yu Zhang (Yuriy)" <yu.zhang@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1753611779; l=4997;
 i=yu.zhang@oss.qualcomm.com; s=20250625; h=from:subject:message-id;
 bh=GOfYSmnjWjg50rzLw20CFzLtGaZOsWgHtUhEvGpajMk=;
 b=GXZNqmcf0bhDi84wB6QnO9hX2yVACm/TFHg9u3j5Ry2fTFPgYoVEInurPs1xNdlUBFQGtqh8+
 IgJ7VXAFf8IDoaELHEJ9uG2aPs1O4X6MDL0a66N/HUOimSjnjbV+Ckx
X-Developer-Key: i=yu.zhang@oss.qualcomm.com; a=ed25519;
 pk=ZS+pKT1eEx1+Yb0k2iKe8mk1Rk+MUki89iurrz9iucA=
X-Proofpoint-GUID: JssaFtmbtaNPBVHXQsS7TpyXZLB9Io5k
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI3MDA5MCBTYWx0ZWRfX8fy4upv61nRb
 ZeGeCu/WUrYiB9VQU1w61ClF4OT4AS3vvN/qUbMoSDBPp6em47VPJ0oykvJp5W66iZBtT8fXRpD
 hNOQLdJ3q7yEGiC1dewRCHyneKGp9VBaprjqDUJbAWoPlOb3mxWrJSPI64RT2pZxJrVqu1OtAq1
 G9a6esIwnyHRBTwpfrDHGxevs/2/AGrJFg6OuSpSEW4Cfpe8BUGBnhwZ2bYBthdz0KPap+wvVHS
 9S4sLvIqYXdWpALwDbtavTelY80rqLkK5S+Aq91m52pbwlifDo0NJBm+y0DgNcmgMbOdcGj6F0c
 8tWYbSj2WA56uZwlFQQqV9FmrgWBuwJ2SFYvME+uXeR5DKh2RrSeIXBDtaaz1LHGiL4ul8hO3Vi
 hO8V8cljD2CcQ8AzGCUnpHFvDELfqQTmTrqy7/XdZD7hmYW16butFb/9z3kw60B0iz17nxvb
X-Authority-Analysis: v=2.4 cv=HfYUTjE8 c=1 sm=1 tr=0 ts=6885fe0d cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=cKvnr5XBRiLjHSnd2BMA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-ORIG-GUID: JssaFtmbtaNPBVHXQsS7TpyXZLB9Io5k
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-27_03,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 clxscore=1015 bulkscore=0 suspectscore=0 impostorscore=0
 spamscore=0 lowpriorityscore=0 adultscore=0 mlxlogscore=999 phishscore=0
 priorityscore=1501 malwarescore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507270090

Enable WiFi/BT on qcs615-ride by adding a node for the PMU module of the
WCN6855 and assigning its LDO power outputs to the existing WiFi/BT
module.

Signed-off-by: Yu Zhang(Yuriy) <yu.zhang@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/qcs615-ride.dts | 135 +++++++++++++++++++++++++++++++
 1 file changed, 135 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs615-ride.dts b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
index 011f8ae077c256f079ce1b07720374a9bf721488..7d8064303547e8be1e749cffc8f3ec8d3f3ec59b 100644
--- a/arch/arm64/boot/dts/qcom/qcs615-ride.dts
+++ b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
@@ -18,6 +18,7 @@ aliases {
 		mmc0 = &sdhc_1;
 		mmc1 = &sdhc_2;
 		serial0 = &uart0;
+		serial1 = &uart7;
 	};
 
 	chosen {
@@ -38,6 +39,22 @@ xo_board_clk: xo-board-clk {
 		};
 	};
 
+	vreg_conn_1p8: regulator-conn-1p8 {
+		compatible = "regulator-fixed";
+		regulator-name = "vreg_conn_1p8";
+		startup-delay-us = <4000>;
+		enable-active-high;
+		gpio = <&pm8150_gpios 1 GPIO_ACTIVE_HIGH>;
+	};
+
+	vreg_conn_pa: regulator-conn-pa {
+		compatible = "regulator-fixed";
+		regulator-name = "vreg_conn_pa";
+		startup-delay-us = <4000>;
+		enable-active-high;
+		gpio = <&pm8150_gpios 6 GPIO_ACTIVE_HIGH>;
+	};
+
 	regulator-usb2-vbus {
 		compatible = "regulator-fixed";
 		regulator-name = "USB2_VBUS";
@@ -47,6 +64,69 @@ regulator-usb2-vbus {
 		enable-active-high;
 		regulator-always-on;
 	};
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
 
 &apps_rsc {
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


