Return-Path: <devicetree+bounces-79835-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8752391703A
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 20:28:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A9DAC1C2627D
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 18:28:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7102617C7B4;
	Tue, 25 Jun 2024 18:28:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PbKY8bhL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D65117B437
	for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 18:28:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719340101; cv=none; b=bNyKgogDsGrH8udm353e72uNaYBnDtU0thnTIJJVv5l0C8WlybYVOvofiK12DanHA3X62HGgdKNbp7FppuCfz2eW1GS4Tl9Zmj3rfI9jrFbq1C6SM1CvaOUddtZ7pOMy54ExqV8FKrAuz5dJAZ3owxdVimnD2z2JMlyiQyPzNXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719340101; c=relaxed/simple;
	bh=ZXaBkJpkEi6I9lto/tGjByodIdA+A4HUW8SYjctW8+0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=R0Dfj+evOgc3fPT01Kk24KxnkI7WJmX1Wxv0K9ONX8av3R5sPyVW/H/L9bkrB7R0ZiwQAU4UvEVSQxOqMiHJoa1Dk/W4DOBvE6zIq6kGLIbHJF+EsaMO/F/sSyweOgXa3Ew31ljDtdoBdfnAduq/WyCJ7W8iwXYtzaKBwaxf5PI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PbKY8bhL; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-57cbc66a0a6so795490a12.1
        for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 11:28:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719340096; x=1719944896; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+yADUGBbAdhXuD84OjuP9zRnfHxvH4zqLq8CnILlnOI=;
        b=PbKY8bhLZm57VOB8Mbed8iXrNNX18gn3jOetNl9FbQ27/Fv7w8QU1DvpmCJ7r8PdRg
         8G4HZhqmK4/mNTMlRdGbkeYDEdr1tmHySNXs2qmZDtTj8xowoZZgzNNcsP0OtekCmiP8
         U3LTjxT3oyiXbnz8nRAga+PIgq9DVp9IfV9yuNUbxEAgrg82zK29eT6aEbt8r6d4GMBc
         HmXEqyKpUZdwzFgrC3NHGKGLWWf+tmrNdvFAHkcfMVQAOhKa0jRJ42k1QoelXO7uOhr+
         cac9vHps/ancgzYlgvYGZwhy1zD0coXO9PYRIvwjIHHS6SK4yA87auvgCdsDt4ceKlIB
         2USQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719340096; x=1719944896;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+yADUGBbAdhXuD84OjuP9zRnfHxvH4zqLq8CnILlnOI=;
        b=IRSiLMuBpg7kvNtR1bRqxo9Ce2LIx9BxeM7xMnpNbdHLi7A7Q6rUN/143QpD+Aq9C4
         6BNxfoIbDc+PcTPZi5Pg8DblOWejuTU++wAgQZfmSf2uIRtOBFeiYTZiPZ6xxaPS0aGP
         ku4Efikw7t/XAHQnMsmoZwfsz+sVtnpMIC8BbgFzKIGdc8rdYxjRHMdxXU5uUG8qCdHy
         RhG/tQM/YoyLTmBoMD3N8unK8/u1Pd233akp5TiAunV/6Npj4UvMxuzRrMSaISpzUYDq
         X2j7uvWHZI4YQRC0n0dFmUK551I4ta2kburUqWzh/5rfvBsfngNkwpmTkUQOEUHyN4qz
         u0iw==
X-Forwarded-Encrypted: i=1; AJvYcCVEXvpW5TCORSOUuW+f0h/3g/c4YmcL0KSFe/KvEkLkGdpkttcc8U2mFoMreiGVtgvk8bbbI4iMxCHNlgZKrz61i3oHNyizVg+7eQ==
X-Gm-Message-State: AOJu0YyVYrI0t12gYNT4rPoH6mymmxNxPM6d8uXb7xnrp9zMOVm3ysYH
	BF1Keojsj+yUieyyjnEcWAnR9LkdEs53sOvazQDXQ+7p7nQtXcykvwxoLtstPW4=
X-Google-Smtp-Source: AGHT+IH5VYxYSwpjM0Vapx9UDYprAb5dwLcxWqrJwT/uTDdtLO3ybGWR46gNVWskxHlg7YIqFqhZPg==
X-Received: by 2002:a05:6402:184b:b0:57c:6b49:aef with SMTP id 4fb4d7f45d1cf-57d4483b0ffmr7550161a12.11.1719340096239;
        Tue, 25 Jun 2024 11:28:16 -0700 (PDT)
Received: from [192.168.215.29] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-57d3042fd72sm6323136a12.48.2024.06.25.11.28.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Jun 2024 11:28:15 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Tue, 25 Jun 2024 20:28:06 +0200
Subject: [PATCH v4 1/5] drm/msm/adreno: Implement SMEM-based speed bin
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240625-topic-smem_speedbin-v4-1-f6f8493ab814@linaro.org>
References: <20240625-topic-smem_speedbin-v4-0-f6f8493ab814@linaro.org>
In-Reply-To: <20240625-topic-smem_speedbin-v4-0-f6f8493ab814@linaro.org>
To: Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1719340091; l=5838;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=ZXaBkJpkEi6I9lto/tGjByodIdA+A4HUW8SYjctW8+0=;
 b=7EbrsfA01bwk4JX0dOd021Lq44oCnoz/hsE+x15jRkJm2+pP6b+4RD6RGaveF7IiCeVYhv9SI
 SWjs8yQ7sFHB8vwYlQX3GdafSYlma2n1DeBvzX4tRAgsx9JkhGEoXpu
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=

On recent (SM8550+) Snapdragon platforms, the GPU speed bin data is
abstracted through SMEM, instead of being directly available in a fuse.

Add support for SMEM-based speed binning, which includes getting
"feature code" and "product code" from said source and parsing them
to form something that lets us match OPPs against.

Due to the product code being ignored in the context of Adreno on
production parts (as of SM8650), hardcode it to SOCINFO_PC_UNKNOWN.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 drivers/gpu/drm/msm/adreno/a6xx_gpu.c      |  8 +++---
 drivers/gpu/drm/msm/adreno/adreno_device.c |  2 ++
 drivers/gpu/drm/msm/adreno/adreno_gpu.c    | 41 +++++++++++++++++++++++++++---
 drivers/gpu/drm/msm/adreno/adreno_gpu.h    |  7 ++++-
 4 files changed, 50 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/msm/adreno/a6xx_gpu.c b/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
index c98cdb1e9326..8ace096bb68c 100644
--- a/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
+++ b/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
@@ -2124,13 +2124,15 @@ static u32 fuse_to_supp_hw(const struct adreno_info *info, u32 fuse)
 	return UINT_MAX;
 }
 
-static int a6xx_set_supported_hw(struct device *dev, const struct adreno_info *info)
+static int a6xx_set_supported_hw(struct adreno_gpu *adreno_gpu,
+				 struct device *dev,
+				 const struct adreno_info *info)
 {
 	u32 supp_hw;
 	u32 speedbin;
 	int ret;
 
-	ret = adreno_read_speedbin(dev, &speedbin);
+	ret = adreno_read_speedbin(adreno_gpu, dev, &speedbin);
 	/*
 	 * -ENOENT means that the platform doesn't support speedbin which is
 	 * fine
@@ -2290,7 +2292,7 @@ struct msm_gpu *a6xx_gpu_init(struct drm_device *dev)
 
 	a6xx_llc_slices_init(pdev, a6xx_gpu, is_a7xx);
 
-	ret = a6xx_set_supported_hw(&pdev->dev, config->info);
+	ret = a6xx_set_supported_hw(adreno_gpu, &pdev->dev, config->info);
 	if (ret) {
 		a6xx_llc_slices_destroy(a6xx_gpu);
 		kfree(a6xx_gpu);
diff --git a/drivers/gpu/drm/msm/adreno/adreno_device.c b/drivers/gpu/drm/msm/adreno/adreno_device.c
index 1e789ff6945e..e514346088f9 100644
--- a/drivers/gpu/drm/msm/adreno/adreno_device.c
+++ b/drivers/gpu/drm/msm/adreno/adreno_device.c
@@ -6,6 +6,8 @@
  * Copyright (c) 2014,2017 The Linux Foundation. All rights reserved.
  */
 
+#include <linux/soc/qcom/socinfo.h>
+
 #include "adreno_gpu.h"
 
 bool hang_debug = false;
diff --git a/drivers/gpu/drm/msm/adreno/adreno_gpu.c b/drivers/gpu/drm/msm/adreno/adreno_gpu.c
index 1c6626747b98..6ffd02f38499 100644
--- a/drivers/gpu/drm/msm/adreno/adreno_gpu.c
+++ b/drivers/gpu/drm/msm/adreno/adreno_gpu.c
@@ -21,6 +21,9 @@
 #include "msm_gem.h"
 #include "msm_mmu.h"
 
+#include <linux/soc/qcom/smem.h>
+#include <linux/soc/qcom/socinfo.h>
+
 static u64 address_space_size = 0;
 MODULE_PARM_DESC(address_space_size, "Override for size of processes private GPU address space");
 module_param(address_space_size, ullong, 0600);
@@ -1061,9 +1064,39 @@ void adreno_gpu_ocmem_cleanup(struct adreno_ocmem *adreno_ocmem)
 			   adreno_ocmem->hdl);
 }
 
-int adreno_read_speedbin(struct device *dev, u32 *speedbin)
+int adreno_read_speedbin(struct adreno_gpu *adreno_gpu,
+			 struct device *dev, u32 *fuse)
 {
-	return nvmem_cell_read_variable_le_u32(dev, "speed_bin", speedbin);
+	u32 fcode;
+	int ret;
+
+	/*
+	 * Try reading the speedbin via a nvmem cell first
+	 * -ENOENT means "no nvmem-cells" and essentially means "old DT" or
+	 * "nvmem fuse is irrelevant", simply assume it's fine.
+	 */
+	ret = nvmem_cell_read_variable_le_u32(dev, "speed_bin", fuse);
+	if (!ret)
+		return 0;
+	else if (ret != -ENOENT)
+		return dev_err_probe(dev, ret, "Couldn't read the speed bin fuse value\n");
+
+#ifdef CONFIG_QCOM_SMEM
+	/*
+	 * Only check the feature code - the product code only matters for
+	 * proto SoCs unavailable outside Qualcomm labs, as far as GPU bin
+	 * matching is concerned.
+	 *
+	 * Ignore EOPNOTSUPP, as not all SoCs expose this info through SMEM.
+	 */
+	ret = qcom_smem_get_feature_code(&fcode);
+	if (!ret)
+		*fuse = ADRENO_SKU_ID(fcode);
+	else if (ret != -EOPNOTSUPP)
+		return dev_err_probe(dev, ret, "Couldn't get feature code from SMEM\n");
+#endif
+
+	return 0;
 }
 
 int adreno_gpu_init(struct drm_device *drm, struct platform_device *pdev,
@@ -1102,9 +1135,9 @@ int adreno_gpu_init(struct drm_device *drm, struct platform_device *pdev,
 			devm_pm_opp_set_clkname(dev, "core");
 	}
 
-	if (adreno_read_speedbin(dev, &speedbin) || !speedbin)
+	if (adreno_read_speedbin(adreno_gpu, dev, &speedbin) || !speedbin)
 		speedbin = 0xffff;
-	adreno_gpu->speedbin = (uint16_t) (0xffff & speedbin);
+	adreno_gpu->speedbin = speedbin;
 
 	gpu_name = devm_kasprintf(dev, GFP_KERNEL, "%"ADRENO_CHIPID_FMT,
 			ADRENO_CHIPID_ARGS(config->chip_id));
diff --git a/drivers/gpu/drm/msm/adreno/adreno_gpu.h b/drivers/gpu/drm/msm/adreno/adreno_gpu.h
index cff8ce541d2c..563c08b44624 100644
--- a/drivers/gpu/drm/msm/adreno/adreno_gpu.h
+++ b/drivers/gpu/drm/msm/adreno/adreno_gpu.h
@@ -79,6 +79,10 @@ struct adreno_reglist {
 
 struct adreno_speedbin {
 	uint16_t fuse;
+/* As of SM8650, PCODE on production SoCs is meaningless wrt the GPU bin */
+#define ADRENO_SKU_ID_FCODE		GENMASK(15, 0)
+#define ADRENO_SKU_ID(fcode)	(fcode)
+
 	uint16_t speedbin;
 };
 
@@ -545,7 +549,8 @@ int adreno_fault_handler(struct msm_gpu *gpu, unsigned long iova, int flags,
 			 struct adreno_smmu_fault_info *info, const char *block,
 			 u32 scratch[4]);
 
-int adreno_read_speedbin(struct device *dev, u32 *speedbin);
+int adreno_read_speedbin(struct adreno_gpu *adreno_gpu,
+			 struct device *dev, u32 *speedbin);
 
 /*
  * For a5xx and a6xx targets load the zap shader that is used to pull the GPU

-- 
2.45.2


