Return-Path: <devicetree+bounces-238995-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 43F29C6063F
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 14:49:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id A64824E3C84
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 13:49:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 547332FB610;
	Sat, 15 Nov 2025 13:49:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="PsuXtbkI"
X-Original-To: devicetree@vger.kernel.org
Received: from out-181.mta0.migadu.com (out-181.mta0.migadu.com [91.218.175.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBCA82FB0B4
	for <devicetree@vger.kernel.org>; Sat, 15 Nov 2025 13:49:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763214579; cv=none; b=iQRbjXZCJHQaMY5b7dSELf4QFikycECAoePJ5Vct1mWG5DbNtcLXzaTLRIV4HLBJdpbggjIUhXWHsFtWMF7pKzODYIHunHfxU4xVC1l04C8JNgKPjAFKR0G1vGLECbdg0IvIOnKclFutT7LUcSP/MSnLlFvbEoDJXe2gmFUOZGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763214579; c=relaxed/simple;
	bh=2/gVDE54Ehb2rf84zXfmPE7yjVeewxAOW2mPPmmU+cg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=cMXVAlaRbbv6Wp5ytmIzmIC9gIAPV7XOcAC1kNi9869Hfo429r22Eh73qk9ORWkNWKUHNQEsKdANhchDmAPgUTxk8nILu+mlhFa7NifDtLQAaAJnYfUEndwUhHNImbdtZuB3pCIQfsmCMmkkVSbiA62wTQfWsIJuBkog9dxCH2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=PsuXtbkI; arc=none smtp.client-ip=91.218.175.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1763214576;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=K4rABBY+wyZvCt1Mj6ISq9EmRtgABT8u7vKdxDl2W9c=;
	b=PsuXtbkIK6V2o6EZaq3WYfcEE+7z9DaECsrCCmWvCLF00OY+HUrL/1Yyosrpvkcc2nX2pR
	Y6wZOYeMs5V40wUbF9mtbPM7hx1sAKSFQwAOUcGBJG7UgsOnf7e40AICRfi30uSz5otdOO
	+RYZoRiRQ2D/O48CHEYLZbfDMyAw8FE=
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
Subject: [PATCH v3 6/8] of/reserved_mem: Simplify the logic of __reserved_mem_reserve_reg()
Date: Sat, 15 Nov 2025 21:47:51 +0800
Message-ID: <20251115134753.179931-7-yuntao.wang@linux.dev>
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
__reserved_mem_reserve_reg()

Signed-off-by: Yuntao Wang <yuntao.wang@linux.dev>
---
 drivers/of/of_reserved_mem.c | 23 +++++++++--------------
 1 file changed, 9 insertions(+), 14 deletions(-)

diff --git a/drivers/of/of_reserved_mem.c b/drivers/of/of_reserved_mem.c
index 2e9ea751ed2d..2f1e4450785e 100644
--- a/drivers/of/of_reserved_mem.c
+++ b/drivers/of/of_reserved_mem.c
@@ -154,27 +154,24 @@ static int __init early_init_dt_reserve_memory(phys_addr_t base,
 static int __init __reserved_mem_reserve_reg(unsigned long node,
 					     const char *uname)
 {
-	int t_len = (dt_root_addr_cells + dt_root_size_cells) * sizeof(__be32);
 	phys_addr_t base, size;
-	int len;
+	int i, len;
 	const __be32 *prop;
 	bool nomap;
 
-	prop = of_get_flat_dt_prop(node, "reg", &len);
+	prop = of_flat_dt_get_addr_size_prop(node, "reg", &len);
 	if (!prop)
 		return -ENOENT;
 
-	if (len && len % t_len != 0) {
-		pr_err("Reserved memory: invalid reg property in '%s', skipping node.\n",
-		       uname);
-		return -EINVAL;
-	}
-
 	nomap = of_get_flat_dt_prop(node, "no-map", NULL) != NULL;
 
-	while (len >= t_len) {
-		base = dt_mem_next_cell(dt_root_addr_cells, &prop);
-		size = dt_mem_next_cell(dt_root_size_cells, &prop);
+	for (i = 0; i < len; i++) {
+		u64 b, s;
+
+		of_flat_dt_read_addr_size(prop, i, &b, &s);
+
+		base = b;
+		size = s;
 
 		if (size && early_init_dt_reserve_memory(base, size, nomap) == 0) {
 			/* Architecture specific contiguous memory fixup. */
@@ -187,8 +184,6 @@ static int __init __reserved_mem_reserve_reg(unsigned long node,
 			pr_err("Reserved memory: failed to reserve memory for node '%s': base %pa, size %lu MiB\n",
 			       uname, &base, (unsigned long)(size / SZ_1M));
 		}
-
-		len -= t_len;
 	}
 	return 0;
 }
-- 
2.51.0


