Return-Path: <devicetree+bounces-221163-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B8FDB9D9A8
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 08:31:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BC6972E08F3
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 06:31:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CBB92EB5DF;
	Thu, 25 Sep 2025 06:29:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="I0LFLVex"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 246782EB5B2
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:29:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758781771; cv=none; b=AEjR3f6EAVBqkZ38bQZlq1RnEcB9xquslU2jTY9XiPaD7QAEu6XFw2zPnshFTyYjG8328xCsEDP4128KIBLYDPRNprpKKKL4dDVR7gRnoExhbYaf+xudLAWahbI8wOjkwUyLk7yN/RPCyVDitHjinOcxdIAfrWNoiUYIQTW3p/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758781771; c=relaxed/simple;
	bh=Gx7LAj1bLHkM3ae/ars2GWKLPfoM+orSucVr6r8Phes=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=LAH9wpmfs9KkaZbkWK/h5wW15CHJBoyh+APfyMqEQcsAJHY249D+U0+NhrhX3GcN4BngClAuosJtkoLqcvAdCYYy3Um6RaDFCFBPs/oWcEuiIeUlTAgeyO04XeemOncKgJTCHty3kPFEsDkJuaxnVoBBMEiRR/L2ETsh2AOOvg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=I0LFLVex; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58ONq6RI021486
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:29:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1fmqxKh+jzkDMKKYvFGikJmfoa8mVGElYbYaFr43cL8=; b=I0LFLVexvPXJHQsu
	lA/Gk4HG1mT7VAMuDdinoBZG2o6PLRsPeVaRT32ZL2REb7//SC0JSfnXQ24cIpOQ
	cUrC6/EDYzWjFy1aHT5PO0k1FzAr01rb3a5KmWdT9oSy/70l9phzmXk7bmyBc7mC
	X/U7p88QkUiLcp3sYMFc4vWeTw6HO/zzRE8FiyypbHiQm1tIflAPxxhCALtCItDU
	4FC8QqAUrZDifCB0ReDLfytoEwhCVnVzJyQRpicnmnGoh6d352D67kWsYEZeWALd
	zJDtbUbLlDR9UJ6F8ErZYbuVneYhARpmWPbkW3h9q9UyLYpafhtvK7iJ+ZPc6+er
	FxdzTg==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49budaek02-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:29:28 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b54d0ffd16eso451846a12.3
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:29:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758781767; x=1759386567;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1fmqxKh+jzkDMKKYvFGikJmfoa8mVGElYbYaFr43cL8=;
        b=UqOt0r3C481JxP34+UdiJVw3TNAVaHOYDudwHtn44Rc7RJGdo2Egxlnu+xj54zJ7w+
         FFw/CUBGoc7HNtTaHfXxSwkGVpgrjPR+Q1/FE0f2TIW08gyRF0jhz+1CMbPWBgHieXZ0
         kRaFJiD7v1HFAA3XZvvOKLht5MySWP2KS3ey9g/kagGjhZXh17dXzXbZ6HYuQKFUj8/C
         KvlOvti4/7v4mR76CW2XSmE2t5jUeav/0QVwiz6Bwf1EpXeB7RsT1Wy9t1AYU+TgjDWd
         s1dKG1JyoB7WLqA9NiKLfbzxvH2N72u0CVn1vpdJxwgI1ODgP7D7iqv2rHTpS4Eq0Vvc
         VNlA==
X-Forwarded-Encrypted: i=1; AJvYcCWrfyfyMUCKYTxbcs4wHE7vfcC/Ie3YPs3ETgvts8h9QXwQ90v2q+P3gStA5Pxd5NxVJEF9g5MAzDh+@vger.kernel.org
X-Gm-Message-State: AOJu0Yywqrql+MOuNZWejY7ydAi23jM+anc83Vidf1fn9fsDnUI3ISxP
	8ytuKnXb5L+ukp7+B+uEnfhwM4x4x9yqs6qm9/8/7nc+nE8lQ1oF4/u+sOBm/Dz5QnJ4TZfoIPb
	gLjLyanSgnDcLX+SML6ArpKb0sAibGz9FlC6se/0ZQhUFz1VMjfGNhpQo2CqrM5yA
X-Gm-Gg: ASbGncusO7oGTG9DilHpb3qp3DFWk/WAIEce/r4wHI/S/eiQrqZc/oFV0G1jGwfdlL6
	gyjAuehyGhWp2ol78HeQzfddAzgrrAwQ5GAoHE/O51MF1eeNb9zamo4wu+ICZlUciTnFnKoL8zp
	m8AM1OP2sPjZGod7rzgnQwQnRk4GEV9PC10MR4Qmh9ADNR5f5+zqDJf4S7630WX+2x1lS+cWp/p
	0aUfplB9F+JtQa7HBofIxakpnR6lNx739FcX3exJSGs8iE3jq0fUIaNByh+T3QbKZoReUaOpXn6
	cJKOE1UZvthjpqLZH9rwcCg2rQXFOSZz4wb0sjAStFSJR/04U8YNNnAom3Uek4uL74aUMScSrLp
	x0S8m+fMd38RgCkQZnAR1YoLvpUmDDRV65XVpYAPwtRQEvtnwXWQIlsPY2GLt
X-Received: by 2002:a05:6a20:e293:b0:2c8:416:647b with SMTP id adf61e73a8af0-2e7cb166cf3mr2633416637.26.1758781766690;
        Wed, 24 Sep 2025 23:29:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH8M4KmrkSYGYN8FC1x7uA7RyGNo0pu53ZoZrt/zQwFik9VEhWlVRhmTUXB6ZIImykrnjYpXw==
X-Received: by 2002:a05:6a20:e293:b0:2c8:416:647b with SMTP id adf61e73a8af0-2e7cb166cf3mr2633381637.26.1758781766221;
        Wed, 24 Sep 2025 23:29:26 -0700 (PDT)
Received: from hu-pankpati-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7810239136dsm952962b3a.5.2025.09.24.23.29.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 23:29:25 -0700 (PDT)
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 11:58:15 +0530
Subject: [PATCH v2 09/24] arm64: dts: qcom: glymur-crd: Add RPMH regulator
 rails
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250925-v3_glymur_introduction-v2-9-8e1533a58d2d@oss.qualcomm.com>
References: <20250925-v3_glymur_introduction-v2-0-8e1533a58d2d@oss.qualcomm.com>
In-Reply-To: <20250925-v3_glymur_introduction-v2-0-8e1533a58d2d@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Proofpoint-GUID: GVagdckLJBqUjX5LuIcwW1Nzp98_vXoA
X-Proofpoint-ORIG-GUID: GVagdckLJBqUjX5LuIcwW1Nzp98_vXoA
X-Authority-Analysis: v=2.4 cv=Yaq95xRf c=1 sm=1 tr=0 ts=68d4e148 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=6u9sh_BIoH2fqP3TwikA:9
 a=QEXdDO2ut3YA:10 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDExMyBTYWx0ZWRfX9AVyIux7sYHC
 Hobcw6g3nf1BPY19OM7qehr9K6EVJD8bGfVJOYmajOARKQOwhcyVwOPsB5D10xbl6osDCgZIlyk
 gmxYd41dqn9WoKE/76cKSYTeiAdBcEhtyB28aR3wjDprHt6RgGWIENSNdyeNK1sn5Wb3izQAB7/
 vKdcfY44kdCpEvLNXeZkLpt1IGY2+4zCZKRR1Lbhpf4jgAyMRez16U8dVI84/LFzca5Roj26prN
 1qFbhiLhOClaPoXNZ+PpAwN6cjnw6dbVV+1U8XUb7ljCYaoWH2jwSS8zRwRw0D599tBoTNsWUWz
 WczFIfnXKO8f7Wu20jXnQ4JdgdOjJO7RwKCB2F8zfnir/QOjVn6hkW8mcYmJcpDF/3+mEi4p1i5
 20AG39d3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 suspectscore=0 priorityscore=1501 phishscore=0
 adultscore=0 malwarescore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509230113

From: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>

Add RPMH regulator rails for Glymur CRD.

Signed-off-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/glymur-crd.dts | 332 ++++++++++++++++++++++++++++++++
 1 file changed, 332 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/glymur-crd.dts b/arch/arm64/boot/dts/qcom/glymur-crd.dts
index 4561c0b87b017cba0a1db8814123a070b37fd434..e89b81dcb4f47b78307fa3ab6831657cf6491c89 100644
--- a/arch/arm64/boot/dts/qcom/glymur-crd.dts
+++ b/arch/arm64/boot/dts/qcom/glymur-crd.dts
@@ -6,6 +6,7 @@
 /dts-v1/;
 
 #include "glymur.dtsi"
+#include <dt-bindings/regulator/qcom,rpmh-regulator.h>
 
 / {
 	model = "Qualcomm Technologies, Inc. Glymur CRD";
@@ -66,3 +67,334 @@ chosen {
 &tlmm {
 	gpio-reserved-ranges = <4 4>, <10 2>, <44 4>; /*Security SPI (TPM)*/
 };
+
+&apps_rsc {
+
+	vph_pwr: vph-pwr-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vph_pwr";
+		regulator-min-microvolt = <3700000>;
+		regulator-max-microvolt = <3700000>;
+	};
+
+	regulators-0 {
+		compatible = "qcom,pmh0101-rpmh-regulators";
+		qcom,pmic-id = "B_E0";
+
+		vdd-bob1-supply = <&vph_pwr>;
+		vdd-bob2-supply = <&vph_pwr>;
+		vdd-l1-l10-l15-supply = <&vreg_s9f_e0_1p9>;
+		vdd-l2-l7-l8-l9-l16-supply = <&vreg_bob1_e0>;
+		vdd-l11-l12-l18-supply = <&vreg_s7f_e0_1p32>;
+		vdd-l17-supply = <&vreg_bob2_e0>;
+
+		vreg_bob1_e0: bob1 {
+			regulator-name = "vreg_bob1_e0";
+			regulator-min-microvolt = <2200000>;
+			regulator-max-microvolt = <4224000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_AUTO>;
+		};
+
+		vreg_bob2_e0: bob2 {
+			regulator-name = "vreg_bob2_e0";
+			regulator-min-microvolt = <2540000>;
+			regulator-max-microvolt = <3600000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_AUTO>;
+		};
+
+		vreg_l1b_e0_1p8: ldo1 {
+			regulator-name = "vreg_l1b_e0_1p8";
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <1800000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l2b_e0_2p9: ldo2 {
+			regulator-name = "vreg_l2b_e0_2p9";
+			regulator-min-microvolt = <2900000>;
+			regulator-max-microvolt = <3300000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l7b_e0_2p79: ldo7 {
+			regulator-name = "vreg_l7b_e0_2p79";
+			regulator-min-microvolt = <2790000>;
+			regulator-max-microvolt = <3300000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l8b_e0_1p50: ldo8 {
+			regulator-name = "vreg_l8b_e0_1p50";
+			regulator-min-microvolt = <1504000>;
+			regulator-max-microvolt = <3544000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l9b_e0_2p7: ldo9 {
+			regulator-name = "vreg_l9b_e0_2p7";
+			regulator-min-microvolt = <2700000>;
+			regulator-max-microvolt = <3300000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l10b_e0_1p8: ldo10 {
+			regulator-name = "vreg_l10b_e0_1p8";
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <1800000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l11b_e0_1p2: ldo11 {
+			regulator-name = "vreg_l11b_e0_1p2";
+			regulator-min-microvolt = <1200000>;
+			regulator-max-microvolt = <1200000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l12b_e0_1p14: ldo12 {
+			regulator-name = "vreg_l12b_e0_1p14";
+			regulator-min-microvolt = <1140000>;
+			regulator-max-microvolt = <1260000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l15b_e0_1p8: ldo15 {
+			regulator-name = "vreg_l15b_e0_1p8";
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <1800000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l17b_e0_2p4: ldo17 {
+			regulator-name = "vreg_l17b_e0_2p4";
+			regulator-min-microvolt = <2400000>;
+			regulator-max-microvolt = <2700000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l18b_e0_1p2: ldo18 {
+			regulator-name = "vreg_l18b_e0_1p2";
+			regulator-min-microvolt = <1200000>;
+			regulator-max-microvolt = <1200000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+	};
+
+	regulators-1 {
+		compatible = "qcom,pmcx0102-rpmh-regulators";
+		qcom,pmic-id = "C_E0";
+		vdd-s1-supply = <&vph_pwr>;
+		vdd-s8-supply = <&vph_pwr>;
+
+		vreg_s1c_e0_0p3: smps1 {
+			regulator-name = "vreg_s1c_e0_0p3";
+			regulator-min-microvolt = <300000>;
+			regulator-max-microvolt = <1200000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_s8c_e0_0p3: smps8 {
+			regulator-name = "vreg_s8c_e0_0p3";
+			regulator-min-microvolt = <300000>;
+			regulator-max-microvolt = <1200000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+	};
+
+	regulators-2 {
+		compatible = "qcom,pmcx0102-rpmh-regulators";
+		qcom,pmic-id = "C_E1";
+
+		vdd-l2-supply = <&vreg_s7f_e0_1p32>;
+		vdd-l1-l3-l4-supply = <&vreg_s8f_e0_0p95>;
+
+		vreg_l1c_e1_0p82: ldo1 {
+			regulator-name = "vreg_l1c_e1_0p82";
+			regulator-min-microvolt = <825000>;
+			regulator-max-microvolt = <958000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l2c_e1_1p14: ldo2 {
+			regulator-name = "vreg_l2c_e1_1p14";
+			regulator-min-microvolt = <1140000>;
+			regulator-max-microvolt = <1300000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l3c_e1_0p89: ldo3 {
+			regulator-name = "vreg_l3c_e1_0p89";
+			regulator-min-microvolt = <890000>;
+			regulator-max-microvolt = <980000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l4c_e1_0p72: ldo4 {
+			regulator-name = "vreg_l4c_e1_0p72";
+			regulator-min-microvolt = <720000>;
+			regulator-max-microvolt = <980000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+	};
+
+	regulators-3 {
+		compatible = "qcom,pmh0110-rpmh-regulators";
+		qcom,pmic-id = "F_E0";
+		vdd-s7-supply = <&vph_pwr>;
+		vdd-s8-supply = <&vph_pwr>;
+		vdd-s9-supply = <&vph_pwr>;
+		vdd-s10-supply = <&vph_pwr>;
+		vdd-l2-supply = <&vreg_s8f_e0_0p95>;
+		vdd-l3-supply = <&vreg_s8f_e0_0p95>;
+		vdd-l4-supply = <&vreg_s8f_e0_0p95>;
+
+		vreg_s7f_e0_1p32: smps7 {
+			regulator-name = "vreg_s7f_e0_1p32";
+			regulator-min-microvolt = <1320000>;
+			regulator-max-microvolt = <1352000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_s8f_e0_0p95: smps8 {
+			regulator-name = "vreg_s8f_e0_0p95";
+			regulator-min-microvolt = <952000>;
+			regulator-max-microvolt = <1200000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_s9f_e0_1p9: smps9 {
+			regulator-name = "vreg_s9f_e0_1p9";
+			regulator-min-microvolt = <1900000>;
+			regulator-max-microvolt = <2000000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_s10f_e0_0p3: smps10 {
+			regulator-name = "vreg_s10f_e0_0p3";
+			regulator-min-microvolt = <300000>;
+			regulator-max-microvolt = <1200000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l2f_e0_0p82: ldo2 {
+			regulator-name = "vreg_l2f_e0_0p82";
+			regulator-min-microvolt = <825000>;
+			regulator-max-microvolt = <980000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l3f_e0_0p72: ldo3 {
+			regulator-name = "vreg_l3f_e0_0p72";
+			regulator-min-microvolt = <720000>;
+			regulator-max-microvolt = <980000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l4f_e0_0p3: ldo4 {
+			regulator-name = "vreg_l4f_e0_0p3";
+			regulator-min-microvolt = <300000>;
+			regulator-max-microvolt = <1200000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+	};
+
+	regulators-4 {
+		compatible = "qcom,pmh0110-rpmh-regulators";
+		qcom,pmic-id = "F_E1";
+		vdd-s1-supply = <&vph_pwr>;
+		vdd-s3-supply = <&vph_pwr>;
+		vdd-s5-supply = <&vph_pwr>;
+		vdd-s6-supply = <&vph_pwr>;
+		vdd-s7-supply = <&vph_pwr>;
+		vdd-l1-supply = <&vreg_s8f_e0_0p95>;
+		vdd-l2-supply = <&vreg_s8f_e0_0p95>;
+		vdd-l4-supply = <&vreg_s8f_e0_0p95>;
+
+		vreg_s1f_e1_0p3: smps1 {
+			regulator-name = "vreg_s1f_e1_0p3";
+			regulator-min-microvolt = <300000>;
+			regulator-max-microvolt = <1200000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_s5f_e1_0p3: smps5 {
+			regulator-name = "vreg_s5f_e1_0p3";
+			regulator-min-microvolt = <300000>;
+			regulator-max-microvolt = <1200000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_s6f_e1_0p3: smps6 {
+			regulator-name = "vreg_s6f_e1_0p3";
+			regulator-min-microvolt = <300000>;
+			regulator-max-microvolt = <1200000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_s7f_e1_0p3: smps7 {
+			regulator-name = "vreg_s7f_e1_0p3";
+			regulator-min-microvolt = <300000>;
+			regulator-max-microvolt = <1200000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l1f_e1_0p82: ldo1 {
+			regulator-name = "vreg_l1f_e1_0p82";
+			regulator-min-microvolt = <825000>;
+			regulator-max-microvolt = <950000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l2f_e1_0p83: ldo2 {
+			regulator-name = "vreg_l2f_e1_0p83";
+			regulator-min-microvolt = <830000>;
+			regulator-max-microvolt = <920000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l4f_e1_1p08: ldo4 {
+			regulator-name = "vreg_l4f_e1_1p08";
+			regulator-min-microvolt = <1080000>;
+			regulator-max-microvolt = <1320000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+	};
+
+	regulators-5 {
+		compatible = "qcom,pmh0110-rpmh-regulators";
+		qcom,pmic-id = "H_E0";
+
+		vdd-l1-supply = <&vreg_s8f_e0_0p95>;
+		vdd-l2-supply = <&vreg_s8f_e0_0p95>;
+		vdd-l3-supply = <&vreg_s9f_e0_1p9>;
+		vdd-l4-supply = <&vreg_s7f_e0_1p32>;
+
+		vreg_l1h_e0_0p89: ldo1 {
+			regulator-name = "vreg_l1h_e0_0p89";
+			regulator-min-microvolt = <825000>;
+			regulator-max-microvolt = <950000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l2h_e0_0p72: ldo2 {
+			regulator-name = "vreg_l2h_e0_0p72";
+			regulator-min-microvolt = <830000>;
+			regulator-max-microvolt = <920000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l3h_e0_0p32: ldo3 {
+			regulator-name = "vreg_l3h_e0_0p32";
+			regulator-min-microvolt = <320000>;
+			regulator-max-microvolt = <2000000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l4h_e0_1p2: ldo4 {
+			regulator-name = "vreg_l4h_e0_1p2";
+			regulator-min-microvolt = <1080000>;
+			regulator-max-microvolt = <1320000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+	};
+};

-- 
2.34.1


