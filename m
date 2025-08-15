Return-Path: <devicetree+bounces-204969-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 91F90B27853
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 07:20:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A8596AA7F63
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 05:18:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E9812BD036;
	Fri, 15 Aug 2025 05:18:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="hm2tDWz9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AF9E2BD03C
	for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 05:18:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755235091; cv=none; b=o4LvaOoFKPzXbdPjrnJqgneJvq3AxtpN9qn7NVGTp66A755qIddRzT9KdZ5gq2AdB5gmn51vkYZ6iXyrc5KfRnsg3MDpH1952ibDWduWqeYkXR0SatpXu8l12xk1nU4VIVVSqKLqiekEIPDkiyQxHc2Ip4LNPG5MvPb8enr8ugo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755235091; c=relaxed/simple;
	bh=UKe+dJ5K7ELbDKwHq7yoq8502F2M2Iu2qW+JceNoxSI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=H87di/BaicbQptnazzKdUkPLAEDeTuCdVTC0/7+X1BV4TN3EbZbu1UfbUrQTa9shEuWn1Wal06XIhdcrFmeAqcRnx88lzNVc3/Yp63P1tWjW16ZQTtr53nF7Xpwi4tM9J7rbm5Lfy+MuexSMTQ6/R80Ci9Aj4AYn1T/bT3Repls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=hm2tDWz9; arc=none smtp.client-ip=209.85.215.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pg1-f181.google.com with SMTP id 41be03b00d2f7-b4716fb73c7so1479216a12.0
        for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 22:18:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1755235088; x=1755839888; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4K+SY37dyqVcPJJCZYgKmmTu/WHqvqW32AeiYFgaBnA=;
        b=hm2tDWz9J02FjT5LAbkVekPJ53OpyMGzLGe766pILlDhTZfPb4FTs3vFFRSqaN48EM
         cvyjG8wq5mToSqu7GEv7/RVy3tdmr+wR3CfM7lG0Muulgq6ot6+lZTEBVTfXSRf9T5H7
         K46nFArR+9UdJRZ1JPfg5Nz0DS6j9U3UPC1EAPXx2oNtRh2ih9YNb/HE6SUsdQQa8nUs
         /KRBkkwK0pRMMkwoug8jmzKsXSZ1JscwB6yVCPkHcI9G9roZ5KovSZgAiJK2JvA9T0MO
         UBrEekJlWvgA/fJVMzRdMuHFiiEod9ZCqrDfEgwVWgO5uUYbd+KXkVR50vmK2x+qgLO0
         lB0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755235088; x=1755839888;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4K+SY37dyqVcPJJCZYgKmmTu/WHqvqW32AeiYFgaBnA=;
        b=JtoxRpAoAMuF56ojk+BFnzBGdFhugK3gi+v4ifLAj4tTwS89L10WqWDTohQxYWeETM
         sHt53SYke5ZYIJk8XyXxg+Sla6vjzRHtxguB99Q30YJ2P+emb0fNh9yAhx9h67uXqTg1
         G6SjX2l7wofWj7LihSI28i/nNJE53+UsMDQOKsWJPDPTuCAFvlnHwqGZw49uDNJjAAX7
         m4lLyyfsLiMMtOPwhAYQOOeDnmu8QPKj9xd3yAQj0G5AqskmSK585dLLpbbt6IHXmA8A
         jM8pU0Sa0px0/U413H2CVJwX/rNFwtiMLySLcdZPkSyrMUTDYUZ9t97ynHXKEklx2iwo
         387g==
X-Forwarded-Encrypted: i=1; AJvYcCWHQWP1Yn/lq5BZ84C1uGEDHC5EWHUT6CIQBt3Em7mpu0BLk/OAJlkLmqXCPcCarn+SRoxosFoSekrw@vger.kernel.org
X-Gm-Message-State: AOJu0YwT3RaFFchJMXQWWfRi15FWHDzPZydubsPaLlKfOLfrzMy5UtAq
	ERp8b9BEeYAZasYEKrqM/+sx9Va+JRVEdNCiExKw9GIiDDeOirzLNHdyo0b6ejppVgs=
X-Gm-Gg: ASbGnctkT+Wkv94u9pyE1+yOYQFfjXD5meoftP8uxQ7jI/8PfP4itNrohjFnbUZp2ii
	Vf2TRuq0W5hqMhjm2drWonegQDWSHNjWJHDvGI2+KtKXgqDmnj3mDq300kF2fYNedBFRJoGVRYa
	AFixhTMF/YYHx9tcQUjnc79QwnWRbtwX8bz5cXmonozyT017ujS+b6JwuJUULhr6MfIrfQx624W
	6wraY5TT1BnoMliE+B4yCR6XlFtNkC502LEfCDxx7r1cL5/hzKI8fNMuU1LPDeezzbBP2IAaMxa
	9+P7PjAvLiQK5/T9DMfTsbg+V49NrY51+5Qz2TnsXMyVw+EWL3952T9QvrPGXgHyc0ONqEr1l7Z
	bHg0b8TYkf4Qor2ASDtswEchzccUlFKGr
X-Google-Smtp-Source: AGHT+IEf4qawwxe44eaVc0uK4/HwugJzFNy+DklkqjKPUXgqEqhlMol/I4o9OLq2m+sgprjKs26ebw==
X-Received: by 2002:a17:90b:1d05:b0:31e:f3b7:49d2 with SMTP id 98e67ed59e1d1-32340f9db40mr1745695a91.0.1755235088360;
        Thu, 14 Aug 2025 22:18:08 -0700 (PDT)
Received: from [127.0.1.1] ([103.88.46.155])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-323439978a4sm373212a91.10.2025.08.14.22.18.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Aug 2025 22:18:08 -0700 (PDT)
From: Guodong Xu <guodong@riscstar.com>
Date: Fri, 15 Aug 2025 13:16:27 +0800
Subject: [PATCH v4 5/8] dmaengine: mmp_pdma: Add SpacemiT K1 PDMA support
 with 64-bit addressing
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250815-working_dma_0701_v2-v4-5-62145ab6ea30@riscstar.com>
References: <20250815-working_dma_0701_v2-v4-0-62145ab6ea30@riscstar.com>
In-Reply-To: <20250815-working_dma_0701_v2-v4-0-62145ab6ea30@riscstar.com>
To: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@gentoo.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>, duje@dujemihanovic.xyz
Cc: Alex Elder <elder@riscstar.com>, Vivian Wang <wangruikang@iscas.ac.cn>, 
 dmaengine@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
 spacemit@lists.linux.dev, Guodong Xu <guodong@riscstar.com>, 
 Troy Mitchell <troy.mitchell@linux.spacemit.com>
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
v4: No change.
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
index 05c7c7d9e5a4e52a8ad7ada8c8b9b1a6f9d875f6..b8a74b1798ba1d44b26553990428c065de6fc535 100644
--- a/drivers/dma/Kconfig
+++ b/drivers/dma/Kconfig
@@ -450,7 +450,7 @@ config MILBEAUT_XDMAC
 
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


