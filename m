Return-Path: <devicetree+bounces-196936-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D13AB07986
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 17:21:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A1DF0580C5F
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 15:21:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A90BD2F530E;
	Wed, 16 Jul 2025 15:20:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mBSIobQf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 273C92EA14E
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 15:20:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752679246; cv=none; b=oeye24HjBZvsWtnny9TfDdtdcfMxKJUapQwBgQxo83Tq+0mbh2MxuYF1THnZ3wnLZfA3vv750R3Um3yPVO5BRPsxA6tnHn/WU5AQ+UxAMqd8w+X7g7DVRyrNzc3JG43LZGZBY/PD6MWHQ1nh3I69/nXc2OJ87js80N8ZtHl63us=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752679246; c=relaxed/simple;
	bh=iSXFZ/rxSfqiYe032EgSZdLxuNhPgtOw+DCydKf66Q4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Iwk967xRRGByG+bEuePtjyzoEACqBMPo3kAsnAi9DL9AAIMT2IZgidmNb7idZBQ8kQ8/ccuBWPJ4atPaNAj8zIgb3ZAX2bVw0sg8wJS23mcJIS/14VeKTyCf/pPCCT9DGEbc8faLbBL12L2bUjw6ZYpqL2t9avWpojyYpLOcgGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mBSIobQf; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56GDBp98007378
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 15:20:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=KeWo6NhvYfL
	SpZC4i2L+Ou9NoRlmlKN1CvQ6KpYQ+j4=; b=mBSIobQf3aVJSci4MgOtVXV+25K
	RmvnH6s8JyyRBOKoao8r31UDEb5uq5oV3KJMtc/1mGHCJb+ziDvOB8fr20FWAe42
	GZpMVO4a0kMAuG6gjF5Ll7DyiA/TsN6cZJytLp/uRD35jrySa+vhZlK06tFfKDCo
	aj7/bPoX4eoSLwl1ruuecLyauCEG6CTyJ2r0JvCDChNC2rIMDnBfKvL3H65+vlLS
	mITlnRFq0J7jWt7O0YrPhDYn/2goL4vdI5b+EH3nL1F9wiuZ7XoPpGW9B3iDKVGI
	vC9yvIURrdUT3T36yzMuzg7B0CU++ASc6wajVsfAM0HXQd5M58r5MABKniA==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47wnh5vp22-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 15:20:44 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b38fc4d8dbaso8066512a12.2
        for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 08:20:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752679243; x=1753284043;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KeWo6NhvYfLSpZC4i2L+Ou9NoRlmlKN1CvQ6KpYQ+j4=;
        b=a0MRKXB7PDrEw+YfY+4inw5GzS59V1HcJXvkYA6/u2j5C2hu+HRXc7NkWYxL0kkB2L
         UBqe+vOl0p62bo6XP7YVZ8aekQNyaXB75iJYwjmmTCKpThSHNHGkMdS5cZPJzc5tLrI0
         BvdrfR5BZqgnmTuVa8iPkv43giQ/UjabnJi4CWfwTAsfADgvYR5jSxTwEbWAsRihURl6
         GmMui7hLR0nFYfBxzPMSF2DzP0u3o2Tbgp4f6f9nBH900rDd0m4GE933X9ZvkmXvczgF
         WntHKXm0gRJvzf9b59cPgKsLVy7gd3qkmxlyU1UwLK5v8gGkT7o+kvGiUBPWF5uy0UXx
         UjIQ==
X-Forwarded-Encrypted: i=1; AJvYcCXvzxMsTDfN/zxquX1HI0jtlcpYfzvOQewDp1uNPtRerXifGeRBhd9cSF3qVUOa/CVB4Nt2nn/2ZXq4@vger.kernel.org
X-Gm-Message-State: AOJu0Yxu5o6zjFysW85LjDG5jV5CLFOIcmTo7ZG1DNEjXgKUqBApzwY9
	fvd8qdSQLLz6Rs0mWMdBmuYBgoytce6YvFmfKocWvx+htgJaQJPNWMjYuXd9BGlzGbv4OdJgUY+
	B/KA1At2BC4XO4CtZXcYNO8IEeKzK5DamYSFBvZVjIorN+hoHa5Tyz69hnCvAHpy7
X-Gm-Gg: ASbGncs+IyA8Ym+KTsCTdP/vOnvWXuPUCWuHtkHclMsIrZfq7LWVS7dNSRtwHq/UAgZ
	9H18GGHviifvdsk/r9RZU+yqieuWTBKA/rKhEgr45RzUQYRbUszM5pG8M6KR9Db/zBG3npgBMTw
	vuS0Df0SOX4C+Ip5HMYRxzttDr4Y9uXiGqun7y38LZUefT6nLAjZ2u2YbAmAZR2bVbPb/++dwWB
	1h5P+2M/ytdHNbf8rdVPY47Tb2WsuesFgUvEHjWifJ8OVW3y0FCZn+aTxVwczBq7vzoyMz53M9e
	EHnbYU44X5NE/03xyznwCLpNSIjB4t5+8+o5VRgbfZ3m//d2CGmsBMGAIz6tT1V9nW5WRXDLu+7
	8k9hDyvMM3OqflVdQkQaBPuIRtTxRHiCDRJxzl6fYvLwHllAL5lQ8rDAQ+9HD
X-Received: by 2002:a05:6300:6d0b:b0:238:cded:d32d with SMTP id adf61e73a8af0-238cdedd407mr1274382637.23.1752679243320;
        Wed, 16 Jul 2025 08:20:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGalH6XH9sbSz8Z1EVkarL4o21D07/XcWEc3VRsCi3TM9BgHq254ZLszBRAS/A60P5dNPeUGA==
X-Received: by 2002:a05:6300:6d0b:b0:238:cded:d32d with SMTP id adf61e73a8af0-238cdedd407mr1274334637.23.1752679242755;
        Wed, 16 Jul 2025 08:20:42 -0700 (PDT)
Received: from hu-pankpati-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b3bbe6bd8f8sm13912054a12.38.2025.07.16.08.20.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Jul 2025 08:20:42 -0700 (PDT)
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
To: sboyd@kernel.org, mturquette@baylibre.com, andersson@kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        quic_rjendra@quicinc.com, taniya.das@oss.qualcomm.com
Cc: linux-clk@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 4/7] clk: qcom: rpmh: Add support for Glymur rpmh clocks
Date: Wed, 16 Jul 2025 20:50:14 +0530
Message-Id: <20250716152017.4070029-5-pankaj.patil@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250716152017.4070029-1-pankaj.patil@oss.qualcomm.com>
References: <20250716152017.4070029-1-pankaj.patil@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=dKimmPZb c=1 sm=1 tr=0 ts=6877c34c cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=RRvC4NyyfoRIYhV0TvUA:9
 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-GUID: zfvn_bCFBxqL4zMsrI9TusN0OTJv38B1
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE2MDEzOCBTYWx0ZWRfX6WTNqklzxPPV
 mZHMvStzZDBIraO9+ho9Fw2F7sR7cFamIZVboESs30RyYNHgxlCcf9+Q4wX2DlGf7DqsXnXhSJX
 79qUVz3vkKOYUrtrp27Nd9zniTaQgRxw0fQ1EWP8LrO14+R4oSogSGfMTFVilddt0dRfPKk9ztI
 FWjJEbGNRiyvO1vgfDSCnDjcOhyUcovjdb4hxeO12CNU6XylYfn7EOuWkaNT5Noays9g92xc4XE
 UXZa3vYysTNfQAy9bL0LudQjTvwDJCwF3uy1F7250j+hF4wzjTtqYKrzZK7NYs6ewTxJmvLyemQ
 KTfZYRKFS94fm58vBEYsO+xzTY/wGPKUAujxpz/g6MxxWhXtHzhowzv0DsyT02nS9oG4pgk8Ib4
 GFEhLrubedWNgWh+sAtD8gm0iivL4xtHm9GkRyOE7M0P8dZA/w29YmrOvYL7V0acmmVRRGde
X-Proofpoint-ORIG-GUID: zfvn_bCFBxqL4zMsrI9TusN0OTJv38B1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-16_02,2025-07-16_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 mlxlogscore=999 mlxscore=0 spamscore=0
 adultscore=0 impostorscore=0 priorityscore=1501 suspectscore=0 bulkscore=0
 phishscore=0 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507160138

From: Taniya Das <taniya.das@oss.qualcomm.com>

Add RPMH clock support for the Glymur SoC to enable proper clock
management.

Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
---
 drivers/clk/qcom/clk-rpmh.c | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/drivers/clk/qcom/clk-rpmh.c b/drivers/clk/qcom/clk-rpmh.c
index 00fb3e53a388..1bc1333087b4 100644
--- a/drivers/clk/qcom/clk-rpmh.c
+++ b/drivers/clk/qcom/clk-rpmh.c
@@ -388,6 +388,11 @@ DEFINE_CLK_RPMH_VRM(clk8, _a2, "clka8", 2);
 
 DEFINE_CLK_RPMH_VRM(div_clk1, _div2, "divclka1", 2);
 
+DEFINE_CLK_RPMH_VRM(clk3, _a, "C3A_E0", 1);
+DEFINE_CLK_RPMH_VRM(clk4, _a, "C4A_E0", 1);
+DEFINE_CLK_RPMH_VRM(clk5, _a, "C5A_E0", 1);
+DEFINE_CLK_RPMH_VRM(clk8, _a, "C8A_E0", 1);
+
 DEFINE_CLK_RPMH_BCM(ce, "CE0");
 DEFINE_CLK_RPMH_BCM(hwkm, "HK0");
 DEFINE_CLK_RPMH_BCM(ipa, "IP0");
@@ -854,6 +859,22 @@ static const struct clk_rpmh_desc clk_rpmh_sm8750 = {
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
@@ -943,6 +964,7 @@ static int clk_rpmh_probe(struct platform_device *pdev)
 }
 
 static const struct of_device_id clk_rpmh_match_table[] = {
+	{ .compatible = "qcom,glymur-rpmh-clk", .data = &clk_rpmh_glymur},
 	{ .compatible = "qcom,qcs615-rpmh-clk", .data = &clk_rpmh_qcs615},
 	{ .compatible = "qcom,qdu1000-rpmh-clk", .data = &clk_rpmh_qdu1000},
 	{ .compatible = "qcom,sa8775p-rpmh-clk", .data = &clk_rpmh_sa8775p},
-- 
2.34.1


