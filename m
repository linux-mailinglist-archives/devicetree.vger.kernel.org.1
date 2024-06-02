Return-Path: <devicetree+bounces-71578-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C6D338D752F
	for <lists+devicetree@lfdr.de>; Sun,  2 Jun 2024 14:05:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 39A35B21598
	for <lists+devicetree@lfdr.de>; Sun,  2 Jun 2024 12:04:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DE3B39FED;
	Sun,  2 Jun 2024 12:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VZ4gUaT0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FCDF1E52C
	for <devicetree@vger.kernel.org>; Sun,  2 Jun 2024 12:04:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717329892; cv=none; b=r2JpjecachVyLGbAeXbMPlfnghGHA8HRPF/IeP9rEwUpeS1hrFD4AVIp0DAaUXCO73wly3ionMz977njj851mmD3SMgvppeionc64bnmKBe7s9JhC6dbvDk13RyY5TF7wGg9hd9b2J3/ZGkeLpgZ/c5F8JHOpACzKOcretbefyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717329892; c=relaxed/simple;
	bh=ZDw9je94QoyosO0168STtseYxQQ179pVpV6GiETvE+4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=fBeLfw0N4N394wmnN/5wH/U0ABN+/adfiavM43VOIs7ZRlKL+QVdsTpw+FCbYzpY1gaAwUFfPAcSriFAVjrMpq+QuX4I9S+KEym1+gqCSamvL1oL6n3WLVgSuoN2xdqh3YaesEdZjg+YK5EesMEP3XsJKr77TYL+slzhh8B0DK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VZ4gUaT0; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-52b78ef397bso3409619e87.0
        for <devicetree@vger.kernel.org>; Sun, 02 Jun 2024 05:04:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717329889; x=1717934689; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nxc4vHH87Y1eSO87AR835I7/5WLCpgJXyFLj/BGpZY0=;
        b=VZ4gUaT0c2/9AhLCkxMbKu16bE9otD6Z7ZaIKdBsxK+0fnlhAbsIAzjwp6eY8LBWKA
         orGzLEV59W20RYqaHQHCQVUfwvadWhGiW5PF77/8VhK0z6erHi3w0c+hvhpccHoznY5Y
         tTZOOtjz6tQiA5KovU4GMPPu3U41WU23W19GTKJEvmcYloQcpOifqqteWdAoY/M88vZK
         ivr5nXC6+nV4JQJZu0ez5kGD4ZZaf6xU/3GqhWR2wQVTM/v1N3NwjWhR8yg3MfTc9IDi
         FuBJ/3NPyR0p1feQVhR6n8kqGuDkJtSMJSV+xxyJmrzwTSkfMxM6EPxWftTOAFcm8H+o
         ia6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717329889; x=1717934689;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nxc4vHH87Y1eSO87AR835I7/5WLCpgJXyFLj/BGpZY0=;
        b=gXuiI6FqDBVhakvgl9tuHpMbmyX7qXQw88QqEm9k0uuAdMLuWcksYhXwPwq6RUSLnd
         y+qzDXmHoXadgpjMsFGZCuVDYpEG6sfGIYCO9XQD8Hjg6stbGXTHMyNjnGfua+MphUaQ
         s5x/mCYPQ6KLjxmv0vP2uW3eZa0QEm7HrwiZOBWQ8LlvbEfcpyne17+VuYCZPCCPCEO4
         2jK84KWA6Vc8yT6OhzXuzNoxtK8M3dwGIjyMtT3weyShNGDUgwh/fsZEIERjRtR0rDru
         TBHs7fel2mfbw0jusx9FgwcREiHO7bN/lgOtDHjtVllX+9BzLnXMJd/tyQX0XN+xviXH
         D39A==
X-Forwarded-Encrypted: i=1; AJvYcCX8j0qDBP8zrmqaewTxdkMmTtOl/oOe83co+jUWqf6ZmM/4pH8Eebtpe+U/h1BgYHnxGTgVH4IVdwovsVbcc06U13d+3AUcLabB5w==
X-Gm-Message-State: AOJu0YzmxVnHmD6KReDPGMeo0fPFicEt39zjNjmVLYeVXWbLqIEUcCxg
	VxGm50b59UOG5JBVlCHMV/sxHHWo0T/y4fWJf05a1vuTlOkQCsGxgmChHJ8MiS0=
X-Google-Smtp-Source: AGHT+IFPOiv0yb9NenXs61eeyl+FTzUia9VO7YGHEV3B4cyF+m7yIyCA+pulo20IEMCgPXGBKi/V/A==
X-Received: by 2002:a05:6512:3d20:b0:52b:963d:277c with SMTP id 2adb3069b0e04-52b963d2864mr477027e87.33.1717329889449;
        Sun, 02 Jun 2024 05:04:49 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52b8b56867fsm759398e87.44.2024.06.02.05.04.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Jun 2024 05:04:48 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 02 Jun 2024 15:04:43 +0300
Subject: [PATCH v3 03/12] drm/imx: cleanup the imx-drm header
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240602-drm-imx-cleanup-v3-3-e549e2a43100@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1410;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=ZDw9je94QoyosO0168STtseYxQQ179pVpV6GiETvE+4=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmXF/c9m9P02PzAYv+Hvngg0pK/UDBTwhhmG1zr
 6YIzCrb9vGJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZlxf3AAKCRCLPIo+Aiko
 1fjzCACVJAOnM38OBMjesvSYWvhCttUEqRnqa1cwq4nlLesJDTMZ2OUTNhRtlYVXOyjfQdPCZoY
 sFg6k3yFt2WWYJBGVbYAc3fuchDTgb0HEb98vxj41NM9rI7BNJSWHJlLr6XS7RGIK7LtSQ9vpcj
 ESAFP3iCtlpbs+a0als6qX4eWKJZOLwj8uq1Lt4aQSHCSo9e4RyTzhFKMcp9PsbQWyhhWQLek1u
 ABZyZLlg4UbyRcy0FlQAFgPnpEw6Y5h4FovYheyJU3SjH1hxE5Ve5sHgaXMJ8/nqFD0scxw+dML
 s3IqxYlKtclaMDhG8+vC5UlutqEjdAQVKc/YRM0Y6WMrzg/l
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Drop unused defines and obsolete prototypes from the imx-drm.h header.

Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>
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


