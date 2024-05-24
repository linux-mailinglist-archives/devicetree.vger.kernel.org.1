Return-Path: <devicetree+bounces-69053-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 860D98CE9C2
	for <lists+devicetree@lfdr.de>; Fri, 24 May 2024 20:29:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 009E91F22882
	for <lists+devicetree@lfdr.de>; Fri, 24 May 2024 18:29:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3E024AEF4;
	Fri, 24 May 2024 18:28:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="H8SvFKa9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f100.google.com (mail-wm1-f100.google.com [209.85.128.100])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1931A52F9B
	for <devicetree@vger.kernel.org>; Fri, 24 May 2024 18:28:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.100
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716575287; cv=none; b=uDl+ywB09wU9/XZ1oca5fC9bEgmeD181tQQrcralfu/5m+x8Il59ro7dbehY7lrAZuWnrBjaqqNupkEQbjuWIu9olUMzVDhxt2BxcLYse+IaxH+ViVaxeKa/JFc6WESxt5GGH8HS0HE6yXAlIRERessat0D/0yplyhzflgJK4HA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716575287; c=relaxed/simple;
	bh=N3Kfi5rjJxhjSAGsgu3nLGQYoSBKamIirsVfmPZi9nY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=RB+wVlx98Xkz9dSjNMZe4oOfEp6FQo/Gy51WU4rop8+QnUhsg9HriVthKSbqES/w+dT7w1NIRll+QAeOGlIHzTQ4vALVavtYBNxPrL03iH6DO/GQt2VXivM+W7sFHc6mw/2Eu7Gq09nl1HVCZLaeAxBC5HBNeFizpe4jXsR7oaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=H8SvFKa9; arc=none smtp.client-ip=209.85.128.100
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-wm1-f100.google.com with SMTP id 5b1f17b1804b1-420180b58c3so70303145e9.2
        for <devicetree@vger.kernel.org>; Fri, 24 May 2024 11:28:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1716575280; x=1717180080; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FGCf1ir0ewKxnfYL+8Y6zr0drR+R4O1jhqT1oluTBL8=;
        b=H8SvFKa9kcI0I/S+GtybgKj6wteHMsd/mvWsk40hg9y3B5a7budMlqyQzjhI2tTyuc
         KS1R7UFxf0NRtU3gcoSd1Xk7xdRHs4khoOx4koY4eZU9PutbV04+vkjrh8hStrVcaHlg
         t7Y7FGGkUC6+hy4TOVMMMSVriHxTRMzyUfZJWiuWS95xvP6CCA5KvqTmZHtwc1K83yZ4
         IVObWlnssFfrwYMea+b1gDqGMw9dmc7pXVMGzhz14ec3Jkwo4QG1OMl2sPf24xh9+KGG
         xWRJRUSfo8lhlUDrMtl6++T6y9gppJYBvtcN9D3913uLH4Ho+c2t1cRjYmcJfoFmrmcS
         EhtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716575280; x=1717180080;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FGCf1ir0ewKxnfYL+8Y6zr0drR+R4O1jhqT1oluTBL8=;
        b=f4EtyY428bvCsk2yF2d/tYxHfE/kx6HJZq3KxWLeqLlWKfiiMQV59PC4qQmMrn9Hqn
         lig78sduFzHfw4rrDgpWgF3+r55SlQ1ji4TcSkd9ph/73GkNuFN5Hp9IOW8uHJK4apR0
         l7ktDDaJmfpglPhp3z/MyS7IUkZH3x/4s3T8OiYkocAd+nIT0DDS6EsBimFs13w40FlM
         oBni6N8SVSbHwhbOLI4+pXdhtSDS0zSlPEQr6dlsbGYNkTxkNVywzzexbjSSKZ5fboPS
         DhoP4hXHIJUEk+MMFioyVVJf5nt6DMPBUl2c8Dz11nFFq5pNlZyWMSH3BCZqQpaXVvJz
         hw4Q==
X-Gm-Message-State: AOJu0YyrbwTq5aDWmE3s88cWHsMCCnkjnTIkymlAo35AUhRn/bcnbbLd
	UWZj18ffiXwcrcraLq4wB5x4WBErEHc+e1jaKNtwgTgUMiGqUGAyfw70EH+KPjGtdqz9mVd2nMP
	NexFk30RvYqrEtOYIHj28/306M6OG6/TS
X-Google-Smtp-Source: AGHT+IHAQFzXjWnTl+TwMEnEF3wypw9s7LeiM71e7MxN0zWKYR44rUnrOPV4U43jDFBiNTbbJuux8HJQ65dC
X-Received: by 2002:a05:600c:1381:b0:41f:b0e7:f299 with SMTP id 5b1f17b1804b1-42108a59292mr20514315e9.9.1716575280074;
        Fri, 24 May 2024 11:28:00 -0700 (PDT)
Received: from raspberrypi.com ([188.39.149.98])
        by smtp-relay.gmail.com with ESMTPS id 5b1f17b1804b1-42100fa9eb7sm5393305e9.34.2024.05.24.11.27.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 May 2024 11:28:00 -0700 (PDT)
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
Subject: [PATCH 15/18] spi: bcm2835: Use phys addresses for slave DMA config
Date: Fri, 24 May 2024 19:26:59 +0100
Message-Id: <20240524182702.1317935-16-dave.stevenson@raspberrypi.com>
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
 drivers/spi/spi-bcm2835.c | 23 ++++++++---------------
 1 file changed, 8 insertions(+), 15 deletions(-)

diff --git a/drivers/spi/spi-bcm2835.c b/drivers/spi/spi-bcm2835.c
index e1b9b1235787..e8242e0c4246 100644
--- a/drivers/spi/spi-bcm2835.c
+++ b/drivers/spi/spi-bcm2835.c
@@ -119,6 +119,7 @@ MODULE_PARM_DESC(polling_limit_us,
  */
 struct bcm2835_spi {
 	void __iomem *regs;
+	phys_addr_t phys_addr;
 	struct clk *clk;
 	struct gpio_desc *cs_gpio;
 	unsigned long clk_hz;
@@ -891,19 +892,8 @@ static int bcm2835_dma_init(struct spi_controller *ctlr, struct device *dev,
 			    struct bcm2835_spi *bs)
 {
 	struct dma_slave_config slave_config;
-	const __be32 *addr;
-	dma_addr_t dma_reg_base;
 	int ret;
 
-	/* base address in dma-space */
-	addr = of_get_address(ctlr->dev.of_node, 0, NULL, NULL);
-	if (!addr) {
-		dev_err(dev, "could not get DMA-register address - not using dma mode\n");
-		/* Fall back to interrupt mode */
-		return 0;
-	}
-	dma_reg_base = be32_to_cpup(addr);
-
 	/* get tx/rx dma */
 	ctlr->dma_tx = dma_request_chan(dev, "tx");
 	if (IS_ERR(ctlr->dma_tx)) {
@@ -925,7 +915,7 @@ static int bcm2835_dma_init(struct spi_controller *ctlr, struct device *dev,
 	 * or, in case of an RX-only transfer, cyclically copies from the zero
 	 * page to the FIFO using a preallocated, reusable descriptor.
 	 */
-	slave_config.dst_addr = (u32)(dma_reg_base + BCM2835_SPI_FIFO);
+	slave_config.dst_addr = bs->phys_addr + BCM2835_SPI_FIFO;
 	slave_config.dst_addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES;
 
 	ret = dmaengine_slave_config(ctlr->dma_tx, &slave_config);
@@ -964,9 +954,9 @@ static int bcm2835_dma_init(struct spi_controller *ctlr, struct device *dev,
 	 * RX FIFO or, in case of a TX-only transfer, cyclically writes a
 	 * precalculated value to the CS register to clear the RX FIFO.
 	 */
-	slave_config.src_addr = (u32)(dma_reg_base + BCM2835_SPI_FIFO);
+	slave_config.src_addr = bs->phys_addr + BCM2835_SPI_FIFO;
 	slave_config.src_addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES;
-	slave_config.dst_addr = (u32)(dma_reg_base + BCM2835_SPI_CS);
+	slave_config.dst_addr = bs->phys_addr + BCM2835_SPI_CS;
 	slave_config.dst_addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES;
 
 	ret = dmaengine_slave_config(ctlr->dma_rx, &slave_config);
@@ -1336,6 +1326,7 @@ static int bcm2835_spi_probe(struct platform_device *pdev)
 {
 	struct spi_controller *ctlr;
 	struct bcm2835_spi *bs;
+	struct resource *iomem;
 	int err;
 
 	ctlr = devm_spi_alloc_host(&pdev->dev, sizeof(*bs));
@@ -1359,10 +1350,12 @@ static int bcm2835_spi_probe(struct platform_device *pdev)
 	bs = spi_controller_get_devdata(ctlr);
 	bs->ctlr = ctlr;
 
-	bs->regs = devm_platform_ioremap_resource(pdev, 0);
+	bs->regs = devm_platform_get_and_ioremap_resource(pdev, 0, &iomem);
 	if (IS_ERR(bs->regs))
 		return PTR_ERR(bs->regs);
 
+	bs->phys_addr = iomem->start;
+
 	bs->clk = devm_clk_get_enabled(&pdev->dev, NULL);
 	if (IS_ERR(bs->clk))
 		return dev_err_probe(&pdev->dev, PTR_ERR(bs->clk),
-- 
2.34.1


