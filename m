Return-Path: <devicetree+bounces-54961-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 020D48935D4
	for <lists+devicetree@lfdr.de>; Sun, 31 Mar 2024 22:29:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 83F951F224C3
	for <lists+devicetree@lfdr.de>; Sun, 31 Mar 2024 20:29:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56FA61482FA;
	Sun, 31 Mar 2024 20:29:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UoBIInrt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D9F41487D6
	for <devicetree@vger.kernel.org>; Sun, 31 Mar 2024 20:29:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711916956; cv=none; b=JBp9iCfWm9bEBmK8Ssyr3EPvED09kAxamfMSTAa3/d7yrMsDBJ5f3TL+3/QSng3DqlaOgawsFMUo2MV/RSevloAntmrPuN3WvXLiECw9y/n3DG8jQnauidT4rCE5iFRIFOWv1m+roM09OBKwrt70tBdTK2P95TANFo00Z7zhctI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711916956; c=relaxed/simple;
	bh=Pi9W5qgy4T7+J9hP9AVFepGfzI8GpfyO2Ku1B6h2Uks=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=fuE7vl6i78Ig7LAPpWF1bd+39Pb7hYp6vQbOLNNpmogUVHw2D6e+4VwdeSxGMbdyv/8gGld4zswLXMDvGSlcbPAEpbmAoDRye5Zlfamgwujta5fBHhwTpP6Oykj66gp8uKRGeDon4Raf/+AnoXU3uMg9KRId3JGcZjqooFZp/h8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UoBIInrt; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-515d49a6b4cso1545724e87.0
        for <devicetree@vger.kernel.org>; Sun, 31 Mar 2024 13:29:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711916952; x=1712521752; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2NWUO8Sy6JPSgwKkrutWi5HBoELv9lWKNmrIdWaVqOA=;
        b=UoBIInrtzaMCq/NYS3s9oLm/pn+STzBEYSsJtQqh7V4M8Fl3K79K1KhQxHHRwneWxl
         atKdDc12LN08FOmdnxqGjLPwJoJtPUt3j8BCV3uGrLHH5M3VLnyuuy2jd6yjJbb9TB8Q
         4IrxjuQtxOmcq4XX1XXS+cKOmidGFoytoyclQeXqrMzd2GiOAWxVR0bcEzv4nBDerghd
         IvtS8Y0xST+J9PMkJYUBu3wbzXsYAOYF/NeQbsQx2jyCDlmUgIWxM5J0aMsYL82qDj20
         xFdRv/WYW14xFXB+3Qpx+NxQht5tGlKinPEgKMgmh9R5ujUk0RmdF7GJnIoXj0oN33Zj
         911w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711916952; x=1712521752;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2NWUO8Sy6JPSgwKkrutWi5HBoELv9lWKNmrIdWaVqOA=;
        b=iv7ZGP9Gp26jAE00ntw7+LgLYqSQ25e1S6oNr5RfafdMIAyec/LNqzxbOtfC+u77J7
         zP+KhZiZk/MJOYmG2cviX/5l+Zxc3ZSdxIo7GxOgoa9Qm8sdCADH3xH8dNV33XtgdRQ+
         K0XsCGLajhC1ANRXTQvdsrQi4IIuAT7V8kezy6Fz43tohf/8nAjorJXYylYwM8Hk/FoR
         fSqvB2RkIQgn1+P93C4TS+5MbsUb9n1ShDcIiGim+jJZF6JFaR4brd6vcc4empmiaFnc
         zJgLGVBpTSBXhmtqxm9Rt7BCk6+3w5vBN3txNZkgAIb5M6j0uUr1y+PeKOo8oSbL7tqi
         IY9w==
X-Forwarded-Encrypted: i=1; AJvYcCUVvX2qUWByjw3qhHJFLsBP/TiH6TjzN3NYWBcsA3Is5QZU880q+exafZfgrilpC7EsQS3nOE/zWDK3Zin4Txd/YvueNmnyegxZSA==
X-Gm-Message-State: AOJu0Yzhl8VHXzQN9QcHNm6Neg4JHoIzTA1PcIEFsAp5Rnbz90G1b8l0
	iexW1YFAGs4n9X/2Bnv4iMn/cY6UiRUV+i6G1L7qVA1UlAZP9mQI00T4H27nUBY=
X-Google-Smtp-Source: AGHT+IF/gwVAQwbfxLT+LCIBhCaRg+FxT10/Jh8nnHOQd/9xJ4bySdg9cI4XUR3gXC85ea19gCneCg==
X-Received: by 2002:ac2:5eca:0:b0:513:da24:fc0b with SMTP id d10-20020ac25eca000000b00513da24fc0bmr5142760lfq.33.1711916952439;
        Sun, 31 Mar 2024 13:29:12 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id y25-20020a197519000000b00513cfc2a7aesm1237276lfe.71.2024.03.31.13.29.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 Mar 2024 13:29:12 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 31 Mar 2024 23:29:05 +0300
Subject: [PATCH v2 08/12] drm/imx: parallel-display: switch to
 drm_panel_bridge
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240331-drm-imx-cleanup-v2-8-d81c1d1c1026@linaro.org>
References: <20240331-drm-imx-cleanup-v2-0-d81c1d1c1026@linaro.org>
In-Reply-To: <20240331-drm-imx-cleanup-v2-0-d81c1d1c1026@linaro.org>
To: Philipp Zabel <p.zabel@pengutronix.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>
Cc: Chris Healy <cphealy@gmail.com>, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, imx@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3282;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=Pi9W5qgy4T7+J9hP9AVFepGfzI8GpfyO2Ku1B6h2Uks=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmCceP58j4g6V4EltAY/XhET22h9ioI6gibKjLi
 hKvmJUXjKqJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZgnHjwAKCRCLPIo+Aiko
 1fEiB/9T1bnL+hT0p34ArbfJieqfBkbDb+2ZxrhzWsW6faJ9TPDPbi2BzBS5OVUPiLcj9/oAVew
 /tn/sGqoEGOrF92bR61BAKbHftzP4+5SrFsr6Az/ZTxsw8hYvyNlf/YjqwX85Nl4wOhEnropG5o
 C9/wgT79YfIvzN+jlMN7yADPKHiBB9DiOXD40bvqfBbo1Upf9KyzvmFWAt2/wCTOSxdnYWiU0xv
 Wg0CMH8K4178p8BkPwC613/e3u/SjQ5p9KokbOBMozXM2iFmrq84hPXGrVFZm+Xx1aALV34Sd6k
 3TrVuFLbRtilldWxJFk6JBv6d0pyObAZDTv33enq71W6La0x
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Defer panel handling to drm_panel_bridge, unifying codepaths for the
panel and bridge cases.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/imx/ipuv3/Kconfig            |  2 ++
 drivers/gpu/drm/imx/ipuv3/parallel-display.c | 35 +++++++---------------------
 2 files changed, 10 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/imx/ipuv3/Kconfig b/drivers/gpu/drm/imx/ipuv3/Kconfig
index 4e41611c8532..8aaf2441bcef 100644
--- a/drivers/gpu/drm/imx/ipuv3/Kconfig
+++ b/drivers/gpu/drm/imx/ipuv3/Kconfig
@@ -13,6 +13,8 @@ config DRM_IMX_PARALLEL_DISPLAY
 	tristate "Support for parallel displays"
 	select DRM_PANEL
 	depends on DRM_IMX
+	depends on DRM_BRIDGE
+	select DRM_PANEL_BRIDGE
 	select VIDEOMODE_HELPERS
 
 config DRM_IMX_TVE
diff --git a/drivers/gpu/drm/imx/ipuv3/parallel-display.c b/drivers/gpu/drm/imx/ipuv3/parallel-display.c
index 4d17fb96e77c..b7743b30475a 100644
--- a/drivers/gpu/drm/imx/ipuv3/parallel-display.c
+++ b/drivers/gpu/drm/imx/ipuv3/parallel-display.c
@@ -36,7 +36,6 @@ struct imx_parallel_display {
 	u32 bus_format;
 	u32 bus_flags;
 	struct drm_display_mode mode;
-	struct drm_panel *panel;
 	struct drm_bridge *next_bridge;
 };
 
@@ -56,10 +55,6 @@ static int imx_pd_connector_get_modes(struct drm_connector *connector)
 	struct device_node *np = imxpd->dev->of_node;
 	int num_modes;
 
-	num_modes = drm_panel_get_modes(imxpd->panel, connector);
-	if (num_modes > 0)
-		return num_modes;
-
 	if (np) {
 		struct drm_display_mode *mode = drm_mode_create(connector->dev);
 		int ret;
@@ -84,22 +79,6 @@ static int imx_pd_connector_get_modes(struct drm_connector *connector)
 	return num_modes;
 }
 
-static void imx_pd_bridge_enable(struct drm_bridge *bridge)
-{
-	struct imx_parallel_display *imxpd = bridge_to_imxpd(bridge);
-
-	drm_panel_prepare(imxpd->panel);
-	drm_panel_enable(imxpd->panel);
-}
-
-static void imx_pd_bridge_disable(struct drm_bridge *bridge)
-{
-	struct imx_parallel_display *imxpd = bridge_to_imxpd(bridge);
-
-	drm_panel_disable(imxpd->panel);
-	drm_panel_unprepare(imxpd->panel);
-}
-
 static const u32 imx_pd_bus_fmts[] = {
 	MEDIA_BUS_FMT_RGB888_1X24,
 	MEDIA_BUS_FMT_BGR888_1X24,
@@ -237,8 +216,6 @@ static const struct drm_connector_helper_funcs imx_pd_connector_helper_funcs = {
 };
 
 static const struct drm_bridge_funcs imx_pd_bridge_funcs = {
-	.enable = imx_pd_bridge_enable,
-	.disable = imx_pd_bridge_disable,
 	.atomic_reset = drm_atomic_helper_bridge_reset,
 	.atomic_duplicate_state = drm_atomic_helper_bridge_duplicate_state,
 	.atomic_destroy_state = drm_atomic_helper_bridge_destroy_state,
@@ -315,10 +292,14 @@ static int imx_pd_probe(struct platform_device *pdev)
 		return -ENOMEM;
 
 	/* port@1 is the output port */
-	ret = drm_of_find_panel_or_bridge(np, 1, 0, &imxpd->panel,
-					  &imxpd->next_bridge);
-	if (ret && ret != -ENODEV)
-		return ret;
+	imxpd->next_bridge = devm_drm_of_get_bridge(dev, np, 1, 0);
+	if (IS_ERR(imxpd->next_bridge)) {
+		ret = PTR_ERR(imxpd->next_bridge);
+		if (ret != -ENODEV)
+			return ret;
+
+		imxpd->next_bridge = NULL;
+	}
 
 	ret = of_property_read_string(np, "interface-pix-fmt", &fmt);
 	if (!ret) {

-- 
2.39.2


