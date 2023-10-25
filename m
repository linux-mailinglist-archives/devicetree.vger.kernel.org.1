Return-Path: <devicetree+bounces-11964-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 182797D73A7
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 20:56:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 65214B21233
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 18:56:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBA8330F98;
	Wed, 25 Oct 2023 18:56:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="If+kDKHe"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F35D62C874
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 18:56:49 +0000 (UTC)
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9718018A
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 11:56:48 -0700 (PDT)
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id E5F843FD45
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 18:56:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1698260206;
	bh=72yTSynUrDUHeNGfbDrBCEgB1J8riTYEUtHwwC8rPyQ=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Cc:Content-Type;
	b=If+kDKHeuT2EMsw92xqfmlqXDH3ramsZx0OPNFo05CzPW6IzPJXEgCM9sqx28lSet
	 iO/k+Ed6G8bYm24NN9bCSmPCKB90vXyjsUewYsZET2bIfnPL1C7dyKPUCYh/qsOJQI
	 SGqWhbY6wiSTH8A0JeQ0L7yK7xsDlFLCuJ3+eHTVkOpZI2bLp5Qwi6noWjYlZw7Uic
	 X0T3HlHZmN4ds6obzGV0kVkXRaof/mnXeUiIpbm9JeywgNEtvcJE4BvzvifW9KWRSK
	 qHwddJUubiP4KK9FC+GAN/g7v7bphg8b2xhrKXwYj5MQ2oXbwH/qarlI00hMv04Xhb
	 ux4UWtt4U7GLA==
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-66cffe51b07so974946d6.3
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 11:56:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698260204; x=1698865004;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=72yTSynUrDUHeNGfbDrBCEgB1J8riTYEUtHwwC8rPyQ=;
        b=cJJ9mZ3/iLD/R9ywMw29RTUc/SVVkFd/lFvPrvG925ikMd2pykTVen6AEoaXgTBCYN
         2r39omdiPlTlVfouiPHfxAlkiRxyLonG5oP4PzSuCCjg/tTOSyMRk7L+SCx88QCuAJq5
         QdsqG2NgRLSMfCECBNPoUbCAsRspue+rRNpwsGkEqrENaSapUyIB4Hiuh0WJKiwVUFP8
         N8Y60P45G83EOozyKhAn5pbrBHaqd21rrV46L0d8s9F7NFn3uUwnTZJfR93tKHr46ptE
         AMmh5n9sQqg0WQww1KfcyIq7bO9DBPsAp+IGIPe8aP7WneHVFmERwA0u2B5yhjEzv7XL
         etpg==
X-Gm-Message-State: AOJu0Ywmp0M7zRbR/aoBUfAeNexi01kSTNzpXTBSOyfKX3GrOckklDrb
	eSOfzdpYb2JLrhx81yTNBU8JI7H+6fE137ri/2ZWb00lPNWkFDULVuCdX59usTn89huHNr7oiBi
	BDYscJOnzAEL6/sj2OfYEP5HrPil4NqbxFh8qyYzWC6MYnhyFIFSDI4o=
X-Received: by 2002:a05:6214:500a:b0:66d:1ff3:31ed with SMTP id jo10-20020a056214500a00b0066d1ff331edmr18230019qvb.52.1698260204378;
        Wed, 25 Oct 2023 11:56:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEqrp3yXMtVysnlSo/32Nx/YVY6NylQz5OO3JSRKcqHPaoXNSn7AoCmimrkLCz7k8X5K09lEujMXAozvhm6Dhg=
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Received: by 2002:a05:6214:500a:b0:66d:1ff3:31ed with SMTP id
 jo10-20020a056214500a00b0066d1ff331edmr18230005qvb.52.1698260204165; Wed, 25
 Oct 2023 11:56:44 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 25 Oct 2023 11:56:43 -0700
From: emil.renner.berthing@canonical.com
Date: Wed, 25 Oct 2023 11:56:43 -0700
Message-ID: <CAJM55Z8XPo=NfzGcu0UVOb2pwGhkuL6nx+Mae7eLy4EDN0=cAw@mail.gmail.com>
Subject: [PATCH 4/4] soc: sifive: ccache: Support cache management operations
To: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Cc: Conor Dooley <conor@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Paul Walmsley <paul.walmsley@sifive.com>, 
	Emil Renner Berthing <emil.renner.berthing@canonical.com>
Content-Type: text/plain; charset="UTF-8"

This cache controller also supports flushing cache lines by writing
their address to a register. This can be used for cache management on
SoCs with non-coherent DMAs that predate the RISC-V Zicbom extension
such as the StarFive JH7100 SoC.

Signed-off-by: Emil Renner Berthing <kernel@esmil.dk>
---
 drivers/soc/sifive/sifive_ccache.c | 45 +++++++++++++++++++++++++++++-
 1 file changed, 44 insertions(+), 1 deletion(-)

diff --git a/drivers/soc/sifive/sifive_ccache.c
b/drivers/soc/sifive/sifive_ccache.c
index 676468c35859..9bf94c22cad9 100644
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
@@ -125,6 +132,34 @@ int
unregister_sifive_ccache_error_notifier(struct notifier_block *nb)
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
@@ -258,6 +293,14 @@ static int __init sifive_ccache_init(void)
 	}
 	of_node_put(np);

+#ifdef CONFIG_RISCV_NONSTANDARD_CACHE_OPS
+	if (of_property_read_bool(np, "sifive,cache-ops")) {
+		riscv_cbom_block_size = SIFIVE_CCACHE_LINE_SIZE;
+		riscv_noncoherent_supported();
+		riscv_noncoherent_register_cache_ops(&ccache_mgmt_ops);
+	}
+#endif
+
 	ccache_config_read();

 	ccache_cache_ops.get_priv_group = ccache_get_priv_group;
@@ -278,4 +321,4 @@ static int __init sifive_ccache_init(void)
 	return rc;
 }

-device_initcall(sifive_ccache_init);
+arch_initcall(sifive_ccache_init);
-- 
2.40.1

