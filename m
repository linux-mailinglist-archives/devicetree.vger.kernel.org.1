Return-Path: <devicetree+bounces-200373-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6169AB147CB
	for <lists+devicetree@lfdr.de>; Tue, 29 Jul 2025 07:44:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D89BC1882080
	for <lists+devicetree@lfdr.de>; Tue, 29 Jul 2025 05:44:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3728824BCF5;
	Tue, 29 Jul 2025 05:43:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="W6Br+ww4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABC82245032
	for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 05:43:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753767789; cv=none; b=WWuXz/sYtojtoR3x5UtN49W0MG/W+jYHMLGKzsaMLaDeDHVJ9wXWu6tuPcodKsAJomVbbZnCMUPLXMhFqK9HirzECUIRGCM0UXiEHQDKIt39H5bOdy649cR0la2Z8XZpNH3G/CE/8kvuIqNUwpD774C1LkeVkB2NioXzMgUD6aA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753767789; c=relaxed/simple;
	bh=OVzfN9tJRZeAyNzaEdIDWsZzTKb6T58kkVqG+1MZGb8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=uI4rOT5uZOGT05vXonc/QNQAgpbX8LoVyQqS1RrcVRPqjzElIQ7aQWa/F3+gwH3WSIDVr3MYo/CFaAQzfUN0nyUbauGYrls1o2MCjJCl1jOPRNukq4vsOUXloyjsdhrF3BONQyrNQvNpbnJ0qGAyjBiT2IeTXcpdqIapTya9Gco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=W6Br+ww4; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56SLoHkV018832
	for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 05:43:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0C9v0FM3TOSssawkz7WpmBOyhmNGfMtoTBWUwe0aU6A=; b=W6Br+ww4Za2nRGeO
	IhXMIeYu2y8us06J/PRc2keNsVRAui3G2VwwC7jWBSSvrpHqpdKwEqL62sN6q8qe
	NPorCNMEMwJJ8LNQwbXXR9LM9cKRsTEnLBVodP9ZDcm4zk2G8/eut+W3fuk7OzT9
	uh+KXNu8DBNGJqxzUcycgpaXHAEZ2Sk/DxME92X01k7zE5iICQ3BSDesBM+4jyEf
	qdWT3umx6DuKUBx3uiCS7GDVqZGSbAIJPXO+L94fR1q5fXbTNC52+1jQnkrG0yj8
	3EnoXI5orCNxrUXZ0bjVDi8NId3NWphujhsWasWbxeyuYfdReC3F4PJJSw9qim3d
	V8CzAA==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484q85xybe-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 05:43:06 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-237e6963f70so89886125ad.2
        for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 22:43:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753767786; x=1754372586;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0C9v0FM3TOSssawkz7WpmBOyhmNGfMtoTBWUwe0aU6A=;
        b=c+VkgVekN4WU6zOiE7RpEkjoASIxmpPwp/FKRNBZVVjw0juGVouCPUICTuHrXr4bo/
         TWjoCZfONaPkOkxsZEGlbrK/3m21lnDSZJ/t4kNz6PDsPUYuIHqqcgmL87D0382aRCj6
         ujeR4ptj4XKag8qP7947YIkhNN8Gr4VL9mshtuZmKm1+ZA9TyF8kHTMLVk3q8Usm5HpP
         FB16LlPeJjDQH6NTVsdtew7uwQAPyPF7mlDI2dwBgBLUbQU1CIRl7qnGBOuSuds/m/HK
         IWgSKJmt4rl+SGX4/8kAwWMiALDxQVnyCtkOmnkGSWMf0+6IuqU841XPxwej49/aYEzi
         h88A==
X-Forwarded-Encrypted: i=1; AJvYcCX+qxSBfFEyGw4PWRTy6ZWGIlC5RnVGETk1mjpaxZI8QKvg3e2ANBCiMIM+fUtpmDtMFYj5zF6Gri69@vger.kernel.org
X-Gm-Message-State: AOJu0YyLLUhKu4qKhi+8mDkgc3WAWOz9oQygZCwyf4g1pb3o4sCRMpU+
	8kubUDptDEbvJxet8pk1h+HcJiEbUbyNusm3+v4MZCs2UQqMWvzaw5cd52r6t0LN3DjarDKD0ai
	Z5QRKyhcjq+T/HdV4/UD+bPv+P6MmQUAM915iRPsewiRQdqmNdAw9V8PV4xPG7KtxRrOpcfjo
X-Gm-Gg: ASbGncsHTb4KYS5f/brqCwT+iDcI5sVZVn/nSnnQN5005BBl6NndyatOtfCHtyjQ1hH
	xq8wrLjld/WhDOVt72cOvGpgiJeEeai85e+wmpXqgB4sR2qIiXBms3WntQHsCMZi8AdvulSr37b
	U+YIpx+et/NGfOADJ1I+PuY6Sir0H6X3HNvATYs/b+Q/N/3vNM7jmEgWc4/3uwEo++qQ7SrUvuv
	PCQHV9VwYJ5X/YDwlsyLLzYjXN5yX24Y6zSHh4X1iiAlKB9p6KWfeeSGrKpwoX9BiosDihRo12A
	bsOM7rOjcnm1M3UpvNfQDVzMgH3I1DllCN4i55zAYNGhmFDJExa28EsoewJCAtUk
X-Received: by 2002:a17:903:2f0d:b0:23c:863d:2989 with SMTP id d9443c01a7336-23fb3065e41mr207262975ad.3.1753767785759;
        Mon, 28 Jul 2025 22:43:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGuKC49VBkZiHECTi9KBlMSNGzNAEaEP1WPkKqf/bdqrLtemg0XBkfBmt7Og8liW4pqUPQvvw==
X-Received: by 2002:a17:903:2f0d:b0:23c:863d:2989 with SMTP id d9443c01a7336-23fb3065e41mr207262815ad.3.1753767785306;
        Mon, 28 Jul 2025 22:43:05 -0700 (PDT)
Received: from hu-tdas-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23fe9b67485sm54505235ad.47.2025.07.28.22.43.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Jul 2025 22:43:04 -0700 (PDT)
From: Taniya Das <taniya.das@oss.qualcomm.com>
Date: Tue, 29 Jul 2025 11:12:39 +0530
Subject: [PATCH v3 5/7] clk: qcom: clk-alpha-pll: Add support for Taycan
 EKO_T PLL
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250729-glymur-gcc-tcsrcc-rpmhcc-v3-5-227cfe5c8ef4@oss.qualcomm.com>
References: <20250729-glymur-gcc-tcsrcc-rpmhcc-v3-0-227cfe5c8ef4@oss.qualcomm.com>
In-Reply-To: <20250729-glymur-gcc-tcsrcc-rpmhcc-v3-0-227cfe5c8ef4@oss.qualcomm.com>
To: kernel@oss.qualcomm.com, Pankaj Patil <quic_pankpati@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-aa3f6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI5MDA0MSBTYWx0ZWRfX+TnfxVJdV3Kt
 Bb/x2r6m/TxAoyU77KFK/biacFJdx1+PcE8mTeAP6leJfJPbx4EYJIseOrjz8EfZS/BpfL6U5nB
 VHjOjQePGOiEJXzNhKyFhHzzwPmE9WFiFtO7Q56k27UCDUHJ+1aQfEXBxWg5DTyZsegi8rNMfj7
 Az/GdzIZFVCLB/d9eKm+gGU/kn7apXpXSLywSCdnEcR8ajbksLMhLin16x0CV4EdpUbWfyYfiYV
 lbW1BjhxQE8MSMdvkLSFGnUzUZ6McLPhS3SW51emWgNR8vwLdqVOSTStPKMERBSCD1GeIgWW4WK
 tTEWnNlT8+SDAAej4lquar+ANpFD4DJXWDJmbbTLuVNl0AfcB6SZHGPVMrRTxbc7Ev05xRTmGTv
 IeK6Ab59u6HQ2EURg/1P9BOFsB1byrGfRL8Kn0Nf6X/epxn8UdLteioVBYkWGR6mcNHOcVZn
X-Authority-Analysis: v=2.4 cv=TqLmhCXh c=1 sm=1 tr=0 ts=68885f6a cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=9yNAuCQw4ehsCnPPvT8A:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-ORIG-GUID: mRZ_A-QGC3TVvU_zozPyuLYxtPSDADmO
X-Proofpoint-GUID: mRZ_A-QGC3TVvU_zozPyuLYxtPSDADmO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-29_01,2025-07-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 phishscore=0 bulkscore=0 lowpriorityscore=0 suspectscore=0
 malwarescore=0 adultscore=0 spamscore=0 priorityscore=1501 clxscore=1015
 impostorscore=0 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507290041

Add clock operations and register offsets to enable control of the Taycan
EKO_T PLL, allowing for proper configuration and management of the PLL.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
---
 drivers/clk/qcom/clk-alpha-pll.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/clk/qcom/clk-alpha-pll.h b/drivers/clk/qcom/clk-alpha-pll.h
index 7f35aaa7a35d88411beb11fd2be5d5dd5bfbe066..2294ae99cff3253ac54d916ad0bd1d7e4146f2a8 100644
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
@@ -232,6 +236,8 @@ void clk_pongo_elu_pll_configure(struct clk_alpha_pll *pll, struct regmap *regma
 				 const struct alpha_pll_config *config);
 #define clk_taycan_elu_pll_configure(pll, regmap, config) \
 	clk_lucid_evo_pll_configure(pll, regmap, config)
+#define clk_taycan_eko_t_pll_configure(pll, regmap, config) \
+	clk_lucid_evo_pll_configure(pll, regmap, config)
 
 void clk_rivian_evo_pll_configure(struct clk_alpha_pll *pll, struct regmap *regmap,
 				  const struct alpha_pll_config *config);

-- 
2.34.1


