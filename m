Return-Path: <devicetree+bounces-195968-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EECBDB03B0F
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 11:41:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4D0197A6F92
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 09:40:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0D1E2459D7;
	Mon, 14 Jul 2025 09:40:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="p2ZLe2nt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 499D4245023
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 09:40:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752486044; cv=none; b=Douw8wtvQNQGipeYdsZnmY/MUmrhW3C7t6vDHDbRo05Voi0GBoSE2CaYFWobvh6kwVZtdtA4E7/otlaGnF/UfSKunZdPZP5gTmtanDigBBjUYF9mp7Ddsx+EP4BBs83fmKaAoxmhMYOGKNBbcHXLkxRYzM5AjO0a9llt+6oAYa0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752486044; c=relaxed/simple;
	bh=t+PtLLl2csko86gC15MVR5xmoGQ82PGqWDIw44J/F64=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=XGWa4S4mps2ScvJQR2R+w+C7p6hMvBhgSOJEMpOteX4fTSx9TM+KhcV/0Lm8/VZHR9YVCnatpO8z46XnsGE6Hu2n0L92rWzMxDlF+eCfCj02di2y19WewXTKluF0VFvahI0AyLkaIHsuN7FSP+zOD7C2ic/VL8LzopvBoCrUuwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=p2ZLe2nt; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-45348bff79fso49040675e9.2
        for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 02:40:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1752486040; x=1753090840; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lHyo6WbVst+k96hYCCL5FpFG2I13xsshsqklBEvZimA=;
        b=p2ZLe2nts1BoE6Y0POBTmAxwGFPDUKV2ePwNre6VVaZ2sXHfStPHaOLD0Xg7EewvuP
         ZjN3HVCOuejaP9etiyUqgupozD28yxrovzUEsFoYJgUjZ/ZSf8QMCGjWA5THcpbDCdXP
         ScpUxl7wJ5hdZ8KHa7dq2dgvnyWDlYO3X/l/cSwdSI/XtcZR1cTE19BVUPEJ8igHGcgN
         MOBKL+Tj0LrZeNw1UnXLWrLp8ccS0Gr1WMcgF1nhIuvTkDhqj38mZBJW8XBKpUCFKRgU
         ExtyE9gdEWYpQfWssRGLpJ6PeMIy2eOHHE2DrqFPRCWXGufcphamcZ54QHsj0T9VBo74
         MHxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752486040; x=1753090840;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lHyo6WbVst+k96hYCCL5FpFG2I13xsshsqklBEvZimA=;
        b=c5oOExN7RyQGYUSGHq0EsadWMMVAJQvygf8Jh1LIxAtZFRIyt/2e4TXgOLFkkiPtSg
         SR6RJq9LkxHklVlAgthCzdhsewf5JOqD+LmQSKFEt8PZZrRfoRY+w6iFHZR6BbnAs5u7
         hWNYl1htnKcaxxxUTznmvzEqXLuBUE1Tp2WVyTCZx7vJTMgX3t5tqQa2yF0stE+zCubY
         bzoUzoyLCWGS8aoVU+BYqxPVK1kJb3OZg90b3gKJxfELpV8Y7EB04hWTr2unpii4PK/V
         3BS2X7I/i6pAnBKCpf0GVUWeGtFatcEllpctytTnIcr2Ar8qF3KAX7HqeH63yFAzodXh
         tXuw==
X-Forwarded-Encrypted: i=1; AJvYcCUieqNOOzSFHoHMJPGDU9a8iXYlSceFWM4SeDW+A4uJ5M8Nce9cfsz+CMvQutZs7N+zKsaogIOagfEU@vger.kernel.org
X-Gm-Message-State: AOJu0Ywd8rFTftvvbOlL5POzuK+fQdOioPRTD6JOtGhWP+xl9TMHblM5
	FsQpfLv8WK22yFpgJK2JL/CnI8yooQbYFyfpRH4OxCs/KoNlUGrUo+N3fXaCLLlF2Go=
X-Gm-Gg: ASbGnctaLy2H+Hg60YFsTU++9dJ1BOF/osUcirYvOLhGqPwRPMGgATErPDBhGgH6HV7
	M1TZRPDZFiPs4XcFk0dDiB+wFy4kfdACLTmEzFkL/8tKgjeeg63/M+aE9ZtrzU/yqakBE9j1pIo
	31LGU597R99CKHwa+qzjQW8JpKthsTqPvgTFy/pUej+6C57SwFUBswAiZsL9t7vVuo8ad39aTD+
	HSQCp+5sRYKnOyH7QiilZ7l0s9tKifES3gE05XUKgdYu21eD3+re2XE6C5/BQQ+xkaDNtg+LeE5
	8zxkkTJjYAJKoOtNvugLlFJ2QkByb+7NWFD+yEfcpZqB0tFTGMrzthDDq5wT/vPcuaR0oGW7sSx
	yMPd5qxqe
X-Google-Smtp-Source: AGHT+IGMTXvhvY8iN6lci20yl+rKURCNv/HNwzYvEck8oYvdUaVh9h9tdTVerIXfkpTkApuHna9q8g==
X-Received: by 2002:a05:600c:610:b0:43c:f44c:72a6 with SMTP id 5b1f17b1804b1-455174367demr79853935e9.2.1752486040570;
        Mon, 14 Jul 2025 02:40:40 -0700 (PDT)
Received: from [127.0.1.1] ([2a09:0:1:2::3035])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4561b25a948sm24989035e9.35.2025.07.14.02.40.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Jul 2025 02:40:40 -0700 (PDT)
From: Guodong Xu <guodong@riscstar.com>
Date: Mon, 14 Jul 2025 17:39:32 +0800
Subject: [PATCH v3 5/8] dmaengine: mmp_pdma: Add SpacemiT K1 PDMA support
 with 64-bit addressing
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250714-working_dma_0701_v2-v3-5-8b0f5cd71595@riscstar.com>
References: <20250714-working_dma_0701_v2-v3-0-8b0f5cd71595@riscstar.com>
In-Reply-To: <20250714-working_dma_0701_v2-v3-0-8b0f5cd71595@riscstar.com>
To: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@gentoo.org>, 
 =?utf-8?q?Duje_Mihanovi=C4=87?= <duje.mihanovic@skole.hr>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>
Cc: Alex Elder <elder@riscstar.com>, Vivian Wang <wangruikang@iscas.ac.cn>, 
 dmaengine@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
 spacemit@lists.linux.dev, Guodong Xu <guodong@riscstar.com>
X-Mailer: b4 0.14.2

Add support for SpacemiT K1 PDMA controller which features 64-bit
addressing capabilities.

The SpacemiT K1 PDMA extends the descriptor format with additional
32-bit words for high address bits, enabling access to memory beyond
4GB boundaries. The new spacemit_k1_pdma_ops provides necessary 64-bit
address handling functions and k1 specific controller configurations.

Key changes:
- Add ARCH_SPACEMIT dependency to Kconfig
- Define new high 32-bit address registers (DDADRH, DSADRH, DTADRH)
- Add DCSR_LPAEEN bit for Long Physical Address Extension Enable
- Implement 64-bit operations for SpacemiT K1 PDMA

Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
v3: No change.
v2: New patch.
  - Implement 64-bit addrssing support to mmp_pdma
  - Add support for SpacemiT K1 PDMA
  - Extend the MMP_PDMA entry in Kconfig to depend on ARCH_SPACEMIT
---
 drivers/dma/Kconfig    |  2 +-
 drivers/dma/mmp_pdma.c | 81 ++++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 82 insertions(+), 1 deletion(-)

diff --git a/drivers/dma/Kconfig b/drivers/dma/Kconfig
index db87dd2a07f7606e40dc26ea41d26fcdd1fad979..fff70f66c773934efb2fcafdc3628ba06c734640 100644
--- a/drivers/dma/Kconfig
+++ b/drivers/dma/Kconfig
@@ -451,7 +451,7 @@ config MILBEAUT_XDMAC
 
 config MMP_PDMA
 	tristate "MMP PDMA support"
-	depends on ARCH_MMP || ARCH_PXA || COMPILE_TEST
+	depends on ARCH_MMP || ARCH_PXA || ARCH_SPACEMIT || COMPILE_TEST
 	select DMA_ENGINE
 	help
 	  Support the MMP PDMA engine for PXA and MMP platform.
diff --git a/drivers/dma/mmp_pdma.c b/drivers/dma/mmp_pdma.c
index 610df28f429783779c1c143a13b3a829e42cf003..28c03d05e0b2708fcb8faffeeb97b97ed6fcbdc5 100644
--- a/drivers/dma/mmp_pdma.c
+++ b/drivers/dma/mmp_pdma.c
@@ -28,6 +28,9 @@
 #define DDADR(n)	(0x0200 + ((n) << 4))
 #define DSADR(n)	(0x0204 + ((n) << 4))
 #define DTADR(n)	(0x0208 + ((n) << 4))
+#define DDADRH(n)	(0x0300 + ((n) << 4))
+#define DSADRH(n)	(0x0304 + ((n) << 4))
+#define DTADRH(n)	(0x0308 + ((n) << 4))
 #define DCMD		0x020c
 
 #define DCSR_RUN	BIT(31)	/* Run Bit (read / write) */
@@ -44,6 +47,7 @@
 #define DCSR_EORSTOPEN	BIT(26)	/* STOP on an EOR */
 #define DCSR_SETCMPST	BIT(25)	/* Set Descriptor Compare Status */
 #define DCSR_CLRCMPST	BIT(24)	/* Clear Descriptor Compare Status */
+#define DCSR_LPAEEN	BIT(21)	/* Long Physical Address Extension Enable */
 #define DCSR_CMPST	BIT(10)	/* The Descriptor Compare Status */
 #define DCSR_EORINTR	BIT(9)	/* The end of Receive */
 
@@ -76,6 +80,16 @@ struct mmp_pdma_desc_hw {
 	u32 dsadr;	/* DSADR value for the current transfer */
 	u32 dtadr;	/* DTADR value for the current transfer */
 	u32 dcmd;	/* DCMD value for the current transfer */
+	/*
+	 * The following 32-bit words are only used in the 64-bit, ie.
+	 * LPAE (Long Physical Address Extension) mode.
+	 * They are used to specify the high 32 bits of the descriptor's
+	 * addresses.
+	 */
+	u32 ddadrh;	/* High 32-bit of DDADR */
+	u32 dsadrh;	/* High 32-bit of DSADR */
+	u32 dtadrh;	/* High 32-bit of DTADR */
+	u32 rsvd;	/* reserved */
 } __aligned(32);
 
 struct mmp_pdma_desc_sw {
@@ -222,6 +236,57 @@ static u64 get_desc_dst_addr_32(const struct mmp_pdma_desc_hw *desc)
 	return desc->dtadr;
 }
 
+/* For 64-bit PDMA */
+static void write_next_addr_64(struct mmp_pdma_phy *phy, dma_addr_t addr)
+{
+	writel(lower_32_bits(addr), phy->base + DDADR(phy->idx));
+	writel(upper_32_bits(addr), phy->base + DDADRH(phy->idx));
+}
+
+static u64 read_src_addr_64(struct mmp_pdma_phy *phy)
+{
+	u32 low = readl(phy->base + DSADR(phy->idx));
+	u32 high = readl(phy->base + DSADRH(phy->idx));
+
+	return ((u64)high << 32) | low;
+}
+
+static u64 read_dst_addr_64(struct mmp_pdma_phy *phy)
+{
+	u32 low = readl(phy->base + DTADR(phy->idx));
+	u32 high = readl(phy->base + DTADRH(phy->idx));
+
+	return ((u64)high << 32) | low;
+}
+
+static void set_desc_next_addr_64(struct mmp_pdma_desc_hw *desc, dma_addr_t addr)
+{
+	desc->ddadr = lower_32_bits(addr);
+	desc->ddadrh = upper_32_bits(addr);
+}
+
+static void set_desc_src_addr_64(struct mmp_pdma_desc_hw *desc, dma_addr_t addr)
+{
+	desc->dsadr = lower_32_bits(addr);
+	desc->dsadrh = upper_32_bits(addr);
+}
+
+static void set_desc_dst_addr_64(struct mmp_pdma_desc_hw *desc, dma_addr_t addr)
+{
+	desc->dtadr = lower_32_bits(addr);
+	desc->dtadrh = upper_32_bits(addr);
+}
+
+static u64 get_desc_src_addr_64(const struct mmp_pdma_desc_hw *desc)
+{
+	return ((u64)desc->dsadrh << 32) | desc->dsadr;
+}
+
+static u64 get_desc_dst_addr_64(const struct mmp_pdma_desc_hw *desc)
+{
+	return ((u64)desc->dtadrh << 32) | desc->dtadr;
+}
+
 static int mmp_pdma_config_write(struct dma_chan *dchan,
 				 struct dma_slave_config *cfg,
 				 enum dma_transfer_direction direction);
@@ -1110,10 +1175,26 @@ static const struct mmp_pdma_ops marvell_pdma_v1_ops = {
 	.dma_mask = 0,			/* let OF/platform set DMA mask */
 };
 
+static const struct mmp_pdma_ops spacemit_k1_pdma_ops = {
+	.write_next_addr = write_next_addr_64,
+	.read_src_addr = read_src_addr_64,
+	.read_dst_addr = read_dst_addr_64,
+	.set_desc_next_addr = set_desc_next_addr_64,
+	.set_desc_src_addr = set_desc_src_addr_64,
+	.set_desc_dst_addr = set_desc_dst_addr_64,
+	.get_desc_src_addr = get_desc_src_addr_64,
+	.get_desc_dst_addr = get_desc_dst_addr_64,
+	.run_bits = (DCSR_RUN | DCSR_LPAEEN),
+	.dma_mask = DMA_BIT_MASK(64),	/* force 64-bit DMA addr capability */
+};
+
 static const struct of_device_id mmp_pdma_dt_ids[] = {
 	{
 		.compatible = "marvell,pdma-1.0",
 		.data = &marvell_pdma_v1_ops
+	}, {
+		.compatible = "spacemit,k1-pdma",
+		.data = &spacemit_k1_pdma_ops
 	}, {
 		/* sentinel */
 	}

-- 
2.43.0


