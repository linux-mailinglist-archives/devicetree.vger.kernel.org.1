Return-Path: <devicetree+bounces-54958-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D39418935D0
	for <lists+devicetree@lfdr.de>; Sun, 31 Mar 2024 22:29:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 02F5E1C216FB
	for <lists+devicetree@lfdr.de>; Sun, 31 Mar 2024 20:29:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 641D31487D4;
	Sun, 31 Mar 2024 20:29:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vBFj2nM/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44B8A147C75
	for <devicetree@vger.kernel.org>; Sun, 31 Mar 2024 20:29:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711916954; cv=none; b=j0GV2+BUjWOdMHnYBZ2kFv+tOlwytF2MTU84tD+Wq+3h8DwkPxhfxsXU++wjK6AyxPGnGI7xvLTc7wp6HTT69pjiWKLeP7hCBsAgbjoe7EalA6jbCbaWdWTOCGMsvvJi+F6ZhYj8m1dlkj90MaFv0mFL/vniFlk1dOooCW8LUa0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711916954; c=relaxed/simple;
	bh=Q3tsX2NxDW1TnkNSTRHZJWIJp8sJ+Hj1Kz/G4qOQ9+Q=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=RM8aEDHJMe8PwkvuqbgDPH1DkMzTorS9dMzaXfRouLFzMyAvDcw/t5blXshMmp0ruUC28ZgNTjh/lyPbe4sxn/0GtWWkbQ4k8AMJn3IP8ZmanYuGOrG/ZaCIdkKyx56Gl98mUgayneAI/p0s0Kft5MEKEW/7BMBXNa3wb4f53TY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vBFj2nM/; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-515c50dc2afso3808409e87.1
        for <devicetree@vger.kernel.org>; Sun, 31 Mar 2024 13:29:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711916949; x=1712521749; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2KzzvmMhfp7akZBSkslfuhmya0L5lQxB1AJ+Wft0o54=;
        b=vBFj2nM/liP0qtAmJWRmlkaeOiEXE9Z6lp4E48pYiVRUUEMwwKNuUgnxsHSokJ0dbK
         MVsPwpqTL6BRUnwWCSusv6ztEPOHbFMf4uUrGNyt3GGAXAgNe/c3PWJF0FJi0giutXeV
         uRsiLeVWkDylRf7f2TAVee2ydcQ5IRuLGV7Vu7ZcHYI2EeVLA55pMAzQEmQj4ZQQJHI9
         KKG4r/6eDN6uTuA2JW+vItXySuvKpkx5vmkIF1Mxl9TzoIgHbTku2zI3Jmk7xg3Ke92D
         2xkLAu76711UtnInjrN9H1NEMRPIb0VUWIOclAEX5icIzMyIYirQSgrULzKrjYgU1y/a
         pANg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711916949; x=1712521749;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2KzzvmMhfp7akZBSkslfuhmya0L5lQxB1AJ+Wft0o54=;
        b=Le+ZyR6/CXBLqzGorKG37R1tIB0qONzIbdVfg4vsJPKMWxl3LvmyhMULjCWKK+712+
         cWzyPGRP8UTnKC7SjxtrpdZAW2IeyODEweBTZ3MhmEbixKKf1x7mT3Ii3V3ovvN8JTBp
         sROXLR7UREMXB4dwwMOyvzyL5z+IJBVCxw/fCIYaPkWjAFNSxZ+Qi3Vo8jCZae38sI3k
         SRxfb4cwkICDeVJx4+wssjVOB0Z2Q3ock2FxUEGb5AxvR2cxtEBfDsidtbd3y7r3hoQ5
         KlGB5J9Lheo0N9jScNpTIw0ZbDYE8TGt2VCi/mZ2hWWT2R3IqoI320RWKfNJ8InQeH9h
         lwvQ==
X-Forwarded-Encrypted: i=1; AJvYcCVXhN4oBfWLYVfnZu7USS8k5CZKaSbUlZFd67UfhbzY7fRV9ocJGYqei2EPbWMWGwRb39C4gYarioOlYiqk+r8oWAun/oAhvLHsgg==
X-Gm-Message-State: AOJu0YwMdZwyr63fwBWGvvndlrEDZaOJaVVHEO5daqrN8A8IcXjF8C/p
	T3tHYWEHDVlp0h2KEE3jFygF4RcE9ymMHP/vAFRy7aZfpjDoV/q0OM1MUveDP8c=
X-Google-Smtp-Source: AGHT+IFlkJbTHllJhmxuQLe8rza7jxEC5/tq80FTXBgl9MrRzWWrHRQfdLsjPQ9eVX4jnPTBNpNLUg==
X-Received: by 2002:a19:6a10:0:b0:513:aef9:5401 with SMTP id u16-20020a196a10000000b00513aef95401mr5436071lfu.66.1711916949484;
        Sun, 31 Mar 2024 13:29:09 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id y25-20020a197519000000b00513cfc2a7aesm1237276lfe.71.2024.03.31.13.29.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 Mar 2024 13:29:08 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 31 Mar 2024 23:29:01 +0300
Subject: [PATCH v2 04/12] drm/imx: parallel-display: drop edid override
 support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240331-drm-imx-cleanup-v2-4-d81c1d1c1026@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2276;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=Q3tsX2NxDW1TnkNSTRHZJWIJp8sJ+Hj1Kz/G4qOQ9+Q=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmCcePmSKVxsfb2BiMoKNsmfnhrGb3P7osuWj7O
 9DlQcsEYQuJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZgnHjwAKCRCLPIo+Aiko
 1Qq2CACzcRHGJvXSJ7Ml0+GAsmRZ4aF7aq9y0LhhBKlCwrSYCrgMog440nF/nbZUYZiK8u/syu7
 X7M9jd37lBHflsClDpkrCAJAFgL8Hy1OrsgnkPfJcJGNqR/ReWQeiIw+nvjFjw82vTwVdbH0g2L
 v+7eIkFQJRCLM73SR0E0NEkn/asUVzqJH4GCtRJGk795BuD5Yh/al4Noqb7JNS6+/5o79bnEYqF
 YcexNCg3EklMvns+D8cGpuavkOoPp87gn18lL6wGJCeewjR8Z6Y4Cv97kxpChprIzs3uAK+XbJL
 Ueb7+4iT2BBwCcNThuXHvZBvxBNr3Z+G/ZsWs8lNmtlT6Czi
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

None of the in-kernel DT files ever used edid override with the
fsl-imx-drm driver. In case the EDID needs to be specified manually, DRM
core allows one to either override it via the debugfs or to load it via
request_firmware by using DRM_LOAD_EDID_FIRMWARE. In all other cases
EDID and/or modes are to be provided as a part of the panel driver.

Drop support for the edid property.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/imx/ipuv3/parallel-display.c | 13 -------------
 1 file changed, 13 deletions(-)

diff --git a/drivers/gpu/drm/imx/ipuv3/parallel-display.c b/drivers/gpu/drm/imx/ipuv3/parallel-display.c
index 55dedd73f528..4d17fb96e77c 100644
--- a/drivers/gpu/drm/imx/ipuv3/parallel-display.c
+++ b/drivers/gpu/drm/imx/ipuv3/parallel-display.c
@@ -16,7 +16,6 @@
 
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_bridge.h>
-#include <drm/drm_edid.h>
 #include <drm/drm_managed.h>
 #include <drm/drm_of.h>
 #include <drm/drm_panel.h>
@@ -34,7 +33,6 @@ struct imx_parallel_display_encoder {
 
 struct imx_parallel_display {
 	struct device *dev;
-	void *edid;
 	u32 bus_format;
 	u32 bus_flags;
 	struct drm_display_mode mode;
@@ -62,11 +60,6 @@ static int imx_pd_connector_get_modes(struct drm_connector *connector)
 	if (num_modes > 0)
 		return num_modes;
 
-	if (imxpd->edid) {
-		drm_connector_update_edid_property(connector, imxpd->edid);
-		num_modes = drm_add_edid_modes(connector, imxpd->edid);
-	}
-
 	if (np) {
 		struct drm_display_mode *mode = drm_mode_create(connector->dev);
 		int ret;
@@ -312,9 +305,7 @@ static int imx_pd_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 	struct device_node *np = dev->of_node;
-	const u8 *edidp;
 	struct imx_parallel_display *imxpd;
-	int edid_len;
 	int ret;
 	u32 bus_format = 0;
 	const char *fmt;
@@ -329,10 +320,6 @@ static int imx_pd_probe(struct platform_device *pdev)
 	if (ret && ret != -ENODEV)
 		return ret;
 
-	edidp = of_get_property(np, "edid", &edid_len);
-	if (edidp)
-		imxpd->edid = devm_kmemdup(dev, edidp, edid_len, GFP_KERNEL);
-
 	ret = of_property_read_string(np, "interface-pix-fmt", &fmt);
 	if (!ret) {
 		if (!strcmp(fmt, "rgb24"))

-- 
2.39.2


