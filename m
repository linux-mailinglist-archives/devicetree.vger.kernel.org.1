Return-Path: <devicetree+bounces-69056-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 37F388CE9D2
	for <lists+devicetree@lfdr.de>; Fri, 24 May 2024 20:30:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 828EBB225BB
	for <lists+devicetree@lfdr.de>; Fri, 24 May 2024 18:29:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8AA36F07A;
	Fri, 24 May 2024 18:28:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="DWX27F+F"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f97.google.com (mail-lf1-f97.google.com [209.85.167.97])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B7BD59173
	for <devicetree@vger.kernel.org>; Fri, 24 May 2024 18:28:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.97
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716575289; cv=none; b=RU3PORpDPVQcJK2yl1FHPbgl1LgXRiMUMtE6pTb7h+tCmRmxY9q84HDuENCrS79OvbPaOSR5eKYVMadvMBD6Ge+IciZQyBdLAUFidxBaDuLiRZsFzqIJD6WSbVRsvrOBu1e2P0DCJVMIJTNQHohRof4qE640HjQ/617IAbwW8N0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716575289; c=relaxed/simple;
	bh=txNXDmI+i52QByifcvV/37TC8rzKbXT7VxR03bSa2jU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=bAsjp19r4x0HKfTqGGIoNUuA94paUYrI5OHsE1rIoElgO4hlHgDTEmuIgLm0DBSz4Q86FQtpM/eeIOGCum5fRAJKBdfAznFrwmqhuzJArU0RONiHVFjJ+xrVBStumxhm1fcy8kfXY2/LN42PU2cbc2t4NmJqVR6WcT0g3/5yZTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=DWX27F+F; arc=none smtp.client-ip=209.85.167.97
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-lf1-f97.google.com with SMTP id 2adb3069b0e04-5295c65d3fdso1125149e87.0
        for <devicetree@vger.kernel.org>; Fri, 24 May 2024 11:28:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1716575281; x=1717180081; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ILGqA7+HzXQqr0Ob8oymTx1wN+C0088/4KfGywkxvSc=;
        b=DWX27F+FYPicuIZa1Ly0zVJ2V8kTJl/XLQ777SJ1Hd1qUT4ovexKmYiFkuTvofQ7J2
         BkdL6PrSmM/2M4+0AEBm6WtAf+eoXc0SFBwBXBkcG8Y1ZQCl6iGWLGIbqYbXzjuT5n5X
         bDq30nT6w4AqYWVxjcAgrKx6zC7K8rakbmR6EvgBOuxZ2Lqc5tV4I3E8vq68MZqPW13w
         WIiaP4uGAvfTe0bhZ2QiAAOocI6hJ6wWVgqDDKFhZYtchxmoolSWDQ8sthQTiLR09fOT
         xCbDAfDJPIuSco9HdJYMIdWvaOi1eKFuAql6/y5qFizcCoGINKIzcwwsWTryzdAtCEY/
         1PyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716575281; x=1717180081;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ILGqA7+HzXQqr0Ob8oymTx1wN+C0088/4KfGywkxvSc=;
        b=aZ6YVHCotIxAZs8viN76X5+YVLJGUCDxuMf5pUttfhBnrmBvxhIGfoNA6xBe9vdFSd
         LPBW6ABz9YADnF5o+LQkS3a3WRyfr07N3B5ocpI/FxFlpaJuwclVNEajjITXG4PZzxv0
         93XkWgk/jfYDyfoUVjMWSX3edyR1/5R3Rd3vCFyysKHonIB4tl/i256gGi9xGYtjJPMa
         sipuOK11uFkyi3Cb4LmZG8DyOup0YhyiDI7T+jL/kzhWY7NBxH0tXc8Tv+icBJAl3i2J
         e/RTJi2vGHSPPb7zJqvVlNkhvPree63eYEPN5/L4W/81usSe+UWnLpuXD6uwpiX3aLNS
         7xlw==
X-Gm-Message-State: AOJu0YzvqTN8MACkK2eFiLi9ELaSY1QdgRqA8EqJOr0CW/9UPwu7oc9J
	R1q8InX0ZpdC0y+KDpv/C4beTU33krd5+RR9u0hIGICfhECGrg+0o9r5voxfvDA4KMNtys5xIUk
	3pdEkCdu44N1oJkpLPuqghMM4F3VYEt/5
X-Google-Smtp-Source: AGHT+IF1+0vxRvmRUWINjGzopDgrgXSdoJO/81rJkJR0w/gJjv8782tLukyv6IUMN4Wu5q+/dPS8x/uZhNPk
X-Received: by 2002:a05:6512:290:b0:51d:7d4a:517e with SMTP id 2adb3069b0e04-527ef210aa5mr1916182e87.9.1716575281453;
        Fri, 24 May 2024 11:28:01 -0700 (PDT)
Received: from raspberrypi.com ([188.39.149.98])
        by smtp-relay.gmail.com with ESMTPS id 38308e7fff4ca-2e95bcd2393sm339921fa.6.2024.05.24.11.28.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 May 2024 11:28:01 -0700 (PDT)
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
Subject: [PATCH 17/18] ASoC: bcm2835-i2s: Use phys addresses for DAI DMA
Date: Fri, 24 May 2024 19:27:01 +0100
Message-Id: <20240524182702.1317935-18-dave.stevenson@raspberrypi.com>
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

From: Phil Elwell <phil@raspberrypi.com>

Contrary to what struct snd_dmaengine_dai_dma_data suggests, the
configuration of addresses of DMA slave interfaces should be done in
CPU physical addresses.

Signed-off-by: Phil Elwell <phil@raspberrypi.com>
Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
---
 sound/soc/bcm/bcm2835-i2s.c | 18 ++++--------------
 1 file changed, 4 insertions(+), 14 deletions(-)

diff --git a/sound/soc/bcm/bcm2835-i2s.c b/sound/soc/bcm/bcm2835-i2s.c
index 9bda6499e66e..2d0fe53245f0 100644
--- a/sound/soc/bcm/bcm2835-i2s.c
+++ b/sound/soc/bcm/bcm2835-i2s.c
@@ -30,7 +30,6 @@
 #include <linux/init.h>
 #include <linux/io.h>
 #include <linux/module.h>
-#include <linux/of_address.h>
 #include <linux/slab.h>
 
 #include <sound/core.h>
@@ -830,8 +829,7 @@ static int bcm2835_i2s_probe(struct platform_device *pdev)
 	struct bcm2835_i2s_dev *dev;
 	int ret;
 	void __iomem *base;
-	const __be32 *addr;
-	dma_addr_t dma_base;
+	struct resource *res;
 
 	dev = devm_kzalloc(&pdev->dev, sizeof(*dev),
 			   GFP_KERNEL);
@@ -846,7 +844,7 @@ static int bcm2835_i2s_probe(struct platform_device *pdev)
 				     "could not get clk\n");
 
 	/* Request ioarea */
-	base = devm_platform_ioremap_resource(pdev, 0);
+	base = devm_platform_get_and_ioremap_resource(pdev, 0, &res);
 	if (IS_ERR(base))
 		return PTR_ERR(base);
 
@@ -855,19 +853,11 @@ static int bcm2835_i2s_probe(struct platform_device *pdev)
 	if (IS_ERR(dev->i2s_regmap))
 		return PTR_ERR(dev->i2s_regmap);
 
-	/* Set the DMA address - we have to parse DT ourselves */
-	addr = of_get_address(pdev->dev.of_node, 0, NULL, NULL);
-	if (!addr) {
-		dev_err(&pdev->dev, "could not get DMA-register address\n");
-		return -EINVAL;
-	}
-	dma_base = be32_to_cpup(addr);
-
 	dev->dma_data[SNDRV_PCM_STREAM_PLAYBACK].addr =
-		dma_base + BCM2835_I2S_FIFO_A_REG;
+		res->start + BCM2835_I2S_FIFO_A_REG;
 
 	dev->dma_data[SNDRV_PCM_STREAM_CAPTURE].addr =
-		dma_base + BCM2835_I2S_FIFO_A_REG;
+		res->start + BCM2835_I2S_FIFO_A_REG;
 
 	/* Set the bus width */
 	dev->dma_data[SNDRV_PCM_STREAM_PLAYBACK].addr_width =
-- 
2.34.1


