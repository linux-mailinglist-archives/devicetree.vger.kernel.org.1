Return-Path: <devicetree+bounces-115779-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CD539B0B28
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 19:22:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A4ED1289F5D
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 17:22:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05764223A56;
	Fri, 25 Oct 2024 17:16:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="n7+QYS1X"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6765120F3F0
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 17:16:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729876571; cv=none; b=L/CfQ2KO/XjQF8EjxVkuEOfNM5xnHDM1kf3QuCPVm/1z3YH0DGm+j17/gg2L1nH88A5XiCWNwBki5AqbetIR8GaIS6wW06dOUUsD3djAzRkYwHohEBw5aNEywpv0bwdzBpcjjkruag84Q6kdZtUOR32RS/7atBtrhHWwjKvk4FI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729876571; c=relaxed/simple;
	bh=8naEEFxCbLHkAmUL6zTp78kctDF2IrBiUYYqMXNVvhk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ozr2GAZSRyU1PbJP1h5FX4vmJLrDClG4b10Zlt1jLqoxRrwOtrHqtDLf38lMY8pPEySEkeiMCAHnmog2yr7AR8iLSUsj6waxWKJC/+Ie20Zhy+K8svNb+0wHbIUOmLHsczhthKh6y/a08UReDezs+jKpEWDgJo4y0z4iOCkhZ00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=n7+QYS1X; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-43163667f0eso22136245e9.0
        for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 10:16:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1729876568; x=1730481368; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fLIH9tyCJziS0oZVp659ectLCUh/04IQKJ1VKaLHRLQ=;
        b=n7+QYS1XYvOKH3cudTWjSJ0KLObSgnFTGZLMkvrUM9uQj12nByKjEQtDnNLB5rSsbg
         U+82f/7ojms+BhV68QaPMV/x3kAoHEc8rgtEWcq0AtTIxVFoU1vXhRGxYw4kHa92o2P0
         FVRySBpKVEWE8J1IA0vKaAxg9Q5d3f9ZBi4CFkq+mCZGkVjVDzSqMX7yZ8Q5T89oTMGu
         aR2tiIqPtcxj6Ycw3d648NKtH1wMJvCoEYbXylIJzqpbJy2DnvK/FbCn+OZYXVRAL+II
         1TifB/3HhPEMpzZexjGFl9PynScU8eZf3bm1fWzgdhKvPD9js2nA2JOLG2ZedFvhE8J8
         voLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729876568; x=1730481368;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fLIH9tyCJziS0oZVp659ectLCUh/04IQKJ1VKaLHRLQ=;
        b=aG4epgOm78qnnPeBkTVK2Z1dkWKeq7xSEllVLNyKdav8AiYNglxPSNFsPlp8UMF9NX
         dHApmYImM5toxKDWQkHf4CDc1rfpfHN5xdtdio7xM5Ps6vUw27hw994K7d9IOLqoomJf
         fNZDcHwEqJKcv15qkp4Le+07+VdYharpfkRl2LDN+phlY+LBHOJhs0K4LMgsCJdvf375
         7AV9bXMM3+Sq4dRpQkGiQjSs6q1fFZax58xebbt2GTmFdlpRNmNh5Nnvaa07OIaTOhwO
         ZttntJ+gG/KVyd0SOSoBSI8EZIU3H3Ozu9CQEB3rjhO6rZ6MulxtJHxxcRwkH6LM5N7g
         5TnQ==
X-Forwarded-Encrypted: i=1; AJvYcCVwfoW5/mFuU9Pn2dCtOYZMBV/9rRpvmZ1JBF7AyRD8z76vGSK5YqS6Sfnn86exPIC5QWmf5uqGPJF8@vger.kernel.org
X-Gm-Message-State: AOJu0Yyv+eZ0QGntYfF923NoWk/yIGaXHdco4IDzgIuvlUrnZmoZNspx
	nOKg2Tde+key5Ab2X4G2UDEI3c2yKOTBxyo/5OAtCpZiKN0pGhQQJpBcV6lIvfY=
X-Google-Smtp-Source: AGHT+IHeSVH8WqDyVkxiZojUuOptC1WUDDZpkGk6AneCSrSzoFw3bb8pQ04irSZpkbra+Ogj57FSIw==
X-Received: by 2002:a05:600c:3b96:b0:431:50cb:2398 with SMTP id 5b1f17b1804b1-431841e13fdmr91410915e9.2.1729876567815;
        Fri, 25 Oct 2024 10:16:07 -0700 (PDT)
Received: from [127.0.1.1] ([2a00:1098:3142:e::8])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-38058b91f50sm2013649f8f.94.2024.10.25.10.16.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Oct 2024 10:16:07 -0700 (PDT)
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Fri, 25 Oct 2024 18:15:38 +0100
Subject: [PATCH v2 07/36] dt-bindings: display: Add BCM2712 MOPLET bindings
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241025-drm-vc4-2712-support-v2-7-35efa83c8fc0@raspberrypi.com>
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

From: Maxime Ripard <mripard@kernel.org>

The BCM2712 has a MOPLET controller which is basically a TXP without the
transpose feature.

Express that by adding a new compatible for it.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
---
 Documentation/devicetree/bindings/display/brcm,bcm2835-txp.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/brcm,bcm2835-txp.yaml b/Documentation/devicetree/bindings/display/brcm,bcm2835-txp.yaml
index c9c08042cffc..16f45afd2bad 100644
--- a/Documentation/devicetree/bindings/display/brcm,bcm2835-txp.yaml
+++ b/Documentation/devicetree/bindings/display/brcm,bcm2835-txp.yaml
@@ -13,6 +13,7 @@ properties:
   compatible:
     enum:
       - brcm,bcm2712-mop
+      - brcm,bcm2712-moplet
       - brcm,bcm2835-txp
 
   reg:

-- 
2.34.1


