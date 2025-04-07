Return-Path: <devicetree+bounces-163847-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CE24BA7E4C2
	for <lists+devicetree@lfdr.de>; Mon,  7 Apr 2025 17:38:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8383B425BAE
	for <lists+devicetree@lfdr.de>; Mon,  7 Apr 2025 15:25:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7B511FFC74;
	Mon,  7 Apr 2025 15:24:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NU9DG/Kj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06F641FE45E
	for <devicetree@vger.kernel.org>; Mon,  7 Apr 2025 15:24:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744039470; cv=none; b=Mta4qx9F1omLU/KkRZWxk5Nx9jWjNFu7uFwJYnXFSpnHQa5BKEaZRWc3TbIo1xyYXNjjXxeHuIwQkAJiEobwJO+0oyyKuJ6B+34O+vHUAe2jA4ekd5WSGYVFJ3006Q1uJXnd73ZsNlgnQanAgLy97o9sss/pCMbKEgcojsmJFzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744039470; c=relaxed/simple;
	bh=neXImAtQA6tzq28UA2f7Fc6YFrL/8512jm9dsPst4Uw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rb6cSq85f7Rq7cdm/FkWQTyVs2tpG379jC89XqSmmG9y203acaGvdZs5s9Crk0cZlhKY30Uq5MWwTDJ14SLvYeAUUuvWVqwAMkRTb1LnslWTaiI70+TyZ9WKKFVkXgzQsoRM07Va7EdjUUMI1YK3qggOkb6zqI4cEP0HVkzKcPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NU9DG/Kj; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-391342fc0b5so3558974f8f.3
        for <devicetree@vger.kernel.org>; Mon, 07 Apr 2025 08:24:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744039464; x=1744644264; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GvVRJL05EetY3b5wXnazV4Utq3Bno8ucEIV3aAjgwZI=;
        b=NU9DG/KjEbAZWy4uKneBAfMFo0Yy9+eLmoe1IzOUvWUQ1Al4VIJ4G7CTsdg/lzZFhG
         KNxVLVzlzkNz3XPqAViTtXdQa8PUmtMNRR5R6t9G3vrXrBD3OmO+QCwqDymuX3PSjnmj
         MBmrCH/TGvf3wKW/zxCsKljm1AvMQeyhpigiok2UdztOxNzTr1F+dIpHzlxGeoS4HNlV
         VFyISx+CIOGk7cEB4WiBnYXwyTPSr4pqa/7xJSf5R/2LcH+iPn0OgZ8FvrVCgdcF3Lea
         izIYNshs2wrx12X0bBQudaAt7ITnBn7dWchyalQMRyOgDH7Llvpj2T3knWzRsCuj+q6W
         r3BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744039464; x=1744644264;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GvVRJL05EetY3b5wXnazV4Utq3Bno8ucEIV3aAjgwZI=;
        b=VPQ51i4tPASKrEV71UAlv5zeSXaTG1GxMX1i+boy9bw+kqedN5ugkdyIKdIsk+njqh
         U7p26SM2hbNrBtqK5vdwrYo11MGN9zGQ48WbIG70fqUx8hTB98YZG9rXclXx8QXQjgwM
         Ph+YgseQGDydFvb1XqtVCm4FfOHB9As6kRxaKql3oxDTeNmtzAV4cbeTPcPwVMvt1NqJ
         WSdPLab//m+Pus34FFzgEF9nF7kDYx3OW1BdCWeCTByL8vseOqyiXz0eIOdRvvK86Iol
         rkzF/L7onrV1pEUH7+fk5bKbfBtWnYapSl9mNABN+kxmnEojS5E0chdahUHB+K8/NZks
         lHNQ==
X-Forwarded-Encrypted: i=1; AJvYcCVkMTjykrOjeoKVkgKpwDaQXggtlse8HkZh+7ODZSoiM5i5FW+9Mjivq9ooGAaz3Pm1E26ZpFjeTPom@vger.kernel.org
X-Gm-Message-State: AOJu0YzwNifjQMzHaIaN7Ele3MCCnj7DmPpPX2KtSjt+Tvq5u1YYx+YT
	bhrkv38J/2SexcpMe2VaFB+esD+FdFYY0M0Cj3pKWyaF+4CNJLAJuY0KPBnasFg=
X-Gm-Gg: ASbGncsVNvyMPWHjiAV8SJRoRJdr4Tzhhas2XqL513YYbKUpw+rA0LiZX7iBS2sP5Rr
	BD0RLRlQCY2XRzeUA+CbtsIrdM838acUMH5Yp8XWbekd5O5Q+ACb43jHYSpNYrgVDxZD1ocdRNw
	t5w+V+xqXIiA8QgyDX+Ww0kgxILUMUl4cLQj9pI5Mt+fjPAtfcx4wr34oUGpqk7aXF310JfdRbU
	0XpmEUn1QRR1qqgNFTmLLDwPIvaTY1QqPotnkdUNGTl7s9/q13nt3ABi5ODWiU8P4LmZ0dP2p3y
	sKLkDr1gdddOeTM4OdGsSSwPUsfuHuszk/Xq912oKoMZgJBW8y/CmTFCLa4i7JHkpg==
X-Google-Smtp-Source: AGHT+IHBRqMiDiPVAjeRnWAr5LUDeSmE9wHz0sfR5rKfiXLkQ3xumNNQLM66y4ktKIF4vGMuDePqHw==
X-Received: by 2002:a05:6000:430c:b0:391:47d8:de2d with SMTP id ffacd0b85a97d-39cba93382fmr10973353f8f.23.1744039464251;
        Mon, 07 Apr 2025 08:24:24 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39c301b42besm12212001f8f.41.2025.04.07.08.24.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Apr 2025 08:24:23 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 07 Apr 2025 17:24:17 +0200
Subject: [PATCH v3 5/5] media: platform: qcom/iris: add sm8650 support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250407-topic-sm8x50-iris-v10-v3-5-63569f6d04aa@linaro.org>
References: <20250407-topic-sm8x50-iris-v10-v3-0-63569f6d04aa@linaro.org>
In-Reply-To: <20250407-topic-sm8x50-iris-v10-v3-0-63569f6d04aa@linaro.org>
To: Vikash Garodia <quic_vgarodia@quicinc.com>, 
 Dikshita Agarwal <quic_dikshita@quicinc.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=5217;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=neXImAtQA6tzq28UA2f7Fc6YFrL/8512jm9dsPst4Uw=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBn8+4j0nULgROhyU7aboOye/k8H2jz5sPE6W1sl6I6
 s+uzY5aJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZ/PuIwAKCRB33NvayMhJ0VuyD/
 40kl4zHzWK5Xmkv75+p6h9FHxrRPpglQiiMrtp7UVlwXQ2uhLsV+aYatTw6HY1AY1Ei06uYIcfme7t
 Zg9fO262jpl9i1KLUVXt8Mkx/FuZlKLwRU/RCdFpVJOfqynGfOlDkOoKoyLM9K7R8jxvezN9NZOqES
 5wm9T7PDdvULxzzDte08K+0u8o2HQjKA/fzZzoYjOX/o0WiXXqbQzhh/IIi+gFxxW3Mjt2V+bqmVRQ
 tSxlEpHs6LbLGIUar2gd58yqxrVWfJ7G8DMS0PsaHx22V0Cu8Kw/xiuQ4wmat3te11JBSKLJ4D8iXW
 8zsoNanTyCG0wpBGmpZSmthsEpZMnBabpy6RVIPxDKJ1qROkVaWikduUyCfw5Cqj6+A06bO61YrhWn
 zLHD9ySNmVzxGUnOH12pTC27VRpcsSVQo5mhRaC6N/9M7SMENGlRvB7j5kzOAGCrDkX53TalNGZW+o
 YVLdilahUVTONrJLYlCuv5vt5NOkxOOTG7p+3dPWGbD+lykd9Z8L8lgMcQA3UMpb8PrGYnEKn0Y0yZ
 kvZ3PJ+htkS27SzwIrmmLVZq/Vv9/5ZGsNphXLIIEvab6APnl7JqY1j9/Q5wtQdILSd0Wns9k9rwvi
 gTJc3vweAqEZEKQ8aQsY/NOyWQ8Cjg+hg8JQNtBlfVJDxa+JOfy2qjSEeL6g==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Add support for the SM8650 platform by re-using the SM8550
definitions and using the vpu33 ops.

The SM8650/vpu33 requires more reset lines, but the H.284
decoder capabilities are identical.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 .../platform/qcom/iris/iris_platform_common.h      |  1 +
 .../platform/qcom/iris/iris_platform_sm8550.c      | 64 ++++++++++++++++++++++
 drivers/media/platform/qcom/iris/iris_probe.c      |  4 ++
 3 files changed, 69 insertions(+)

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
diff --git a/drivers/media/platform/qcom/iris/iris_platform_sm8550.c b/drivers/media/platform/qcom/iris/iris_platform_sm8550.c
index 35d278996c430f2856d0fe59586930061a271c3e..d0f8fa960d53367023e41bc5807ba3f8beae2efc 100644
--- a/drivers/media/platform/qcom/iris/iris_platform_sm8550.c
+++ b/drivers/media/platform/qcom/iris/iris_platform_sm8550.c
@@ -144,6 +144,10 @@ static const struct icc_info sm8550_icc_table[] = {
 
 static const char * const sm8550_clk_reset_table[] = { "bus" };
 
+static const char * const sm8650_clk_reset_table[] = { "bus", "core" };
+
+static const char * const sm8650_controller_reset_table[] = { "xo" };
+
 static const struct bw_info sm8550_bw_table_dec[] = {
 	{ ((4096 * 2160) / 256) * 60, 1608000 },
 	{ ((4096 * 2160) / 256) * 30,  826000 },
@@ -264,3 +268,63 @@ struct iris_platform_data sm8550_data = {
 	.dec_op_int_buf_tbl = sm8550_dec_op_int_buf_tbl,
 	.dec_op_int_buf_tbl_size = ARRAY_SIZE(sm8550_dec_op_int_buf_tbl),
 };
+
+/*
+ * Shares most of SM8550 data except:
+ * - vpu_ops to iris_vpu33_ops
+ * - clk_rst_tbl to sm8650_clk_reset_table
+ * - controller_rst_tbl to sm8650_controller_reset_table
+ * - fwname to "qcom/vpu/vpu33_p4.mbn"
+ */
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


