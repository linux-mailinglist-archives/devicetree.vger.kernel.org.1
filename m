Return-Path: <devicetree+bounces-230140-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 075B0BFFFE5
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 10:45:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id E76EA4FB8C7
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 08:45:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA3E5303A26;
	Thu, 23 Oct 2025 08:45:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QGXNGFRo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E40103019CE
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 08:44:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761209100; cv=none; b=WBMvMd/ZTwiIuRdr9R1H5QYR/n2QE/YLviJgsOFrkaDTm7aRKo9mAbcTcPmX6N/9X8D0h10A3fZTuZ8PnhVs1HD6PoGA0gAm3tcEVtYagz0myq4hula9hQfULG+giEGdm+ZbCn3Jx/YwHiu3eL8WVvUKAiu4ZoHDUr4XPgAlN94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761209100; c=relaxed/simple;
	bh=NBRovJaqkNcGG3lLAI5DbYycB/1E0nG5kKP88TENNd8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Ky/QuNBwVsoqXdMcNPmTYyaQzuiDvu/uYQqQUR601Fs0OMN3/smtalU8GawxyhcED8pmc0Mszne6GjlhnP3GXvLZrvOvyg7su2dZsPxFQSNy5cttfvchOA4egmdc9F1V6LWHZf0/yXQV+7l3tBQn/pNMBF8dQdkE+GVI0ZtuLRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QGXNGFRo; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59N78D7h029712
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 08:44:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	PMOYKcOfCkL0s0KLPZmt9lLeSz9YVBHmXBnbsduDHcg=; b=QGXNGFRoc+NG4GqS
	GSv1DA4pfUiUKvaOilnpwGm/QRIGl8VNiUGHTmLbW2ZaC2z0ZKIr4RBlkr/k80ik
	tuMWhC1nTweFkstmIaKUdMRuwv8FLGrqxPE7+PN8BsjQADSjHeu9I/ycN+XH8xu+
	CIWDrJB7+c4PFPDUTyyvK3AruH80ossTFfrwYflUeeYhtHieM3xFs3dlCTzkz/eJ
	WtKnIHGxApZCmWDgISUN9xoSPSNXHKS+UwROlZpxnoa5H0XzWkZQigso/91QyInC
	9l27nMbNoyqOEVldJLkHKhqRmnhxbB7SkOQI7JgfZYontQK8hvdSvDoLzNAQAM9K
	PgMnOQ==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v2ge7ndu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 08:44:57 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-3304def7909so506050a91.3
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 01:44:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761209096; x=1761813896;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PMOYKcOfCkL0s0KLPZmt9lLeSz9YVBHmXBnbsduDHcg=;
        b=lbHYPK7Pa/e58Q+ajrUKa19yfwjfVzXh9Plf7dt8NyJRx39J/z46ZvKFXURRvVF7rA
         TvSwkLbkVmQSswz7S0jAdL+1i6yaGwhVhUrqeQYMMzNStZqz2R2pnKOrYE3zBuW4Q3t2
         M6mPa9Vt421DMFm/SCKexFPvHbQzJGMgKO7d2HWjolCDdInEudfbePPCi2C03AqAmYo4
         CEw0YcgqiEdpYemv2mg7JBtP3A88+GTBqWvk7A8BB2dluu89yNoo6KYKGebTLwcXxiiF
         cGro3MijYvHxRcHpq7DshOJROqysJZclsT2T6Rzk6BXsuK3+9cyANQBqR8tr3s1CvRaC
         /YOg==
X-Forwarded-Encrypted: i=1; AJvYcCUaF7Qo5fqlGsjIGK/dTSPW3EfFgjTqtfNoWdYnw6Q52als5xL0p2k7YZnIoSKmtJRCCcIqFCZxnAOb@vger.kernel.org
X-Gm-Message-State: AOJu0YxD/SoX0ifpmDkrHQxHgs2VI9M0ed61lkx2SnJJrBoLfH8nMXgA
	t43zmavvdyRkk647udA9jkZIaNjiswB8dAKasW3C68f5Ia7MlWZj2U5HCRFy8K4m6d6WIxUMs0u
	sUizXiWg4OK6oLrOtRiSQl70mfvsAFoIiAT1eqz8fZMmhUnUEkH3wFdyQ1awoTd25UYP5vbp4
X-Gm-Gg: ASbGncv21Z2QHHJQBSWBQxQMqaLNdwAKjcuQnumhDN1vleR6Gvl+Bi9ohikl0kzWOxJ
	Xe9xEv4qxKTg3Lat2uZF3VEMAW4jVXHbSvmL/S66Tm+DQHkOzHYXo7eSVFGK6hmtLlqEKEFbKRG
	k7s/WNnonkkcAzXvhb19oknSpUr4sr4j9TRWk27ZEgBeUb8P1UU4+uDtjAuyZxqWsdZGWLGNOtF
	NINtr6gteLaeoZl/6/T+URF7ETryumMJ8RAeZ/OBSkZckW6KCe1QZ6z2wFul8rMtyenGI/BMqUm
	mbVaDpV8kthVsAIeZr3oPXhh2U1BlN4zyqjLCUqlGNadiRGhI59rA7OQsQwhcKGAVeQo7XRnoGN
	PsSRro3sGYCzoxfJ+FjvH+8xCeXkqnitJ0Q==
X-Received: by 2002:a17:90b:3942:b0:336:bfce:3b48 with SMTP id 98e67ed59e1d1-33bcf87f431mr33777073a91.9.1761209096373;
        Thu, 23 Oct 2025 01:44:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG6QS0adJF6pTnwXOGYcJh2KTc8Y209+IAOSTNKlkqPHVZXptbGoDdmb5Pwbd310OlsY3Ervg==
X-Received: by 2002:a17:90b:3942:b0:336:bfce:3b48 with SMTP id 98e67ed59e1d1-33bcf87f431mr33777043a91.9.1761209095912;
        Thu, 23 Oct 2025 01:44:55 -0700 (PDT)
Received: from hu-jprakash-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b6cf4c056fbsm1391414a12.17.2025.10.23.01.44.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Oct 2025 01:44:55 -0700 (PDT)
From: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
Date: Thu, 23 Oct 2025 14:14:37 +0530
Subject: [PATCH v2 2/2] regulator: rpmh-regulator: Add RPMH regulator
 support for PMR735D
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251023-pmr735d_regulator-v2-2-452e1b28cd38@oss.qualcomm.com>
References: <20251023-pmr735d_regulator-v2-0-452e1b28cd38@oss.qualcomm.com>
In-Reply-To: <20251023-pmr735d_regulator-v2-0-452e1b28cd38@oss.qualcomm.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>,
        jingyi.wang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        kamal.wadhwa@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com, aiqun.yu@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1761209080; l=1846;
 i=jishnu.prakash@oss.qualcomm.com; s=20251014; h=from:subject:message-id;
 bh=NBRovJaqkNcGG3lLAI5DbYycB/1E0nG5kKP88TENNd8=;
 b=veWw1zkUQrhmC9aqOesX0Xm8cjMxPGs6W6jFTMl1E4EGD6hB4IkF/4NCNAlt3flfczEKPFM3n
 oFLyxFa5L3GAWcE5rtzUkl4fVivWAaFWJHJVYgW8KBijS9rz6vKWrtB
X-Developer-Key: i=jishnu.prakash@oss.qualcomm.com; a=ed25519;
 pk=g89pXdLVwRjdTeQ+uX1QzvBO346E3hQAc1N7fcTXgmk=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAyMCBTYWx0ZWRfXxKPmj8EoT48p
 MP7Fb/l6arShPL5hUyRlYqf4L4g4Z7mZHBgQhg+vREEawCIPeiJY5oHfvtJzhAnn6njK/fC2fx/
 oxBCBQQ1r5Kbj7BKcaRXDC1llS40ooI39/jeOYdxa3XuuuX4VSqHPBM5EmJTE4J/OzuP94cTghn
 /xrT8BF54+K0S6Lku5rdctbjHiQwsBdLCDEwUyECTgzeUbYQvLhVf8OmeERI4bYgUajOKUCQZVG
 o141MFtg6qzkQzmouDCcFZcVCi05JkEYm0n1+alarRHlrx26kIK66wQHic7kz8n4HkWQTYesa1D
 1V8Otno4d5ZNmSl6K7NBootL5ryzu5xysHQmt4NqikG7wdh6HWTpGWHA8CiJz9b67mXaJu/3D6v
 +N+1HcCgs+XaXWBM8HmOPIKRYdjMdw==
X-Authority-Analysis: v=2.4 cv=KqFAGGWN c=1 sm=1 tr=0 ts=68f9eb0a cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=ufI_WnuctKyF2eFgXJIA:9 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-GUID: vrlbeRkEEmRMqUk8uR7n7azaTBR-CTeE
X-Proofpoint-ORIG-GUID: vrlbeRkEEmRMqUk8uR7n7azaTBR-CTeE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_08,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 phishscore=0 malwarescore=0 impostorscore=0
 lowpriorityscore=0 adultscore=0 priorityscore=1501 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180020

Add support for PMR735D PMIC voltage regulators which are present on
Kaanapali boards.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
---
 drivers/regulator/qcom-rpmh-regulator.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/regulator/qcom-rpmh-regulator.c b/drivers/regulator/qcom-rpmh-regulator.c
index 0a561f1d9452..6e4cb2871fca 100644
--- a/drivers/regulator/qcom-rpmh-regulator.c
+++ b/drivers/regulator/qcom-rpmh-regulator.c
@@ -1735,6 +1735,17 @@ static const struct rpmh_vreg_init_data pmr735b_vreg_data[] = {
 	{}
 };
 
+static const struct rpmh_vreg_init_data pmr735d_vreg_data[] = {
+	RPMH_VREG("ldo1",   LDO,  1,  &pmic5_nldo515,      "vdd-l1-l2-l5"),
+	RPMH_VREG("ldo2",   LDO,  2,  &pmic5_nldo515,      "vdd-l1-l2-l5"),
+	RPMH_VREG("ldo3",   LDO,  3,  &pmic5_nldo515,      "vdd-l3-l4"),
+	RPMH_VREG("ldo4",   LDO,  4,  &pmic5_nldo515,      "vdd-l3-l4"),
+	RPMH_VREG("ldo5",   LDO,  5,  &pmic5_nldo515,      "vdd-l1-l2-l5"),
+	RPMH_VREG("ldo6",   LDO,  6,  &pmic5_nldo515,      "vdd-l6"),
+	RPMH_VREG("ldo7",   LDO,  7,  &pmic5_nldo515,      "vdd-l7"),
+	{}
+};
+
 static const struct rpmh_vreg_init_data pm660_vreg_data[] = {
 	RPMH_VREG("smps1", SMPS, 1,  &pmic4_ftsmps426, "vdd-s1"),
 	RPMH_VREG("smps2", SMPS, 2,  &pmic4_ftsmps426, "vdd-s2"),
@@ -1950,6 +1961,10 @@ static const struct of_device_id __maybe_unused rpmh_regulator_match_table[] = {
 		.compatible = "qcom,pmr735b-rpmh-regulators",
 		.data = pmr735b_vreg_data,
 	},
+	{
+		.compatible = "qcom,pmr735d-rpmh-regulators",
+		.data = pmr735d_vreg_data,
+	},
 	{
 		.compatible = "qcom,pm660-rpmh-regulators",
 		.data = pm660_vreg_data,

-- 
2.25.1


