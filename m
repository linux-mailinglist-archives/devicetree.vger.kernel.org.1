Return-Path: <devicetree+bounces-209115-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B3837B34A27
	for <lists+devicetree@lfdr.de>; Mon, 25 Aug 2025 20:21:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E004C7AF70B
	for <lists+devicetree@lfdr.de>; Mon, 25 Aug 2025 18:19:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 169453128A2;
	Mon, 25 Aug 2025 18:19:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IzFVVpJb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F7433112C2
	for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 18:19:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756145990; cv=none; b=WPOh7d7sKrxAWiySc0UhwUp+dAFXX80SpQK27PruewdSZnnu7vsCB7oA82SyiT3kV6MBwGxqaSxmhgHrF0HG7xHllWdhuq9KXur4O48+L5t44oTt7UbG/kA5xspsvbaG0AF0t7+Fqqrfl6W3By+dcuVnyjispZCWNQjJbaM1CJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756145990; c=relaxed/simple;
	bh=W1hErH4RE0iMu8p8enZojO7LmQhRLyjqYp9yg5Coa0I=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Xb5DfBID/pQDe/EszClqq07WWwpY8HLr5XqrwgDBfo7vjn0ODApIA3gcBKIFaq29bPLgKjtPg/qsOjcPKP8UI3KMIR9DDeR9QWxKudeQue6Ph3Bi/1MF1kPZSXFuyUW3pEILVgjGZ7wVQs61TGktojYps+zSrMA0DWKljYMcAk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IzFVVpJb; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57PGBfCL008235
	for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 18:19:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JcjcOM3D/Lj/LClPeIpUH0/bEc7QqRb9K73cv9in5mU=; b=IzFVVpJbNeMWfAwz
	0nJ+GRCz2VsGe5vAoOsc5eLJ9FvZ/YQsWv/SEDJOokSgL9An8x9pnTPpTHh8IuRy
	YYjzlFKHVz9d4dbJ38GoUQOrvrOv5YdZkshPRNPsfpv4W+kfatVzLZ3dWNRp0kEp
	p1Gj/syVCuJf00Tm5vs2aiSxVZ13V3I9SmeSaVJX2Ms/ryolUmRH8ThGghBs6b2M
	fMh4j0kX/FcB+MXQbLjliWoOMKQ34n077VzPw1GvnXIkZub36N2CZcEkiVxYSpra
	x3M5zgKxRcAzLf4x7+i2+/p9bZu7LjSw7A00L37RKBGkZ00BzCrKmeUwggyqwXv3
	99dnww==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48q5unp19x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 18:19:47 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-246072fe091so64250605ad.2
        for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 11:19:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756145986; x=1756750786;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JcjcOM3D/Lj/LClPeIpUH0/bEc7QqRb9K73cv9in5mU=;
        b=cTf/mAHOq0qZFxYMLZJwwnxX9Jxgq58tasc5xZz45mtnFGOLlyfa9MY1+vBVtZzGq9
         BsztAdyfAyvnHt7wp+8Ut9Gu8qPisYJsTIEgQB2fCteQDhrRAVhJ+AEre5Z0kILEkNhz
         oog0U9QX9kd9mFCZhxtg2bJl8DHytaAjmVu5SyQXUOpARxiN0Dkh10BdmbGdzlonyBTK
         agvLdhIYtm/urJ9UO5h0hgrzLE5fvJQl77asgCjSzoY0HOoGs2Zcj0gArhdkpIZA7TmT
         KPSXJ/QTnqqUQVn4LbMTGqdfqMBeaWLTHGr7G5F1oRlUjrNmPr9OYG906g/lVzxlPGez
         dKFA==
X-Forwarded-Encrypted: i=1; AJvYcCXCFHsf907FAoq3fBomrM8IBR3+LKdBbrY8XYpC59+bBSqKfB3VQmP2wEXW7hgvvC7IVYqQ0vWGhJk6@vger.kernel.org
X-Gm-Message-State: AOJu0YwxOJlfkx730l0OlRD+yx8CxVakHSBtJy+rlAHwMi7pjbnc78uc
	2Sj4//3hED+oS3ExIkSHujYOIGeAeAsOjisQpIO/blAW2urwKHs3ran6CKpcEgSixh4DLwtbua9
	Nr5xvGWWocihlY9FW1WPlNWq0Oa+z6lS0j5GjAVVi/4ZWLBi5iORWQDZAoti2mW9i
X-Gm-Gg: ASbGncuu/KMgw3navY5ExjhqNhfvc3cKJ5+FcJirjSS/HZlmIWyrVFW+lJsIOdTeNrc
	IXMdupajzm8UG5HbV7W9daATXwJEqhLBvXfJ+NyMU41Bwstswj553V2UVn94JW/GA6YtE8+A8ih
	ov4riEfmOR9Za3AI3/BNtAQwZmX1yqpe2vdrC+vXiuLf/22mbEh5CnksniSuuCYNag7NjNDwuUJ
	fddiZ2GUzR4mAUS7tI1mXh3DlQE16SYnTF7t42kwqS11UGz8/1BFwJAidQF4P8r36usfYehNvQ3
	UzCHZWJ5sFg0AqXV4CSTzF2/HgBNZT2N6B9Tm9TjrfokmQKwA8XosF6EUrTiMRG0
X-Received: by 2002:a17:903:98b:b0:246:de32:10d2 with SMTP id d9443c01a7336-246de32149dmr53483215ad.15.1756145986097;
        Mon, 25 Aug 2025 11:19:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF4xqkONwCepz7glKpZPLFP9f1sYT3YWmR2O9VzfnO3roOayrJHRaHM5P1Z0XIQsKFqj7Ju2Q==
X-Received: by 2002:a17:903:98b:b0:246:de32:10d2 with SMTP id d9443c01a7336-246de32149dmr53482835ad.15.1756145985634;
        Mon, 25 Aug 2025 11:19:45 -0700 (PDT)
Received: from hu-tdas-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-246688647acsm74174015ad.87.2025.08.25.11.19.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Aug 2025 11:19:45 -0700 (PDT)
From: Taniya Das <taniya.das@oss.qualcomm.com>
Date: Mon, 25 Aug 2025 23:49:11 +0530
Subject: [PATCH v5 4/7] clk: qcom: rpmh: Add support for Glymur rpmh clocks
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250825-glymur-clock-controller-v5-v5-4-01b8c8681bcd@oss.qualcomm.com>
References: <20250825-glymur-clock-controller-v5-v5-0-01b8c8681bcd@oss.qualcomm.com>
In-Reply-To: <20250825-glymur-clock-controller-v5-v5-0-01b8c8681bcd@oss.qualcomm.com>
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
X-Proofpoint-GUID: k8zXhXtD1bU0dPdjmxuKNMKzjdTibKlj
X-Proofpoint-ORIG-GUID: k8zXhXtD1bU0dPdjmxuKNMKzjdTibKlj
X-Authority-Analysis: v=2.4 cv=JJo7s9Kb c=1 sm=1 tr=0 ts=68aca943 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=RRvC4NyyfoRIYhV0TvUA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIzMDAzMSBTYWx0ZWRfX7Pzt/mfK8b9w
 SW+aiHtJr4Tewd61KJd+Q18K+WbBSQpJK/HNMIdcvvTXFevqHYCaYD4mtq1tiy+v652ztP2iES9
 5Pkb0fXiKRbD9z4gKN44RpN4CGmVqEQuGMEGdaHDvHa/ZzbhnHETrrjic1rNCWEUkRhit75v1jM
 tg4QnN94I4cXL/uStGbW/y1EXnviJeZddZvTnG273S4V+A3BblC8+tVWO2/8u1y/TBkqT32cSVN
 YTjXxxOk0/V1HnAAVhOElHlAWzm63SCWM9/Hx1eQB6tvlvQssx6n0ghLQ3/kpb3zx+FjF9PCVwx
 XAFnr5jMDg5LkB5ZDEJJCLuZX+0sHETtc33iA4DWdJfZYiFGflJAumMWEMYqldnlbbpK4i+wIaK
 ihVk+9F7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-25_08,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 bulkscore=0 spamscore=0 impostorscore=0
 malwarescore=0 clxscore=1015 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508230031

Add RPMH clock support for the Glymur SoC to allow enable/disable of the
clocks.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
---
 drivers/clk/qcom/clk-rpmh.c | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/drivers/clk/qcom/clk-rpmh.c b/drivers/clk/qcom/clk-rpmh.c
index 5103a464d86d3cb4c0ce3ff68956178dd58b1864..63c38cb47bc4592ad8d50b11dd73e09fc3011982 100644
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


