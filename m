Return-Path: <devicetree+bounces-14002-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E9CC7E1C2F
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 09:29:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C682728123B
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 08:29:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F044154B7;
	Mon,  6 Nov 2023 08:29:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iCWiGenb"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30967156C6
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 08:29:03 +0000 (UTC)
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8F8B81BF
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 00:29:01 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-32df66c691dso2398255f8f.3
        for <devicetree@vger.kernel.org>; Mon, 06 Nov 2023 00:29:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699259340; x=1699864140; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zwCCOoSwPAq81CXeFaa1ZEXJOETTRIUb81b9f7FxvQE=;
        b=iCWiGenbpKUdCgwpp5j84XvlqLdPr9ALrVF/7RXNlEEZMpVMZm7ynsOnZbIofunAeG
         Mwyojv4bLWTlWLSPoEGkob5Tg1XxJa8kX95FH+/qJfTmXEFnzn0RuTXHX4ZR9gYbbrl+
         UuoUERO02VTHgZvzxCNoKVR7ziSl61ZjSkaMAyWszXn1LKxq/aTUNrkpxsluhukMf0iW
         uK4Z/6YUdJRuDZK7nO5j4SJEfnpA44WTZiM7ctxZrCE5US5DAyjatsmqQoxjoyt2hBI7
         LO/XSThuREjQga+Jl//2rNAiSHvC8ecz6JzvRLK8tz/foCsLwORlwmjoKf40HOR/V4pn
         0jMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699259340; x=1699864140;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zwCCOoSwPAq81CXeFaa1ZEXJOETTRIUb81b9f7FxvQE=;
        b=EnsF9xrlcdwS492gN22mW3l9bR0SEXhacxg0P1zHN9ojcQhnsxRk8jimv0sFwU+9TE
         LM6FHPDcalq8gyiQJiJfPYdZ/ffAEHLdKPxPHa6xC57MgDpAnhmwiMvOlN+PQOkR5rX8
         XO3n0QX1M3MmJq1E+g0/8oIUxMfP9TTh/GBH2JOQ6BSPzGLRD41V2JkY5IFHY4//5UPL
         wA2ngsOf+HuY6nbyvBEcg5bRmNLmrTJnOJyABDskEJPJ5+VnP6ySuhVoosvZad4YihD9
         mcT6htH7jjSSO7KdBtIUM7v65j+vSp13NJO8dtwYbp5Xm2lJM8W5WDrcVYlVmKpmKRqc
         Q+dg==
X-Gm-Message-State: AOJu0YwtceJvMkNfw6yCWVdV4hvO+5ycbH7rf4FktPOXa9ph6nYgRDBb
	3jitFMbJmlunIptkyvLKRXymqg==
X-Google-Smtp-Source: AGHT+IF10TmLfzt6cJJsy4KG3v2S3SxlbtLe8MJJ2RE2pZc9/f43mJM2iNYbTUBKU4swFzGQVmQSoA==
X-Received: by 2002:adf:f8cb:0:b0:32d:8c57:b4f2 with SMTP id f11-20020adff8cb000000b0032d8c57b4f2mr22393657wrq.37.1699259340033;
        Mon, 06 Nov 2023 00:29:00 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id p12-20020adfce0c000000b0032dc1fc84f2sm8796126wrn.46.2023.11.06.00.28.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Nov 2023 00:28:59 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 06 Nov 2023 09:28:53 +0100
Subject: [PATCH v3 2/3] remoteproc: qcom: pas: make region assign more
 generic
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231106-topic-sm8650-upstream-remoteproc-v3-2-dbd4cabaeb47@linaro.org>
References: <20231106-topic-sm8650-upstream-remoteproc-v3-0-dbd4cabaeb47@linaro.org>
In-Reply-To: <20231106-topic-sm8650-upstream-remoteproc-v3-0-dbd4cabaeb47@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=6158;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=kgGD2iNGnWz+J97/SP/Ac1ViSBNTEhHF6d8FSrY+bEg=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlSKPI2TjEZeZeK5pTcsLX54Rk0RaUFRAiwEOThutz
 kF3QTiCJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZUijyAAKCRB33NvayMhJ0VMMD/
 4p/VczjnDz8yeCIz/P3MuIgcP77MdiC0NCYXIDjwiT6yApuKl3G6EQ/GzlSqyvHUgon0uUIqvuOLp+
 /xWfDSbGzoPN41QvMWDMfxwf3a8EnACrYaOyqVbkfzkqvkxpv1QzLl1uQv8sB5dx119PCX+JJ1cAgy
 sLdGGB7zi9mzy2J3Xsp93xaCJrxF7sWSZAqv1iaes0A45gAS7fSqnR2X5UF1npEGUTf090SqKeBgQt
 VjzdTKDhBQfKs8AAFjIxl/8kkv8Pst9QvY93uqn/Mq/yf0PTmudB4fTkEXPwobcXT0je04AcEassQJ
 So05PFhplxxcsumCNBP66iC/EBALNZRX2mkknjqHIvBEp/o8uLG8O2JRF4b9UeVz3zHk2Pwu3R7YjZ
 Pk2v2uHMhL6zQzAc3NFBhOr5VeSgErfTYlLOgqR18QsD8kG/bXBgRxLm/WCA+E81uKqQJXs5NP12LS
 0JfsXhOnLQ8O7ncN/DZBGv+1SHZEswGRwzNyWdiiA91IZTT9WV3jJCuz4aH7J8S9rhPHKFGEZ3SpLf
 lWSNynWV+NXwmGLvXgnsjvJaDSBhhuPX9DNxvXJ/vKKLLhGgGAam6V1rIGnYsQdGbFle45JsDqePdf
 6lhQ83ntlj0M8ONUpmMu76sC3hBJ3bJWihdApwy+31lTZhGn0oVgvAZM323w==
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
 drivers/remoteproc/qcom_q6v5_pas.c | 101 ++++++++++++++++++++++++-------------
 1 file changed, 66 insertions(+), 35 deletions(-)

diff --git a/drivers/remoteproc/qcom_q6v5_pas.c b/drivers/remoteproc/qcom_q6v5_pas.c
index 913a5d2068e8..2ea364a04d4c 100644
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
@@ -590,37 +598,53 @@ static int adsp_alloc_memory_region(struct qcom_adsp *adsp)
 
 static int adsp_assign_memory_region(struct qcom_adsp *adsp)
 {
-	struct reserved_mem *rmem = NULL;
-	struct qcom_scm_vmperm perm;
+	struct qcom_scm_vmperm perm[MAX_ASSIGN_COUNT];
 	struct device_node *node;
+	unsigned int perm_size;
+	int offset;
 	int ret;
 
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
@@ -629,20 +653,22 @@ static int adsp_assign_memory_region(struct qcom_adsp *adsp)
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
@@ -696,6 +722,9 @@ static int adsp_probe(struct platform_device *pdev)
 	adsp->info_name = desc->sysmon_name;
 	adsp->decrypt_shutdown = desc->decrypt_shutdown;
 	adsp->region_assign_idx = desc->region_assign_idx;
+	adsp->region_assign_count = min_t(int, MAX_ASSIGN_COUNT, desc->region_assign_count);
+	adsp->region_assign_vmid = desc->region_assign_vmid;
+	adsp->region_assign_shared = desc->region_assign_shared;
 	if (dtb_fw_name) {
 		adsp->dtb_firmware_name = dtb_fw_name;
 		adsp->dtb_pas_id = desc->dtb_pas_id;
@@ -1163,6 +1192,8 @@ static const struct adsp_data sm8550_mpss_resource = {
 	.sysmon_name = "modem",
 	.ssctl_id = 0x12,
 	.region_assign_idx = 2,
+	.region_assign_count = 1,
+	.region_assign_vmid = QCOM_SCM_VMID_MSS_MSA,
 };
 
 static const struct of_device_id adsp_of_match[] = {

-- 
2.34.1


