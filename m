Return-Path: <devicetree+bounces-253083-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 39360D07228
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 05:35:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 50C873051C7A
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 04:34:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CE502E8B7C;
	Fri,  9 Jan 2026 04:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TQ60iQqM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f46.google.com (mail-oa1-f46.google.com [209.85.160.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A4162DFF19
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 04:34:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767933274; cv=none; b=X5LB2o3hnkLiAsf1o795VKmzW48k0QDV2dEF7/Je4kV/rppxrGE81b1MQl6YOoj0vNIUnFEkNkRxEBg8avfdP/Dlclc00FVYQafXELKtohrP4ezYvNkVGys9uImS+ecowlOd4gz63Q9QdD6uUKTussW9G5JtATSBRkRsNC4LmKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767933274; c=relaxed/simple;
	bh=2abIKdioHKuqFCVVrc2rlxdq1wJZS4xz8H+W/r0DMWw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=peefsNC/9le8dFPTvnjq6b6YnSUrnFuin8ta6xbUpDP7hm9AOvGsU8ZQ8wwl1DzV+95XP+KLpunIzYDs+IzUkzNtLzlHMK93i5xJN20RYd9ukcJExByT62qY6GLsglZdgpokGUmCByQFdw8nrrKvUahS46UhHrkD60EHSku3Mec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TQ60iQqM; arc=none smtp.client-ip=209.85.160.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f46.google.com with SMTP id 586e51a60fabf-3e8819eda8bso1414512fac.3
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 20:34:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767933264; x=1768538064; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VymCizJkrbUg3Dme3lvHp49OC7wgHu27DgIm2cwwCWU=;
        b=TQ60iQqMUKe2uCIohS5XyyzpfJ+dTYRvxRLDE0Xgbtx7DE3bLIQWau5OksA0C+V3rz
         es0U/abwqL98tjLiDUCCzfmYgN+wyAFt6+hzP9RuCqR6X/ChQB3+Wncu2sIJ77ZY4NXW
         JKCC4TcdFBOhmAWfrEdy8kx28MWZXVRya3E2bWeJcgCI19FfV2MUsq5H2XKLinPg1imw
         6pdKS8TiII5/3bxAPh5uYNdkYrzcHfbeePIIrOSBVaX94WTSBKA65HrK2VbgGhuhhndi
         TU7ltlw0fkpyRz0lZ6pRAkgjgC4G3Hv6b+eH+5kc0EPX8RewboN6PcJerraeuqeuZyPm
         YAkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767933264; x=1768538064;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=VymCizJkrbUg3Dme3lvHp49OC7wgHu27DgIm2cwwCWU=;
        b=VGFuwLUvXXVyk8K52pQvSbWr+3R71wdBnFDd9zi2R3S9oLt+j+T2ERY3tLK6E8+3hC
         hdLVxDRUkWRNemEp5RE6LMaU36D2ixBCMk4flaer1NweycCKuv+vHdWgKGKL+37ke/Id
         r6nIUD0QvAuTmrznSLouuKGzK/En+pvLzIn7BGtsH0IhvJE37h1CRjOPaMZp20bL2V3K
         PSvDhFgjhNUwBg3nJnyu59mV8O9Pd7rVAdARdAktE4e3dpf18j3ujJ/szcfwx16IZIP5
         cTp37kWipuRuN/IZNvKfC+sIr5p2Lzez8ZyRvlEU4gU/FgwDYOzFjmoQuunrM7WmD356
         RFxA==
X-Forwarded-Encrypted: i=1; AJvYcCUXwJWSqsVrZ9YlSnYjF5R+PLjWtuy/dwyJKlZTn3lVGOUvrFeW44uUpGv+XZK8TuYb4UPLyTIk5wrk@vger.kernel.org
X-Gm-Message-State: AOJu0YxFjPhrJeG6lAFQHBIN1JwqLFMoXE3sh37aR5V57st+yFpS+yQT
	VrmqmpVC/Yp4U01AcOi9vmfwoU3c8ldTsVYFOKEb79nRHLh+dsfd9+GG
X-Gm-Gg: AY/fxX41xkD3/uZcCBzykeQ902YBts23+B3dncXmjrAm6otc2ljQ5wZ0pJD1RQWOeoL
	3GHi6kaUwKl47Duvvk5JodV6VhU7c+bDtvfJlLEI0OhI/sU2HQIODfuOhJhhuI8zATUCgUdtnvg
	tl6fNDiBR8Gce46wIjVR5+7WX3s0mmK+y3VPQMIpAzE6Ew76KpQ38JDEJ3ZWpus0dzJ/ykewV7j
	dK00045BlB/anOqAZQq3Kq2P87jL4LsdTNB7LvJzMf7ikKNiV1mnyNnvjqeUrk8WUSORHP01zkG
	PJPtqvt4mL/zzWu9s1VLGCrcZhz92O57zs7vEGiycz2DeFDy/6CgIj1Odh6idcptzOJ8PqX4kfX
	1X3NpLW8CihWfm8Kky/uCBc8kfSU+DgJAligpQZFLrAdUTqtvhPdoIhG+iyPXIf3ee58FABVRE3
	xl40Nqd10dtzN5V161Ru3Amq9LgHf6XP/aO1xN0raWwhkTtS+JpMoqC9ZUAumlkhTk28/F/tiQF
	Ldr22mG9l2h9pYz/HlOmxRmfD5p1x0o9Sh+SKA=
X-Google-Smtp-Source: AGHT+IGKogmUEb02ZbJlLltI7+PDxuLuhx/ja1knaw86NH00xOU50PG9fwQfnQN39e+H79FvmbOjIA==
X-Received: by 2002:a05:6871:e709:b0:3e9:35d4:213f with SMTP id 586e51a60fabf-3ffc090099amr4432615fac.10.1767933264320;
        Thu, 08 Jan 2026 20:34:24 -0800 (PST)
Received: from nukework.lan (c-98-57-15-22.hsd1.tx.comcast.net. [98.57.15.22])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-3ffa515f4dasm6274421fac.21.2026.01.08.20.34.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 20:34:22 -0800 (PST)
From: Alexandru Gagniuc <mr.nuke.me@gmail.com>
To: andersson@kernel.org,
	krzk+dt@kernel.org,
	mturquette@baylibre.com,
	linux-remoteproc@vger.kernel.org,
	Mathieu Poirier <mathieu.poirier@linaro.org>
Cc: robh@kernel.org,
	conor+dt@kernel.org,
	konradybcio@kernel.org,
	sboyd@kernel.org,
	p.zabel@pengutronix.de,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	Alexandru Gagniuc <mr.nuke.me@gmail.com>
Subject: [PATCH v2 9/9] remoteproc: qcom_q6v5_wcss: use bulk clk API for q6 clocks in QCS404
Date: Thu,  8 Jan 2026 22:33:44 -0600
Message-ID: <20260109043352.3072933-10-mr.nuke.me@gmail.com>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <20260109043352.3072933-1-mr.nuke.me@gmail.com>
References: <20260109043352.3072933-1-mr.nuke.me@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Five of the clocks on QCS404 are consistently enabled and disabled
together. Use the bulk clock API to get and enable them. They are
enabled after the Q6 reset is deasserted, implying that pre_boot is
not the appropriate designator. Store them in wcss->clks.

Signed-off-by: Alexandru Gagniuc <mr.nuke.me@gmail.com>
---
Changes since v1:
 - Use wcss->clks, since wcss->q6_clks has been renamed.
---
 drivers/remoteproc/qcom_q6v5_wcss.c | 99 ++++++++---------------------
 1 file changed, 28 insertions(+), 71 deletions(-)

diff --git a/drivers/remoteproc/qcom_q6v5_wcss.c b/drivers/remoteproc/qcom_q6v5_wcss.c
index 2bb83e6afb6b..3c1794fde3f0 100644
--- a/drivers/remoteproc/qcom_q6v5_wcss.c
+++ b/drivers/remoteproc/qcom_q6v5_wcss.c
@@ -128,14 +128,9 @@ struct q6v5_wcss {
 	u32 halt_nc;
 
 	struct clk *xo;
-	struct clk *ahbfabric_cbcr_clk;
 	struct clk *gcc_abhs_cbcr;
 	struct clk *gcc_axim_cbcr;
-	struct clk *lcc_csr_cbcr;
 	struct clk *ahbs_cbcr;
-	struct clk *tcm_slave_cbcr;
-	struct clk *qdsp6ss_abhm_cbcr;
-	struct clk *qdsp6ss_axim_cbcr;
 	struct clk *lcc_bcr_sleep;
 	struct clk_bulk_data *clks;
 	/* clocks that must be started before the Q6 is booted */
@@ -427,35 +422,16 @@ static int q6v5_wcss_qcs404_power_on(struct q6v5_wcss *wcss)
 	/* Remove reset to the WCNSS QDSP6SS */
 	reset_control_deassert(wcss->wcss_q6_bcr_reset);
 
-	/* Enable Q6SSTOP_AHBFABRIC_CBCR clock */
-	ret = clk_prepare_enable(wcss->ahbfabric_cbcr_clk);
-	if (ret)
+	ret = clk_bulk_prepare_enable(wcss->num_clks, wcss->clks);
+	if (ret) {
+		dev_err(wcss->dev, "failed to enable q6 clocks, err=%d\n", ret);
 		goto disable_gcc_abhs_cbcr_clk;
-
-	/* Enable the LCCCSR CBC clock, Q6SSTOP_Q6SSTOP_LCC_CSR_CBCR clock */
-	ret = clk_prepare_enable(wcss->lcc_csr_cbcr);
-	if (ret)
-		goto disable_ahbfabric_cbcr_clk;
+	};
 
 	/* Enable the Q6AHBS CBC, Q6SSTOP_Q6SS_AHBS_CBCR clock */
 	ret = clk_prepare_enable(wcss->ahbs_cbcr);
 	if (ret)
-		goto disable_csr_cbcr_clk;
-
-	/* Enable the TCM slave CBC, Q6SSTOP_Q6SS_TCM_SLAVE_CBCR clock */
-	ret = clk_prepare_enable(wcss->tcm_slave_cbcr);
-	if (ret)
-		goto disable_ahbs_cbcr_clk;
-
-	/* Enable the Q6SS AHB master CBC, Q6SSTOP_Q6SS_AHBM_CBCR clock */
-	ret = clk_prepare_enable(wcss->qdsp6ss_abhm_cbcr);
-	if (ret)
-		goto disable_tcm_slave_cbcr_clk;
-
-	/* Enable the Q6SS AXI master CBC, Q6SSTOP_Q6SS_AXIM_CBCR clock */
-	ret = clk_prepare_enable(wcss->qdsp6ss_axim_cbcr);
-	if (ret)
-		goto disable_abhm_cbcr_clk;
+		goto disable_clks;
 
 	/* Enable the Q6SS XO CBC */
 	val = readl(wcss->reg_base + Q6SS_XO_CBCR);
@@ -538,17 +514,9 @@ static int q6v5_wcss_qcs404_power_on(struct q6v5_wcss *wcss)
 	val = readl(wcss->reg_base + Q6SS_XO_CBCR);
 	val &= ~Q6SS_CLK_ENABLE;
 	writel(val, wcss->reg_base + Q6SS_XO_CBCR);
-	clk_disable_unprepare(wcss->qdsp6ss_axim_cbcr);
-disable_abhm_cbcr_clk:
-	clk_disable_unprepare(wcss->qdsp6ss_abhm_cbcr);
-disable_tcm_slave_cbcr_clk:
-	clk_disable_unprepare(wcss->tcm_slave_cbcr);
-disable_ahbs_cbcr_clk:
 	clk_disable_unprepare(wcss->ahbs_cbcr);
-disable_csr_cbcr_clk:
-	clk_disable_unprepare(wcss->lcc_csr_cbcr);
-disable_ahbfabric_cbcr_clk:
-	clk_disable_unprepare(wcss->ahbfabric_cbcr_clk);
+disable_clks:
+	clk_bulk_disable_unprepare(wcss->num_clks, wcss->clks);
 disable_gcc_abhs_cbcr_clk:
 	clk_disable_unprepare(wcss->gcc_abhs_cbcr);
 
@@ -666,11 +634,7 @@ static int q6v5_qcs404_wcss_shutdown(struct q6v5_wcss *wcss)
 	val &= ~Q6SS_BHS_ON;
 	writel(val, wcss->reg_base + Q6SS_PWR_CTL_REG);
 
-	clk_disable_unprepare(wcss->ahbfabric_cbcr_clk);
-	clk_disable_unprepare(wcss->lcc_csr_cbcr);
-	clk_disable_unprepare(wcss->tcm_slave_cbcr);
-	clk_disable_unprepare(wcss->qdsp6ss_abhm_cbcr);
-	clk_disable_unprepare(wcss->qdsp6ss_axim_cbcr);
+	clk_bulk_disable_unprepare(wcss->num_clks, wcss->clks);
 
 	val = readl(wcss->reg_base + Q6SS_SLEEP_CBCR);
 	val &= ~BIT(0);
@@ -1112,6 +1076,20 @@ static int q6v5_alloc_memory_region(struct q6v5_wcss *wcss)
 
 static int q6v5_wcss_init_clock(struct q6v5_wcss *wcss)
 {
+	static const char *const bulk_clks[] = {
+		"lcc_ahbfabric_cbc", "tcsr_lcc_cbc", "lcc_tcm_slave_cbc",
+		"lcc_abhm_cbc", "lcc_axim_cbc" };
+	int ret, i;
+
+	wcss->num_clks = ARRAY_SIZE(bulk_clks);
+	wcss->clks = devm_kcalloc(wcss->dev, wcss->num_clks,
+				       sizeof(*wcss->clks), GFP_KERNEL);
+	if (!wcss->clks)
+		return -ENOMEM;
+
+	for (i = 0; i < wcss->num_clks; i++)
+		wcss->clks[i].id = bulk_clks[i];
+
 	wcss->xo = devm_clk_get(wcss->dev, "xo");
 	if (IS_ERR(wcss->xo))
 		return dev_err_probe(wcss->dev, PTR_ERR(wcss->xo),
@@ -1127,44 +1105,23 @@ static int q6v5_wcss_init_clock(struct q6v5_wcss *wcss)
 		return dev_err_probe(wcss->dev, PTR_ERR(wcss->gcc_axim_cbcr),
 				     "failed to get gcc axim clock\n");
 
-	wcss->ahbfabric_cbcr_clk = devm_clk_get(wcss->dev,
-						"lcc_ahbfabric_cbc");
-	if (IS_ERR(wcss->ahbfabric_cbcr_clk))
-		return dev_err_probe(wcss->dev, PTR_ERR(wcss->ahbfabric_cbcr_clk),
-				     "failed to get ahbfabric clock\n");
-
-	wcss->lcc_csr_cbcr = devm_clk_get(wcss->dev, "tcsr_lcc_cbc");
-	if (IS_ERR(wcss->lcc_csr_cbcr))
-		return dev_err_probe(wcss->dev, PTR_ERR(wcss->lcc_csr_cbcr),
-				     "failed to get csr cbcr clk\n");
-
 	wcss->ahbs_cbcr = devm_clk_get(wcss->dev,
 				       "lcc_abhs_cbc");
 	if (IS_ERR(wcss->ahbs_cbcr))
 		return dev_err_probe(wcss->dev, PTR_ERR(wcss->ahbs_cbcr),
 				     "failed to get ahbs_cbcr clk\n");
 
-	wcss->tcm_slave_cbcr = devm_clk_get(wcss->dev,
-					    "lcc_tcm_slave_cbc");
-	if (IS_ERR(wcss->tcm_slave_cbcr))
-		return dev_err_probe(wcss->dev, PTR_ERR(wcss->tcm_slave_cbcr),
-				     "failed to get tcm cbcr clk\n");
-
-	wcss->qdsp6ss_abhm_cbcr = devm_clk_get(wcss->dev, "lcc_abhm_cbc");
-	if (IS_ERR(wcss->qdsp6ss_abhm_cbcr))
-		return dev_err_probe(wcss->dev, PTR_ERR(wcss->qdsp6ss_abhm_cbcr),
-				     "failed to get abhm cbcr clk\n");
-
-	wcss->qdsp6ss_axim_cbcr = devm_clk_get(wcss->dev, "lcc_axim_cbc");
-	if (IS_ERR(wcss->qdsp6ss_axim_cbcr))
-		return dev_err_probe(wcss->dev, PTR_ERR(wcss->qdsp6ss_axim_cbcr),
-				     "failed to get axim cbcr clk\n");
-
 	wcss->lcc_bcr_sleep = devm_clk_get(wcss->dev, "lcc_bcr_sleep");
 	if (IS_ERR(wcss->lcc_bcr_sleep))
 		return dev_err_probe(wcss->dev, PTR_ERR(wcss->lcc_bcr_sleep),
 				     "failed to get bcr cbcr clk\n");
 
+	ret = devm_clk_bulk_get(wcss->dev, wcss->num_clks, wcss->clks);
+	if (ret < 0) {
+		return dev_err_probe(wcss->dev, ret,
+				     "failed to bulk get q6 clocks\n");
+	}
+
 	return 0;
 }
 
-- 
2.45.1


