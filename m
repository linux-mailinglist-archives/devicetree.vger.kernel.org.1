Return-Path: <devicetree+bounces-243321-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 83041C96C1F
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 11:54:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id AEFD3344A8B
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 10:53:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D6443054E1;
	Mon,  1 Dec 2025 10:53:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="pRebKXcz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay180-hz1.antispameurope.com (mx-relay180-hz1.antispameurope.com [94.100.133.63])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 144FF30214A
	for <devicetree@vger.kernel.org>; Mon,  1 Dec 2025 10:53:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.133.63
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764586387; cv=pass; b=e0Xs2K1pDp7+oAzfXcIaEEc7kzPzOX9BTh/9liAtoRC1CuNvu75oykIVP9ujRrbr/1IPexkPz/ukGLUudzzqr1awr+sPA47ForE7UoVX2QDe/KKuW9a9hbVLUAKJQk9GFXE7A4PBShYjYBFcxhrJdrgOa6ByQ4Rb0FDhBRIZ2ho=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764586387; c=relaxed/simple;
	bh=5oms8uc5S43PGOTYBY8EU+HPAJQquVtoNbI+x+bKKLA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=KOE0A0+NwqLz1fXOUmHlsiTjFa/JXqE6ZYDX0bfd6yKHzSqVDjpxgJc4t9e+d407YDNRna4SvK7cTSQ1nO5a9cGbrzu63w9nvZKOJuDsMcJe2ExzHrY1CS6GFzBuXzg9f3o8r9JOkydXvuoP6xuAOxrwiCKuiaoeu+QMyENcHCg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=pRebKXcz; arc=pass smtp.client-ip=94.100.133.63
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate180-hz1.hornetsecurity.com 1;
 spf=pass reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out03-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=jpud14AVdCVE4BqctTtx1QgtADA41ixWO6mfo6mWLNk=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1764586323;
 b=AEAGoWlUI95S1npBamopreKHixKyFPbWZlujSpmGj6Wm2ymdLdFBBAez2sDQat6mPqLnvSOd
 bkW8P9FV6SqADHbgHxYi5ehTKWSaFY9WevLKc/3b3ypNypesqkmE23wKjwTSa2go3S1cZNofxzB
 WmKx9BjenVuuHTfmuB4XEbfc1T8cw9v3HcM3b+1iKJ0OHsW9j5pNyyamgfNK6LvWFhqyK9RHrKD
 jqpILiN8DBGcBvteuf9c7xKb61EnwLPQInqnxoJSKBV5ugfb9lL0eUuKnUFuLt5EAVaEJm9P0LH
 Q0RlbpO3OXdqO/DNL6jWumyR/SCUIPtck9NBs3FIc+DVw==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1764586323;
 b=UF3PT2pViFHrCymwhlBBpvWL2Ca5KNznHsUl+et9Z5KEwG8egD5OkiAJhl0HBTateoxZc9TP
 AlKFrOjpF+8XHJ8562QE6PMXEOrXf0jRYeknnx7UTkJuxj9Ow3a6s9vGKlSIcl7ZW68T7y8sEzs
 vI0mcJokXc7Sc2lKANODKhv8D5e2N8bPwYINGGrSh4DEnTh4S95ZmklJDMAkmZxpIP/OrqUy4Gc
 l/MT+oJgjg7fVITIiEZo0/qoifv07JQ246EsPxQdBIIGlr4TemEETPp28Lez3+wtNKijHJTY/8K
 HfXMIRj0iVL/IEUNs93E2UAiFNzROyWKJq3wncnaR8vUw==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay180-hz1.antispameurope.com;
 Mon, 01 Dec 2025 11:52:03 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by hmail-p-smtp01-out03-hz1.hornetsecurity.com (Postfix) with ESMTPSA id B50C8CC0E91;
	Mon,  1 Dec 2025 11:51:53 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Shawn Guo <shawnguo@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [RFC PATCH 1/3] irqchip/ls-extirq: Convert to platform driver
Date: Mon,  1 Dec 2025 11:51:40 +0100
Message-ID: <20251201105144.539450-2-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251201105144.539450-1-alexander.stein@ew.tq-group.com>
References: <20251201105144.539450-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-cloud-security-sender:alexander.stein@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: alexander.stein@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay180-hz1.antispameurope.com with 4dKghB1ZPZz2SjPb
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:877b155cd18575eb910342161cf8e7ff
X-cloud-security:scantime:2.275
DKIM-Signature: a=rsa-sha256;
 bh=jpud14AVdCVE4BqctTtx1QgtADA41ixWO6mfo6mWLNk=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1764586322; v=1;
 b=pRebKXczNNPU+BVG1uvJYdu3MmX4PbYaVL4h3SDEsAhxMsHaz45pDTzkR/bZlYb2H38QzXdI
 fj+xxyRRXfKmCz63+MY/l608HouERT0u64uMb2BZMV+5az7d5peZh5KlDuui3A0/7cZx+O7KvUp
 qB/Y99cBOyzVxWpAjEVnJ4JeLn6fOz4zWa2gf4ddbD4HCb+KF9tWljmgyAMbTDDrKMNjfxBAJ4g
 aJ7Q6d3hnOoltZ1ABh5IZxLB3ekTNdrHNTIgSW+tbJMKG3jlEvfZYdrA8eefPgMdVlFAWdNb//0
 J8/fu7GX8B5JBC5BiZP05nbiH+gFZTQReHOKhT/vGckNg==

extirq maps to gic which might not be present yet when this driver is
initialized. Convert it to platform driver in order to allow probe
deferral.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 drivers/irqchip/irq-ls-extirq.c | 40 ++++++++++++++++++++++-----------
 1 file changed, 27 insertions(+), 13 deletions(-)

diff --git a/drivers/irqchip/irq-ls-extirq.c b/drivers/irqchip/irq-ls-extirq.c
index 50a7b38381b98..cb7db9ae79087 100644
--- a/drivers/irqchip/irq-ls-extirq.c
+++ b/drivers/irqchip/irq-ls-extirq.c
@@ -168,19 +168,29 @@ ls_extirq_parse_map(struct ls_extirq_data *priv, struct device_node *node)
 	return 0;
 }
 
-static int __init
-ls_extirq_of_init(struct device_node *node, struct device_node *parent)
+static const struct of_device_id ls_extirq_match[] = {
+	{ .compatible = "fsl,ls1021a-extirq" },
+	{ .compatible = "fsl,ls1043a-extirq" },
+	{ .compatible = "fsl,ls1088a-extirq" },
+	{}
+};
+
+static int ls_extirq_probe(struct platform_device *pdev)
 {
+	struct device_node *node = pdev->dev.of_node;
 	struct irq_domain *domain, *parent_domain;
+	struct device *dev = &pdev->dev;
+	struct device_node *irq_parent;
 	struct ls_extirq_data *priv;
 	int ret;
 
-	parent_domain = irq_find_host(parent);
-	if (!parent_domain) {
-		pr_err("Cannot find parent domain\n");
-		ret = -ENODEV;
-		goto err_irq_find_host;
-	}
+	irq_parent = of_irq_find_parent(dev->of_node);
+	if (!irq_parent)
+		return -ENODEV;
+
+	parent_domain = irq_find_host(irq_parent);
+	if (!parent_domain)
+		return dev_err_probe(dev, -EPROBE_DEFER, "Cannot find parent domain\n");
 
 	priv = kzalloc(sizeof(*priv), GFP_KERNEL);
 	if (!priv) {
@@ -194,7 +204,7 @@ ls_extirq_of_init(struct device_node *node, struct device_node *parent)
 	 */
 	priv->intpcr = of_iomap(node, 0);
 	if (!priv->intpcr) {
-		pr_err("Cannot ioremap OF node %pOF\n", node);
+		dev_err(dev, "Cannot ioremap OF node %pOF\n", node);
 		ret = -ENOMEM;
 		goto err_iomap;
 	}
@@ -223,10 +233,14 @@ ls_extirq_of_init(struct device_node *node, struct device_node *parent)
 err_iomap:
 	kfree(priv);
 err_alloc_priv:
-err_irq_find_host:
 	return ret;
 }
 
-IRQCHIP_DECLARE(ls1021a_extirq, "fsl,ls1021a-extirq", ls_extirq_of_init);
-IRQCHIP_DECLARE(ls1043a_extirq, "fsl,ls1043a-extirq", ls_extirq_of_init);
-IRQCHIP_DECLARE(ls1088a_extirq, "fsl,ls1088a-extirq", ls_extirq_of_init);
+static struct platform_driver ls_extirq_driver = {
+	.driver = {
+		.name		= "irq-ls-extirq",
+		.of_match_table	= ls_extirq_match,
+	},
+	.probe = ls_extirq_probe,
+};
+builtin_platform_driver(ls_extirq_driver);
-- 
2.43.0


