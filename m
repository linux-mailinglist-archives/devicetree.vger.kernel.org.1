Return-Path: <devicetree+bounces-69044-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 68AA48CE99B
	for <lists+devicetree@lfdr.de>; Fri, 24 May 2024 20:28:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CD03CB223BA
	for <lists+devicetree@lfdr.de>; Fri, 24 May 2024 18:28:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A952240856;
	Fri, 24 May 2024 18:28:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="eZ6RhjaH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f97.google.com (mail-wm1-f97.google.com [209.85.128.97])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 906A740C03
	for <devicetree@vger.kernel.org>; Fri, 24 May 2024 18:27:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.97
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716575280; cv=none; b=n0G89aRjsTUp3Fe4CiV174MwWbYpw9tRFiahDrtb95C2X14N/REOHmZrI4oz+Nd+P+K6Dz7dE0sg0eGRz9agm6RdW7yhmgwiHv3JWqhAExCV1QlmQbG5lqkJ6dX1dRumdjw3zrQx9YUxvvs22JSZrqcjKpE5/8iQ8jkDJpThnZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716575280; c=relaxed/simple;
	bh=nfU4i7o8p143//pVAQIuLJreZUHivVRGYWOYdCfqYIA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=PUMe7sFjyZMyZVH6T+kL8tX9xTfylUPzcFVuoz/GVXGHXETFXg7BqD4kUC2C5e/YP1kIROmE//bHHOkGYfhZB+xdECQAcY1Y3NARFqmlBEeawP3riuTE4daR0zCE0oy55x8WAtOedaiquvrkDw2W39/vq2Svbdx1C2ON46CpVLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=eZ6RhjaH; arc=none smtp.client-ip=209.85.128.97
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-wm1-f97.google.com with SMTP id 5b1f17b1804b1-4202cea9a2fso33253385e9.3
        for <devicetree@vger.kernel.org>; Fri, 24 May 2024 11:27:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1716575274; x=1717180074; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2dAf5h5XwHiWp+dmoS6JsUC+O9MVsTne143uCle/zUc=;
        b=eZ6RhjaHWn7JAwBMH3CDTN9O3tUGAubZo3Q5rnemb2GnpUMXGD/J7rY/ho0nnrYRof
         fKYmq97Yai6JC7D/2b6suH3E+kY21hQr0DRSR4FnWZ76bWUmz3f+VMfdKdnRCd1qK/mo
         L9o2+IqFsf+9nRwq5s7lz3DpKsyaWJnpXl9rH1Zs+er9AFMTy7kwOhuDeb16qZAifCPj
         WAJGlvHghsGMY7fSWf5shWzjliTfD4uvH4Q15g9O5q//ZCvpFZ/i32ODtqcogCbT8Vvq
         JuhxQXUvIseKuZXb1pOpft7ohXUOW1Nn7NRCl5xkXtGQDJluYo0cCXHcXe3jsSqyllXy
         qfpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716575274; x=1717180074;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2dAf5h5XwHiWp+dmoS6JsUC+O9MVsTne143uCle/zUc=;
        b=Agf3ptbBm1kSK4KRDedthlYm7VmbstEWe0rJXBNxsyHDe5lE39Bs0Fs9dZC97P4THx
         Bda/V/Azx9Qf13v/zl+0vp2pjtgnib9HDVSriEQaKhmNI9jag6eSg5okXcmR6qg6cFai
         P3I9w0Ovx3NqpNISal0waZ89bJ5vnFBUOMm9xRGeC/E5T0J4grl7VvC3M+JK6OsfYTVA
         Ibj0S25pxPZERQeZ/FaMLPcnJun2A6pPP3e1p8+QGHib9J+6gCD1LlB4iUo+Am5rGxmX
         eV8L5+nGtGR/mnMnTB9AZh3nWMe/1aDOpaUwleHMGg26S7ByoVSDbK2SM9VSAx3IAwdR
         ovGA==
X-Gm-Message-State: AOJu0YyQDWtcNW1cRXVwejJbUHbWEcox3yKFq/htpgMI6yUoiEVU7o3S
	Fb46fmZuPZjVVYg+0/ZF69eILh1OGInk86650/USY4ppqc/jyen3zeryeymUUqf8L63YzAXFSkU
	CRq1t2QkOVB3X1DCjMkrnKSR87O9K91kv
X-Google-Smtp-Source: AGHT+IG7AwSKXGWwm3Jk0PS/jS/c6HEpbiqG3nmvQrlTW240Q10yveOxPP4at4VICqmuogqReFECxtmY3Gqc
X-Received: by 2002:adf:f746:0:b0:34d:bab1:26eb with SMTP id ffacd0b85a97d-3552fe17476mr2052052f8f.68.1716575274538;
        Fri, 24 May 2024 11:27:54 -0700 (PDT)
Received: from raspberrypi.com ([188.39.149.98])
        by smtp-relay.gmail.com with ESMTPS id ffacd0b85a97d-35579d7c6bfsm65665f8f.22.2024.05.24.11.27.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 May 2024 11:27:54 -0700 (PDT)
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
	Stefan Wahren <stefan.wahren@i2se.com>,
	Dave Stevenson <dave.stevenson@raspberrypi.com>
Subject: [PATCH 06/18] dmaengine: bcm2835: make address increment platform independent
Date: Fri, 24 May 2024 19:26:50 +0100
Message-Id: <20240524182702.1317935-7-dave.stevenson@raspberrypi.com>
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

From: Stefan Wahren <stefan.wahren@i2se.com>

Actually the criteria to increment source & destination address doesn't
based on platform specific bits. It's just the DMA transfer direction which
is translated into the info bits. So introduce two new helper functions
and get the rid of these platform specifics.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
---
 drivers/dma/bcm2835-dma.c | 28 ++++++++++++++++++++++------
 1 file changed, 22 insertions(+), 6 deletions(-)

diff --git a/drivers/dma/bcm2835-dma.c b/drivers/dma/bcm2835-dma.c
index ef452ebb3c15..d6c5a2762a46 100644
--- a/drivers/dma/bcm2835-dma.c
+++ b/drivers/dma/bcm2835-dma.c
@@ -252,6 +252,24 @@ static u32 bcm2835_dma_prepare_cb_extra(struct bcm2835_chan *c,
 	return result;
 }
 
+static inline bool need_src_incr(enum dma_transfer_direction direction)
+{
+	return direction != DMA_DEV_TO_MEM;
+}
+
+static inline bool need_dst_incr(enum dma_transfer_direction direction)
+{
+	switch (direction) {
+	case DMA_MEM_TO_MEM:
+	case DMA_DEV_TO_MEM:
+		return true;
+	default:
+		break;
+	}
+
+	return false;
+}
+
 static void bcm2835_dma_free_cb_chain(struct bcm2835_desc *desc)
 {
 	size_t i;
@@ -336,10 +354,8 @@ static inline size_t bcm2835_dma_count_frames_for_sg(
  * @cyclic:         it is a cyclic transfer
  * @info:           the default info bits to apply per controlblock
  * @frames:         number of controlblocks to allocate
- * @src:            the src address to assign (if the S_INC bit is set
- *                  in @info, then it gets incremented)
- * @dst:            the dst address to assign (if the D_INC bit is set
- *                  in @info, then it gets incremented)
+ * @src:            the src address to assign
+ * @dst:            the dst address to assign
  * @buf_len:        the full buffer length (may also be 0)
  * @period_len:     the period length when to apply @finalextrainfo
  *                  in addition to the last transfer
@@ -408,9 +424,9 @@ static struct bcm2835_desc *bcm2835_dma_create_cb_chain(
 			d->cb_list[frame - 1].cb->next = cb_entry->paddr;
 
 		/* update src and dst and length */
-		if (src && (info & BCM2835_DMA_S_INC))
+		if (src && need_src_incr(direction))
 			src += control_block->length;
-		if (dst && (info & BCM2835_DMA_D_INC))
+		if (dst && need_dst_incr(direction))
 			dst += control_block->length;
 
 		/* Length of total transfer */
-- 
2.34.1


