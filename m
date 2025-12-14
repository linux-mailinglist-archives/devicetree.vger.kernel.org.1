Return-Path: <devicetree+bounces-246353-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A246CBC17E
	for <lists+devicetree@lfdr.de>; Sun, 14 Dec 2025 23:48:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 49AA3301B49D
	for <lists+devicetree@lfdr.de>; Sun, 14 Dec 2025 22:47:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6B97314A63;
	Sun, 14 Dec 2025 22:47:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lq9TUJMP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28AAD18BC3D
	for <devicetree@vger.kernel.org>; Sun, 14 Dec 2025 22:47:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765752433; cv=none; b=sFoTCb0+Ufp1Lj/nZAVjcTY4gDzONtYltEW/uohWLz5yjeO1snHzFMEmgb62spOuQc/I39gfLWvGEMKkp0Taz1FhCx7MysVTqS/EDbPQQFTe3BPM5Wk9P1KY+4TGPmzL1wHPPHvU+6DcI3GEA9ZIPv/U0UmeKuVUhdw9PEY4fSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765752433; c=relaxed/simple;
	bh=akAwE7wcDd2SCjXGGhXqxByfTjxbJVFWLP9xLEGPGRU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=dGa4Iczsr4yg+oAt4f3qOKrfvuyzmso4lc6Ptf7VFB1IvyJsbmTvq1bGys/y/uuOI5Hu1PtCENuCb/D8R04h+nkkr7HE8ue9TtVkMIuXklzvGCgALQoW+qWJbMxvo+SKe+jc9Cd3B6K0/Ex9H8iCoTKNJJCfyFHmY6rt30Laj9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lq9TUJMP; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-2a0bb2f093aso7731715ad.3
        for <devicetree@vger.kernel.org>; Sun, 14 Dec 2025 14:47:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765752431; x=1766357231; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JyPrePrVyIxKolVVQUdwjbRSU8L6ctwDY64qSpxJztc=;
        b=lq9TUJMPktWh/tomVqlPT/pHllAqjSg/V4/qrR0JPpcADriP0aknn+L2ODCqXc9aRp
         xqI8lmsG2Ffho7HyATH9pes1qwNMBF9rs6kkRfZvoBF0wehopkRDPXna/zkaymlzc7Hc
         Jhjdaafj3zy1wSjNh+rVHkZsG3wGTriAodlf/rBovav1zsHxTpx4gzvS4PqN4jH9QTfJ
         I0wlF3A8eS+EBf84I/5YRord1ai5CxNAK1N2kJvfFT0T/xHsLpjjgr3HZfkHNqTh8zA8
         rrBMdmMJJqyn1NfV5I3xm14w9VpVyur4FGNoQPLKCHro/B98XcMxkM7ApT1omRypy6Nj
         g9Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765752431; x=1766357231;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=JyPrePrVyIxKolVVQUdwjbRSU8L6ctwDY64qSpxJztc=;
        b=w/CsW279muscNzhP78ZBFFEF0VmVxSBKuxuMZu+ntFyoXoEbVYW8EAGNVS4yJugH4+
         5JwfbjeVfsKQXn/TsDJ8bpZyydS6DJdsbDWuJ4ZQsOnPBjw2Ztgh6IPMLWQMw3QBxAOV
         AUlLDuSt8TNGEXIy/e6SN+j/zkhVqB7wP8+Dpp85wyIVMdUoC1BwSnxwewuxcg5ZObfG
         KWnXy/GD270Ioi5L1z4QwsCXrygfqF+b+GkS3X/znjlnutDovRKWEMZTGX6k4NXSYTBa
         ak9sApLyE6m8x46QFsx7iRfSuQqmGnziwNJ1Ldc0pw3O+h8H4lvLgqM8CUY5xMVsWO9g
         4mow==
X-Forwarded-Encrypted: i=1; AJvYcCUAPbWCnffaM+73WPDH8FQ7hlug4s+T9jZQ9Y9q8HiKAcGWfR+9Z3qpq7PS/t4/97Cga20chpdsDI7R@vger.kernel.org
X-Gm-Message-State: AOJu0YyOdxnmbjsy1JS1TJjKpvVgHXnBO1biKlLExVLsQDf/lH7XS+xr
	LBfmm+Ig9iGLt8ahjGJPpBXsKYLAwm97YIbNSjCjmy+fQIpdHb0KXaeP
X-Gm-Gg: AY/fxX50EuzAT/Fu6LVhKOLnVs75pHS5NNYtE2OJCI5Qg+DlhKqOBk46XYuhI53iMow
	QRitC8y/oCezGbeg/5bkYr67suu8cV8fTysyjP1DwKeHyetziKKVUeQZjFQ3hcIeT0uTCyofpui
	jrx/fMhK5X5i9W6HqCV6wFeus/ac5XWcy1OnIo8HEDs70jwRV8YCdCp0N0NiWcBZgT+yJfTREyI
	20bjoVA+E6AM+Izizgh1mTi9VrQbM5A0yGUGnt1al0uE3SMZucHLqlOrXNh0vJtYOTNEX3vTaQL
	PQ/K8qsVjlExB9l8rZZxlGw08twHHmOT0hHISPpCiht26lLmf7ktYHqU68be+53UN/XvDCaYe8z
	sIxtpVmG8pYJot38P8QFH/HQbA5EdsA12nDFujbXVqW2TWtvhoOwfCBtaVfQiBJgiAWZ2teVIVe
	sD9fWrsFZNFQ==
X-Google-Smtp-Source: AGHT+IEU3uCYji7le46xC0e22HVzvq4FXx0kLGP2zcG2dgpXLhUjKAhMDK/pzyBxMtxqvDCTwIkxdQ==
X-Received: by 2002:a05:7022:e88e:b0:11b:af12:ba30 with SMTP id a92af1059eb24-11f34bde21bmr6149821c88.8.1765752431276;
        Sun, 14 Dec 2025 14:47:11 -0800 (PST)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11f2e1bb28dsm39517228c88.2.2025.12.14.14.47.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Dec 2025 14:47:11 -0800 (PST)
From: Inochi Amaoto <inochiama@gmail.com>
To: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>,
	Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Chen Wang <unicorn_wang@outlook.com>,
	Inochi Amaoto <inochiama@gmail.com>,
	Alexander Sverdlin <alexander.sverdlin@gmail.com>,
	Longbin Li <looong.bin@gmail.com>,
	Ze Huang <huangze@whut.edu.cn>
Cc: "Anton D . Stavinskii" <stavinsky@gmail.com>,
	dmaengine@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	sophgo@lists.linux.dev,
	Yixun Lan <dlan@gentoo.org>
Subject: [PATCH v2 2/3] dmaengine: dw-axi-dmac: Add support for CV1800B DMA
Date: Mon, 15 Dec 2025 06:45:59 +0800
Message-ID: <20251214224601.598358-3-inochiama@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251214224601.598358-1-inochiama@gmail.com>
References: <20251214224601.598358-1-inochiama@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

As the DMA controller on Sophgo CV1800 series SoC only has 8 channels,
the SoC provides a dma multiplexer to reuse the DMA channel. However,
the dma multiplexer also controls the DMA interrupt multiplexer, which
means that the dma multiplexer needs to know the channel number.

Allow the driver to use DMA phandle args as the channel number, so the
DMA multiplexer can route the DMA interrupt correctly.

Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
---
 .../dma/dw-axi-dmac/dw-axi-dmac-platform.c    | 26 ++++++++++++++++---
 drivers/dma/dw-axi-dmac/dw-axi-dmac.h         |  1 +
 2 files changed, 23 insertions(+), 4 deletions(-)

diff --git a/drivers/dma/dw-axi-dmac/dw-axi-dmac-platform.c b/drivers/dma/dw-axi-dmac/dw-axi-dmac-platform.c
index b23536645ff7..829aa6c05b5c 100644
--- a/drivers/dma/dw-axi-dmac/dw-axi-dmac-platform.c
+++ b/drivers/dma/dw-axi-dmac/dw-axi-dmac-platform.c
@@ -7,6 +7,7 @@
  * Author: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
  */
 
+#include "linux/stddef.h"
 #include <linux/bitops.h>
 #include <linux/delay.h>
 #include <linux/device.h>
@@ -50,6 +51,7 @@
 #define AXI_DMA_FLAG_HAS_APB_REGS	BIT(0)
 #define AXI_DMA_FLAG_HAS_RESETS		BIT(1)
 #define AXI_DMA_FLAG_USE_CFG2		BIT(2)
+#define AXI_DMA_FLAG_HANDSHAKE_AS_CHAN	BIT(3)
 
 static inline void
 axi_dma_iowrite32(struct axi_dma_chip *chip, u32 reg, u32 val)
@@ -1360,16 +1362,27 @@ static int __maybe_unused axi_dma_runtime_resume(struct device *dev)
 static struct dma_chan *dw_axi_dma_of_xlate(struct of_phandle_args *dma_spec,
 					    struct of_dma *ofdma)
 {
+	unsigned int handshake = dma_spec->args[0];
 	struct dw_axi_dma *dw = ofdma->of_dma_data;
-	struct axi_dma_chan *chan;
+	struct axi_dma_chan *chan = NULL;
 	struct dma_chan *dchan;
 
-	dchan = dma_get_any_slave_channel(&dw->dma);
+	if (dw->hdata->use_handshake_as_channel_number) {
+		if (handshake >= dw->hdata->nr_channels)
+			return NULL;
+
+		chan = &dw->chan[handshake];
+		dchan = dma_get_slave_channel(&chan->vc.chan);
+	} else {
+		dchan = dma_get_any_slave_channel(&dw->dma);
+	}
+
 	if (!dchan)
 		return NULL;
 
-	chan = dchan_to_axi_dma_chan(dchan);
-	chan->hw_handshake_num = dma_spec->args[0];
+	if (!chan)
+		chan = dchan_to_axi_dma_chan(dchan);
+	chan->hw_handshake_num = handshake;
 	return dchan;
 }
 
@@ -1508,6 +1521,8 @@ static int dw_probe(struct platform_device *pdev)
 			return ret;
 	}
 
+	chip->dw->hdata->use_handshake_as_channel_number = !!(flags & AXI_DMA_FLAG_HANDSHAKE_AS_CHAN);
+
 	chip->dw->hdata->use_cfg2 = !!(flags & AXI_DMA_FLAG_USE_CFG2);
 
 	chip->core_clk = devm_clk_get(chip->dev, "core-clk");
@@ -1663,6 +1678,9 @@ static const struct of_device_id dw_dma_of_id_table[] = {
 	}, {
 		.compatible = "intel,kmb-axi-dma",
 		.data = (void *)AXI_DMA_FLAG_HAS_APB_REGS,
+	}, {
+		.compatible = "sophgo,cv1800b-axi-dma",
+		.data = (void *)AXI_DMA_FLAG_HANDSHAKE_AS_CHAN,
 	}, {
 		.compatible = "starfive,jh7110-axi-dma",
 		.data = (void *)(AXI_DMA_FLAG_HAS_RESETS | AXI_DMA_FLAG_USE_CFG2),
diff --git a/drivers/dma/dw-axi-dmac/dw-axi-dmac.h b/drivers/dma/dw-axi-dmac/dw-axi-dmac.h
index b842e6a8d90d..67cc199e24d1 100644
--- a/drivers/dma/dw-axi-dmac/dw-axi-dmac.h
+++ b/drivers/dma/dw-axi-dmac/dw-axi-dmac.h
@@ -34,6 +34,7 @@ struct dw_axi_dma_hcfg {
 	bool	reg_map_8_channels;
 	bool	restrict_axi_burst_len;
 	bool	use_cfg2;
+	bool	use_handshake_as_channel_number;
 };
 
 struct axi_dma_chan {
-- 
2.52.0


