Return-Path: <devicetree+bounces-13212-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E9417DCED9
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 15:15:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A20D91C20CBF
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 14:15:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB4791DFC6;
	Tue, 31 Oct 2023 14:15:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="Rgrjw9Ii"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1AFD1A5AF
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 14:15:03 +0000 (UTC)
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ED637101
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 07:15:00 -0700 (PDT)
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com [209.85.218.70])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 069E940943
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 14:14:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1698761694;
	bh=XnEjgTb1m78EWwQDGRYEFN4m8CDZaDkjNTK8j9cPE/A=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version;
	b=Rgrjw9IiYaHYDTk9226zOhujfDGR7sJCw+y740VZ/uqpFzADb3RV+FQ3IzCROwrPk
	 jUEDcFNAU53KqB4g0tQsnPWReUk0WsWHH64x2h37erY+3XGVrMa4q/D4HKDwEknLvx
	 LXrDYkP3Jf9dRLpXb2z37SEUmmo84nbEPgNmHjAfrEmt/FxYotnsnjKDFMZLxXQIPh
	 O/j3zN6OqiUp+zov8/7i4rtw7QFT4w9idZEBoWFx8deOdCXzLGyz6EQvCe4ELF83iz
	 S/2A5juBoAY/S5zj/6q8I/gPXum6+L1hjiyrGTbpOIMXuaamsP6jZVI5KEEyLG8WdJ
	 QtgWKE6fh5SfA==
Received: by mail-ej1-f70.google.com with SMTP id a640c23a62f3a-9d28dd67464so190841866b.0
        for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 07:14:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698761690; x=1699366490;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XnEjgTb1m78EWwQDGRYEFN4m8CDZaDkjNTK8j9cPE/A=;
        b=Va8g6hCjpzk8eAvY0QmwrOHIAUd6x+wsaiYbLz6STEpkgr/4sqgVLJt6mjDmm4eWSm
         tQravFmMuGREaM1ia8nYTkM3XhZeysD3CFza7dGWF27v2TeqdWiCt56viFtVUyQwVLkX
         fBuqDrH6YJnJ7G2CamKOVsx4jkIczGvhLC7zSkQDdMbhqjXnsvow8vU/+Syz2bMjg0az
         dUM7g40wqeaRZ+bSbsRqwuKaygkPwpMjdi6dUQqC9vheQIRK1CHeGeLJ9upIJeatKByF
         tsDYtD/J89Etmwd7TuQ4nLjZsoh+aSf39Lbs12A4FbmOTwHdNUgJur0PX6L4y7zM3obm
         JImA==
X-Gm-Message-State: AOJu0YzDImrAZsxlDnmzZY5qY5JGxQy2KaUcLs5NDTzhpoppXZwH3CDd
	Wom04vqTPD59IEhStLSJbY2VwkAXPnJ4DhENXSBhLbKdMmETdlN6JNMhpWfa8Xlo96mBhfj7ooV
	oUyT9KYxf3uyiStGm6ZFJdxTFdlDZXtrq/HJJ6lo=
X-Received: by 2002:a17:907:3184:b0:9c5:844f:a7f4 with SMTP id xe4-20020a170907318400b009c5844fa7f4mr10802107ejb.35.1698761690438;
        Tue, 31 Oct 2023 07:14:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEfXx1RuCQtYqjPRoFL8zYiifdddYy2acqzq59Ogj9Q205dxFWWWX8UcYcvHsioLJG5MGwW2w==
X-Received: by 2002:a17:907:3184:b0:9c5:844f:a7f4 with SMTP id xe4-20020a170907318400b009c5844fa7f4mr10802092ejb.35.1698761690172;
        Tue, 31 Oct 2023 07:14:50 -0700 (PDT)
Received: from stitch.. ([2a02:aa7:4003:190e:bd47:7b6e:876:4bdc])
        by smtp.gmail.com with ESMTPSA id p5-20020a1709061b4500b009d23e00a90esm1037395ejg.24.2023.10.31.07.14.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 Oct 2023 07:14:49 -0700 (PDT)
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
To: linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Emil Renner Berthing <kernel@esmil.dk>,
	Conor Dooley <conor@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Subject: [PATCH v2 2/2] soc: sifive: ccache: Add StarFive JH7100 support
Date: Tue, 31 Oct 2023 15:14:44 +0100
Message-Id: <20231031141444.53426-3-emil.renner.berthing@canonical.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231031141444.53426-1-emil.renner.berthing@canonical.com>
References: <20231031141444.53426-1-emil.renner.berthing@canonical.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Emil Renner Berthing <kernel@esmil.dk>

This adds support for the StarFive JH7100 SoC which also features this
SiFive cache controller.

The JH7100 has non-coherent DMAs but predate the standard RISC-V Zicbom
exension, so instead we need to use this cache controller for
non-standard cache management operations.

Unfortunately the interrupt for uncorrected data is broken on the JH7100
and fires continuously, so add a quirk to not register a handler for it.

Signed-off-by: Emil Renner Berthing <kernel@esmil.dk>
---
 drivers/soc/sifive/sifive_ccache.c | 62 +++++++++++++++++++++++++++++-
 1 file changed, 60 insertions(+), 2 deletions(-)

diff --git a/drivers/soc/sifive/sifive_ccache.c b/drivers/soc/sifive/sifive_ccache.c
index 3684f5b40a80..0da3d1bd0866 100644
--- a/drivers/soc/sifive/sifive_ccache.c
+++ b/drivers/soc/sifive/sifive_ccache.c
@@ -8,13 +8,16 @@
 
 #define pr_fmt(fmt) "CCACHE: " fmt
 
+#include <linux/align.h>
 #include <linux/debugfs.h>
 #include <linux/interrupt.h>
 #include <linux/of_irq.h>
 #include <linux/of_address.h>
 #include <linux/device.h>
 #include <linux/bitfield.h>
+#include <asm/cacheflush.h>
 #include <asm/cacheinfo.h>
+#include <asm/dma-noncoherent.h>
 #include <soc/sifive/sifive_ccache.h>
 
 #define SIFIVE_CCACHE_DIRECCFIX_LOW 0x100
@@ -39,10 +42,14 @@
 #define SIFIVE_CCACHE_CONFIG_SETS_MASK GENMASK_ULL(23, 16)
 #define SIFIVE_CCACHE_CONFIG_BLKS_MASK GENMASK_ULL(31, 24)
 
+#define SIFIVE_CCACHE_FLUSH64 0x200
+#define SIFIVE_CCACHE_FLUSH32 0x240
+
 #define SIFIVE_CCACHE_WAYENABLE 0x08
 #define SIFIVE_CCACHE_ECCINJECTERR 0x40
 
 #define SIFIVE_CCACHE_MAX_ECCINTR 4
+#define SIFIVE_CCACHE_LINE_SIZE 64
 
 static void __iomem *ccache_base;
 static int g_irq[SIFIVE_CCACHE_MAX_ECCINTR];
@@ -56,6 +63,11 @@ enum {
 	DIR_UNCORR,
 };
 
+enum {
+	QUIRK_NONSTANDARD_CACHE_OPS	= BIT(0),
+	QUIRK_BROKEN_DATA_UNCORR	= BIT(1),
+};
+
 #ifdef CONFIG_DEBUG_FS
 static struct dentry *sifive_test;
 
@@ -106,6 +118,8 @@ static void ccache_config_read(void)
 static const struct of_device_id sifive_ccache_ids[] = {
 	{ .compatible = "sifive,fu540-c000-ccache" },
 	{ .compatible = "sifive,fu740-c000-ccache" },
+	{ .compatible = "starfive,jh7100-ccache",
+	  .data = (void *)(QUIRK_NONSTANDARD_CACHE_OPS | QUIRK_BROKEN_DATA_UNCORR) },
 	{ .compatible = "sifive,ccache0" },
 	{ /* end of table */ }
 };
@@ -124,6 +138,34 @@ int unregister_sifive_ccache_error_notifier(struct notifier_block *nb)
 }
 EXPORT_SYMBOL_GPL(unregister_sifive_ccache_error_notifier);
 
+#ifdef CONFIG_RISCV_NONSTANDARD_CACHE_OPS
+static void ccache_flush_range(phys_addr_t start, size_t len)
+{
+	phys_addr_t end = start + len;
+	phys_addr_t line;
+
+	if (!len)
+		return;
+
+	mb();
+	for (line = ALIGN_DOWN(start, SIFIVE_CCACHE_LINE_SIZE); line < end;
+			line += SIFIVE_CCACHE_LINE_SIZE) {
+#ifdef CONFIG_32BIT
+		writel(line >> 4, ccache_base + SIFIVE_CCACHE_FLUSH32);
+#else
+		writeq(line, ccache_base + SIFIVE_CCACHE_FLUSH64);
+#endif
+		mb();
+	}
+}
+
+static const struct riscv_nonstd_cache_ops ccache_mgmt_ops __initdata = {
+	.wback = &ccache_flush_range,
+	.inv = &ccache_flush_range,
+	.wback_inv = &ccache_flush_range,
+};
+#endif /* CONFIG_RISCV_NONSTANDARD_CACHE_OPS */
+
 static int ccache_largest_wayenabled(void)
 {
 	return readl(ccache_base + SIFIVE_CCACHE_WAYENABLE) & 0xFF;
@@ -210,11 +252,15 @@ static int __init sifive_ccache_init(void)
 	struct device_node *np;
 	struct resource res;
 	int i, rc, intr_num;
+	const struct of_device_id *match;
+	unsigned long quirks;
 
-	np = of_find_matching_node(NULL, sifive_ccache_ids);
+	np = of_find_matching_node_and_match(NULL, sifive_ccache_ids, &match);
 	if (!np)
 		return -ENODEV;
 
+	quirks = (uintptr_t)match->data;
+
 	if (of_address_to_resource(np, 0, &res)) {
 		rc = -ENODEV;
 		goto err_node_put;
@@ -240,6 +286,10 @@ static int __init sifive_ccache_init(void)
 
 	for (i = 0; i < intr_num; i++) {
 		g_irq[i] = irq_of_parse_and_map(np, i);
+
+		if (i == DATA_UNCORR && (quirks & QUIRK_BROKEN_DATA_UNCORR))
+			continue;
+
 		rc = request_irq(g_irq[i], ccache_int_handler, 0, "ccache_ecc",
 				 NULL);
 		if (rc) {
@@ -249,6 +299,14 @@ static int __init sifive_ccache_init(void)
 	}
 	of_node_put(np);
 
+#ifdef CONFIG_RISCV_NONSTANDARD_CACHE_OPS
+	if (quirks & QUIRK_NONSTANDARD_CACHE_OPS) {
+		riscv_cbom_block_size = SIFIVE_CCACHE_LINE_SIZE;
+		riscv_noncoherent_supported();
+		riscv_noncoherent_register_cache_ops(&ccache_mgmt_ops);
+	}
+#endif
+
 	ccache_config_read();
 
 	ccache_cache_ops.get_priv_group = ccache_get_priv_group;
@@ -269,4 +327,4 @@ static int __init sifive_ccache_init(void)
 	return rc;
 }
 
-device_initcall(sifive_ccache_init);
+arch_initcall(sifive_ccache_init);
-- 
2.40.1


