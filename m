Return-Path: <devicetree+bounces-114844-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F1B819AD1DA
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2024 18:57:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ABE13287B54
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2024 16:57:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C1AC204F7B;
	Wed, 23 Oct 2024 16:50:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="EmYDbt0K"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C88420515B
	for <devicetree@vger.kernel.org>; Wed, 23 Oct 2024 16:50:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729702255; cv=none; b=JBIqfXzhD/IzlxniCpPOU9dngDycGx1pT57bJLUDwPxzc6b2PT06qBbzh9o8qFJ38Bk+T3E44cl00bACxqDUdjn46VcFaLfCXHAZBf9vE17k2HsYhD+nNJFr68aPBcN1wqsyR15NWF3k9ZcC01ruXnjSV6RnzVHTbJfW2AzCPO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729702255; c=relaxed/simple;
	bh=nCTgcNJqAOLt1t1JGW8NB89E+/HvF1h0Y8xB7b4gHLU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=oEhGDz9sif7NArVYOcp36YI9kWGkAgMp0F0az6AqMTXaZOCC8V22NnGp11PoYK1esj3BSsdp73q7TH3XK2eRNJJiu0d9onRB094E5LvK+8jb0Br0bgu/O3zEjHLmvDRvFQivCiY2kIU+JWzvGlxqGVJ9DMGh0Y3beMREegeC9mQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=EmYDbt0K; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-4314a26002bso77385885e9.0
        for <devicetree@vger.kernel.org>; Wed, 23 Oct 2024 09:50:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1729702252; x=1730307052; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ts1NDd5vcHREqhcvSTV/1shtmvDfyt1K2xdMF/qf56o=;
        b=EmYDbt0KXrQUZiQBkXgvvcfZQsvlvr9WTeHhNnGiGLG2k1RH+Wo9YZtnBvPlHydMAC
         FT+ZBU2ZFzsbYHFYc4n+e7ILJ2S6/PIeygADPFr3ZDRe++lulrtn04ZauqjHfF7cEprZ
         7m/5CxLiL2UP+J+JbFKYhOUW1L9FDQ9thPoFqG9f5bbff+KEGdJQn6DuDT3zGMTjlFJA
         ON6viroX+X7RG98IpCwIkdsAMPo8jO6Z648ynPGnElsv5cBiq13Hy+qNqie8AHqSQtgB
         WdAJcv3Qr6dUJB7r9LJQtrvrnZWw6GBKsEAjdp+tmieK5JU5/Y2yzxvVOazO59C6a0nd
         HaxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729702252; x=1730307052;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ts1NDd5vcHREqhcvSTV/1shtmvDfyt1K2xdMF/qf56o=;
        b=sh3Pic8XtaBCDFbMO2hDOIslZxRKJB0eFkT1G5cyDjwwjpKojj4VDn00wNHA1VMJyH
         VOzUKXCByDd9eoZbIC7pyyCGvSaTssx1kNoBzwYsPYez0a9+whzjquX4QtMuw3qjIU7S
         zik5viO2gAzYuYpYPJAXyUMYzLRRsJWxC1+S/dNNiudvKIVAMv9J2GPnwJ5/OSvu11vd
         dZVCw6X75j/SBUOEvdfU85I1jhOlgTIiQTfSeXjqDbfj8UkVRoqQW0qTarhzdBYWVUIb
         89EUCxoGfT+FnN/ujgk+Wny5QXn7L+R2wnIGVKnYmVKtbTpIzKbQvvVYm5mScx57ggbO
         Lybw==
X-Forwarded-Encrypted: i=1; AJvYcCVjHu0iYbiqJTcW6KNCfF+lxqD6SlA22jlkDIzlHKVwu+VUv+2vyLjdKZRQKzQJH3K6cVBmmSUxthZH@vger.kernel.org
X-Gm-Message-State: AOJu0YytcUuzZD2eQCApZl/wyPMnIYgPOlBP4l0ldLVynubqQnTbdAuW
	lj6QybFms+pEL/N3ynSSSxN6omtRPTFcGfFB32foQdahXXPleKtT4zzcjmMq0rI=
X-Google-Smtp-Source: AGHT+IF+Ep5cy5ocAHASp/06u2OSiKjV3AGCYRQMjGhBm4svhBLkWe/K2mww/KQzVSfsztZblCEfXg==
X-Received: by 2002:a05:600c:358b:b0:431:46fe:4cad with SMTP id 5b1f17b1804b1-4318413e307mr28468675e9.9.1729702252475;
        Wed, 23 Oct 2024 09:50:52 -0700 (PDT)
Received: from [127.0.1.1] ([2a00:1098:3142:e::8])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-43186c50445sm21642035e9.39.2024.10.23.09.50.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Oct 2024 09:50:52 -0700 (PDT)
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Wed, 23 Oct 2024 17:50:29 +0100
Subject: [PATCH 32/37] clk: bcm: rpi: Enable minimize for all firmware
 clocks
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241023-drm-vc4-2712-support-v1-32-1cc2d5594907@raspberrypi.com>
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
 Dave Stevenson <dave.stevenson@raspberrypi.com>, 
 Dom Cobley <popcornmix@gmail.com>
X-Mailer: b4 0.14.1

From: Dom Cobley <popcornmix@gmail.com>

There isn't a reason not to minimise the clocks, and it saves
some power.

Signed-off-by: Dom Cobley <popcornmix@gmail.com>
Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
---
 drivers/clk/bcm/clk-raspberrypi.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/clk/bcm/clk-raspberrypi.c b/drivers/clk/bcm/clk-raspberrypi.c
index 274176a938c6..fd7ae0efcf07 100644
--- a/drivers/clk/bcm/clk-raspberrypi.c
+++ b/drivers/clk/bcm/clk-raspberrypi.c
@@ -111,21 +111,27 @@ raspberrypi_clk_variants[RPI_FIRMWARE_NUM_CLK_ID] = {
 	},
 	[RPI_FIRMWARE_V3D_CLK_ID] = {
 		.export = true,
+		.minimize = true,
 	},
 	[RPI_FIRMWARE_PIXEL_CLK_ID] = {
 		.export = true,
+		.minimize = true,
 	},
 	[RPI_FIRMWARE_HEVC_CLK_ID] = {
 		.export = true,
+		.minimize = true,
 	},
 	[RPI_FIRMWARE_ISP_CLK_ID] = {
 		.export = true,
+		.minimize = true,
 	},
 	[RPI_FIRMWARE_PIXEL_BVB_CLK_ID] = {
 		.export = true,
+		.minimize = true,
 	},
 	[RPI_FIRMWARE_VEC_CLK_ID] = {
 		.export = true,
+		.minimize = true,
 	},
 };
 

-- 
2.34.1


