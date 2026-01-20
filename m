Return-Path: <devicetree+bounces-257127-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 59A77D3BD04
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 02:38:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A0695302CB95
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 01:37:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79CBF2472A2;
	Tue, 20 Jan 2026 01:37:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZSsIpIOY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f175.google.com (mail-dy1-f175.google.com [74.125.82.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12622248F68
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 01:37:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768873047; cv=none; b=e4MiFxyA2wV6Cn5lqdVdME0PIjcgRrTIuZck3GiYbbxzsdy5yTUSgi/cLawo9RmQ2Qm3NW3MY/niNmBiIEN1/LYjAJl4QPnNnwDobG64jWgywJP9uPMTTt/jppxoJR/N3GnI+4iXAftv49AHgsWKiKAdWQfpjwflGlQTDXkanEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768873047; c=relaxed/simple;
	bh=m30+RpDNnkg8xHt7cNwbdu7n3SlrHrGfQYim0hkdS3o=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WuZFNerCcwLzO3sL66lHJ9XWyBQckwj4x+dFmHNFnMr+oPdXMvb/iil9tsgiVR8XLwOpPHdwWsx8FS7biOmtnhNgdnTG7MGNBQjW9FLjDJyyXA1m0ydVNZi4qIVywOTkGsUuP+7SjD6fI/NnDjOpuJkcQ8JWtkPuNJdVwOOBuIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZSsIpIOY; arc=none smtp.client-ip=74.125.82.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f175.google.com with SMTP id 5a478bee46e88-2ae5af476e1so2317142eec.1
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 17:37:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768873044; x=1769477844; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gH82B8wM8CiGczLPrX3tBjZxmPDBBF0WQaYSUsGab4s=;
        b=ZSsIpIOYFTJsLe+qFjI0W5cIkmHH6YAQipC8Mep+ZL4uB3CpU6pGLNwPsyGSxJeCCg
         9nMD3JHKDYiEjNGZhH6KuD/JZMCtC+M0T0KCW+l2TEj8CjgROwt02rlckpBcNsDQVmFx
         g28oJhS7C+ddRk7YsmyKx1Rf2drF4zXOwCHEU/cDoFKofk39vNVXGRpoxM+eNSZigffp
         1+LHS/ew7I4NcVtmmSwBuKjy4gArRak/v8HU9braJjr+6zurCspuJTA3hhRsDmpasjUQ
         3DsOdQCCE877XLnjmJ+ajmT6MGNtkkBbmCFa08t1OTYquZtWBuk8GGSi8zCwpo2Rl5t+
         JrMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768873044; x=1769477844;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=gH82B8wM8CiGczLPrX3tBjZxmPDBBF0WQaYSUsGab4s=;
        b=A6WutR/mq45tQFHY20QgB9Wat/mU7qSkXy3PaMdtpeVoCLv36PPITyR4VHMn/mYxSB
         qRP8UfiUZZpOlfXOUv5wd6PNJgXbu6+rc6SJhYWcMdgIYnZM7qcDrLA0sCQMm100ZNpC
         e2n7HVZVw7gBS0FlGYyGfc5mNZb3tVyrO5GwtQN3YUoi2P8LcF5CU6EvH5WzziKDc02U
         UkFlqcYLi8/y81JlTTWJ+w91RnRyANfXHxCXZk4nKuvu6jzuraj4j58wxzLhnHet+WC6
         +ZlwhkADpImkfrbzKcprthWLurAMMvlRLpbsMnaQbQ0Pp1ZX4n+OexkfJ7vlBSlTWejd
         VvOQ==
X-Forwarded-Encrypted: i=1; AJvYcCUXpzjRXWXc/Ovqg5pJGtUpyg5T6Aiwk+9pd6wQVe73ISCJuYrvZj3JKPv6ObLccBgh/IeTu83Xi7O2@vger.kernel.org
X-Gm-Message-State: AOJu0YyLttdhTWe6/N/r6vH3bbFm5E0qn22vi01Hz+yT4ppo/m3NXTIO
	EcQZX4RrFWsfl3CCLxQqCU2MOZlNl50Q3f2juCzv4gKSgO0CtiDx7Rpd
X-Gm-Gg: AZuq6aI6YtZe+K9GQ9Q/JCVWSio82hefzF8d7oWXy5sS3WkO6npA51OZFLh69NwfG+x
	83h9B+iBe5vAfK3zmzEhoRXw7W7QbxdZa5IyycQJBZ8NmfTgotbMqThp40Q4POw+qR2AJWF8eNf
	FH1mf9zR6+N0JBL0CglayV62cn9UTnwBIUFClbcctTiTuZ7b0AVWkAyp9D6rXMh5n+OYOJ2pp8K
	PrGsuOvOV8pwgBs5duuQSb7ystr0oZIS+/ki0KmZk3CQXIfQGpOgcfe7APBqFSCoQs2TgDfgXzz
	Q8RXMjbvdtvG80ZLYccuZfN/2ujV4JWTipSvfo2KnLhcp5vbC2nMnSTBMYqO1F/tzUY75mMKkTb
	ufxSBAvDBQ+ahus8jyWS8BvapJp9gAFVk84FFWnEQNTDmLwAn3KF1z22P+ayr1Kut+C7B9r5nVx
	zTMTAnC0S8/A==
X-Received: by 2002:a05:693c:6097:b0:2b6:b9c2:7b48 with SMTP id 5a478bee46e88-2b6b9c27beemr9582735eec.20.1768873042756;
        Mon, 19 Jan 2026 17:37:22 -0800 (PST)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b6b3502d22sm15297558eec.10.2026.01.19.17.37.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jan 2026 17:37:22 -0800 (PST)
From: Inochi Amaoto <inochiama@gmail.com>
To: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>,
	Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen Wang <unicorn_wang@outlook.com>,
	Inochi Amaoto <inochiama@gmail.com>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Alexander Sverdlin <alexander.sverdlin@gmail.com>,
	Longbin Li <looong.bin@gmail.com>,
	Ze Huang <huangze@whut.edu.cn>
Cc: dmaengine@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	sophgo@lists.linux.dev,
	linux-riscv@lists.infradead.org,
	Yixun Lan <dlan@gentoo.org>
Subject: [PATCH v3 2/3] dmaengine: dw-axi-dmac: Add support for CV1800B DMA
Date: Tue, 20 Jan 2026 09:37:04 +0800
Message-ID: <20260120013706.436742-3-inochiama@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260120013706.436742-1-inochiama@gmail.com>
References: <20260120013706.436742-1-inochiama@gmail.com>
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
 .../dma/dw-axi-dmac/dw-axi-dmac-platform.c    | 25 ++++++++++++++++---
 drivers/dma/dw-axi-dmac/dw-axi-dmac.h         |  1 +
 2 files changed, 22 insertions(+), 4 deletions(-)

diff --git a/drivers/dma/dw-axi-dmac/dw-axi-dmac-platform.c b/drivers/dma/dw-axi-dmac/dw-axi-dmac-platform.c
index b23536645ff7..89ded0207832 100644
--- a/drivers/dma/dw-axi-dmac/dw-axi-dmac-platform.c
+++ b/drivers/dma/dw-axi-dmac/dw-axi-dmac-platform.c
@@ -50,6 +50,7 @@
 #define AXI_DMA_FLAG_HAS_APB_REGS	BIT(0)
 #define AXI_DMA_FLAG_HAS_RESETS		BIT(1)
 #define AXI_DMA_FLAG_USE_CFG2		BIT(2)
+#define AXI_DMA_FLAG_ARG0_AS_CHAN	BIT(3)
 
 static inline void
 axi_dma_iowrite32(struct axi_dma_chip *chip, u32 reg, u32 val)
@@ -1360,16 +1361,27 @@ static int __maybe_unused axi_dma_runtime_resume(struct device *dev)
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
 
@@ -1508,6 +1520,8 @@ static int dw_probe(struct platform_device *pdev)
 			return ret;
 	}
 
+	chip->dw->hdata->use_handshake_as_channel_number = !!(flags & AXI_DMA_FLAG_ARG0_AS_CHAN);
+
 	chip->dw->hdata->use_cfg2 = !!(flags & AXI_DMA_FLAG_USE_CFG2);
 
 	chip->core_clk = devm_clk_get(chip->dev, "core-clk");
@@ -1663,6 +1677,9 @@ static const struct of_device_id dw_dma_of_id_table[] = {
 	}, {
 		.compatible = "intel,kmb-axi-dma",
 		.data = (void *)AXI_DMA_FLAG_HAS_APB_REGS,
+	}, {
+		.compatible = "sophgo,cv1800b-axi-dma",
+		.data = (void *)AXI_DMA_FLAG_ARG0_AS_CHAN,
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


