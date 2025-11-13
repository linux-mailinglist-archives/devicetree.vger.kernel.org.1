Return-Path: <devicetree+bounces-238207-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id AB7EEC58D29
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 17:45:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 667D24F3230
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 15:56:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 457C235295A;
	Thu, 13 Nov 2025 15:52:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="nCIKUM/4"
X-Original-To: devicetree@vger.kernel.org
Received: from out-177.mta1.migadu.com (out-177.mta1.migadu.com [95.215.58.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F0F81E9B12
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 15:52:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763049151; cv=none; b=ex4fp54BsBW7d5e7Z7QQhAW9QI71UCdxiXON1eB/NV4/G0PYku18VTvy/FPwo2pSQezDdFi+Vs05ypCh33IIdNHzwEHTlF6H7yOj490+Yf17UQtvmkTDebbh4UmjkMUSoIv+g1iSxuqDpJ7lrZFhR7pAyQjGLwtfrWtYDxhHG4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763049151; c=relaxed/simple;
	bh=5yoEAT3UKNpdNhJ3r2BvPW5KJ/MD7k++shVS+I3ry0k=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=DB2I7sUoS8jURT9KiQJ4oAWVdxoBNC6Z6zdvgPWVyVk4Zlo1DLH4U1GIygrmvMeuGKOPNctTYhs4MSBFstwzok9mtECGDfzpCF3o7n5wA/UlgRJY1Ejry5tNDqJ5S3TPbZ45yDIisEpCKUIw3XqjORPkPfkK/pjuVxj9+PZ80Ao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=nCIKUM/4; arc=none smtp.client-ip=95.215.58.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1763049147;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=XXQZDJE0Tzw/iE/HpyiouujjdObxwq13z1KP0WfIR7c=;
	b=nCIKUM/4z5pMIoug3+ihnpTDCQOs81uJm+nNiAGFNFoZ3pig3T6hR/4E23IOcNv2WjAb/p
	JLASHq+YMe8EdTxZrfQ3imabOUXBu84JfdtlNrjRTENKWBsnqH+c9A9vRZzQXn0OZ7woQO
	8g3cNXdd3+g7ooVkURaBT2npY5rJWYo=
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
Subject: [PATCH v2 2/7] of/fdt: Fix the len check in early_init_dt_check_for_elfcorehdr()
Date: Thu, 13 Nov 2025 23:50:59 +0800
Message-ID: <20251113155104.226617-3-yuntao.wang@linux.dev>
In-Reply-To: <20251113155104.226617-1-yuntao.wang@linux.dev>
References: <20251113155104.226617-1-yuntao.wang@linux.dev>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

The len value is in bytes, while `dt_root_addr_cells + dt_root_size_cells`
is in cells (4 bytes per cell). Comparing them directly is incorrect.

Use a helper function to simplify the code and address this issue.

Fixes: f7e7ce93aac1 ("of: fdt: Add generic support for handling elf core headers property")
Fixes: e62aaeac426ab1dd ("arm64: kdump: provide /proc/vmcore file")
Signed-off-by: Yuntao Wang <yuntao.wang@linux.dev>
---
 drivers/of/fdt.c | 10 ++--------
 1 file changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index 5e0eabc1449f..80b7236efdc6 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -853,21 +853,15 @@ static void __init early_init_dt_check_for_initrd(unsigned long node)
  */
 static void __init early_init_dt_check_for_elfcorehdr(unsigned long node)
 {
-	const __be32 *prop;
-	int len;
-
 	if (!IS_ENABLED(CONFIG_CRASH_DUMP))
 		return;
 
 	pr_debug("Looking for elfcorehdr property... ");
 
-	prop = of_get_flat_dt_prop(node, "linux,elfcorehdr", &len);
-	if (!prop || (len < (dt_root_addr_cells + dt_root_size_cells)))
+	if (!of_fdt_get_addr_size(node, "linux,elfcorehdr",
+	                          &elfcorehdr_addr, &elfcorehdr_size))
 		return;
 
-	elfcorehdr_addr = dt_mem_next_cell(dt_root_addr_cells, &prop);
-	elfcorehdr_size = dt_mem_next_cell(dt_root_size_cells, &prop);
-
 	pr_debug("elfcorehdr_start=0x%llx elfcorehdr_size=0x%llx\n",
 		 elfcorehdr_addr, elfcorehdr_size);
 }
-- 
2.51.0


