Return-Path: <devicetree+bounces-238991-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B3FCC60642
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 14:49:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 251A33BCFC1
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 13:49:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D12B2FB0AE;
	Sat, 15 Nov 2025 13:48:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="ZNvpvnih"
X-Original-To: devicetree@vger.kernel.org
Received: from out-186.mta0.migadu.com (out-186.mta0.migadu.com [91.218.175.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2D632F60CA
	for <devicetree@vger.kernel.org>; Sat, 15 Nov 2025 13:48:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.186
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763214537; cv=none; b=guok0B3KRGqZNVVeq6Ez4onyMAs3PAvxvqsqJny/vAB2ME2Vse/GCLELF8KH8UqfUSrNUaV+vE/R7aRujz72PnnOP0OVo30dwfg3Lop+MeKGxXj3zzdmBMhJQ042+YHAFcdJDCLuOsFQVivgmhdbqr4mNb5JyYySzlIH0KcMLFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763214537; c=relaxed/simple;
	bh=zsBvt9O2EDJa80tzC1ejES3SBfy8w+OS/3vuEC3oBHg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ZtfF+FGZUdcdJz7xXgKhG9FTnDBACCxtiZh1ERHZTLrgUHlz7OctxhjYTBTLqxepnZwMxByV3MQvVHET8RV8Z0MNr01cNAjx+ax2gT+7RmlofbxK1JeKOtgB9Je9k0UEb/Mspw5U8xMTBpItkctRIRjRv66eiF1qqAsWTnswfzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=ZNvpvnih; arc=none smtp.client-ip=91.218.175.186
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1763214533;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=oH0tQ+eSb0QZhrUtBfRlSZkaLI+9L0kcGFd01oyVOes=;
	b=ZNvpvnihFwnbftEkXMaa0UfJ35yCyZbMlt+giGM2fVMl0UCHIKcNIbVue+lqRKpP/GYRLQ
	7Nn+ETyMw8KaY7cR/ukQkONZBy6nsAVSZ6ahDxsgRTqU6/YVYJJ58/FdRxoO6EbdE9C5y1
	X//jRGD6QjM8W34DFgph1dXAsaMvoUk=
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
Subject: [PATCH v3 2/8] of/fdt: Fix the len check in early_init_dt_check_for_elfcorehdr()
Date: Sat, 15 Nov 2025 21:47:47 +0800
Message-ID: <20251115134753.179931-3-yuntao.wang@linux.dev>
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
is in cells (4 bytes per cell). Comparing them directly is incorrect.

Use a helper function to simplify the code and address this issue.

Fixes: f7e7ce93aac1 ("of: fdt: Add generic support for handling elf core headers property")
Fixes: e62aaeac426ab1dd ("arm64: kdump: provide /proc/vmcore file")
Signed-off-by: Yuntao Wang <yuntao.wang@linux.dev>
---
 drivers/of/fdt.c | 10 ++--------
 1 file changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index 0c18bdefbbee..b45f60dccd7c 100644
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
+	if (!of_flat_dt_get_addr_size(node, "linux,elfcorehdr",
+				      &elfcorehdr_addr, &elfcorehdr_size))
 		return;
 
-	elfcorehdr_addr = dt_mem_next_cell(dt_root_addr_cells, &prop);
-	elfcorehdr_size = dt_mem_next_cell(dt_root_size_cells, &prop);
-
 	pr_debug("elfcorehdr_start=0x%llx elfcorehdr_size=0x%llx\n",
 		 elfcorehdr_addr, elfcorehdr_size);
 }
-- 
2.51.0


