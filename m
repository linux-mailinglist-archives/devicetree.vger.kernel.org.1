Return-Path: <devicetree+bounces-238997-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BFC91C6065D
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 14:51:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4811F3BD296
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 13:50:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A4662FB630;
	Sat, 15 Nov 2025 13:49:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="Z2urmUtA"
X-Original-To: devicetree@vger.kernel.org
Received: from out-174.mta0.migadu.com (out-174.mta0.migadu.com [91.218.175.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F9EC2FB624
	for <devicetree@vger.kernel.org>; Sat, 15 Nov 2025 13:49:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763214599; cv=none; b=G/hWFGjn30L3xnapTduQcBAZvVe2hEKnbmtD/uXZU4g5auKGleUg342RmKTHrBZCwmiNMGGw/eHDcns3pLdWPHzrY3bfMMAUeVomGHgNJHsYdlslZKkx65bD6n5kolf6czA5wlS/mn/9Jh5puF0+maX/uTC8w8uOqObztcyWZac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763214599; c=relaxed/simple;
	bh=K/Q+XUVIKKsLqxQRg9fWMCwmkkmfKYaeE5QXe1gNLgA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Pa0FV1FgjW1k2mkNesU0pJzw4A793Y8iIXjiYbtWHGdtuZskthpMTq3b+7P9lW5H4JdPcPaMPRU+OZUTbf8YEIRjf+GolCdPsQvY2IgGq387cM1AWKpgp6rxmLlxrt4PLOU/9GmHJGEw1v/tqZYn36e1Eny6K7LkffbfgKEkDo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=Z2urmUtA; arc=none smtp.client-ip=91.218.175.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1763214595;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=5q3dAmTTGvh2D1uCjxlq4hOfI5Qlfk0JDHPgJGUEfUI=;
	b=Z2urmUtAbikyTUIdKpQ9l7gWq64hHiJbagbrB452bWnGar9uOK5cvtbkSvlqO8FaNTrM/d
	BraN3N0iPjS10oIp/qVCN7JjzDf/0OZhwszr2Rkdqy2saXhCfP0I/M4whlYeSH4hU8CdLM
	9t8k6D1yj5TsK3SoSKIdpQ7zMXvQuMM=
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
Subject: [PATCH v3 8/8] of/reserved_mem: Simplify the logic of __reserved_mem_alloc_size()
Date: Sat, 15 Nov 2025 21:47:53 +0800
Message-ID: <20251115134753.179931-9-yuntao.wang@linux.dev>
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
__reserved_mem_alloc_size()

Signed-off-by: Yuntao Wang <yuntao.wang@linux.dev>
---
 drivers/of/of_reserved_mem.c | 21 +++++++--------------
 1 file changed, 7 insertions(+), 14 deletions(-)

diff --git a/drivers/of/of_reserved_mem.c b/drivers/of/of_reserved_mem.c
index 0ceb096c17e6..5619ec917858 100644
--- a/drivers/of/of_reserved_mem.c
+++ b/drivers/of/of_reserved_mem.c
@@ -385,10 +385,9 @@ static int __init __reserved_mem_alloc_in_range(phys_addr_t size,
  */
 static int __init __reserved_mem_alloc_size(unsigned long node, const char *uname)
 {
-	int t_len = (dt_root_addr_cells + dt_root_size_cells) * sizeof(__be32);
 	phys_addr_t start = 0, end = 0;
 	phys_addr_t base = 0, align = 0, size;
-	int len;
+	int i, len;
 	const __be32 *prop;
 	bool nomap;
 	int ret;
@@ -422,19 +421,15 @@ static int __init __reserved_mem_alloc_size(unsigned long node, const char *unam
 	    && !nomap)
 		align = max_t(phys_addr_t, align, CMA_MIN_ALIGNMENT_BYTES);
 
-	prop = of_get_flat_dt_prop(node, "alloc-ranges", &len);
+	prop = of_flat_dt_get_addr_size_prop(node, "alloc-ranges", &len);
 	if (prop) {
+		for (i = 0; i < len; i++) {
+			u64 b, s;
 
-		if (len % t_len != 0) {
-			pr_err("invalid alloc-ranges property in '%s', skipping node.\n",
-			       uname);
-			return -EINVAL;
-		}
+			of_flat_dt_read_addr_size(prop, i, &b, &s);
 
-		while (len > 0) {
-			start = dt_mem_next_cell(dt_root_addr_cells, &prop);
-			end = start + dt_mem_next_cell(dt_root_size_cells,
-						       &prop);
+			start = b;
+			end = b + s;
 
 			base = 0;
 			ret = __reserved_mem_alloc_in_range(size, align,
@@ -445,9 +440,7 @@ static int __init __reserved_mem_alloc_size(unsigned long node, const char *unam
 					(unsigned long)(size / SZ_1M));
 				break;
 			}
-			len -= t_len;
 		}
-
 	} else {
 		ret = early_init_dt_alloc_reserved_memory_arch(size, align,
 							0, 0, nomap, &base);
-- 
2.51.0


