Return-Path: <devicetree+bounces-54965-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 012E68935DB
	for <lists+devicetree@lfdr.de>; Sun, 31 Mar 2024 22:29:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 889201F22556
	for <lists+devicetree@lfdr.de>; Sun, 31 Mar 2024 20:29:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 070F1148305;
	Sun, 31 Mar 2024 20:29:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EgIVhD2P"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BD1F147C97
	for <devicetree@vger.kernel.org>; Sun, 31 Mar 2024 20:29:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711916958; cv=none; b=SkuIr3IanxmoLw/LpsWLQW9mOCGzfLIBWtAeiiMTqaPT/OqFQlU+oqtfUFf004vLKAbFK4ScGALJHJ5Q14kbUu1GFGCY83mds1uTBJWgcqxYBtHPiwzZaOZ4FaHTpvuNcGe5g9hMCQcQ0iFazFdxaqPJx4dABiCPPmQvrsgnuZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711916958; c=relaxed/simple;
	bh=5YQu6iei1O3icFERDmvk1l0kTnnJ0t2qf5um+94Fdg0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kn/+Ux/+sdHl2yxNSOhHYOnV5hbkUja3+JTEUxX3MDVDVfiDqfhDEWaxo2dM7ugZRjMIIyFEQ/ug6/6wBQKU7fu1JImx4fhVRTOuoyCxUVKWDCVS6tHGwE1hC6mGN/AYsKya6/u17zFmK9vhUceHR/PtIpmKyl3bpOYeCekowdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EgIVhD2P; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-513d23be0b6so3821737e87.0
        for <devicetree@vger.kernel.org>; Sun, 31 Mar 2024 13:29:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711916955; x=1712521755; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+v9GTIZDIAWX08FzKTARGqVQVzeSJaMCtOVkVitqgmc=;
        b=EgIVhD2PpM7aKKVZSAi7fFRx2KQPKzv/GKE5bUIpb/NeQE0j5zIFGrJilaYq4VgmQv
         fCvnjztVctZaAa6t0STGxvlxRSmqb+80E+bE4m7cUAKd2SxoSyEjtgWrBJd9d85Q2L9o
         EWNZICR9CZvNgZn9lyfnYdxLSGKxP7RfK4G84M42ZicTKIWXZ9iUyKPwwlSTMM9n5gyt
         vcrCK8JeDSBOl8QGSvcdiXx1cEjR/Dt/coO2Idx3EnqdiLpckfPeAA6qbTRo2/GPQEGQ
         xlqBZUtqABotRPo7s3VoEnxsgste4OyoNuDMshCewCNchTZ+TbJ5SHfNBja9DE5Uv2eo
         ULoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711916955; x=1712521755;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+v9GTIZDIAWX08FzKTARGqVQVzeSJaMCtOVkVitqgmc=;
        b=Mflrl/+hSV89onNdmHmRDsajjTaHco1uU2aUyySdb53XU2Wr5abJpxrm8CRjFxXjVX
         Eu7k0psP7TUm+bneMtANa8t4VCrj227mEhhBJRxVuZWl6Owwo3psQuxO66ZE72JNV0E/
         8ZxUdakLpLcT33bx/kieo4nU/ZvC8yZDASY2q4LNX2pNJ8CDoXWqVJc1K7NK0ljAzcu5
         FJh3BlO7gMlJSgk0p5XSKV75mOv125/66lARYZyX+mYR8GfX9lBrSXZ3W6XLJqCm3LIc
         QzJjAxpkN4edCQQduHUiWdK8Kz5nKn1K24n78tEC5SAONgazQaxAuJbeFEEvauWERJbP
         IHbQ==
X-Forwarded-Encrypted: i=1; AJvYcCXiLOP+CdheydRA9gISg+cE5n2+fLWU0BV1MbpjUhzOD9xVzfddnmQJlJXCm1zfZCAkAwRn831GsS2ZqfIVZnhOvh7GdBBtIikd0g==
X-Gm-Message-State: AOJu0YxG1TjJ2GdMO5/VM7dwFikfZUtkahm6VESv9Ow3J+jnQbmm4NBl
	YgmxHstOBfDgFnPV8/5l4OkZdgBPLN1Rxw5KsDI3pB9fhh8TqtNQMKUJNqDyNQ0=
X-Google-Smtp-Source: AGHT+IE3dsaZsU0ynBFh7eT7zhvlqvKfwqYNj4h+qdo+iuTj8Q2UMpieGDvwPHTYdOFd6ciMJdrZ9A==
X-Received: by 2002:ac2:51a5:0:b0:515:c615:ce23 with SMTP id f5-20020ac251a5000000b00515c615ce23mr5780599lfk.22.1711916955358;
        Sun, 31 Mar 2024 13:29:15 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id y25-20020a197519000000b00513cfc2a7aesm1237276lfe.71.2024.03.31.13.29.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 Mar 2024 13:29:15 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 31 Mar 2024 23:29:09 +0300
Subject: [PATCH v2 12/12] drm/imx: move imx_drm_connector_destroy to
 imx-tve
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240331-drm-imx-cleanup-v2-12-d81c1d1c1026@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2503;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=5YQu6iei1O3icFERDmvk1l0kTnnJ0t2qf5um+94Fdg0=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmCceQDf+olRh9QfALPc+aBKfyzH5lo75neZO7G
 9G/c0G65EuJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZgnHkAAKCRCLPIo+Aiko
 1a3kB/9PCf+qZk6BU9uNm4Mq6b6l9aQ1snWLpd5Ocn28EkiTCxoVc7+x/jVRyrbJOf4CizSpcN4
 ahurpK9t+VYswcda71cQTvEEn0yhiUyWAuDObsaFkm5tzVSAuS91s1JFeU+ya3lffWXzV6RqgGY
 CLSiOEl9XV1T6ncjZPjgioIMS7a+2QnMvzCaobKIqdp58Ku/IyhAdOk2CqnZEd6XjG1dNoeZacb
 qbGt9CrEp7uvvf7znqrphQ7pFAu1EjhOBPJqCLV8wJgJsgAwlOqyGLzVnjkyvEJF/gJp46VRISr
 C813XA47F0iXhSoBO/vRA3tmI3DiCh+Gb88qe3xGNAFnNCSn
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
index b49bddb85535..a5118504b522 100644
--- a/drivers/gpu/drm/imx/ipuv3/imx-tve.c
+++ b/drivers/gpu/drm/imx/ipuv3/imx-tve.c
@@ -307,9 +307,15 @@ static int imx_tve_atomic_check(struct drm_encoder *encoder,
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


