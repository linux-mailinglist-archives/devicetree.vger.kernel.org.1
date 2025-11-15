Return-Path: <devicetree+bounces-238994-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 733D3C6064E
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 14:50:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 0BF0E35FC02
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 13:49:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B2682FB0AE;
	Sat, 15 Nov 2025 13:49:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="Lt3M7JYb"
X-Original-To: devicetree@vger.kernel.org
Received: from out-189.mta0.migadu.com (out-189.mta0.migadu.com [91.218.175.189])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83C122FB968
	for <devicetree@vger.kernel.org>; Sat, 15 Nov 2025 13:49:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.189
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763214570; cv=none; b=njG+wBK+Js77KuD2bukAZIR9g8mIa10BS6UibXFCjcnYwdd8rPUGnAqmfiwS+piQzXpmLqiqtnNeGdTXLcxUSINyTLAvmLrWAqWpLnOL+FfICLOp3xAshvRa4iJB5zTkmrryWkLU8WmDtnTGQoMGL0tVGU3CvFDn7KvL8i/83oQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763214570; c=relaxed/simple;
	bh=fmpEB35pIYZLj0gJCg7yla2LFVzXeaAL5ZdlyABTiC8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=mWGQxvVvpORo2DzIOB+DFTDW6VtbVJPmqwrDTpt6WdfIXTvh816hGZis1+pxywEzNwbua8XO3jczjYPzyO2mRgVBsCvPLu+GDgSL/gJ0SupvwTtn2MQwGvA9geg3eZw4ma1SkhCGhA5H+JiYk7hMcz8/eDVLDckuoyJqTuvewbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=Lt3M7JYb; arc=none smtp.client-ip=91.218.175.189
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1763214564;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=GnCwOF+dI773dn/Glk11DJ97ct85y2yDFhHBMya8yK0=;
	b=Lt3M7JYbY+KOk1WCou+FAAgZEsu4P1TA3aNkNvI6owDvkZ/aWYWzIza1k9yUVWnfzErRWi
	qCJUMYDdb/GdiyLAOtcs3DOJ1hih0+CqKiTf42JFLj6YldLb25wq4eoL3Zd3Hjy4hQfVVI
	wQYfN59H/iYWGOW9ICvCuAVBqtKyA8U=
From: Yuntao Wang <yuntao.wang@linux.dev>
To: Rob Herring <robh@kernel.org>,
	Saravana Kannan <saravanak@google.com>
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
	Catalin Marinas <catalin.marinas@arm.com>,
	James Morse <james.morse@arm.com>,
	Baoquan He <bhe@redhat.com>,
	Zhen Lei <thunder.leizhen@huawei.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Geoff Levand <geoff@infradead.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Changyuan Lyu <changyuanl@google.com>,
	Alexander Graf <graf@amazon.com>,
	"Mike Rapoport (Microsoft)" <rppt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Yuntao Wang <yuntao.wang@linux.dev>
Subject: [PATCH v3 5/8] of/fdt: Simplify the logic of early_init_dt_scan_memory()
Date: Sat, 15 Nov 2025 21:47:50 +0800
Message-ID: <20251115134753.179931-6-yuntao.wang@linux.dev>
In-Reply-To: <20251115134753.179931-1-yuntao.wang@linux.dev>
References: <20251115134753.179931-1-yuntao.wang@linux.dev>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

Use the existing helper functions to simplify the logic of
early_init_dt_scan_memory()

Signed-off-by: Yuntao Wang <yuntao.wang@linux.dev>
---
 drivers/of/fdt.c | 16 +++++++---------
 1 file changed, 7 insertions(+), 9 deletions(-)

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index fdaee4906836..d378d4b4109f 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -1033,8 +1033,8 @@ int __init early_init_dt_scan_memory(void)
 
 	fdt_for_each_subnode(node, fdt, 0) {
 		const char *type = of_get_flat_dt_prop(node, "device_type", NULL);
-		const __be32 *reg, *endp;
-		int l;
+		const __be32 *reg;
+		int i, l;
 		bool hotpluggable;
 
 		/* We are scanning "memory" nodes only */
@@ -1044,23 +1044,21 @@ int __init early_init_dt_scan_memory(void)
 		if (!of_fdt_device_is_available(fdt, node))
 			continue;
 
-		reg = of_get_flat_dt_prop(node, "linux,usable-memory", &l);
+		reg = of_flat_dt_get_addr_size_prop(node, "linux,usable-memory", &l);
 		if (reg == NULL)
-			reg = of_get_flat_dt_prop(node, "reg", &l);
+			reg = of_flat_dt_get_addr_size_prop(node, "reg", &l);
 		if (reg == NULL)
 			continue;
 
-		endp = reg + (l / sizeof(__be32));
 		hotpluggable = of_get_flat_dt_prop(node, "hotpluggable", NULL);
 
-		pr_debug("memory scan node %s, reg size %d,\n",
+		pr_debug("memory scan node %s, reg {addr,size} entries %d,\n",
 			 fdt_get_name(fdt, node, NULL), l);
 
-		while ((endp - reg) >= (dt_root_addr_cells + dt_root_size_cells)) {
+		for (i = 0; i < l; i++) {
 			u64 base, size;
 
-			base = dt_mem_next_cell(dt_root_addr_cells, &reg);
-			size = dt_mem_next_cell(dt_root_size_cells, &reg);
+			of_flat_dt_read_addr_size(reg, i, &base, &size);
 
 			if (size == 0)
 				continue;
-- 
2.51.0


