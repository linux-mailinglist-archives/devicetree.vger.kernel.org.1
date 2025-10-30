Return-Path: <devicetree+bounces-233176-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 469DEC1FBFA
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 12:14:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9467F1889393
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 11:11:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FE2A3563EC;
	Thu, 30 Oct 2025 11:10:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pFoSGGvQ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="itv7+rox"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02CDC355034
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 11:09:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761822601; cv=none; b=jyOJKyKDL+lcykIl3ypj8Lv1P7/VfEZqUAaqnn/0eR13WafZazbM2CRqMLhQ5HrNC2dKcd+YIck9eme1lvwiVNR3n9Do76w5f6+HQUQqEDsBT+0C6ziqrlOTWuBo42KY0RE+k+SUen77Q+Q1qdZRnDvi19n26elItM6ofy7AyU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761822601; c=relaxed/simple;
	bh=vA0ujxlrUGKjNDq+2dlKcqfaKN9aGolOJYXX43xbS6o=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=EuO+g22mGIOsECQRSuOneo2VuSdxIj/cXl66QGUMfYgSUmC8GJMxsNnHEZ97Oq8ff5jaKPdItVhBOYETLhqqHQDtQsV8ORw8mbOJc+DSaNkLdaMmRvJnKvxHbFcbK5YxS29BBwgXC+8gGTh4LHBi36Pg7rukmoB1JoAlBsW80Qw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pFoSGGvQ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=itv7+rox; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59U7sOYA1655941
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 11:09:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	53LnqHgmZ32fThZ1eoAscXxiLtOTxm3Bgxgofn2O27Y=; b=pFoSGGvQphmus5YX
	mpeFO0Mr3dZ7CofZyDeLiqMUeh/19/pgDw1/BQ8KEP3aMJHAuzn1D0nXJ9LuvnHM
	dUyNAEDQFOhpO6fwUJPg6AxI7X4Rm3qPT7ACIkxQzNgqPX8mwKPIXdWzCiVAIeWV
	1RoaRcJ9hh6xhXxsxRAISayXtAxZOSUn65KitBLiqbIkCRF+sIzp4tpfZpRcxBIJ
	ktvca1M+4+wI5XpAfHFyy0lFKumwcZNZ4GyGPOhPIV/lclCshnVugkOgbeTMI856
	VT00RTmxzaA56ljuqEgICmpG7U5vrVG0/llf9k+Ny+Z9q+3hS/7XQLgkgvoMbxVi
	O9o5nw==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a3tptt3h6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 11:09:58 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-33bcb7796d4so914055a91.0
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 04:09:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761822598; x=1762427398; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=53LnqHgmZ32fThZ1eoAscXxiLtOTxm3Bgxgofn2O27Y=;
        b=itv7+roxl45GCKraKDy3uUemKJNDDTk9QfFVot3EJmOwwV0WyrNMVDFlD2qZ+MlDn6
         /ojHCxxUs8Gy7kKmG01ICFB7JSiEYBsi6x5Ep4fe5zy01d6ir6DwhmCjuPl6duYOfdtM
         uuBTEUzUG5/IjAE7oOmzdVYGXvPmF/N2ESbUj+lx81+W90bhKffs3tbpOc4P1RmF4Ry8
         CX+eG4Rw4g34sKPdD4gvpRhxL0xOq4F/6nuKnGSsjIQdRx48B1D5bL6GTSCgo3u34O7z
         M7tvXjNk7dAtn/pdgaLEaWZUJl00HpVpx4jThN1RbdjZs2epOeK1kgDn2x/XAavLK9+g
         jk0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761822598; x=1762427398;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=53LnqHgmZ32fThZ1eoAscXxiLtOTxm3Bgxgofn2O27Y=;
        b=rVo3I7sJg+0+qfVDxDQk3nbubjli0y/WjmVEL1GdjQc4nPVSqFxRWrc+bPDtNnLOoP
         9buyNg6OZ9uYZ5zN6ky4CIVUfLk+2zY0oG0M9M4C21iJzeXIbxyEXniZYxMrcEtqbJxn
         aDj6syDoyxANSHwdcQQND5N5TM9nfm1cp3vIwPLTByEYKjKkoDbUMjhMMgib7gjODASk
         1WWVaZwjOecueUiXJMKFZ2eG6vxUkmQ3id9kXstFUPtFL1U99HTJAjIjm+GSQVxYKnx8
         MIdPFA1RMXDNk+zjSQ5eeVmi8DZYiRFnI0lDnUvnJid7yAtiHIP64bdu93TuPKTYqOus
         o1HQ==
X-Forwarded-Encrypted: i=1; AJvYcCX9xZuGiJqkf5JXjT4Z3jLmHO6DWO5RXgIElzMf5wx6xb2MBNf4WR0u6KC1EE9ojVgLVokHnqjI2Jph@vger.kernel.org
X-Gm-Message-State: AOJu0YxB/dh7cu9HjHl3rHIALcjgDdSeuxh2dZwML5WFDg+fSu6BD6Iw
	DB1KUyi0pYxwI9iYvPfDFlXN+s9K30rAxkXmwUqXiXZ6XfXe/G7P43XdCB+h8NUehEdf4cMw5jD
	+jEQ9blhOmlWHVWMv89MWXDnoEHvUCWsoB4PtktkNIDBEPqdcb88K1ADMfFQ6rgsx
X-Gm-Gg: ASbGncuVFEX1vX1xIf/FQD6hy8CX7uUlHB5rKr38O3az7ia7vlnYouGdLlwAZO2W6Ny
	6pn7whQv0BY4ycy58/oSJrreFqBmgyNo6NHxaqVosmyU/6bOl4BLwcoQEmsBDtzapyQaA73XEg4
	FG+K6kfhrtP7ZPObCCf+C+N/V9MAmDUw9BZM+6pmcx5rJ4HyHuC5+f9MNmGhpW/WOBI8Fp9PNsd
	IgSpc/aDZx5/FVMR/jOotrRv+4kVpYbZTRS9ppg9iENyL/rZ18wPYziZjezVhzAx0ZPi0x9EDmw
	oQ1YW4/3im8B8OXbMwHUGAX6El8jIyxy4fpSSRhmKjahGeLu+TnESRAHsmlubiGthDoVlQ3vidW
	ccxblKXlrt7o+MOeWpyLrQAk=
X-Received: by 2002:a17:90b:3906:b0:33b:ba50:fccc with SMTP id 98e67ed59e1d1-3403a29a3c2mr7189034a91.18.1761822598167;
        Thu, 30 Oct 2025 04:09:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF2NcxCbX30hAaogRbaIDm7GTnyat4f0luIpO58PL5QoDfyQ1VYmJ/GQdSiIxh/8/wxPtXjtg==
X-Received: by 2002:a17:90b:3906:b0:33b:ba50:fccc with SMTP id 98e67ed59e1d1-3403a29a3c2mr7188983a91.18.1761822597625;
        Thu, 30 Oct 2025 04:09:57 -0700 (PDT)
Received: from hu-tdas-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-340509727fesm2262839a91.4.2025.10.30.04.09.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Oct 2025 04:09:57 -0700 (PDT)
From: Taniya Das <taniya.das@oss.qualcomm.com>
Date: Thu, 30 Oct 2025 16:39:07 +0530
Subject: [PATCH v2 4/6] clk: qcom: rpmh: Add support for Kaanapali rpmh
 clocks
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251030-gcc_kaanapali-v2-v2-4-a774a587af6f@oss.qualcomm.com>
References: <20251030-gcc_kaanapali-v2-v2-0-a774a587af6f@oss.qualcomm.com>
In-Reply-To: <20251030-gcc_kaanapali-v2-v2-0-a774a587af6f@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, jingyi.wang@oss.qualcomm.com
Cc: aiqun.yu@oss.qualcomm.com, Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Taniya Das <taniya.das@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-aa3f6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMwMDA5MCBTYWx0ZWRfX4QUKOCyn08gA
 6tEF9ddfV1h2nZoAxfBw+FAaN7pontbBo1oipqb1s4c2zlXKpyIr4+1izUt7VxsdL+kZ5nuJtMT
 /KAP4yLK52rr2U5WKzTahduBs1xkWrO6777For/7u6q1LRqKwaEwevUnqIqkwRIWCLKi/kYZLOd
 iPmczIYw/Gm8mA3e8x9QXlsp9NW9Ci324uzKs7CERTorvCwq2O0YpmNKImSKWE16q1OZWxk3NeW
 v6WHk2W9+X8cUnx0b3vPYo1Ul0QsJYNbWDgZKjzxk/mIYVX8Llt66nK3YVfrlqIxtwbdP3thbeq
 mtA5EDesmrWoi0bU8JqXvB/P321tLWxC73K8miucWf3/PI3dmqH3RYtsoNwAnLWS8OM3WvFSb3a
 Vh0kxb/yM5Slr1vKDiVWcTbOLqFDtg==
X-Proofpoint-GUID: b1cUQJxi4YEbkF84dhfIbZw0Bq9soI7Y
X-Authority-Analysis: v=2.4 cv=MuRfKmae c=1 sm=1 tr=0 ts=69034786 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=gxflGWy-rYv13cvyobsA:9
 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-ORIG-GUID: b1cUQJxi4YEbkF84dhfIbZw0Bq9soI7Y
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-30_03,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 suspectscore=0 spamscore=0
 lowpriorityscore=0 clxscore=1015 bulkscore=0 phishscore=0 malwarescore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2510300090

Add the RPMH clocks present in Kaanapali SoC.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
---
 drivers/clk/qcom/clk-rpmh.c | 42 ++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/drivers/clk/qcom/clk-rpmh.c b/drivers/clk/qcom/clk-rpmh.c
index 1a98b3a0c528c24b600326e6b951b2edb6dcadd7..fd0fe312a7f2830a27e6effc0c0bd905d9d5ebed 100644
--- a/drivers/clk/qcom/clk-rpmh.c
+++ b/drivers/clk/qcom/clk-rpmh.c
@@ -395,6 +395,19 @@ DEFINE_CLK_RPMH_VRM(clk4, _a, "C4A_E0", 1);
 DEFINE_CLK_RPMH_VRM(clk5, _a, "C5A_E0", 1);
 DEFINE_CLK_RPMH_VRM(clk8, _a, "C8A_E0", 1);
 
+DEFINE_CLK_RPMH_VRM(ln_bb_clk1, _a2_e0, "C6A_E0", 2);
+DEFINE_CLK_RPMH_VRM(ln_bb_clk2, _a2_e0, "C7A_E0", 2);
+DEFINE_CLK_RPMH_VRM(ln_bb_clk3, _a2_e0, "C8A_E0", 2);
+
+DEFINE_CLK_RPMH_VRM(rf_clk1, _a_e0, "C1A_E0", 1);
+DEFINE_CLK_RPMH_VRM(rf_clk2, _a_e0, "C2A_E0", 1);
+
+DEFINE_CLK_RPMH_VRM(rf_clk3, _a2_e0, "C3A_E0", 2);
+DEFINE_CLK_RPMH_VRM(rf_clk4, _a2_e0, "C4A_E0", 2);
+DEFINE_CLK_RPMH_VRM(rf_clk5, _a2_e0, "C5A_E0", 2);
+
+DEFINE_CLK_RPMH_VRM(div_clk1, _a4_e0, "C11A_E0", 4);
+
 DEFINE_CLK_RPMH_BCM(ce, "CE0");
 DEFINE_CLK_RPMH_BCM(hwkm, "HK0");
 DEFINE_CLK_RPMH_BCM(ipa, "IP0");
@@ -901,6 +914,34 @@ static const struct clk_rpmh_desc clk_rpmh_glymur = {
 	.num_clks = ARRAY_SIZE(glymur_rpmh_clocks),
 };
 
+static struct clk_hw *kaanapali_rpmh_clocks[] = {
+	[RPMH_CXO_CLK]		= &clk_rpmh_bi_tcxo_div2.hw,
+	[RPMH_CXO_CLK_A]	= &clk_rpmh_bi_tcxo_div2_ao.hw,
+	[RPMH_DIV_CLK1]		= &clk_rpmh_div_clk1_a4_e0.hw,
+	[RPMH_LN_BB_CLK1]	= &clk_rpmh_ln_bb_clk1_a2_e0.hw,
+	[RPMH_LN_BB_CLK1_A]	= &clk_rpmh_ln_bb_clk1_a2_e0_ao.hw,
+	[RPMH_LN_BB_CLK2]	= &clk_rpmh_ln_bb_clk2_a2_e0.hw,
+	[RPMH_LN_BB_CLK2_A]	= &clk_rpmh_ln_bb_clk2_a2_e0_ao.hw,
+	[RPMH_LN_BB_CLK3]	= &clk_rpmh_ln_bb_clk3_a2_e0.hw,
+	[RPMH_LN_BB_CLK3_A]	= &clk_rpmh_ln_bb_clk3_a2_e0_ao.hw,
+	[RPMH_RF_CLK1]		= &clk_rpmh_rf_clk1_a_e0.hw,
+	[RPMH_RF_CLK1_A]	= &clk_rpmh_rf_clk1_a_e0_ao.hw,
+	[RPMH_RF_CLK2]		= &clk_rpmh_rf_clk2_a_e0.hw,
+	[RPMH_RF_CLK2_A]	= &clk_rpmh_rf_clk2_a_e0_ao.hw,
+	[RPMH_RF_CLK3]		= &clk_rpmh_rf_clk3_a2_e0.hw,
+	[RPMH_RF_CLK3_A]	= &clk_rpmh_rf_clk3_a2_e0_ao.hw,
+	[RPMH_RF_CLK4]		= &clk_rpmh_rf_clk4_a2_e0.hw,
+	[RPMH_RF_CLK4]		= &clk_rpmh_rf_clk4_a2_e0_ao.hw,
+	[RPMH_RF_CLK5_A]	= &clk_rpmh_rf_clk5_a2_e0.hw,
+	[RPMH_RF_CLK5_A]	= &clk_rpmh_rf_clk5_a2_e0_ao.hw,
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
@@ -991,6 +1032,7 @@ static int clk_rpmh_probe(struct platform_device *pdev)
 
 static const struct of_device_id clk_rpmh_match_table[] = {
 	{ .compatible = "qcom,glymur-rpmh-clk", .data = &clk_rpmh_glymur},
+	{ .compatible = "qcom,kaanapali-rpmh-clk", .data = &clk_rpmh_kaanapali},
 	{ .compatible = "qcom,milos-rpmh-clk", .data = &clk_rpmh_milos},
 	{ .compatible = "qcom,qcs615-rpmh-clk", .data = &clk_rpmh_qcs615},
 	{ .compatible = "qcom,qdu1000-rpmh-clk", .data = &clk_rpmh_qdu1000},

-- 
2.34.1


