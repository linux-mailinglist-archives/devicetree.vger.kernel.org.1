Return-Path: <devicetree+bounces-15955-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 197F77EC593
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 15:40:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2F7CA1C20B72
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 14:40:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4B993308D;
	Wed, 15 Nov 2023 14:40:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="PqN0C/rN"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81BF23065F;
	Wed, 15 Nov 2023 14:40:26 +0000 (UTC)
Received: from relay9-d.mail.gandi.net (relay9-d.mail.gandi.net [217.70.183.199])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AAF431B8;
	Wed, 15 Nov 2023 06:40:20 -0800 (PST)
Received: by mail.gandi.net (Postfix) with ESMTPA id 6B275FF80A;
	Wed, 15 Nov 2023 14:40:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1700059219;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=a7GzZmAJnaw9HHP5d+rS0ScKn3aFjZ7ScMDMv0RYFek=;
	b=PqN0C/rNzWACGBXJS3nkF/B04DusUHm/EHjuxRhC/uItQfm7X0//Q6bF4zwFLUkjXo/cmo
	DvBa+2ykYlo7tP75TDBGus1iZgYtbuMq3hXb90X04Ct34cyB3SwL/NV824e+4hzHXmMLdO
	L5HiNswLu1ehcjdCPtgJ2YdR3RnyT4VGOfm6mluiNJiY3T0NnuTve7yXM0ROBnYEStNuRo
	/YE6K1eS1THtxwT9CEcXmHv9jsInMVMsuWX4JAEpTxeIFYDK9rQ1m5McWujbJFXHjGeAZc
	SkvGRqAwxgaojud9lh63rL19QVPhRiBl7kL4Z8JvMX0qpFN+J9NaRq0QhsUeBg==
From: Herve Codina <herve.codina@bootlin.com>
To: Herve Codina <herve.codina@bootlin.com>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lee Jones <lee@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Qiang Zhao <qiang.zhao@nxp.com>,
	Li Yang <leoyang.li@nxp.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Shengjiu Wang <shengjiu.wang@gmail.com>,
	Xiubo Li <Xiubo.Lee@gmail.com>,
	Fabio Estevam <festevam@gmail.com>,
	Nicolin Chen <nicoleotsuka@gmail.com>,
	Christophe Leroy <christophe.leroy@csgroup.eu>,
	Randy Dunlap <rdunlap@infradead.org>
Cc: netdev@vger.kernel.org,
	linuxppc-dev@lists.ozlabs.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	alsa-devel@alsa-project.org,
	Simon Horman <horms@kernel.org>,
	Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: [PATCH v9 02/27] soc: fsl: cpm1: qmc: Fix __iomem addresses declaration
Date: Wed, 15 Nov 2023 15:39:38 +0100
Message-ID: <20231115144007.478111-3-herve.codina@bootlin.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231115144007.478111-1-herve.codina@bootlin.com>
References: <20231115144007.478111-1-herve.codina@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-GND-Sasl: herve.codina@bootlin.com

Running sparse (make C=1) on qmc.c raises a lot of warning such as:
  ...
  warning: incorrect type in assignment (different address spaces)
     expected struct cpm_buf_desc [usertype] *[noderef] __iomem bd
     got struct cpm_buf_desc [noderef] [usertype] __iomem *txbd_free
  ...

Indeed, some variable were declared 'type *__iomem var' instead of
'type __iomem *var'.

Use the correct declaration to remove these warnings.

Fixes: 3178d58e0b97 ("soc: fsl: cpm1: Add support for QMC")
Signed-off-by: Herve Codina <herve.codina@bootlin.com>
Reviewed-by: Christophe Leroy <christophe.leroy@csgroup.eu>
---
 drivers/soc/fsl/qe/qmc.c | 34 +++++++++++++++++-----------------
 1 file changed, 17 insertions(+), 17 deletions(-)

diff --git a/drivers/soc/fsl/qe/qmc.c b/drivers/soc/fsl/qe/qmc.c
index 92ec76c03965..3f3de1351c96 100644
--- a/drivers/soc/fsl/qe/qmc.c
+++ b/drivers/soc/fsl/qe/qmc.c
@@ -175,7 +175,7 @@ struct qmc_chan {
 	struct list_head list;
 	unsigned int id;
 	struct qmc *qmc;
-	void *__iomem s_param;
+	void __iomem *s_param;
 	enum qmc_mode mode;
 	u64	tx_ts_mask;
 	u64	rx_ts_mask;
@@ -203,9 +203,9 @@ struct qmc_chan {
 struct qmc {
 	struct device *dev;
 	struct tsa_serial *tsa_serial;
-	void *__iomem scc_regs;
-	void *__iomem scc_pram;
-	void *__iomem dpram;
+	void __iomem *scc_regs;
+	void __iomem *scc_pram;
+	void __iomem *dpram;
 	u16 scc_pram_offset;
 	cbd_t __iomem *bd_table;
 	dma_addr_t bd_dma_addr;
@@ -218,37 +218,37 @@ struct qmc {
 	struct qmc_chan *chans[64];
 };
 
-static inline void qmc_write16(void *__iomem addr, u16 val)
+static inline void qmc_write16(void __iomem *addr, u16 val)
 {
 	iowrite16be(val, addr);
 }
 
-static inline u16 qmc_read16(void *__iomem addr)
+static inline u16 qmc_read16(void __iomem *addr)
 {
 	return ioread16be(addr);
 }
 
-static inline void qmc_setbits16(void *__iomem addr, u16 set)
+static inline void qmc_setbits16(void __iomem *addr, u16 set)
 {
 	qmc_write16(addr, qmc_read16(addr) | set);
 }
 
-static inline void qmc_clrbits16(void *__iomem addr, u16 clr)
+static inline void qmc_clrbits16(void __iomem *addr, u16 clr)
 {
 	qmc_write16(addr, qmc_read16(addr) & ~clr);
 }
 
-static inline void qmc_write32(void *__iomem addr, u32 val)
+static inline void qmc_write32(void __iomem *addr, u32 val)
 {
 	iowrite32be(val, addr);
 }
 
-static inline u32 qmc_read32(void *__iomem addr)
+static inline u32 qmc_read32(void __iomem *addr)
 {
 	return ioread32be(addr);
 }
 
-static inline void qmc_setbits32(void *__iomem addr, u32 set)
+static inline void qmc_setbits32(void __iomem *addr, u32 set)
 {
 	qmc_write32(addr, qmc_read32(addr) | set);
 }
@@ -318,7 +318,7 @@ int qmc_chan_write_submit(struct qmc_chan *chan, dma_addr_t addr, size_t length,
 {
 	struct qmc_xfer_desc *xfer_desc;
 	unsigned long flags;
-	cbd_t *__iomem bd;
+	cbd_t __iomem *bd;
 	u16 ctrl;
 	int ret;
 
@@ -374,7 +374,7 @@ static void qmc_chan_write_done(struct qmc_chan *chan)
 	void (*complete)(void *context);
 	unsigned long flags;
 	void *context;
-	cbd_t *__iomem bd;
+	cbd_t __iomem *bd;
 	u16 ctrl;
 
 	/*
@@ -425,7 +425,7 @@ int qmc_chan_read_submit(struct qmc_chan *chan, dma_addr_t addr, size_t length,
 {
 	struct qmc_xfer_desc *xfer_desc;
 	unsigned long flags;
-	cbd_t *__iomem bd;
+	cbd_t __iomem *bd;
 	u16 ctrl;
 	int ret;
 
@@ -488,7 +488,7 @@ static void qmc_chan_read_done(struct qmc_chan *chan)
 	void (*complete)(void *context, size_t size);
 	struct qmc_xfer_desc *xfer_desc;
 	unsigned long flags;
-	cbd_t *__iomem bd;
+	cbd_t __iomem *bd;
 	void *context;
 	u16 datalen;
 	u16 ctrl;
@@ -663,7 +663,7 @@ static void qmc_chan_reset_rx(struct qmc_chan *chan)
 {
 	struct qmc_xfer_desc *xfer_desc;
 	unsigned long flags;
-	cbd_t *__iomem bd;
+	cbd_t __iomem *bd;
 	u16 ctrl;
 
 	spin_lock_irqsave(&chan->rx_lock, flags);
@@ -694,7 +694,7 @@ static void qmc_chan_reset_tx(struct qmc_chan *chan)
 {
 	struct qmc_xfer_desc *xfer_desc;
 	unsigned long flags;
-	cbd_t *__iomem bd;
+	cbd_t __iomem *bd;
 	u16 ctrl;
 
 	spin_lock_irqsave(&chan->tx_lock, flags);
-- 
2.41.0


