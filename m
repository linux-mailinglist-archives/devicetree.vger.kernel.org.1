Return-Path: <devicetree+bounces-238993-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 0378BC6064B
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 14:50:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 6D6A835F3B2
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 13:49:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F9E12FC00D;
	Sat, 15 Nov 2025 13:49:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="OqTAVQGt"
X-Original-To: devicetree@vger.kernel.org
Received: from out-178.mta0.migadu.com (out-178.mta0.migadu.com [91.218.175.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71C402FB0B4
	for <devicetree@vger.kernel.org>; Sat, 15 Nov 2025 13:49:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763214558; cv=none; b=U2Q0t4wl5CfeW5mMVdFSXW/q3mBkYgWWE24ttldNCHmL5Hxjhgyl3leGwHnZhXcp1fpKueNq3smndM+hi4OPRQIAzHO1S3YWQubxNWtwYvY050UPPWko5w7VdIY9Fx94JmDA4cRedWS/SPQqgVsv7DOm8rqaJg7eMTnM+0UzoEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763214558; c=relaxed/simple;
	bh=5in2a1+BQQ4kLHywx8wo7VUF9UeVxlyRUQJjc5LMDhs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=lM9tioKOz5PDUSW6ig7F5k2IaZ4kQejtswPnyyuB3h/K2a7The2aamTgJaFg5I1PR616GHO6Y7Ez/IwrkgQ8sAaq/qdF8rJIJfGu51DiWcCwitWUEoJXwMnqBHwq2ESEI7g6Eit8UQYBtUSoTIt4tZApKUDnTESTAidW5ppiWYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=OqTAVQGt; arc=none smtp.client-ip=91.218.175.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1763214553;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=TqUrIKbmF5iQpt0Si3WZ6WoYb7H/IbcxUksZIbS12do=;
	b=OqTAVQGtYCdJqslk5woPrTyFggkVwtU4FWw6X4Mm3kiPmNPDxCGekzc7pfObWTsvWKxD19
	b7OONUjg6WL/2W8Qd96xrhN5twtGIKHo3uv4gk0gFvfGBFIsOwWEPFxB4U3PHOlyGzzDLy
	drIpq79Z2lP902S/w5Apg77Vr2FvHXc=
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
Subject: [PATCH v3 4/8] of/fdt: Fix incorrect use of dt_root_addr_cells in early_init_dt_check_kho()
Date: Sat, 15 Nov 2025 21:47:49 +0800
Message-ID: <20251115134753.179931-5-yuntao.wang@linux.dev>
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

When reading the fdt_size value, the argument passed to dt_mem_next_cell()
is dt_root_addr_cells, but it should be dt_root_size_cells.

The same issue occurs when reading the scratch_size value.

Use a helper function to simplify the code and fix these issues.

Fixes: 274cdcb1c004 ("arm64: add KHO support")
Signed-off-by: Yuntao Wang <yuntao.wang@linux.dev>
---
 drivers/of/fdt.c | 16 ++++------------
 1 file changed, 4 insertions(+), 12 deletions(-)

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index ea37ba694bcd..fdaee4906836 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -922,26 +922,18 @@ static void __init early_init_dt_check_kho(void)
 {
 	unsigned long node = chosen_node_offset;
 	u64 fdt_start, fdt_size, scratch_start, scratch_size;
-	const __be32 *p;
-	int l;
 
 	if (!IS_ENABLED(CONFIG_KEXEC_HANDOVER) || (long)node < 0)
 		return;
 
-	p = of_get_flat_dt_prop(node, "linux,kho-fdt", &l);
-	if (l != (dt_root_addr_cells + dt_root_size_cells) * sizeof(__be32))
+	if (!of_flat_dt_get_addr_size(node, "linux,kho-fdt",
+				      &fdt_start, &fdt_size))
 		return;
 
-	fdt_start = dt_mem_next_cell(dt_root_addr_cells, &p);
-	fdt_size = dt_mem_next_cell(dt_root_addr_cells, &p);
-
-	p = of_get_flat_dt_prop(node, "linux,kho-scratch", &l);
-	if (l != (dt_root_addr_cells + dt_root_size_cells) * sizeof(__be32))
+	if (!of_flat_dt_get_addr_size(node, "linux,kho-scratch",
+				      &scratch_start, &scratch_size))
 		return;
 
-	scratch_start = dt_mem_next_cell(dt_root_addr_cells, &p);
-	scratch_size = dt_mem_next_cell(dt_root_addr_cells, &p);
-
 	kho_populate(fdt_start, fdt_size, scratch_start, scratch_size);
 }
 
-- 
2.51.0


