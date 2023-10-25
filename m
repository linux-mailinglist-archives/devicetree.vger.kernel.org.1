Return-Path: <devicetree+bounces-11600-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 136567D6367
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 09:36:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BC697281C99
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 07:36:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 720B2199C1;
	Wed, 25 Oct 2023 07:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nmyFDo4R"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5B261864B
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 07:36:21 +0000 (UTC)
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 378593C29
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:35:50 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-40906fc54fdso19331365e9.0
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:35:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698219349; x=1698824149; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ssP4KB5jQYMoyjKlHdy1AaYK1DfyUFr3e4RTz1dsus8=;
        b=nmyFDo4RcGlY8P/+OkLFAWkmvdCP2AMoKUityEBnHmyxWryhIN0Vc0/kYY6V/+7VwC
         bexY4OxRCXrIv/GQwyzjGWvd4GKbJS5HiNo7ShHTlShIUx2hGNLktjgx7aLxz1P9xgqh
         m6pQ3YvLhQCulycgn1AzyDx9o0iwuw0tUcCRks+r2liU8ZnOJWEXPvqpJ0ermDiiwRNM
         TjdjXh4/6V9vLyyPJlOE9O/4rmpzF0tEyubVjGb5Mgdh0CGushzAe7UR6WFyYbYOKpXJ
         Tv4piMv0Nih7Qqh3oCsVzvbufBQ/JzpGbIrKx9JEs1/toQ5kbvcIJ5dGobucupz0NqUD
         D9/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698219349; x=1698824149;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ssP4KB5jQYMoyjKlHdy1AaYK1DfyUFr3e4RTz1dsus8=;
        b=rsWUlkrCapdcDpTBLG95R/YIkTYF3AM1fNjXuOVK/X5zgpTcq1w4bVAqenWN+cqOHr
         WuObjdnyHsWD31sC3//2u6OSfXM5772wMjFjPOLwEk5CgtXAlpxTpd87MsZtyNEh9g8y
         KN6X5r+XErCsS9/5mI4e1nZt+Z6YbG37O9q0TJQauBCp1GNtR6grIzenJySN6EOaWAnJ
         jjT1VgxvMRRJpZbBZgtDM+zdyHTBvkWBSTjZwQq/Fd4K/BuMitBSuj/dKBmysBMMyAdb
         bTG+fFig6EiKYfSbxS0RPUiNALL0bhmUoICL+xw9Lq5WNUJqmg5uHFpsFCphqmpk3i48
         2dyg==
X-Gm-Message-State: AOJu0YyPZfyg3GG3phCV3/1Cr+NjPwDiUyjSajmluRmPZYVEHUWoMcwe
	DBQ3c+fSHj8OJOLVcrZ8LsrHyQ==
X-Google-Smtp-Source: AGHT+IHmt0KUnczH785FzNvEooesLK+BnH5wf7fkzBe1whTmpnckyysDbsqkJoLWidc2JrIwYKMs9A==
X-Received: by 2002:adf:cf02:0:b0:32d:8da0:48d0 with SMTP id o2-20020adfcf02000000b0032d8da048d0mr1508709wrj.68.1698219349200;
        Wed, 25 Oct 2023 00:35:49 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id d14-20020adffd8e000000b0031984b370f2sm11416346wrr.47.2023.10.25.00.35.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 00:35:48 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 25 Oct 2023 09:35:45 +0200
Subject: [PATCH 2/3] remoteproc: qcom: pas: make region assign more generic
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231025-topic-sm8650-upstream-remoteproc-v1-2-a8d20e4ce18c@linaro.org>
References: <20231025-topic-sm8650-upstream-remoteproc-v1-0-a8d20e4ce18c@linaro.org>
In-Reply-To: <20231025-topic-sm8650-upstream-remoteproc-v1-0-a8d20e4ce18c@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Mathieu Poirier <mathieu.poirier@linaro.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=6167;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=i9GgDCC6g7mU5EIa98I5Xi71yOCJg6QFzSORhu8lHB4=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlOMVRoUALBec8pRdSHAhQiN0H0mAJdcfL+9ZxD2FX
 nMSk95qJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZTjFUQAKCRB33NvayMhJ0YFfEA
 CgwVXs3FzgE1Wp9BZnhBC5UG7MXJUw3rxOzGFxj4frZeTHFYqNO5R1YL2DPaLwkgh0wlHwEM5ngjs1
 oq8uyWwRusKzUZ4wbwp8wiAU/w0+OwxDh+yLCbppgMJfwESEeyWU4slHWW6ylwNO/LlyuyvyPCcZ65
 trST2gig99+pKHY7XStEBOaOEQ4QqizqpzkQUKxzzmAHNqfjTp9FXouvrnNO/OICpTp/B4nTGMh94z
 Gn9dY6b/f5u3lESu0BK4Omyux27/Jb03/tAS2fpXs1l/1GOhtrC0R97Fzdw5DjDuk2mSqCX1Bxls4j
 dQB9kJHxLFMvFwoeLzcxyxDuqUk8inT/70DMcBcNNjqG/U2ott/o9SYH27ZjiKntkvslAAaSQ7Cae3
 Ua890AcAoyrNLOTNWzHSnHLMeXX+OkxIruUUHW8PnRU2TYQABZvrm9McjwuvKWPRz+cLwt2Cn4Sru5
 ujae2uXvsW9nN1x/V8+/PV3iRl1nPP1lN1OxXa6e5GGSqCLRBvesYJqMGrz4OZs/Ny0VZk3IQqTbIb
 kBWm6FMSVfZdNlvwSvS3iivvD5yh0SoeJJ/wZdkbxzDuMdCF09aS9Gvo+iYIYZkLvpGMDdNutskmpd
 4R7EygBXhb2OuHPJPFxrcZrL6SHxy5+qJR5n0iRc6gvWJTFoKVTq4GM9/UtA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

The current memory region assign only supports a single
memory region.

But new platforms introduces more regions to make the
memory requirements more flexible for various use cases.
Those new platforms also shares the memory region between the
DSP and HLOS.

To handle this, make the region assign more generic in order
to support more than a single memory region and also permit
setting the regions permissions as shared.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/remoteproc/qcom_q6v5_pas.c | 102 ++++++++++++++++++++++++-------------
 1 file changed, 66 insertions(+), 36 deletions(-)

diff --git a/drivers/remoteproc/qcom_q6v5_pas.c b/drivers/remoteproc/qcom_q6v5_pas.c
index 913a5d2068e8..4829fd26e17d 100644
--- a/drivers/remoteproc/qcom_q6v5_pas.c
+++ b/drivers/remoteproc/qcom_q6v5_pas.c
@@ -33,6 +33,8 @@
 
 #define ADSP_DECRYPT_SHUTDOWN_DELAY_MS	100
 
+#define MAX_ASSIGN_COUNT 2
+
 struct adsp_data {
 	int crash_reason_smem;
 	const char *firmware_name;
@@ -51,6 +53,9 @@ struct adsp_data {
 	int ssctl_id;
 
 	int region_assign_idx;
+	int region_assign_count;
+	bool region_assign_shared;
+	int region_assign_vmid;
 };
 
 struct qcom_adsp {
@@ -87,15 +92,18 @@ struct qcom_adsp {
 	phys_addr_t dtb_mem_phys;
 	phys_addr_t mem_reloc;
 	phys_addr_t dtb_mem_reloc;
-	phys_addr_t region_assign_phys;
+	phys_addr_t region_assign_phys[MAX_ASSIGN_COUNT];
 	void *mem_region;
 	void *dtb_mem_region;
 	size_t mem_size;
 	size_t dtb_mem_size;
-	size_t region_assign_size;
+	size_t region_assign_size[MAX_ASSIGN_COUNT];
 
 	int region_assign_idx;
-	u64 region_assign_perms;
+	int region_assign_count;
+	bool region_assign_shared;
+	int region_assign_vmid;
+	u64 region_assign_perms[MAX_ASSIGN_COUNT];
 
 	struct qcom_rproc_glink glink_subdev;
 	struct qcom_rproc_subdev smd_subdev;
@@ -590,37 +598,52 @@ static int adsp_alloc_memory_region(struct qcom_adsp *adsp)
 
 static int adsp_assign_memory_region(struct qcom_adsp *adsp)
 {
-	struct reserved_mem *rmem = NULL;
-	struct qcom_scm_vmperm perm;
+	struct qcom_scm_vmperm perm[MAX_ASSIGN_COUNT];
+	unsigned int perm_size = 1;
 	struct device_node *node;
-	int ret;
+	int offset, ret;
 
 	if (!adsp->region_assign_idx)
 		return 0;
 
-	node = of_parse_phandle(adsp->dev->of_node, "memory-region", adsp->region_assign_idx);
-	if (node)
-		rmem = of_reserved_mem_lookup(node);
-	of_node_put(node);
-	if (!rmem) {
-		dev_err(adsp->dev, "unable to resolve shareable memory-region\n");
-		return -EINVAL;
-	}
+	for (offset = 0; offset < adsp->region_assign_count; ++offset) {
+		struct reserved_mem *rmem = NULL;
+
+		node = of_parse_phandle(adsp->dev->of_node, "memory-region",
+					adsp->region_assign_idx + offset);
+		if (node)
+			rmem = of_reserved_mem_lookup(node);
+		of_node_put(node);
+		if (!rmem) {
+			dev_err(adsp->dev, "unable to resolve shareable memory-region index %d\n",
+				offset);
+			return -EINVAL;
+		}
 
-	perm.vmid = QCOM_SCM_VMID_MSS_MSA;
-	perm.perm = QCOM_SCM_PERM_RW;
+		if (adsp->region_assign_shared)  {
+			perm[0].vmid = QCOM_SCM_VMID_HLOS;
+			perm[0].perm = QCOM_SCM_PERM_RW;
+			perm[1].vmid = adsp->region_assign_vmid;
+			perm[1].perm = QCOM_SCM_PERM_RW;
+			perm_size = 2;
+		} else {
+			perm[0].vmid = adsp->region_assign_vmid;
+			perm[0].perm = QCOM_SCM_PERM_RW;
+			perm_size = 1;
+		}
 
-	adsp->region_assign_phys = rmem->base;
-	adsp->region_assign_size = rmem->size;
-	adsp->region_assign_perms = BIT(QCOM_SCM_VMID_HLOS);
+		adsp->region_assign_phys[offset] = rmem->base;
+		adsp->region_assign_size[offset] = rmem->size;
+		adsp->region_assign_perms[offset] = BIT(QCOM_SCM_VMID_HLOS);
 
-	ret = qcom_scm_assign_mem(adsp->region_assign_phys,
-				  adsp->region_assign_size,
-				  &adsp->region_assign_perms,
-				  &perm, 1);
-	if (ret < 0) {
-		dev_err(adsp->dev, "assign memory failed\n");
-		return ret;
+		ret = qcom_scm_assign_mem(adsp->region_assign_phys[offset],
+					  adsp->region_assign_size[offset],
+					  &adsp->region_assign_perms[offset],
+					  perm, perm_size);
+		if (ret < 0) {
+			dev_err(adsp->dev, "assign memory %d failed\n", offset);
+			return ret;
+		}
 	}
 
 	return 0;
@@ -629,20 +652,22 @@ static int adsp_assign_memory_region(struct qcom_adsp *adsp)
 static void adsp_unassign_memory_region(struct qcom_adsp *adsp)
 {
 	struct qcom_scm_vmperm perm;
-	int ret;
+	int offset, ret;
 
-	if (!adsp->region_assign_idx)
+	if (!adsp->region_assign_idx || adsp->region_assign_shared)
 		return;
 
-	perm.vmid = QCOM_SCM_VMID_HLOS;
-	perm.perm = QCOM_SCM_PERM_RW;
+	for (offset = 0; offset < adsp->region_assign_count; ++offset) {
+		perm.vmid = QCOM_SCM_VMID_HLOS;
+		perm.perm = QCOM_SCM_PERM_RW;
 
-	ret = qcom_scm_assign_mem(adsp->region_assign_phys,
-				  adsp->region_assign_size,
-				  &adsp->region_assign_perms,
-				  &perm, 1);
-	if (ret < 0)
-		dev_err(adsp->dev, "unassign memory failed\n");
+		ret = qcom_scm_assign_mem(adsp->region_assign_phys[offset],
+					  adsp->region_assign_size[offset],
+					  &adsp->region_assign_perms[offset],
+					  &perm, 1);
+		if (ret < 0)
+			dev_err(adsp->dev, "unassign memory failed\n");
+	}
 }
 
 static int adsp_probe(struct platform_device *pdev)
@@ -696,6 +721,9 @@ static int adsp_probe(struct platform_device *pdev)
 	adsp->info_name = desc->sysmon_name;
 	adsp->decrypt_shutdown = desc->decrypt_shutdown;
 	adsp->region_assign_idx = desc->region_assign_idx;
+	adsp->region_assign_count = min_t(int, MAX_ASSIGN_COUNT, desc->region_assign_count);
+	adsp->region_assign_vmid = desc->region_assign_vmid;
+	adsp->region_assign_shared = desc->region_assign_shared;
 	if (dtb_fw_name) {
 		adsp->dtb_firmware_name = dtb_fw_name;
 		adsp->dtb_pas_id = desc->dtb_pas_id;
@@ -1163,6 +1191,8 @@ static const struct adsp_data sm8550_mpss_resource = {
 	.sysmon_name = "modem",
 	.ssctl_id = 0x12,
 	.region_assign_idx = 2,
+	.region_assign_count = 1,
+	.region_assign_vmid = QCOM_SCM_VMID_MSS_MSA,
 };
 
 static const struct of_device_id adsp_of_match[] = {

-- 
2.34.1


