Return-Path: <devicetree+bounces-115800-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F1B909B0B66
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 19:25:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6822128636D
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 17:25:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0D6F22ADB0;
	Fri, 25 Oct 2024 17:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="bM51e3JL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E7B2228049
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 17:16:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729876594; cv=none; b=ZTyUS6bI4QiBevr8i5qNjrWcb3beeJbd+babaWapnuosD/+gP9PRiYhtPXUAZ9BvGM5cMjzxl73dzjAZx2SM+oZsWlX7POWaYjaoZXbUAgXmayCum17A7mLKPfTt0ef0a05Rkal2lijOiYuqsvAUazzSHJoclq3vmwwPDZl0RyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729876594; c=relaxed/simple;
	bh=m3UAiUE0biP1FsK0/13FGVcYEVRBGrRWaA1DplqidxU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=R1g5hWXlbk4kfYMsKb2FcogKt5+iO/0ruDbwED8FuG15zbRwfT4FdRbKaOLClB6os8Yr1IWr2wtc7JjzjZ/6TIejn9CPin8vQnBSzPuW/WotFYho4jGQPqfBXRHiAT2JW4AqwerFRygI+JowpeaUBoMVQouqkeDCmikqH6eag2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=bM51e3JL; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-37d4fd00574so1425550f8f.0
        for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 10:16:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1729876587; x=1730481387; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0vbQi4zffHZmgrFZhlEz3qZo9PncYkAwxBP66oHpwT0=;
        b=bM51e3JLX/AblHVdshfApzC+P3lV2ccqvqstnX92nceI9sTCgzG3LK3S52Om0udVM4
         PslHaFUlOQ8bLeL1gYlxsRMd940QP6RsyAPAnJR8rvdH/knsXFky7/6XW/Ma3jrcZPdD
         t6LLE0zfnYk3IojsPCFnKIl8zC1T+tWQhWjAUfz3u8JDgDnniRYRCUTgZJmUnHH42BKA
         /DZEZGDKPIpqju49ZUty18+6BFlSQUTa5LOcsBOvUIz8U9Ro0XwdVzMmg6QHwksRRBXa
         8XlagxmE4NFp3F5i7riHt1Bzq8RNqL8fRn2pHIKM/gtn/hMeU4KIkZMV7mf1l2lM5hMR
         L3Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729876587; x=1730481387;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0vbQi4zffHZmgrFZhlEz3qZo9PncYkAwxBP66oHpwT0=;
        b=eqi1Ind8b+SiVfn4AXhz1crO4oxXEAtW1cB1EsrozjQ2J/XeENiawRhVCy/mXhzQEU
         yl6bDgQAmW1H57ydEaxizxaNEJw3+TdHhnuUaJSFe86xpsPoe/733t+a+kwR+37KPIAt
         wEVOSR5uwHJ38CA9AnQB0nayn/nfL1xAwOhBsPuhwhZKezFfrjrUIBJfAOghMTNfO+nD
         PDS7vKMCoSRUg43BHfZrtARydoqZGY1MEhrsS/g4ea0NlgiozTc8JipVxuGpimRkHqnZ
         u2OLOkF1eC6PDskkxDFZhbZnURfrmhoYJylmMqhuB4Id4t0fsKWHosTvT7SHD3nAzAyV
         G49g==
X-Forwarded-Encrypted: i=1; AJvYcCUNbXt5wxuzzuzvT/4UjTXvswWLlmOtc8OPTbxEzo5MMZiqygx1VwpCrSnQMvUSBmQlrA4j+vLkpRjB@vger.kernel.org
X-Gm-Message-State: AOJu0Yzd/+KPv2SzSaZuHhIFjjeQvVm5893U9+3qf6vbBJdeknA2jTKt
	RLRvPI4Hx8PwQNCB/NkGTy0yabpBAjLuTCjW882sah60QzU0XHvjc/OyyhalUCc=
X-Google-Smtp-Source: AGHT+IH+29oPVsRqs2fqHrAWDnK5QD/g1okRZ89yJvrj7HxIWsx6pgAGD3QO00ZuQ026KdKRThmfow==
X-Received: by 2002:adf:ec8f:0:b0:374:cd3c:db6d with SMTP id ffacd0b85a97d-3803abc51c6mr5147977f8f.6.1729876587557;
        Fri, 25 Oct 2024 10:16:27 -0700 (PDT)
Received: from [127.0.1.1] ([2a00:1098:3142:e::8])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-38058b91f50sm2013649f8f.94.2024.10.25.10.16.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Oct 2024 10:16:27 -0700 (PDT)
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Fri, 25 Oct 2024 18:15:58 +0100
Subject: [PATCH v2 27/36] drm/vc4: Enable bg_fill if there are no planes
 enabled
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241025-drm-vc4-2712-support-v2-27-35efa83c8fc0@raspberrypi.com>
References: <20241025-drm-vc4-2712-support-v2-0-35efa83c8fc0@raspberrypi.com>
In-Reply-To: <20241025-drm-vc4-2712-support-v2-0-35efa83c8fc0@raspberrypi.com>
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
Reviewed-by: Maxime Ripard <mripard@kernel.org>
---
 drivers/gpu/drm/vc4/vc4_hvs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/vc4/vc4_hvs.c b/drivers/gpu/drm/vc4/vc4_hvs.c
index 2493ac17d78f..c8bc2b48648f 100644
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


