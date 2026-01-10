Return-Path: <devicetree+bounces-253492-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DC30AD0D8C1
	for <lists+devicetree@lfdr.de>; Sat, 10 Jan 2026 16:44:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7B84F3013EA9
	for <lists+devicetree@lfdr.de>; Sat, 10 Jan 2026 15:44:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65259347FF8;
	Sat, 10 Jan 2026 15:44:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from srv01.abscue.de (abscue.de [89.58.28.240])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA496346AE1;
	Sat, 10 Jan 2026 15:44:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=89.58.28.240
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768059872; cv=none; b=V2B4txtQU/0vmq841g0zteCqz9KQ2nY/OcIHcbsH5+OUMP6JX1k2afcPAg1mnGdRm9klnbq47hP46xJA8RCv8vlACIOFsM93Ycb8KLnD8azvrujJ1WcoQbyq1tnrWTHrzt5UviefoAAmqGZOJPAvcDCCLOVlLVwGjAibhDO+7tc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768059872; c=relaxed/simple;
	bh=PkBPu+tWvPkl0xbuWH6Qyz3LhAXO77UNVvavcNOk5nE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=awE//0/YkCzASCtwjiQofceakB1IkYqumorPmBs7GjH6YgJh0mprI50nO4s66f9xUakzjWAkIQAFCiNKJ/It1kKRsMDkmCI392Lf8bXaAsJgoFL4DzQxZJ4rn1FbzPUXlvwlDlT1SLS/tfXwJKy05Gq5FyV2Iu9vYOejGPnVY1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=abscue.de; spf=pass smtp.mailfrom=abscue.de; arc=none smtp.client-ip=89.58.28.240
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=abscue.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=abscue.de
Received: from srv01.abscue.de (localhost [127.0.0.1])
	by spamfilter.srv.local (Postfix) with ESMTP id BEB871C2450;
	Sat, 10 Jan 2026 16:44:16 +0100 (CET)
X-Spam-Level: 
Received: from fluffy-mammal.metal.fwg-cag.de (unknown [IPv6:2001:9e8:cdde:8c00:6078:eb97:88d9:587f])
	by srv01.abscue.de (Postfix) with ESMTPSA id B93431C2455;
	Sat, 10 Jan 2026 16:44:12 +0100 (CET)
From: =?utf-8?q?Otto_Pfl=C3=BCger?= <otto.pflueger@abscue.de>
Date: Sat, 10 Jan 2026 16:43:37 +0100
Subject: [PATCH 3/4] mailbox: sprd: add support for mailbox revision 2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260110-ums9230-mailbox-v1-3-5941cab4f4e5@abscue.de>
References: <20260110-ums9230-mailbox-v1-0-5941cab4f4e5@abscue.de>
In-Reply-To: <20260110-ums9230-mailbox-v1-0-5941cab4f4e5@abscue.de>
To: Jassi Brar <jassisinghbrar@gmail.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Orson Zhai <orsonzhai@gmail.com>, 
 Baolin Wang <baolin.wang@linux.alibaba.com>, 
 Chunyan Zhang <zhang.lyra@gmail.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 =?utf-8?q?Otto_Pfl=C3=BCger?= <otto.pflueger@abscue.de>
X-Mailer: b4 0.14.2

Newer Unisoc SoCs such as UMS9230 include a new revision of the mailbox
IP with support for up to 16 channels. Since the new revision has a
similar register layout and many parts have remained unchanged, make the
driver support both revisions.

Signed-off-by: Otto Pflüger <otto.pflueger@abscue.de>
---
 drivers/mailbox/sprd-mailbox.c | 103 ++++++++++++++++++++++++++++++++---------
 1 file changed, 82 insertions(+), 21 deletions(-)

diff --git a/drivers/mailbox/sprd-mailbox.c b/drivers/mailbox/sprd-mailbox.c
index 9a3d388f76b78632ca08948e0fe0ad484aed23c3..26256581a76ad59785a1c87a34eb91f5985dc948 100644
--- a/drivers/mailbox/sprd-mailbox.c
+++ b/drivers/mailbox/sprd-mailbox.c
@@ -24,7 +24,8 @@
 #define SPRD_MBOX_IRQ_STS	0x18
 #define SPRD_MBOX_IRQ_MSK	0x1c
 #define SPRD_MBOX_LOCK		0x20
-#define SPRD_MBOX_FIFO_DEPTH	0x24
+#define SPRD_MBOX_FIFO_DEPTH	0x24 /* outbox only */
+#define SPRD_MBOX_IN_FIFO_STS2	0x24 /* inbox only, revision 2 */
 
 /* Bit and mask definition for inbox's SPRD_MBOX_FIFO_STS register */
 #define SPRD_INBOX_FIFO_DELIVER_MASK		GENMASK(23, 16)
@@ -32,8 +33,18 @@
 #define SPRD_INBOX_FIFO_DELIVER_SHIFT		16
 #define SPRD_INBOX_FIFO_BUSY_MASK		GENMASK(7, 0)
 
+/* Bit and mask definition for R2 inbox's SPRD_MBOX_FIFO_RST register */
+#define SPRD_INBOX_R2_FIFO_OVERFLOW_DELIVER_RST	GENMASK(31, 0)
+
+/* Bit and mask definition for R2 inbox's SPRD_MBOX_FIFO_STS register */
+#define SPRD_INBOX_R2_FIFO_DELIVER_MASK		GENMASK(15, 0)
+
+/* Bit and mask definition for SPRD_MBOX_IN_FIFO_STS2 register */
+#define SPRD_INBOX_R2_FIFO_OVERFLOW_MASK	GENMASK(31, 16)
+#define SPRD_INBOX_R2_FIFO_BUSY_MASK		GENMASK(15, 0)
+
 /* Bit and mask definition for SPRD_MBOX_IRQ_STS register */
-#define SPRD_MBOX_IRQ_CLR			BIT(0)
+#define SPRD_MBOX_IRQ_CLR			GENMASK(31, 0)
 
 /* Bit and mask definition for outbox's SPRD_MBOX_FIFO_STS register */
 #define SPRD_OUTBOX_FIFO_FULL			BIT(2)
@@ -52,8 +63,18 @@
 #define SPRD_OUTBOX_FIFO_IRQ_MASK		GENMASK(4, 0)
 
 #define SPRD_OUTBOX_BASE_SPAN			0x1000
-#define SPRD_MBOX_CHAN_MAX			8
-#define SPRD_SUPP_INBOX_ID_SC9863A		7
+#define SPRD_MBOX_R1_CHAN_MAX			8
+#define SPRD_MBOX_R2_CHAN_MAX			16
+
+enum sprd_mbox_version {
+	SPRD_MBOX_R1,
+	SPRD_MBOX_R2,
+};
+
+struct sprd_mbox_info {
+	enum sprd_mbox_version version;
+	unsigned long supp_id;
+};
 
 struct sprd_mbox_priv {
 	struct mbox_controller	mbox;
@@ -64,9 +85,11 @@ struct sprd_mbox_priv {
 	void __iomem		*supp_base;
 	u32			outbox_fifo_depth;
 
+	const struct sprd_mbox_info *info;
+
 	struct mutex		lock;
 	u32			refcnt;
-	struct mbox_chan	chan[SPRD_MBOX_CHAN_MAX];
+	struct mbox_chan	chan[SPRD_MBOX_R2_CHAN_MAX];
 };
 
 static struct sprd_mbox_priv *to_sprd_mbox_priv(struct mbox_controller *mbox)
@@ -154,22 +177,34 @@ static irqreturn_t sprd_mbox_inbox_isr(int irq, void *data)
 {
 	struct sprd_mbox_priv *priv = data;
 	struct mbox_chan *chan;
-	u32 fifo_sts, send_sts, busy, id;
+	u32 fifo_sts, fifo_sts2, send_sts, busy, id;
 
 	fifo_sts = readl(priv->inbox_base + SPRD_MBOX_FIFO_STS);
 
+	if (priv->info->version == SPRD_MBOX_R2)
+		fifo_sts2 = readl(priv->inbox_base + SPRD_MBOX_IN_FIFO_STS2);
+
 	/* Get the inbox data delivery status */
-	send_sts = (fifo_sts & SPRD_INBOX_FIFO_DELIVER_MASK) >>
-		SPRD_INBOX_FIFO_DELIVER_SHIFT;
+	if (priv->info->version == SPRD_MBOX_R2) {
+		send_sts = fifo_sts & SPRD_INBOX_R2_FIFO_DELIVER_MASK;
+	} else {
+		send_sts = (fifo_sts & SPRD_INBOX_FIFO_DELIVER_MASK) >>
+			SPRD_INBOX_FIFO_DELIVER_SHIFT;
+	}
+
 	if (!send_sts) {
 		dev_warn_ratelimited(priv->dev, "spurious inbox interrupt\n");
 		return IRQ_NONE;
 	}
 
 	/* Clear FIFO delivery and overflow status first */
-	writel(fifo_sts &
-	       (SPRD_INBOX_FIFO_DELIVER_MASK | SPRD_INBOX_FIFO_OVERLOW_MASK),
-	       priv->inbox_base + SPRD_MBOX_FIFO_RST);
+	if (priv->info->version == SPRD_MBOX_R2) {
+		writel(SPRD_INBOX_R2_FIFO_OVERFLOW_DELIVER_RST,
+		       priv->inbox_base + SPRD_MBOX_FIFO_RST);
+	} else {
+		writel(fifo_sts & (SPRD_INBOX_FIFO_DELIVER_MASK | SPRD_INBOX_FIFO_OVERLOW_MASK),
+		       priv->inbox_base + SPRD_MBOX_FIFO_RST);
+	}
 
 	while (send_sts) {
 		id = __ffs(send_sts);
@@ -181,7 +216,11 @@ static irqreturn_t sprd_mbox_inbox_isr(int irq, void *data)
 		 * Check if the message was fetched by remote target, if yes,
 		 * that means the transmission has been completed.
 		 */
-		busy = fifo_sts & SPRD_INBOX_FIFO_BUSY_MASK;
+		if (priv->info->version == SPRD_MBOX_R2)
+			busy = fifo_sts2 & SPRD_INBOX_R2_FIFO_BUSY_MASK;
+		else
+			busy = fifo_sts & SPRD_INBOX_FIFO_BUSY_MASK;
+
 		if (!(busy & BIT(id)))
 			mbox_chan_txdone(chan, 0);
 	}
@@ -295,7 +334,7 @@ static int sprd_mbox_probe(struct platform_device *pdev)
 	struct device *dev = &pdev->dev;
 	struct sprd_mbox_priv *priv;
 	int ret, inbox_irq, outbox_irq, supp_irq;
-	unsigned long id, supp;
+	unsigned long id;
 	struct clk *clk;
 
 	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
@@ -305,6 +344,10 @@ static int sprd_mbox_probe(struct platform_device *pdev)
 	priv->dev = dev;
 	mutex_init(&priv->lock);
 
+	priv->info = of_device_get_match_data(dev);
+	if (!priv->info)
+		return -EINVAL;
+
 	/*
 	 * Unisoc mailbox uses an inbox to send messages to the target
 	 * core, and uses (an) outbox(es) to receive messages from other
@@ -362,12 +405,12 @@ static int sprd_mbox_probe(struct platform_device *pdev)
 			return ret;
 		}
 
-		supp = (unsigned long) of_device_get_match_data(dev);
-		if (!supp) {
+		if (!priv->info->supp_id) {
 			dev_err(dev, "no supplementary outbox specified\n");
 			return -ENODEV;
 		}
-		priv->supp_base = priv->outbox_base + (SPRD_OUTBOX_BASE_SPAN * supp);
+		priv->supp_base = priv->outbox_base +
+			(SPRD_OUTBOX_BASE_SPAN * priv->info->supp_id);
 	}
 
 	/* Get the default outbox FIFO depth */
@@ -375,11 +418,15 @@ static int sprd_mbox_probe(struct platform_device *pdev)
 		readl(priv->outbox_base + SPRD_MBOX_FIFO_DEPTH) + 1;
 	priv->mbox.dev = dev;
 	priv->mbox.chans = &priv->chan[0];
-	priv->mbox.num_chans = SPRD_MBOX_CHAN_MAX;
 	priv->mbox.ops = &sprd_mbox_ops;
 	priv->mbox.txdone_irq = true;
 
-	for (id = 0; id < SPRD_MBOX_CHAN_MAX; id++)
+	if (priv->info->version == SPRD_MBOX_R2)
+		priv->mbox.num_chans = SPRD_MBOX_R2_CHAN_MAX;
+	else
+		priv->mbox.num_chans = SPRD_MBOX_R1_CHAN_MAX;
+
+	for (id = 0; id < priv->mbox.num_chans; id++)
 		priv->chan[id].con_priv = (void *)id;
 
 	ret = devm_mbox_controller_register(dev, &priv->mbox);
@@ -391,10 +438,24 @@ static int sprd_mbox_probe(struct platform_device *pdev)
 	return 0;
 }
 
+static const struct sprd_mbox_info sc9860_mbox_info = {
+	.version = SPRD_MBOX_R1,
+};
+
+static const struct sprd_mbox_info sc9863a_mbox_info = {
+	.version = SPRD_MBOX_R1,
+	.supp_id = 7,
+};
+
+static const struct sprd_mbox_info ums9230_mbox_info = {
+	.version = SPRD_MBOX_R2,
+	.supp_id = 6,
+};
+
 static const struct of_device_id sprd_mbox_of_match[] = {
-	{ .compatible = "sprd,sc9860-mailbox" },
-	{ .compatible = "sprd,sc9863a-mailbox",
-	  .data = (void *)SPRD_SUPP_INBOX_ID_SC9863A },
+	{ .compatible = "sprd,sc9860-mailbox", .data = &sc9860_mbox_info },
+	{ .compatible = "sprd,sc9863a-mailbox", .data = &sc9863a_mbox_info },
+	{ .compatible = "sprd,ums9230-mailbox", .data = &ums9230_mbox_info },
 	{ },
 };
 MODULE_DEVICE_TABLE(of, sprd_mbox_of_match);

-- 
2.50.0


