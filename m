Return-Path: <devicetree+bounces-221164-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id AEB9DB9D9AB
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 08:31:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D50357B0271
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 06:29:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA2942E9EA9;
	Thu, 25 Sep 2025 06:29:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OJ0ztLTd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3CF32EB85F
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:29:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758781773; cv=none; b=AuNChL6Z4jujUw9jIwW+njqoiddd9GO241CnfLKUwDRdV+np3mfuC47wfnD+bFNt4FO2DrWAPWSWMajVQABTRHZVRDA5o/BBiTCveBSbsNxpoK9rHhr0vzvlo/4dS6LgizGzbgkxZBgLjrlswBD251QcsyTDX09+Kge8NGvuacE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758781773; c=relaxed/simple;
	bh=sKIpQJiz5n+iJRMJnnf9m2DoIPG33elp5oBZ4OmiH7c=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=dzm8b3srR+V33B0xKhpbrRYopa+7lsFnbDCOROu9YRp6OA91uIraEiRKP9JejMhpvASrd/upehSSSp1jEONMSsYf4gJLp3/1pq+hGn5wk6nWBNYrtWiQCVSJyGShTvvtatT8ArrkJvZaEsSnXWnVqV9/kUgVlVvohnNGbC1buy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OJ0ztLTd; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58ONr938027915
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:29:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LwMildERMeP5s/2LAPgO3c6kJVjWS2uLmJeeFeaZY8A=; b=OJ0ztLTdvBVxbVJH
	+2/eFGdd/yVCjx1JinzfQhfAXebLG/NF/EWili/sKLKOS7yBKgHecaOFsFkAJW/8
	dzDxmblKGVnb5Oye8UjNG1iwWUXsb5uBjbNA/qjCqAXQ7PIlc7ptKemOFSjs5UZD
	QuOtiq6MwCWYI7F70U6DFpRqKA4vmaj+52C6b/DB6qDaB6T9JLxrFdQDGnPyV8Li
	5ZFX6xTvlieXtFv9Qw2gzQAKvf4ySRixNgUMjfj1xTPfRBbsKXupPkuUVx1xWrsI
	CM+e0M8l5OuspfNVLnI0R0HklteyFwkln/zuf4/pQVVkUhYrjV6rwQqRj9iazqY0
	PZ+0/A==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499hmnyccf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:29:30 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-780d26fb6b4so565190b3a.0
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:29:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758781770; x=1759386570;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LwMildERMeP5s/2LAPgO3c6kJVjWS2uLmJeeFeaZY8A=;
        b=nM3Z2K+BKG0sV7U0MHzI0afHDUK521sTD2dOLUp/IYM9S7b95E1gAHcD8C364jeXjc
         CRpvURDcu60bRyaaiX+15WEAtpeouHhzv3Vu6b9kUlREVKkwAPaZ/HcJvuuCoyCXADBn
         WyhRb97haNqOBM7V2JRdHPYMbaxVXqBx2ACWMO1T2/EOQOHHgvkzSxf2wfgNSIH6Twm4
         we0S4hpwhoD07rjUWej257d9klQzF807Ijat7pei3BVf3+VhZsDZTZYBkU9zTK4qCB7/
         6zL2BFZTVk3NGjl+X1YsFueptYX0yo5t8Vm0L6vm/sA+hRoFpOdARH7a0LH9tCWv3QY+
         MFNg==
X-Forwarded-Encrypted: i=1; AJvYcCUQQ6a/32Jqlu9m3AxpYo8fcwymggIoIZrNVWJl3huMo3UgpC/ZPuPX8JofptiTXZO12U8WdC0fdO1g@vger.kernel.org
X-Gm-Message-State: AOJu0YwaWAyEH1sXlC/iOJYNSlzQeJzEuon851+yN7Uaq606wCZY/B0F
	JVdisYHpzxNcCdT6G56Wu/oy+9tMGLTKRZX9Wx8BN4K6ejhknpvBeE1Z320juAR1aUD11iqA3fq
	JArd8sFMfceLqobT82Uxsfm4bhN1S2tLupqDnCzZu36y7iziJL13fA3rLEugDpR4P
X-Gm-Gg: ASbGncsFg0sppD3LIbFPtE0/nTkgtRUPddz3MUtNTyKiNfQzg7/jOEUCyEe8gfKPD5l
	YEIPW4k/XSPYlkc5KoerKq/GjMfMqoPzOzlA7lV57y6Kei/ce475ax/Fmp4QD+HpjG3R7yXCVr4
	iMeteJFtUTQdSqQNxJGXRHGHK/ONEsSMM7PLMwbqN+1gsLSN36C5/GO3lBHN1+t8cehgDCLJBhV
	MLB2bBsXFFjZygUfITmX1++AWoJ5+n8JPykCG6NoSHf7Axi+riui81jf7y5JQAfetqvWgIhQKaW
	fqFIfqGqljCkfKAxYSNwx/yE6ZXFqgNIFuDZb5iK1DFi7Ep1f2WfgbIiwcVZ/54DUNRj1Cnyuta
	a8exUSvP8xMXI3lXSGsYVRSjJt3CFjzI1jTQPaa5Ut6NgkTVK1eP5KzroTaje
X-Received: by 2002:a05:6a00:92aa:b0:780:7bb:1c1c with SMTP id d2e1a72fcca58-780fcefe433mr2797813b3a.31.1758781769700;
        Wed, 24 Sep 2025 23:29:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHSS6IK6n8mJg0t3jzwZnpeW/iAxvGyyHynBSGHvywzCy+qTUTCVekLpU5s1BhtEPlCXGcp/A==
X-Received: by 2002:a05:6a00:92aa:b0:780:7bb:1c1c with SMTP id d2e1a72fcca58-780fcefe433mr2797792b3a.31.1758781769288;
        Wed, 24 Sep 2025 23:29:29 -0700 (PDT)
Received: from hu-pankpati-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7810239136dsm952962b3a.5.2025.09.24.23.29.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 23:29:28 -0700 (PDT)
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 11:58:16 +0530
Subject: [PATCH v2 10/24] arm64: dts: qcom: glymur: Add SPMI PMIC arbiter
 device
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250925-v3_glymur_introduction-v2-10-8e1533a58d2d@oss.qualcomm.com>
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
X-Authority-Analysis: v=2.4 cv=YPqfyQGx c=1 sm=1 tr=0 ts=68d4e14b cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=fj32sBe4WaP-u41FRDUA:9
 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-ORIG-GUID: Ol7AvmDD5u1KbeCZGAGGe89eOBIL8oN4
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAwMCBTYWx0ZWRfX22jkzbGzH3AH
 /yEYML5r8vpW4iuyYV1JO+uV5MCheSOygDSc88Eq1TBHpBXh88YGRtd8g6VeWw2kxxOWmtXsZ6o
 QqfK/VhtsNmTKSWhtUrZiEBJyqaPRhknI5FsaxiPiprjRLWcMzAMxRLgqMcQAWb0EH2qkmQ5F0D
 2HJVQwSSsuA32Wvh7WZLxlriro1owZoqBMjyqO7BE5BxMLj2cIATs1HVM866U/70rEVx4DcWFml
 ke3nH9/D4hoX3RFPcBuuATR+caDZjwZSv/crYo1ZGhuKPZkuOU5j7PWcz23lkA1R9oIH2ONhFnI
 wuOLxnY0LB4vBD3zPCkdVfFLVsKTSKDQeWO8GFAFvKC576deQbHHKVS4VKhZu0Kh2rE08YgF2nX
 A2qDT3Ra
X-Proofpoint-GUID: Ol7AvmDD5u1KbeCZGAGGe89eOBIL8oN4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 priorityscore=1501 phishscore=0 adultscore=0
 clxscore=1015 impostorscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200000

From: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>

Add spmi-pmic-arb device for the SPMI PMIC arbiter found on
Glymur. It has three subnodes corresponding to the SPMI0,
SPMI1 & SPMI2 bus controllers.

Signed-off-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/glymur.dtsi | 62 ++++++++++++++++++++++++++++++++++++
 1 file changed, 62 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/glymur.dtsi b/arch/arm64/boot/dts/qcom/glymur.dtsi
index 2632ef381687c2392f8fad0294901e33887ac4d3..e6e001485747785fd29c606773cba7793bbd2a5c 100644
--- a/arch/arm64/boot/dts/qcom/glymur.dtsi
+++ b/arch/arm64/boot/dts/qcom/glymur.dtsi
@@ -2600,6 +2600,68 @@ sram@c30f000 {
 			reg = <0x0 0x0c30f000 0x0 0x400>;
 		};
 
+		pmic_arbiter: arbiter@c400000 {
+			compatible = "qcom,glymur-spmi-pmic-arb";
+			reg = <0x0 0x0c400000 0x0 0x00003000>,
+			      <0x0 0x0c900000 0x0 0x00400000>,
+			      <0x0 0x0c4c0000 0x0 0x00400000>,
+			      <0x0 0x0c403000 0x0 0x00008000>;
+			reg-names = "core",
+				    "chnls",
+				    "obsrvr",
+				    "chnl_map";
+			#address-cells = <2>;
+			#size-cells = <2>;
+			ranges;
+			qcom,channel = <0>;
+			qcom,ee = <0>;
+
+			spmi_bus0: spmi@c426000 {
+				reg = <0x0 0x0c426000 0x0 0x00004000>,
+				      <0x0 0x0c8c0000 0x0 0x00010000>,
+				      <0x0 0x0c42a000 0x0 0x00008000>;
+				reg-names = "cnfg",
+					    "intr",
+					    "chnl_owner";
+				interrupts-extended = <&pdc 1 IRQ_TYPE_LEVEL_HIGH>;
+				interrupt-names = "periph_irq";
+				interrupt-controller;
+				#interrupt-cells = <4>;
+				#address-cells = <2>;
+				#size-cells = <0>;
+			};
+
+			spmi_bus1: spmi@c437000 {
+				reg = <0x0 0x0c437000 0x0 0x00004000>,
+				      <0x0 0x0c8d0000 0x0 0x00010000>,
+				      <0x0 0x0c43b000 0x0 0x00008000>;
+				reg-names = "cnfg",
+					    "intr",
+					    "chnl_owner";
+				interrupts-extended = <&pdc 3 IRQ_TYPE_LEVEL_HIGH>;
+				interrupt-names = "periph_irq";
+				interrupt-controller;
+				#interrupt-cells = <4>;
+				#address-cells = <2>;
+				#size-cells = <0>;
+			};
+
+			spmi_bus2: spmi@c48000 {
+				reg = <0x0 0x0c448000 0x0 0x00004000>,
+				      <0x0 0x0c8e0000 0x0 0x00010000>,
+				      <0x0 0x0c44c000 0x0 0x00008000>;
+				reg-names = "cnfg",
+					    "intr",
+					    "chnl_owner";
+				interrupts-extended = <&pdc 72 IRQ_TYPE_LEVEL_HIGH>;
+				interrupt-names = "periph_irq";
+				interrupt-controller;
+				#interrupt-cells = <4>;
+				#address-cells = <2>;
+				#size-cells = <0>;
+			};
+		};
+
 		tlmm: pinctrl@f100000 {
 			compatible = "qcom,glymur-tlmm";
 			reg = <0x0 0x0f100000 0x0 0xf00000>;

-- 
2.34.1


