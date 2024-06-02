Return-Path: <devicetree+bounces-71587-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AE7A68D7537
	for <lists+devicetree@lfdr.de>; Sun,  2 Jun 2024 14:05:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C638E1C20ED6
	for <lists+devicetree@lfdr.de>; Sun,  2 Jun 2024 12:05:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D129C39FED;
	Sun,  2 Jun 2024 12:04:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jg2usinx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2758D381B8
	for <devicetree@vger.kernel.org>; Sun,  2 Jun 2024 12:04:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717329899; cv=none; b=cW52LSuXwkTwtFUS0tWRPXtQefp1q0X1vsw2MbwL3Z9HHBpWdKqZFO7bBmIIJYyQ+/+c3ng+136MhSxkl9RWdQv4to3ZUALjh5Q5A2jt/ETJYNAWmeu842pj9kVnO5Rf3VVHzVAYxNZMSU1LnuiRR3fjerlrzQWCqfYoNwIzi9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717329899; c=relaxed/simple;
	bh=h/DSMM9BfsUckdlfOnVl0fUleOjgfbtfRzHBaAfH+mc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=AMbPeyQtzfw0KL22W/wWB78EGOM6PVjuhPWAV+kzIZwtwHVDZiVSgWkRFwnwJwX2I3dyG/SSW8RkVYj1pKJikzJrzm/cmrnwP9Hr4CflZdmZoyrIsXN45/tySkFbmt+GE8RtSIzqALu25I9p7KIpxsvrg+NFFfy1xsY+Czu30wM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jg2usinx; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-52b950aa47bso861468e87.1
        for <devicetree@vger.kernel.org>; Sun, 02 Jun 2024 05:04:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717329896; x=1717934696; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kNuDl566fdESfLAQYfAX73LiPJqclp33YW6YrFo8/hQ=;
        b=jg2usinxPxyv3QSDa0EcrTKrI4BweaTsOID6Qzaw9Rk9Y1LKrI8JfWnovvaHkdmRVB
         7/J2qur8jGTO17xnZPwiPoVlJCoKw3FNUA1yeyN6fBJoFS9J/N1gKYYbUwVA+v5r8Va6
         v0QAznYOOC6dwcD3ydhe9iFtr1tkKUFPOrOZXYd/4Bo4SvDsOomNS35MoOKWI/oX9Z2a
         5PNeTRGJkLKLU/ND/VeeKnuNRgt55BLi4Xye7qk1Ehm9bGLalHeZ/Zj2XDBsqGrQehgS
         wg/gBAMDHKvMRH9I4eYpHt1aKayDKrZ//epmE+AuYlbCZCwvR6g+N0qOXNMcReFhP6Ym
         4QIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717329896; x=1717934696;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kNuDl566fdESfLAQYfAX73LiPJqclp33YW6YrFo8/hQ=;
        b=WvP2XjidVyFQSJqUzKMM+QKhZPN1RQyhTtToYVslj0TaFPEywPpqJNz+XpO5n3AgLo
         1InPY04XkqR64soHvF1oKjc9SuOWBMr5hBsXdhaXlZCwG9OkxMDEX0AkGx51o6L93/mC
         2QRdZtkI+nh2Nq4S7uL2RwAFpXa4BNJmgZ/QyCuomYZmSxebuervwjnwOplYU3KFIPmc
         jXTj2DbcfnD1CEINj8pupVfn/FzjADxc5YhxlCWBPA5ehV5bVShPVjCOuANSAH6nc67T
         Fk/vx4x3HBHwi+lrqU5wqtkxys/fSqKVFHB4tYjSLZywdPiML4xL6buLz9eZbmK/mYpx
         FW/A==
X-Forwarded-Encrypted: i=1; AJvYcCVD7X46Nei4LQwki9+zGml74VzyGQBNvcjzGnnfjyOpdyR0jlA+DZz3s0QSZysQRD2Lib5IQk16fSLqlfVYW5agC2M9neDvSC64JA==
X-Gm-Message-State: AOJu0Yw3FDw0ilU3JVz6jO1oiP/4jWapYQW8OEvI9DY8F9aKBXmPX/vY
	AE1nMZa1F8udr3IZMkC4kb7elQIUyLPB0bPVbUml8ziDE7wRg+use6p6Xzcpya0=
X-Google-Smtp-Source: AGHT+IEFQgWpWrVek9sgb57OqXvq4Yl2GmvGbIbFNiQhz8GQhgLZZKzZdXR7VkMjAFTMyvzTXG7Rfw==
X-Received: by 2002:a19:c514:0:b0:523:70db:7a0f with SMTP id 2adb3069b0e04-52b8958b9fdmr4091009e87.8.1717329896464;
        Sun, 02 Jun 2024 05:04:56 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52b8b56867fsm759398e87.44.2024.06.02.05.04.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Jun 2024 05:04:55 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 02 Jun 2024 15:04:52 +0300
Subject: [PATCH v3 12/12] drm/imx: move imx_drm_connector_destroy to
 imx-tve
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240602-drm-imx-cleanup-v3-12-e549e2a43100@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2503;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=h/DSMM9BfsUckdlfOnVl0fUleOjgfbtfRzHBaAfH+mc=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmXF/eWV2GMqKPP+JRWmUQkel1cF728TylDcmgO
 0eEmDycmaaJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZlxf3gAKCRCLPIo+Aiko
 1dhZCACRu+PPllOgalpri1YjKo6EeMiZwJWGWbZB7vOG0XyWYSRR5eOJXBxq7Dj/kYq1tegFmZ3
 sXQtiS/j7TCmbhCYqvEG+QiVIv0VxmNuCjq9qOFsMBTD6/FUpIAzVeNrhl5Qy7mrMXjC1M6bHZ+
 v6/8k3KX4MHbqfZRU5Dpp2zbGsEAc2rTMc1oDNLCYVtEGVj6iBBwBREE39J09ROUeymKQxN9zyL
 eUrLTC+oNnRZxVOhJCFH3vqAPavR2QAJ0efqynRhJ+JKGykNLo0kYI/5rrBb/NVGncTm86QrMCI
 xXuY1XxZTkkPPdY/sYjc+KccNcaJHNxc/1mFxsBUvQSY06WQ
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

The imx-tve driver is the only remaining user of
imx_drm_connector_destroy(). Move the function to imx-tve.c

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/imx/ipuv3/imx-drm-core.c | 7 -------
 drivers/gpu/drm/imx/ipuv3/imx-drm.h      | 2 --
 drivers/gpu/drm/imx/ipuv3/imx-tve.c      | 8 +++++++-
 3 files changed, 7 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/imx/ipuv3/imx-drm-core.c b/drivers/gpu/drm/imx/ipuv3/imx-drm-core.c
index 4cfabcf7375a..189d395349b8 100644
--- a/drivers/gpu/drm/imx/ipuv3/imx-drm-core.c
+++ b/drivers/gpu/drm/imx/ipuv3/imx-drm-core.c
@@ -34,13 +34,6 @@ module_param(legacyfb_depth, int, 0444);
 
 DEFINE_DRM_GEM_DMA_FOPS(imx_drm_driver_fops);
 
-void imx_drm_connector_destroy(struct drm_connector *connector)
-{
-	drm_connector_unregister(connector);
-	drm_connector_cleanup(connector);
-}
-EXPORT_SYMBOL_GPL(imx_drm_connector_destroy);
-
 static int imx_drm_atomic_check(struct drm_device *dev,
 				struct drm_atomic_state *state)
 {
diff --git a/drivers/gpu/drm/imx/ipuv3/imx-drm.h b/drivers/gpu/drm/imx/ipuv3/imx-drm.h
index e01f026047de..0c85bf83ffbf 100644
--- a/drivers/gpu/drm/imx/ipuv3/imx-drm.h
+++ b/drivers/gpu/drm/imx/ipuv3/imx-drm.h
@@ -25,8 +25,6 @@ extern struct platform_driver ipu_drm_driver;
 int imx_drm_encoder_parse_of(struct drm_device *drm,
 	struct drm_encoder *encoder, struct device_node *np);
 
-void imx_drm_connector_destroy(struct drm_connector *connector);
-
 int ipu_planes_assign_pre(struct drm_device *dev,
 			  struct drm_atomic_state *state);
 
diff --git a/drivers/gpu/drm/imx/ipuv3/imx-tve.c b/drivers/gpu/drm/imx/ipuv3/imx-tve.c
index 29f494bfff67..d46d07d25f51 100644
--- a/drivers/gpu/drm/imx/ipuv3/imx-tve.c
+++ b/drivers/gpu/drm/imx/ipuv3/imx-tve.c
@@ -305,9 +305,15 @@ static int imx_tve_atomic_check(struct drm_encoder *encoder,
 	return 0;
 }
 
+static void imx_tve_connector_destroy(struct drm_connector *connector)
+{
+	drm_connector_unregister(connector);
+	drm_connector_cleanup(connector);
+}
+
 static const struct drm_connector_funcs imx_tve_connector_funcs = {
 	.fill_modes = drm_helper_probe_single_connector_modes,
-	.destroy = imx_drm_connector_destroy,
+	.destroy = imx_tve_connector_destroy,
 	.reset = drm_atomic_helper_connector_reset,
 	.atomic_duplicate_state = drm_atomic_helper_connector_duplicate_state,
 	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,

-- 
2.39.2


