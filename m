Return-Path: <devicetree+bounces-3209-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C4EC7ADA84
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 16:51:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 57231B209CA
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 14:51:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD69D1C290;
	Mon, 25 Sep 2023 14:51:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2218A1C6B2
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 14:51:00 +0000 (UTC)
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com [IPv6:2a00:1450:4864:20::230])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 766CDCD4
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 07:50:46 -0700 (PDT)
Received: by mail-lj1-x230.google.com with SMTP id 38308e7fff4ca-2c022ce8114so106705951fa.1
        for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 07:50:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695653444; x=1696258244; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=s4FlvGQN7EMnFuP2zAYEqW23DFqhhwSuFW2samDInks=;
        b=IGjcbNqNWSAAE97RN4BJHvihiBlvi54J+w4o514SYnkyyiqsxGXmaDN4AladQ/BpGP
         B7Fw85Lj7kydDSOLexSB+sFL8siWVngdVY18MK19zwpuGFSIZ3Orj9L1RhSNpV141NfB
         9fPTAKgJHih+vk1cwWegJUFOLnbCxv99hauprUKm9eaI4eDkBBxVJwx9XM2A5cwn2/iH
         HM5Fyv2PjaNSv4C/s6+ueb6k+KtevfcmMZgbPIn/98dWX4muXiE0bZAJFNzlw6wcyh85
         8GbDt5vt+68nlYJO8PVpT9Doqivj4iKcBbZTlIgVjI98Gmc/1Fx9+jYTM2P7QLK+IkNG
         dY/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695653444; x=1696258244;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=s4FlvGQN7EMnFuP2zAYEqW23DFqhhwSuFW2samDInks=;
        b=mcAB+FoH5z6PB0mF9g/wTxq9I0+bFCXUXBQ7tlzpO9jApFmlovPV5W2Xv+8pwd8vry
         G3Tl79FXeKDxPHZ9dVJgjI1qOr6CItsFAsbTtX6y+PkLJpRttwVFSRtqQdwpkUIYihcu
         yi+68i93WbgRnQMPB09g4nvn3Py9eb+fL06/fVbT3zeZNgy6PPis/1dl0yPnLKLKHuPT
         Zd+Afah6vHxMkWYuWv7VqJz63NZCtyAc9Lw4h7Nvnt2xxYOrWJtUBYBHgQ5pbD0sDzms
         5FNDiWpgYs+QyAPvxNfma3wQrgbd0Zu7bB+r3Ni5S2rd4EBt4kcZ2bvd30vAjRD8szLP
         3KGQ==
X-Gm-Message-State: AOJu0YwqZltLVZuCdS3sp2C2e9YPPx/WWkUX0+xfvtuUxpkef3CZJfgd
	MIisR0/CyAJLytaBohK6sX4jBQ==
X-Google-Smtp-Source: AGHT+IEtvfloVeiGv+Lz1jedY+pmp1fAWEms1z6/6nCEIecMKTnBgcknpzhwraXOxyrCpqeMdGu3aQ==
X-Received: by 2002:a2e:b616:0:b0:2c1:2211:97d1 with SMTP id r22-20020a2eb616000000b002c1221197d1mr4683468ljn.50.1695653444432;
        Mon, 25 Sep 2023 07:50:44 -0700 (PDT)
Received: from [10.167.154.1] (178235177023.dynamic-4-waw-k-1-1-0.vectranet.pl. [178.235.177.23])
        by smtp.gmail.com with ESMTPSA id k8-20020a170906a38800b0099bc2d1429csm6426640ejz.72.2023.09.25.07.50.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Sep 2023 07:50:44 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Mon, 25 Sep 2023 16:50:34 +0200
Subject: [PATCH v5 05/10] drm/msm/a6xx: Add skeleton A7xx support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230628-topic-a7xx_drmmsm-v5-5-3dc527b472d7@linaro.org>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1695653434; l=37447;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=VA5Es2Z9yi+w3iG5Q98zgQfY+6OVbWYsZTJTdEHQUqo=;
 b=cWlY011rORCVxqq+6LHzNdrVmt5UAn27WFDo9L0eXMX3gjtgM66u/XCAnrFQdu6zVeWcanut5
 TpgNDblS3lgAxcaUMKuQ69qkOVuzdnOxDeKW18k4bpUOskyiL5mVZQw
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

A7xx GPUs are - from kernel's POV anyway - basically another generation
of A6xx. They build upon the A650/A660_family advancements, skipping some
writes (presumably more values are preset correctly on reset), adding
some new ones and changing others.

One notable difference is the introduction of a second shadow, called BV.
To handle this with the current code, allocate it right after the current
RPTR shadow.

BV handling and .submit are mostly based on Jonathan Marek's work.

All A7xx GPUs are assumed to have a GMU.
A702 is not an A7xx-class GPU, it's a weird forked A610.

Tested-by: Neil Armstrong <neil.armstrong@linaro.org> # on SM8550-QRD
Tested-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org> # sm8450
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 drivers/gpu/drm/msm/adreno/a6xx_gmu.c   |  96 +++++--
 drivers/gpu/drm/msm/adreno/a6xx_gpu.c   | 451 ++++++++++++++++++++++++++++----
 drivers/gpu/drm/msm/adreno/adreno_gpu.c |   1 +
 drivers/gpu/drm/msm/adreno/adreno_gpu.h |  10 +-
 drivers/gpu/drm/msm/msm_ringbuffer.h    |   2 +
 5 files changed, 479 insertions(+), 81 deletions(-)

diff --git a/drivers/gpu/drm/msm/adreno/a6xx_gmu.c b/drivers/gpu/drm/msm/adreno/a6xx_gmu.c
index 7923129363b0..15ab912d9c45 100644
--- a/drivers/gpu/drm/msm/adreno/a6xx_gmu.c
+++ b/drivers/gpu/drm/msm/adreno/a6xx_gmu.c
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
 /* Copyright (c) 2017-2019 The Linux Foundation. All rights reserved. */
 
+#include <linux/bitfield.h>
 #include <linux/clk.h>
 #include <linux/interconnect.h>
 #include <linux/of_platform.h>
@@ -202,9 +203,10 @@ int a6xx_gmu_wait_for_idle(struct a6xx_gmu *gmu)
 
 static int a6xx_gmu_start(struct a6xx_gmu *gmu)
 {
+	struct a6xx_gpu *a6xx_gpu = container_of(gmu, struct a6xx_gpu, gmu);
+	struct adreno_gpu *adreno_gpu = &a6xx_gpu->base;
+	u32 mask, reset_val, val;
 	int ret;
-	u32 val;
-	u32 mask, reset_val;
 
 	val = gmu_read(gmu, REG_A6XX_GMU_CM3_DTCM_START + 0xff8);
 	if (val <= 0x20010004) {
@@ -220,7 +222,11 @@ static int a6xx_gmu_start(struct a6xx_gmu *gmu)
 	/* Set the log wptr index
 	 * note: downstream saves the value in poweroff and restores it here
 	 */
-	gmu_write(gmu, REG_A6XX_GPU_GMU_CX_GMU_PWR_COL_CP_RESP, 0);
+	if (adreno_is_a7xx(adreno_gpu))
+		gmu_write(gmu, REG_A6XX_GMU_GENERAL_9, 0);
+	else
+		gmu_write(gmu, REG_A6XX_GPU_GMU_CX_GMU_PWR_COL_CP_RESP, 0);
+
 
 	gmu_write(gmu, REG_A6XX_GMU_CM3_SYSRESET, 0);
 
@@ -520,7 +526,9 @@ static void a6xx_gmu_rpmh_init(struct a6xx_gmu *gmu)
 	if (IS_ERR(pdcptr))
 		goto err;
 
-	if (adreno_is_a650(adreno_gpu) || adreno_is_a660_family(adreno_gpu))
+	if (adreno_is_a650(adreno_gpu) ||
+	    adreno_is_a660_family(adreno_gpu) ||
+	    adreno_is_a7xx(adreno_gpu))
 		pdc_in_aop = true;
 	else if (adreno_is_a618(adreno_gpu) || adreno_is_a640_family(adreno_gpu))
 		pdc_address_offset = 0x30090;
@@ -552,7 +560,8 @@ static void a6xx_gmu_rpmh_init(struct a6xx_gmu *gmu)
 	gmu_write_rscc(gmu, REG_A6XX_RSCC_PDC_MATCH_VALUE_HI, 0x4514);
 
 	/* Load RSC sequencer uCode for sleep and wakeup */
-	if (adreno_is_a650_family(adreno_gpu)) {
+	if (adreno_is_a650_family(adreno_gpu) ||
+	    adreno_is_a7xx(adreno_gpu)) {
 		gmu_write_rscc(gmu, REG_A6XX_RSCC_SEQ_MEM_0_DRV0, 0xeaaae5a0);
 		gmu_write_rscc(gmu, REG_A6XX_RSCC_SEQ_MEM_0_DRV0 + 1, 0xe1a1ebab);
 		gmu_write_rscc(gmu, REG_A6XX_RSCC_SEQ_MEM_0_DRV0 + 2, 0xa2e0a581);
@@ -637,11 +646,18 @@ static void a6xx_gmu_rpmh_init(struct a6xx_gmu *gmu)
 /* Set up the idle state for the GMU */
 static void a6xx_gmu_power_config(struct a6xx_gmu *gmu)
 {
+	struct a6xx_gpu *a6xx_gpu = container_of(gmu, struct a6xx_gpu, gmu);
+	struct adreno_gpu *adreno_gpu = &a6xx_gpu->base;
+
 	/* Disable GMU WB/RB buffer */
 	gmu_write(gmu, REG_A6XX_GMU_SYS_BUS_CONFIG, 0x1);
 	gmu_write(gmu, REG_A6XX_GMU_ICACHE_CONFIG, 0x1);
 	gmu_write(gmu, REG_A6XX_GMU_DCACHE_CONFIG, 0x1);
 
+	/* A7xx knows better by default! */
+	if (adreno_is_a7xx(adreno_gpu))
+		return;
+
 	gmu_write(gmu, REG_A6XX_GMU_PWR_COL_INTER_FRAME_CTRL, 0x9c40400);
 
 	switch (gmu->idle_level) {
@@ -698,7 +714,7 @@ static int a6xx_gmu_fw_load(struct a6xx_gmu *gmu)
 	u32 itcm_base = 0x00000000;
 	u32 dtcm_base = 0x00040000;
 
-	if (adreno_is_a650_family(adreno_gpu))
+	if (adreno_is_a650_family(adreno_gpu) || adreno_is_a7xx(adreno_gpu))
 		dtcm_base = 0x10004000;
 
 	if (gmu->legacy) {
@@ -747,14 +763,22 @@ static int a6xx_gmu_fw_start(struct a6xx_gmu *gmu, unsigned int state)
 {
 	struct a6xx_gpu *a6xx_gpu = container_of(gmu, struct a6xx_gpu, gmu);
 	struct adreno_gpu *adreno_gpu = &a6xx_gpu->base;
+	u32 fence_range_lower, fence_range_upper;
 	int ret;
 	u32 chipid;
 
-	if (adreno_is_a650_family(adreno_gpu)) {
+	/* Vote veto for FAL10 */
+	if (adreno_is_a650_family(adreno_gpu) || adreno_is_a7xx(adreno_gpu)) {
 		gmu_write(gmu, REG_A6XX_GPU_GMU_CX_GMU_CX_FALNEXT_INTF, 1);
 		gmu_write(gmu, REG_A6XX_GPU_GMU_CX_GMU_CX_FAL_INTF, 1);
 	}
 
+	/* Turn on TCM (Tightly Coupled Memory) retention */
+	if (adreno_is_a7xx(adreno_gpu))
+		a6xx_llc_write(a6xx_gpu, REG_A7XX_CX_MISC_TCM_RET_CNTL, 1);
+	else
+		gmu_write(gmu, REG_A6XX_GMU_GENERAL_7, 1);
+
 	if (state == GMU_WARM_BOOT) {
 		ret = a6xx_rpmh_start(gmu);
 		if (ret)
@@ -764,9 +788,6 @@ static int a6xx_gmu_fw_start(struct a6xx_gmu *gmu, unsigned int state)
 			"GMU firmware is not loaded\n"))
 			return -ENOENT;
 
-		/* Turn on register retention */
-		gmu_write(gmu, REG_A6XX_GMU_GENERAL_7, 1);
-
 		ret = a6xx_rpmh_start(gmu);
 		if (ret)
 			return ret;
@@ -776,6 +797,7 @@ static int a6xx_gmu_fw_start(struct a6xx_gmu *gmu, unsigned int state)
 			return ret;
 	}
 
+	/* Clear init result to make sure we are getting a fresh value */
 	gmu_write(gmu, REG_A6XX_GMU_CM3_FW_INIT_RESULT, 0);
 	gmu_write(gmu, REG_A6XX_GMU_CM3_BOOT_CONFIG, 0x02);
 
@@ -783,8 +805,18 @@ static int a6xx_gmu_fw_start(struct a6xx_gmu *gmu, unsigned int state)
 	gmu_write(gmu, REG_A6XX_GMU_HFI_QTBL_ADDR, gmu->hfi.iova);
 	gmu_write(gmu, REG_A6XX_GMU_HFI_QTBL_INFO, 1);
 
+	if (adreno_is_a7xx(adreno_gpu)) {
+		fence_range_upper = 0x32;
+		fence_range_lower = 0x8a0;
+	} else {
+		fence_range_upper = 0xa;
+		fence_range_lower = 0xa0;
+	}
+
 	gmu_write(gmu, REG_A6XX_GMU_AHB_FENCE_RANGE_0,
-		(1 << 31) | (0xa << 18) | (0xa0));
+		  BIT(31) |
+		  FIELD_PREP(GENMASK(30, 18), fence_range_upper) |
+		  FIELD_PREP(GENMASK(17, 0), fence_range_lower));
 
 	/*
 	 * Snapshots toggle the NMI bit which will result in a jump to the NMI
@@ -803,10 +835,17 @@ static int a6xx_gmu_fw_start(struct a6xx_gmu *gmu, unsigned int state)
 	chipid |= (adreno_gpu->chip_id << 4) & 0xf000; /* minor */
 	chipid |= (adreno_gpu->chip_id << 8) & 0x0f00; /* patchid */
 
-	gmu_write(gmu, REG_A6XX_GMU_HFI_SFR_ADDR, chipid);
+	if (adreno_is_a7xx(adreno_gpu)) {
+		gmu_write(gmu, REG_A6XX_GMU_GENERAL_10, chipid);
+		gmu_write(gmu, REG_A6XX_GMU_GENERAL_8,
+			  (gmu->log.iova & GENMASK(31, 12)) |
+			  ((gmu->log.size / SZ_4K - 1) & GENMASK(7, 0)));
+	} else {
+		gmu_write(gmu, REG_A6XX_GMU_HFI_SFR_ADDR, chipid);
 
-	gmu_write(gmu, REG_A6XX_GPU_GMU_CX_GMU_PWR_COL_CP_MSG,
-		  gmu->log.iova | (gmu->log.size / SZ_4K - 1));
+		gmu_write(gmu, REG_A6XX_GPU_GMU_CX_GMU_PWR_COL_CP_MSG,
+			  gmu->log.iova | (gmu->log.size / SZ_4K - 1));
+	}
 
 	/* Set up the lowest idle level on the GMU */
 	a6xx_gmu_power_config(gmu);
@@ -980,15 +1019,19 @@ int a6xx_gmu_resume(struct a6xx_gpu *a6xx_gpu)
 	enable_irq(gmu->gmu_irq);
 
 	/* Check to see if we are doing a cold or warm boot */
-	status = gmu_read(gmu, REG_A6XX_GMU_GENERAL_7) == 1 ?
-		GMU_WARM_BOOT : GMU_COLD_BOOT;
-
-	/*
-	 * Warm boot path does not work on newer GPUs
-	 * Presumably this is because icache/dcache regions must be restored
-	 */
-	if (!gmu->legacy)
+	if (adreno_is_a7xx(adreno_gpu)) {
+		status = a6xx_llc_read(a6xx_gpu, REG_A7XX_CX_MISC_TCM_RET_CNTL) == 1 ?
+			GMU_WARM_BOOT : GMU_COLD_BOOT;
+	} else if (gmu->legacy) {
+		status = gmu_read(gmu, REG_A6XX_GMU_GENERAL_7) == 1 ?
+			GMU_WARM_BOOT : GMU_COLD_BOOT;
+	} else {
+		/*
+		 * Warm boot path does not work on newer A6xx GPUs
+		 * Presumably this is because icache/dcache regions must be restored
+		 */
 		status = GMU_COLD_BOOT;
+	}
 
 	ret = a6xx_gmu_fw_start(gmu, status);
 	if (ret)
@@ -1600,7 +1643,8 @@ int a6xx_gmu_init(struct a6xx_gpu *a6xx_gpu, struct device_node *node)
 	 * are otherwise unused by a660.
 	 */
 	gmu->dummy.size = SZ_4K;
-	if (adreno_is_a660_family(adreno_gpu)) {
+	if (adreno_is_a660_family(adreno_gpu) ||
+	    adreno_is_a7xx(adreno_gpu)) {
 		ret = a6xx_gmu_memory_alloc(gmu, &gmu->debug, SZ_4K * 7,
 					    0x60400000, "debug");
 		if (ret)
@@ -1616,7 +1660,8 @@ int a6xx_gmu_init(struct a6xx_gpu *a6xx_gpu, struct device_node *node)
 		goto err_memory;
 
 	/* Note that a650 family also includes a660 family: */
-	if (adreno_is_a650_family(adreno_gpu)) {
+	if (adreno_is_a650_family(adreno_gpu) ||
+	    adreno_is_a7xx(adreno_gpu)) {
 		ret = a6xx_gmu_memory_alloc(gmu, &gmu->icache,
 			SZ_16M - SZ_16K, 0x04000, "icache");
 		if (ret)
@@ -1664,7 +1709,8 @@ int a6xx_gmu_init(struct a6xx_gpu *a6xx_gpu, struct device_node *node)
 		goto err_memory;
 	}
 
-	if (adreno_is_a650_family(adreno_gpu)) {
+	if (adreno_is_a650_family(adreno_gpu) ||
+	    adreno_is_a7xx(adreno_gpu)) {
 		gmu->rscc = a6xx_gmu_get_mmio(pdev, "rscc");
 		if (IS_ERR(gmu->rscc)) {
 			ret = -ENODEV;
diff --git a/drivers/gpu/drm/msm/adreno/a6xx_gpu.c b/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
index d4e85e24002f..61ce8d053355 100644
--- a/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
+++ b/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
@@ -103,6 +103,7 @@ static void a6xx_set_pagetable(struct a6xx_gpu *a6xx_gpu,
 		struct msm_ringbuffer *ring, struct msm_file_private *ctx)
 {
 	bool sysprof = refcount_read(&a6xx_gpu->base.base.sysprof_active) > 1;
+	struct adreno_gpu *adreno_gpu = &a6xx_gpu->base;
 	phys_addr_t ttbr;
 	u32 asid;
 	u64 memptr = rbmemptr(ring, ttbr0);
@@ -114,9 +115,11 @@ static void a6xx_set_pagetable(struct a6xx_gpu *a6xx_gpu,
 		return;
 
 	if (!sysprof) {
-		/* Turn off protected mode to write to special registers */
-		OUT_PKT7(ring, CP_SET_PROTECTED_MODE, 1);
-		OUT_RING(ring, 0);
+		if (!adreno_is_a7xx(adreno_gpu)) {
+			/* Turn off protected mode to write to special registers */
+			OUT_PKT7(ring, CP_SET_PROTECTED_MODE, 1);
+			OUT_RING(ring, 0);
+		}
 
 		OUT_PKT4(ring, REG_A6XX_RBBM_PERFCTR_SRAM_INIT_CMD, 1);
 		OUT_RING(ring, 1);
@@ -141,6 +144,16 @@ static void a6xx_set_pagetable(struct a6xx_gpu *a6xx_gpu,
 	OUT_RING(ring, lower_32_bits(ttbr));
 	OUT_RING(ring, (asid << 16) | upper_32_bits(ttbr));
 
+	/*
+	 * Sync both threads after switching pagetables and enable BR only
+	 * to make sure BV doesn't race ahead while BR is still switching
+	 * pagetables.
+	 */
+	if (adreno_is_a7xx(&a6xx_gpu->base)) {
+		OUT_PKT7(ring, CP_THREAD_CONTROL, 1);
+		OUT_RING(ring, CP_THREAD_CONTROL_0_SYNC_THREADS | CP_SET_THREAD_BR);
+	}
+
 	/*
 	 * And finally, trigger a uche flush to be sure there isn't anything
 	 * lingering in that part of the GPU
@@ -163,9 +176,11 @@ static void a6xx_set_pagetable(struct a6xx_gpu *a6xx_gpu,
 		OUT_RING(ring, CP_WAIT_REG_MEM_4_MASK(0x1));
 		OUT_RING(ring, CP_WAIT_REG_MEM_5_DELAY_LOOP_CYCLES(0));
 
-		/* Re-enable protected mode: */
-		OUT_PKT7(ring, CP_SET_PROTECTED_MODE, 1);
-		OUT_RING(ring, 1);
+		if (!adreno_is_a7xx(adreno_gpu)) {
+			/* Re-enable protected mode: */
+			OUT_PKT7(ring, CP_SET_PROTECTED_MODE, 1);
+			OUT_RING(ring, 1);
+		}
 	}
 }
 
@@ -252,6 +267,133 @@ static void a6xx_submit(struct msm_gpu *gpu, struct msm_gem_submit *submit)
 	a6xx_flush(gpu, ring);
 }
 
+static void a7xx_submit(struct msm_gpu *gpu, struct msm_gem_submit *submit)
+{
+	unsigned int index = submit->seqno % MSM_GPU_SUBMIT_STATS_COUNT;
+	struct adreno_gpu *adreno_gpu = to_adreno_gpu(gpu);
+	struct a6xx_gpu *a6xx_gpu = to_a6xx_gpu(adreno_gpu);
+	struct msm_ringbuffer *ring = submit->ring;
+	unsigned int i, ibs = 0;
+
+	/*
+	 * Toggle concurrent binning for pagetable switch and set the thread to
+	 * BR since only it can execute the pagetable switch packets.
+	 */
+	OUT_PKT7(ring, CP_THREAD_CONTROL, 1);
+	OUT_RING(ring, CP_THREAD_CONTROL_0_SYNC_THREADS | CP_SET_THREAD_BR);
+
+	a6xx_set_pagetable(a6xx_gpu, ring, submit->queue->ctx);
+
+	get_stats_counter(ring, REG_A6XX_RBBM_PERFCTR_CP(0),
+		rbmemptr_stats(ring, index, cpcycles_start));
+	get_stats_counter(ring, REG_A6XX_CP_ALWAYS_ON_COUNTER,
+		rbmemptr_stats(ring, index, alwayson_start));
+
+	OUT_PKT7(ring, CP_THREAD_CONTROL, 1);
+	OUT_RING(ring, CP_SET_THREAD_BOTH);
+
+	OUT_PKT7(ring, CP_SET_MARKER, 1);
+	OUT_RING(ring, 0x101); /* IFPC disable */
+
+	OUT_PKT7(ring, CP_SET_MARKER, 1);
+	OUT_RING(ring, 0x00d); /* IB1LIST start */
+
+	/* Submit the commands */
+	for (i = 0; i < submit->nr_cmds; i++) {
+		switch (submit->cmd[i].type) {
+		case MSM_SUBMIT_CMD_IB_TARGET_BUF:
+			break;
+		case MSM_SUBMIT_CMD_CTX_RESTORE_BUF:
+			if (gpu->cur_ctx_seqno == submit->queue->ctx->seqno)
+				break;
+			fallthrough;
+		case MSM_SUBMIT_CMD_BUF:
+			OUT_PKT7(ring, CP_INDIRECT_BUFFER_PFE, 3);
+			OUT_RING(ring, lower_32_bits(submit->cmd[i].iova));
+			OUT_RING(ring, upper_32_bits(submit->cmd[i].iova));
+			OUT_RING(ring, submit->cmd[i].size);
+			ibs++;
+			break;
+		}
+
+		/*
+		 * Periodically update shadow-wptr if needed, so that we
+		 * can see partial progress of submits with large # of
+		 * cmds.. otherwise we could needlessly stall waiting for
+		 * ringbuffer state, simply due to looking at a shadow
+		 * rptr value that has not been updated
+		 */
+		if ((ibs % 32) == 0)
+			update_shadow_rptr(gpu, ring);
+	}
+
+	OUT_PKT7(ring, CP_SET_MARKER, 1);
+	OUT_RING(ring, 0x00e); /* IB1LIST end */
+
+	get_stats_counter(ring, REG_A6XX_RBBM_PERFCTR_CP(0),
+		rbmemptr_stats(ring, index, cpcycles_end));
+	get_stats_counter(ring, REG_A6XX_CP_ALWAYS_ON_COUNTER,
+		rbmemptr_stats(ring, index, alwayson_end));
+
+	/* Write the fence to the scratch register */
+	OUT_PKT4(ring, REG_A6XX_CP_SCRATCH_REG(2), 1);
+	OUT_RING(ring, submit->seqno);
+
+	OUT_PKT7(ring, CP_THREAD_CONTROL, 1);
+	OUT_RING(ring, CP_SET_THREAD_BR);
+
+	OUT_PKT7(ring, CP_EVENT_WRITE, 1);
+	OUT_RING(ring, CCU_INVALIDATE_DEPTH);
+
+	OUT_PKT7(ring, CP_EVENT_WRITE, 1);
+	OUT_RING(ring, CCU_INVALIDATE_COLOR);
+
+	OUT_PKT7(ring, CP_THREAD_CONTROL, 1);
+	OUT_RING(ring, CP_SET_THREAD_BV);
+
+	/*
+	 * Make sure the timestamp is committed once BV pipe is
+	 * completely done with this submission.
+	 */
+	OUT_PKT7(ring, CP_EVENT_WRITE, 4);
+	OUT_RING(ring, CACHE_CLEAN | BIT(27));
+	OUT_RING(ring, lower_32_bits(rbmemptr(ring, bv_fence)));
+	OUT_RING(ring, upper_32_bits(rbmemptr(ring, bv_fence)));
+	OUT_RING(ring, submit->seqno);
+
+	OUT_PKT7(ring, CP_THREAD_CONTROL, 1);
+	OUT_RING(ring, CP_SET_THREAD_BR);
+
+	/*
+	 * This makes sure that BR doesn't race ahead and commit
+	 * timestamp to memstore while BV is still processing
+	 * this submission.
+	 */
+	OUT_PKT7(ring, CP_WAIT_TIMESTAMP, 4);
+	OUT_RING(ring, 0);
+	OUT_RING(ring, lower_32_bits(rbmemptr(ring, bv_fence)));
+	OUT_RING(ring, upper_32_bits(rbmemptr(ring, bv_fence)));
+	OUT_RING(ring, submit->seqno);
+
+	/* write the ringbuffer timestamp */
+	OUT_PKT7(ring, CP_EVENT_WRITE, 4);
+	OUT_RING(ring, CACHE_CLEAN | CP_EVENT_WRITE_0_IRQ | BIT(27));
+	OUT_RING(ring, lower_32_bits(rbmemptr(ring, fence)));
+	OUT_RING(ring, upper_32_bits(rbmemptr(ring, fence)));
+	OUT_RING(ring, submit->seqno);
+
+	OUT_PKT7(ring, CP_THREAD_CONTROL, 1);
+	OUT_RING(ring, CP_SET_THREAD_BOTH);
+
+	OUT_PKT7(ring, CP_SET_MARKER, 1);
+	OUT_RING(ring, 0x100); /* IFPC enable */
+
+	trace_msm_gpu_submit_flush(submit,
+		gpu_read64(gpu, REG_A6XX_CP_ALWAYS_ON_COUNTER));
+
+	a6xx_flush(gpu, ring);
+}
+
 const struct adreno_reglist a612_hwcg[] = {
 	{REG_A6XX_RBBM_CLOCK_CNTL_SP0, 0x22222222},
 	{REG_A6XX_RBBM_CLOCK_CNTL2_SP0, 0x02222220},
@@ -714,6 +856,15 @@ static void a6xx_set_hwcg(struct msm_gpu *gpu, bool state)
 	else
 		clock_cntl_on = 0x8aa8aa82;
 
+	if (adreno_is_a7xx(adreno_gpu)) {
+		gmu_write(&a6xx_gpu->gmu, REG_A6XX_GPU_GMU_AO_GMU_CGC_MODE_CNTL,
+			  state ? 0x20000 : 0);
+		gmu_write(&a6xx_gpu->gmu, REG_A6XX_GPU_GMU_AO_GMU_CGC_DELAY_CNTL,
+			  state ? 0x10111 : 0);
+		gmu_write(&a6xx_gpu->gmu, REG_A6XX_GPU_GMU_AO_GMU_CGC_HYST_CNTL,
+			  state ? 0x5555 : 0);
+	}
+
 	val = gpu_read(gpu, REG_A6XX_RBBM_CLOCK_CNTL);
 
 	/* Don't re-program the registers if they are already correct */
@@ -721,14 +872,14 @@ static void a6xx_set_hwcg(struct msm_gpu *gpu, bool state)
 		return;
 
 	/* Disable SP clock before programming HWCG registers */
-	if (!adreno_is_a610(adreno_gpu))
+	if (!adreno_is_a610(adreno_gpu) && !adreno_is_a7xx(adreno_gpu))
 		gmu_rmw(gmu, REG_A6XX_GPU_GMU_GX_SPTPRAC_CLOCK_CONTROL, 1, 0);
 
 	for (i = 0; (reg = &adreno_gpu->info->hwcg[i], reg->offset); i++)
 		gpu_write(gpu, reg->offset, state ? reg->value : 0);
 
 	/* Enable SP clock */
-	if (!adreno_is_a610(adreno_gpu))
+	if (!adreno_is_a610(adreno_gpu) && !adreno_is_a7xx(adreno_gpu))
 		gmu_rmw(gmu, REG_A6XX_GPU_GMU_GX_SPTPRAC_CLOCK_CONTROL, 0, 1);
 
 	gpu_write(gpu, REG_A6XX_RBBM_CLOCK_CNTL, state ? clock_cntl_on : 0);
@@ -1017,6 +1168,10 @@ static void a6xx_set_ubwc_config(struct msm_gpu *gpu)
 		  uavflagprd_inv << 4 | min_acc_len << 3 |
 		  hbb_lo << 1 | ubwc_mode);
 
+	if (adreno_is_a7xx(adreno_gpu))
+		gpu_write(gpu, REG_A7XX_GRAS_NC_MODE_CNTL,
+			  FIELD_PREP(GENMASK(8, 5), hbb_lo));
+
 	gpu_write(gpu, REG_A6XX_UCHE_MODE_CNTL, min_acc_len << 23 | hbb_lo << 21);
 }
 
@@ -1049,6 +1204,55 @@ static int a6xx_cp_init(struct msm_gpu *gpu)
 	return a6xx_idle(gpu, ring) ? 0 : -EINVAL;
 }
 
+static int a7xx_cp_init(struct msm_gpu *gpu)
+{
+	struct msm_ringbuffer *ring = gpu->rb[0];
+	u32 mask;
+
+	/* Disable concurrent binning before sending CP init */
+	OUT_PKT7(ring, CP_THREAD_CONTROL, 1);
+	OUT_RING(ring, BIT(27));
+
+	OUT_PKT7(ring, CP_ME_INIT, 7);
+
+	/* Use multiple HW contexts */
+	mask = BIT(0);
+
+	/* Enable error detection */
+	mask |= BIT(1);
+
+	/* Set default reset state */
+	mask |= BIT(3);
+
+	/* Disable save/restore of performance counters across preemption */
+	mask |= BIT(6);
+
+	/* Enable the register init list with the spinlock */
+	mask |= BIT(8);
+
+	OUT_RING(ring, mask);
+
+	/* Enable multiple hardware contexts */
+	OUT_RING(ring, 0x00000003);
+
+	/* Enable error detection */
+	OUT_RING(ring, 0x20000000);
+
+	/* Operation mode mask */
+	OUT_RING(ring, 0x00000002);
+
+	/* *Don't* send a power up reg list for concurrent binning (TODO) */
+	/* Lo address */
+	OUT_RING(ring, 0x00000000);
+	/* Hi address */
+	OUT_RING(ring, 0x00000000);
+	/* BIT(31) set => read the regs from the list */
+	OUT_RING(ring, 0x00000000);
+
+	a6xx_flush(gpu, ring);
+	return a6xx_idle(gpu, ring) ? 0 : -EINVAL;
+}
+
 /*
  * Check that the microcode version is new enough to include several key
  * security fixes. Return true if the ucode is safe.
@@ -1065,6 +1269,10 @@ static bool a6xx_ucode_check_version(struct a6xx_gpu *a6xx_gpu,
 	if (IS_ERR(buf))
 		return false;
 
+	/* A7xx is safe! */
+	if (adreno_is_a7xx(adreno_gpu))
+		return true;
+
 	/*
 	 * Targets up to a640 (a618, a630 and a640) need to check for a
 	 * microcode version that is patched to support the whereami opcode or
@@ -1181,16 +1389,39 @@ static int a6xx_zap_shader_init(struct msm_gpu *gpu)
 }
 
 #define A6XX_INT_MASK (A6XX_RBBM_INT_0_MASK_CP_AHB_ERROR | \
-	  A6XX_RBBM_INT_0_MASK_RBBM_ATB_ASYNCFIFO_OVERFLOW | \
-	  A6XX_RBBM_INT_0_MASK_CP_HW_ERROR | \
-	  A6XX_RBBM_INT_0_MASK_CP_IB2 | \
-	  A6XX_RBBM_INT_0_MASK_CP_IB1 | \
-	  A6XX_RBBM_INT_0_MASK_CP_RB | \
-	  A6XX_RBBM_INT_0_MASK_CP_CACHE_FLUSH_TS | \
-	  A6XX_RBBM_INT_0_MASK_RBBM_ATB_BUS_OVERFLOW | \
-	  A6XX_RBBM_INT_0_MASK_RBBM_HANG_DETECT | \
-	  A6XX_RBBM_INT_0_MASK_UCHE_OOB_ACCESS | \
-	  A6XX_RBBM_INT_0_MASK_UCHE_TRAP_INTR)
+		       A6XX_RBBM_INT_0_MASK_RBBM_ATB_ASYNCFIFO_OVERFLOW | \
+		       A6XX_RBBM_INT_0_MASK_CP_HW_ERROR | \
+		       A6XX_RBBM_INT_0_MASK_CP_IB2 | \
+		       A6XX_RBBM_INT_0_MASK_CP_IB1 | \
+		       A6XX_RBBM_INT_0_MASK_CP_RB | \
+		       A6XX_RBBM_INT_0_MASK_CP_CACHE_FLUSH_TS | \
+		       A6XX_RBBM_INT_0_MASK_RBBM_ATB_BUS_OVERFLOW | \
+		       A6XX_RBBM_INT_0_MASK_RBBM_HANG_DETECT | \
+		       A6XX_RBBM_INT_0_MASK_UCHE_OOB_ACCESS | \
+		       A6XX_RBBM_INT_0_MASK_UCHE_TRAP_INTR)
+
+#define A7XX_INT_MASK (A6XX_RBBM_INT_0_MASK_CP_AHB_ERROR | \
+		       A6XX_RBBM_INT_0_MASK_RBBM_ATB_ASYNCFIFO_OVERFLOW | \
+		       A6XX_RBBM_INT_0_MASK_RBBM_GPC_ERROR | \
+		       A6XX_RBBM_INT_0_MASK_CP_SW | \
+		       A6XX_RBBM_INT_0_MASK_CP_HW_ERROR | \
+		       A6XX_RBBM_INT_0_MASK_PM4CPINTERRUPT | \
+		       A6XX_RBBM_INT_0_MASK_CP_RB_DONE_TS | \
+		       A6XX_RBBM_INT_0_MASK_CP_CACHE_FLUSH_TS | \
+		       A6XX_RBBM_INT_0_MASK_RBBM_ATB_BUS_OVERFLOW | \
+		       A6XX_RBBM_INT_0_MASK_RBBM_HANG_DETECT | \
+		       A6XX_RBBM_INT_0_MASK_UCHE_OOB_ACCESS | \
+		       A6XX_RBBM_INT_0_MASK_UCHE_TRAP_INTR | \
+		       A6XX_RBBM_INT_0_MASK_TSBWRITEERROR)
+
+#define A7XX_APRIV_MASK (A6XX_CP_APRIV_CNTL_ICACHE | \
+			 A6XX_CP_APRIV_CNTL_RBFETCH | \
+			 A6XX_CP_APRIV_CNTL_RBPRIVLEVEL | \
+			 A6XX_CP_APRIV_CNTL_RBRPWB)
+
+#define A7XX_BR_APRIVMASK (A7XX_APRIV_MASK | \
+			   A6XX_CP_APRIV_CNTL_CDREAD | \
+			   A6XX_CP_APRIV_CNTL_CDWRITE)
 
 static int hw_init(struct msm_gpu *gpu)
 {
@@ -1232,19 +1463,21 @@ static int hw_init(struct msm_gpu *gpu)
 	gpu_write64(gpu, REG_A6XX_RBBM_SECVID_TSB_TRUSTED_BASE, 0x00000000);
 	gpu_write(gpu, REG_A6XX_RBBM_SECVID_TSB_TRUSTED_SIZE, 0x00000000);
 
-	/* Turn on 64 bit addressing for all blocks */
-	gpu_write(gpu, REG_A6XX_CP_ADDR_MODE_CNTL, 0x1);
-	gpu_write(gpu, REG_A6XX_VSC_ADDR_MODE_CNTL, 0x1);
-	gpu_write(gpu, REG_A6XX_GRAS_ADDR_MODE_CNTL, 0x1);
-	gpu_write(gpu, REG_A6XX_RB_ADDR_MODE_CNTL, 0x1);
-	gpu_write(gpu, REG_A6XX_PC_ADDR_MODE_CNTL, 0x1);
-	gpu_write(gpu, REG_A6XX_HLSQ_ADDR_MODE_CNTL, 0x1);
-	gpu_write(gpu, REG_A6XX_VFD_ADDR_MODE_CNTL, 0x1);
-	gpu_write(gpu, REG_A6XX_VPC_ADDR_MODE_CNTL, 0x1);
-	gpu_write(gpu, REG_A6XX_UCHE_ADDR_MODE_CNTL, 0x1);
-	gpu_write(gpu, REG_A6XX_SP_ADDR_MODE_CNTL, 0x1);
-	gpu_write(gpu, REG_A6XX_TPL1_ADDR_MODE_CNTL, 0x1);
-	gpu_write(gpu, REG_A6XX_RBBM_SECVID_TSB_ADDR_MODE_CNTL, 0x1);
+	if (!adreno_is_a7xx(adreno_gpu)) {
+		/* Turn on 64 bit addressing for all blocks */
+		gpu_write(gpu, REG_A6XX_CP_ADDR_MODE_CNTL, 0x1);
+		gpu_write(gpu, REG_A6XX_VSC_ADDR_MODE_CNTL, 0x1);
+		gpu_write(gpu, REG_A6XX_GRAS_ADDR_MODE_CNTL, 0x1);
+		gpu_write(gpu, REG_A6XX_RB_ADDR_MODE_CNTL, 0x1);
+		gpu_write(gpu, REG_A6XX_PC_ADDR_MODE_CNTL, 0x1);
+		gpu_write(gpu, REG_A6XX_HLSQ_ADDR_MODE_CNTL, 0x1);
+		gpu_write(gpu, REG_A6XX_VFD_ADDR_MODE_CNTL, 0x1);
+		gpu_write(gpu, REG_A6XX_VPC_ADDR_MODE_CNTL, 0x1);
+		gpu_write(gpu, REG_A6XX_UCHE_ADDR_MODE_CNTL, 0x1);
+		gpu_write(gpu, REG_A6XX_SP_ADDR_MODE_CNTL, 0x1);
+		gpu_write(gpu, REG_A6XX_TPL1_ADDR_MODE_CNTL, 0x1);
+		gpu_write(gpu, REG_A6XX_RBBM_SECVID_TSB_ADDR_MODE_CNTL, 0x1);
+	}
 
 	/* enable hardware clockgating */
 	a6xx_set_hwcg(gpu, true);
@@ -1252,12 +1485,14 @@ static int hw_init(struct msm_gpu *gpu)
 	/* VBIF/GBIF start*/
 	if (adreno_is_a610(adreno_gpu) ||
 	    adreno_is_a640_family(adreno_gpu) ||
-	    adreno_is_a650_family(adreno_gpu)) {
+	    adreno_is_a650_family(adreno_gpu) ||
+	    adreno_is_a7xx(adreno_gpu)) {
 		gpu_write(gpu, REG_A6XX_GBIF_QSB_SIDE0, 0x00071620);
 		gpu_write(gpu, REG_A6XX_GBIF_QSB_SIDE1, 0x00071620);
 		gpu_write(gpu, REG_A6XX_GBIF_QSB_SIDE2, 0x00071620);
 		gpu_write(gpu, REG_A6XX_GBIF_QSB_SIDE3, 0x00071620);
-		gpu_write(gpu, REG_A6XX_RBBM_GBIF_CLIENT_QOS_CNTL, 0x3);
+		gpu_write(gpu, REG_A6XX_RBBM_GBIF_CLIENT_QOS_CNTL,
+			  adreno_is_a7xx(adreno_gpu) ? 0x2120212 : 0x3);
 	} else {
 		gpu_write(gpu, REG_A6XX_RBBM_VBIF_CLIENT_QOS_CNTL, 0x3);
 	}
@@ -1265,13 +1500,21 @@ static int hw_init(struct msm_gpu *gpu)
 	if (adreno_is_a630(adreno_gpu))
 		gpu_write(gpu, REG_A6XX_VBIF_GATE_OFF_WRREQ_EN, 0x00000009);
 
+	if (adreno_is_a7xx(adreno_gpu))
+		gpu_write(gpu, REG_A6XX_UCHE_GBIF_GX_CONFIG, 0x10240e0);
+
 	/* Make all blocks contribute to the GPU BUSY perf counter */
 	gpu_write(gpu, REG_A6XX_RBBM_PERFCTR_GPU_BUSY_MASKED, 0xffffffff);
 
 	/* Disable L2 bypass in the UCHE */
-	gpu_write64(gpu, REG_A6XX_UCHE_WRITE_RANGE_MAX, 0x0001ffffffffffc0llu);
-	gpu_write64(gpu, REG_A6XX_UCHE_TRAP_BASE, 0x0001fffffffff000llu);
-	gpu_write64(gpu, REG_A6XX_UCHE_WRITE_THRU_BASE, 0x0001fffffffff000llu);
+	if (adreno_is_a7xx(adreno_gpu)) {
+		gpu_write64(gpu, REG_A6XX_UCHE_TRAP_BASE, 0x0001fffffffff000llu);
+		gpu_write64(gpu, REG_A6XX_UCHE_WRITE_THRU_BASE, 0x0001fffffffff000llu);
+	} else {
+		gpu_write64(gpu, REG_A6XX_UCHE_WRITE_RANGE_MAX, 0x0001ffffffffffc0llu);
+		gpu_write64(gpu, REG_A6XX_UCHE_TRAP_BASE, 0x0001fffffffff000llu);
+		gpu_write64(gpu, REG_A6XX_UCHE_WRITE_THRU_BASE, 0x0001fffffffff000llu);
+	}
 
 	if (!adreno_is_a650_family(adreno_gpu)) {
 		/* Set the GMEM VA range [0x100000:0x100000 + gpu->gmem - 1] */
@@ -1281,8 +1524,12 @@ static int hw_init(struct msm_gpu *gpu)
 			0x00100000 + adreno_gpu->info->gmem - 1);
 	}
 
-	gpu_write(gpu, REG_A6XX_UCHE_FILTER_CNTL, 0x804);
-	gpu_write(gpu, REG_A6XX_UCHE_CACHE_WAYS, 0x4);
+	if (adreno_is_a7xx(adreno_gpu))
+		gpu_write(gpu, REG_A6XX_UCHE_CACHE_WAYS, BIT(23));
+	else {
+		gpu_write(gpu, REG_A6XX_UCHE_FILTER_CNTL, 0x804);
+		gpu_write(gpu, REG_A6XX_UCHE_CACHE_WAYS, 0x4);
+	}
 
 	if (adreno_is_a640_family(adreno_gpu) || adreno_is_a650_family(adreno_gpu)) {
 		gpu_write(gpu, REG_A6XX_CP_ROQ_THRESHOLDS_2, 0x02000140);
@@ -1290,7 +1537,7 @@ static int hw_init(struct msm_gpu *gpu)
 	} else if (adreno_is_a610(adreno_gpu)) {
 		gpu_write(gpu, REG_A6XX_CP_ROQ_THRESHOLDS_2, 0x00800060);
 		gpu_write(gpu, REG_A6XX_CP_ROQ_THRESHOLDS_1, 0x40201b16);
-	} else {
+	} else if (!adreno_is_a7xx(adreno_gpu)) {
 		gpu_write(gpu, REG_A6XX_CP_ROQ_THRESHOLDS_2, 0x010000c0);
 		gpu_write(gpu, REG_A6XX_CP_ROQ_THRESHOLDS_1, 0x8040362c);
 	}
@@ -1302,7 +1549,7 @@ static int hw_init(struct msm_gpu *gpu)
 	if (adreno_is_a610(adreno_gpu)) {
 		gpu_write(gpu, REG_A6XX_CP_MEM_POOL_SIZE, 48);
 		gpu_write(gpu, REG_A6XX_CP_MEM_POOL_DBG_ADDR, 47);
-	} else
+	} else if (!adreno_is_a7xx(adreno_gpu))
 		gpu_write(gpu, REG_A6XX_CP_MEM_POOL_SIZE, 128);
 
 	/* Setting the primFifo thresholds default values,
@@ -1318,7 +1565,7 @@ static int hw_init(struct msm_gpu *gpu)
 		gpu_write(gpu, REG_A6XX_PC_DBG_ECO_CNTL, 0x00018000);
 	else if (adreno_is_a610(adreno_gpu))
 		gpu_write(gpu, REG_A6XX_PC_DBG_ECO_CNTL, 0x00080000);
-	else
+	else if (!adreno_is_a7xx(adreno_gpu))
 		gpu_write(gpu, REG_A6XX_PC_DBG_ECO_CNTL, 0x00180000);
 
 	/* Set the AHB default slave response to "ERROR" */
@@ -1327,6 +1574,12 @@ static int hw_init(struct msm_gpu *gpu)
 	/* Turn on performance counters */
 	gpu_write(gpu, REG_A6XX_RBBM_PERFCTR_CNTL, 0x1);
 
+	if (adreno_is_a7xx(adreno_gpu)) {
+		/* Turn on the IFPC counter (countable 4 on XOCLK4) */
+		gmu_write(&a6xx_gpu->gmu, REG_A6XX_GMU_CX_GMU_POWER_COUNTER_SELECT_1,
+			  FIELD_PREP(GENMASK(7, 0), 0x4));
+	}
+
 	/* Select CP0 to always count cycles */
 	gpu_write(gpu, REG_A6XX_CP_PERFCTR_CP_SEL(0), PERF_CP_ALWAYS_COUNT);
 
@@ -1373,15 +1626,31 @@ static int hw_init(struct msm_gpu *gpu)
 	/* Set dualQ + disable afull for A660 GPU */
 	if (adreno_is_a660(adreno_gpu))
 		gpu_write(gpu, REG_A6XX_UCHE_CMDQ_CONFIG, 0x66906);
+	else if (adreno_is_a7xx(adreno_gpu))
+		gpu_write(gpu, REG_A6XX_UCHE_CMDQ_CONFIG,
+			  FIELD_PREP(GENMASK(19, 16), 6) |
+			  FIELD_PREP(GENMASK(15, 12), 6) |
+			  FIELD_PREP(GENMASK(11, 8), 9) |
+			  BIT(3) | BIT(2) |
+			  FIELD_PREP(GENMASK(1, 0), 2));
 
 	/* Enable expanded apriv for targets that support it */
 	if (gpu->hw_apriv) {
-		gpu_write(gpu, REG_A6XX_CP_APRIV_CNTL,
-			(1 << 6) | (1 << 5) | (1 << 3) | (1 << 2) | (1 << 1));
+		if (adreno_is_a7xx(adreno_gpu)) {
+			gpu_write(gpu, REG_A6XX_CP_APRIV_CNTL,
+				  A7XX_BR_APRIVMASK);
+			gpu_write(gpu, REG_A7XX_CP_BV_APRIV_CNTL,
+				  A7XX_APRIV_MASK);
+			gpu_write(gpu, REG_A7XX_CP_LPAC_APRIV_CNTL,
+				  A7XX_APRIV_MASK);
+		} else
+			gpu_write(gpu, REG_A6XX_CP_APRIV_CNTL,
+				  BIT(6) | BIT(5) | BIT(3) | BIT(2) | BIT(1));
 	}
 
 	/* Enable interrupts */
-	gpu_write(gpu, REG_A6XX_RBBM_INT_0_MASK, A6XX_INT_MASK);
+	gpu_write(gpu, REG_A6XX_RBBM_INT_0_MASK,
+		  adreno_is_a7xx(adreno_gpu) ? A7XX_INT_MASK : A6XX_INT_MASK);
 
 	ret = adreno_hw_init(gpu);
 	if (ret)
@@ -1408,6 +1677,12 @@ static int hw_init(struct msm_gpu *gpu)
 			shadowptr(a6xx_gpu, gpu->rb[0]));
 	}
 
+	/* ..which means "always" on A7xx, also for BV shadow */
+	if (adreno_is_a7xx(adreno_gpu)) {
+		gpu_write64(gpu, REG_A7XX_CP_BV_RB_RPTR_ADDR,
+			    rbmemptr(gpu->rb[0], bv_fence));
+	}
+
 	/* Always come up on rb 0 */
 	a6xx_gpu->cur_ring = gpu->rb[0];
 
@@ -1416,7 +1691,7 @@ static int hw_init(struct msm_gpu *gpu)
 	/* Enable the SQE_to start the CP engine */
 	gpu_write(gpu, REG_A6XX_CP_SQE_CNTL, 1);
 
-	ret = a6xx_cp_init(gpu);
+	ret = adreno_is_a7xx(adreno_gpu) ? a7xx_cp_init(gpu) : a6xx_cp_init(gpu);
 	if (ret)
 		goto out;
 
@@ -1653,7 +1928,7 @@ static void a6xx_cp_hw_err_irq(struct msm_gpu *gpu)
 			(val & 0x3ffff), val);
 	}
 
-	if (status & A6XX_CP_INT_CP_AHB_ERROR)
+	if (status & A6XX_CP_INT_CP_AHB_ERROR && !adreno_is_a7xx(to_adreno_gpu(gpu)))
 		dev_err_ratelimited(&gpu->pdev->dev, "CP AHB error interrupt\n");
 
 	if (status & A6XX_CP_INT_CP_VSD_PARITY_ERROR)
@@ -1803,6 +2078,35 @@ static void a6xx_llc_activate(struct a6xx_gpu *a6xx_gpu)
 	gpu_rmw(gpu, REG_A6XX_GBIF_SCACHE_CNTL1, GENMASK(24, 0), cntl1_regval);
 }
 
+static void a7xx_llc_activate(struct a6xx_gpu *a6xx_gpu)
+{
+	struct adreno_gpu *adreno_gpu = &a6xx_gpu->base;
+	struct msm_gpu *gpu = &adreno_gpu->base;
+
+	if (IS_ERR(a6xx_gpu->llc_mmio))
+		return;
+
+	if (!llcc_slice_activate(a6xx_gpu->llc_slice)) {
+		u32 gpu_scid = llcc_get_slice_id(a6xx_gpu->llc_slice);
+
+		gpu_scid &= GENMASK(4, 0);
+
+		gpu_write(gpu, REG_A6XX_GBIF_SCACHE_CNTL1,
+			  FIELD_PREP(GENMASK(29, 25), gpu_scid) |
+			  FIELD_PREP(GENMASK(24, 20), gpu_scid) |
+			  FIELD_PREP(GENMASK(19, 15), gpu_scid) |
+			  FIELD_PREP(GENMASK(14, 10), gpu_scid) |
+			  FIELD_PREP(GENMASK(9, 5), gpu_scid) |
+			  FIELD_PREP(GENMASK(4, 0), gpu_scid));
+
+		gpu_write(gpu, REG_A6XX_GBIF_SCACHE_CNTL0,
+			  FIELD_PREP(GENMASK(14, 10), gpu_scid) |
+			  BIT(8));
+	}
+
+	llcc_slice_activate(a6xx_gpu->htw_llc_slice);
+}
+
 static void a6xx_llc_slices_destroy(struct a6xx_gpu *a6xx_gpu)
 {
 	/* No LLCC on non-RPMh (and by extension, non-GMU) SoCs */
@@ -1814,7 +2118,7 @@ static void a6xx_llc_slices_destroy(struct a6xx_gpu *a6xx_gpu)
 }
 
 static void a6xx_llc_slices_init(struct platform_device *pdev,
-		struct a6xx_gpu *a6xx_gpu)
+		struct a6xx_gpu *a6xx_gpu, bool is_a7xx)
 {
 	struct device_node *phandle;
 
@@ -1823,18 +2127,18 @@ static void a6xx_llc_slices_init(struct platform_device *pdev,
 		return;
 
 	/*
-	 * There is a different programming path for targets with an mmu500
-	 * attached, so detect if that is the case
+	 * There is a different programming path for A6xx targets with an
+	 * mmu500 attached, so detect if that is the case
 	 */
 	phandle = of_parse_phandle(pdev->dev.of_node, "iommus", 0);
 	a6xx_gpu->have_mmu500 = (phandle &&
 		of_device_is_compatible(phandle, "arm,mmu-500"));
 	of_node_put(phandle);
 
-	if (a6xx_gpu->have_mmu500)
-		a6xx_gpu->llc_mmio = NULL;
-	else
+	if (is_a7xx || !a6xx_gpu->have_mmu500)
 		a6xx_gpu->llc_mmio = msm_ioremap(pdev, "cx_mem");
+	else
+		a6xx_gpu->llc_mmio = NULL;
 
 	a6xx_gpu->llc_slice = llcc_slice_getd(LLCC_GPU);
 	a6xx_gpu->htw_llc_slice = llcc_slice_getd(LLCC_GPUHTW);
@@ -1920,7 +2224,7 @@ static int a6xx_gmu_pm_resume(struct msm_gpu *gpu)
 
 	msm_devfreq_resume(gpu);
 
-	a6xx_llc_activate(a6xx_gpu);
+	adreno_is_a7xx(adreno_gpu) ? a7xx_llc_activate : a6xx_llc_activate(a6xx_gpu);
 
 	return ret;
 }
@@ -2307,6 +2611,37 @@ static const struct adreno_gpu_funcs funcs_gmuwrapper = {
 	.get_timestamp = a6xx_get_timestamp,
 };
 
+static const struct adreno_gpu_funcs funcs_a7xx = {
+	.base = {
+		.get_param = adreno_get_param,
+		.set_param = adreno_set_param,
+		.hw_init = a6xx_hw_init,
+		.ucode_load = a6xx_ucode_load,
+		.pm_suspend = a6xx_gmu_pm_suspend,
+		.pm_resume = a6xx_gmu_pm_resume,
+		.recover = a6xx_recover,
+		.submit = a7xx_submit,
+		.active_ring = a6xx_active_ring,
+		.irq = a6xx_irq,
+		.destroy = a6xx_destroy,
+#if defined(CONFIG_DRM_MSM_GPU_STATE)
+		.show = a6xx_show,
+#endif
+		.gpu_busy = a6xx_gpu_busy,
+		.gpu_get_freq = a6xx_gmu_get_freq,
+		.gpu_set_freq = a6xx_gpu_set_freq,
+#if defined(CONFIG_DRM_MSM_GPU_STATE)
+		.gpu_state_get = a6xx_gpu_state_get,
+		.gpu_state_put = a6xx_gpu_state_put,
+#endif
+		.create_address_space = a6xx_create_address_space,
+		.create_private_address_space = a6xx_create_private_address_space,
+		.get_rptr = a6xx_get_rptr,
+		.progress = a6xx_progress,
+	},
+	.get_timestamp = a6xx_gmu_get_timestamp,
+};
+
 struct msm_gpu *a6xx_gpu_init(struct drm_device *dev)
 {
 	struct msm_drm_private *priv = dev->dev_private;
@@ -2316,6 +2651,7 @@ struct msm_gpu *a6xx_gpu_init(struct drm_device *dev)
 	struct a6xx_gpu *a6xx_gpu;
 	struct adreno_gpu *adreno_gpu;
 	struct msm_gpu *gpu;
+	bool is_a7xx;
 	int ret;
 
 	a6xx_gpu = kzalloc(sizeof(*a6xx_gpu), GFP_KERNEL);
@@ -2339,7 +2675,10 @@ struct msm_gpu *a6xx_gpu_init(struct drm_device *dev)
 	adreno_gpu->base.hw_apriv =
 		!!(config->info->quirks & ADRENO_QUIRK_HAS_HW_APRIV);
 
-	a6xx_llc_slices_init(pdev, a6xx_gpu);
+	/* gpu->info only gets assigned in adreno_gpu_init() */
+	is_a7xx = config->info->family == ADRENO_7XX_GEN1;
+
+	a6xx_llc_slices_init(pdev, a6xx_gpu, is_a7xx);
 
 	ret = a6xx_set_supported_hw(&pdev->dev, config->info);
 	if (ret) {
@@ -2347,7 +2686,9 @@ struct msm_gpu *a6xx_gpu_init(struct drm_device *dev)
 		return ERR_PTR(ret);
 	}
 
-	if (adreno_has_gmu_wrapper(adreno_gpu))
+	if (is_a7xx)
+		ret = adreno_gpu_init(dev, pdev, adreno_gpu, &funcs_a7xx, 1);
+	else if (adreno_has_gmu_wrapper(adreno_gpu))
 		ret = adreno_gpu_init(dev, pdev, adreno_gpu, &funcs_gmuwrapper, 1);
 	else
 		ret = adreno_gpu_init(dev, pdev, adreno_gpu, &funcs, 1);
diff --git a/drivers/gpu/drm/msm/adreno/adreno_gpu.c b/drivers/gpu/drm/msm/adreno/adreno_gpu.c
index 8090dde03280..ea59724f8e41 100644
--- a/drivers/gpu/drm/msm/adreno/adreno_gpu.c
+++ b/drivers/gpu/drm/msm/adreno/adreno_gpu.c
@@ -567,6 +567,7 @@ int adreno_hw_init(struct msm_gpu *gpu)
 		ring->cur = ring->start;
 		ring->next = ring->start;
 		ring->memptrs->rptr = 0;
+		ring->memptrs->bv_fence = ring->fctx->completed_fence;
 
 		/* Detect and clean up an impossible fence, ie. if GPU managed
 		 * to scribble something invalid, we don't want that to confuse
diff --git a/drivers/gpu/drm/msm/adreno/adreno_gpu.h b/drivers/gpu/drm/msm/adreno/adreno_gpu.h
index 49f38edf9854..4063fbcb0405 100644
--- a/drivers/gpu/drm/msm/adreno/adreno_gpu.h
+++ b/drivers/gpu/drm/msm/adreno/adreno_gpu.h
@@ -46,6 +46,7 @@ enum adreno_family {
 	ADRENO_6XX_GEN2,  /* a640 family */
 	ADRENO_6XX_GEN3,  /* a650 family */
 	ADRENO_6XX_GEN4,  /* a660 family */
+	ADRENO_7XX_GEN1,  /* a730 family */
 };
 
 #define ADRENO_QUIRK_TWO_PASS_USE_WFI		BIT(0)
@@ -391,7 +392,8 @@ static inline int adreno_is_a650_family(const struct adreno_gpu *gpu)
 {
 	if (WARN_ON_ONCE(!gpu->info))
 		return false;
-	return gpu->info->family >= ADRENO_6XX_GEN3;
+	return gpu->info->family == ADRENO_6XX_GEN3 ||
+	       gpu->info->family == ADRENO_6XX_GEN4;
 }
 
 static inline int adreno_is_a640_family(const struct adreno_gpu *gpu)
@@ -401,6 +403,12 @@ static inline int adreno_is_a640_family(const struct adreno_gpu *gpu)
 	return gpu->info->family == ADRENO_6XX_GEN2;
 }
 
+static inline int adreno_is_a7xx(struct adreno_gpu *gpu)
+{
+	/* Update with non-fake (i.e. non-A702) Gen 7 GPUs */
+	return gpu->info->family == ADRENO_7XX_GEN1;
+}
+
 u64 adreno_private_address_space_size(struct msm_gpu *gpu);
 int adreno_get_param(struct msm_gpu *gpu, struct msm_file_private *ctx,
 		     uint32_t param, uint64_t *value, uint32_t *len);
diff --git a/drivers/gpu/drm/msm/msm_ringbuffer.h b/drivers/gpu/drm/msm/msm_ringbuffer.h
index 698b333abccd..0d6beb8cd39a 100644
--- a/drivers/gpu/drm/msm/msm_ringbuffer.h
+++ b/drivers/gpu/drm/msm/msm_ringbuffer.h
@@ -30,6 +30,8 @@ struct msm_gpu_submit_stats {
 struct msm_rbmemptrs {
 	volatile uint32_t rptr;
 	volatile uint32_t fence;
+	/* Introduced on A7xx */
+	volatile uint32_t bv_fence;
 
 	volatile struct msm_gpu_submit_stats stats[MSM_GPU_SUBMIT_STATS_COUNT];
 	volatile u64 ttbr0;

-- 
2.42.0


