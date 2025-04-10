Return-Path: <devicetree+bounces-165568-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BDBEA84A0F
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 18:34:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9E1599C6D45
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 16:31:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD5D226FA5D;
	Thu, 10 Apr 2025 16:30:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HzyRoamU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCE3B1EF0A9
	for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 16:30:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744302619; cv=none; b=D92tAvaqM5oUrmsyr+cIaPcTLl3gBdgu3xa5GMJQPSrnhMjmmP+zg2Wi3lSuJ328hIMATARrz2713bs5lwcPpAWCCv+uwPmtXNroYyBCjp+EoR+oQotAu48OVnmVh1M3J4izdprKrXYULHOeBTWv1arHtMaufUYLc9NoY4hP2h8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744302619; c=relaxed/simple;
	bh=QJzi9VtRTRt8770gEHryKmDm1SK4T3JVfWCNXr8L6tY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Jn+J8p+NbI7xahjMQFcTOQzCcSM/11MH3avhPWAN9U4knaC5YTRTekQFXaWgg7RfRRi3pKTmYpHBSjNTaiDg/+G552JQhwiX15CkIZYltWvlGI+4Bxc4RbJUywh6NVh2fogq99Ww4YPBMTYTDOqwOX0l8kf2NQm0j9ES3ied7qc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HzyRoamU; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-43cf3192f3bso10838915e9.1
        for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 09:30:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744302615; x=1744907415; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iMAsgauOE6xhOvqvD7g8R3kEtDo6zcGFGgxPvQiLvBQ=;
        b=HzyRoamUoF4pRnhQVX2OJw4vOnQsQ8ZQInDmLt49S2kw0hyuef0gunmsInYRtS5Pyy
         lQ32GaqAxKoCImWZGKQrMZBFCRcc3fgNZz+g6n+Z1+bddxAdGjHbjPbbWY0MRZ77DxKE
         CeWVdG3MB1SJqtMLwKEWNNTrknEPvorrHDuR6FdmtpY6nMl2VmtGWCVtQAMc37L2TBJV
         tqF5iNl6QwmBfDUHSnQQZJqK3VsBstb59yDJez1OhAs9G5Puy6UU5NqxXgQv7UrHXk8s
         NGVnLuMlPYnqhw9TMwyAtqhgVFrDnWOwbs2eaH2NAJyp0QS6HTpgV37Mn5Gb8HlgVwJb
         kH0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744302615; x=1744907415;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iMAsgauOE6xhOvqvD7g8R3kEtDo6zcGFGgxPvQiLvBQ=;
        b=S3HISoQOjG2JcMu3h6Ddu3bSa4tziOl4v0tAryTUKyNDmPZcnStzMUa8G1xqi0lUer
         hu/u2xsjyFiUM6qwKNeQPC9CALAmI2VOyszS6koY4OvhY+sh+pbAislpruSF2fpmg5cr
         ySJfg9CRYes3vdDya5DHt4lZPI2Z9LcYtmWE3Bv7t2f4rJjg/brR8pHI1eAYZr/k1PpS
         WE0jQbv+uDUe+Dkku3/pVZn4GLcfBmQIcbtsaPGy+zq5AVgKoKzxPGNk1noQWsfZDyTl
         tLUsqzmAT4cAGy/WNLhs39CVSFQDYjZMeIcYOKKYUyje3H2i1fBn/JGPrPcq7ubjlUr0
         wB3Q==
X-Forwarded-Encrypted: i=1; AJvYcCW+Q3K3ztwXOi7fvhiT/TmDKsftrvB9SnixQbO+mT2SWW1xBbQAwPZC5lrX3n6XjVNReBLA1Kzbsv10@vger.kernel.org
X-Gm-Message-State: AOJu0YyFglqRp3TcosERsOeyR5MdgNqmpKuLWEqlSCKj7wZHPrfhLs2U
	DQQMfPR8nTaWLmUChd2YRuZEA2tmMSFJBiB9q1hxVzgJK2HXd+D/rKKkD4y58pXevQw/4Zg51tU
	L
X-Gm-Gg: ASbGncsgDPPQxFeUAZxsFeHotVeWgKV0IK3przidcang1Vi8N7HV5xq9VMUs89XH9qq
	0BZwUMabTYEIjAC3Mi/CBT/zIqTHVgJK5uj9Hh+Qc5Ytjtf2u5yALgmzkYZ5tUdSHzGubbYJ+fk
	A/uxvFsnIxngABR9mVFAYxYhfoB4QQk5TS/T8z8W3xYF/c2+SQjh4K3mlTNAXgCzTDsIqpHAEmM
	wER/4DphLCnckBXXxoES2MchS++QChMX0miToENidO1BE2L5EMKSp/3RY1HGjKVh7dKzAR9AZC1
	5Ce72UZMllX49n1PVk6ktbyiPOcABsY63I/LrOE8iKI3S/YQCOscyekLWD3GFg==
X-Google-Smtp-Source: AGHT+IEOAc3XyyMfCWLt/l+UcTTxDcLQmT60/usgfkMvXf7qiDFVvgWqGTSXyAsH0RuAo9AWx4pOKA==
X-Received: by 2002:a05:600c:1c17:b0:43a:b0ac:b10c with SMTP id 5b1f17b1804b1-43f2ff9b959mr26179515e9.26.1744302615023;
        Thu, 10 Apr 2025 09:30:15 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39d8936129dsm5350663f8f.18.2025.04.10.09.30.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Apr 2025 09:30:14 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Thu, 10 Apr 2025 18:30:07 +0200
Subject: [PATCH RFC v5 8/8] media: platform: qcom/iris: add sm8650 support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250410-topic-sm8x50-upstream-iris-catalog-v5-8-44a431574c25@linaro.org>
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
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=5378;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=QJzi9VtRTRt8770gEHryKmDm1SK4T3JVfWCNXr8L6tY=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBn9/IQCBwEt2DAYfpoM+kcPEfnP3gxLTL4dpYuKiy4
 4KpXm6+JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZ/fyEAAKCRB33NvayMhJ0b+VD/
 91zBivzo1HMEBQtOxYgniHjXTpXknul8DWSBUKTyMcJ5MNPNFDEMH8xVRwgp86zO3ePvSNWe7S2m7s
 B3JhkMFwd8AVeGsF0u+yS3YgK/KHlQ9fw7/P2J8f8Y5eDurr4I7xhbfkbKzjQpAZXsZ1n4ePhes49y
 Ctn4MP2DubyXopVOrY21sptPx7RoElxvtxbKpvKzfnXJUdyRl3DUkHZqmNAjJKI1sC4BxosdmI4ZBe
 vuS1pGMUlCHdtfraSWeKm/JHMmZDm5cwcpMkR8fViRSFV/sG3QiOG+QLJ7mUHWZIR/4wKrIKqV90w8
 QzeLgqh+ga7acT8w/c5PpaPQ/HGT1hd1XIYkfUHQ8Japkb3Og8A2rLtSNvnOcFYCsCPY4yAakg9qxn
 aasW4IEFWnhuhybQDr/meHwNg0GOTospiv3JjlTcPyrq4QAoRgjxloOTwJ02h3mR3vjYToCQHGYdev
 27FMsqc3YvJNUr5Waw5kxbpEMcrxFRPOPcqi4bOQIn+SpkyjMb4FiJCBkZpn9sHdp1yEdpk3whHz5R
 WXvOBPA2/svLiKcuvQUyzMU5giUVAqX6cQyhfMLXDYaLYfUGVcgl6Ck7td4+xP/6Yn/64hpFpSVyvD
 0jn1Fcoi3HfPvUU7srwTWOLvX13IUiuHZAcaf5X9MbXM6Xk/Ckhx8YXz0Gig==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Add support for the SM8650 platform by re-using the SM8550
definitions and using the vpu33 ops.

The SM8650/vpu33 requires more reset lines, but the H.264
decoder capabilities are identical.

Tested-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org> # x1e Dell
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 .../media/platform/qcom/iris/iris_catalog_gen2.c   |  1 +
 .../media/platform/qcom/iris/iris_catalog_sm8650.h | 68 ++++++++++++++++++++++
 .../platform/qcom/iris/iris_platform_common.h      |  1 +
 drivers/media/platform/qcom/iris/iris_probe.c      |  4 ++
 4 files changed, 74 insertions(+)

diff --git a/drivers/media/platform/qcom/iris/iris_catalog_gen2.c b/drivers/media/platform/qcom/iris/iris_catalog_gen2.c
index c3f8ad004cb7f9317859b2594640c7138dbb6534..ad559351f1125d266dedac7eb6e91cda90bbae72 100644
--- a/drivers/media/platform/qcom/iris/iris_catalog_gen2.c
+++ b/drivers/media/platform/qcom/iris/iris_catalog_gen2.c
@@ -186,3 +186,4 @@ static const u32 sm8550_dec_op_int_buf_tbl[] = {
 
 /* platforms catalogs */
 #include "iris_catalog_sm8550.h"
+#include "iris_catalog_sm8650.h"
diff --git a/drivers/media/platform/qcom/iris/iris_catalog_sm8650.h b/drivers/media/platform/qcom/iris/iris_catalog_sm8650.h
new file mode 100644
index 0000000000000000000000000000000000000000..be8737dd4f3d9ec20a457d50076be1b4d841787c
--- /dev/null
+++ b/drivers/media/platform/qcom/iris/iris_catalog_sm8650.h
@@ -0,0 +1,68 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (c) 2022-2024 Qualcomm Innovation Center, Inc. All rights reserved.
+ */
+
+#ifndef _IRIS_CATALOG_SM8650_H
+#define _IRIS_CATALOG_SM8650_H
+
+#define VIDEO_ARCH_LX 1
+
+static const char * const sm8650_clk_reset_table[] = { "bus", "core" };
+
+static const char * const sm8650_controller_reset_table[] = { "xo" };
+
+struct iris_platform_data sm8650_data = {
+	.get_instance = iris_hfi_gen2_get_instance,
+	.init_hfi_command_ops = iris_hfi_gen2_command_ops_init,
+	.init_hfi_response_ops = iris_hfi_gen2_response_ops_init,
+	.vpu_ops = &iris_vpu33_ops,
+	.set_preset_registers = iris_set_sm8550_preset_registers,
+	.icc_tbl = sm8550_icc_table,
+	.icc_tbl_size = ARRAY_SIZE(sm8550_icc_table),
+	.clk_rst_tbl = sm8650_clk_reset_table,
+	.clk_rst_tbl_size = ARRAY_SIZE(sm8650_clk_reset_table),
+	.controller_rst_tbl = sm8650_controller_reset_table,
+	.controller_rst_tbl_size = ARRAY_SIZE(sm8650_controller_reset_table),
+	.bw_tbl_dec = sm8550_bw_table_dec,
+	.bw_tbl_dec_size = ARRAY_SIZE(sm8550_bw_table_dec),
+	.pmdomain_tbl = sm8550_pmdomain_table,
+	.pmdomain_tbl_size = ARRAY_SIZE(sm8550_pmdomain_table),
+	.opp_pd_tbl = sm8550_opp_pd_table,
+	.opp_pd_tbl_size = ARRAY_SIZE(sm8550_opp_pd_table),
+	.clk_tbl = sm8550_clk_table,
+	.clk_tbl_size = ARRAY_SIZE(sm8550_clk_table),
+	/* Upper bound of DMA address range */
+	.dma_mask = 0xe0000000 - 1,
+	.fwname = "qcom/vpu/vpu33_p4.mbn",
+	.pas_id = IRIS_PAS_ID,
+	.inst_caps = &platform_inst_cap_sm8550,
+	.inst_fw_caps = inst_fw_cap_sm8550,
+	.inst_fw_caps_size = ARRAY_SIZE(inst_fw_cap_sm8550),
+	.tz_cp_config_data = &tz_cp_config_sm8550,
+	.core_arch = VIDEO_ARCH_LX,
+	.hw_response_timeout = HW_RESPONSE_TIMEOUT_VALUE,
+	.ubwc_config = &ubwc_config_sm8550,
+	.num_vpp_pipe = 4,
+	.max_session_count = 16,
+	.max_core_mbpf = ((8192 * 4352) / 256) * 2,
+	.input_config_params =
+		sm8550_vdec_input_config_params,
+	.input_config_params_size =
+		ARRAY_SIZE(sm8550_vdec_input_config_params),
+	.output_config_params =
+		sm8550_vdec_output_config_params,
+	.output_config_params_size =
+		ARRAY_SIZE(sm8550_vdec_output_config_params),
+	.dec_input_prop = sm8550_vdec_subscribe_input_properties,
+	.dec_input_prop_size = ARRAY_SIZE(sm8550_vdec_subscribe_input_properties),
+	.dec_output_prop = sm8550_vdec_subscribe_output_properties,
+	.dec_output_prop_size = ARRAY_SIZE(sm8550_vdec_subscribe_output_properties),
+
+	.dec_ip_int_buf_tbl = sm8550_dec_ip_int_buf_tbl,
+	.dec_ip_int_buf_tbl_size = ARRAY_SIZE(sm8550_dec_ip_int_buf_tbl),
+	.dec_op_int_buf_tbl = sm8550_dec_op_int_buf_tbl,
+	.dec_op_int_buf_tbl_size = ARRAY_SIZE(sm8550_dec_op_int_buf_tbl),
+};
+
+#endif
diff --git a/drivers/media/platform/qcom/iris/iris_platform_common.h b/drivers/media/platform/qcom/iris/iris_platform_common.h
index fdd40fd80178c4c66b37e392d07a0a62f492f108..6bc3a7975b04d612f6c89206eae95dac678695fc 100644
--- a/drivers/media/platform/qcom/iris/iris_platform_common.h
+++ b/drivers/media/platform/qcom/iris/iris_platform_common.h
@@ -35,6 +35,7 @@ enum pipe_type {
 
 extern struct iris_platform_data sm8250_data;
 extern struct iris_platform_data sm8550_data;
+extern struct iris_platform_data sm8650_data;
 
 enum platform_clk_type {
 	IRIS_AXI_CLK,
diff --git a/drivers/media/platform/qcom/iris/iris_probe.c b/drivers/media/platform/qcom/iris/iris_probe.c
index 4f8bce6e2002bffee4c93dcaaf6e52bf4e40992e..7cd8650fbe9c09598670530103e3d5edf32953e7 100644
--- a/drivers/media/platform/qcom/iris/iris_probe.c
+++ b/drivers/media/platform/qcom/iris/iris_probe.c
@@ -345,6 +345,10 @@ static const struct of_device_id iris_dt_match[] = {
 			.data = &sm8250_data,
 		},
 #endif
+	{
+		.compatible = "qcom,sm8650-iris",
+		.data = &sm8650_data,
+	},
 	{ },
 };
 MODULE_DEVICE_TABLE(of, iris_dt_match);

-- 
2.34.1


