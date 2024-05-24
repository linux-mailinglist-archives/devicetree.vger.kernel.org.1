Return-Path: <devicetree+bounces-69041-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 267178CE992
	for <lists+devicetree@lfdr.de>; Fri, 24 May 2024 20:28:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CE6761F229A7
	for <lists+devicetree@lfdr.de>; Fri, 24 May 2024 18:28:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E69C64AEF7;
	Fri, 24 May 2024 18:27:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="TXjTMPjv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f99.google.com (mail-wm1-f99.google.com [209.85.128.99])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3C363D0C5
	for <devicetree@vger.kernel.org>; Fri, 24 May 2024 18:27:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.99
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716575279; cv=none; b=dUGjVCBnTzexjEL0a87QMehqDeIeYHqBidXvGn1ykoQRNZUZZZzGCV0JQtcQYtCBNQBcJDLmqKMd1vpLpYVvSCqX7sLU/rZSrZ6D0jc5CHOb9SKyhlbWLBHUb2lLyyeBSlHeXA4MWrW98Z7+f0wwdhR6lYdH+0nyKEDi5shSm1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716575279; c=relaxed/simple;
	bh=KzZ2/ILylgxy50sk/StCVlBR9s2jedRDn061bSZ6QRA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=qlV43F9SUlZBbwrwHKxhExIhbZ8iqZpJJN38quWNals72OmUZwoyaw6euALrmNMZzDB6UfdFSp6daAsnXYs/9z1zbbK+kQvfUjdpuG726wWbHM0vsvGWfu461Ve7l1UbITaHa0HJBTraM/Kw7dKxTJWrEwjdeptW6uC3hrhtfj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=TXjTMPjv; arc=none smtp.client-ip=209.85.128.99
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-wm1-f99.google.com with SMTP id 5b1f17b1804b1-4202dd90dcfso32400245e9.0
        for <devicetree@vger.kernel.org>; Fri, 24 May 2024 11:27:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1716575273; x=1717180073; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2MV7QZf2fhH+OEhBA38QGxT92fUaASU1Nxo1nxUSVd8=;
        b=TXjTMPjvEB/mpo5ZJFhiMaaLnozrvLslAQ+8QJMzQMCPL24NoORbh/iE+2u0VB2MfZ
         1EfFvNlEv3pYHOX3PLnPH81gO8rl+M3C9pwpf76F3Ym4Cmroc3xhPvVpSak5XcrMHzHm
         D5mZhstvelzEAdDlKGhTP6mZHGx2SL2LLuA04oOSyJeQ+FQhAeR9LYDZn2a0FSVJcOeD
         W5NC7dvCF5W0HL2IU8T53zi9BLYm9nBfyYCdJDv1I0XaAJ2lJvQom18lNOpjx5B8xXTs
         qytn/30BOA7mU5yGUg/NF7guE60VaGTNLsr7ROhtnuCRWtpSC6DJpuLb4qAgg1xJpb67
         HmOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716575273; x=1717180073;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2MV7QZf2fhH+OEhBA38QGxT92fUaASU1Nxo1nxUSVd8=;
        b=XqJ2Ls8ZjxpWg03FMv9G0/E/yfeDaY1Gl8ODCa4b7w5yF78JUrpPHNTqustFKmXN8h
         Fy2VW6bYhqnwuU4NnGVbiZv4p0+7mJQjronvSbf0wcR/nMF1x9zRXltbM/BF/Hx14S4x
         dFJ1qX7U81C4RQeZ4+wEprXiZTJPa8P4uHxj3fRH00Hk0jJdCM8oHMhhS0EwdcT2Agbn
         DdA6YcB201ys49CUciEKxjmP0321ufmpZFpAnFzzW9OMw0GMEwL+TD7LZWUoYXJHufnZ
         j536i2VV9DeE6gQB48rrPNmGEWBqDKsTZtpeVWzzg/P9UJXKQJedDu3lmULjx+IBRNOO
         jLnw==
X-Gm-Message-State: AOJu0Yw3icrNrYqFZt3WzCYAR4S4zeDhdNYpvOXZTZ/Y4e6owcp+34LB
	B+SzGZq4fQ7Ogu+5M6rZJ8h6tQHVEzv5oiL5h3Rqwbe6wHBWq8gnnfbghbjod6ls4HOtiCV8t0k
	ahFzLMvrRQ5WMIrgNsG2UhW90XOof51nF
X-Google-Smtp-Source: AGHT+IHWZ0JTRBQwe/XochchvTJaAoc7r7/ijNNUJ35CDCjZA7ALjlPQSMAk7tENe+DW/f85sGYNAcbTrrfr
X-Received: by 2002:a05:600c:5799:b0:41b:f2ca:19cc with SMTP id 5b1f17b1804b1-421089f93b7mr26088945e9.34.1716575272958;
        Fri, 24 May 2024 11:27:52 -0700 (PDT)
Received: from raspberrypi.com ([188.39.149.98])
        by smtp-relay.gmail.com with ESMTPS id 5b1f17b1804b1-4210891c6edsm1217615e9.20.2024.05.24.11.27.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 May 2024 11:27:52 -0700 (PDT)
X-Relaying-Domain: raspberrypi.com
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Ray Jui <rjui@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>,
	Vinod Koul <vkoul@kernel.org>,
	Maxime Ripard <mripard@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Mark Brown <broonie@kernel.org>,
	Christoph Hellwig <hch@lst.de>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Robin Murphy <robin.murphy@arm.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Vladimir Murzin <vladimir.murzin@arm.com>,
	Phil Elwell <phil@raspberrypi.com>,
	Stefan Wahren <wahrenst@gmx.net>,
	Serge Semin <Sergey.Semin@baikalelectronics.ru>
Cc: devicetree@vger.kernel.org,
	linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	dmaengine@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-mmc@vger.kernel.org,
	linux-spi@vger.kernel.org,
	iommu@lists.linux.dev,
	linux-sound@vger.kernel.org,
	Dave Stevenson <dave.stevenson@raspberrypi.com>
Subject: [PATCH 03/18] ARM: dts: bcm283x: Update to use dma-channel-mask
Date: Fri, 24 May 2024 19:26:47 +0100
Message-Id: <20240524182702.1317935-4-dave.stevenson@raspberrypi.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240524182702.1317935-1-dave.stevenson@raspberrypi.com>
References: <20240524182702.1317935-1-dave.stevenson@raspberrypi.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Now the driver looks for the common dma-channel-mask property
rather than the vendor-specific brcm,dma-channel-mask, update
the dt files to follow suit.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
---
 arch/arm/boot/dts/broadcom/bcm2711.dtsi        | 2 +-
 arch/arm/boot/dts/broadcom/bcm2835-common.dtsi | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/broadcom/bcm2711.dtsi b/arch/arm/boot/dts/broadcom/bcm2711.dtsi
index e4e42af21ef3..d64bf098b697 100644
--- a/arch/arm/boot/dts/broadcom/bcm2711.dtsi
+++ b/arch/arm/boot/dts/broadcom/bcm2711.dtsi
@@ -103,7 +103,7 @@ dma: dma-controller@7e007000 {
 					  "dma9",
 					  "dma10";
 			#dma-cells = <1>;
-			brcm,dma-channel-mask = <0x07f5>;
+			dma-channel-mask = <0x07f5>;
 		};
 
 		pm: watchdog@7e100000 {
diff --git a/arch/arm/boot/dts/broadcom/bcm2835-common.dtsi b/arch/arm/boot/dts/broadcom/bcm2835-common.dtsi
index 9261b67dbee1..3ba8db8eed0f 100644
--- a/arch/arm/boot/dts/broadcom/bcm2835-common.dtsi
+++ b/arch/arm/boot/dts/broadcom/bcm2835-common.dtsi
@@ -46,7 +46,7 @@ dma: dma-controller@7e007000 {
 					  "dma14",
 					  "dma-shared-all";
 			#dma-cells = <1>;
-			brcm,dma-channel-mask = <0x7f35>;
+			dma-channel-mask = <0x7f35>;
 		};
 
 		intc: interrupt-controller@7e00b200 {
-- 
2.34.1


