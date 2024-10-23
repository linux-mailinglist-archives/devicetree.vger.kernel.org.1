Return-Path: <devicetree+bounces-114814-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id BA3129AD166
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2024 18:50:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3C70CB22420
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2024 16:50:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CEBB1CF298;
	Wed, 23 Oct 2024 16:50:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="GLtAHcO+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DF171CDFD2
	for <devicetree@vger.kernel.org>; Wed, 23 Oct 2024 16:50:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729702213; cv=none; b=Hhh/2CYMA3Ajh4TOv5x6EBeckpvzwpGnl7poyUwmX4N06kzOy62ktvaYp7Z/HkWdQTIy8V1AHVhLmb8hoD+SohqDEMnLpTCIQxuuWEhsWs93psOGjQARap4ewVH/T+AdJfjku5mCE4pepcOGcNwFgfw21C3HyuMNt9ZSTUB0FCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729702213; c=relaxed/simple;
	bh=z2Q86fa2Du2WubOBnMYnrPBais8ImpM0cuAR16G5yvQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=gzT7QmS+8WBt+SBiazTeqFObTC4hKmnnldv6zguHkwK5bRyDNbOsYn6cPqrjH/TeKEWINQpNmjgHrBY2d+csZRRF3k33X9aMdMFNHIgQgVlPj5auJtreNGvQBN+yH23pCK76y3a65+OQ/0tstWRr7YuLymNgfXbi4Itl7RdZ5jA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=GLtAHcO+; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-37d50fad249so5507287f8f.1
        for <devicetree@vger.kernel.org>; Wed, 23 Oct 2024 09:50:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1729702210; x=1730307010; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5WK3Wcz0LjTp23A2ibh778TvWVk0jVp3LvtNmMQecJo=;
        b=GLtAHcO+e1HFV5Tnr97fdErOsmw5Ie8YWCkCRP2bblDohwQJ+JDTjMfqNrqjE3Qe8x
         OBu9G+1uPncPJgoku+rBh3cGnwhQLwkynsg2A6f+6eSIEXu6NINR+Un5ALxKGVmwbg81
         cPbF97IXEjJK6fNEDWGFx+oudqR2Qa4FK8jpsgk5qWISX+jkR3u359HmD7QYZyUfV1Ff
         yR1V8PYPexyrVNepFQ9qi5QAYF0KCuLSXIpapfmBXPl+vqVmcmUxHFJwdPSBFSeis8Ki
         itVyNo5517W2B56ORIU7q1troRRjOS8veUX4RbVsw0PJyTK1Fnsx3U0fjx35pjE7ZXsl
         XqXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729702210; x=1730307010;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5WK3Wcz0LjTp23A2ibh778TvWVk0jVp3LvtNmMQecJo=;
        b=aEUn4ggURxof0KHnucB/2Hbp6H5P3Jbd/y/aZgOFjAWMTHnx+1eF1s5FTVxYtZSajl
         Z7Kn5y5nNqutk7NP7RhTVTcCS2A4wSKP694MzQni2ufKG7dubQ6WmXu4XU/PmwJ6lFl4
         RR1qg5MXkka5QN5p7BvZ8/L+tSZD1ZiiXslGrJV52yYBvncPc1O2m5I0B5j2FYhfHCbR
         IckfPD8tHXDaWNnit/RZc/YflsLL1VSKMzed66bdW+0Qd4nyEeW8BPD/rAIEOnFgl9oN
         cr69WLhWTkWHYgHfnYtTaRRBd8FWyjl8dScMSaJE4d1uKm+nlH9Ke89GFCUBF1p3exC1
         9KFw==
X-Forwarded-Encrypted: i=1; AJvYcCV4Wjo6G8jdxEGAxzItzU/RVGtNqI5vVcJ01BXwOKvfidDcMfXkDE7PHd2PqseFWZxbMa1Y3m/TP2ka@vger.kernel.org
X-Gm-Message-State: AOJu0Yyc1dN1xsMYWY/BXEKtiv0ACdO9qv6MkgKj5/9wXSN0eOEWV5D3
	XB4HI6yCEjAFH2Mg05u5wBoIc4kpD6MS824I4lGZzpXJ7jWSZ/JdzmL0G+1HykQ=
X-Google-Smtp-Source: AGHT+IF8V/3kWZEsM033mvmCNVLqu8ni3b3xlel5RuPa1mpKVOt5Sj94RWpbn1HR47WB9YguGyyFfQ==
X-Received: by 2002:a5d:420f:0:b0:37d:47d8:5fff with SMTP id ffacd0b85a97d-37efcf7ecc8mr1949275f8f.37.1729702210382;
        Wed, 23 Oct 2024 09:50:10 -0700 (PDT)
Received: from [127.0.1.1] ([2a00:1098:3142:e::8])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-43186c50445sm21642035e9.39.2024.10.23.09.50.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Oct 2024 09:50:09 -0700 (PDT)
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Wed, 23 Oct 2024 17:49:59 +0100
Subject: [PATCH 02/37] drm/vc4: Use of_device_get_match_data to set
 generation
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241023-drm-vc4-2712-support-v1-2-1cc2d5594907@raspberrypi.com>
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

Use of_device_get_match_data to retrieve the generation value
as set in the struct of_device_id, rather than manually comparing
compatible strings.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
---
 drivers/gpu/drm/vc4/vc4_drv.c | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_drv.c b/drivers/gpu/drm/vc4/vc4_drv.c
index d47e5967592f..3099292f22a5 100644
--- a/drivers/gpu/drm/vc4/vc4_drv.c
+++ b/drivers/gpu/drm/vc4/vc4_drv.c
@@ -300,10 +300,7 @@ static int vc4_drm_bind(struct device *dev)
 
 	dev->coherent_dma_mask = DMA_BIT_MASK(32);
 
-	if (of_device_is_compatible(dev->of_node, "brcm,bcm2711-vc5"))
-		gen = VC4_GEN_5;
-	else
-		gen = VC4_GEN_4;
+	gen = (enum vc4_gen)of_device_get_match_data(dev);
 
 	if (gen > VC4_GEN_4)
 		driver = &vc5_drm_driver;
@@ -462,9 +459,9 @@ static void vc4_platform_drm_shutdown(struct platform_device *pdev)
 }
 
 static const struct of_device_id vc4_of_match[] = {
-	{ .compatible = "brcm,bcm2711-vc5", },
-	{ .compatible = "brcm,bcm2835-vc4", },
-	{ .compatible = "brcm,cygnus-vc4", },
+	{ .compatible = "brcm,bcm2711-vc5", .data = (void *)VC4_GEN_5 },
+	{ .compatible = "brcm,bcm2835-vc4", .data = (void *)VC4_GEN_4 },
+	{ .compatible = "brcm,cygnus-vc4", .data = (void *)VC4_GEN_4 },
 	{},
 };
 MODULE_DEVICE_TABLE(of, vc4_of_match);

-- 
2.34.1


