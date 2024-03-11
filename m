Return-Path: <devicetree+bounces-49812-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E9223877ED3
	for <lists+devicetree@lfdr.de>; Mon, 11 Mar 2024 12:20:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 25F5B1C20434
	for <lists+devicetree@lfdr.de>; Mon, 11 Mar 2024 11:20:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B38083A268;
	Mon, 11 Mar 2024 11:20:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zWjlMrlQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D08CE39AFA
	for <devicetree@vger.kernel.org>; Mon, 11 Mar 2024 11:20:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710156044; cv=none; b=M9oIU2pODXAMKF8iWAG0PruAkmYjMhS1tYCGWzY/qGz/Vg9XPX62Ydw+5sgK1z2BaHIsOUisy80l7lZgI18cOR17DpjdfJFoR5wflSMJsR8UgbvVBpRl3abmmC9ttnNGPszNvOdxJ03LcY0M20zwXZvUOzaIPuG6LR5uu0NI/xE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710156044; c=relaxed/simple;
	bh=Ur4bgiHo+4NL+0zs7qW21KEsP+z03vz9MHkP96MxsJA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=QVa9FAi5UgjBmQInTIArwd+3n+KZFOwoPB1CraZB7yXwGKT75GKHIHN6dCiNXG4dCvp3sYEqtS+xgLrgKHsV/t8yubuXHtuS7frBVya0p1lgeXCdgTHLX0oFEA/MHdESScpHJcIHBqwoA7xiPlz6k7ta3O8QoYmja18trVdDZLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zWjlMrlQ; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2d27184197cso54315331fa.1
        for <devicetree@vger.kernel.org>; Mon, 11 Mar 2024 04:20:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710156041; x=1710760841; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Zef0nzZ2xvfKTTGhbb7RG1PfMMOjv1sjApX9pDJjmRc=;
        b=zWjlMrlQahZQdmGdrNDtAxkXE39SzGZqX/dNQEp5FgD5DDpEEQeT8xqaZUmOLmoI7L
         nXOoSd1CFTWD2cgGhZK15unugOf81Slhvcseh+Xj7W6gBfUhhhRCeRBnr3KKEd3S4/HU
         XTqwKUWjngCmnFFHeLZPgOS+KUMtkPmirQh7xIn43TG+EOR37ymtO3xkW95FVjOSkRFM
         dw2QI+Xo0P6wLCNO41UPoSP+auEM7Gy6hMoJceeUGm3uk179be0vxZbgs8oHnacKCoim
         RarTWJIKJFTcp8wE55iIB/rOm114Y6Xok6Fla33GqDmBz3lodaVavYQDOOlY2UwTTFnf
         eC6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710156041; x=1710760841;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Zef0nzZ2xvfKTTGhbb7RG1PfMMOjv1sjApX9pDJjmRc=;
        b=t2GOso7ioXjokG5lS4lRGUU6jZJiQz91MNK4uyyrIgmj1ICJnjzvk1j4aDkRRcCoXG
         cAeXR4JhXxOwlhD06GrbP6AIeulRjUPwCh3GBK9b4VFi6sCYRdFpUL/JgJ5noyuO7VkJ
         Zu4HH67UNlvOuOQULKUYjPG/qTUUcL70PQleQg4h0Jqq7qz6hpd80nd1kcGXBQd5f726
         iSWowKTaq5RqzBHn55TQxamg3Ih6Q4QAvuPwcYJPY3GyPnIEydB9aj+ZpzMgMaYpOUvd
         sNv1xpJkPfS7glka9XMuY88l0ostFX/+D24pi+Nj6irQp/gq3jTyP8uV+lO4siYDJjH7
         Ca9w==
X-Forwarded-Encrypted: i=1; AJvYcCXpv8QnGju6Jc6RNaVwZzWqPLJF/FO4SUmUEwXkJvVK9xjrbq/FMMW+qDCfQyNH1RP5Fz/0JyF+VQEF1hpdWtHdPzzbLaK0C0CSQA==
X-Gm-Message-State: AOJu0Yz51IMnA2+7xyPMYo6CdMSWVlmuwHiECRnSmTWCWSQS2YuNHGfk
	ic2t0pVWEli9AYum2XMyaU2hF5sNYZQVg25WYDx5K+XxEW3uW6ag6OpiIBabMLs=
X-Google-Smtp-Source: AGHT+IGayv+PpX9zAAHSP8SflubaUb3k6JWZQzkHKZXejF/ylBMmobaETzEOak+dTBGpNFNxaR8l9w==
X-Received: by 2002:a05:651c:1a0e:b0:2d4:49d2:a3d1 with SMTP id by14-20020a05651c1a0e00b002d449d2a3d1mr187992ljb.1.1710156040918;
        Mon, 11 Mar 2024 04:20:40 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id by10-20020a05651c1a0a00b002d2aa0b0d01sm1075200ljb.82.2024.03.11.04.20.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Mar 2024 04:20:40 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 11 Mar 2024 13:20:11 +0200
Subject: [PATCH 03/12] drm/imx: cleanup the imx-drm header
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240311-drm-imx-cleanup-v1-3-e104f05caa51@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1357;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=Ur4bgiHo+4NL+0zs7qW21KEsP+z03vz9MHkP96MxsJA=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBl7ukDYTLRCINK5qAZo9ZeD9v6zVyvNykpsNtd3
 gn8XZDNDTKJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZe7pAwAKCRCLPIo+Aiko
 1dGLCACi2am7a7E0ilLnUCgllinsWaJWythlIwTcuZOie4ikmbjYL4Luka6hmBbxx7mzPZT0T9K
 /v61fhn0eAbp3pvUrj+2Bi7N7fUszoaqRnsYDUqNThrQmNXrL88AHRHWE1KOKbcwVebi+hC6sBO
 dLiKou1b7bVLZiRbw14yy0IHSrbye1n0k9qq7gGgXwpVJHrEpFu7hAr/BlCrzOUCPfbS1MDOB2z
 O+hzrmfY5oZEcT3HZxr6QYeanQaye4pmmFnVEDe7dQUy+pbgxzJ3tNPyzpus3pVYQ6GikNt3bXB
 7kiBHQMJYPpISn0Zi75Uc3XnIq/neudkPfEOQgcI7NSUXFA3
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


