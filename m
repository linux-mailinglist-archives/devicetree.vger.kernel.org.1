Return-Path: <devicetree+bounces-165561-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 19FC5A849BD
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 18:31:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 54E2F189E7A0
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 16:30:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E455A1EFFAC;
	Thu, 10 Apr 2025 16:30:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KOenOsFU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 971741EF09C
	for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 16:30:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744302613; cv=none; b=qCA1nH1KBA6UgvFzfQ55H8hlySNWaVpBfGHston81QTS8lfk1yhcyihXX6Hy3MuCrXF1i8jKwL/SxkB+RZz3H+9mkKIoEI/NTupFToPwxxuQYk23QEEo63Z11xb8tNBwSXytQUMA7LQlHIQdG1gkEegyIGL2w7SPpiXsmKxvMAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744302613; c=relaxed/simple;
	bh=tCEOYGPmIc1SPAM1HF+UO1/NYRAAsIsKLUXJIESOnu8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=T3Kek54KoQOm65XOCqLEu4xj5WzvNJfuV4OpRGYjR6TotDBXk7uBcdnx9XE5T8vRldRxkyTHnaXfTY6wgDl0sZDCPX6G5Hy/5KbQugrXrGMYpfFwkXG5qvrjMf0DwJotUtbjt67KOCQXnch1b/Ey9FO4BFyOxCZmMYMt9j3tU2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KOenOsFU; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-3914bc3e01aso551702f8f.2
        for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 09:30:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744302610; x=1744907410; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EfgoiISEI6CCBXz+KLnorq2mkzdptbjBXDbJbv0ENcI=;
        b=KOenOsFUYl1MszShGxzm6w4IkmvEmCf15tkHW6HQ94NGCjzhXE/D+c/guxGlsMXC+8
         5YAmZvhxSQYv7j/fQUwVVHCCm6IxfllWb5NZ5Wv1rLSBFugLS46xkdLfKO0MiwPQWytH
         bNB91sWbKbJCVrjz3/D/D2YmNAiynxhEC42f51vMxe6Gh26KwHnhDAHLluoajQ2jFYwB
         kAYQfq1HhN+RLEKa5URPU2ytFAKjgP1iGG1UQKbpgnNsGDQ++amA33l6KqVRHIhIXk+6
         Pyv9hVtWulP0f/jc1RKxLnQYHV4ZW/JSq6zB2jj8Hdm3kpmB2Myg6ASsISxzlqR2PUvN
         MFaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744302610; x=1744907410;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EfgoiISEI6CCBXz+KLnorq2mkzdptbjBXDbJbv0ENcI=;
        b=ett6zQVbuTsmJ7Mza4I/JtHRhiZ3qjGNINSSnVpz2AjsZsXeQF1c8x3fUhNHKuHuOk
         t/mN/coQFRyj87uINkIYAX3QX90YFkbeLqt1jHCTWqJnY2wtYAr30bEYzS0i5NS7x72C
         NT/CuXCUr0w2iYZily5SNlQFg49ADIb/lopi6wu54IjRtcu3uY5+eaBbo746kNTxGw8a
         f0Y/MkymWhYYOg9Tw0MMvHBWuQ2uR88PbUI//FFDgYv70hsKhol7cWFrVYlo78gmchpa
         9Fs1j89qUkDPwAK9tii+5Y5WRvIKtzVowe/1maFnYxzxjExQcRdOntZibHqDdUaQrALK
         MJcQ==
X-Forwarded-Encrypted: i=1; AJvYcCWJ08LvsvVgkEm70bMBHVFiEhGJ6V3/ULWfw4PzqFIWi5QobfXXVjMV+NxIjMlBgBL6jMcuvq5zVeMr@vger.kernel.org
X-Gm-Message-State: AOJu0Yy38Kts4B3u1griO56gJwv0o8NI3vH2xL4yrGyuZXD8LmQlNnsE
	GnsTTkvSZbcsLm/c6wLMz9CA661Ch27JdekT/KwJoBYlan1PezP1ZR5hAusj/N9pMeLZPKCjzC1
	y
X-Gm-Gg: ASbGnctFVc1sixzy90AIkgUEe8Yh6MTgOv3GOVpanto/6DAxLZpKKQjVMjrGThOOZj/
	v82qy33i/4wREsBBkl8g6xlmOa2OkRTmyI3NnkXtS4cQbD2yC0q+rfLWwn8v5AwTH6dW0U8D04J
	4K8GJP/OnrJTPirmxUAYxEgxSiV900Q/U6u+/qYIYfxiE74WzQQ0XR8TJIPT36XlTAFq1piDrYP
	fMBfDKrSmckB7erM0faBMzoM2FZsvOj0VCdUeUUuuzqNcHI/GgSbk4vism030b0Iw2j6rnqZk9n
	v0PdyDZDrCJKBdgj5vtR0VmvyJcyYIObQ9JPsOjT+JUM8D8V4ZonNoIVvaQfmA==
X-Google-Smtp-Source: AGHT+IF7YxresxxIUSbFvKOXhrMSn92TtBy4rTG0L/x99604fWMt5TARqsw/+/xZMRt9jngqCpO+LA==
X-Received: by 2002:a05:6000:240b:b0:391:ba6:c066 with SMTP id ffacd0b85a97d-39d8fd526f8mr3324426f8f.35.1744302609788;
        Thu, 10 Apr 2025 09:30:09 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39d8936129dsm5350663f8f.18.2025.04.10.09.30.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Apr 2025 09:30:09 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Thu, 10 Apr 2025 18:30:00 +0200
Subject: [PATCH RFC v5 1/8] media: qcom: iris: move sm8250 to gen1 catalog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250410-topic-sm8x50-upstream-iris-catalog-v5-1-44a431574c25@linaro.org>
References: <20250410-topic-sm8x50-upstream-iris-catalog-v5-0-44a431574c25@linaro.org>
In-Reply-To: <20250410-topic-sm8x50-upstream-iris-catalog-v5-0-44a431574c25@linaro.org>
To: Vikash Garodia <quic_vgarodia@quicinc.com>, 
 Dikshita Agarwal <quic_dikshita@quicinc.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=6915;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=tCEOYGPmIc1SPAM1HF+UO1/NYRAAsIsKLUXJIESOnu8=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBn9/IMfeilWuF7TCcmZY4Vf7hudfDLAqCN0DgvzgK+
 br44w/SJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZ/fyDAAKCRB33NvayMhJ0U6SD/
 9eu8VP5fZKJUmWqiNhVFsP9SryZn/Pch5CB3w0UsohBaxx5ZsdmQ/hOV2noeGbQVAA3Y+ZuPPHEUFq
 XG5qS3iWPxny7ZWiv84OANxwLyeVo92A4cf/yFN/UD0xpRRh+OY1gs0gj4hmu2WaJ8AMuvwIx6Y7YI
 Wa1PRKGm6IFlwUAQLPbn0w1hjDu5Qq49NTvgSP+ZRuob350ZBM/F8KmeRQGypHOShJD4YZIAGrO0m1
 peYZvwEDaD/q4I8QXH3XrRYM229nEbp2rOUhGR1eyxdxiLmDNwW5LjX/Tit2Hy548v/Ekbfyc0Adtb
 vLRISSZLyGHx4NtWa1/oTXLn5GRFHwjZw/IESaujA2+NrIKHncSUk5z1XQdQuyNt6Wv3dUJGz0RpyJ
 RPO8ijfo960Popy9dvNzz9FIamuyo+P8Jt7xOPhmYDl9SPPrHfE7kyebOkx9VPuejQMyvX9dVQ8CFT
 dUXQrcRu9MY4tRsWkKVc41XhqKV9x8SzXznOuTNCY8QPhXH48jpwfrHVqNyf9yjkTlqBw3P25tcp98
 qZck9hdzUfJcTO0aFLvnG4plAQyNpeOnAFXT0JAhYMvo4YgjZ7DQJMyJDFU+DHIB0el3soh1FPLN+D
 WATjkT2LrgGa7QXhQ/x9z4yghkEeR0MKNAH3RAR/R4dfGUxFw1yMzQVTE7dQ==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Re-organize the platform support core into a gen1 catalog C file
declaring common platform structure and include platform headers
containing platform specific entries and iris_platform_data
structure.

The goal is to share most of the structure while having
clear and separate per-SoC catalog files.

The organization is based on the current drm/msm dpu1 catalog
entries.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/media/platform/qcom/iris/Makefile          |  2 +-
 .../media/platform/qcom/iris/iris_catalog_gen1.c   | 83 ++++++++++++++++++++++
 ...ris_platform_sm8250.c => iris_catalog_sm8250.h} | 80 ++-------------------
 3 files changed, 89 insertions(+), 76 deletions(-)

diff --git a/drivers/media/platform/qcom/iris/Makefile b/drivers/media/platform/qcom/iris/Makefile
index 35390534534e93f4617c1036a05ca0921567ba1d..7e7bc5ca81e0f0119846ccaff7f79fd17b8298ca 100644
--- a/drivers/media/platform/qcom/iris/Makefile
+++ b/drivers/media/platform/qcom/iris/Makefile
@@ -25,7 +25,7 @@ qcom-iris-objs += \
              iris_vpu_common.o \
 
 ifeq ($(CONFIG_VIDEO_QCOM_VENUS),)
-qcom-iris-objs += iris_platform_sm8250.o
+qcom-iris-objs += iris_catalog_gen1.o
 endif
 
 obj-$(CONFIG_VIDEO_QCOM_IRIS) += qcom-iris.o
diff --git a/drivers/media/platform/qcom/iris/iris_catalog_gen1.c b/drivers/media/platform/qcom/iris/iris_catalog_gen1.c
new file mode 100644
index 0000000000000000000000000000000000000000..c4590f8996431eb5103d45f01c6bee2b38b848c2
--- /dev/null
+++ b/drivers/media/platform/qcom/iris/iris_catalog_gen1.c
@@ -0,0 +1,83 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (c) 2022-2024 Qualcomm Innovation Center, Inc. All rights reserved.
+ */
+
+#include "iris_core.h"
+#include "iris_ctrls.h"
+#include "iris_platform_common.h"
+#include "iris_resources.h"
+#include "iris_hfi_gen1.h"
+#include "iris_hfi_gen1_defines.h"
+#include "iris_vpu_common.h"
+
+/* Common SM8250 & variants */
+static struct platform_inst_fw_cap inst_fw_cap_sm8250[] = {
+	{
+		.cap_id = PIPE,
+		.min = PIPE_1,
+		.max = PIPE_4,
+		.step_or_mask = 1,
+		.value = PIPE_4,
+		.hfi_id = HFI_PROPERTY_PARAM_WORK_ROUTE,
+		.set = iris_set_pipe,
+	},
+	{
+		.cap_id = STAGE,
+		.min = STAGE_1,
+		.max = STAGE_2,
+		.step_or_mask = 1,
+		.value = STAGE_2,
+		.hfi_id = HFI_PROPERTY_PARAM_WORK_MODE,
+		.set = iris_set_stage,
+	},
+	{
+		.cap_id = DEBLOCK,
+		.min = 0,
+		.max = 1,
+		.step_or_mask = 1,
+		.value = 0,
+		.hfi_id = HFI_PROPERTY_CONFIG_VDEC_POST_LOOP_DEBLOCKER,
+		.set = iris_set_u32,
+	},
+};
+
+static struct platform_inst_caps platform_inst_cap_sm8250 = {
+	.min_frame_width = 128,
+	.max_frame_width = 8192,
+	.min_frame_height = 128,
+	.max_frame_height = 8192,
+	.max_mbpf = 138240,
+	.mb_cycles_vsp = 25,
+	.mb_cycles_vpp = 200,
+};
+
+static struct tz_cp_config tz_cp_config_sm8250 = {
+	.cp_start = 0,
+	.cp_size = 0x25800000,
+	.cp_nonpixel_start = 0x01000000,
+	.cp_nonpixel_size = 0x24800000,
+};
+
+static const u32 sm8250_vdec_input_config_param_default[] = {
+	HFI_PROPERTY_CONFIG_VIDEOCORES_USAGE,
+	HFI_PROPERTY_PARAM_UNCOMPRESSED_FORMAT_SELECT,
+	HFI_PROPERTY_PARAM_UNCOMPRESSED_PLANE_ACTUAL_CONSTRAINTS_INFO,
+	HFI_PROPERTY_PARAM_BUFFER_COUNT_ACTUAL,
+	HFI_PROPERTY_PARAM_VDEC_MULTI_STREAM,
+	HFI_PROPERTY_PARAM_FRAME_SIZE,
+	HFI_PROPERTY_PARAM_BUFFER_SIZE_ACTUAL,
+	HFI_PROPERTY_PARAM_BUFFER_ALLOC_MODE,
+};
+
+static const u32 sm8250_dec_ip_int_buf_tbl[] = {
+	BUF_BIN,
+	BUF_SCRATCH_1,
+};
+
+static const u32 sm8250_dec_op_int_buf_tbl[] = {
+	BUF_DPB,
+};
+
+/* platforms catalogs */
+#include "iris_catalog_sm8250.h"
diff --git a/drivers/media/platform/qcom/iris/iris_platform_sm8250.c b/drivers/media/platform/qcom/iris/iris_catalog_sm8250.h
similarity index 59%
rename from drivers/media/platform/qcom/iris/iris_platform_sm8250.c
rename to drivers/media/platform/qcom/iris/iris_catalog_sm8250.h
index 5c86fd7b7b6fd36dc2d57a1705d915308b4c0f92..4d2df669b3e1df2ef2b0d2f88fc5f309b27546db 100644
--- a/drivers/media/platform/qcom/iris/iris_platform_sm8250.c
+++ b/drivers/media/platform/qcom/iris/iris_catalog_sm8250.h
@@ -1,55 +1,10 @@
-// SPDX-License-Identifier: GPL-2.0-only
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Copyright (c) 2022-2024 Qualcomm Innovation Center, Inc. All rights reserved.
  */
 
-#include "iris_core.h"
-#include "iris_ctrls.h"
-#include "iris_platform_common.h"
-#include "iris_resources.h"
-#include "iris_hfi_gen1.h"
-#include "iris_hfi_gen1_defines.h"
-#include "iris_vpu_common.h"
-
-static struct platform_inst_fw_cap inst_fw_cap_sm8250[] = {
-	{
-		.cap_id = PIPE,
-		.min = PIPE_1,
-		.max = PIPE_4,
-		.step_or_mask = 1,
-		.value = PIPE_4,
-		.hfi_id = HFI_PROPERTY_PARAM_WORK_ROUTE,
-		.set = iris_set_pipe,
-	},
-	{
-		.cap_id = STAGE,
-		.min = STAGE_1,
-		.max = STAGE_2,
-		.step_or_mask = 1,
-		.value = STAGE_2,
-		.hfi_id = HFI_PROPERTY_PARAM_WORK_MODE,
-		.set = iris_set_stage,
-	},
-	{
-		.cap_id = DEBLOCK,
-		.min = 0,
-		.max = 1,
-		.step_or_mask = 1,
-		.value = 0,
-		.hfi_id = HFI_PROPERTY_CONFIG_VDEC_POST_LOOP_DEBLOCKER,
-		.set = iris_set_u32,
-	},
-};
-
-static struct platform_inst_caps platform_inst_cap_sm8250 = {
-	.min_frame_width = 128,
-	.max_frame_width = 8192,
-	.min_frame_height = 128,
-	.max_frame_height = 8192,
-	.max_mbpf = 138240,
-	.mb_cycles_vsp = 25,
-	.mb_cycles_vpp = 200,
-};
+#ifndef _IRIS_CATALOG_SM8250_H
+#define _IRIS_CATALOG_SM8250_H
 
 static void iris_set_sm8250_preset_registers(struct iris_core *core)
 {
@@ -80,33 +35,6 @@ static const struct platform_clk_data sm8250_clk_table[] = {
 	{IRIS_HW_CLK,   "vcodec0_core" },
 };
 
-static struct tz_cp_config tz_cp_config_sm8250 = {
-	.cp_start = 0,
-	.cp_size = 0x25800000,
-	.cp_nonpixel_start = 0x01000000,
-	.cp_nonpixel_size = 0x24800000,
-};
-
-static const u32 sm8250_vdec_input_config_param_default[] = {
-	HFI_PROPERTY_CONFIG_VIDEOCORES_USAGE,
-	HFI_PROPERTY_PARAM_UNCOMPRESSED_FORMAT_SELECT,
-	HFI_PROPERTY_PARAM_UNCOMPRESSED_PLANE_ACTUAL_CONSTRAINTS_INFO,
-	HFI_PROPERTY_PARAM_BUFFER_COUNT_ACTUAL,
-	HFI_PROPERTY_PARAM_VDEC_MULTI_STREAM,
-	HFI_PROPERTY_PARAM_FRAME_SIZE,
-	HFI_PROPERTY_PARAM_BUFFER_SIZE_ACTUAL,
-	HFI_PROPERTY_PARAM_BUFFER_ALLOC_MODE,
-};
-
-static const u32 sm8250_dec_ip_int_buf_tbl[] = {
-	BUF_BIN,
-	BUF_SCRATCH_1,
-};
-
-static const u32 sm8250_dec_op_int_buf_tbl[] = {
-	BUF_DPB,
-};
-
 struct iris_platform_data sm8250_data = {
 	.get_instance = iris_hfi_gen1_get_instance,
 	.init_hfi_command_ops = &iris_hfi_gen1_command_ops_init,
@@ -147,3 +75,5 @@ struct iris_platform_data sm8250_data = {
 	.dec_op_int_buf_tbl = sm8250_dec_op_int_buf_tbl,
 	.dec_op_int_buf_tbl_size = ARRAY_SIZE(sm8250_dec_op_int_buf_tbl),
 };
+
+#endif

-- 
2.34.1


