Return-Path: <devicetree+bounces-3211-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BFC17ADA83
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 16:51:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 3B4E4281519
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 14:51:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C2391C6BD;
	Mon, 25 Sep 2023 14:51:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2B741C2A0
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 14:51:03 +0000 (UTC)
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 067E2CF6
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 07:50:52 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-9b0168a9e05so573157266b.3
        for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 07:50:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695653451; x=1696258251; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LL6/EWtE8K+Hnp6CIAdFLXptmd65ynmXQW/qWsTTnEc=;
        b=q8LEwuBDHZTDWcT9FAg0Gi6hpqeShcTwIDR22+FRODl35E+EmaLOsagEQ8LNwc0NnK
         bLSM2nR21blVxdFT8SvZrttpZTrWvYOKgoQkvf6hUu6VMnc3Z3y3L0hxCKHZP9iKtKc1
         dlHJkvnjRph48x3/aBnRXBff/8JKb/CtKsfsJMM2qN1Xm8/zRQaKWWyJ53tISqvxT5lQ
         pX7iJSYjrFZAgvcNhpl70/XUMFojpLcCZ5pR5lpwYazUwnSszEpvOUMTT4G2zQWTgICF
         j3YFiJFDhWOWJ4Of0ViRfXnBFFJx6dnt7/2ZQij3v6JUjvD/LWwgMU+hixqARGpmDAKm
         oNsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695653451; x=1696258251;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LL6/EWtE8K+Hnp6CIAdFLXptmd65ynmXQW/qWsTTnEc=;
        b=n04ReJNqNAD50wD08UPSiuRIrwTgnehaoj0Oue29y6PbLDvz0Q4eIVOcUIiKkN11d4
         CXf39kAksJBvR3ZJoJpCnDsMpU1eRSwGPJSj1juWcGcimZ5GiEpIo3lw833apkIR5fAr
         d4pPnETzenLXtlLR1/hEGlgqK5KEL+/9wTE6nVeVvlq4tyaaIOYshsLhATsU4mg4tKST
         nmltsHCwwsMgFAnqpgnwD4FFxzfdXT2hYYDcg24gPjwS/Ctou7AsD9NXbU6ND7dJelra
         xtiw6QOwCCU2GK+bc8NQ0IowEC+dVSKW4gRkMkhezcL/GcggN8zAgNkmIz/+QetTLs8H
         85fQ==
X-Gm-Message-State: AOJu0YxFowkjsOS023hQgo4PWcGf4VA8XVYg63UoO9BczC023SPQ1haM
	VmhzRdd1Zuwg+4Bs3slvC965ug==
X-Google-Smtp-Source: AGHT+IH0uGmluYpRNzhceQ7azTFGCiWwnBHRqIy8fJLbT4O3pXridrTpMpkzswQihA4PZFJUpGjQxA==
X-Received: by 2002:a17:907:2cc8:b0:9ae:614f:2023 with SMTP id hg8-20020a1709072cc800b009ae614f2023mr5132287ejc.56.1695653451439;
        Mon, 25 Sep 2023 07:50:51 -0700 (PDT)
Received: from [10.167.154.1] (178235177023.dynamic-4-waw-k-1-1-0.vectranet.pl. [178.235.177.23])
        by smtp.gmail.com with ESMTPSA id k8-20020a170906a38800b0099bc2d1429csm6426640ejz.72.2023.09.25.07.50.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Sep 2023 07:50:51 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Mon, 25 Sep 2023 16:50:38 +0200
Subject: [PATCH v5 09/10] drm/msm/a6xx: Add A740 support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230628-topic-a7xx_drmmsm-v5-9-3dc527b472d7@linaro.org>
References: <20230628-topic-a7xx_drmmsm-v5-0-3dc527b472d7@linaro.org>
In-Reply-To: <20230628-topic-a7xx_drmmsm-v5-0-3dc527b472d7@linaro.org>
To: Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Andy Gross <agross@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1695653434; l=19080;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=kUUN57vDhU2cgQLYgu8hMA/2ddOKJX8qoi8vzmASaRQ=;
 b=xsD0zjlDQpZnFYQyEH9d+UiP2AG+u9VI5FfkNFfIGvXHv1QCBKAYic5q9gLK2ToLrXplUTQlD
 cVb9FxApmNDDlmTdi0rDLJ4WEy5vhKhXgsGU7AGpc3lxWA9APzvFXNz
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

A740 builds upon the A730 IP, shuffling some values and registers
around. More differences will appear when things like BCL are
implemented.

adreno_is_a740_family is added in preparation for more A7xx GPUs,
the logic checks will be valid resulting in smaller diffs.

Tested-by: Neil Armstrong <neil.armstrong@linaro.org> # on SM8550-QRD
Tested-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org> # sm8450
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 drivers/gpu/drm/msm/adreno/a6xx_gmu.c      | 88 +++++++++++++++++++++---------
 drivers/gpu/drm/msm/adreno/a6xx_gpu.c      | 82 +++++++++++++++++++++++++---
 drivers/gpu/drm/msm/adreno/a6xx_hfi.c      | 27 +++++++++
 drivers/gpu/drm/msm/adreno/adreno_device.c | 17 ++++++
 drivers/gpu/drm/msm/adreno/adreno_gpu.c    |  6 +-
 drivers/gpu/drm/msm/adreno/adreno_gpu.h    | 19 ++++++-
 6 files changed, 201 insertions(+), 38 deletions(-)

diff --git a/drivers/gpu/drm/msm/adreno/a6xx_gmu.c b/drivers/gpu/drm/msm/adreno/a6xx_gmu.c
index c1934d46c0d7..0555a0134fad 100644
--- a/drivers/gpu/drm/msm/adreno/a6xx_gmu.c
+++ b/drivers/gpu/drm/msm/adreno/a6xx_gmu.c
@@ -519,6 +519,7 @@ static void a6xx_gmu_rpmh_init(struct a6xx_gmu *gmu)
 	struct adreno_gpu *adreno_gpu = &a6xx_gpu->base;
 	struct platform_device *pdev = to_platform_device(gmu->dev);
 	void __iomem *pdcptr = a6xx_gmu_get_mmio(pdev, "gmu_pdc");
+	u32 seqmem0_drv0_reg = REG_A6XX_RSCC_SEQ_MEM_0_DRV0;
 	void __iomem *seqptr = NULL;
 	uint32_t pdc_address_offset;
 	bool pdc_in_aop = false;
@@ -552,21 +553,26 @@ static void a6xx_gmu_rpmh_init(struct a6xx_gmu *gmu)
 	gmu_write_rscc(gmu, REG_A6XX_RSCC_HIDDEN_TCS_CMD0_ADDR, 0);
 	gmu_write_rscc(gmu, REG_A6XX_RSCC_HIDDEN_TCS_CMD0_DATA + 2, 0);
 	gmu_write_rscc(gmu, REG_A6XX_RSCC_HIDDEN_TCS_CMD0_ADDR + 2, 0);
-	gmu_write_rscc(gmu, REG_A6XX_RSCC_HIDDEN_TCS_CMD0_DATA + 4, 0x80000000);
+	gmu_write_rscc(gmu, REG_A6XX_RSCC_HIDDEN_TCS_CMD0_DATA + 4,
+		       adreno_is_a740_family(adreno_gpu) ? 0x80000021 : 0x80000000);
 	gmu_write_rscc(gmu, REG_A6XX_RSCC_HIDDEN_TCS_CMD0_ADDR + 4, 0);
 	gmu_write_rscc(gmu, REG_A6XX_RSCC_OVERRIDE_START_ADDR, 0);
 	gmu_write_rscc(gmu, REG_A6XX_RSCC_PDC_SEQ_START_ADDR, 0x4520);
 	gmu_write_rscc(gmu, REG_A6XX_RSCC_PDC_MATCH_VALUE_LO, 0x4510);
 	gmu_write_rscc(gmu, REG_A6XX_RSCC_PDC_MATCH_VALUE_HI, 0x4514);
 
+	/* The second spin of A7xx GPUs messed with some register offsets.. */
+	if (adreno_is_a740_family(adreno_gpu))
+		seqmem0_drv0_reg = REG_A7XX_RSCC_SEQ_MEM_0_DRV0_A740;
+
 	/* Load RSC sequencer uCode for sleep and wakeup */
 	if (adreno_is_a650_family(adreno_gpu) ||
 	    adreno_is_a7xx(adreno_gpu)) {
-		gmu_write_rscc(gmu, REG_A6XX_RSCC_SEQ_MEM_0_DRV0, 0xeaaae5a0);
-		gmu_write_rscc(gmu, REG_A6XX_RSCC_SEQ_MEM_0_DRV0 + 1, 0xe1a1ebab);
-		gmu_write_rscc(gmu, REG_A6XX_RSCC_SEQ_MEM_0_DRV0 + 2, 0xa2e0a581);
-		gmu_write_rscc(gmu, REG_A6XX_RSCC_SEQ_MEM_0_DRV0 + 3, 0xecac82e2);
-		gmu_write_rscc(gmu, REG_A6XX_RSCC_SEQ_MEM_0_DRV0 + 4, 0x0020edad);
+		gmu_write_rscc(gmu, seqmem0_drv0_reg, 0xeaaae5a0);
+		gmu_write_rscc(gmu, seqmem0_drv0_reg + 1, 0xe1a1ebab);
+		gmu_write_rscc(gmu, seqmem0_drv0_reg + 2, 0xa2e0a581);
+		gmu_write_rscc(gmu, seqmem0_drv0_reg + 3, 0xecac82e2);
+		gmu_write_rscc(gmu, seqmem0_drv0_reg + 4, 0x0020edad);
 	} else {
 		gmu_write_rscc(gmu, REG_A6XX_RSCC_SEQ_MEM_0_DRV0, 0xa7a506a0);
 		gmu_write_rscc(gmu, REG_A6XX_RSCC_SEQ_MEM_0_DRV0 + 1, 0xa1e6a6e7);
@@ -764,8 +770,8 @@ static int a6xx_gmu_fw_start(struct a6xx_gmu *gmu, unsigned int state)
 	struct a6xx_gpu *a6xx_gpu = container_of(gmu, struct a6xx_gpu, gmu);
 	struct adreno_gpu *adreno_gpu = &a6xx_gpu->base;
 	u32 fence_range_lower, fence_range_upper;
+	u32 chipid, chipid_min = 0;
 	int ret;
-	u32 chipid;
 
 	/* Vote veto for FAL10 */
 	if (adreno_is_a650_family(adreno_gpu) || adreno_is_a7xx(adreno_gpu)) {
@@ -824,16 +830,37 @@ static int a6xx_gmu_fw_start(struct a6xx_gmu *gmu, unsigned int state)
 	 */
 	gmu_write(gmu, REG_A6XX_GMU_CM3_CFG, 0x4052);
 
-	/*
-	 * Note that the GMU has a slightly different layout for
-	 * chip_id, for whatever reason, so a bit of massaging
-	 * is needed.  The upper 16b are the same, but minor and
-	 * patchid are packed in four bits each with the lower
-	 * 8b unused:
-	 */
-	chipid  = adreno_gpu->chip_id & 0xffff0000;
-	chipid |= (adreno_gpu->chip_id << 4) & 0xf000; /* minor */
-	chipid |= (adreno_gpu->chip_id << 8) & 0x0f00; /* patchid */
+	/* NOTE: A730 may also fall in this if-condition with a future GMU fw update. */
+	if (adreno_is_a7xx(adreno_gpu) && !adreno_is_a730(adreno_gpu)) {
+		/* A7xx GPUs have obfuscated chip IDs. Use constant maj = 7 */
+		chipid = FIELD_PREP(GENMASK(31, 24), 0x7);
+
+		/*
+		 * The min part has a 1-1 mapping for each GPU SKU.
+		 * This chipid that the GMU expects corresponds to the "GENX_Y_Z" naming,
+		 * where X = major, Y = minor, Z = patchlevel, e.g. GEN7_2_1 for prod A740.
+		 */
+		if (adreno_is_a740(adreno_gpu))
+			chipid_min = 2;
+		else
+			return -EINVAL;
+
+		chipid |= FIELD_PREP(GENMASK(23, 16), chipid_min);
+
+		/* Get the patchid (which may vary) from the device tree */
+		chipid |= FIELD_PREP(GENMASK(15, 8), adreno_patchid(adreno_gpu));
+	} else {
+		/*
+		 * Note that the GMU has a slightly different layout for
+		 * chip_id, for whatever reason, so a bit of massaging
+		 * is needed.  The upper 16b are the same, but minor and
+		 * patchid are packed in four bits each with the lower
+		 * 8b unused:
+		 */
+		chipid  = adreno_gpu->chip_id & 0xffff0000;
+		chipid |= (adreno_gpu->chip_id << 4) & 0xf000; /* minor */
+		chipid |= (adreno_gpu->chip_id << 8) & 0x0f00; /* patchid */
+	}
 
 	if (adreno_is_a7xx(adreno_gpu)) {
 		gmu_write(gmu, REG_A6XX_GMU_GENERAL_10, chipid);
@@ -896,17 +923,23 @@ static void a6xx_gmu_irq_disable(struct a6xx_gmu *gmu)
 
 static void a6xx_gmu_rpmh_off(struct a6xx_gmu *gmu)
 {
-	u32 val;
+	struct a6xx_gpu *a6xx_gpu = container_of(gmu, struct a6xx_gpu, gmu);
+	struct adreno_gpu *adreno_gpu = &a6xx_gpu->base;
+	u32 val, seqmem_off = 0;
+
+	/* The second spin of A7xx GPUs messed with some register offsets.. */
+	if (adreno_is_a740_family(adreno_gpu))
+		seqmem_off = 4;
 
 	/* Make sure there are no outstanding RPMh votes */
-	gmu_poll_timeout_rscc(gmu, REG_A6XX_RSCC_TCS0_DRV0_STATUS, val,
-		(val & 1), 100, 10000);
-	gmu_poll_timeout_rscc(gmu, REG_A6XX_RSCC_TCS1_DRV0_STATUS, val,
-		(val & 1), 100, 10000);
-	gmu_poll_timeout_rscc(gmu, REG_A6XX_RSCC_TCS2_DRV0_STATUS, val,
-		(val & 1), 100, 10000);
-	gmu_poll_timeout_rscc(gmu, REG_A6XX_RSCC_TCS3_DRV0_STATUS, val,
-		(val & 1), 100, 1000);
+	gmu_poll_timeout_rscc(gmu, REG_A6XX_RSCC_TCS0_DRV0_STATUS + seqmem_off,
+		val, (val & 1), 100, 10000);
+	gmu_poll_timeout_rscc(gmu, REG_A6XX_RSCC_TCS1_DRV0_STATUS + seqmem_off,
+		val, (val & 1), 100, 10000);
+	gmu_poll_timeout_rscc(gmu, REG_A6XX_RSCC_TCS2_DRV0_STATUS + seqmem_off,
+		val, (val & 1), 100, 10000);
+	gmu_poll_timeout_rscc(gmu, REG_A6XX_RSCC_TCS3_DRV0_STATUS + seqmem_off,
+		val, (val & 1), 100, 1000);
 }
 
 /* Force the GMU off in case it isn't responsive */
@@ -1010,7 +1043,8 @@ int a6xx_gmu_resume(struct a6xx_gpu *a6xx_gpu)
 
 	/* Use a known rate to bring up the GMU */
 	clk_set_rate(gmu->core_clk, 200000000);
-	clk_set_rate(gmu->hub_clk, 150000000);
+	clk_set_rate(gmu->hub_clk, adreno_is_a740_family(adreno_gpu) ?
+		     200000000 : 150000000);
 	ret = clk_bulk_prepare_enable(gmu->nr_clocks, gmu->clocks);
 	if (ret) {
 		pm_runtime_put(gmu->gxpd);
diff --git a/drivers/gpu/drm/msm/adreno/a6xx_gpu.c b/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
index 522043883290..2313620084b6 100644
--- a/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
+++ b/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
@@ -894,6 +894,64 @@ const struct adreno_reglist a730_hwcg[] = {
 	{},
 };
 
+const struct adreno_reglist a740_hwcg[] = {
+	{ REG_A6XX_RBBM_CLOCK_CNTL_SP0, 0x02222222 },
+	{ REG_A6XX_RBBM_CLOCK_CNTL2_SP0, 0x22022222 },
+	{ REG_A6XX_RBBM_CLOCK_HYST_SP0, 0x003cf3cf },
+	{ REG_A6XX_RBBM_CLOCK_DELAY_SP0, 0x00000080 },
+	{ REG_A6XX_RBBM_CLOCK_CNTL_TP0, 0x22222220 },
+	{ REG_A6XX_RBBM_CLOCK_CNTL2_TP0, 0x22222222 },
+	{ REG_A6XX_RBBM_CLOCK_CNTL3_TP0, 0x22222222 },
+	{ REG_A6XX_RBBM_CLOCK_CNTL4_TP0, 0x00222222 },
+	{ REG_A6XX_RBBM_CLOCK_HYST_TP0, 0x77777777 },
+	{ REG_A6XX_RBBM_CLOCK_HYST2_TP0, 0x77777777 },
+	{ REG_A6XX_RBBM_CLOCK_HYST3_TP0, 0x77777777 },
+	{ REG_A6XX_RBBM_CLOCK_HYST4_TP0, 0x00077777 },
+	{ REG_A6XX_RBBM_CLOCK_DELAY_TP0, 0x11111111 },
+	{ REG_A6XX_RBBM_CLOCK_DELAY2_TP0, 0x11111111 },
+	{ REG_A6XX_RBBM_CLOCK_DELAY3_TP0, 0x11111111 },
+	{ REG_A6XX_RBBM_CLOCK_DELAY4_TP0, 0x00011111 },
+	{ REG_A6XX_RBBM_CLOCK_CNTL_UCHE, 0x22222222 },
+	{ REG_A6XX_RBBM_CLOCK_CNTL2_UCHE, 0x00222222 },
+	{ REG_A6XX_RBBM_CLOCK_HYST_UCHE, 0x00000444 },
+	{ REG_A6XX_RBBM_CLOCK_DELAY_UCHE, 0x00000222 },
+	{ REG_A6XX_RBBM_CLOCK_CNTL_RB0, 0x22222222 },
+	{ REG_A6XX_RBBM_CLOCK_CNTL2_RB0, 0x01002222 },
+	{ REG_A6XX_RBBM_CLOCK_CNTL_CCU0, 0x00002220 },
+	{ REG_A6XX_RBBM_CLOCK_HYST_RB_CCU0, 0x44000f00 },
+	{ REG_A6XX_RBBM_CLOCK_CNTL_RAC, 0x25222022 },
+	{ REG_A6XX_RBBM_CLOCK_CNTL2_RAC, 0x00555555 },
+	{ REG_A6XX_RBBM_CLOCK_DELAY_RAC, 0x00000011 },
+	{ REG_A6XX_RBBM_CLOCK_HYST_RAC, 0x00440044 },
+	{ REG_A6XX_RBBM_CLOCK_CNTL_TSE_RAS_RBBM, 0x04222222 },
+	{ REG_A7XX_RBBM_CLOCK_MODE2_GRAS, 0x00000222 },
+	{ REG_A7XX_RBBM_CLOCK_MODE_BV_GRAS, 0x00222222 },
+	{ REG_A6XX_RBBM_CLOCK_MODE_GPC, 0x02222223 },
+	{ REG_A6XX_RBBM_CLOCK_MODE_VFD, 0x00222222 },
+	{ REG_A7XX_RBBM_CLOCK_MODE_BV_GPC, 0x00222222 },
+	{ REG_A7XX_RBBM_CLOCK_MODE_BV_VFD, 0x00002222 },
+	{ REG_A6XX_RBBM_CLOCK_HYST_TSE_RAS_RBBM, 0x00000000 },
+	{ REG_A6XX_RBBM_CLOCK_HYST_GPC, 0x04104004 },
+	{ REG_A6XX_RBBM_CLOCK_HYST_VFD, 0x00000000 },
+	{ REG_A6XX_RBBM_CLOCK_DELAY_TSE_RAS_RBBM, 0x00000000 },
+	{ REG_A6XX_RBBM_CLOCK_DELAY_GPC, 0x00000200 },
+	{ REG_A6XX_RBBM_CLOCK_DELAY_VFD, 0x00000000 },
+	{ REG_A6XX_RBBM_CLOCK_MODE_HLSQ, 0x00002222 },
+	{ REG_A6XX_RBBM_CLOCK_DELAY_HLSQ, 0x00000000 },
+	{ REG_A6XX_RBBM_CLOCK_HYST_HLSQ, 0x00000000 },
+	{ REG_A7XX_RBBM_CLOCK_MODE_BV_LRZ, 0x55555552 },
+	{ REG_A7XX_RBBM_CLOCK_HYST2_VFD, 0x00000000 },
+	{ REG_A7XX_RBBM_CLOCK_MODE_CP, 0x00000222 },
+	{ REG_A6XX_RBBM_CLOCK_CNTL, 0x8aa8aa82 },
+	{ REG_A6XX_RBBM_ISDB_CNT, 0x00000182 },
+	{ REG_A6XX_RBBM_RAC_THRESHOLD_CNT, 0x00000000 },
+	{ REG_A6XX_RBBM_SP_HYST_CNT, 0x00000000 },
+	{ REG_A6XX_RBBM_CLOCK_CNTL_GMU_GX, 0x00000222 },
+	{ REG_A6XX_RBBM_CLOCK_DELAY_GMU_GX, 0x00000111 },
+	{ REG_A6XX_RBBM_CLOCK_HYST_GMU_GX, 0x00000555 },
+	{},
+};
+
 static void a6xx_set_hwcg(struct msm_gpu *gpu, bool state)
 {
 	struct adreno_gpu *adreno_gpu = to_adreno_gpu(gpu);
@@ -901,7 +959,7 @@ static void a6xx_set_hwcg(struct msm_gpu *gpu, bool state)
 	struct a6xx_gmu *gmu = &a6xx_gpu->gmu;
 	const struct adreno_reglist *reg;
 	unsigned int i;
-	u32 val, clock_cntl_on;
+	u32 val, clock_cntl_on, cgc_mode;
 
 	if (!adreno_gpu->info->hwcg)
 		return;
@@ -914,8 +972,10 @@ static void a6xx_set_hwcg(struct msm_gpu *gpu, bool state)
 		clock_cntl_on = 0x8aa8aa82;
 
 	if (adreno_is_a7xx(adreno_gpu)) {
+		cgc_mode = adreno_is_a740_family(adreno_gpu) ? 0x20222 : 0x20000;
+
 		gmu_write(&a6xx_gpu->gmu, REG_A6XX_GPU_GMU_AO_GMU_CGC_MODE_CNTL,
-			  state ? 0x20000 : 0);
+			  state ? cgc_mode : 0);
 		gmu_write(&a6xx_gpu->gmu, REG_A6XX_GPU_GMU_AO_GMU_CGC_DELAY_CNTL,
 			  state ? 0x10111 : 0);
 		gmu_write(&a6xx_gpu->gmu, REG_A6XX_GPU_GMU_AO_GMU_CGC_HYST_CNTL,
@@ -1179,7 +1239,7 @@ static void a6xx_set_cp_protect(struct msm_gpu *gpu)
 		count = ARRAY_SIZE(a660_protect);
 		count_max = 48;
 		BUILD_BUG_ON(ARRAY_SIZE(a660_protect) > 48);
-	} else if (adreno_is_a730(adreno_gpu)) {
+	} else if (adreno_is_a730(adreno_gpu) || adreno_is_a740(adreno_gpu)) {
 		regs = a730_protect;
 		count = ARRAY_SIZE(a730_protect);
 		count_max = 48;
@@ -1252,7 +1312,8 @@ static void a6xx_set_ubwc_config(struct msm_gpu *gpu)
 
 	if (adreno_is_a650(adreno_gpu) ||
 	    adreno_is_a660(adreno_gpu) ||
-	    adreno_is_a730(adreno_gpu)) {
+	    adreno_is_a730(adreno_gpu) ||
+	    adreno_is_a740_family(adreno_gpu)) {
 		/* TODO: get ddr type from bootloader and use 2 for LPDDR4 */
 		hbb_lo = 3;
 		amsbc = 1;
@@ -1545,6 +1606,7 @@ static int hw_init(struct msm_gpu *gpu)
 	struct adreno_gpu *adreno_gpu = to_adreno_gpu(gpu);
 	struct a6xx_gpu *a6xx_gpu = to_a6xx_gpu(adreno_gpu);
 	struct a6xx_gmu *gmu = &a6xx_gpu->gmu;
+	u64 gmem_range_min;
 	int ret;
 
 	if (!adreno_has_gmu_wrapper(adreno_gpu)) {
@@ -1635,11 +1697,13 @@ static int hw_init(struct msm_gpu *gpu)
 
 	if (!(adreno_is_a650_family(adreno_gpu) ||
 	      adreno_is_a730(adreno_gpu))) {
+		gmem_range_min = adreno_is_a740_family(adreno_gpu) ? SZ_16M : SZ_1M;
+
 		/* Set the GMEM VA range [0x100000:0x100000 + gpu->gmem - 1] */
-		gpu_write64(gpu, REG_A6XX_UCHE_GMEM_RANGE_MIN, 0x00100000);
+		gpu_write64(gpu, REG_A6XX_UCHE_GMEM_RANGE_MIN, gmem_range_min);
 
 		gpu_write64(gpu, REG_A6XX_UCHE_GMEM_RANGE_MAX,
-			0x00100000 + adreno_gpu->info->gmem - 1);
+			gmem_range_min + adreno_gpu->info->gmem - 1);
 	}
 
 	if (adreno_is_a7xx(adreno_gpu))
@@ -1704,7 +1768,8 @@ static int hw_init(struct msm_gpu *gpu)
 	a6xx_set_ubwc_config(gpu);
 
 	/* Enable fault detection */
-	if (adreno_is_a730(adreno_gpu))
+	if (adreno_is_a730(adreno_gpu) ||
+	    adreno_is_a740_family(adreno_gpu))
 		gpu_write(gpu, REG_A6XX_RBBM_INTERFACE_HANG_INT_CNTL, (1 << 30) | 0xcfffff);
 	else if (adreno_is_a619(adreno_gpu))
 		gpu_write(gpu, REG_A6XX_RBBM_INTERFACE_HANG_INT_CNTL, (1 << 30) | 0x3fffff);
@@ -2796,7 +2861,8 @@ struct msm_gpu *a6xx_gpu_init(struct drm_device *dev)
 		!!(config->info->quirks & ADRENO_QUIRK_HAS_HW_APRIV);
 
 	/* gpu->info only gets assigned in adreno_gpu_init() */
-	is_a7xx = config->info->family == ADRENO_7XX_GEN1;
+	is_a7xx = config->info->family == ADRENO_7XX_GEN1 ||
+		  config->info->family == ADRENO_7XX_GEN2;
 
 	a6xx_llc_slices_init(pdev, a6xx_gpu, is_a7xx);
 
diff --git a/drivers/gpu/drm/msm/adreno/a6xx_hfi.c b/drivers/gpu/drm/msm/adreno/a6xx_hfi.c
index 3865cd44523c..cdb3f6e74d3e 100644
--- a/drivers/gpu/drm/msm/adreno/a6xx_hfi.c
+++ b/drivers/gpu/drm/msm/adreno/a6xx_hfi.c
@@ -565,6 +565,31 @@ static void a730_build_bw_table(struct a6xx_hfi_msg_bw_table *msg)
 	msg->cnoc_cmds_data[1][0] = 0x60000001;
 }
 
+static void a740_build_bw_table(struct a6xx_hfi_msg_bw_table *msg)
+{
+	msg->bw_level_num = 1;
+
+	msg->ddr_cmds_num = 3;
+	msg->ddr_wait_bitmask = 0x7;
+
+	msg->ddr_cmds_addrs[0] = cmd_db_read_addr("SH0");
+	msg->ddr_cmds_addrs[1] = cmd_db_read_addr("MC0");
+	msg->ddr_cmds_addrs[2] = cmd_db_read_addr("ACV");
+
+	msg->ddr_cmds_data[0][0] = 0x40000000;
+	msg->ddr_cmds_data[0][1] = 0x40000000;
+	msg->ddr_cmds_data[0][2] = 0x40000000;
+
+	/* TODO: add a proper dvfs table */
+
+	msg->cnoc_cmds_num = 1;
+	msg->cnoc_wait_bitmask = 0x1;
+
+	msg->cnoc_cmds_addrs[0] = cmd_db_read_addr("CN0");
+	msg->cnoc_cmds_data[0][0] = 0x40000000;
+	msg->cnoc_cmds_data[1][0] = 0x60000001;
+}
+
 static void a6xx_build_bw_table(struct a6xx_hfi_msg_bw_table *msg)
 {
 	/* Send a single "off" entry since the 630 GMU doesn't do bus scaling */
@@ -625,6 +650,8 @@ static int a6xx_hfi_send_bw_table(struct a6xx_gmu *gmu)
 		a690_build_bw_table(&msg);
 	else if (adreno_is_a730(adreno_gpu))
 		a730_build_bw_table(&msg);
+	else if (adreno_is_a740_family(adreno_gpu))
+		a740_build_bw_table(&msg);
 	else
 		a6xx_build_bw_table(&msg);
 
diff --git a/drivers/gpu/drm/msm/adreno/adreno_device.c b/drivers/gpu/drm/msm/adreno/adreno_device.c
index 081d3231cd8a..5e430e7be4be 100644
--- a/drivers/gpu/drm/msm/adreno/adreno_device.c
+++ b/drivers/gpu/drm/msm/adreno/adreno_device.c
@@ -499,10 +499,27 @@ static const struct adreno_info gpulist[] = {
 		},
 		.gmem = SZ_2M,
 		.inactive_period = DRM_MSM_INACTIVE_PERIOD,
+		.quirks = ADRENO_QUIRK_HAS_CACHED_COHERENT |
+			  ADRENO_QUIRK_HAS_HW_APRIV,
 		.init = a6xx_gpu_init,
 		.zapfw = "a730_zap.mdt",
 		.hwcg = a730_hwcg,
 		.address_space_size = SZ_16G,
+	}, {
+		.chip_ids = ADRENO_CHIP_IDS(0x43050a01), /* "C510v2" */
+		.family = ADRENO_7XX_GEN2,
+		.fw = {
+			[ADRENO_FW_SQE] = "a740_sqe.fw",
+			[ADRENO_FW_GMU] = "gmu_gen70200.bin",
+		},
+		.gmem = 3 * SZ_1M,
+		.inactive_period = DRM_MSM_INACTIVE_PERIOD,
+		.quirks = ADRENO_QUIRK_HAS_CACHED_COHERENT |
+			  ADRENO_QUIRK_HAS_HW_APRIV,
+		.init = a6xx_gpu_init,
+		.zapfw = "a740_zap.mdt",
+		.hwcg = a740_hwcg,
+		.address_space_size = SZ_16G,
 	},
 };
 
diff --git a/drivers/gpu/drm/msm/adreno/adreno_gpu.c b/drivers/gpu/drm/msm/adreno/adreno_gpu.c
index ea59724f8e41..3fe9fd240cc7 100644
--- a/drivers/gpu/drm/msm/adreno/adreno_gpu.c
+++ b/drivers/gpu/drm/msm/adreno/adreno_gpu.c
@@ -323,7 +323,11 @@ int adreno_get_param(struct msm_gpu *gpu, struct msm_file_private *ctx,
 		*value = adreno_gpu->info->gmem;
 		return 0;
 	case MSM_PARAM_GMEM_BASE:
-		*value = !adreno_is_a650_family(adreno_gpu) ? 0x100000 : 0;
+		if (adreno_is_a650_family(adreno_gpu) ||
+		    adreno_is_a740_family(adreno_gpu))
+			*value = 0;
+		else
+			*value = 0x100000;
 		return 0;
 	case MSM_PARAM_CHIP_ID:
 		*value = adreno_gpu->chip_id;
diff --git a/drivers/gpu/drm/msm/adreno/adreno_gpu.h b/drivers/gpu/drm/msm/adreno/adreno_gpu.h
index b77f168c3a49..80b3f6312116 100644
--- a/drivers/gpu/drm/msm/adreno/adreno_gpu.h
+++ b/drivers/gpu/drm/msm/adreno/adreno_gpu.h
@@ -47,6 +47,7 @@ enum adreno_family {
 	ADRENO_6XX_GEN3,  /* a650 family */
 	ADRENO_6XX_GEN4,  /* a660 family */
 	ADRENO_7XX_GEN1,  /* a730 family */
+	ADRENO_7XX_GEN2,  /* a740 family */
 };
 
 #define ADRENO_QUIRK_TWO_PASS_USE_WFI		BIT(0)
@@ -76,7 +77,7 @@ struct adreno_reglist {
 };
 
 extern const struct adreno_reglist a612_hwcg[], a615_hwcg[], a630_hwcg[], a640_hwcg[], a650_hwcg[];
-extern const struct adreno_reglist a660_hwcg[], a690_hwcg[], a730_hwcg[];
+extern const struct adreno_reglist a660_hwcg[], a690_hwcg[], a730_hwcg[], a740_hwcg[];
 
 struct adreno_speedbin {
 	uint16_t fuse;
@@ -408,10 +409,24 @@ static inline int adreno_is_a730(struct adreno_gpu *gpu)
 	return gpu->info->chip_ids[0] == 0x07030001;
 }
 
+static inline int adreno_is_a740(struct adreno_gpu *gpu)
+{
+	return gpu->info->chip_ids[0] == 0x43050a01;
+}
+
+/* Placeholder to make future diffs smaller */
+static inline int adreno_is_a740_family(struct adreno_gpu *gpu)
+{
+	if (WARN_ON_ONCE(!gpu->info))
+		return false;
+	return gpu->info->family == ADRENO_7XX_GEN2;
+}
+
 static inline int adreno_is_a7xx(struct adreno_gpu *gpu)
 {
 	/* Update with non-fake (i.e. non-A702) Gen 7 GPUs */
-	return gpu->info->family == ADRENO_7XX_GEN1;
+	return gpu->info->family == ADRENO_7XX_GEN1 ||
+	       adreno_is_a740_family(gpu);
 }
 
 u64 adreno_private_address_space_size(struct msm_gpu *gpu);

-- 
2.42.0


