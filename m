Return-Path: <devicetree+bounces-152730-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 722FFA4A05A
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 18:26:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6F14F176059
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 17:26:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4629E1EF38C;
	Fri, 28 Feb 2025 17:26:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F20871F4CBB;
	Fri, 28 Feb 2025 17:26:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740763604; cv=none; b=hdL65NswLt32EqNAE+0iGTwyjHRBrnoB0GfNcm1kEwO0e6m5ebp2mguJpMLoIea9pUI5O65O7x9OqRwOEFQjU0eRT3+0s8Pe+3y3CIi+gvvZ1XxCHdCzyD7YYyoKHHTVg67ExJq5ao5GLOsEHUoA9laPfccMjNDf+UmXXPAsL9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740763604; c=relaxed/simple;
	bh=FHskJ/FzUWD2DO8H5DH+kP0nr4c1vKer4gdCDRcxCf4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=sj8eF5x89UwTo75LBzS/l0nuE2oyAckYFNmm/GiQf/qgBeGrkJV1mQr73RynMga2w+DIpel+xCS//Qoir7aXl8Dg3V+/41Ud4V4CxTskCBTS8NOEpgCNBNoI6+N0iH3TSYJ3XfYCs0X/r315gu1o8ReeZrIG00EiNJJ4r78S0xY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7F821176A;
	Fri, 28 Feb 2025 09:26:56 -0800 (PST)
Received: from e121345-lin.cambridge.arm.com (e121345-lin.cambridge.arm.com [10.1.196.40])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id BD64E3F6A8;
	Fri, 28 Feb 2025 09:26:40 -0800 (PST)
From: Robin Murphy <robin.murphy@arm.com>
To: vkoul@kernel.org
Cc: devicetree@vger.kernel.org,
	dmaengine@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/2] dmaengine: Add Arm DMA-350 driver
Date: Fri, 28 Feb 2025 17:26:33 +0000
Message-Id: <55e084dd2b5720bdddf503ffac560d111032aa96.1740762136.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.39.2.101.g768bb238c484.dirty
In-Reply-To: <cover.1740762136.git.robin.murphy@arm.com>
References: <cover.1740762136.git.robin.murphy@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add an initial driver for the Arm Corelink DMA-350 controller, to
support basic mem-to-mem async_tx. The design here leaves room for more
fun things like peripheral support and scatter-gather chaining to come
in future.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/dma/Kconfig      |   7 +
 drivers/dma/Makefile     |   1 +
 drivers/dma/arm-dma350.c | 659 +++++++++++++++++++++++++++++++++++++++
 3 files changed, 667 insertions(+)
 create mode 100644 drivers/dma/arm-dma350.c

diff --git a/drivers/dma/Kconfig b/drivers/dma/Kconfig
index 8afea2e23360..fa7d7f98e50f 100644
--- a/drivers/dma/Kconfig
+++ b/drivers/dma/Kconfig
@@ -93,6 +93,13 @@ config APPLE_ADMAC
 	help
 	  Enable support for Audio DMA Controller found on Apple Silicon SoCs.
 
+config ARM_DMA350
+	tristate "Arm DMA-350 support"
+	select DMA_ENGINE
+	select DMA_VIRTUAL_CHANNELS
+	help
+	  Enable support for the Arm DMA-350 controller.
+
 config AT_HDMAC
 	tristate "Atmel AHB DMA support"
 	depends on ARCH_AT91
diff --git a/drivers/dma/Makefile b/drivers/dma/Makefile
index 19ba465011a6..ba9732644752 100644
--- a/drivers/dma/Makefile
+++ b/drivers/dma/Makefile
@@ -17,6 +17,7 @@ obj-$(CONFIG_ALTERA_MSGDMA) += altera-msgdma.o
 obj-$(CONFIG_AMBA_PL08X) += amba-pl08x.o
 obj-$(CONFIG_AMCC_PPC440SPE_ADMA) += ppc4xx/
 obj-$(CONFIG_APPLE_ADMAC) += apple-admac.o
+obj-$(CONFIG_ARM_DMA350) += arm-dma350.o
 obj-$(CONFIG_AT_HDMAC) += at_hdmac.o
 obj-$(CONFIG_AT_XDMAC) += at_xdmac.o
 obj-$(CONFIG_AXI_DMAC) += dma-axi-dmac.o
diff --git a/drivers/dma/arm-dma350.c b/drivers/dma/arm-dma350.c
new file mode 100644
index 000000000000..a8a91b74b419
--- /dev/null
+++ b/drivers/dma/arm-dma350.c
@@ -0,0 +1,659 @@
+// SPDX-License-Identifier: GPL-2.0
+// Copyright (C) 2024-2025 Arm Limited
+// Arm DMA-350 driver
+
+#include <linux/bitfield.h>
+#include <linux/dmaengine.h>
+#include <linux/dma-mapping.h>
+#include <linux/io.h>
+#include <linux/of.h>
+#include <linux/module.h>
+#include <linux/platform_device.h>
+
+#include "dmaengine.h"
+#include "virt-dma.h"
+
+#define DMAINFO			0x0f00
+
+#define DMA_BUILDCFG0		0xb0
+#define DMA_CFG_DATA_WIDTH	GENMASK(18, 16)
+#define DMA_CFG_ADDR_WIDTH	GENMASK(15, 10)
+#define DMA_CFG_NUM_CHANNELS	GENMASK(9, 4)
+
+#define DMA_BUILDCFG1		0xb4
+#define DMA_CFG_NUM_TRIGGER_IN	GENMASK(8, 0)
+
+#define IIDR			0xc8
+#define IIDR_PRODUCTID		GENMASK(31, 20)
+#define IIDR_VARIANT		GENMASK(19, 16)
+#define IIDR_REVISION		GENMASK(15, 12)
+#define IIDR_IMPLEMENTER	GENMASK(11, 0)
+
+#define PRODUCTID_DMA350	0x3a0
+#define IMPLEMENTER_ARM		0x43b
+
+#define DMACH(n)		(0x1000 + 0x0100 * (n))
+
+#define CH_CMD			0x00
+#define CH_CMD_RESUME		BIT(5)
+#define CH_CMD_PAUSE		BIT(4)
+#define CH_CMD_STOP		BIT(3)
+#define CH_CMD_DISABLE		BIT(2)
+#define CH_CMD_CLEAR		BIT(1)
+#define CH_CMD_ENABLE		BIT(0)
+
+#define CH_STATUS		0x04
+#define CH_STAT_RESUMEWAIT	BIT(21)
+#define CH_STAT_PAUSED		BIT(20)
+#define CH_STAT_STOPPED		BIT(19)
+#define CH_STAT_DISABLED	BIT(18)
+#define CH_STAT_ERR		BIT(17)
+#define CH_STAT_DONE		BIT(16)
+#define CH_STAT_INTR_ERR	BIT(1)
+#define CH_STAT_INTR_DONE	BIT(0)
+
+#define CH_INTREN		0x08
+#define CH_INTREN_ERR		BIT(1)
+#define CH_INTREN_DONE		BIT(0)
+
+#define CH_CTRL			0x0c
+#define CH_CTRL_USEDESTRIGIN	BIT(26)
+#define CH_CTRL_USESRCTRIGIN	BIT(26)
+#define CH_CTRL_DONETYPE	GENMASK(23, 21)
+#define CH_CTRL_REGRELOADTYPE	GENMASK(20, 18)
+#define CH_CTRL_XTYPE		GENMASK(11, 9)
+#define CH_CTRL_TRANSIZE	GENMASK(2, 0)
+
+#define CH_SRCADDR		0x10
+#define CH_SRCADDRHI		0x14
+#define CH_DESADDR		0x18
+#define CH_DESADDRHI		0x1c
+#define CH_XSIZE		0x20
+#define CH_XSIZEHI		0x24
+#define CH_SRCTRANSCFG		0x28
+#define CH_DESTRANSCFG		0x2c
+#define CH_CFG_MAXBURSTLEN	GENMASK(19, 16)
+#define CH_CFG_PRIVATTR		BIT(11)
+#define CH_CFG_SHAREATTR	GENMASK(9, 8)
+#define CH_CFG_MEMATTR		GENMASK(7, 0)
+
+#define TRANSCFG_DEVICE					\
+	FIELD_PREP(CH_CFG_MAXBURSTLEN, 0xf) |		\
+	FIELD_PREP(CH_CFG_SHAREATTR, SHAREATTR_OSH) |	\
+	FIELD_PREP(CH_CFG_MEMATTR, MEMATTR_DEVICE)
+#define TRANSCFG_NC					\
+	FIELD_PREP(CH_CFG_MAXBURSTLEN, 0xf) |		\
+	FIELD_PREP(CH_CFG_SHAREATTR, SHAREATTR_OSH) |	\
+	FIELD_PREP(CH_CFG_MEMATTR, MEMATTR_NC)
+#define TRANSCFG_WB					\
+	FIELD_PREP(CH_CFG_MAXBURSTLEN, 0xf) |		\
+	FIELD_PREP(CH_CFG_SHAREATTR, SHAREATTR_ISH) |	\
+	FIELD_PREP(CH_CFG_MEMATTR, MEMATTR_WB)
+
+#define CH_XADDRINC		0x30
+#define CH_XY_DES		GENMASK(31, 16)
+#define CH_XY_SRC		GENMASK(15, 0)
+
+#define CH_FILLVAL		0x38
+#define CH_SRCTRIGINCFG		0x4c
+#define CH_DESTRIGINCFG		0x50
+#define CH_LINKATTR		0x70
+#define CH_LINK_SHAREATTR	GENMASK(9, 8)
+#define CH_LINK_MEMATTR		GENMASK(7, 0)
+
+#define CH_AUTOCFG		0x74
+#define CH_LINKADDR		0x78
+#define CH_LINKADDR_EN		BIT(0)
+
+#define CH_LINKADDRHI		0x7c
+#define CH_ERRINFO		0x90
+#define CH_ERRINFO_AXIRDPOISERR BIT(18)
+#define CH_ERRINFO_AXIWRRESPERR BIT(17)
+#define CH_ERRINFO_AXIRDRESPERR BIT(16)
+
+#define CH_BUILDCFG0		0xf8
+#define CH_CFG_INC_WIDTH	GENMASK(29, 26)
+#define CH_CFG_DATA_WIDTH	GENMASK(24, 22)
+#define CH_CFG_DATA_BUF_SIZE	GENMASK(7, 0)
+
+#define CH_BUILDCFG1		0xfc
+#define CH_CFG_HAS_CMDLINK	BIT(8)
+#define CH_CFG_HAS_TRIGSEL	BIT(7)
+#define CH_CFG_HAS_TRIGIN	BIT(5)
+#define CH_CFG_HAS_WRAP		BIT(1)
+
+
+#define LINK_REGCLEAR		BIT(0)
+#define LINK_INTREN		BIT(2)
+#define LINK_CTRL		BIT(3)
+#define LINK_SRCADDR		BIT(4)
+#define LINK_SRCADDRHI		BIT(5)
+#define LINK_DESADDR		BIT(6)
+#define LINK_DESADDRHI		BIT(7)
+#define LINK_XSIZE		BIT(8)
+#define LINK_XSIZEHI		BIT(9)
+#define LINK_SRCTRANSCFG	BIT(10)
+#define LINK_DESTRANSCFG	BIT(11)
+#define LINK_XADDRINC		BIT(12)
+#define LINK_FILLVAL		BIT(14)
+#define LINK_SRCTRIGINCFG	BIT(19)
+#define LINK_DESTRIGINCFG	BIT(20)
+#define LINK_AUTOCFG		BIT(29)
+#define LINK_LINKADDR		BIT(30)
+#define LINK_LINKADDRHI		BIT(31)
+
+
+enum ch_ctrl_donetype {
+	CH_CTRL_DONETYPE_NONE = 0,
+	CH_CTRL_DONETYPE_CMD = 1,
+	CH_CTRL_DONETYPE_CYCLE = 3
+};
+
+enum ch_ctrl_xtype {
+	CH_CTRL_XTYPE_DISABLE = 0,
+	CH_CTRL_XTYPE_CONTINUE = 1,
+	CH_CTRL_XTYPE_WRAP = 2,
+	CH_CTRL_XTYPE_FILL = 3
+};
+
+enum ch_cfg_shareattr {
+	SHAREATTR_NSH = 0,
+	SHAREATTR_OSH = 2,
+	SHAREATTR_ISH = 3
+};
+
+enum ch_cfg_memattr {
+	MEMATTR_DEVICE = 0x00,
+	MEMATTR_NC = 0x44,
+	MEMATTR_WB = 0xff
+};
+
+struct d350_desc {
+	struct virt_dma_desc vd;
+	u32 command[16];
+	u16 xsize;
+	u16 xsizehi;
+	u8 tsz;
+};
+
+struct d350_chan {
+	struct virt_dma_chan vc;
+	struct d350_desc *desc;
+	void __iomem *base;
+	int irq;
+	enum dma_status status;
+	dma_cookie_t cookie;
+	u32 residue;
+	u8 tsz;
+	bool has_trig;
+	bool has_wrap;
+	bool coherent;
+};
+
+struct d350 {
+	struct dma_device dma;
+	int nchan;
+	int nreq;
+	struct d350_chan channels[] __counted_by(nchan);
+};
+
+static inline struct d350_chan *to_d350_chan(struct dma_chan *chan)
+{
+	return container_of(chan, struct d350_chan, vc.chan);
+}
+
+static inline struct d350_desc *to_d350_desc(struct virt_dma_desc *vd)
+{
+	return container_of(vd, struct d350_desc, vd);
+}
+
+static void d350_desc_free(struct virt_dma_desc *vd)
+{
+	kfree(to_d350_desc(vd));
+}
+
+static struct dma_async_tx_descriptor *d350_prep_memcpy(struct dma_chan *chan,
+		dma_addr_t dest, dma_addr_t src, size_t len, unsigned long flags)
+{
+	struct d350_chan *dch = to_d350_chan(chan);
+	struct d350_desc *desc;
+	u32 *cmd;
+
+	desc = kzalloc(sizeof(*desc), GFP_NOWAIT);
+	if (!desc)
+		return NULL;
+
+	desc->tsz = __ffs(len | dest | src | (1 << dch->tsz));
+	desc->xsize = lower_16_bits(len >> desc->tsz);
+	desc->xsizehi = upper_16_bits(len >> desc->tsz);
+
+	cmd = desc->command;
+	cmd[0] = LINK_CTRL | LINK_SRCADDR | LINK_SRCADDRHI | LINK_DESADDR |
+		 LINK_DESADDRHI | LINK_XSIZE | LINK_XSIZEHI | LINK_SRCTRANSCFG |
+		 LINK_DESTRANSCFG | LINK_XADDRINC | LINK_LINKADDR;
+
+	cmd[1] = FIELD_PREP(CH_CTRL_TRANSIZE, desc->tsz) |
+		 FIELD_PREP(CH_CTRL_XTYPE, CH_CTRL_XTYPE_CONTINUE) |
+		 FIELD_PREP(CH_CTRL_DONETYPE, CH_CTRL_DONETYPE_CMD);
+
+	cmd[2] = lower_32_bits(src);
+	cmd[3] = upper_32_bits(src);
+	cmd[4] = lower_32_bits(dest);
+	cmd[5] = upper_32_bits(dest);
+	cmd[6] = FIELD_PREP(CH_XY_SRC, desc->xsize) | FIELD_PREP(CH_XY_DES, desc->xsize);
+	cmd[7] = FIELD_PREP(CH_XY_SRC, desc->xsizehi) | FIELD_PREP(CH_XY_DES, desc->xsizehi);
+	cmd[8] = dch->coherent ? TRANSCFG_WB : TRANSCFG_NC;
+	cmd[9] = dch->coherent ? TRANSCFG_WB : TRANSCFG_NC;
+	cmd[10] = FIELD_PREP(CH_XY_SRC, 1) | FIELD_PREP(CH_XY_DES, 1);
+	cmd[11] = 0;
+
+	return vchan_tx_prep(&dch->vc, &desc->vd, flags);
+}
+
+static struct dma_async_tx_descriptor *d350_prep_memset(struct dma_chan *chan,
+		dma_addr_t dest, int value, size_t len, unsigned long flags)
+{
+	struct d350_chan *dch = to_d350_chan(chan);
+	struct d350_desc *desc;
+	u32 *cmd;
+
+	desc = kzalloc(sizeof(*desc), GFP_NOWAIT);
+	if (!desc)
+		return NULL;
+
+	desc->tsz = __ffs(len | dest | (1 << dch->tsz));
+	desc->xsize = lower_16_bits(len >> desc->tsz);
+	desc->xsizehi = upper_16_bits(len >> desc->tsz);
+
+	cmd = desc->command;
+	cmd[0] = LINK_CTRL | LINK_DESADDR | LINK_DESADDRHI |
+		 LINK_XSIZE | LINK_XSIZEHI | LINK_DESTRANSCFG |
+		 LINK_XADDRINC | LINK_FILLVAL | LINK_LINKADDR;
+
+	cmd[1] = FIELD_PREP(CH_CTRL_TRANSIZE, desc->tsz) |
+		 FIELD_PREP(CH_CTRL_XTYPE, CH_CTRL_XTYPE_FILL) |
+		 FIELD_PREP(CH_CTRL_DONETYPE, CH_CTRL_DONETYPE_CMD);
+
+	cmd[2] = lower_32_bits(dest);
+	cmd[3] = upper_32_bits(dest);
+	cmd[4] = FIELD_PREP(CH_XY_DES, desc->xsize);
+	cmd[5] = FIELD_PREP(CH_XY_DES, desc->xsizehi);
+	cmd[6] = dch->coherent ? TRANSCFG_WB : TRANSCFG_NC;
+	cmd[7] = FIELD_PREP(CH_XY_DES, 1);
+	cmd[8] = (u8)value * 0x01010101;
+	cmd[9] = 0;
+
+	return vchan_tx_prep(&dch->vc, &desc->vd, flags);
+}
+
+static int d350_pause(struct dma_chan *chan)
+{
+	struct d350_chan *dch = to_d350_chan(chan);
+	unsigned long flags;
+
+	spin_lock_irqsave(&dch->vc.lock, flags);
+	if (dch->status == DMA_IN_PROGRESS) {
+		writel_relaxed(CH_CMD_PAUSE, dch->base + CH_CMD);
+		dch->status = DMA_PAUSED;
+	}
+	spin_unlock_irqrestore(&dch->vc.lock, flags);
+
+	return 0;
+}
+
+static int d350_resume(struct dma_chan *chan)
+{
+	struct d350_chan *dch = to_d350_chan(chan);
+	unsigned long flags;
+
+	spin_lock_irqsave(&dch->vc.lock, flags);
+	if (dch->status == DMA_PAUSED) {
+		writel_relaxed(CH_CMD_RESUME, dch->base + CH_CMD);
+		dch->status = DMA_IN_PROGRESS;
+	}
+	spin_unlock_irqrestore(&dch->vc.lock, flags);
+
+	return 0;
+}
+
+static u32 d350_get_residue(struct d350_chan *dch)
+{
+	u32 res, xsize, xsizehi, hi_new;
+
+	hi_new = readl_relaxed(dch->base + CH_XSIZEHI);
+	do {
+		xsizehi = hi_new;
+		xsize = readl_relaxed(dch->base + CH_XSIZE);
+		hi_new = readl_relaxed(dch->base + CH_XSIZEHI);
+	} while (xsizehi != hi_new);
+
+	res = FIELD_GET(CH_XY_DES, xsize);
+	res |= FIELD_GET(CH_XY_DES, xsizehi) << 16;
+
+	return res << dch->desc->tsz;
+}
+
+static int d350_terminate_all(struct dma_chan *chan)
+{
+	struct d350_chan *dch = to_d350_chan(chan);
+	unsigned long flags;
+	LIST_HEAD(list);
+
+	spin_lock_irqsave(&dch->vc.lock, flags);
+	writel_relaxed(CH_CMD_STOP, dch->base + CH_CMD);
+	if (dch->desc) {
+		if (dch->status != DMA_ERROR)
+			vchan_terminate_vdesc(&dch->desc->vd);
+		dch->desc = NULL;
+		dch->status = DMA_COMPLETE;
+	}
+	vchan_get_all_descriptors(&dch->vc, &list);
+	list_splice_tail(&list, &dch->vc.desc_terminated);
+	spin_unlock_irqrestore(&dch->vc.lock, flags);
+
+	return 0;
+}
+
+static void d350_synchronize(struct dma_chan *chan)
+{
+	struct d350_chan *dch = to_d350_chan(chan);
+
+	vchan_synchronize(&dch->vc);
+}
+
+static u32 d350_desc_bytes(struct d350_desc *desc)
+{
+	return ((u32)desc->xsizehi << 16 | desc->xsize) << desc->tsz;
+}
+
+static enum dma_status d350_tx_status(struct dma_chan *chan, dma_cookie_t cookie,
+				      struct dma_tx_state *state)
+{
+	struct d350_chan *dch = to_d350_chan(chan);
+	struct virt_dma_desc *vd;
+	enum dma_status status;
+	unsigned long flags;
+	u32 residue = 0;
+
+	status = dma_cookie_status(chan, cookie, state);
+
+	spin_lock_irqsave(&dch->vc.lock, flags);
+	if (cookie == dch->cookie) {
+		status = dch->status;
+		if (status == DMA_IN_PROGRESS || status == DMA_PAUSED)
+			dch->residue = d350_get_residue(dch);
+		residue = dch->residue;
+	} else if ((vd = vchan_find_desc(&dch->vc, cookie))) {
+		residue = d350_desc_bytes(to_d350_desc(vd));
+	} else if (status == DMA_IN_PROGRESS) {
+		/* Somebody else terminated it? */
+		status = DMA_ERROR;
+	}
+	spin_unlock_irqrestore(&dch->vc.lock, flags);
+
+	dma_set_residue(state, residue);
+	return status;
+}
+
+static void d350_start_next(struct d350_chan *dch)
+{
+	u32 hdr, *reg;
+
+	dch->desc = to_d350_desc(vchan_next_desc(&dch->vc));
+	if (!dch->desc)
+		return;
+
+	list_del(&dch->desc->vd.node);
+	dch->status = DMA_IN_PROGRESS;
+	dch->cookie = dch->desc->vd.tx.cookie;
+	dch->residue = d350_desc_bytes(dch->desc);
+
+	hdr = dch->desc->command[0];
+	reg = &dch->desc->command[1];
+
+	if (hdr & LINK_INTREN)
+		writel_relaxed(*reg++, dch->base + CH_INTREN);
+	if (hdr & LINK_CTRL)
+		writel_relaxed(*reg++, dch->base + CH_CTRL);
+	if (hdr & LINK_SRCADDR)
+		writel_relaxed(*reg++, dch->base + CH_SRCADDR);
+	if (hdr & LINK_SRCADDRHI)
+		writel_relaxed(*reg++, dch->base + CH_SRCADDRHI);
+	if (hdr & LINK_DESADDR)
+		writel_relaxed(*reg++, dch->base + CH_DESADDR);
+	if (hdr & LINK_DESADDRHI)
+		writel_relaxed(*reg++, dch->base + CH_DESADDRHI);
+	if (hdr & LINK_XSIZE)
+		writel_relaxed(*reg++, dch->base + CH_XSIZE);
+	if (hdr & LINK_XSIZEHI)
+		writel_relaxed(*reg++, dch->base + CH_XSIZEHI);
+	if (hdr & LINK_SRCTRANSCFG)
+		writel_relaxed(*reg++, dch->base + CH_SRCTRANSCFG);
+	if (hdr & LINK_DESTRANSCFG)
+		writel_relaxed(*reg++, dch->base + CH_DESTRANSCFG);
+	if (hdr & LINK_XADDRINC)
+		writel_relaxed(*reg++, dch->base + CH_XADDRINC);
+	if (hdr & LINK_FILLVAL)
+		writel_relaxed(*reg++, dch->base + CH_FILLVAL);
+	if (hdr & LINK_SRCTRIGINCFG)
+		writel_relaxed(*reg++, dch->base + CH_SRCTRIGINCFG);
+	if (hdr & LINK_DESTRIGINCFG)
+		writel_relaxed(*reg++, dch->base + CH_DESTRIGINCFG);
+	if (hdr & LINK_AUTOCFG)
+		writel_relaxed(*reg++, dch->base + CH_AUTOCFG);
+	if (hdr & LINK_LINKADDR)
+		writel_relaxed(*reg++, dch->base + CH_LINKADDR);
+	if (hdr & LINK_LINKADDRHI)
+		writel_relaxed(*reg++, dch->base + CH_LINKADDRHI);
+
+	writel(CH_CMD_ENABLE, dch->base + CH_CMD);
+}
+
+static void d350_issue_pending(struct dma_chan *chan)
+{
+	struct d350_chan *dch = to_d350_chan(chan);
+	unsigned long flags;
+
+	spin_lock_irqsave(&dch->vc.lock, flags);
+	if (vchan_issue_pending(&dch->vc) && !dch->desc)
+		d350_start_next(dch);
+	spin_unlock_irqrestore(&dch->vc.lock, flags);
+}
+
+static irqreturn_t d350_irq(int irq, void *data)
+{
+	struct d350_chan *dch = data;
+	struct device *dev = dch->vc.chan.device->dev;
+	struct virt_dma_desc *vd = &dch->desc->vd;
+	u32 ch_status;
+
+	ch_status = readl(dch->base + CH_STATUS);
+	if (!ch_status)
+		return IRQ_NONE;
+
+	if (ch_status & CH_STAT_INTR_ERR) {
+		u32 errinfo = readl_relaxed(dch->base + CH_ERRINFO);
+
+		if (errinfo & (CH_ERRINFO_AXIRDPOISERR | CH_ERRINFO_AXIRDRESPERR))
+			vd->tx_result.result = DMA_TRANS_READ_FAILED;
+		else if (errinfo & CH_ERRINFO_AXIWRRESPERR)
+			vd->tx_result.result = DMA_TRANS_WRITE_FAILED;
+		else
+			vd->tx_result.result = DMA_TRANS_ABORTED;
+
+		vd->tx_result.residue = d350_get_residue(dch);
+	} else if (!ch_status & CH_STAT_INTR_DONE) {
+		dev_warn(dev, "Unexpected IRQ source? 0x%08x\n", ch_status);
+	}
+	writel_relaxed(ch_status, dch->base + CH_STATUS);
+
+	spin_lock(&dch->vc.lock);
+	vchan_cookie_complete(vd);
+	if (ch_status & CH_STAT_INTR_DONE) {
+		dch->status = DMA_COMPLETE;
+		dch->residue = 0;
+		d350_start_next(dch);
+	} else {
+		dch->status = DMA_ERROR;
+		dch->residue = vd->tx_result.residue;
+	}
+	spin_unlock(&dch->vc.lock);
+
+	return IRQ_HANDLED;
+}
+
+static int d350_alloc_chan_resources(struct dma_chan *chan)
+{
+	struct d350_chan *dch = to_d350_chan(chan);
+	int ret = request_irq(dch->irq, d350_irq, IRQF_SHARED,
+			      dev_name(&dch->vc.chan.dev->device), dch);
+	if (!ret)
+		writel_relaxed(CH_INTREN_DONE | CH_INTREN_ERR, dch->base + CH_INTREN);
+
+	return ret;
+}
+
+static void d350_free_chan_resources(struct dma_chan *chan)
+{
+	struct d350_chan *dch = to_d350_chan(chan);
+
+	writel_relaxed(0, dch->base + CH_INTREN);
+	free_irq(dch->irq, dch);
+	vchan_free_chan_resources(&dch->vc);
+}
+
+static int d350_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct d350 *dmac;
+	void __iomem *base;
+	u32 reg;
+	int ret, nchan, dw, aw, r, p;
+	bool coherent, memset;
+
+	base = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(base))
+		return PTR_ERR(base);
+
+	reg = readl_relaxed(base + DMAINFO + IIDR);
+	r = FIELD_GET(IIDR_VARIANT, reg);
+	p = FIELD_GET(IIDR_REVISION, reg);
+	if (FIELD_GET(IIDR_IMPLEMENTER, reg) != IMPLEMENTER_ARM ||
+	    FIELD_GET(IIDR_PRODUCTID, reg) != PRODUCTID_DMA350)
+		return dev_err_probe(dev, -ENODEV, "Not a DMA-350!");
+
+	reg = readl_relaxed(base + DMAINFO + DMA_BUILDCFG0);
+	nchan = FIELD_GET(DMA_CFG_NUM_CHANNELS, reg) + 1;
+	dw = 1 << FIELD_GET(DMA_CFG_DATA_WIDTH, reg);
+	aw = FIELD_GET(DMA_CFG_ADDR_WIDTH, reg) + 1;
+
+	dma_set_mask_and_coherent(dev, DMA_BIT_MASK(aw));
+	coherent = device_get_dma_attr(dev) == DEV_DMA_COHERENT;
+
+	dmac = devm_kzalloc(dev, struct_size(dmac, channels, nchan), GFP_KERNEL);
+	if (!dmac)
+		return -ENOMEM;
+
+	dmac->nchan = nchan;
+
+	reg = readl_relaxed(base + DMAINFO + DMA_BUILDCFG1);
+	dmac->nreq = FIELD_GET(DMA_CFG_NUM_TRIGGER_IN, reg);
+
+	dev_dbg(dev, "DMA-350 r%dp%d with %d channels, %d requests\n", r, p, dmac->nchan, dmac->nreq);
+
+	dmac->dma.dev = dev;
+	for (int i = min(dw, 16); i > 0; i /= 2) {
+		dmac->dma.src_addr_widths |= BIT(i);
+		dmac->dma.dst_addr_widths |= BIT(i);
+	}
+	dmac->dma.directions = BIT(DMA_MEM_TO_MEM);
+	dmac->dma.descriptor_reuse = true;
+	dmac->dma.residue_granularity = DMA_RESIDUE_GRANULARITY_BURST;
+	dmac->dma.device_alloc_chan_resources = d350_alloc_chan_resources;
+	dmac->dma.device_free_chan_resources = d350_free_chan_resources;
+	dma_cap_set(DMA_MEMCPY, dmac->dma.cap_mask);
+	dmac->dma.device_prep_dma_memcpy = d350_prep_memcpy;
+	dmac->dma.device_pause = d350_pause;
+	dmac->dma.device_resume = d350_resume;
+	dmac->dma.device_terminate_all = d350_terminate_all;
+	dmac->dma.device_synchronize = d350_synchronize;
+	dmac->dma.device_tx_status = d350_tx_status;
+	dmac->dma.device_issue_pending = d350_issue_pending;
+	INIT_LIST_HEAD(&dmac->dma.channels);
+
+	/* Would be nice to have per-channel caps for this... */
+	memset = true;
+	for (int i = 0; i < nchan; i++) {
+		struct d350_chan *dch = &dmac->channels[i];
+
+		dch->base = base + DMACH(i);
+		writel_relaxed(CH_CMD_CLEAR, dch->base + CH_CMD);
+
+		reg = readl_relaxed(dch->base + CH_BUILDCFG1);
+		if (!(FIELD_GET(CH_CFG_HAS_CMDLINK, reg))) {
+			dev_warn(dev, "No command link support on channel %d\n", i);
+			continue;
+		}
+		dch->irq = platform_get_irq(pdev, i);
+		if (dch->irq < 0)
+			return dev_err_probe(dev, dch->irq,
+					     "Failed to get IRQ for channel %d\n", i);
+
+		dch->has_wrap = FIELD_GET(CH_CFG_HAS_WRAP, reg);
+		dch->has_trig = FIELD_GET(CH_CFG_HAS_TRIGIN, reg) &
+				FIELD_GET(CH_CFG_HAS_TRIGSEL, reg);
+
+		/* Fill is a special case of Wrap */
+		memset &= dch->has_wrap;
+
+		reg = readl_relaxed(dch->base + CH_BUILDCFG0);
+		dch->tsz = FIELD_GET(CH_CFG_DATA_WIDTH, reg);
+
+		reg = FIELD_PREP(CH_LINK_SHAREATTR, coherent ? SHAREATTR_ISH : SHAREATTR_OSH);
+		reg |= FIELD_PREP(CH_LINK_MEMATTR, coherent ? MEMATTR_WB : MEMATTR_NC);
+		writel_relaxed(reg, dch->base + CH_LINKATTR);
+
+		dch->vc.desc_free = d350_desc_free;
+		vchan_init(&dch->vc, &dmac->dma);
+	}
+
+	if (memset) {
+		dma_cap_set(DMA_MEMSET, dmac->dma.cap_mask);
+		dmac->dma.device_prep_dma_memset = d350_prep_memset;
+	}
+
+	platform_set_drvdata(pdev, dmac);
+
+	ret = dma_async_device_register(&dmac->dma);
+	if (ret)
+		return dev_err_probe(dev, ret, "Failed to register DMA device\n");
+
+	return 0;
+}
+
+static void d350_remove(struct platform_device *pdev)
+{
+	struct d350 *dmac = platform_get_drvdata(pdev);
+
+	dma_async_device_unregister(&dmac->dma);
+}
+
+static const struct of_device_id d350_of_match[] = {
+	{ .compatible = "arm,dma-350" },
+	{}
+};
+MODULE_DEVICE_TABLE(of, d350_of_match);
+
+static struct platform_driver d350_driver = {
+	.driver = {
+		.name = "arm-dma350",
+		.of_match_table = of_match_ptr(d350_of_match),
+	},
+	.probe = d350_probe,
+	.remove = d350_remove,
+};
+module_platform_driver(d350_driver);
+
+MODULE_AUTHOR("Robin Murphy <robin.murphy@arm.com>");
+MODULE_DESCRIPTION("Arm DMA-350 driver");
+MODULE_LICENSE("GPL v2");
-- 
2.39.2.101.g768bb238c484.dirty


