Return-Path: <devicetree+bounces-199360-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 082B8B10666
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 11:37:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D68065A528E
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 09:35:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD8402D46D1;
	Thu, 24 Jul 2025 09:29:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cylrEX9R"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD822D3EFB
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 09:29:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753349378; cv=none; b=FWHrurpoyHZyHG6Qp2VSwzSvNOpCiX+10BGr3vBMApDKQ4kb8wDUoCPyjvvHJBoPejd8BEY1hBwX5l4N/nwA+kWiExwpdeBiPOSHpBoIpN9t37cmW2QI8E4DWXYBaF6HVGuZPCKMNKE/NZSKqFn3MsLsoDKn1uZPd5WzmnbYRZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753349378; c=relaxed/simple;
	bh=5xkfcJbVkKNZ5yfJhspI+J3h+efsZ+lO+pcNZ6b5KUE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=VchLx+6LrWWHbfcjrn1IuKgs6F1BQZMqPsenNwnMqg/rgBcSo6EtbWe/VQ/CpP851SegvnRYqWEVs5crUgHkzx12adXW6U1Lh9ESJbs3ScvAfIcS4voa9CNpGVoy/IYwIPdgppB4Z6hr2Btg5hl7o/sg3+odxggvw0GFECmYXlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cylrEX9R; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56NMXHj9028528
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 09:29:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Rkua1eHudLhTq/27Qdikz3br+O5tiA9+J0gTy0Df1aQ=; b=cylrEX9RPzGDW56n
	g9MM8K86OVjTqP0kSNa57MhmWiDLspD3/TyIBYAoLUGJT4sWgsOl36ccK31jwH/4
	J54QkUIbSfettp/3fq0btB4U09PjmTd0SIj/MSDl0lVzCqv/hc1BCDtp5G6+N51D
	dwQCwUI4yXHS1/awKKOQO2xAarheD+SjRUOwSAj9YRNjmJ2PYDs5MnLpOYfOA0qI
	c1XCnr9gadrmZJrsxgMLLHCkGxlsRdf+5XBWtKFbKNCDbzF5d3O3KUXl4NunRpAF
	JEd68VKyBDcn1K6kaqZOpgg7mSpVb9FEgTFUaL9wnQth4Ep2nPj/TtuNtGx3n9Yk
	aEvyRg==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4826t1fh6t-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 09:29:35 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b2fcbd76b61so1217404a12.3
        for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 02:29:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753349374; x=1753954174;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Rkua1eHudLhTq/27Qdikz3br+O5tiA9+J0gTy0Df1aQ=;
        b=t5FiWmZw+F3IHPNI+bs9VQcEpaTafI0BaVHxLi8SrY+dsI6USlauVB+9Hj4U2FPueg
         xG7qLMaSGl13TL/v5H9Xq4ekh6nQgJAJoCAQXP84iunIffOT/0FJrZQAh35aYpZTMoRX
         e7xQ1pWCiXhPQoRgppDuXO79pX0WRsNvIbVRv+FWftHHPTtOYvV78UhWSqt3vkQcJ9Am
         mWf4NLW/Firqif6hfJFMfBDyXx5IHHr9s50CEYG/bczQXblQg//sZVlz8uWDfUW143uG
         gGvrWngZZQSOJ2orYzHFsHxWgLjEYNOUdd8sIW63a7WySBU+hDODFzXwF2JTVSeK3vNj
         wIEA==
X-Forwarded-Encrypted: i=1; AJvYcCXVSddRYaoL2B5zQIgUj0+as0gtREliGXVzEOMLiTcfn62WW+oy7CUIDhnwCTX9ZC6XTVnbZ9OWuUko@vger.kernel.org
X-Gm-Message-State: AOJu0YzgGt7ptb+xNGb1M1I1ZJ4w3OldblJhdBMsGklIA3llwHSb5SCc
	PtFzTCJeA3JLjcq+N7ZvgK9k1UETpcBs4zXkXI5xCRdMP2jSCWf3uqBInC5uhPK6aez9W8YCr9s
	xalDcsrXP25NZD2ezFKsnadS0FjGINM0HEUJWT1X/y1BaoCMw41pfcnA51immWn9tSv0aJ9CS
X-Gm-Gg: ASbGncvzdpYZmASZn/yvHbhq81cvRyTcNsfjc+j0mZ93/3SOop9uSl66CrWgYU4MQn5
	6k0tdmRXrg3fOJle9Lmb4tCV4Y5RMa3AXdEw7Fu1ZNKtSCpIH7PXE1p1AQupBTrKeMO4JEhVktt
	ap8AevdyZvMpEU0Jj6FNdL5yzlqgNIwwqEriGRibiA8ggvhP/b+0O5ij/LLf7tXNF/cuE5owh6F
	/0B2yE9HoLPPVyaZ4CS+OfaZrMckaLeHX2m7pDezkJO9H4Y8V2nAhwXoneHJQJyNiFn/jJvamRK
	X3VrO27giPu5XMbPWaEenCQv2NlViElfRZQTcitofjVjtNzsiUiqW3wMOUjpYCMP
X-Received: by 2002:a17:903:1b4d:b0:235:1706:1fe7 with SMTP id d9443c01a7336-23f9812b6c9mr96867245ad.4.1753349373715;
        Thu, 24 Jul 2025 02:29:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH7g+nxtHCjv5a2DV93ZQS9k2ZMHV3+YGWomUwAyenemQGop7HippiSuv8MVpUq7jurR6UPkQ==
X-Received: by 2002:a17:903:1b4d:b0:235:1706:1fe7 with SMTP id d9443c01a7336-23f9812b6c9mr96866835ad.4.1753349373301;
        Thu, 24 Jul 2025 02:29:33 -0700 (PDT)
Received: from hu-tdas-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23fa475f8a0sm11276505ad.24.2025.07.24.02.29.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Jul 2025 02:29:33 -0700 (PDT)
From: Taniya Das <taniya.das@oss.qualcomm.com>
Date: Thu, 24 Jul 2025 14:59:12 +0530
Subject: [PATCH v2 4/7] clk: qcom: rpmh: Add support for Glymur rpmh clocks
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250724-glymur_clock_controllers-v2-4-ab95c07002b4@oss.qualcomm.com>
References: <20250724-glymur_clock_controllers-v2-0-ab95c07002b4@oss.qualcomm.com>
In-Reply-To: <20250724-glymur_clock_controllers-v2-0-ab95c07002b4@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Taniya Das <taniya.das@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-aa3f6
X-Proofpoint-GUID: UbJCpqzrVM_HI6jX0LeLYPeeSeBKLade
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI0MDA2OCBTYWx0ZWRfX+tZ0cVB6IX8Y
 4+YjtUeWNTUq48NREAS3d9YgcKTDXSo9X9POSNeq+00FsTjeyAHcLLVwL803mnfNupKNFN39LbY
 jYVCsTosOc8FTLbbhHYySSXB9cOmOf8EFxvioW3CjIxnGths9eHWB1+GYnmG2CbHbFc+luiOaXg
 iEUsLeqpUs4N/zjHjRb6/1V0udWNNKvRUA4sV35ucHeOBQQl0mSfRf34qTzdVUP3r2tt7oObqku
 C91k5b3uVudt3hmcyk2NXFB/KEDamxgLKK0KSVIT6BbWcoUUW+S1lxC3VPCY6K+6Dx3LmZKSpZx
 Rsq/kxGOoN4neeQ3McEXrlyIOXTW1QYANQ6Ik8cKtVjOU03aIUXNQSN1cELfZIBvzrIEDMN9P8a
 k5EiT/U+9SMgU9Qz5vJzop5wyffGu8AMEFLP1lUMaLbNtGfp86pydXYh+R4cAVNuuJOD2fAM
X-Authority-Analysis: v=2.4 cv=E8/Npbdl c=1 sm=1 tr=0 ts=6881fcff cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=RRvC4NyyfoRIYhV0TvUA:9
 a=QEXdDO2ut3YA:10 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-ORIG-GUID: UbJCpqzrVM_HI6jX0LeLYPeeSeBKLade
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-24_01,2025-07-23_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 spamscore=0 bulkscore=0 lowpriorityscore=0
 priorityscore=1501 adultscore=0 suspectscore=0 clxscore=1015 phishscore=0
 mlxlogscore=999 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507240068

Add RPMH clock support for the Glymur SoC to enable proper clock
management.

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


