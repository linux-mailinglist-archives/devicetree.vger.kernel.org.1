Return-Path: <devicetree+bounces-198519-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C5F29B0D465
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 10:22:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 96DC13B01FE
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 08:21:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1531A2D94A3;
	Tue, 22 Jul 2025 08:21:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="U5jjY7Fk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DF682D8DCA
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 08:21:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753172509; cv=none; b=ukgRmc+4hO244Vj2IFUTqGILc+O3J3Y/9kUOHwlTrSwEFGo76hylRzMQ6Czf3gRwbAFgyYW0wmeWwpSNrCASfJ46AO2DpdGpxPNlNetWdrzQtgQ8t+OF5feJVF1nqqdRipFAFs1rl+Fcx5Rezr5O7oukIV4W/XL8wnSF/mE5CKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753172509; c=relaxed/simple;
	bh=5hvUpuBFb5PZsSWX4mBVrbwRXF4hd7R1SuSVEmIaJ5s=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=BnA94E1V0sGDDOhoU3WXoHWi7Lqwmh0Xceo7NI+76hfRtRr3jEbRiFJuFC1n+v856GHIx45SFpo9dEc2GU3FWNDBe2cuPZhGcNk0tBZWZblApShaswb1S8EhkB6IwpSMVvJLB61l7pZnlGE9wga0baihKf/HuktQNM7rQFIkFkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=U5jjY7Fk; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56M4wSJf015766
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 08:21:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Vqyel9XygKMRzI4rAmsYp1KMAyGT8TGuGdi8SAKMlKg=; b=U5jjY7FkwJpxcCSA
	ZQVxZurHg+1jMHia+nN8QLvlUqXhburXalmi7HnNaF+/ra00ybvylReuO+VcTqxv
	S89VCDyojhAjDDYzFNuPnoEQ6qPPeL5HJgE3eA5aN6L8kmKPCz9uTA51MmaprioM
	9JAJ8P8vbkXobmwcXO6obGKZiPjyFKtKngDJV2+/Gp82/MetOgK1VzSHLXK8qUzW
	MNnl/dyvEZwhccZ4vQFj5e4QlyPOqJjHeMDNj7eICKmui620Dv+BjFkwA8RW8T4D
	fzLkHshl3IpSc33t4PNbePHCg0Cndn5GCBU788vtSxzkdRt05Vu+3EGs80MzNFJe
	PoSyaA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 480451ghkg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 08:21:45 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-235e3f93687so76769185ad.2
        for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 01:21:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753172504; x=1753777304;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Vqyel9XygKMRzI4rAmsYp1KMAyGT8TGuGdi8SAKMlKg=;
        b=csBOrZlRzk9HJlptcfbiSefjhUPX5ZNBOs0NfDr1puEvdazcKI1BVXcWfYkducDhcW
         mcPSvyjV5wHV8pH1Bj+er8diktorf9zFPDbmDFItRtyGFyLr2dlYjTaFz/jTYAMuYB6n
         nClRfxJhrv15TMHkRe7ZRmDi3kNKMWLsWGCdi5cNWwxdOYQf4bY47npcLRqwSSRdLemX
         fcOXt9kDn27wRvzJ0l3y8nbgl1LR5wkrGPGv3GYsfqGLhwi7u5MIEof+UvKvkdPfuO4v
         HGfHhfdC8E4wdsFIb/+x3MszNgjDqYBq3iUEhIsgEQkoP+vA852ahAscyT2KJP3Y2yS8
         jDVA==
X-Forwarded-Encrypted: i=1; AJvYcCUnbyXWRSn8qMFwifx188y1jDWgetDjPxxJr/BpmuJhQDbpfYervwCUjU6s15+4gRsxYXwAk9ClW67E@vger.kernel.org
X-Gm-Message-State: AOJu0YyXiLmWM+HnOL5hhNKUeRQcxauUE3aJLN5GhK/N2XHD8t1uOVwR
	9CVRuOO2IPu9z9kgmcWLc3UMyDapOYmlspuU/REB7ByETaOLoMQHUbs/CVemuWhZeBur73Z1IT7
	iMvDjZTS2P95CXmgNLA+ub0GZ4yF4oZxN7RfbMhhHOVGpALl9hcTaHQHzAlrzCd03
X-Gm-Gg: ASbGncvBAZdxCIiC/Y5oGIFiyM9Z7/Q6J396gEcpFWYbqvw/BpzjPQ1i6dOK50cyL59
	qkicJfmBGKPgU+TupkquBxgOR7sz1Fi8stFYYiP9E79+kh58K28heLPItZKDPbpt68fjYNas9Rv
	ZrDxaRkgT4/LH3BlnntDZucfA06QLh0HhMpqRaJOJ0VtoIeJmirvoQ36CJ57a3sMQwEf/MiKG8D
	EAEMPYEBAZ0jb573o6vL6l2UDBA30HCkIFqDRHjbnl78eWrYNfbno6bCZxHDHQw2pvxQVqJCFUr
	bjFYfhu2OwBMriuA1DP/WF8lYmHvjyMuFhoS/KFxQmtsBw0UZoslHQ7IyO1c
X-Received: by 2002:a17:903:228a:b0:235:e942:cb9c with SMTP id d9443c01a7336-23e2566aa35mr355286925ad.5.1753172504493;
        Tue, 22 Jul 2025 01:21:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF8FsN56dYpM+D2/tY1R7h30mfP41e8CtpSvQgcfOrlldDMwkinZIFDcUM1nsH+jbPBJRf6aQ==
X-Received: by 2002:a17:903:228a:b0:235:e942:cb9c with SMTP id d9443c01a7336-23e2566aa35mr355286615ad.5.1753172504067;
        Tue, 22 Jul 2025 01:21:44 -0700 (PDT)
Received: from yuzha-gv.ap.qualcomm.com ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23e3b60eb01sm70994255ad.57.2025.07.22.01.21.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Jul 2025 01:21:43 -0700 (PDT)
From: "Yu Zhang(Yuriy)" <yu.zhang@oss.qualcomm.com>
Date: Tue, 22 Jul 2025 16:21:28 +0800
Subject: [PATCH v5 2/2] arm64: dts: qcom: qcs615-ride: Enable WiFi/BT nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250722-615-v5-2-4677e70e25ae@oss.qualcomm.com>
References: <20250722-615-v5-0-4677e70e25ae@oss.qualcomm.com>
In-Reply-To: <20250722-615-v5-0-4677e70e25ae@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        "Yu Zhang (Yuriy)" <yu.zhang@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1753172496; l=4827;
 i=yu.zhang@oss.qualcomm.com; s=20250625; h=from:subject:message-id;
 bh=5hvUpuBFb5PZsSWX4mBVrbwRXF4hd7R1SuSVEmIaJ5s=;
 b=dvXdPQlNy4hJHF3vPFdQRKKzIw8GWv2jBBgI22FxXv7UjEXgBWx3KgSrW+4xKurFZolFF455n
 P0NRXx1iDUPCgMs3ejUyHMa1Bm/vVGQ7BDJckW8fsqIyYc9Af+x+Y9t
X-Developer-Key: i=yu.zhang@oss.qualcomm.com; a=ed25519;
 pk=ZS+pKT1eEx1+Yb0k2iKe8mk1Rk+MUki89iurrz9iucA=
X-Authority-Analysis: v=2.4 cv=EIMG00ZC c=1 sm=1 tr=0 ts=687f4a1a cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=cKvnr5XBRiLjHSnd2BMA:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-ORIG-GUID: vBtRRQMqw_BctU0aT__6BzMwrB3oO53Z
X-Proofpoint-GUID: vBtRRQMqw_BctU0aT__6BzMwrB3oO53Z
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIyMDA2OCBTYWx0ZWRfX2e+wVzODpEXV
 aVF//O/7QD7I+Uyn6spKXEgkjyX6hGupCSiaarnhKuL60Cvw9hDajsYYxUowvrz9I4QAEyvfHY9
 MUQYozqqkSMPX1AUnkVOpfUh1ZVCZxkrAJyWxo9sIkokVtAJXqMESjeUwEH/X2kZwuCPXYEy6im
 /H9e76EP1kH+p3cFBdyxuzDtiXz+QHBv18HEKnt5L1JUJqy5ZZZPrTEAblpNeGrqhx2QEVNSPES
 /aUdr4wgy6yVL/Ax2veABqz36kxBtGCi2/K7vOndy9ybhCw47R44s/liEUCqaVZh57eboX33ZEt
 LQlm09+0ulpW8IF7fjhjKmWjSdfxBRzVWu93UeZOkbwjx8Ek0t0MfI8oL1bmJRII4gqpRk4VdCo
 YfcYUfEWYz+SA2Yf1+yBLN2jqZbYSefEe/YkcHLWELS7vCQKvLlHjBMknr1/l6Lfr8PXBNni
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-22_01,2025-07-21_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 lowpriorityscore=0 bulkscore=0 adultscore=0
 priorityscore=1501 mlxlogscore=999 phishscore=0 mlxscore=0 clxscore=1015
 suspectscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507220068

Enable WiFi/BT on qcs615-ride by adding a node for the PMU module of the
WCN6855 and assigning its LDO power outputs to the existing WiFi/BT
module.

Signed-off-by: Yu Zhang(Yuriy) <yu.zhang@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/qcs615-ride.dts | 135 +++++++++++++++++++++++++++++++
 1 file changed, 135 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs615-ride.dts b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
index 011f8ae077c256f079ce1b07720374a9bf721488..7d077310306db8431e906fa289b4dcc810911f6a 100644
--- a/arch/arm64/boot/dts/qcom/qcs615-ride.dts
+++ b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
@@ -18,6 +18,7 @@ aliases {
 		mmc0 = &sdhc_1;
 		mmc1 = &sdhc_2;
 		serial0 = &uart0;
+		serial1 = &uart7;
 	};
 
 	chosen {
@@ -47,6 +48,85 @@ regulator-usb2-vbus {
 		enable-active-high;
 		regulator-always-on;
 	};
+
+	vreg_conn_1p8: vreg-conn-1p8 {
+		compatible = "regulator-fixed";
+		regulator-name = "vreg_conn_1p8";
+		startup-delay-us = <4000>;
+		enable-active-high;
+		gpio = <&pm8150_gpios 1 GPIO_ACTIVE_HIGH>;
+	};
+
+	vreg_conn_pa: vreg-conn-pa {
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


