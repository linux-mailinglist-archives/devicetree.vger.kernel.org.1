Return-Path: <devicetree+bounces-50274-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 62B0A87A91A
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 15:09:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 18F64286C61
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 14:09:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5F6448790;
	Wed, 13 Mar 2024 14:08:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="II4BFqX6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A07E94502C
	for <devicetree@vger.kernel.org>; Wed, 13 Mar 2024 14:08:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710338937; cv=none; b=tsTr8YUZMGm7oM+gHBjKBAsAkIxyxMrPh1xQWhJ5XriAMoTreAxyO21IhvXIHnWZ5g+dQzpCZuVYrmbVqh+AFlOY2jN3Qb/WJdSJb/7EafdmRmvMWPh3stmr5deNjeJTtd8cknMDGF0x+mhNsI/F6B3HKn906JIU1TLMdeyQdp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710338937; c=relaxed/simple;
	bh=Ynq2F2bMfhoLu2FW/bFjh5jnZcIj/QLxPgEvfGRr8J8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=AmR1xJLHHnJN88c/boFMYsMtFAzRaxUIpkPSDF72zqcxzGXOOIlG4Vdm1vzFrm6UEvytoSAT3fdaNitOehOf8u+VMDPSNmG9C3T1b4Qa0Or6+SzjFfTNJqpbNLHozR8opS5AKc5KLCZCufn3vZtBv2Tnl/6Ty6InuteGC6jgMx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=II4BFqX6; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-a4661ed51c8so74440966b.3
        for <devicetree@vger.kernel.org>; Wed, 13 Mar 2024 07:08:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1710338934; x=1710943734; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Cdk6dXpjlqfTsKeP/epQp+Lh/qATka/VT0PX0aJnoDc=;
        b=II4BFqX6+9qRW3LXpSuY8OgyNOWSMxaskfDkKvhoUsHAoz4c9fhNL9ZfTJHSP30mIU
         /wjYWHsuNYpUFNnJZxwYb78t1u7gZwItTnIx+tZTlx9xQdyMfRd6JAihjFfvTe19Cj1E
         Qr40/QcJsEKxTZWh3rgcQKwSZ8Hug0ie9EVKrrTFVkDMLS85Pykf/BKaXIu6dbVvtJ27
         U/cL/2fAn0BCwG0ez5rf6MD4YM8dhXWnQw8GUhFo0z+v8MYt8vBzQfUnm8Rae1gmUxwy
         qtI1Sj9Q6NMqrsVloXTA2HJzFvgiJoEPJYOe6jXnRFSaQCTH0gpMClQmt8aF8Fw+UTCG
         +pyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710338934; x=1710943734;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Cdk6dXpjlqfTsKeP/epQp+Lh/qATka/VT0PX0aJnoDc=;
        b=PWsA3ixQDXB2HJP+phmXcwzKYqKHpL/x3LxuPXm5ZK5I+6T7AwHiCrM5BSaPIjVIur
         UphnjvbMVt6jaFDHlxZTmgA0qbjxKuxTtwXmeEpc753R43fHNL6UU2kfk81HOw/8HMo/
         dwKVnQTjD/pcOWI6DQqt0QwQd9Hz+CxiAbHIOIgpwQG2PBkeh9SBTvzRpwIf7lEzC7nv
         mHaW8Od7+tQGxFP/uUCWtAPuP9hIhnMToW7SwWuI/rjgkQqQl4xzzo0tor2TklCyWOvx
         GubBkmDB01deT9078KlXqYsls6jJfAl/hBeTuXYUueW6bLPTZs4s+7e5a6cNYNHVuUJS
         kfzg==
X-Forwarded-Encrypted: i=1; AJvYcCXgxlohxKdA6raVWhl/ip1UJ9zZloj0wupR3jQzisqmdscHTxA5NVFuqo5Z0QzqmQMk5HDJI6Wsr8uNkNt9QP3tyqz7dbeZ0vjBHw==
X-Gm-Message-State: AOJu0Yys/LPPwOx/nmiTJr8nD6Nmg6iwMK78GTcT+SWztQpfj2umgWCy
	EQ1fPnT1JYrzmk6hiIWZ/MHhVCN+oSOKf5DCPpYwDczIEd0ziJL0/4Lwh4HvuKg=
X-Google-Smtp-Source: AGHT+IGTRwgng8S9k6d0RlgfwcavmOY9mY6e0rpOTny7I0uyb3DtRPz/SPE6JA7TCCokGu/curyFDg==
X-Received: by 2002:a17:906:40d4:b0:a46:63af:b1aa with SMTP id a20-20020a17090640d400b00a4663afb1aamr700791ejk.55.1710338934158;
        Wed, 13 Mar 2024 07:08:54 -0700 (PDT)
Received: from localhost (host-82-56-173-172.retail.telecomitalia.it. [82.56.173.172])
        by smtp.gmail.com with ESMTPSA id ku16-20020a170907789000b00a4655513f0bsm730365ejc.88.2024.03.13.07.08.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Mar 2024 07:08:53 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
To: Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Ray Jui <rjui@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Saenz Julienne <nsaenz@kernel.org>,
	dmaengine@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	dave.stevenson@raspberrypi.com
Cc: Phil Elwell <phil@raspberrypi.org>,
	Maxime Ripard <maxime@cerno.tech>,
	Stefan Wahren <stefan.wahren@i2se.com>,
	Dom Cobley <popcornmix@gmail.com>,
	Andrea della Porta <andrea.porta@suse.com>
Subject: [PATCH v2 05/15] dmaengine: bcm2835: Fixes for dma_abort
Date: Wed, 13 Mar 2024 15:08:30 +0100
Message-ID: <e2ed18cab06c50c528d639379ab69b907c9da9f3.1710226514.git.andrea.porta@suse.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <cover.1710226514.git.andrea.porta@suse.com>
References: <cover.1710226514.git.andrea.porta@suse.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Dom Cobley <popcornmix@gmail.com>

There is a problem with the current abort scheme
when dma is blocked on a DREQ which prevents halting.

This is triggered by SPI driver which aborts dma
in this state and so leads to a halt timeout.

We attempt to abort the channel, which will work
if there is no blocked DREQ.

It it times out, we can assume there is no AXI
transfer in progress and reset anyway.

The length of the timeout is observed at ~20us.

Signed-off-by: Dom Cobley <popcornmix@gmail.com>
Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
---
 drivers/dma/bcm2835-dma.c | 32 +++++++++++++++++++++++---------
 1 file changed, 23 insertions(+), 9 deletions(-)

diff --git a/drivers/dma/bcm2835-dma.c b/drivers/dma/bcm2835-dma.c
index d442f8728c05..6b8e7461efaf 100644
--- a/drivers/dma/bcm2835-dma.c
+++ b/drivers/dma/bcm2835-dma.c
@@ -435,7 +435,7 @@ static void bcm2835_dma_fill_cb_chain_with_sg(
 static void bcm2835_dma_abort(struct bcm2835_chan *c)
 {
 	void __iomem *chan_base = c->chan_base;
-	long timeout = 10000;
+	long timeout = 100;
 
 	/*
 	 * A zero control block address means the channel is idle.
@@ -444,19 +444,33 @@ static void bcm2835_dma_abort(struct bcm2835_chan *c)
 	if (!readl(chan_base + BCM2835_DMA_ADDR))
 		return;
 
-	/* Write 0 to the active bit - Pause the DMA */
-	writel(0, chan_base + BCM2835_DMA_CS);
+	/* We need to clear the next DMA block pending */
+	writel(0, chan_base + BCM2835_DMA_NEXTCB);
+
+	/* Abort the DMA, which needs to be enabled to complete */
+	writel(readl(chan_base + BCM2835_DMA_CS) | BCM2835_DMA_ABORT | BCM2835_DMA_ACTIVE,
+	       chan_base + BCM2835_DMA_CS);
 
-	/* Wait for any current AXI transfer to complete */
-	while ((readl(chan_base + BCM2835_DMA_CS) &
-		BCM2835_DMA_WAITING_FOR_WRITES) && --timeout)
+	/* wait for DMA to be aborted */
+	while ((readl(chan_base + BCM2835_DMA_CS) & BCM2835_DMA_ABORT) && --timeout)
 		cpu_relax();
 
-	/* Peripheral might be stuck and fail to signal AXI write responses */
-	if (!timeout)
+	/* Write 0 to the active bit - Pause the DMA */
+	writel(readl(chan_base + BCM2835_DMA_CS) & ~BCM2835_DMA_ACTIVE,
+	       chan_base + BCM2835_DMA_CS);
+
+	/*
+	 * Peripheral might be stuck and fail to complete
+	 * This is expected when dreqs are enabled but not asserted
+	 * so only report error in non dreq case
+	 */
+	if (!timeout && !(readl(chan_base + BCM2835_DMA_TI) &
+	   (BCM2835_DMA_S_DREQ | BCM2835_DMA_D_DREQ)))
 		dev_err(c->vc.chan.device->dev,
-			"failed to complete outstanding writes\n");
+			"failed to complete pause on dma %d (CS:%08x)\n", c->ch,
+			readl(chan_base + BCM2835_DMA_CS));
 
+	/* Set CS back to default state and reset the DMA */
 	writel(BCM2835_DMA_RESET, chan_base + BCM2835_DMA_CS);
 }
 
-- 
2.35.3


