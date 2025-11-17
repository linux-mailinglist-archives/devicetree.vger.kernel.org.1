Return-Path: <devicetree+bounces-239485-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 89718C6558D
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 18:09:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 33CD34F0F3E
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 17:03:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F3B630C36E;
	Mon, 17 Nov 2025 17:00:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="wB7TJ5hh"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 699DF30AAC2;
	Mon, 17 Nov 2025 17:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.85.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763398837; cv=none; b=d27NODaCGlcw4o+ZF3ND3mx0XFeYAUmnt+y4QQUU6Cq2pL/3EPKtjzWKM+AyjM0I5c0AI6JiAhWOxN+amJjZGatXL1bvUd1NTOM4W1LvPaLbUAjG1vIsHtzC2UF7OdUyptbqLU+2j0/w5O9NJQ+cAFMzUcueCIYHo/2jfyRji58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763398837; c=relaxed/simple;
	bh=R4Di4HnIicbPPtLbB8fde2op/ku0MJYw+GNztvpfabw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=uvOa7JRF8M0t/NXvsHDFJvCe6l9X26px0pnfJxJgwuBiic5thXWKHmB/F1NeXYUOpRC0oDDZG7gab1XaYMxGkqYYLotH6On9wWjSoZaVtO/U5Jq53ypuB9Dkoyagr7w/pEUrH3f61eeZBYN4Wl6eSeOhqCx1kcHqly2t8D+FP+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=wB7TJ5hh; arc=none smtp.client-ip=185.246.85.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id CD6694E41735;
	Mon, 17 Nov 2025 17:00:33 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 64D26606B9;
	Mon, 17 Nov 2025 17:00:33 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 30FBE10371D6C;
	Mon, 17 Nov 2025 18:00:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1763398832; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=BTriyQZYYbnJqpQ9NHQXwg7JbzvLw55voRo8bIRkgF0=;
	b=wB7TJ5hhEtRLjauj1zMHEQ1cQIK27amC9ga1W11a70zOBJhLoHgrrUOOonOCkZ8/qD90iG
	wnP4xQS+yHVkG3j7Ee7wptzA86yYAVFqYxl3YOE4MMNmwannthlYdG/gXJfEjiM5zTBWi0
	X/Gg9qxS0liPgSejCEod9xs9E92pj2e4eAsShgj91ZskfgGa6A0EyfPdAgxPBdrE3EvErR
	A08/Ywfv9hIUV9xZvfuF22L3bupVTcnvQHmbza0NMhYjcRTREaAuf8Wj+J7Vg3IAtG3bCR
	PW/H25BH+0W+yKD2evuFmGEgEMBqrZlP80qMIc861C5djHzyOVfLiOt57NuXvg==
From: Gregory CLEMENT <gregory.clement@bootlin.com>
Date: Mon, 17 Nov 2025 18:00:16 +0100
Subject: [PATCH 3/3] mtd: physmap: Add support for RAM reserved memory
 regions
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251117-mtd-memregion-v1-3-7b35611c79a6@bootlin.com>
References: <20251117-mtd-memregion-v1-0-7b35611c79a6@bootlin.com>
In-Reply-To: <20251117-mtd-memregion-v1-0-7b35611c79a6@bootlin.com>
To: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, 
 Linus Walleij <linus.walleij@linaro.org>, 
 Miquel Raynal <miquel.raynal@bootlin.com>, 
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>, 
 =?utf-8?q?Beno=C3=AEt_Monin?= <benoit.monin@bootlin.com>, 
 =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mtd@lists.infradead.org, 
 Gregory CLEMENT <gregory.clement@bootlin.com>
X-Mailer: b4 0.14.3
X-Last-TLS-Session-Version: TLSv1.3

MTD fixed-partitions can now be exposed for reserved RAM regions, not
just ROM reg regions. This is achieved by using a memory-region
phandle to reference the reserved RAM region instead of the reg
property.

Based on the work of Muhammad Musa <muhammad.musa@intel.com>

Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
---
 drivers/mtd/maps/physmap-core.c | 56 ++++++++++++++++++++++++++++++++++-------
 1 file changed, 47 insertions(+), 9 deletions(-)

diff --git a/drivers/mtd/maps/physmap-core.c b/drivers/mtd/maps/physmap-core.c
index 2bd7a1af898c9..f084f6f34d611 100644
--- a/drivers/mtd/maps/physmap-core.c
+++ b/drivers/mtd/maps/physmap-core.c
@@ -39,6 +39,7 @@
 #include <linux/mtd/cfi_endian.h>
 #include <linux/io.h>
 #include <linux/of.h>
+#include <linux/of_reserved_mem.h>
 #include <linux/pm_runtime.h>
 #include <linux/gpio/consumer.h>
 
@@ -263,6 +264,14 @@ static const struct of_device_id of_flash_match[] = {
 		.type = "rom",
 		.compatible = "direct-mapped"
 	},
+	{
+		.compatible = "mtd-mem",
+		.data = "map_ram",
+	},
+	{
+		.compatible = "mtd-memro",
+		.data = "map_rom",
+	},
 	{ /* sentinel */ },
 };
 MODULE_DEVICE_TABLE(of, of_flash_match);
@@ -446,8 +455,9 @@ static int physmap_flash_pdata_init(struct platform_device *dev)
 static int physmap_flash_probe(struct platform_device *dev)
 {
 	struct physmap_flash_info *info;
-	int err = 0;
-	int i;
+	struct resource *res_array;
+	int err = 0, is_rsvd_mem = 0, nreg = 0;
+	int i, curr_reg;
 
 	if (!dev->dev.of_node && !dev_get_platdata(&dev->dev))
 		return -EINVAL;
@@ -459,9 +469,13 @@ static int physmap_flash_probe(struct platform_device *dev)
 	while (platform_get_resource(dev, IORESOURCE_MEM, info->nmaps))
 		info->nmaps++;
 
-	if (!info->nmaps)
-		return -ENODEV;
-
+	if (!info->nmaps) {
+		info->nmaps = of_reserved_mem_region_total_count(dev->dev.of_node);
+		if (info->nmaps > 0)
+			is_rsvd_mem = 1;
+		else
+			return -ENODEV;
+	}
 	info->maps = devm_kzalloc(&dev->dev,
 				  sizeof(*info->maps) * info->nmaps,
 				  GFP_KERNEL);
@@ -503,7 +517,23 @@ static int physmap_flash_probe(struct platform_device *dev)
 	for (i = 0; i < info->nmaps; i++) {
 		struct resource *res;
 
-		info->maps[i].virt = devm_platform_get_and_ioremap_resource(dev, i, &res);
+		if (is_rsvd_mem) {
+			if (nreg <= i) {
+				int cnt = of_reserved_mem_region_to_resource_array(&dev->dev,
+							   dev->dev.of_node, i, &res_array);
+				if (cnt < 0) {
+					err = cnt;
+					goto err_out;
+				}
+				nreg += cnt;
+				curr_reg = 0;
+			}
+			res = &res_array[curr_reg++];
+			info->maps[i].virt = devm_ioremap_resource(&dev->dev, res);
+		} else {
+			info->maps[i].virt = devm_platform_get_and_ioremap_resource(dev, i, &res);
+		}
+
 		if (IS_ERR(info->maps[i].virt)) {
 			err = PTR_ERR(info->maps[i].virt);
 			goto err_out;
@@ -519,9 +549,17 @@ static int physmap_flash_probe(struct platform_device *dev)
 			info->maps[i].phys = res->start;
 
 		info->win_order = fls64(resource_size(res)) - 1;
-		info->maps[i].size = BIT(info->win_order +
-					 (info->gpios ?
-					  info->gpios->ndescs : 0));
+		/* When using a memory region, the size is not necessarily a
+		 * power of 2, so win_order is not applicable. Since GPIOs are
+		 * unavailable in this context, directly using the region's size
+		 * is safe.
+		 */
+		if (is_rsvd_mem)
+			info->maps[i].size = resource_size(res);
+		else
+			info->maps[i].size = BIT(info->win_order +
+						 (info->gpios ?
+						  info->gpios->ndescs : 0));
 
 		info->maps[i].map_priv_1 = (unsigned long)dev;
 

-- 
2.51.0


