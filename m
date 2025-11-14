Return-Path: <devicetree+bounces-238707-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id E3001C5D66B
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 14:43:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B6E294EC552
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 13:40:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41934320A02;
	Fri, 14 Nov 2025 13:38:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dt1nnhJW";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hp1Wwi5o"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 551A23254B5
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 13:38:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763127517; cv=none; b=EB2qXtPuOJqwYFEzINuclXqe1qiFEAVH4u6LK4+jk+UnGtIagWJJJ6KL0FjnU/pMXhBuDecIDl2GAMZus8UBW9FRXQSYiCYgd//KbVAd7PfrUuZjEmgf391qZnp7GHm45WsCXxYldZ3YWJSRvF9Kk/Xvmp3LqsDOP7IXvgBIkGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763127517; c=relaxed/simple;
	bh=m61eMS/4Zf1kuMzQQJkinZ8IQRWkDw0yg3iKL4VHoyc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=QK5XI1qCs+SC46tnBUDbnvsVLwsnLGWmEKAdXIf1zjyRcgiZ91p2jWPOtS/jaQrvw8MXQC1dFrX3n5x9NLviMGrnV1D+MF0XPbEAJcYpwY5Tr5KiyuwA0ToRxnEqtCpPl09OV0w96WJVtALdFzrfonIetpuOvJIHUXuno8X2Px0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dt1nnhJW; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hp1Wwi5o; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AE8eIhP1581022
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 13:38:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=poTbLM0qPOc
	Pg8sP6szKFYdlzJPOHxetHWTXDuuHwzo=; b=dt1nnhJW4mpWMHOpa5h5Hk+kf0/
	1Jq+AkvA7w2ySp9lvXoKwxBpYc0dKViTl4q2CAIY+9bum8T/GvtUerAyshoh1m4N
	hYp5zXz7jZe0ruLHz0HFvWHpKY2dhI9KNhRqybwX4NIccxgr2MEaXKI/xYFTnQ75
	ZoEmjdJ+UZ74+okGQi48KzrWl6do8AF4Op9VdPKfikVL9rNAaLS7JXmyI2bWXdMi
	efJhaRo/6R23mTZBX9cQw0wc7sJzuEigGqwd8jMsBbvsLomhaYWn9CYqepfsMQJS
	gUBE0y7kZd0B80BrepbPWzUkGdIJZi3i4AmoVVmwOa/lv3yNReWWlp2ZMeQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4adr9ftavm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 13:38:34 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4e8b33c1d8eso59978161cf.2
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 05:38:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763127513; x=1763732313; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=poTbLM0qPOcPg8sP6szKFYdlzJPOHxetHWTXDuuHwzo=;
        b=hp1Wwi5ozJX0zeCL2tm/pQHjZsyYlqLOUkqWedraWN0zkSHJNVum0yu3MZ3VrDXUaf
         H7KV7maiue6YTpLDIah5mv6pyWZtH0V2NUThswSDEUJr85IJzZVWBPhjWlfnUTUL1zng
         Dm3BdxrBT57OUn7gIV0tzWLZejQwP3Uts0zRpUYwwiTZ2wO1me2y25BJvTkUsqebPAcv
         iTVoQMmsYV42ONrraFDq7VOzGOOKHY46ZJfEBpM8re8RLiTW1LdeCBrwisl0+sOQC30O
         dhvFh5aYpX+gLxECJyQKZH5F7l3WsJi3/bAvw10DaGWioGLHdv70QJ5jm7vjV6oEcSTe
         Kazw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763127513; x=1763732313;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=poTbLM0qPOcPg8sP6szKFYdlzJPOHxetHWTXDuuHwzo=;
        b=ZpQoQn0QefEZqHrAlPpeo5iEPHbPS6BZyY+bk5CpZv1CZq3MNcBlPDvIPbybVjHohZ
         4O1ApdH4hmeYITM3jX1VSS/SlLRvlPDOIZd/Uj46X+E1U9la8kGmyzW/pfa4EIKvzQqN
         r4++kQRzTqA+wOjFzVCHhZOVJ7szdkXeTkomhaQU+dhQ5WOTBayFs+dLdDm8rnrhvk1s
         YIQoeV+rf4FbBS/fFjWqqmWZ/U+CheKUjiy2TBRacpHa/ns1nYqXzuQmZpqaDxIB3fk2
         2poqYLWQOYeaijqRrBRbepNqEqTDLQ3M3Lw1Q2Hkx3CxSd7b/zTBrd/8Rm0GmrtLReob
         oAVQ==
X-Forwarded-Encrypted: i=1; AJvYcCWNRCTs0ml2bxIg/6bxkY2pFAwNzOxh5ZgPwHCpqy4Ml5j71k0v4y3w/A8kukq5iEfe1vPKDWIfGyZx@vger.kernel.org
X-Gm-Message-State: AOJu0YxezMux/2Jt9uFN7h04N6dV6Xw2YpU9YiZBnGEyLYBfLmz8w024
	jhhSkJmy8Ld0LnEW0pWsdBC7jfhvnFXXA/sFP2p7KqHi7JstEWd45tKqx+95stARGHrBm0S9wLZ
	vX924LUr1VgGgIBr/uBAkjERT52v/2M4bgSwlBaME1TwFEJjxzfP3PobIIUgPFZgE
X-Gm-Gg: ASbGncuka2hZlhoZSDiAT4H9559upnO85nWfAKCUiRb3MM2TpnC0XKCzW6UrVr40QjC
	MJwZ3TApSdZ98aPpMzvb4CjzzhWWdb5p7MhTnDUOhxIjIgSEV4MIjnY/yrMG9mmQc/M/va3ebbG
	69pSX7KLGCrwUraEuDjr98RBkmIHwg6fR1iowF5R9lCSAqkuMPCT+yEcZoM+ZN9nK39pPq3FtCB
	vmaAEKUmkiVCe2XH/x3YRUhpU8Sn47qnuiJCx6/BNZI/xZ62sNO926NKrWR/o7uMuLYSr7lRwXg
	ngtwisc7NIh1or6y+WbSePJjkdy7afSRk4Ug+6ytpG/XUbJWfN8Yk31m+2xrqOH5FnEzZxjqwUc
	iM0wKL1If/taibb4f0Gq4M4KgWM5NL6CJjBYLw1hVoelDd5HVzmFGK4+2FRlkypWybw==
X-Received: by 2002:ac8:57d0:0:b0:4ec:f8c3:c470 with SMTP id d75a77b69052e-4edf21b6e12mr47077441cf.84.1763127513244;
        Fri, 14 Nov 2025 05:38:33 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEPtFh/HJ5A1gMnV2UIJSRzHjxUEjIBQB6ZHT3M7JyGrmD+egfnYsszHoP0C1u/KIfi3tkYhA==
X-Received: by 2002:ac8:57d0:0:b0:4ec:f8c3:c470 with SMTP id d75a77b69052e-4edf21b6e12mr47077121cf.84.1763127512760;
        Fri, 14 Nov 2025 05:38:32 -0800 (PST)
Received: from QCOM-eG0v1AUPpu.qualcomm.com ([2a01:e0a:82c:5f0:a4af:3f59:b032:5434])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6433a4ce83dsm3659659a12.34.2025.11.14.05.38.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 05:38:31 -0800 (PST)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org,
        dave.stevenson@raspberrypi.com, sakari.ailus@linux.intel.com
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        mchehab@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-media@vger.kernel.org,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: [PATCH v3 3/4] arm64: dts: qcom: qrb2210-rb1: Add PM8008 node
Date: Fri, 14 Nov 2025 14:38:21 +0100
Message-Id: <20251114133822.434171-4-loic.poulain@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251114133822.434171-1-loic.poulain@oss.qualcomm.com>
References: <20251114133822.434171-1-loic.poulain@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=SdD6t/Ru c=1 sm=1 tr=0 ts=691730da cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=6UeiqGixMTsA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=XkKmpa5t3BpS1E1QlwAA:9 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: 2F_N47iK0rsm-6ivzqZF_TuXGxi2HNYW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE0MDEwOSBTYWx0ZWRfX72xL4gF66pv2
 P9TXrTZTMZ1RI4hxH3Ee+nak1TgKXhGXqjgBvpobR1DmqQIpFkbx1+T36kTrNJVXSd3iOleCyf9
 W9BXpAe+NQRV85ZPVJhmGLygqQBqlVmUWtoEdNTuUWxGzRAK32Ta+tMqWTZPcvT4BzzWF0grxfl
 bSvUH0rUgHPr+c0CXjE48WVUYvwm6MBAh7JTy32KipHkHA8oEapG1Zh4wCCd5svGFqtTO8gZ/tu
 5CjBglRKuIC8yugdckv0iMh/5cBFsmqGQebQ9WEPnwvuxQ/p81mnogdsBDbNyGAkkpVBronUxCN
 OxI7p3tNRdcoayLLJsfywuW4blpcqvbZHKM7qXc3mCOwWFoUhlP3m5hW+N/iFnv3VZ6D/oeioyK
 Pqo99uVjp61ksW2Wblid9dvD8sYD7Q==
X-Proofpoint-ORIG-GUID: 2F_N47iK0rsm-6ivzqZF_TuXGxi2HNYW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-14_04,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 priorityscore=1501 spamscore=0 bulkscore=0
 impostorscore=0 phishscore=0 adultscore=0 malwarescore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511140109

The PM8008 device is a dedicated camera PMIC integrating all the necessary
camera power management features.

Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/qrb2210-rb1.dts | 75 ++++++++++++++++++++++++
 1 file changed, 75 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts b/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
index 1b9ca957a94b..9814ac4896c5 100644
--- a/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
+++ b/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
@@ -267,6 +267,81 @@ &gpu_zap_shader {
 	firmware-name = "qcom/qcm2290/a702_zap.mbn";
 };
 
+&i2c1 {
+	clock-frequency = <400000>;
+
+	status = "okay";
+
+	pm8008: pmic@8 {
+		compatible = "qcom,pm8008";
+		reg = <0x8>;
+
+		interrupts-extended = <&tlmm 25 IRQ_TYPE_EDGE_RISING>;
+		reset-gpios = <&tlmm 26 GPIO_ACTIVE_LOW>;
+
+		vdd-l1-l2-supply = <&pm4125_s3>;
+		vdd-l3-l4-supply = <&vph_pwr>;
+		vdd-l5-supply = <&vph_pwr>;
+		vdd-l6-supply = <&vph_pwr>;
+		vdd-l7-supply = <&vph_pwr>;
+
+		gpio-controller;
+		#gpio-cells = <2>;
+		gpio-ranges = <&pm8008 0 0 2>;
+
+		interrupt-controller;
+		#interrupt-cells = <2>;
+
+		#thermal-sensor-cells = <0>;
+
+		status = "disabled";
+
+		regulators {
+			vreg_l1p: ldo1 {
+				regulator-name = "vreg_l1p";
+				regulator-min-microvolt = <528000>;
+				regulator-max-microvolt = <1200000>;
+			};
+
+			vreg_l2p: ldo2 {
+				regulator-name = "vreg_l2p";
+				regulator-min-microvolt = <528000>;
+				regulator-max-microvolt = <1200000>;
+			};
+
+			vreg_l3p: ldo3 {
+				regulator-name = "vreg_l3p";
+				regulator-min-microvolt = <1500000>;
+				regulator-max-microvolt = <3400000>;
+			};
+
+			vreg_l4p: ldo4 {
+				regulator-name = "vreg_l4p";
+				regulator-min-microvolt = <1500000>;
+				regulator-max-microvolt = <3404000>;
+			};
+
+			vreg_l5p: ldo5 {
+				regulator-name = "vreg_l5p";
+				regulator-min-microvolt = <1500000>;
+				regulator-max-microvolt = <3400000>;
+			};
+
+			vreg_l6p: ldo6 {
+				regulator-name = "vreg_l6p";
+				regulator-min-microvolt = <1500000>;
+				regulator-max-microvolt = <3400000>;
+			};
+
+			vreg_l7p: ldo7 {
+				regulator-name = "vreg_l7p";
+				regulator-min-microvolt = <1500000>;
+				regulator-max-microvolt = <3400000>;
+			};
+		};
+	};
+};
+
 &i2c2_gpio {
 	clock-frequency = <400000>;
 	status = "okay";
-- 
2.34.1


