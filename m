Return-Path: <devicetree+bounces-130348-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 998209EF0A4
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 17:30:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 59AE029AA1D
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 16:30:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17DAE240387;
	Thu, 12 Dec 2024 16:19:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="mYQ3yWoN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DEBC235884
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 16:19:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734020354; cv=none; b=pqpBj1gwSK+pER35GsNd5aF8gPTS6vLTPBauFV29QTss4cFyOvAUUSYhOVqyWe+lqyDhes5ALh6pkf3cKRxCQraHwhOuE+6DakzZNVez6OHTaT5TTX606fwvNWCwaRnnHI/7+26/nlIdF1zLU3jY4h36osSEjpj2NTF7VHr4eys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734020354; c=relaxed/simple;
	bh=FBDqCJYmfxkJaZt8Un7aPuYwrUM7R7Q4/pNQK9op6mo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=h9KFeIJZS45qQp1VhjV71PJLuuqKVBCurdmzcTSSo4CpS+2StWJTAFyK9pJwJGmspokkzsiQ9gC/J9+JNWWerYWzS9GNBVy1egEu+dhz2vUFoNRIb8Ghxzh5xCoW4uZ/XpSS2pdyzPmw+M6AfNlRI8ecx/ETmAmNS2WJXY3/pO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=mYQ3yWoN; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-43626213fffso4531035e9.1
        for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 08:19:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1734020349; x=1734625149; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3qoOTheHNyDXx09eLZAAbq+8+9HV4ZRvdNqNlfNALco=;
        b=mYQ3yWoNgk5+yC40u/pzvk5IGNib/lLqCQBX923bLbpyPgmId5uYWHvIYjYx3A324P
         jJyhn+5XiA3EiyBmUaxbz0v1Rw6gZAoG8v0HxDTFHb1f1mZPGzqHCNF4+Q/O4qh6w6Io
         6XpBAkTl1JeKGSnaQcZnJufxgzOfmVLqgjdGoRUbP8Vrf6JLvqLwoJETuHdRjXANvMtx
         giT3RQbe7lChFnjYFBKOY7+q6os145eZo5HlOsehFxOKcPYV8z0cPz3JJkFtKJ2oOi5j
         tTKN0z+wEEOahrCAYgbptvn253ktzQ+5+QI0Bwa+uDkIzVVIXA3Vbz5DikVNuZWZTbcI
         pD1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734020349; x=1734625149;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3qoOTheHNyDXx09eLZAAbq+8+9HV4ZRvdNqNlfNALco=;
        b=CRoc51Wn/5DO34UP1Dmbg8XEPKvAWP9ulo/H6l58GC3xCAWUeuZxmGhZxGHJ1jgBuO
         14E6jLeRZW/tPMJn0xn7g6DpDmYW54Zfkf251KnEOdo5LzLWoecMb0sXwqyNZUgQiaIK
         m5yJpXyNzGHlsJtn2B2UO3ylihTdTy9tzTKhYrgxXHX7n6d1P0Lp5gmqkqT3Y18zjNBk
         HJhXjexzv17XZ1eMlu91sL8RsqLI8TiiDV3DBuBkZ8hVJTvdlShaqEFL3uoU+j/pNlhB
         M1OrtG+iFIV7Gv0CxRdbkBTkKKlBZWKd8VKsEMYNhZ2rdSZfOPwRsrO2Q3XCvD//ZKdq
         7DuA==
X-Forwarded-Encrypted: i=1; AJvYcCWtDnM3qjqqdBrzco64w5nroYLsYqRA3DCkKWXJNlg44bHT/DeSSp6kJFY/Br6Y5A7XAu/rh5rTcWXp@vger.kernel.org
X-Gm-Message-State: AOJu0Yw5HppfndvS+XBHq1xds2ZibaZXkGYjbkdzD2ZYNNzbWSQ6QO+B
	6TyW+7lU+/JD4xK7fI9Ai8JqmSvE0RhSGgwSA2UJ4ZV4Hujr1aYJafa8g3FSRvk=
X-Gm-Gg: ASbGnctWGS5XgKjR59VK9u9DN9lDQ37pDDhl23EWEIkSS4/a+ZQHEP52097jrBx94c+
	OPCpZ1MFnyGY8FveuALcRu3L751Hm5SfHMFME9oRTu4375BKTIUoMIAK/JmNYkO7zEZiwuUsIx9
	afVVS3em+zXvm/JyMCMizsKdNSHxpvTwQt2aW3Hyl+HHkleh1Z+VeA+JhJEey3SatPKPaoL+Va9
	YnNvfWK2DKX2Nch8L5dvzQ9Z+TysOHu0GZlRGpBJO5hL0LN
X-Google-Smtp-Source: AGHT+IF5fGK4r7ZLa2m+qI5r0OgFGblEAcI0fkSDXGfPScJLkRcm9817axtMEaqmzm5LoWtpIkmCVA==
X-Received: by 2002:a5d:64ae:0:b0:386:321e:f124 with SMTP id ffacd0b85a97d-387887fe47cmr2895855f8f.13.1734020349363;
        Thu, 12 Dec 2024 08:19:09 -0800 (PST)
Received: from [127.0.1.1] ([2a00:1098:3142:e::8])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4361e322328sm44336105e9.0.2024.12.12.08.19.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Dec 2024 08:19:08 -0800 (PST)
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Thu, 12 Dec 2024 16:18:55 +0000
Subject: [PATCH v2 5/7] arm64: dts: broadcom: Rename bcm2712 interrupt
 controllers
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241212-dt-bcm2712-fixes-v2-5-35986e04d0f4@raspberrypi.com>
References: <20241212-dt-bcm2712-fixes-v2-0-35986e04d0f4@raspberrypi.com>
In-Reply-To: <20241212-dt-bcm2712-fixes-v2-0-35986e04d0f4@raspberrypi.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Eric Anholt <eric@anholt.net>, 
 =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>, 
 Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>, 
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>, 
 Doug Berger <opendmb@gmail.com>, Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>, Thomas Gleixner <tglx@linutronix.de>, 
 Stefan Wahren <wahrenst@gmx.net>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>, 
 linux-gpio@vger.kernel.org, Dave Stevenson <dave.stevenson@raspberrypi.com>
X-Mailer: b4 0.14.1

CHECK_DTBS produces errors on bcm2712-rpi-5-b.dtb and bcm2712-d-rpi-5-b.dtb
of:
intc@7d508380: $nodename:0: 'intc@7d508380' does not match '^interrupt-controller(@[0-9a-f,]+)*$'
        from schema $id: http://devicetree.org/schemas/interrupt-controller/brcm,l2-intc.yaml#
intc@7d508400: $nodename:0: 'intc@7d508400' does not match '^interrupt-controller(@[0-9a-f,]+)*$'
        from schema $id: http://devicetree.org/schemas/interrupt-controller/brcm,l2-intc.yaml#

Rename the nodes from intc to interrupt-controller.

Fixes: f66b382affd8 ("arm64: dts: broadcom: Add display pipeline support to BCM2712")
Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
---
 arch/arm64/boot/dts/broadcom/bcm2712.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/broadcom/bcm2712.dtsi b/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
index 39305e0869ec..bd78af0211b6 100644
--- a/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
+++ b/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
@@ -336,7 +336,7 @@ ddc1: i2c@7d508280 {
 			#size-cells = <0>;
 		};
 
-		bsc_irq: intc@7d508380 {
+		bsc_irq: interrupt-controller@7d508380 {
 			compatible = "brcm,bcm7271-l2-intc";
 			reg = <0x7d508380 0x10>;
 			interrupts = <GIC_SPI 242 IRQ_TYPE_LEVEL_HIGH>;
@@ -344,7 +344,7 @@ bsc_irq: intc@7d508380 {
 			#interrupt-cells = <1>;
 		};
 
-		main_irq: intc@7d508400 {
+		main_irq: interrupt-controller@7d508400 {
 			compatible = "brcm,bcm7271-l2-intc";
 			reg = <0x7d508400 0x10>;
 			interrupts = <GIC_SPI 244 IRQ_TYPE_LEVEL_HIGH>;

-- 
2.34.1


