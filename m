Return-Path: <devicetree+bounces-50271-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id ED7F987A910
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 15:09:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A4281288F45
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 14:09:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 950A444393;
	Wed, 13 Mar 2024 14:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="NuC5oEb8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6203B43AD5
	for <devicetree@vger.kernel.org>; Wed, 13 Mar 2024 14:08:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710338933; cv=none; b=mkE+Lm4m5lMeYNAKPWULqH72GqIf5h18xRfSmn7O29oPPopMuS2iBPikhQePgyz1kYEIW1g7vaHflGlWhcQQa1RFAdCDFe3jKImJcGF8QhBdlos2Txa4Zt/CwpFI5UHsmVmIeCbTEXfTvI4Vwfqw8Jplyq8GlKp1R77DfVtVqKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710338933; c=relaxed/simple;
	bh=jjis7xsIFrLu1sl29w85XAmU74ruhJPA4C3PFk6UMzg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=LKv4DyYg7pHBIzWXOTBJnSkwpivdKJvI7EElfUGRbV3+zkYEy8mI/8Kq7u2RbGeO/Kj+/jY4Wk91NY9MbURpAv6D3Gppj2zHWzvk/Av4EQOJ7YxWshzR/blPWMdk0siUY3eSWFczm050Hf5+pfAMQto8fqxBY5Jmb1PGiq62tnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=NuC5oEb8; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-56647babfe6so8151508a12.3
        for <devicetree@vger.kernel.org>; Wed, 13 Mar 2024 07:08:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1710338930; x=1710943730; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1+qHX7SxjysW+WBJacqKls7OusP1dBurz/GxAdGzZn4=;
        b=NuC5oEb8vzIMVS7FoXIilQf3/9z7y+Wul5g9pUQVPsZd9lxh4GMS9TB3VT3TQd1rJh
         7rgjNPrmoRhOjMiZPjFpDvCA9y1HA2I0Esc9bqSzgJFSYpqSR9sreANzEsfXQ83MnClq
         DIBcIKcptvzlKzE1M5dCPm/+CHbHEe9cRh1BA0evQ45Tn2DPQMXIysrU8J9Rm4dL9xHi
         vE9KNa2D14rr9LSlcMPzj9G4jjQ8eKeWcHCMqS9yPIKaysFa+9swh5n3PZTTETatd3ER
         1IkzPTxioeYUr/uw2hc7m+5DRHe6luqBzgxVCN0Vx9mQnmPNITc904h7HyzdgZCx4ePg
         qbpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710338930; x=1710943730;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1+qHX7SxjysW+WBJacqKls7OusP1dBurz/GxAdGzZn4=;
        b=P4tBV+4dePPXIZd0JiYy3wI4I36UgtHd/VHSJm0cFrbZU7HIx1UMI1rSpQthpsc/sv
         184Yaf7uVLb6EL8ic3WRM2HZGmhNANqWBMXPjF9qijBSzLIi/81dz7Rml/BIEvHYeUgb
         5D2QVYuwcEfKv9x120Tl7AQBOIp4COthoddfWs3IvhPR58WVGaWuztuHh2zZf/VpY3JD
         N+OUTdVPrXuDOhctzTrF/uV+L/IDQxk/BQcv0r73O6iCkUkmRDrnMj3xaDSWVfoj6srv
         90orMlMO9FNy8hkcWocSosIza7hxq4Fd2esI7qYPf8h27zstkbx6+zt8eOizSrwK7vRj
         0HeA==
X-Forwarded-Encrypted: i=1; AJvYcCX5zdSfTUxRq8J3NF+MKmXNffs+OEomyNJ9Yyy3TqiYnPd6kI04pB3Jp83HOurzMCHPgInPAmRQcVAiBzr6wz9XaVjR6O+kJ54/GQ==
X-Gm-Message-State: AOJu0YzZP4Bq0abHGl9gTBwwqSgIk9iP3CTxFEdnagbBBumpJFSBC8yl
	kQCeipzZuy6xnQV+77K3JBODtr8++F8wS7NcZv0hUFI9CGIIylcUFMr+3wD/o06QNnVTvnVRQEG
	B
X-Google-Smtp-Source: AGHT+IEQhY1LzZrqKG46nbukNSNTyWGekHoM+pNHxFUDfOcSbMTklqa6OdRjNge+Unwg8hREwyz0mg==
X-Received: by 2002:a17:907:c30a:b0:a45:84e7:b265 with SMTP id tl10-20020a170907c30a00b00a4584e7b265mr2885296ejc.7.1710338929747;
        Wed, 13 Mar 2024 07:08:49 -0700 (PDT)
Received: from localhost (host-82-56-173-172.retail.telecomitalia.it. [82.56.173.172])
        by smtp.gmail.com with ESMTPSA id o13-20020a17090611cd00b00a45ff1fe8dasm4792514eja.115.2024.03.13.07.08.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Mar 2024 07:08:49 -0700 (PDT)
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
Subject: [PATCH v2 02/15] dmaengine: bcm2835: Add support for per-channel flags
Date: Wed, 13 Mar 2024 15:08:27 +0100
Message-ID: <da598378f733a8d45a35ed77f9626cc082262b1a.1710226514.git.andrea.porta@suse.com>
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

From: Phil Elwell <phil@raspberrypi.org>

Add the ability to interpret the high bits of the dreq specifier as
flags to be included in the DMA_CS register. The motivation for this
change is the ability to set the DISDEBUG flag for SD card transfers
to avoid corruption when using the VPU debugger.

Signed-off-by: Phil Elwell <phil@raspberrypi.org>
Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
---
 drivers/dma/bcm2835-dma.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/dma/bcm2835-dma.c b/drivers/dma/bcm2835-dma.c
index 428253b468ac..3d9973dd041d 100644
--- a/drivers/dma/bcm2835-dma.c
+++ b/drivers/dma/bcm2835-dma.c
@@ -137,6 +137,10 @@ struct bcm2835_desc {
 #define BCM2835_DMA_S_DREQ	BIT(10) /* enable SREQ for source */
 #define BCM2835_DMA_S_IGNORE	BIT(11) /* ignore source reads - read 0 */
 #define BCM2835_DMA_BURST_LENGTH(x) (((x) & 15) << 12)
+#define BCM2835_DMA_CS_FLAGS(x) ((x) & (BCM2835_DMA_PRIORITY(15) | \
+				      BCM2835_DMA_PANIC_PRIORITY(15) | \
+				      BCM2835_DMA_WAIT_FOR_WRITES | \
+				      BCM2835_DMA_DIS_DEBUG))
 #define BCM2835_DMA_PER_MAP(x)	(((x) & 31) << 16) /* REQ source */
 #define BCM2835_DMA_WAIT(x)	(((x) & 31) << 21) /* add DMA-wait cycles */
 #define BCM2835_DMA_NO_WIDE_BURSTS BIT(26) /* no 2 beat write bursts */
@@ -449,7 +453,8 @@ static void bcm2835_dma_start_desc(struct bcm2835_chan *c)
 	c->desc = to_bcm2835_dma_desc(&vd->tx);
 
 	writel(c->desc->cb_list[0].paddr, c->chan_base + BCM2835_DMA_ADDR);
-	writel(BCM2835_DMA_ACTIVE, c->chan_base + BCM2835_DMA_CS);
+	writel(BCM2835_DMA_ACTIVE | BCM2835_DMA_CS_FLAGS(c->dreq),
+	       c->chan_base + BCM2835_DMA_CS);
 }
 
 static irqreturn_t bcm2835_dma_callback(int irq, void *data)
@@ -476,7 +481,8 @@ static irqreturn_t bcm2835_dma_callback(int irq, void *data)
 	 * if this IRQ handler is threaded.) If the channel is finished, it
 	 * will remain idle despite the ACTIVE flag being set.
 	 */
-	writel(BCM2835_DMA_INT | BCM2835_DMA_ACTIVE,
+	writel(BCM2835_DMA_INT | BCM2835_DMA_ACTIVE |
+	       BCM2835_DMA_CS_FLAGS(c->dreq),
 	       c->chan_base + BCM2835_DMA_CS);
 
 	d = c->desc;
-- 
2.35.3


