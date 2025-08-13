Return-Path: <devicetree+bounces-204142-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DDE5B2438A
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 10:01:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9631C18875DC
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 07:57:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0A052EF64A;
	Wed, 13 Aug 2025 07:56:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="guteimpn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4890C2EA163
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 07:56:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755071781; cv=none; b=GUEVr2cNHiMHEq8hEwE9kA2nCDHn9+J6LE4ztCh1+pVRbYuntJhN4C0P3qNIwPcedJL69kXrexTVE/2mmxiowpAqhUGJfClMiFOM1ucf9EdhEnbg7e7PP0dw7v9TRb50hPpOsjd48N3kckJwlhTaTUqbV5UJApC8YbySOzNrGAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755071781; c=relaxed/simple;
	bh=h6RXWbyefgEVEM0BmVWVfZH0vo7yywZji3SwzXVLnjw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=IE2WEC9oZQ2oxjUslmp8OkBgeSrumphDQZFFninTk2WFI5+s98F7BqVYt3j5OsXFsE/YhjBBbfl2ZvdSBSU+7J5i7rOuo6Lnkfj41k/j4Ny5zTLOGnFN0e7UXqYKrv8zpYtZrnXiZWGVGt8We6GL7SC1cKl4w9Jo8XGVF/r2KUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=guteimpn; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57D6mNKx008768
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 07:56:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+lDsdc1O7kmdJsF/Ws/KKiaWnUoZYb60kkTYRbBrGPo=; b=guteimpnE/+mJBL4
	JCjnU3O93BWI6jGTgA206EUC7kouXacxGQI5K/b3B3av0nH8/XXl3Omndl3LYyzf
	5Yq3Ob7wq8AGJEtXd7u6nIAn78FCuSvpE1PWiDXjczUuU+IP+fmiWGIU4dITeHqb
	CjY6DkRb6X/HDrURAYCZ0+AOlpAbni4azSXjjoI/JUqvh+WOf5Xsso0+Id//7EYZ
	gHIaISg/nRtFIDN1USFxu1+jL2jNU5VnJUTCOxjA61MH2m5QcwEssOKM5XFf4KeT
	cW8QaA4m3+DxszwE2zJqffX7sXP3dzJBXe68A1mwyOlhDoIw3M3Q1Wg/GtUtJ/RK
	ztoaCA==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48fem4exre-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 07:56:18 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-76bcfe2a8a4so6373322b3a.0
        for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 00:56:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755071778; x=1755676578;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+lDsdc1O7kmdJsF/Ws/KKiaWnUoZYb60kkTYRbBrGPo=;
        b=GwX4fl5z6QunhN9HlQwiuq/m9pcuTNQqpvL8zyLyaVHr1rgUkL1S15URNJ4TC28NSV
         GiFZPVy/b5Fn8AeY+vlUP2ie24w9Zth0XCQA5G11y9vamyg4zf3iHoC9yGot/e+bgeId
         JVuIoYGNsY6FbxiLpMvaunI79KLpafBR7FXAgpDtoI38F2doBnW54Mvu6lne5dCO6ayY
         nh1+CtQQUpOnc0TvYrDXtltowgXTvZjx6LGs3ltS0oesTJJz3Gzy5lhqqgmp4qe6IxdX
         +/Z12ZJqhbzKl4NaqaStJIHl60FEKqG+cKsjDAez8oazHcHDJmRUBiijb5v7PM9D36wR
         C9jQ==
X-Forwarded-Encrypted: i=1; AJvYcCW9OEKz6LSnZIo25P492hPv1UhLAHVfvcD73lidAU8CRm8+euG2vc99zlTSQpA0hnkALsYMSJMCSFT7@vger.kernel.org
X-Gm-Message-State: AOJu0YzQDd3/lAVf8vv07MWWaGMNpkIHICHyNTeOcY4LT6mQAE6y5MX2
	QJNfNxGzFRltg/NrX/4IIdvS7Qr/EHRq1oFqVAwANNTsd2lGeFDexl2BylAwp4sMmslQjmfzhQk
	sUcUGNp3uS5GpPmnRuw3UNX0mypNz5A5dgZ89/Jl0UBtAQe/kFrN/y7TlY5gG42fw
X-Gm-Gg: ASbGnctApU8Z14/kvoK2mi7CUUt6zYYLCEUqdy5jC+hUT8AAPZfbDKwuB3v4RFFRsVv
	kveUTt06Kaia4Y0aB/jsPeUkfAq8lFpy+Fp0yS3/+EYywkR2Mf95YZBjljdsQ2RmFszzIV1wb8W
	cwYNT0rbcc7VxLsL6EWcmcvt8tWa1mB74stTWyzEYOiHRUOMAj0anfpTfmwEVApZWxTxeZ0I492
	sl6lQLmOiQjz+Al3dCJA+VU30jMOiaGfqcIfhbwOm+MvbDDWibKJofPkc0wyUud+EwS8JHh/Ke0
	j+27IUcOZEVDxcLHGShUg3aZbgivXZk5R/u6QYuWfAvZlPeFZiOt58wS/fBk5WjY
X-Received: by 2002:aa7:88ce:0:b0:74d:3a57:81d9 with SMTP id d2e1a72fcca58-76e20ccfc49mr3549423b3a.8.1755071777724;
        Wed, 13 Aug 2025 00:56:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEFKkn8Vd5JoUCGsjs14v7+Q6viwxTdxYiK2Y6KCGicQDC35oxh/Uki/eSQtb5LsQIxkyRZdg==
X-Received: by 2002:aa7:88ce:0:b0:74d:3a57:81d9 with SMTP id d2e1a72fcca58-76e20ccfc49mr3549399b3a.8.1755071777282;
        Wed, 13 Aug 2025 00:56:17 -0700 (PDT)
Received: from hu-tdas-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-76bccfbd22csm31395754b3a.65.2025.08.13.00.56.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Aug 2025 00:56:17 -0700 (PDT)
From: Taniya Das <taniya.das@oss.qualcomm.com>
Date: Wed, 13 Aug 2025 13:25:21 +0530
Subject: [PATCH v4 5/7] clk: qcom: clk-alpha-pll: Add support for Taycan
 EKO_T PLL
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250813-glymur-clock-controller-v4-v4-5-a408b390b22c@oss.qualcomm.com>
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
X-Proofpoint-GUID: MaJCcO00xGtF5bcoMlSG8WnGw0sUT0vU
X-Proofpoint-ORIG-GUID: MaJCcO00xGtF5bcoMlSG8WnGw0sUT0vU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODExMDA2OCBTYWx0ZWRfXxWzkQc0/VOHs
 P2rnyldGQiZ/BVtFgABzWeyHYM+pprWjzocE+UOn4kmd7c6vOkietaHHnDL3iONZnw/v/QYeJXg
 HxJokkNvoPBfGVhRWC0GrLT+cOAIT751xXVawkog27iERz7fEIEbinBnvZgIeLlMADEusu8YfTw
 aest5m7F4ApNMcxvBEEznZpr2Au91rerJqLbjQX3XVZSHgLbmn7KdxrChmaBCHm4C7FQQz/pNXS
 eOkBILBNhboq0CdUyRCJmspEPCc/wvYzW+V8dY/jN28NtV30GgSFMVZbTuofH7UKKh2hI22mxiC
 dZWi0vMvnHcFZeIPDvM0jnqCKlHyuK9E853nDY+IPPL9yEcbt5jz1o06tvWOZPDdNtVNj56WFFB
 lJaoPySu
X-Authority-Analysis: v=2.4 cv=YMafyQGx c=1 sm=1 tr=0 ts=689c4523 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=9yNAuCQw4ehsCnPPvT8A:9
 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-12_08,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 priorityscore=1501 spamscore=0 suspectscore=0
 adultscore=0 impostorscore=0 malwarescore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508110068

Add clock operations and register offsets to enable control of the Taycan
EKO_T PLL, allowing for proper configuration and management of the PLL.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
---
 drivers/clk/qcom/clk-alpha-pll.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/clk/qcom/clk-alpha-pll.h b/drivers/clk/qcom/clk-alpha-pll.h
index ff41aeab0ab9844cd4e43c9b8e1ba0b50205e48e..0903a05b18ccc68c9f8de5c7405bb197bf8d3d1d 100644
--- a/drivers/clk/qcom/clk-alpha-pll.h
+++ b/drivers/clk/qcom/clk-alpha-pll.h
@@ -29,6 +29,7 @@ enum {
 	CLK_ALPHA_PLL_TYPE_LUCID_OLE,
 	CLK_ALPHA_PLL_TYPE_PONGO_ELU,
 	CLK_ALPHA_PLL_TYPE_TAYCAN_ELU,
+	CLK_ALPHA_PLL_TYPE_TAYCAN_EKO_T = CLK_ALPHA_PLL_TYPE_TAYCAN_ELU,
 	CLK_ALPHA_PLL_TYPE_RIVIAN_EVO,
 	CLK_ALPHA_PLL_TYPE_DEFAULT_EVO,
 	CLK_ALPHA_PLL_TYPE_BRAMMO_EVO,
@@ -192,14 +193,17 @@ extern const struct clk_ops clk_alpha_pll_zonda_ops;
 
 extern const struct clk_ops clk_alpha_pll_lucid_evo_ops;
 #define clk_alpha_pll_taycan_elu_ops clk_alpha_pll_lucid_evo_ops
+#define clk_alpha_pll_taycan_eko_t_ops clk_alpha_pll_lucid_evo_ops
 extern const struct clk_ops clk_alpha_pll_reset_lucid_evo_ops;
 #define clk_alpha_pll_reset_lucid_ole_ops clk_alpha_pll_reset_lucid_evo_ops
 extern const struct clk_ops clk_alpha_pll_fixed_lucid_evo_ops;
 #define clk_alpha_pll_fixed_lucid_ole_ops clk_alpha_pll_fixed_lucid_evo_ops
 #define clk_alpha_pll_fixed_taycan_elu_ops clk_alpha_pll_fixed_lucid_evo_ops
+#define clk_alpha_pll_fixed_taycan_eko_t_ops clk_alpha_pll_fixed_lucid_evo_ops
 extern const struct clk_ops clk_alpha_pll_postdiv_lucid_evo_ops;
 #define clk_alpha_pll_postdiv_lucid_ole_ops clk_alpha_pll_postdiv_lucid_evo_ops
 #define clk_alpha_pll_postdiv_taycan_elu_ops clk_alpha_pll_postdiv_lucid_evo_ops
+#define clk_alpha_pll_postdiv_taycan_eko_t_ops clk_alpha_pll_postdiv_lucid_evo_ops
 
 extern const struct clk_ops clk_alpha_pll_pongo_elu_ops;
 extern const struct clk_ops clk_alpha_pll_rivian_evo_ops;
@@ -233,6 +237,8 @@ void clk_pongo_elu_pll_configure(struct clk_alpha_pll *pll, struct regmap *regma
 				 const struct alpha_pll_config *config);
 #define clk_taycan_elu_pll_configure(pll, regmap, config) \
 	clk_lucid_evo_pll_configure(pll, regmap, config)
+#define clk_taycan_eko_t_pll_configure(pll, regmap, config) \
+	clk_lucid_evo_pll_configure(pll, regmap, config)
 
 void clk_rivian_evo_pll_configure(struct clk_alpha_pll *pll, struct regmap *regmap,
 				  const struct alpha_pll_config *config);

-- 
2.34.1


