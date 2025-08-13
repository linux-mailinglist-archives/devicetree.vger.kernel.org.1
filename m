Return-Path: <devicetree+bounces-204141-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 87AC0B24381
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 10:00:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BC027178449
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 07:57:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 825DE2EA158;
	Wed, 13 Aug 2025 07:56:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UAx/xH4z"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E35CC2ECEBD
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 07:56:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755071778; cv=none; b=RS5CQT974G1UHg1G9aKXAhBy+H82Tzcby0+J5DusuziOC8mil9IT27SXKop8VPkPtzCFVKP98OnsN5+PyM4yHuumFxXTFCCSE06ACyqtuYP3u/8gcZQUfliJG+jyx1nYwUGfa4t/OTk0Rar9hX0qIQErp3k56aep/qtdbetCeEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755071778; c=relaxed/simple;
	bh=FDFmyZKa0pkTnpfh3lvXqBBbnpYAA44Z0esOGRce9KM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=u2H6idjtYmWBOvIobNf0OETr3fYunJxZiEbFM068BuV20kJR2iCvZ7sCWgoYf/YcFql5TOEbyJfzsQ31c2U9ensD6me/gn60KGlyUYBqc+yb/IYFgjOIECN9UeOyoyISww6Htkm9QRLFIbYdnlq+sERRKbpOaq3ydSs51MTjzjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UAx/xH4z; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57D6mZYZ009523
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 07:56:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2OtLDA8szClKkPLVd5ZN5FGUomTT3SHfStBqaqleHUg=; b=UAx/xH4zlUaVAkpj
	uc4HuoEYPhSSgjb4Am7xYWuHmf9Z3WejXC3wmBLWK6utZRBnsGzYTlmk3Ih5/MV7
	QlDDlSRYzyGVsFQXJFD7j3zFuhu4u6l/kij4bbb80OEMtBZxqMGR7bH5Lz7BFRIB
	ITsQaZAR/Gs4cudlhEueggAPHwgb8r/686uWTeSlunweQxZHRqIw9587du5JPzOL
	6PzoGF4+Kgw42+XNEaZpgGspOGSHzR0UDWO0SgrR1t+rJV9Ow59ej6j8zOHmpi6u
	PlbKaqhLSG3P+sI1s/zO59lqOrpmVziiJKFzLh2GokXwhFRnyTOR1vHL+T4DTOlL
	YO57kw==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48fem4exra-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 07:56:14 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-76bcfe2a8a4so6373268b3a.0
        for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 00:56:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755071773; x=1755676573;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2OtLDA8szClKkPLVd5ZN5FGUomTT3SHfStBqaqleHUg=;
        b=Q2/j2DWerV/U+v4kbkTidxiX7Up0YLzWc2OZTvRbezV5a7I44/lKxYo3eBTVC4RZdE
         LZ69PuJeJ5XmT9rOoeiSr42fOryNdH0NMUQ5+9biuy6zDArPN7h6Tympxw7z5xnXaZPA
         VxgwU9iG3X8ZjIp/ICWMXEpCn+/mc1DYxW306bIKt5dqBHH5sbBJftw2YxuvkiGWis56
         /A6b2jZnBkvVp4OuV5cbOUpxHo0uR2hlblTc3EMzKmVVCNmdZKDFWLXzv5RNIUOzYjoE
         dQ1MSZZ156zvFarGwqPkdCqHHrZMjX5X48QMPmYKpYZItWQuEldhGozAlaK5MxbEMWQx
         U/RQ==
X-Forwarded-Encrypted: i=1; AJvYcCXe8wyAxZ42PhgjVsOnSYiWJwXaH+FMYKcaiPKb9wmGeMNMZJf3lIYcZ06z8lvvlIKxgll6MVgiu9gu@vger.kernel.org
X-Gm-Message-State: AOJu0YyTyV44USKN9Bat2mkTdeTaXUV2V/PFOr4eyVRARCsNyfFEmbW0
	o/LYKjtnE63HqD3jOtkYy2G/PsG35S6p4fSkBfhkyqV16B1HeJeJatQDTZ2tHfCOp7zXCTMhFJw
	zqmK21cPhdynN3O4AM/9/WehuzdTGwMysaf8kz9iazs4U4ll/u1hMqDCEL8jzI5Zi
X-Gm-Gg: ASbGncvixwP+yzmr3i0GQjEO5NWmja/XC0algrOvcwjtU9+GU3RTfdAnxNMLad8c4zP
	dKIfNrBbXnV2u6ab/OS/kmdA79GmPTUe11nWSFJHNh8uyzC8nyF0V3PuFB2nAq7XuIyvCu7kx/a
	+77D/dbTnF3z4LAejHi4jprOPY4AO6dEIZN+VkeY+k0eSRZCRiYli5uhUURLYtiRnv7BJncVRxg
	f+iw99NgVHwup9AKsYnI+QmwzTqQF7nunmE19/lag1e17OVlaztRxsYPrz9xl2n5qc1ThCkpv4l
	L5/I/UFUjUIVm6QQot888lDmj47chUfWbbbCeZ2W26NqbUkPlEwr93mUiqsEkJ48
X-Received: by 2002:a05:6a00:1492:b0:76b:d93a:69e2 with SMTP id d2e1a72fcca58-76e20f818acmr3372635b3a.19.1755071773174;
        Wed, 13 Aug 2025 00:56:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHgKQmjdlT8hx0GkhErVH+MkRlpaJID1vtl2bTLhbL/jf7nb5EbDTpqOzaW/6jMYUTl2/rtmA==
X-Received: by 2002:a05:6a00:1492:b0:76b:d93a:69e2 with SMTP id d2e1a72fcca58-76e20f818acmr3372599b3a.19.1755071772697;
        Wed, 13 Aug 2025 00:56:12 -0700 (PDT)
Received: from hu-tdas-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-76bccfbd22csm31395754b3a.65.2025.08.13.00.56.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Aug 2025 00:56:12 -0700 (PDT)
From: Taniya Das <taniya.das@oss.qualcomm.com>
Date: Wed, 13 Aug 2025 13:25:20 +0530
Subject: [PATCH v4 4/7] clk: qcom: rpmh: Add support for Glymur rpmh clocks
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250813-glymur-clock-controller-v4-v4-4-a408b390b22c@oss.qualcomm.com>
References: <20250813-glymur-clock-controller-v4-v4-0-a408b390b22c@oss.qualcomm.com>
In-Reply-To: <20250813-glymur-clock-controller-v4-v4-0-a408b390b22c@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>
Cc: Ajit Pandey <quic_ajipan@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Jagadeesh Kona <quic_jkona@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Taniya Das <taniya.das@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-aa3f6
X-Proofpoint-GUID: CWT_lKWyIi8U-pwEiAH-zPa-ej_SkZp5
X-Proofpoint-ORIG-GUID: CWT_lKWyIi8U-pwEiAH-zPa-ej_SkZp5
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODExMDA2OCBTYWx0ZWRfX0XikeUX1Xbfd
 qKkIane/mT0XdnezGOVwjVaYGVibpbOYZhefQNGJlVZ7P9eNk27GhAq5gOxmuwl49QOmHB0CnWX
 Ew7gTBp7DJN+odLyMSw3LJI/vXF7byrH0zt2IEtQtFDB3lv8env7m/scGjGkLyyKIk1lY3Ry7fu
 vCTAnWRbRi/kAGm+0sYPsEsm48GBQPt3UlBpCBo+g8xra0f5HXb80rLpIIuneCGQUHnXey0K8qf
 CBE2iDS3MWhfUVrAxlCaHJoxmTvJcqaROyalTqnFEOCrtZJ5ipcj5Cu6t9Gujwwnd1NWCNz42LT
 eur0Lvkr1unVibMO+NN9eTDnh0mld2WHWoRh0w69RCV696tPRTYXMxU+1U5JVduVQmWfhPZ7Hui
 tS9yOApq
X-Authority-Analysis: v=2.4 cv=YMafyQGx c=1 sm=1 tr=0 ts=689c451e cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=RRvC4NyyfoRIYhV0TvUA:9
 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-12_08,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 priorityscore=1501 spamscore=0 suspectscore=0
 adultscore=0 impostorscore=0 malwarescore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508110068

Add RPMH clock support for the Glymur SoC to allow enable/disable of the
clocks.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
---
 drivers/clk/qcom/clk-rpmh.c | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/drivers/clk/qcom/clk-rpmh.c b/drivers/clk/qcom/clk-rpmh.c
index 1496fb3de4be8db0cae13e6358745660f286267a..d31b1ea963e3a54ecfa25e6c5cb0806e562525e4 100644
--- a/drivers/clk/qcom/clk-rpmh.c
+++ b/drivers/clk/qcom/clk-rpmh.c
@@ -390,6 +390,11 @@ DEFINE_CLK_RPMH_VRM(clk7, _a4, "clka7", 4);
 
 DEFINE_CLK_RPMH_VRM(div_clk1, _div2, "divclka1", 2);
 
+DEFINE_CLK_RPMH_VRM(clk3, _a, "C3A_E0", 1);
+DEFINE_CLK_RPMH_VRM(clk4, _a, "C4A_E0", 1);
+DEFINE_CLK_RPMH_VRM(clk5, _a, "C5A_E0", 1);
+DEFINE_CLK_RPMH_VRM(clk8, _a, "C8A_E0", 1);
+
 DEFINE_CLK_RPMH_BCM(ce, "CE0");
 DEFINE_CLK_RPMH_BCM(hwkm, "HK0");
 DEFINE_CLK_RPMH_BCM(ipa, "IP0");
@@ -879,6 +884,22 @@ static const struct clk_rpmh_desc clk_rpmh_sm8750 = {
 	.clka_optional = true,
 };
 
+static struct clk_hw *glymur_rpmh_clocks[] = {
+	[RPMH_CXO_CLK]		= &clk_rpmh_bi_tcxo_div2.hw,
+	[RPMH_CXO_CLK_A]	= &clk_rpmh_bi_tcxo_div2_ao.hw,
+	[RPMH_RF_CLK3]		= &clk_rpmh_clk3_a.hw,
+	[RPMH_RF_CLK3_A]	= &clk_rpmh_clk3_a_ao.hw,
+	[RPMH_RF_CLK4]		= &clk_rpmh_clk4_a.hw,
+	[RPMH_RF_CLK4_A]	= &clk_rpmh_clk4_a_ao.hw,
+	[RPMH_RF_CLK5]		= &clk_rpmh_clk5_a.hw,
+	[RPMH_RF_CLK5_A]	= &clk_rpmh_clk5_a_ao.hw,
+};
+
+static const struct clk_rpmh_desc clk_rpmh_glymur = {
+	.clks = glymur_rpmh_clocks,
+	.num_clks = ARRAY_SIZE(glymur_rpmh_clocks),
+};
+
 static struct clk_hw *of_clk_rpmh_hw_get(struct of_phandle_args *clkspec,
 					 void *data)
 {
@@ -968,6 +989,7 @@ static int clk_rpmh_probe(struct platform_device *pdev)
 }
 
 static const struct of_device_id clk_rpmh_match_table[] = {
+	{ .compatible = "qcom,glymur-rpmh-clk", .data = &clk_rpmh_glymur},
 	{ .compatible = "qcom,milos-rpmh-clk", .data = &clk_rpmh_milos},
 	{ .compatible = "qcom,qcs615-rpmh-clk", .data = &clk_rpmh_qcs615},
 	{ .compatible = "qcom,qdu1000-rpmh-clk", .data = &clk_rpmh_qdu1000},

-- 
2.34.1


