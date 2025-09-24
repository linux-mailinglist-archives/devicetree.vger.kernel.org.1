Return-Path: <devicetree+bounces-220903-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CB62B9C697
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 01:00:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 86AC07B3A50
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 22:58:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A714E2C027F;
	Wed, 24 Sep 2025 22:59:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IkB23UIk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7DA22BDC2B
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 22:59:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758754751; cv=none; b=QYIIfOKsQfix/d/mffZUfSJdorgeahZ5lgg9Iolce+RXCxrnHXq/BNs4SAGeWRQhofBdDQpNzt6dQWqeflq6TijW3x0w3Rt5QVgy5tf+zUoKlXd6mV/jJf6a4rqCNdk7xqia688717uTwBc5jBiomROAAAu8Tkz4lGi4XIJnwSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758754751; c=relaxed/simple;
	bh=XZ0hoeYqjKXt3km9LluK8i2YBRgettCbZm3Z+uReIqQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=TmxdxRlsScTzIThi0JGIwkoEiJr1JfsBXpSeE17b8SZNzLNx83i46sx1rfRTtu2DkiE6bPH64iufWRF3F3UK9kVSBHvojaGZS5/DQrnWM+KreTI55VSrVxga84MNT52yg2cwWrE6u7QGwzd2yRa/l9wuHWWlt8uBEJxSfrm756I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IkB23UIk; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OCDYOV016704
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 22:59:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dWwZxKCkwdVAKEY9a++gDKMjpT1SaCqsz9/b8XNl96U=; b=IkB23UIkaT+XdEv/
	iqLZqBxm0bRFoSfK1TbksdegmK3IN0Yv+WgAb5p+fbl5WyrQG0rvoSFDszXEbm3c
	4wJ6iQy4y4MVh5wsCmIi6F6UZMG++nPEA5Q9MTR0BFeLTcdo/dnjqdC2roliEJMM
	HEJr0Vj5khQknPhgDFbmS9JjX/iRsGmo0ubO5NcpeO7lKu8SViNi0fsLUgfNgtjr
	fBo6ZPiX8xprIcZZDrCDDrDfrKfb/Bs05WYo+gZcWtYycCNKMfrXHDlS2mq1Qely
	WYmCOk8Jq3aGnrskCF+dItgcHUcGRPMqrr+nkNSmQZDVTubCXM9JZRjVaDN4WhM2
	FGN3ng==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49b3nyhsnd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 22:59:08 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-77df7f0d7a3so297419b3a.2
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 15:59:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758754748; x=1759359548;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dWwZxKCkwdVAKEY9a++gDKMjpT1SaCqsz9/b8XNl96U=;
        b=swCqTPOZ2BJlSliT8EinjX60vz9K1gy8NnnXQMz3hc4ti2FzTVfwoZKeECt7nXH6JS
         nCUuIoPLagir1kj16EI0pMa3MFL2ObwtuM413GiQ/jupwr6DzR1jCLZU06WUaRLb0M7E
         gr7JfAM2scCdintWzItcSRJ770VAFXM6bHJNXBopMuy2GlaeZyYb6OIWCLcNddBi2ouA
         iQmdKLgc5UZZrWZwhs7pg4w3zHlyCpAcOULovmNDlClgJirWc3rk/oJr9xd2yRSjvXcE
         MvAP/r7zfLqCdzOyqEhCc00eMXNFtGdNNL1yQ7vVyE3yqwZKMelDzW/v7QqCrtPtYwyr
         5rjg==
X-Forwarded-Encrypted: i=1; AJvYcCXuLhdYGfAXgsLTsiSLFw0v/ZuGoCrZTDNZ/RC9ejqwkjmgTRZSp4h17S++xVsvS8HTCwwQ6Pvd17ey@vger.kernel.org
X-Gm-Message-State: AOJu0Yz97GU3bDn+3Dxd0ic+TdYURYCefdkBZavMAEbbpK0maVmDl6CF
	rxuWToi5igHWSO5n5pt9S7QxMgZ33lOwx5/9/ueuL2Q47ghJ9uEUPFOMTwC/f1R9Xq8/nX+wN1B
	Qyi3Q95EXCpOCJgL3X7nnzAU3RULkBOH1zrlnjoRVf8m8a2Ray3dqkw2md+Rwv+Sz
X-Gm-Gg: ASbGncur3f0loGocA10Qo70mAUSumKagfJWRCpWFHVVNY705kY2yhPEllEGKuPSjAit
	bh/h2+PKDXyVd3X5T0Hr1OnZuuNn7Rpdqv6JPY0YmcuDzCbzz74k6WoLnkKFIJo2j8PEVrvj6NN
	jr2mA9N3yUKxJz44M3cAmmv8EZmVBN95KuG1w7p14ODicZnPqrDzDPiIrpGCBfBwJmWTf2CKxio
	8jRHj9ghhwg7dVurgRli8GKXobdoaK0n/eqs4Tkk5hoaqxtJTfXeOHdvVbXY4sZBInDYI3Z0Haj
	fXKF2Pb1K+0KCa2GU/E2vLi5KGIu/8tkQqRetgy+7YWE04QMpNgz3EMtktjSeuc6rFjLerTOVuR
	byA9gHiKjn1zqA4w=
X-Received: by 2002:a05:6a00:2345:b0:77f:2e62:1e32 with SMTP id d2e1a72fcca58-780fce1f177mr1676592b3a.2.1758754748053;
        Wed, 24 Sep 2025 15:59:08 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHVPWhLfFWOYM2j92FUM0viubup4HQUNPWDl/34V9A780ChXBV6NXaa/7+RyBg9wFmhwWCnXA==
X-Received: by 2002:a05:6a00:2345:b0:77f:2e62:1e32 with SMTP id d2e1a72fcca58-780fce1f177mr1676557b3a.2.1758754747446;
        Wed, 24 Sep 2025 15:59:07 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-78102c2b70esm111166b3a.101.2025.09.24.15.59.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 15:59:06 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Wed, 24 Sep 2025 15:58:56 -0700
Subject: [PATCH 4/9] clk: qcom: rpmh: Add support for Kaanapali rpmh clocks
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250924-knp-clk-v1-4-29b02b818782@oss.qualcomm.com>
References: <20250924-knp-clk-v1-0-29b02b818782@oss.qualcomm.com>
In-Reply-To: <20250924-knp-clk-v1-0-29b02b818782@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758754740; l=3080;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=yAdiGcsgDOlUWsxDUGOiFkgNYUbzTf+oqHvFM4/yQPU=;
 b=Ume/z3becT7Yq26SLRd0O0bxwN64Tp3InF4Dh1V4PGWv3aYQNjuKYocEmtcwh2XcdcN6E5nAl
 bd17vFigxBSBXjruf/kidElQNPYxXwaE9DSb28OgOMoH/BHoDhJO+aN
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Authority-Analysis: v=2.4 cv=EuPSrTcA c=1 sm=1 tr=0 ts=68d477bd cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=gxflGWy-rYv13cvyobsA:9
 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-GUID: GYZE6g4F9avV5efX4cGE_qgIKQWntRT9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDA5MCBTYWx0ZWRfX7HgzynoF0kiM
 tDXM1oBWrNU5OR2fNE6bWYlEmDCKmOAPjR8OSBUhz5s90EpbhaKF2j+IoeI74DRpZX2Pi/58Onk
 re3fMzFQHt23ixOZ4WMyk8f11YfhT2fsC5BIuEVnHlYUylZKGapVzMUYCegYuNItXZ5qXKH0tiX
 6J1Lg5jdPSOx8gYgkZufxiZOpehgBl6YrFXX6QNFYxUz7boUBffNWK8VlHbNxqP9qG9GSRBzEuu
 osMlonAd/di/gR2U44SuZRDlwjZ3bLF16+biS33PfQj7JvD9iXvPMd7Ma+yiCFVeRnG7BRIREea
 4Cg+YrLyS15nSNZdiL5NtWiDEmOcUIrPrV8QfLvc/cKH1vPIsmjfH9UX1teEPpgCu2SlSX8u7B4
 r8KDO85g
X-Proofpoint-ORIG-GUID: GYZE6g4F9avV5efX4cGE_qgIKQWntRT9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 malwarescore=0 spamscore=0 adultscore=0
 clxscore=1015 priorityscore=1501 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220090

From: Taniya Das <taniya.das@oss.qualcomm.com>

Add the RPMH clocks present in Kaanapali SoC.

Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 drivers/clk/qcom/clk-rpmh.c | 39 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/drivers/clk/qcom/clk-rpmh.c b/drivers/clk/qcom/clk-rpmh.c
index 63c38cb47bc4..6b1f24ee66d5 100644
--- a/drivers/clk/qcom/clk-rpmh.c
+++ b/drivers/clk/qcom/clk-rpmh.c
@@ -395,6 +395,16 @@ DEFINE_CLK_RPMH_VRM(clk4, _a, "C4A_E0", 1);
 DEFINE_CLK_RPMH_VRM(clk5, _a, "C5A_E0", 1);
 DEFINE_CLK_RPMH_VRM(clk8, _a, "C8A_E0", 1);
 
+DEFINE_CLK_RPMH_VRM(c1a_e0, _a, "C1A_E0", 1);
+DEFINE_CLK_RPMH_VRM(c2a_e0, _a, "C2A_E0", 1);
+DEFINE_CLK_RPMH_VRM(c3a_e0, _a2, "C3A_E0", 2);
+DEFINE_CLK_RPMH_VRM(c4a_e0, _a2, "C4A_E0", 2);
+DEFINE_CLK_RPMH_VRM(c5a_e0, _a2, "C5A_E0", 2);
+DEFINE_CLK_RPMH_VRM(c6a_e0, _a2, "C6A_E0", 2);
+DEFINE_CLK_RPMH_VRM(c7a_e0, _a2, "C7A_E0", 2);
+DEFINE_CLK_RPMH_VRM(c8a_e0, _a2, "C8A_E0", 2);
+DEFINE_CLK_RPMH_VRM(c11a_e0, _a4, "C11A_E0", 4);
+
 DEFINE_CLK_RPMH_BCM(ce, "CE0");
 DEFINE_CLK_RPMH_BCM(hwkm, "HK0");
 DEFINE_CLK_RPMH_BCM(ipa, "IP0");
@@ -900,6 +910,34 @@ static const struct clk_rpmh_desc clk_rpmh_glymur = {
 	.num_clks = ARRAY_SIZE(glymur_rpmh_clocks),
 };
 
+static struct clk_hw *kaanapali_rpmh_clocks[] = {
+	[RPMH_CXO_CLK]		= &clk_rpmh_bi_tcxo_div2.hw,
+	[RPMH_CXO_CLK_A]	= &clk_rpmh_bi_tcxo_div2_ao.hw,
+	[RPMH_DIV_CLK1]		= &clk_rpmh_c11a_e0_a4.hw,
+	[RPMH_LN_BB_CLK1]	= &clk_rpmh_c6a_e0_a2.hw,
+	[RPMH_LN_BB_CLK1_A]	= &clk_rpmh_c6a_e0_a2_ao.hw,
+	[RPMH_LN_BB_CLK2]	= &clk_rpmh_c7a_e0_a2.hw,
+	[RPMH_LN_BB_CLK2_A]	= &clk_rpmh_c7a_e0_a2_ao.hw,
+	[RPMH_LN_BB_CLK3]	= &clk_rpmh_c8a_e0_a2.hw,
+	[RPMH_LN_BB_CLK3_A]	= &clk_rpmh_c8a_e0_a2_ao.hw,
+	[RPMH_RF_CLK1]		= &clk_rpmh_c1a_e0_a.hw,
+	[RPMH_RF_CLK1_A]	= &clk_rpmh_c1a_e0_a_ao.hw,
+	[RPMH_RF_CLK2]		= &clk_rpmh_c2a_e0_a.hw,
+	[RPMH_RF_CLK2_A]	= &clk_rpmh_c2a_e0_a_ao.hw,
+	[RPMH_RF_CLK3]		= &clk_rpmh_c3a_e0_a2.hw,
+	[RPMH_RF_CLK3_A]	= &clk_rpmh_c3a_e0_a2_ao.hw,
+	[RPMH_RF_CLK4]		= &clk_rpmh_c4a_e0_a2.hw,
+	[RPMH_RF_CLK4]		= &clk_rpmh_c4a_e0_a2.hw,
+	[RPMH_RF_CLK5_A]	= &clk_rpmh_c5a_e0_a2_ao.hw,
+	[RPMH_RF_CLK5_A]	= &clk_rpmh_c5a_e0_a2_ao.hw,
+	[RPMH_IPA_CLK]		= &clk_rpmh_ipa.hw,
+};
+
+static const struct clk_rpmh_desc clk_rpmh_kaanapali = {
+	.clks = kaanapali_rpmh_clocks,
+	.num_clks = ARRAY_SIZE(kaanapali_rpmh_clocks),
+};
+
 static struct clk_hw *of_clk_rpmh_hw_get(struct of_phandle_args *clkspec,
 					 void *data)
 {
@@ -990,6 +1028,7 @@ static int clk_rpmh_probe(struct platform_device *pdev)
 
 static const struct of_device_id clk_rpmh_match_table[] = {
 	{ .compatible = "qcom,glymur-rpmh-clk", .data = &clk_rpmh_glymur},
+	{ .compatible = "qcom,kaanapali-rpmh-clk", .data = &clk_rpmh_kaanapali},
 	{ .compatible = "qcom,milos-rpmh-clk", .data = &clk_rpmh_milos},
 	{ .compatible = "qcom,qcs615-rpmh-clk", .data = &clk_rpmh_qcs615},
 	{ .compatible = "qcom,qdu1000-rpmh-clk", .data = &clk_rpmh_qdu1000},

-- 
2.25.1


