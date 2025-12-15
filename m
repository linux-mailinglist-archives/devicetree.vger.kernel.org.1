Return-Path: <devicetree+bounces-246502-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 846F3CBD427
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 10:48:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 0F453300E4F3
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 09:47:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C8E9314B66;
	Mon, 15 Dec 2025 09:47:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RT+E+ZT4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85AEC2BD59C
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 09:47:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765792067; cv=none; b=uz0ZzrlRrH4HJlG+mD8Jjt+tag71WEU1P8vtojWLbZxg4ijfIOWqU4/KvqgF9DS2F8YsiiIYX1kLSBJaXRlUFlYN7jnoi1Cio8aNsh1/nH1kI2HDjgIUiBzxIckuw0R1my0F6P6zjXxNSAGW5yuE4bNzG3G41KbEOjtfRLTej74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765792067; c=relaxed/simple;
	bh=j1XkYhWQ1IN9JL+Wb1Eozaof9eyPZLQtwZeEnUcZ+0s=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=MFldA1eJgPw05vQoSbwa/gEaNqNz5MySnla8D9STVFdv4Z71Ji3POMYtU0HF98cnSZ2kwN7mY56QZ1D5HRPiP3t7ZsvbxuYY8GgLZAuxXNqNPEATXoxSk+PVqogg3Y4lAIC3ggbWG4DpwOU8miPkQDaQyfVE1D4a5Tj5Q3gh8Nw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RT+E+ZT4; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-59581e32163so3711213e87.1
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 01:47:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765792064; x=1766396864; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SDgTtvl+RBHpILPhZonQKwu9nxIYlCiGLZNaksqSUeE=;
        b=RT+E+ZT4c4kv819SHK3cp/HbU/mOGz0Ubc51n7SACQgHulsFz+wj0jm153MrVrBVZt
         lPlFBbaKw/INddpLEbjxzBEd5bOHqp98vPYNdF8gy7EA4o4IWB6MmdpzIDsXHrZczvR9
         Lb7yYNJRSLI7Fh/oytmEJJgxpIM810oKV8z2LH4sp1z+r/xE9BSBqWRmvbTRiiKcdTa+
         yV/6o01lzEznzh/Cb6xn5XyeDysnNn9sNyZHrKgxlldCoZXRY6BsxgKjSTEkRyEYPVHT
         X+/nFzr9h1tWVzhZK4zWMO8ubb8x3TSdmdDNeiUj1vbwNUb8fb+AlahATkypGFljN0kl
         ydAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765792064; x=1766396864;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=SDgTtvl+RBHpILPhZonQKwu9nxIYlCiGLZNaksqSUeE=;
        b=a9WnbRDLu/LsaPcwPH2c3L3Et3/+V/MVUPVUYKl7Qna/gz8C01uk8Sb/7vn71Znr8s
         KHl58H6Z3gljKMXji+Ydx5RfmB+wcPmm158IP/LA6UpPp4Byn6Gkyzp1ngfJIKBFwK9B
         CVbO4LOPllqOvtqTyly6+12K1lngE5K880g60xBbzKlJZ9EUM+GeEU1pQ9KqLmAgdRle
         iPSxH7+Ij3huOMeVIpdesFZKYIOjIVmwPKD2aeP88ismCfNuYuWcaG4Pj7ptjH/2CDaE
         8ZbyUW1Sglg4AYc5bi0COUTriLs6i1CBgQvG/Q3CAXStUzWfOPkXNye5aI1sxLtP77lj
         teKw==
X-Forwarded-Encrypted: i=1; AJvYcCUBCm353hIjO47Zrboy3lhMhhCh9hs3/4PllAFT8tAcPno9F3zqkTG+/9wrqB7tqq5ZkY/OjPL9yKGs@vger.kernel.org
X-Gm-Message-State: AOJu0YxEW6f+BzrXX8X7OfNaVTa6VWHz7Fc8X/Ap2gfq/BajHSTbgnVR
	42FcO4wKNmuHsgJjCFElpScXNmvprznxafDtIt7p48QBUSGYE1fav6OC
X-Gm-Gg: AY/fxX7tDZa+saGe22tLCnnN7s5ePCgb0ob+YIYNGjX3LGYYS1POMQfyjUGrUGM56os
	+rqHvLGTwqiRFK2bw59usQqlu5SnJuExu6cB1irVeUzqDKbjAi6g0GVAOG9AOdWt6Kf1D5yZcnV
	zDXPxoNxgFHBPaBg68Bcn0LtZxoHZyHrkaHoZyNSVmrokZGhF0mApS/zs0Py6OMnA22eSmLEOEW
	QO6oPsjqYvJAqXFb19/cmADdSOnhFmfn1fAUerNHO2AjRJrKyqcFDzU60EOH+tY8HlfyLfmnlhC
	kp5bjvrsOEZsY2dxeHh9Yw9TrWI8BkNN6x8JSiLUNRE4B2LjzGVKcYE0a9no+kpC0+SkrR713XL
	lKJHSr5sTM47m62wRvKZbJr+ExJThCmzGjUkCwigd8Z1chOjU8z85W/XwQzTkhhM2MmW+Ce1Nv0
	JLaZc5UoMX+95F+sENdY3VuGHFQBf/VC1tx6t95jNLW1Dja240ivpOHxQOlKINrhJqwBA=
X-Google-Smtp-Source: AGHT+IHdUfqXczYyj1Cly0PG2XtJ/rJFxO0ARb+sa77t/57wN4yHBcgga29yLFYYO+CC/kcqJd+Gyg==
X-Received: by 2002:ac2:530c:0:b0:598:fac0:497d with SMTP id 2adb3069b0e04-598fac04a37mr2223121e87.15.1765792063467;
        Mon, 15 Dec 2025 01:47:43 -0800 (PST)
Received: from [192.168.1.168] (83-233-6-197.cust.bredband2.com. [83.233.6.197])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-598f2f37ae8sm5397546e87.15.2025.12.15.01.47.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 01:47:42 -0800 (PST)
From: Marcus Folkesson <marcus.folkesson@gmail.com>
Date: Mon, 15 Dec 2025 10:46:43 +0100
Subject: [PATCH v3 1/7] drm/sitronix/st7571-i2c: rename 'struct drm_device'
 in st7571_device
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251215-st7571-split-v3-1-d5f3205c3138@gmail.com>
References: <20251215-st7571-split-v3-0-d5f3205c3138@gmail.com>
In-Reply-To: <20251215-st7571-split-v3-0-d5f3205c3138@gmail.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Javier Martinez Canillas <javierm@redhat.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Marcus Folkesson <marcus.folkesson@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=7034;
 i=marcus.folkesson@gmail.com; h=from:subject:message-id;
 bh=j1XkYhWQ1IN9JL+Wb1Eozaof9eyPZLQtwZeEnUcZ+0s=;
 b=owEBbQKS/ZANAwAKAYiATm9ZXVIyAcsmYgBpP9kcj6ovR5fjkalkgb6odPj6NkozJ1jONh1N1
 s5kmRMgkQuJAjMEAAEKAB0WIQQFUaLotmy1TWTBLGWIgE5vWV1SMgUCaT/ZHAAKCRCIgE5vWV1S
 MsUkEADaiXrbKZdRg81hP/WC8znvUiliXA384R8U6N0NXYvtq4ISoFyLO+vvT/PRgtX75G1cwPn
 bHL3yPu7RSg+T+Ah3h2nH6KavExYUoAhnp12D22UPOSvn39Nnuh7IP70Os2FPMN6TaZpdx7lwNj
 kpE6/DRiCOtH4mkjMNWJMApOl7FAoQWY9I9d5WmUKXZXu47h/K380cg5rcFCZOeF+rO0j2Ppb+G
 gaY3MhhohSl+SjVZg2pWwRiXuKQ5WLfxGtQQGOkeMTcneJPXaWLUtI7XpAkv9qIZluKVkoIBq+B
 owUb109M3HZsA9Gx3AD9BdMPthRCbJNASnsTFVStO4zfOTS3noK2wmHkVddVmveuGDo4mdPf/cm
 9Em/xIxC9xt+Esa7/ZeJlyU/4lqAOcMr9Ng3g1dbLfo7vrN5SqKXIFNoAIzJJq7M9BdwcCZhGRb
 jGEwSAdN6i6dTpi4d2tp+EE841A9uPi7ZXBy6JkPjQy/XaxWR48V+Yo6mZAxFYzd/28brwFi7R3
 U8AYm/554hY+AAZYeh2qsoGErp4UfJoGAfc8gxtkZQN0u0khChLgqyL1vt3e4UkOJeo7HPxpz5J
 WfepSRf0Ev1DTr95RmisOydrWhvkGPBiAjI7WTNXvHz0kOUSa9cI9Lx5Sn4hJer3cduk4E4RYFH
 khCTQTME27nUy6Q==
X-Developer-Key: i=marcus.folkesson@gmail.com; a=openpgp;
 fpr=AB91D46C7E0F6E6FB2AB640EC0FE25D598F6C127

Rename st7571_device.dev to st7571_device.drm in preparation to
introduce a 'struct device' member to this structure.

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>
Signed-off-by: Marcus Folkesson <marcus.folkesson@gmail.com>
---
 drivers/gpu/drm/sitronix/st7571-i2c.c | 60 +++++++++++++++++------------------
 1 file changed, 30 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/sitronix/st7571-i2c.c b/drivers/gpu/drm/sitronix/st7571-i2c.c
index 4e73c8b415d6..71814a3eb93b 100644
--- a/drivers/gpu/drm/sitronix/st7571-i2c.c
+++ b/drivers/gpu/drm/sitronix/st7571-i2c.c
@@ -112,7 +112,7 @@ struct st7571_panel_format {
 };
 
 struct st7571_device {
-	struct drm_device dev;
+	struct drm_device drm;
 
 	struct drm_plane primary_plane;
 	struct drm_crtc crtc;
@@ -166,9 +166,9 @@ struct st7571_device {
 	u8 *row;
 };
 
-static inline struct st7571_device *drm_to_st7571(struct drm_device *dev)
+static inline struct st7571_device *drm_to_st7571(struct drm_device *drm)
 {
-	return container_of(dev, struct st7571_device, dev);
+	return container_of(drm, struct st7571_device, drm);
 }
 
 static int st7571_regmap_write(void *context, const void *data, size_t count)
@@ -467,7 +467,7 @@ static void st7571_primary_plane_helper_atomic_update(struct drm_plane *plane,
 	struct drm_shadow_plane_state *shadow_plane_state = to_drm_shadow_plane_state(plane_state);
 	struct drm_framebuffer *fb = plane_state->fb;
 	struct drm_atomic_helper_damage_iter iter;
-	struct drm_device *dev = plane->dev;
+	struct drm_device *drm = plane->dev;
 	struct drm_rect damage;
 	struct st7571_device *st7571 = drm_to_st7571(plane->dev);
 	int ret, idx;
@@ -479,7 +479,7 @@ static void st7571_primary_plane_helper_atomic_update(struct drm_plane *plane,
 	if (ret)
 		return;
 
-	if (!drm_dev_enter(dev, &idx))
+	if (!drm_dev_enter(drm, &idx))
 		goto out_drm_gem_fb_end_cpu_access;
 
 	drm_atomic_helper_damage_iter_init(&iter, old_plane_state, plane_state);
@@ -501,11 +501,11 @@ static void st7571_primary_plane_helper_atomic_update(struct drm_plane *plane,
 static void st7571_primary_plane_helper_atomic_disable(struct drm_plane *plane,
 						       struct drm_atomic_state *state)
 {
-	struct drm_device *dev = plane->dev;
+	struct drm_device *drm = plane->dev;
 	struct st7571_device *st7571 = drm_to_st7571(plane->dev);
 	int idx;
 
-	if (!drm_dev_enter(dev, &idx))
+	if (!drm_dev_enter(drm, &idx))
 		return;
 
 	st7571_fb_clear_screen(st7571);
@@ -621,20 +621,20 @@ static struct drm_display_mode st7571_mode(struct st7571_device *st7571)
 
 static int st7571_mode_config_init(struct st7571_device *st7571)
 {
-	struct drm_device *dev = &st7571->dev;
+	struct drm_device *drm = &st7571->drm;
 	const struct st7571_panel_constraints *constraints = &st7571->pdata->constraints;
 	int ret;
 
-	ret = drmm_mode_config_init(dev);
+	ret = drmm_mode_config_init(drm);
 	if (ret)
 		return ret;
 
-	dev->mode_config.min_width = constraints->min_ncols;
-	dev->mode_config.min_height = constraints->min_nlines;
-	dev->mode_config.max_width = constraints->max_ncols;
-	dev->mode_config.max_height = constraints->max_nlines;
-	dev->mode_config.preferred_depth = 24;
-	dev->mode_config.funcs = &st7571_mode_config_funcs;
+	drm->mode_config.min_width = constraints->min_ncols;
+	drm->mode_config.min_height = constraints->min_nlines;
+	drm->mode_config.max_width = constraints->max_ncols;
+	drm->mode_config.max_height = constraints->max_nlines;
+	drm->mode_config.preferred_depth = 24;
+	drm->mode_config.funcs = &st7571_mode_config_funcs;
 
 	return 0;
 }
@@ -643,10 +643,10 @@ static int st7571_plane_init(struct st7571_device *st7571,
 			     const struct st7571_panel_format *pformat)
 {
 	struct drm_plane *primary_plane = &st7571->primary_plane;
-	struct drm_device *dev = &st7571->dev;
+	struct drm_device *drm = &st7571->drm;
 	int ret;
 
-	ret = drm_universal_plane_init(dev, primary_plane, 0,
+	ret = drm_universal_plane_init(drm, primary_plane, 0,
 				       &st7571_primary_plane_funcs,
 				       pformat->formats,
 				       pformat->nformats,
@@ -665,10 +665,10 @@ static int st7571_crtc_init(struct st7571_device *st7571)
 {
 	struct drm_plane *primary_plane = &st7571->primary_plane;
 	struct drm_crtc *crtc = &st7571->crtc;
-	struct drm_device *dev = &st7571->dev;
+	struct drm_device *drm = &st7571->drm;
 	int ret;
 
-	ret = drm_crtc_init_with_planes(dev, crtc, primary_plane, NULL,
+	ret = drm_crtc_init_with_planes(drm, crtc, primary_plane, NULL,
 					&st7571_crtc_funcs, NULL);
 	if (ret)
 		return ret;
@@ -682,10 +682,10 @@ static int st7571_encoder_init(struct st7571_device *st7571)
 {
 	struct drm_encoder *encoder = &st7571->encoder;
 	struct drm_crtc *crtc = &st7571->crtc;
-	struct drm_device *dev = &st7571->dev;
+	struct drm_device *drm = &st7571->drm;
 	int ret;
 
-	ret = drm_encoder_init(dev, encoder, &st7571_encoder_funcs, DRM_MODE_ENCODER_NONE, NULL);
+	ret = drm_encoder_init(drm, encoder, &st7571_encoder_funcs, DRM_MODE_ENCODER_NONE, NULL);
 	if (ret)
 		return ret;
 
@@ -700,10 +700,10 @@ static int st7571_connector_init(struct st7571_device *st7571)
 {
 	struct drm_connector *connector = &st7571->connector;
 	struct drm_encoder *encoder = &st7571->encoder;
-	struct drm_device *dev = &st7571->dev;
+	struct drm_device *drm = &st7571->drm;
 	int ret;
 
-	ret = drm_connector_init(dev, connector, &st7571_connector_funcs,
+	ret = drm_connector_init(drm, connector, &st7571_connector_funcs,
 				 DRM_MODE_CONNECTOR_Unknown);
 	if (ret)
 		return ret;
@@ -934,15 +934,15 @@ static int st7571_lcd_init(struct st7571_device *st7571)
 static int st7571_probe(struct i2c_client *client)
 {
 	struct st7571_device *st7571;
-	struct drm_device *dev;
+	struct drm_device *drm;
 	int ret;
 
 	st7571 = devm_drm_dev_alloc(&client->dev, &st7571_driver,
-				    struct st7571_device, dev);
+				    struct st7571_device, drm);
 	if (IS_ERR(st7571))
 		return PTR_ERR(st7571);
 
-	dev = &st7571->dev;
+	drm = &st7571->drm;
 	st7571->client = client;
 	i2c_set_clientdata(client, st7571);
 	st7571->pdata = device_get_match_data(&client->dev);
@@ -1010,14 +1010,14 @@ static int st7571_probe(struct i2c_client *client)
 		return dev_err_probe(&client->dev, ret,
 				     "Failed to initialize connector\n");
 
-	drm_mode_config_reset(dev);
+	drm_mode_config_reset(drm);
 
-	ret = drm_dev_register(dev, 0);
+	ret = drm_dev_register(drm, 0);
 	if (ret)
 		return dev_err_probe(&client->dev, ret,
 				     "Failed to register DRM device\n");
 
-	drm_client_setup(dev, NULL);
+	drm_client_setup(drm, NULL);
 	return 0;
 }
 
@@ -1025,7 +1025,7 @@ static void st7571_remove(struct i2c_client *client)
 {
 	struct st7571_device *st7571 = i2c_get_clientdata(client);
 
-	drm_dev_unplug(&st7571->dev);
+	drm_dev_unplug(&st7571->drm);
 }
 
 static const struct st7571_panel_data st7567_config = {

-- 
2.51.2


