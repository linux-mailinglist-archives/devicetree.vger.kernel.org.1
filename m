Return-Path: <devicetree+bounces-221188-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 39F36B9DAD1
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 08:38:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E39513B41AB
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 06:38:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11CA02EF673;
	Thu, 25 Sep 2025 06:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="buKd7VvG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D71D2ED860
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:33:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758782034; cv=none; b=WDmA2SDjBE81K7HsLouFVaRYa+xKyzzfak4FdaiiPUoSQkfD2zRjRIzoSy5cFpnI/5UDDQ7HI2MGKlrgStsd2l4RU+UtFgouU+8YKIlxYlTEXF0jbQDrm22vK2ni65bNryilOLRjepp4g0/Q/anUDmUm2vywgwKau3ihW6f0Fog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758782034; c=relaxed/simple;
	bh=Gx7LAj1bLHkM3ae/ars2GWKLPfoM+orSucVr6r8Phes=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=n4kln75pgMTPXWkRDVVNu0IKrNYlfFg0TVnEjPVDFPL9EmsMGYzA8L2bermi5qIAWOphfjragupP5DBUtPhPFThkLRRcEcp7DqscH/GsQPQwVPW8s7GvcbtCNCIz+3/ZNisf9cQRecN6WhipqRLDhayIho9vpc60S8o7ipSeO50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=buKd7VvG; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P1JI7f002662
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:33:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1fmqxKh+jzkDMKKYvFGikJmfoa8mVGElYbYaFr43cL8=; b=buKd7VvGnrJPI1yG
	brE/qh3yD3sMdI+4SA7enoaUFMbmgFeWNxbyCiMK1n3AUWA7VWoe0/iZhibog0Rf
	vXoOBuysy1C+9deXFTno0Q3x5XguhCAktBT+IevFYyjqo6iU1g83o+vzA4YHapJY
	VpJ1O9e/Ug4ED4s4qiAjfKuC39yfJW7bOoYF4SVCzsJ1RPSPFJzP0dbMohZt8vPK
	SvcArh6IM6kpb3G2xWloA/H7wyB5mEBT34hmhqBSrbsLv5wvjb8V+KKvkzeqZJAa
	lclSDUO+ea6Piz1E9+TRpn3sB24v00olQlh/1+xMTjesJFNAzIYdiczJFOMkOuK5
	QHfi9A==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bajf1jrv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:33:50 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-26983c4d708so6168115ad.3
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:33:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758782030; x=1759386830;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1fmqxKh+jzkDMKKYvFGikJmfoa8mVGElYbYaFr43cL8=;
        b=MSF7i09aNgFV32YgfbXyB2l56xB73SBVCMFtD6aT3nCFL16oFj09ov0QLP9w3QqgRZ
         crMKtd3ZeR0ZoZGaFCIiagWGr1R+ndwO1jvLiprk8ARhpLqlPv9L8mvZ4JhOOVr9Q7q2
         mKDNxO1GVLp1lRDFVDrj7KxSt4nqt14PXzIplliiauC35oMkH3pCtV+UozI/BuKtVpLO
         ZQo4cphWbrBoD5rt9tUHerw2Cdp6Be3Ps1wWUjFd4EC1c4vCpSgYO/wKOKw4GXQHckOx
         iBXyIFLCV/pmUZjrW8RlqHS/d07FhTe0DeAcRNbYlCb1NBAJWcyXqXZsbvlyew4btRY4
         uy1g==
X-Forwarded-Encrypted: i=1; AJvYcCUrhCxtcdoVPFSDKUrRNZC0jMILWku3FOeu6vKjXReSuRVoVyy3SmL+VFjXz4EcihOdsSbKm9z++1iT@vger.kernel.org
X-Gm-Message-State: AOJu0YzBeZ8/2YmotonPhrHOUE8oJSMSDo4K9aVv3WmlInmYpdmlhEYA
	qR+pXLWnLjeCiHnnMI7u1QEsK9hKTIXLyhPIayNrl1m51VjKKrr2YSONZFkXTssICxLJ5d1/vul
	BrPHfWZeF8sR66SGko6ofT9LgcePWca2E7SJfzX8VyFcmSZLJ2uanB9hPyLbEYnsO
X-Gm-Gg: ASbGncufqu9H2jM0XO+bfU83vZAo/9Up5PlLEAJkD6iNFmZ7t/3Y9UxTBtvNccR9hsA
	6ZnRGMxGuyHE2aKQi+TV/8PkVz5VQB5L3tzv7hCj1NYwCsMuUSCCz1p/oanYUDbxhgO11JTg8pQ
	hMu10rci8QwrP60I5S2hAFq8m2ccDeZBV4bYZ9vbtA9yt4S/CAWNlhuZ7ugNUYKFJAQDm3pRz/9
	GlA1rFNZBvM8fbMwrIVn7bCG/RXhFRr1fYEi8DCYXAbJNY/B2g+kmWtS9dyOCnLcT+6QxYQ5RwZ
	DWfnWNr/0FJI8cUSwQFOQTOmOYWYPZ7A0xLvWCL7+H64rH4v2VBbTz7ZcS71MRZLcuqbRUoCSaa
	FGHHkBVItC3cQfjZ6bKYkGWWiIGwUTV1B8YqvUeJzxpGNdbfV5FwI95LFmkP7
X-Received: by 2002:a17:902:e843:b0:24e:3cf2:2450 with SMTP id d9443c01a7336-27ed49b30f2mr29085115ad.2.1758782029435;
        Wed, 24 Sep 2025 23:33:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGYD0809LMFioMuhNxJkBaTG+sGzPwyQsGR6JY1vTJl93rnrl/8YS2vUNioZ6r+XjZ+VPMixw==
X-Received: by 2002:a17:902:e843:b0:24e:3cf2:2450 with SMTP id d9443c01a7336-27ed49b30f2mr29084775ad.2.1758782028879;
        Wed, 24 Sep 2025 23:33:48 -0700 (PDT)
Received: from hu-pankpati-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed671732asm13793515ad.49.2025.09.24.23.33.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 23:33:48 -0700 (PDT)
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 12:02:17 +0530
Subject: [PATCH 09/24] arm64: dts: qcom: glymur-crd: Add RPMH regulator
 rails
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250925-v3_glymur_introduction-v1-9-24b601bbecc0@oss.qualcomm.com>
References: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
In-Reply-To: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Proofpoint-GUID: y8xLPErcZcbaspHiko4kVFX3TdDC1pTl
X-Authority-Analysis: v=2.4 cv=fY2ty1QF c=1 sm=1 tr=0 ts=68d4e24e cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=6u9sh_BIoH2fqP3TwikA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDE2OCBTYWx0ZWRfX4jyIhU62r1s2
 lxD8MEwWtROyyIftCdCXvObb49HzfBwr8XqhEIQtK17tvYKS0W8Xf69VNERCruRlGr2xvzz6N+x
 8AMea9vG7IY++oGJx7IZK6bnSgvNi4qzys1xJl4gDhTHaMKU3YJsdkBPc+kgFaUYPnUdjYd7tX0
 dbMSxl6V4+akI4+IInwAxqTZwIgSubFQxJQm2IJGdBRaY/LD9qZgKvTJBYnTbioO7cG2jtWDUIL
 VrkWzd9hMBQQE5fbo8QnG0Ix2mCL50QPLCKbyHnI3mNWqe2XOYzIk2HoDClvLJ4MsvFs5dvgtB+
 SeZ5MfXdEZ46jfg0sAarJ/HvPKVosILskaDCEDcLqDiHAHvwasYrqLVp8ko1CwMapyJqbtIwhJ3
 6gt+7+Jz
X-Proofpoint-ORIG-GUID: y8xLPErcZcbaspHiko4kVFX3TdDC1pTl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 spamscore=0 adultscore=0 impostorscore=0
 phishscore=0 bulkscore=0 priorityscore=1501 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220168

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


