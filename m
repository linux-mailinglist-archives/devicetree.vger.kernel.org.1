Return-Path: <devicetree+bounces-115772-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 18C819B0B13
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 19:20:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3BE421C25B5E
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 17:20:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED78420F3DE;
	Fri, 25 Oct 2024 17:16:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="ezsNy5JI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FBB41FB8AE
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 17:16:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729876565; cv=none; b=QgRznz8aluGILGXEC/CCQfqQT6SuEGsJCb+TdoErz3Ba88e8Qhod9inIE44UCZrX+IEmZaBiUYJ3IHpRk6e3GnlS0PAIZV1AmxKOy5nSyIV4P6JxYIf+pvJefMTghF7oO+PTwgRzc3QYv9Pg2WjwCa7rpOsiUDIPorHNgd+ttzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729876565; c=relaxed/simple;
	bh=ivKc1N4Mmh0vuWkC2a0EqN95MvZ1q0W3nPRNkGt3VSI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=jGQwJ4IPr6sx7yVB80zjt+lrUeTOcqzO9nRc024YsD0uvrQMAnOkCp4JH3Mj218XPgD3mQ0PV2nz0jrIJJuPpsBX/dk29le71NZVhe9MvPtIXS4Qi2aIfBPNAAxk0obIxw4jiSRhjYVPtPl+V3e799T6UtAUV/dO68+INj60qak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=ezsNy5JI; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-37d518f9abcso1663953f8f.2
        for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 10:16:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1729876562; x=1730481362; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mE1J+qWE3+MY5OdGTFndB6Yv1OgEwWzvu24HL6ntl3Y=;
        b=ezsNy5JIiUAp5606R9ZC8NRkX4ZOAJp5V8k+NWoc0p3DeiEx5rrvxDJ+ibMaLbrzUw
         B1N4nW8zydTdgZrtDR5j4A//Lg1hPovVJGFHLErAh7OgTUL/qyQZZAMobj8uOu7l5CGs
         z6q+HeAKpdd2d3z6QutOdsmBrueGupoqx95Q9oaBZrmx/KVdRx6Dr7y3vcUVaPy8C/xW
         BYWBerUt2pJPsi1LB/LcS7ufnz8L5dx+m1qaQPeA3BQcRhsfn0FzPXCeeMQLfWTv2IPN
         xiMFsVLVDscunNVdXEqLXHxkqcX9ql5/buwRyRuPFBDcmoM6ix4iSsqSv20kKpND/KuC
         y9Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729876562; x=1730481362;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mE1J+qWE3+MY5OdGTFndB6Yv1OgEwWzvu24HL6ntl3Y=;
        b=IcMuy4KbwNnPCRunPKzhWkKPevSIYRe1ga+IToKqc8NbrcNz8R34oVKLnSbs6Y+CTO
         oek9VRChrTBq7xkf4eb0zQ046Fpwqsq8GDMI6j/9nlSrflZ/6D6Clbks8vGg1E5F+A1I
         somujFMLGg+0GPpLkh82XJ/OZEpC+15F488cf3PtwQAwXNvm/88P84Xqp1OHtdc2BiqG
         hjEjqt5YCANhurdNYOnBLXtkFuLw2Q6giKdnwNzYhaJ+p5XYW8pl5HMaLxzMjN6g8jCx
         WTAiFBVt6TswE1X4wu5DGR5Hxi3O0YjqA+rdlq0wI81OdWlR1NWwhP49kYFboOF4y422
         nHuw==
X-Forwarded-Encrypted: i=1; AJvYcCWQ4xCg0BPcs/7/Zc4ZFFVBSDT93nDEHEBD7MNiGgWgMbHyrhpOaoTXOsK0tHPfzIQ6puIUCNR5V/d/@vger.kernel.org
X-Gm-Message-State: AOJu0Yxp3Q3lRfZ+2E5+CTeqR7dMu1kArSaHB4d/3jis9MR2kvdb1W/R
	nsXGAmLd2jlWukhNP6zIX4qP4c9r8uw6NfG7Ysdp/Lv5NhyOuZEYpevyDphbkK0=
X-Google-Smtp-Source: AGHT+IEHBMyfg8LeLTWXyBsyEhO7uNb2SflsZSQOS0RHT+/8zxN2LWxj0WgsnINVEDyefqmgv9Nkcw==
X-Received: by 2002:adf:a29b:0:b0:37d:3f5c:5a83 with SMTP id ffacd0b85a97d-38061128754mr107580f8f.19.1729876561858;
        Fri, 25 Oct 2024 10:16:01 -0700 (PDT)
Received: from [127.0.1.1] ([2a00:1098:3142:e::8])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-38058b91f50sm2013649f8f.94.2024.10.25.10.16.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Oct 2024 10:16:01 -0700 (PDT)
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Fri, 25 Oct 2024 18:15:32 +0100
Subject: [PATCH v2 01/36] drm/vc4: Use of_device_get_match_data to set
 generation
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241025-drm-vc4-2712-support-v2-1-35efa83c8fc0@raspberrypi.com>
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

Use of_device_get_match_data to retrieve the generation value
as set in the struct of_device_id, rather than manually comparing
compatible strings.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
Reviewed-by: Maxime Ripard <mripard@kernel.org>
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


