Return-Path: <devicetree+bounces-238992-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id ECD50C60648
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 14:50:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8FE073BA46D
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 13:49:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B34C2FB967;
	Sat, 15 Nov 2025 13:49:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="jGf/YTvc"
X-Original-To: devicetree@vger.kernel.org
Received: from out-183.mta0.migadu.com (out-183.mta0.migadu.com [91.218.175.183])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B022877FA
	for <devicetree@vger.kernel.org>; Sat, 15 Nov 2025 13:49:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.183
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763214549; cv=none; b=VvoqNNe/ZG/ib+KAJdoASz21k8prJVl+TAGlYZX0xlEdoYclAlhZvqJVZabW2zESop04W/1WH5z9l2qLPBmYRcX7eCObr25auqjvTSNSMBZY8VMSXBIo4vpZdxdlRIfi3FlvelsHNX8R0GRG6y2/RW9vB4mCEZGAot5H+b58UiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763214549; c=relaxed/simple;
	bh=ZZ/upw8nKT7v3jsEgzyAA289KSD3Fq5t653Jcf0SpvM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=H7IEIZ5ufsNZFEiwNdwuPPBVwJ6g+DGxrkrbcLEBaf0kQoUwozEQMUbQLZbOZZCz7akHATQBs99Ci4PVfMxIzjO3NsPHIZHEa0G03gbkLHCsIMoLtsxbZOihkACjc/HAinBIwONl1ZDiZqVf3ZW+DE8WnALmI2oALm0EH1zaCEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=jGf/YTvc; arc=none smtp.client-ip=91.218.175.183
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1763214544;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=MY3v9cZNblUfD57tnTGju+AQf3Z40adow3kyHkwe/ps=;
	b=jGf/YTvccMn+mePMIqYv83allCJeKFRkEl95R/ptEoo346OizqpUg/IYbFQ4ykZr15UqCQ
	ZgcqPNY7AlaexiblLDEJc/ZUFrQJuC40h0pXaMuvbcq0wTL78nrIeNPGNIIEuBeLUQ1Z+k
	zF4v/CEHn/NU9jlbu9cXMa5yu0+5oME=
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
Subject: [PATCH v3 3/8] of/fdt: Fix the len check in early_init_dt_check_for_usable_mem_range()
Date: Sat, 15 Nov 2025 21:47:48 +0800
Message-ID: <20251115134753.179931-4-yuntao.wang@linux.dev>
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

The len value is in bytes, while `dt_root_addr_cells + dt_root_size_cells`
is in cells (4 bytes per cell). Modulo calculation between them is
incorrect, the units must be converted first.

Use helper functions to simplify the code and fix this issue.

Fixes: fb319e77a0e7 ("of: fdt: Add memory for devices by DT property "linux,usable-memory-range"")
Fixes: 2af2b50acf9b9c38 ("of: fdt: Add generic support for handling usable memory range property")
Fixes: 8f579b1c4e347b23 ("arm64: limit memory regions based on DT property, usable-memory-range")
Signed-off-by: Yuntao Wang <yuntao.wang@linux.dev>
---
 drivers/of/fdt.c | 18 +++++++++++-------
 1 file changed, 11 insertions(+), 7 deletions(-)

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index b45f60dccd7c..ea37ba694bcd 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -884,8 +884,9 @@ static unsigned long chosen_node_offset = -FDT_ERR_NOTFOUND;
 void __init early_init_dt_check_for_usable_mem_range(void)
 {
 	struct memblock_region rgn[MAX_USABLE_RANGES] = {0};
-	const __be32 *prop, *endp;
+	const __be32 *prop;
 	int len, i;
+	u64 base, size;
 	unsigned long node = chosen_node_offset;
 
 	if ((long)node < 0)
@@ -893,14 +894,17 @@ void __init early_init_dt_check_for_usable_mem_range(void)
 
 	pr_debug("Looking for usable-memory-range property... ");
 
-	prop = of_get_flat_dt_prop(node, "linux,usable-memory-range", &len);
-	if (!prop || (len % (dt_root_addr_cells + dt_root_size_cells)))
+	prop = of_flat_dt_get_addr_size_prop(node, "linux,usable-memory-range",
+					     &len);
+	if (!prop)
 		return;
 
-	endp = prop + (len / sizeof(__be32));
-	for (i = 0; i < MAX_USABLE_RANGES && prop < endp; i++) {
-		rgn[i].base = dt_mem_next_cell(dt_root_addr_cells, &prop);
-		rgn[i].size = dt_mem_next_cell(dt_root_size_cells, &prop);
+	len = min(len, MAX_USABLE_RANGES);
+
+	for (i = 0; i < len; i++) {
+		of_flat_dt_read_addr_size(prop, i, &base, &size);
+		rgn[i].base = base;
+		rgn[i].size = size;
 
 		pr_debug("cap_mem_regions[%d]: base=%pa, size=%pa\n",
 			 i, &rgn[i].base, &rgn[i].size);
-- 
2.51.0


