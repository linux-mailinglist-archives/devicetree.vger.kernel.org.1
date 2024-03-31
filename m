Return-Path: <devicetree+bounces-54956-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E1EC8935CF
	for <lists+devicetree@lfdr.de>; Sun, 31 Mar 2024 22:29:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BF84A1C216AA
	for <lists+devicetree@lfdr.de>; Sun, 31 Mar 2024 20:29:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D0A7147C65;
	Sun, 31 Mar 2024 20:29:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CeugPxM8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 764BA1474AF
	for <devicetree@vger.kernel.org>; Sun, 31 Mar 2024 20:29:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711916953; cv=none; b=MY7cgRg4ET0ylnZwV8eiTGnIJe1bA7qaTL/NXVBH6v4/2B4EATALRDRubWY+3MELWr2f/ZJwZ1b6Teqge4Z2XyzuwKdYsNAHvtBVNfijuyDjtj1VesgM4IFydnsiPoZ9bO1dTHauZtiPj+b70CglJUDrbUvRuoIG2l4Jvmc36qw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711916953; c=relaxed/simple;
	bh=Ur4bgiHo+4NL+0zs7qW21KEsP+z03vz9MHkP96MxsJA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=GI/3btkK6STTMx09zB4jksiiygqlpde5h+p+6YM4PHY/RDd12ZWMNU+VsZIkvaeehEsY7Ye57XZ/BxkxQ9OUgTGGLH8CTZIJccBQTEVB6UyK8Hc5XzlBVKcGuVPvRbs4lVtwtBFmGO/H32mtqDf0Py+YZTgRoQyFlwnBxGNVghU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CeugPxM8; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-515a86daf09so4260696e87.3
        for <devicetree@vger.kernel.org>; Sun, 31 Mar 2024 13:29:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711916948; x=1712521748; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Zef0nzZ2xvfKTTGhbb7RG1PfMMOjv1sjApX9pDJjmRc=;
        b=CeugPxM8eAIe7fEKpPhqMO6V02P7AWIaBiyqwTs/G6yFFEwrQkQHBNh4wXZMiMiCSD
         IXpaT4XRvkhgb7jC6cjKMWJIQUs7J4gvmmZR3rEVcQXZMZsrTSz1HS2c6p24WYuBQz0D
         wgCPFlBMpvh3Mz7wda6OmwInQrspwbTExFTxW1dLH4J6OaXCgDD4BYlQVPL48UQ0C6us
         OIcM0ax+Bjp1TlFXU7HgxWT+0P6up7UHjMWX0S5SjSKe/8HNUXMt+my5e5MfpQNvuhzI
         2IvkU8zzVEpk88BNQgems8FJZubF5GY/7t81qMfScj5ET/CZdIZ2Sfplm1x85pv+42EH
         BAvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711916948; x=1712521748;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Zef0nzZ2xvfKTTGhbb7RG1PfMMOjv1sjApX9pDJjmRc=;
        b=IiWGyhedV8TvzSpVidBnVd8RVhcwf05Dh5ynWMKD+iCaXglAH9zj9M5ZD+iqGnY0FM
         eN4NYY2MQoN/AnWHvrQBUxpyfUtGAr4AORVtJV3fRdBiWmXkIrjL6FuYmhvpbmbrGAFE
         NAm26o+YzHWBnPPrc84CCFkpHaH0RP/5bpkaJaB4G7AfNu5qPDzmnqUeWf2WGI6G3E/r
         BdwehdbfuDMOKzLiP0c3Rd3aUVavswTnpm42p1aWdKOXV9kN0c1uLSKeUbktcNEpW787
         lwwMXsd7cluxBcjWiJqTFxgBbLFqwR4WN02Rr8wPDWAIntRT2t9C9Ny6qvIMWwVmLR6K
         3+lg==
X-Forwarded-Encrypted: i=1; AJvYcCV/qlVgwlBzyPWuL+qU+WzODJH5WHyQfGtMCGBY0zrgVPO8iSGGSFvX8cOKdsVWHfPsB19jEp11wmjhVRPZMjgB4U00nKnuR3uG0w==
X-Gm-Message-State: AOJu0YyeIaDJE2tCHhx4GqIbRyHvfcnBuP2U8nwKV66u2QTHg+yNVpkz
	CAODvU4xxrNhbVVU7civre7UmdyyQZTCozf1J9W5I3Ndv3xRs2Vw49WxjbrdeLs=
X-Google-Smtp-Source: AGHT+IEeBeqNuZwIfLQbwY0vtR41HMctXhZ/hlhyqOsgFR3m8enJB1rayNnKs0HiihAbaUaz+EUPCQ==
X-Received: by 2002:ac2:55a3:0:b0:515:cd30:cd4 with SMTP id y3-20020ac255a3000000b00515cd300cd4mr5778415lfg.43.1711916948521;
        Sun, 31 Mar 2024 13:29:08 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id y25-20020a197519000000b00513cfc2a7aesm1237276lfe.71.2024.03.31.13.29.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 Mar 2024 13:29:07 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 31 Mar 2024 23:29:00 +0300
Subject: [PATCH v2 03/12] drm/imx: cleanup the imx-drm header
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240331-drm-imx-cleanup-v2-3-d81c1d1c1026@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1357;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=Ur4bgiHo+4NL+0zs7qW21KEsP+z03vz9MHkP96MxsJA=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmCceOtaRv6AfyisrG+WrNl8dGCI3K0Kw6vglYg
 sqv7jAKSTuJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZgnHjgAKCRCLPIo+Aiko
 1STjCACN1Fcy46Njl3mD9RbVJ9J8+l5TVGpyE/uU2LNja6WGRJwELYrPl7UrBkzUfEKao7AhQ7w
 wKuB2eJNzk+5bi7T7wT3ICVV3mq39cxEK5weLsTGZTKKb9EDMuZwtI0CS2XIPRAHbQg/fPMRDo4
 IvcpTt6sLExVGzjyJ2Wg7TwLT0xHwkrmJY4jLAmzefKAesmiyXwG6X6ubAeGnU8nbO+Gjw0G8Wm
 V03iQeFZ4f8ddwMkS9fH9FsOz7IWFekfRnHyvl3iY0xIk2mLAd+vZOx4IHTOp0S8FrvY3s2foC3
 9BD/zTWcq0kEgalTxeqXaS2F9/s1TBSW+9/XgefKm00Im+1I
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Drop unused defines and obsolete prototypes from the imx-drm.h header.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/imx/ipuv3/imx-drm.h | 12 ------------
 1 file changed, 12 deletions(-)

diff --git a/drivers/gpu/drm/imx/ipuv3/imx-drm.h b/drivers/gpu/drm/imx/ipuv3/imx-drm.h
index e721bebda2bd..e01f026047de 100644
--- a/drivers/gpu/drm/imx/ipuv3/imx-drm.h
+++ b/drivers/gpu/drm/imx/ipuv3/imx-drm.h
@@ -3,14 +3,9 @@
 #define _IMX_DRM_H_
 
 struct device_node;
-struct drm_crtc;
 struct drm_connector;
 struct drm_device;
-struct drm_display_mode;
 struct drm_encoder;
-struct drm_framebuffer;
-struct drm_plane;
-struct platform_device;
 
 struct imx_crtc_state {
 	struct drm_crtc_state			base;
@@ -24,16 +19,9 @@ static inline struct imx_crtc_state *to_imx_crtc_state(struct drm_crtc_state *s)
 {
 	return container_of(s, struct imx_crtc_state, base);
 }
-int imx_drm_init_drm(struct platform_device *pdev,
-		int preferred_bpp);
-int imx_drm_exit_drm(void);
 
 extern struct platform_driver ipu_drm_driver;
 
-void imx_drm_mode_config_init(struct drm_device *drm);
-
-struct drm_gem_dma_object *imx_drm_fb_get_obj(struct drm_framebuffer *fb);
-
 int imx_drm_encoder_parse_of(struct drm_device *drm,
 	struct drm_encoder *encoder, struct device_node *np);
 

-- 
2.39.2


