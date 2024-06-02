Return-Path: <devicetree+bounces-71580-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E48C8D752C
	for <lists+devicetree@lfdr.de>; Sun,  2 Jun 2024 14:05:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 66A70281D7E
	for <lists+devicetree@lfdr.de>; Sun,  2 Jun 2024 12:05:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B9943A1DC;
	Sun,  2 Jun 2024 12:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PTsuvmVK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96A7F381B9
	for <devicetree@vger.kernel.org>; Sun,  2 Jun 2024 12:04:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717329894; cv=none; b=RaqNu+NyoTNo3aod5hVwkG41ZUTNnHMo3IrPerM8pS9JtwrWqGH2+YOjWcXGPRM7dKX38Dl4QgZJRu9CwTjZbGyoG86e9lMJfqERdw2xUrWtwnaRknjtiKfLwtga7sP48x2zuksL3+27M/Gn2w+pUPwsuc76syHoDAzwTOnhgi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717329894; c=relaxed/simple;
	bh=l7M3G39iu9nNrCk8sJLPBZk54Nd8nGO4KLe4Ou6kT5o=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Kx8WrGjJj+NGrs8AHAlsN0pxwfMCZCE5rL1peIlgfFHkC3V/O3dy2Vz4JQk0+/R73H2VJAq5pivXgp5SgackkbrMp2IE71MWouK0d8Y0yATc9QzJ22cIFqya0x6wZ2BIIexV7SqwwBPD/HS5G0IcgqD5ZUXLwdMYApZV0BRvQPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PTsuvmVK; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-52b962c4bb6so777392e87.3
        for <devicetree@vger.kernel.org>; Sun, 02 Jun 2024 05:04:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717329891; x=1717934691; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ahx0B7IRhOU2KryLmin5A3x+RBjSRe40YtgpLFgn8h8=;
        b=PTsuvmVKfuKFn6USQcYKXRUDeFA2qNq+kFn8zQD8nuCfwwNLNbr8TkPxZfa+ofqQEV
         IVeTlcOwNeX9BUti9h+8xQazxQJXcQOmbUOLRqwJvAlVh0o87KkxPoTy5zVPAQ6AyjDb
         tQKvDQ8lhSKlRhs8LNehFgnJEyTh7hu9J6dMoV4nmoWpS9r6x/smTZfKHSDxuMavmcgv
         KHtg0lIDyrfd87WR8GO0c6oeYrelgEUjEPUw/ZxqM8ZPwDRxtz62eicy1SGQ0JLqWItF
         qV06tIKqv5uXD/RB443ysxb0262gJr1RDd5FlhhbBiFovMo3ElLZlpdJ+yCPQ4rB442x
         iTVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717329891; x=1717934691;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ahx0B7IRhOU2KryLmin5A3x+RBjSRe40YtgpLFgn8h8=;
        b=Nq8R82OWOTulZvgEgyS435K9IYcCGJtTqxFlA3qjOow7Js18h3TvIXJU2W3lyRgD9A
         Szhb76vr9N3Iexn2fzDlTrMXJiU9ajN1wlr7202N9qZqCUcx5pJ5oGKv9wyCIXD3dDLl
         YTWcOFeyJzXsSpAf2oriaX6O+n3ZbMTYDRMV1z1T2fSfDncr2hxoGOrvcaJe5IGz08R0
         4GpurrUjH+fW1WrH7GflP5uLu0A0AAEJK7t0AI2K+j72q60tTd5VDMhzO8OzjJEHRSKj
         0Puq5Vt69nBGClUEe+K/dn2Gln5X4qrbh1N6T5Ae+3YVGoxt9ZjpJmMVq+DoOztRUBcW
         g51Q==
X-Forwarded-Encrypted: i=1; AJvYcCUKiqeG+lWEkL6old9fYm1Z5ww77QPAyOfWtjqCrl3br11XJKnF5C4DUFK5cNBZAD09AftDPikMkhlpaCNr0o1+fkESoBkgN9yGlw==
X-Gm-Message-State: AOJu0YzFo0C6CwYC7TqEc0IG/myI9+0z5cbASzTADDBh4NzGVko9rRp/
	o4zVvWxt5ZLZqttg+b9cG02adzseQIi5Ot/zvIr0KpdBXURwDpu14sRnkkIvElQ=
X-Google-Smtp-Source: AGHT+IE9DlkDZJ/q6anZcEZCR4WzqVIVNYRa7q0Ns7NW+snWcKddBdYHt8pvqycOhI6UxRrnqrZ28A==
X-Received: by 2002:a19:f603:0:b0:52a:e7c7:4ce6 with SMTP id 2adb3069b0e04-52b895633dbmr5188478e87.39.1717329890815;
        Sun, 02 Jun 2024 05:04:50 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52b8b56867fsm759398e87.44.2024.06.02.05.04.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Jun 2024 05:04:50 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 02 Jun 2024 15:04:45 +0300
Subject: [PATCH v3 05/12] drm/imx: ldb: drop custom EDID support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240602-drm-imx-cleanup-v3-5-e549e2a43100@linaro.org>
References: <20240602-drm-imx-cleanup-v3-0-e549e2a43100@linaro.org>
In-Reply-To: <20240602-drm-imx-cleanup-v3-0-e549e2a43100@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2531;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=l7M3G39iu9nNrCk8sJLPBZk54Nd8nGO4KLe4Ou6kT5o=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmXF/dci5cApIh4CbjmDaF29E9SsPPCAy9IC1BP
 ookreVYSv6JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZlxf3QAKCRCLPIo+Aiko
 1cwKB/4xCsYHUgD+LgO7CvPxVhR6dSFIH9rYipIXrsQtH3yVtnXKxqJVgzCEVAa05JbbXYH4ozm
 RGrPvgpfVs5QGXj/4+MKxODCFxUFgqKcXQVdlh7exxMGFAAXoc1FMl7K7Kscd59HZM9ALmd95jO
 nkRvO0T+JiSJhIy4mucD6HAXICDqQ9iH64hAwCiC+og87UzNN4W4uWK+Qn5WpFYsn9h9eCL0GR5
 8Aa0ZHfyxbhjEw4Tpo5oN3TLUtg/FfUdILUEkXtOi4Dzy8tLxkjc7eP84g4JYJrwZytzOUmXqlo
 cj1OsANGFG1AJ4XbaaYw73OVV6ibGtMWOB3FKoFa7K2w3JKK
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Bindings for the imx-ldb never allowed specifying the EDID in DT. None
of the existing DT files use it. Drop it now in favour of using debugfs
overrides or the drm.edid_firmware support.

Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/imx/ipuv3/imx-ldb.c | 29 +++++++++++------------------
 1 file changed, 11 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/imx/ipuv3/imx-ldb.c b/drivers/gpu/drm/imx/ipuv3/imx-ldb.c
index 793dfb1a3ed0..1924d8921c62 100644
--- a/drivers/gpu/drm/imx/ipuv3/imx-ldb.c
+++ b/drivers/gpu/drm/imx/ipuv3/imx-ldb.c
@@ -72,7 +72,6 @@ struct imx_ldb_channel {
 	struct device_node *child;
 	struct i2c_adapter *ddc;
 	int chno;
-	const struct drm_edid *drm_edid;
 	struct drm_display_mode mode;
 	int mode_valid;
 	u32 bus_format;
@@ -142,14 +141,17 @@ static int imx_ldb_connector_get_modes(struct drm_connector *connector)
 	if (num_modes > 0)
 		return num_modes;
 
-	if (!imx_ldb_ch->drm_edid && imx_ldb_ch->ddc) {
-		imx_ldb_ch->drm_edid = drm_edid_read_ddc(connector,
-							 imx_ldb_ch->ddc);
-		drm_edid_connector_update(connector, imx_ldb_ch->drm_edid);
-	}
+	if (imx_ldb_ch->ddc) {
+		const struct drm_edid *edid = drm_edid_read_ddc(connector,
+								imx_ldb_ch->ddc);
 
-	if (imx_ldb_ch->drm_edid)
-		num_modes = drm_edid_connector_add_modes(connector);
+		if (edid) {
+			drm_edid_connector_update(connector, edid);
+			drm_edid_free(edid);
+
+			return drm_edid_connector_add_modes(connector);
+		}
+	}
 
 	if (imx_ldb_ch->mode_valid) {
 		struct drm_display_mode *mode;
@@ -566,18 +568,10 @@ static int imx_ldb_panel_ddc(struct device *dev,
 	}
 
 	if (!channel->ddc) {
-		const void *edidp;
-		int edid_len;
-
 		/* if no DDC available, fallback to hardcoded EDID */
 		dev_dbg(dev, "no ddc available\n");
 
-		edidp = of_get_property(child, "edid", &edid_len);
-		if (edidp) {
-			channel->drm_edid = drm_edid_alloc(edidp, edid_len);
-			if (!channel->drm_edid)
-				return -ENOMEM;
-		} else if (!channel->panel) {
+		if (!channel->panel) {
 			/* fallback to display-timings node */
 			ret = of_get_drm_display_mode(child,
 						      &channel->mode,
@@ -744,7 +738,6 @@ static void imx_ldb_remove(struct platform_device *pdev)
 	for (i = 0; i < 2; i++) {
 		struct imx_ldb_channel *channel = &imx_ldb->channel[i];
 
-		drm_edid_free(channel->drm_edid);
 		i2c_put_adapter(channel->ddc);
 	}
 

-- 
2.39.2


