Return-Path: <devicetree+bounces-187195-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 53CB2ADEFA5
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 16:35:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2DD787A7E59
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 14:33:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4BB752EE288;
	Wed, 18 Jun 2025 14:33:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fBeBGNG5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B67D2EE267
	for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 14:33:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750257214; cv=none; b=PXgTmZBhvYqIxmwtY+l65QIIgN0Yg9QNoMqvQkfrkX4eTzkzF3m4Nem5qHu3LpkdP5KtMibyrKpxTx5guOQ2a2FQZonj9GxCyMW9L76grPse8cq0mZpovrUpfijLek9nw0uUQCbjEICYYipn1Fv7NslZXW9pNkJI3EwnN2sGD5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750257214; c=relaxed/simple;
	bh=Q85xp91wI2inr8+WDuEameiNkz82ALjbfCr+2Lxkxp0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=gNgW7yJ/hSv9nC+75gHdhX6XV9034DI8ai2YhT4k0HdEvyrXe3G0DNW9iTJOO3i9JtfzXBfvlUpCZyJmTaI+LG76yxIYSC4rBdbjdikzlZ3lrnEaux4tKKN8N94kYD1bPAGrCfkWFIntjkJEDuWCnbrzUX6J45hgbufu9rnv9bI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fBeBGNG5; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-adb2bb25124so112875066b.1
        for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 07:33:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750257210; x=1750862010; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2opTb6yLZkFbd2RdPCFbOWTCnxieTWZuLqpEyRBvhr0=;
        b=fBeBGNG58g1pXwoBsx0ka3OM5Neb2d2kHR/5ubBwDKwOEkYAtnhGkUzYVQfQoqDF1s
         IopUw4LfbBm97Qs93tO7VQACMED6z1hIWTiC6ciBSiGI73qrHAVeX/WiUyZVK7a/1Njx
         fcNeur1/2EJGu3oN/YGGhseNSxSQTlN4gO0vk23guvjH703PvJxugFfbX6llgJBxbgmw
         4hAjw++GEeUz0ziVEdaBvh7/KDVm18BlMqUlGa7VHdLfR13I40MC5UNEpUYxe+hwXlUT
         MYHidELT3A8HPsxSkoQO2wWFnMlZ7hUXgS7fFgajEWpyZGVl/pHpkhqdvLCdUH3l0rqL
         1mSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750257210; x=1750862010;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2opTb6yLZkFbd2RdPCFbOWTCnxieTWZuLqpEyRBvhr0=;
        b=QVxgnk3c1s/b49RD7GRjB3S2Ni1HJGCLAV9IWbPB3A7uXSQCjFrPmpxGew7yRmmLgV
         WpU7PDUQA8FucF6vETtX0eYBbkzyY3yx1Hf/Eq5omcjy+S3HKrKT294CeksRtmxHiAnr
         xm2IgcQn5/CUkJ60YVO4qOGk+41O9VW+Q4000I1ZI3tR3w6FX6PU0Y46II1Bs502a6qQ
         BChyP2fy+LPigqWsQ0WPTWUJcmgYFSZvn8OMvokD03HfxYrXCxfLDrf/QtKQ2F3k7PVq
         +OBE/ZHUosqagQBfxrG7+AnvmK9O1k3bgBjry+WzBP9axdatv/LXW3B1UPmKwhcxllZa
         weCw==
X-Forwarded-Encrypted: i=1; AJvYcCX3dnmLOAk+zUKno5e931xKSDxMur6fhkri6VTo8Ti7YpjWxabJ62k1pd7YgH/z0FQo82+A8pnm521b@vger.kernel.org
X-Gm-Message-State: AOJu0Yx53OM+VvMzDGYkC2exPuiOUWtpfZlWmrAtp2RTgL3HRGqcX3V1
	b1iHIw8RbZFAYURqVzk/2GJsle6/28EzGQgWvr9p7t/fjY6yFZ9xcbmrI+MgMA+pKKk=
X-Gm-Gg: ASbGnctWyK1Qc3k96myDVlw16NWLy1aW/0JlqcfBfuDHRCVl2ax9HStzYqMA9QCWacp
	0ljgWrjpuow8jjMYA0xLNl2fPjsyv5qGpR2BSLJAGEyM8YC/W2XnqiPSI266kQ3S2XS9YrOEyrz
	zA66anwFNbPp0E9CxN6Khk6CUjh+ADkiGvLJU9Vz6hTBcmo05zZJWnL8VTDAU6OTQZg5j6jYRgy
	d34/mKnx0HtaQgHWvZEd1NKYGuPd3ZzvM+x43oYi6WJJiydHVloKY/KuH+zbUkP6m3jCikMiuhX
	PhdFRqjkFFj+0kJdhvdDc08nL0bH0nCpUw3i7RtZFl4PinDyZ+XprRxfA9jaM39IqE6HwkKVDrI
	rx2+Bly8=
X-Google-Smtp-Source: AGHT+IFYaSefk15JOEyjxr5iIvrUNKdw/7Ynr0R+jV7CeFd67D+s3f8zmbFZdHfw8jcxc/mo7ubrlA==
X-Received: by 2002:a17:907:97ce:b0:ad8:9207:b436 with SMTP id a640c23a62f3a-adffad16db6mr284539166b.5.1750257209711;
        Wed, 18 Jun 2025 07:33:29 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.223.125])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-adec81c0135sm1052257566b.47.2025.06.18.07.33.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Jun 2025 07:33:29 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Wed, 18 Jun 2025 16:32:36 +0200
Subject: [PATCH v7 07/13] drm/msm/dsi: Add support for SM8750
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250618-b4-sm8750-display-v7-7-a591c609743d@linaro.org>
References: <20250618-b4-sm8750-display-v7-0-a591c609743d@linaro.org>
In-Reply-To: <20250618-b4-sm8750-display-v7-0-a591c609743d@linaro.org>
To: Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Krishna Manikandan <quic_mkrishn@quicinc.com>, 
 Jonathan Marek <jonathan@marek.ca>, Kuogee Hsieh <quic_khsieh@quicinc.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Dmitry Baryshkov <lumag@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Clark <robin.clark@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-clk@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>, 
 Srinivas Kandagatla <srini@kernel.org>, 
 Rob Clark <robin.clark@oss.qualcomm.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=7327;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=Q85xp91wI2inr8+WDuEameiNkz82ALjbfCr+2Lxkxp0=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoUs4fQR/u43KztTnfoDmqvE2xDMbBUERVrDArv
 oQCbMsZQf+JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaFLOHwAKCRDBN2bmhouD
 19RTEACIGA2NDrR+OLSllRVNyPhxA/rjQwZj9qrh2v1LyvJ7CaU86Q6ZRmiRz61UZAUH7b+R9FA
 xNB3fsULxjTgd+DxoOs6hY4QdBcstQ6VBsbGN96FzApCi70ljQdqBDrBOrGdOGpoWSYweqh1cpb
 u64mvMOTBMQltlwe8d2qw4CHUXx2qb7wKqx8MdB8mBLCcxoLuRAKeLgBK9RXgt+kpOnLOOI2o9m
 IVa9Sgb+ywi2gy8611D547xytxhES4Pl2tilJeLEiFEutAZJm98TZlG5YkHlNjEkBI6tW+o0yQE
 lBkbYXoavDWJUyG1zvr73bd0/3xFY3/qfnX1D5DakEOM158AWBE2sc6DATyCuyA2cGkEPfAjRIO
 xIf+JGNRf2U5sJzoF3AAJnJP4dsBmtZ+G96eB7LJKLDXvYsc3iXFfhLJLdUtwkjH3mAKP+TjW87
 4V9K/FBP7/w/E6zN4NypBPb1NLi/6ZF44YwNkLTi8IUMljmrGnwdSrJ4e9tVks6eAMettsYuhhe
 +xUK0OaiCJXkrosHfpSigcfNXhe0LaKyZwXyQ/BNnkJolCzwmVO832LpIHbzuMFK3kgh7oQ44Qs
 DVN7/QRS+IVANlSImXoYy9g/Lg1wN7q7ewnkaT17Jgy8FS0dT9Qqnu7yvTlr6miAePKxdrLMNFE
 lz7PZ/nzKGs723Q==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Add support for DSI on Qualcomm SM8750 SoC with notable difference:

DSI PHY PLLs, the parents of pixel and byte clocks, cannot be used as
parents before DSI PHY is configured, the PLLs are prepared and their
initial rate is set.  Therefore assigned-clock-parents are not working
here and driver is responsible for reparenting clocks with proper
procedure: see dsi_clk_init_6g_v2_9().

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---

Changes in v6:
1. Drop redundant parent clock enable, because this was fixed in the
   DISP CC clock controller driver.

Changes in v5:
1. Only reparent byte and pixel clocks while PLLs is prepared. Setting
   rate works fine with earlier DISP CC patch for enabling their parents
   during rate change.

Changes in v3:
1. Drop 'struct msm_dsi_config sm8750_dsi_cfg' and use sm8650 one.
---
 drivers/gpu/drm/msm/dsi/dsi.h      |  2 ++
 drivers/gpu/drm/msm/dsi/dsi_cfg.c  | 14 +++++++++
 drivers/gpu/drm/msm/dsi/dsi_cfg.h  |  1 +
 drivers/gpu/drm/msm/dsi/dsi_host.c | 61 ++++++++++++++++++++++++++++++++++++++
 4 files changed, 78 insertions(+)

diff --git a/drivers/gpu/drm/msm/dsi/dsi.h b/drivers/gpu/drm/msm/dsi/dsi.h
index 87496db203d6c7582eadcb74e94eb56a219df292..93c028a122f3a59b1632da76472e0a3e781c6ae8 100644
--- a/drivers/gpu/drm/msm/dsi/dsi.h
+++ b/drivers/gpu/drm/msm/dsi/dsi.h
@@ -98,6 +98,7 @@ int msm_dsi_host_init(struct msm_dsi *msm_dsi);
 int msm_dsi_runtime_suspend(struct device *dev);
 int msm_dsi_runtime_resume(struct device *dev);
 int dsi_link_clk_set_rate_6g(struct msm_dsi_host *msm_host);
+int dsi_link_clk_set_rate_6g_v2_9(struct msm_dsi_host *msm_host);
 int dsi_link_clk_set_rate_v2(struct msm_dsi_host *msm_host);
 int dsi_link_clk_enable_6g(struct msm_dsi_host *msm_host);
 int dsi_link_clk_enable_v2(struct msm_dsi_host *msm_host);
@@ -115,6 +116,7 @@ int dsi_dma_base_get_6g(struct msm_dsi_host *msm_host, uint64_t *iova);
 int dsi_dma_base_get_v2(struct msm_dsi_host *msm_host, uint64_t *iova);
 int dsi_clk_init_v2(struct msm_dsi_host *msm_host);
 int dsi_clk_init_6g_v2(struct msm_dsi_host *msm_host);
+int dsi_clk_init_6g_v2_9(struct msm_dsi_host *msm_host);
 int dsi_calc_clk_rate_v2(struct msm_dsi_host *msm_host, bool is_bonded_dsi);
 int dsi_calc_clk_rate_6g(struct msm_dsi_host *msm_host, bool is_bonded_dsi);
 void msm_dsi_host_snapshot(struct msm_disp_state *disp_state, struct mipi_dsi_host *host);
diff --git a/drivers/gpu/drm/msm/dsi/dsi_cfg.c b/drivers/gpu/drm/msm/dsi/dsi_cfg.c
index 7675558ae2e5293ff2f239e8b19154f2a5c86957..fed8e9b67011cac1f766a5bc47bd5117304ab0fd 100644
--- a/drivers/gpu/drm/msm/dsi/dsi_cfg.c
+++ b/drivers/gpu/drm/msm/dsi/dsi_cfg.c
@@ -273,6 +273,18 @@ static const struct msm_dsi_host_cfg_ops msm_dsi_6g_v2_host_ops = {
 	.calc_clk_rate = dsi_calc_clk_rate_6g,
 };
 
+static const struct msm_dsi_host_cfg_ops msm_dsi_6g_v2_9_host_ops = {
+	.link_clk_set_rate = dsi_link_clk_set_rate_6g_v2_9,
+	.link_clk_enable = dsi_link_clk_enable_6g,
+	.link_clk_disable = dsi_link_clk_disable_6g,
+	.clk_init_ver = dsi_clk_init_6g_v2_9,
+	.tx_buf_alloc = dsi_tx_buf_alloc_6g,
+	.tx_buf_get = dsi_tx_buf_get_6g,
+	.tx_buf_put = dsi_tx_buf_put_6g,
+	.dma_base_get = dsi_dma_base_get_6g,
+	.calc_clk_rate = dsi_calc_clk_rate_6g,
+};
+
 static const struct msm_dsi_cfg_handler dsi_cfg_handlers[] = {
 	{MSM_DSI_VER_MAJOR_V2, MSM_DSI_V2_VER_MINOR_8064,
 		&apq8064_dsi_cfg, &msm_dsi_v2_host_ops},
@@ -318,6 +330,8 @@ static const struct msm_dsi_cfg_handler dsi_cfg_handlers[] = {
 		&sm8550_dsi_cfg, &msm_dsi_6g_v2_host_ops},
 	{MSM_DSI_VER_MAJOR_6G, MSM_DSI_6G_VER_MINOR_V2_8_0,
 		&sm8650_dsi_cfg, &msm_dsi_6g_v2_host_ops},
+	{MSM_DSI_VER_MAJOR_6G, MSM_DSI_6G_VER_MINOR_V2_9_0,
+		&sm8650_dsi_cfg, &msm_dsi_6g_v2_9_host_ops},
 };
 
 const struct msm_dsi_cfg_handler *msm_dsi_cfg_get(u32 major, u32 minor)
diff --git a/drivers/gpu/drm/msm/dsi/dsi_cfg.h b/drivers/gpu/drm/msm/dsi/dsi_cfg.h
index 65b0705fac0eeb1b7d7b001576215b8578c67e25..38f303f2ed04c37916c9aca148ccb569e816e35f 100644
--- a/drivers/gpu/drm/msm/dsi/dsi_cfg.h
+++ b/drivers/gpu/drm/msm/dsi/dsi_cfg.h
@@ -31,6 +31,7 @@
 #define MSM_DSI_6G_VER_MINOR_V2_6_0	0x20060000
 #define MSM_DSI_6G_VER_MINOR_V2_7_0	0x20070000
 #define MSM_DSI_6G_VER_MINOR_V2_8_0	0x20080000
+#define MSM_DSI_6G_VER_MINOR_V2_9_0	0x20090000
 
 #define MSM_DSI_V2_VER_MINOR_8064	0x0
 
diff --git a/drivers/gpu/drm/msm/dsi/dsi_host.c b/drivers/gpu/drm/msm/dsi/dsi_host.c
index 4d75529c0e858160761f5eb55db65e5d7565c27b..6400f72a66f0af2ffd8900a9cc3c8fa3f79b626c 100644
--- a/drivers/gpu/drm/msm/dsi/dsi_host.c
+++ b/drivers/gpu/drm/msm/dsi/dsi_host.c
@@ -119,6 +119,15 @@ struct msm_dsi_host {
 	struct clk *pixel_clk;
 	struct clk *byte_intf_clk;
 
+	/*
+	 * Clocks which needs to be properly parented between DISPCC and DSI PHY
+	 * PLL:
+	 */
+	struct clk *byte_src_clk;
+	struct clk *pixel_src_clk;
+	struct clk *dsi_pll_byte_clk;
+	struct clk *dsi_pll_pixel_clk;
+
 	unsigned long byte_clk_rate;
 	unsigned long byte_intf_clk_rate;
 	unsigned long pixel_clk_rate;
@@ -269,6 +278,38 @@ int dsi_clk_init_6g_v2(struct msm_dsi_host *msm_host)
 	return ret;
 }
 
+int dsi_clk_init_6g_v2_9(struct msm_dsi_host *msm_host)
+{
+	struct device *dev = &msm_host->pdev->dev;
+	int ret;
+
+	ret = dsi_clk_init_6g_v2(msm_host);
+	if (ret)
+		return ret;
+
+	msm_host->byte_src_clk = devm_clk_get(dev, "byte_src");
+	if (IS_ERR(msm_host->byte_src_clk))
+		return dev_err_probe(dev, PTR_ERR(msm_host->byte_src_clk),
+				     "can't get byte_src clock\n");
+
+	msm_host->dsi_pll_byte_clk = devm_clk_get(dev, "dsi_pll_byte");
+	if (IS_ERR(msm_host->dsi_pll_byte_clk))
+		return dev_err_probe(dev, PTR_ERR(msm_host->dsi_pll_byte_clk),
+				     "can't get dsi_pll_byte clock\n");
+
+	msm_host->pixel_src_clk = devm_clk_get(dev, "pixel_src");
+	if (IS_ERR(msm_host->pixel_src_clk))
+		return dev_err_probe(dev, PTR_ERR(msm_host->pixel_src_clk),
+				     "can't get pixel_src clock\n");
+
+	msm_host->dsi_pll_pixel_clk = devm_clk_get(dev, "dsi_pll_pixel");
+	if (IS_ERR(msm_host->dsi_pll_pixel_clk))
+		return dev_err_probe(dev, PTR_ERR(msm_host->dsi_pll_pixel_clk),
+				     "can't get dsi_pll_pixel clock\n");
+
+	return 0;
+}
+
 static int dsi_clk_init(struct msm_dsi_host *msm_host)
 {
 	struct platform_device *pdev = msm_host->pdev;
@@ -370,6 +411,26 @@ int dsi_link_clk_set_rate_6g(struct msm_dsi_host *msm_host)
 	return 0;
 }
 
+int dsi_link_clk_set_rate_6g_v2_9(struct msm_dsi_host *msm_host)
+{
+	struct device *dev = &msm_host->pdev->dev;
+	int ret;
+
+	/*
+	 * DSI PHY PLLs have to be enabled to allow reparenting to them, so
+	 * cannot use assigned-clock-parents.
+	 */
+	ret = clk_set_parent(msm_host->byte_src_clk, msm_host->dsi_pll_byte_clk);
+	if (ret)
+		dev_err(dev, "Failed to parent byte_src -> dsi_pll_byte: %d\n", ret);
+
+	ret = clk_set_parent(msm_host->pixel_src_clk, msm_host->dsi_pll_pixel_clk);
+	if (ret)
+		dev_err(dev, "Failed to parent pixel_src -> dsi_pll_pixel: %d\n", ret);
+
+	return dsi_link_clk_set_rate_6g(msm_host);
+}
+
 int dsi_link_clk_enable_6g(struct msm_dsi_host *msm_host)
 {
 	int ret;

-- 
2.45.2


