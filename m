Return-Path: <devicetree+bounces-114840-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E75EF9AD1CF
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2024 18:57:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A7D1D28758C
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2024 16:57:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0591F204089;
	Wed, 23 Oct 2024 16:50:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="pOwL66H6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49CDF2038C8
	for <devicetree@vger.kernel.org>; Wed, 23 Oct 2024 16:50:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729702250; cv=none; b=UppfrqxmpypjcpHJ0d5P6beu2LdpvBaOfXX5q8xsHOpt0JAz7RNQS7Axzy9KMp57PAGzib83l0m0DJntjpD/KknV8MC0HKk3S7vgksOyi3dLMVnOLH0+55hljE3NBCySCpGVReMrBwO7WoS7oFj8zzyLGn3H9JX6J8Sbu+MWttA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729702250; c=relaxed/simple;
	bh=ZpoQHHOugAokWeviZCRyfQ9yR7PkyScHju2uFvM9Aw0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=g9ZfLRe4b/b9nGqEUH9SCFXjaYSmNN3JrWg6yvQF+jjx1+EvTBvFvT0T2NbbBaVzLo99GT0Q2W6vSUhCshyK7KEN57v1roU3JGaLTwN2tmaolU2aseMumHqd7FxRU46ie4CBnj+RP5OGTFbu9rOVNlpQrXtTJBfbJikRNfF6uZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=pOwL66H6; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-43163667f0eso55403665e9.0
        for <devicetree@vger.kernel.org>; Wed, 23 Oct 2024 09:50:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1729702248; x=1730307048; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LXVu+XPK1twrhAqeJinZn0FZ1mNK/jEIbakCvmjUtPs=;
        b=pOwL66H6CdJ7bJg8VymBw5mpXmteWXfca5HnOJkb5CIchGrgbvPK5mWE0EX6i7obCc
         mxDdm8xY8ir9gCzab7wRdcarsArLtx588RfkJcdD+1dYkVLoHiQkUc+QZypVNNxAtxRS
         0vhVsprVFQOlo3sElaIzOb76LZbaAoCym/0Q+9/pUZfOxWG75JwfOtYllmDkpkC849qc
         ijPJ6fwRKWyGOI1ySaXl+aV4djI+aAgNMVw0ybWGEhNvwjkNOwMYo5dU4tDqNnQ4P4VJ
         uXxEP6iBcq9wGzC2E2Zjn2zGu+uGpybiWwLaOKRYB4s6gXyuNsctxtAVl+g+FMl+EzbO
         h2HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729702248; x=1730307048;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LXVu+XPK1twrhAqeJinZn0FZ1mNK/jEIbakCvmjUtPs=;
        b=YSVb5lxC9aLPbzCGmf8+wJ4kKeO5x4Gle0w3ofAjxVnFB/p7Idqyp7a7+E2ZZh+jIA
         l5bpozEJ++IXOudAdvJNnI0ZKHlqc9kyRLHiaLM++lUO13zfUe7Lecp77aZ+SI7qbpAU
         4uNIsj9tZVadrI1tFQM7sHJjovGzRbg3CyUMuzOR6aOuCoQxKrOYpMojPX67iadE1bsx
         xAFzuHsFszpwLTwGGzDp4+vu9q/eLMbu340d4pHp9lYv1j3DfW7ar7sJMBELwhJ7zWp9
         hjVXKw31nuKbk1rUYDRVPHBtLM1CdhPCZzDGUkHWM2AHqYM0c8Oz/zgx9BDfTgZ503Ix
         5bJQ==
X-Forwarded-Encrypted: i=1; AJvYcCUlIsy3AJs4FJ9cO3yqxfHgUN7Cg+hp+Ksak8PZj+q1Eh+kqlzbSBN3rs1tCO0qyDFmTvhD0OS3w1WG@vger.kernel.org
X-Gm-Message-State: AOJu0YxmJM+ubNsjq1wsSXwxPbNPKvoeFBbLVFb/YYkqViPxOiwQxjV9
	AhjYtlk4bKG7BqhmFmfQ1KD+LIWJ7WaqVOItKRuO9wLRws7BA6/9Gynep0vx92g=
X-Google-Smtp-Source: AGHT+IE4mgCaYm2elKT76LlNq3zUCFQBwxYPgla+kkQUxdQtty9ocFGx1hYzfLUy3hw38CapCGa/1g==
X-Received: by 2002:a05:600c:4ecd:b0:431:612f:189b with SMTP id 5b1f17b1804b1-431841fdademr30938035e9.12.1729702247813;
        Wed, 23 Oct 2024 09:50:47 -0700 (PDT)
Received: from [127.0.1.1] ([2a00:1098:3142:e::8])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-43186c50445sm21642035e9.39.2024.10.23.09.50.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Oct 2024 09:50:47 -0700 (PDT)
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Wed, 23 Oct 2024 17:50:25 +0100
Subject: [PATCH 28/37] drm/vc4: Enable bg_fill if there are no planes
 enabled
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241023-drm-vc4-2712-support-v1-28-1cc2d5594907@raspberrypi.com>
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

The default was to have enable_bg_fill disabled and the first
plane set it if it wasn't opaque and covering the whole screen.
However that meant that if no planes were enabled, then the
background fill wasn't enabled, and would give a striped
output from the uninitialised output buffer.

Initialise it to enabled to avoid this.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
---
 drivers/gpu/drm/vc4/vc4_hvs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/vc4/vc4_hvs.c b/drivers/gpu/drm/vc4/vc4_hvs.c
index f15aba4b81d7..5d40bbcb3b54 100644
--- a/drivers/gpu/drm/vc4/vc4_hvs.c
+++ b/drivers/gpu/drm/vc4/vc4_hvs.c
@@ -936,7 +936,7 @@ void vc4_hvs_atomic_flush(struct drm_crtc *crtc,
 	struct drm_plane *plane;
 	struct vc4_plane_state *vc4_plane_state;
 	bool debug_dump_regs = false;
-	bool enable_bg_fill = false;
+	bool enable_bg_fill = true;
 	u32 __iomem *dlist_start = vc4->hvs->dlist + vc4_state->mm.start;
 	u32 __iomem *dlist_next = dlist_start;
 	unsigned int zpos = 0;

-- 
2.34.1


