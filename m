Return-Path: <devicetree+bounces-25025-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FA56811F65
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 20:51:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7AEEA1C211BB
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 19:51:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 315DE7E547;
	Wed, 13 Dec 2023 19:51:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cQcwtWuJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D4098CF;
	Wed, 13 Dec 2023 11:51:33 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-40c48d7a7a7so32030335e9.3;
        Wed, 13 Dec 2023 11:51:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702497092; x=1703101892; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SDq2fLVuR6T1GPARTMOS6b3H20znzfoIBUzVKBtShU4=;
        b=cQcwtWuJFdo2AMU4ZfYJkUhL5dVKd0BHwpSqdbSMCcIObydfBqqMLJ73pTJaZ/7KKr
         W+hhEuVfwl/UO5jdNNaADlC4HiqOxUHErl9UuaQbZDr63sKlOtRv7RA2zcGbhpN+wyXJ
         TWUjGz5M+KdM5qY0p5kSbJZg/352o1q3BaB1vXItRXu3g6T9MWRiC8yJvqzgk1qVEnKy
         0lbvQYFfRhrW77M6nB5um7zWK1lfzlKBGr7NZE/H5bpyVMsajXBGiXPiqVXFzd9yrApD
         3NiqEogxBDpZBPo3KAlkgJJBRki5T0varE07TJlKJJkPFDX3UY8J33yFbnQ4N7g9DOKn
         2tZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702497092; x=1703101892;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SDq2fLVuR6T1GPARTMOS6b3H20znzfoIBUzVKBtShU4=;
        b=eB5HtKRYf/4D+lxujGESz7NlcqEcP1qInR8Jz4q9c7mYV/Uze1iSEmGo/bXs1H8xs+
         B8+v0+pGiPea5TIA1dLBVYUbg66CMnq+VjzxdTMzcOo7gQ4Os5lhmHA0thoIXAW7nres
         wO6Z9fOYp59WVRmn+8Aw66qHyr00ZUvmp9+dX6n0jrtxSzYRxQz4P8p9cXhxysE+Q8/p
         JoGwqkipjNmuknIJlXYcCAZpOlSSJY8u5uapWVElFRgy8tPEJnhR0yrlz6ener7Mv9gJ
         0Hn59lq8ew95drDii03SoLCFC0J7HU+DRqt5Luyz9wyKcsnfIaBzOwGHsnltEF0Zu92f
         qr5w==
X-Gm-Message-State: AOJu0Ywm+g2B0bzQV1GwipnPejRy/m/qKDPnUYBEJzydZQKfoQCb+0HH
	GFixpKMtxAx4ukoL8AzrZA==
X-Google-Smtp-Source: AGHT+IELl0hfWLjSptTvXIEl3IsyO0H+O35wlMRi+ihqAK0nI8r+NnvvoiYtiu2tVq5so95DtF4X5Q==
X-Received: by 2002:a05:600c:4f48:b0:40c:426b:fd2d with SMTP id m8-20020a05600c4f4800b0040c426bfd2dmr3758370wmq.102.1702497092225;
        Wed, 13 Dec 2023 11:51:32 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:92dc:8b1c:e01c:b93c])
        by smtp.gmail.com with ESMTPSA id fm14-20020a05600c0c0e00b00407b93d8085sm24050698wmb.27.2023.12.13.11.51.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Dec 2023 11:51:32 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andyshrk@163.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>
Cc: David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH 08/11] drm/rockchip: inno_hdmi: Drop custom fill_modes hook
Date: Wed, 13 Dec 2023 20:51:22 +0100
Message-ID: <20231213195125.212923-9-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231213195125.212923-1-knaerzche@gmail.com>
References: <20231213195125.212923-1-knaerzche@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Now that we have proper pixelclock-based validation we can drop the
custom fill_modes hook.
CRTC size validation for the display controller has been added with
Commit 8e140cb60270 ("drm/rockchip: vop: limit maximum resolution to
hardware capabilities")

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 drivers/gpu/drm/rockchip/inno_hdmi.c | 9 +--------
 1 file changed, 1 insertion(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index 2f839ff31c1c..84520da8c995 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -696,13 +696,6 @@ inno_hdmi_connector_mode_valid(struct drm_connector *connector,
 	return inno_hdmi_mode_valid(hdmi, mode);
 }
 
-static int
-inno_hdmi_probe_single_connector_modes(struct drm_connector *connector,
-				       uint32_t maxX, uint32_t maxY)
-{
-	return drm_helper_probe_single_connector_modes(connector, 1920, 1080);
-}
-
 static void inno_hdmi_connector_destroy(struct drm_connector *connector)
 {
 	drm_connector_unregister(connector);
@@ -710,7 +703,7 @@ static void inno_hdmi_connector_destroy(struct drm_connector *connector)
 }
 
 static const struct drm_connector_funcs inno_hdmi_connector_funcs = {
-	.fill_modes = inno_hdmi_probe_single_connector_modes,
+	.fill_modes = drm_helper_probe_single_connector_modes,
 	.detect = inno_hdmi_connector_detect,
 	.destroy = inno_hdmi_connector_destroy,
 	.reset = drm_atomic_helper_connector_reset,
-- 
2.43.0


