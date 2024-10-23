Return-Path: <devicetree+bounces-114828-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B4DB9AD1A8
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2024 18:53:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A74F3B2340E
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2024 16:53:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CB3E1F12EA;
	Wed, 23 Oct 2024 16:50:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="cHwryQcV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 517311E32B4
	for <devicetree@vger.kernel.org>; Wed, 23 Oct 2024 16:50:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729702228; cv=none; b=AVOgg+4mYs5VCFc6hSMR242E55rMWbOs9Pvk/C8izK4Fogr5ozPuXxCP8LUvBHpJNRpuJkuxq00ft3hdDJGJITDPIvk3XE+nqpsjCtL7+1ydmSRU9Kh6GBo5lszLz1dxStDEvZRpSGLJf+2W4KiLXZL+h4azpaiBQCh590jery8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729702228; c=relaxed/simple;
	bh=1hF1PhNYP2/A1x5AcjvXgQw18E7kHCNzlJ5ort+1kbE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=W5UJxIEbINNrQAZnIB/vg8cilh9E1vb/dxE4gKHD8+mdoSPcE7qRFs4vV2uU/72/yeszV7dH3HYXrkG4FQEJDfqkZSWH9LYEGe8bjmtCRRNU63uDXGKJrfVd5BET9VjCk7QKUg0Y6z7G/ynh7P+hAy0KvX2YHiODM1asBGluk/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=cHwryQcV; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4314c452180so7939365e9.0
        for <devicetree@vger.kernel.org>; Wed, 23 Oct 2024 09:50:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1729702225; x=1730307025; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AjLOa+CYvpz+BpNsMyaYFjyUkwYrQkclw8bv+vdgZA4=;
        b=cHwryQcVjT6hHhUCg1DrGAv88Qk7t8+awkpMmAQeJkJsvn9spH6X9LT21CYaFIhkvm
         kxrRBGqn/39bIVDKrs8Rfa3Zsduls1EH/FU7chZcWzX6U/swiwZW9wsly3IiDk4NR87l
         i7iGbXLFAVi6U8+MHQK0XgTC0mu/4AicGkwbgUIVjBALIL9TVwtJbJAHqu4927UFkYZE
         6FalQF6exRvY85LkQ+mVT1lMlUBBj2l1GzI3eIq6ur7ZmO9aOYDVaY04pttrQRELlrw2
         uyCFSlnhiMXiPgajJRhOu/NkxIJOtUgL5IUlAILtJg37vVxXNegqZx/JhRHFHONsGOmk
         i4kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729702225; x=1730307025;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AjLOa+CYvpz+BpNsMyaYFjyUkwYrQkclw8bv+vdgZA4=;
        b=Ab61cegNgyAeKC250yLjZwXBlVkb2tZ2VmAxSbEEje/t2yvDb8IFH6YYpLXHNVg4cu
         pl9I3ERWbWLnttJQVQtuuUOVaiFQ7HYicjM5fhWY1/03S93BiviUtwtE19tXjowrvj3N
         Dtbkfn2XltcqP7+rKuiRtBJvMDd5DfOa5n6z3qNp2EthDnSn2KRobvyA3z2/NqOHiux8
         DcOt+9g4XiX/vt5NzRG6S6qdhSBSzsGxGwho3IFpUx1+BlZDmSH0+NvV+Gw6RMJHCK8k
         2LmBuClZkJEOxttLf+DESV8kvaiEzPVaWnfkP/9cuB5sMvM6/9duVijOcSw/UqI1LBZj
         pOJA==
X-Forwarded-Encrypted: i=1; AJvYcCUBE+ZmMeoAa0WzsNMqBlKEzmno+rWN5ksBOftit+Xox606whvZkBd+o6J632dkbL7kslQbeWGAn+Nn@vger.kernel.org
X-Gm-Message-State: AOJu0YwXRJtEgBjMP/tjcW2n7/9qCNZgOBulHqz7xz3mM6YJidDn6xh8
	aI1NLfkarXURYdGq1v62s8OxJkpKryS6h4oniwuqYYnn07xgt59IV4tj+zaZ0Qg=
X-Google-Smtp-Source: AGHT+IGF/wmrQgX6tkn2u2UHI/gHpOuI8sr3sYRtr4SIzuUG0YYH6LOTQMbTm4H44/RrLqlF3LH1FA==
X-Received: by 2002:a7b:c455:0:b0:431:7c25:8600 with SMTP id 5b1f17b1804b1-4317c2586e2mr46271995e9.2.1729702224583;
        Wed, 23 Oct 2024 09:50:24 -0700 (PDT)
Received: from [127.0.1.1] ([2a00:1098:3142:e::8])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-43186c50445sm21642035e9.39.2024.10.23.09.50.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Oct 2024 09:50:24 -0700 (PDT)
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Wed, 23 Oct 2024 17:50:14 +0100
Subject: [PATCH 17/37] drm/vc4: txp: Add horizontal and vertical size
 offset toggle bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241023-drm-vc4-2712-support-v1-17-1cc2d5594907@raspberrypi.com>
References: <20241023-drm-vc4-2712-support-v1-0-1cc2d5594907@raspberrypi.com>
In-Reply-To: <20241023-drm-vc4-2712-support-v1-0-1cc2d5594907@raspberrypi.com>
To: Maxime Ripard <mripard@kernel.org>, 
 =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>, 
 Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, 
 Javier Martinez Canillas <javierm@redhat.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org, 
 Dave Stevenson <dave.stevenson@raspberrypi.com>
X-Mailer: b4 0.14.1

From: Maxime Ripard <mripard@kernel.org>

The new writeback controllers that can be found on the BCM2712 require
to have their horizontal and vertical size reduced by one.

Let's tie that behaviour to the compatible so we can support both the
new and old controllers.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
---
 drivers/gpu/drm/vc4/vc4_drv.h |  1 +
 drivers/gpu/drm/vc4/vc4_txp.c | 14 ++++++++++++--
 2 files changed, 13 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_drv.h b/drivers/gpu/drm/vc4/vc4_drv.h
index 27deb4cde02d..984fddae0048 100644
--- a/drivers/gpu/drm/vc4/vc4_drv.h
+++ b/drivers/gpu/drm/vc4/vc4_drv.h
@@ -539,6 +539,7 @@ struct vc4_crtc_data {
 struct vc4_txp_data {
 	struct vc4_crtc_data	base;
 	unsigned int has_byte_enable:1;
+	unsigned int size_minus_one:1;
 };
 
 extern const struct vc4_txp_data bcm2835_txp_data;
diff --git a/drivers/gpu/drm/vc4/vc4_txp.c b/drivers/gpu/drm/vc4/vc4_txp.c
index eaf30b2cfb5b..d2ee872e9c0b 100644
--- a/drivers/gpu/drm/vc4/vc4_txp.c
+++ b/drivers/gpu/drm/vc4/vc4_txp.c
@@ -291,6 +291,8 @@ static void vc4_txp_connector_atomic_commit(struct drm_connector *conn,
 	struct drm_gem_dma_object *gem;
 	struct drm_display_mode *mode;
 	struct drm_framebuffer *fb;
+	unsigned int hdisplay;
+	unsigned int vdisplay;
 	u32 ctrl;
 	int idx;
 	int i;
@@ -330,9 +332,17 @@ static void vc4_txp_connector_atomic_commit(struct drm_connector *conn,
 	gem = drm_fb_dma_get_gem_obj(fb, 0);
 	TXP_WRITE(TXP_DST_PTR, gem->dma_addr + fb->offsets[0]);
 	TXP_WRITE(TXP_DST_PITCH, fb->pitches[0]);
+
+	hdisplay = mode->hdisplay ?: 1;
+	vdisplay = mode->vdisplay ?: 1;
+	if (txp_data->size_minus_one) {
+		hdisplay -= 1;
+		vdisplay -= 1;
+	}
+
 	TXP_WRITE(TXP_DIM,
-		  VC4_SET_FIELD(mode->hdisplay, TXP_WIDTH) |
-		  VC4_SET_FIELD(mode->vdisplay, TXP_HEIGHT));
+		  VC4_SET_FIELD(hdisplay, TXP_WIDTH) |
+		  VC4_SET_FIELD(vdisplay, TXP_HEIGHT));
 
 	TXP_WRITE(TXP_DST_CTRL, ctrl);
 

-- 
2.34.1


