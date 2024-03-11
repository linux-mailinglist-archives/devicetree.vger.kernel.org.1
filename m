Return-Path: <devicetree+bounces-49817-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BBC83877EDB
	for <lists+devicetree@lfdr.de>; Mon, 11 Mar 2024 12:20:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 342921F21903
	for <lists+devicetree@lfdr.de>; Mon, 11 Mar 2024 11:20:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D532D3B78E;
	Mon, 11 Mar 2024 11:20:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DcfH1PpA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 195D73A1DC
	for <devicetree@vger.kernel.org>; Mon, 11 Mar 2024 11:20:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710156048; cv=none; b=L7EZH2lOB+xSKIGUqRqS+DKNVyUYlKnOfUfTHvArqruZ3B8OiBVbVwSK8oUzWthCuYHcxqorV7HvMMnSWNTsgrztaKICKg5aRzWjrIZoz7O7vQJR2UIAXegv3+Bc/0RPTDEbw+UAAEmoJsD2lGZZASwgVk21guYV5bZvhS0wiOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710156048; c=relaxed/simple;
	bh=OGMYbHUNFSBoWDKd5qcnaC+q5URHBrI8YOz8as3SMBY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=hM0L8kBa3DCHFtp89k3vykhutXG52JSe3u+celfzaIldvwxhCGygPKct8TfMUArpUEPSAQ+yLY0J8N+KEj7n0TI2DdGLyufT1spWAdZ8HU6Gq3JEeK3ptiwr2BSm/C19/aF+aRFdJzglpDjScEVsGH6Y5Ep74qYLmj6qiXMKrPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DcfH1PpA; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2d27fef509eso68459991fa.3
        for <devicetree@vger.kernel.org>; Mon, 11 Mar 2024 04:20:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710156045; x=1710760845; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ckBzZnx48RdUyZurHjiq3WjM24jb9QKg0w7hY9V6JDQ=;
        b=DcfH1PpAeX4VrsAVTZefPPKVcck3QY/vQHJxtg4loI/kuPeaUibzl+aytqgB/AoKMa
         xbyvKTdL5PObu7zprkUlnyOOxhZoaZkroAgN0n88JzWZlG1etk326RqK3mN9fyZbS7s0
         saQzK/bFZiiLOEv6u7JFJzZcAxef9+Ahs3PaY2TQXSO7rkvrMtBrN9MwooKfHEIuXBYl
         a8AXug25Rw9r3vgZEAUxPNeJVVyHDnfTutMmsLb6oUaKWzUMtV5/ekH1YP8F3gLs17cB
         HxItGAacxZgO536kY8A1IcgVqMJG8iI3uWGUZD9V0uJgN7zv9XDy5lOUsjoa0I9zZq4j
         KNKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710156045; x=1710760845;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ckBzZnx48RdUyZurHjiq3WjM24jb9QKg0w7hY9V6JDQ=;
        b=Zd+VguNMH3zINXFeAimgOG/h26k13sQ4XcrhAYMrrJz8IrxQpBtwyf0WIBLrpB2w1x
         wjbhDZJND588A3hVEe/q8KACndvxlJNCXoLUgTUi4gMxKWzqKSedDLq+Bqxov4J29qW0
         GYe5sMn3e2gJ9z4XXiRji5ImhlQrlC2mfkt0QN30eoAYyoHDIFXIKeCs3UYl38pcPIkN
         TEFISv/luS5MAwNBedQyVnTMFW2AwHkPW60OT2WFf74bf5DGnwwVnxZkTTAw38AMYIRg
         N/YirX7hL1cdTx6hV9PENviGkYvOmsOYX4p80VVxiW3ie0pAMHw0UmX9Hu2eusjpEaPJ
         R3NA==
X-Forwarded-Encrypted: i=1; AJvYcCW7Jq8tgV/mWkpJ0UQaFzZeluwFBTjFefKoM1JK7sqDzGrzJrInfwUoAKaqYSVWhphwQkY/ofkJp0wv1DpcRXgBOIlsuAxQoIxJzg==
X-Gm-Message-State: AOJu0YyH7qE2ePgoUlRQ/NJVMtkefJl8wnSLHYkcZ23WpkLoG0YEGZMy
	qh44Jzxy1dj0hM7kyfoU/PsiAAXDclTjrN4j0mESEo079gf7fd5FGwgrHmwSAT8=
X-Google-Smtp-Source: AGHT+IEMW6pZQ2eG/0ZxeAV9RTTKWsbi9/nUH/kQZ1SQ/YTeqp2eyBCBOwwst1bBxtobs1RXGk9A+A==
X-Received: by 2002:a2e:7812:0:b0:2d4:142:488a with SMTP id t18-20020a2e7812000000b002d40142488amr4067596ljc.8.1710156045463;
        Mon, 11 Mar 2024 04:20:45 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id by10-20020a05651c1a0a00b002d2aa0b0d01sm1075200ljb.82.2024.03.11.04.20.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Mar 2024 04:20:44 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 11 Mar 2024 13:20:16 +0200
Subject: [PATCH 08/12] drm/imx: parallel-display: switch to
 drm_panel_bridge
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240311-drm-imx-cleanup-v1-8-e104f05caa51@linaro.org>
References: <20240311-drm-imx-cleanup-v1-0-e104f05caa51@linaro.org>
In-Reply-To: <20240311-drm-imx-cleanup-v1-0-e104f05caa51@linaro.org>
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
 bh=OGMYbHUNFSBoWDKd5qcnaC+q5URHBrI8YOz8as3SMBY=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBl7ukEmKCVfBgBFOhYbAaVKsEoQXHYa2nHGB+FI
 B/IfPnLM+KJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZe7pBAAKCRCLPIo+Aiko
 1dMtB/0U8ABgNlb1PN73gBnvPSeUziNmQIXLiqz3b3XbXU1T/vxmrmcz1YCyin30tBvBArKJHnd
 tw7gKlVkt9zj0FFgDl+nXrsVUsq/O0HrXchzBp0mFSkZn6ey4i4pE8Xumq9UwpBTvvmQgIi/Y1P
 wG2D6ilDYD0JS1rRYwzSCvvJZTTL7X2XFL+1F+EATU3PEiYjXTy66AXNyk3nzNMX+wFyqrhztJo
 NaWGXWHfNz7OISUCLnoL93MDYkx9ZlA493hHW7TZ4SEn21yg3w/IWNqC0nBfrZxWs7xB1qZkDvI
 vnVaE8D1u12FsGDOC2n1Sb44NrEoZrHnEfMK0vgzXKfREcV2
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
index 2d044ea1920a..9b60bfbd16e6 100644
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


