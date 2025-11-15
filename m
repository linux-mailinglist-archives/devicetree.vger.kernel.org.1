Return-Path: <devicetree+bounces-238990-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E486C6062D
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 14:49:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 007193BA6F3
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 13:48:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3BB602F9985;
	Sat, 15 Nov 2025 13:48:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="o/xkQoBp"
X-Original-To: devicetree@vger.kernel.org
Received: from out-181.mta0.migadu.com (out-181.mta0.migadu.com [91.218.175.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E464222582
	for <devicetree@vger.kernel.org>; Sat, 15 Nov 2025 13:48:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763214529; cv=none; b=U0s4OGg3DauTp5JhmmKHSBnl4X0uLwreuOwXwSY5ttkxCkeQUBoYMXz+mR0UiwcROi9BTeYPFOVj9vy49/I0nsK41MyhitKnBJtgGPVHS5zaKkcPEVKPFvH9bKRG/pEDeUYrj3UZz70Nssn+vq3G6NTv3uywK3QLynS+gBFm5IU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763214529; c=relaxed/simple;
	bh=jpYSKrwVd5Tft9gSSGXg8vERac336kKtjF7nhE6K2N8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=uhiEO+HTRBtETmDIW2dZmQdULBqKoERU9Elx43rYUfJt4itdF6Gt64K4MN9WVDJHwvaEwSw/zhE7NO/jU+pprny5VSPx5PHGOD4attbVCgB49MsSvCDRt30LIP5CtdtsO6t41uO2UyIzHbzr8fefQcLFJW5M57PT4k1mRBhKPRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=o/xkQoBp; arc=none smtp.client-ip=91.218.175.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1763214524;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Mrfry8ZHlu6ltZbBTJZY2vFWEIq98NIOgqfig9bcFoE=;
	b=o/xkQoBpqX9aVp/LZ+zz/1GUxWAb70aMT2e/E6etJXNTtj6rT/oW39+q+9BNEf+2HoQ84C
	QkoK7JiDooH+y0mBP1YqOqAKgEuwdm7Y2P+E3zfLwymLynMsJcwIJ7Ot45PebHgI+8Sx32
	UOtvTTMlR+Taj3NOZQCyy96ja+Tq+/A=
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
Subject: [PATCH v3 1/8] of/fdt: Consolidate duplicate code into helper functions
Date: Sat, 15 Nov 2025 21:47:46 +0800
Message-ID: <20251115134753.179931-2-yuntao.wang@linux.dev>
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

Currently, there are many pieces of nearly identical code scattered across
different places. Consolidate the duplicate code into helper functions to
improve maintainability and reduce the likelihood of errors.

Signed-off-by: Yuntao Wang <yuntao.wang@linux.dev>
---
 drivers/of/fdt.c       | 41 +++++++++++++++++++++++++++++++++++++++++
 include/linux/of_fdt.h |  9 +++++++++
 2 files changed, 50 insertions(+)

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index 0edd639898a6..0c18bdefbbee 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -625,6 +625,47 @@ const void *__init of_get_flat_dt_prop(unsigned long node, const char *name,
 	return fdt_getprop(initial_boot_params, node, name, size);
 }
 
+const __be32 *__init of_flat_dt_get_addr_size_prop(unsigned long node,
+						   const char *name,
+						   int *entries)
+{
+	const __be32 *prop;
+	int len, elen = (dt_root_addr_cells + dt_root_size_cells) * sizeof(__be32);
+
+	prop = of_get_flat_dt_prop(node, name, &len);
+	if (!prop || len % elen) {
+		*entries = 0;
+		return NULL;
+	}
+
+	*entries = len / elen;
+	return prop;
+}
+
+bool __init of_flat_dt_get_addr_size(unsigned long node, const char *name,
+				     u64 *addr, u64 *size)
+{
+	const __be32 *prop;
+	int entries;
+
+	prop = of_flat_dt_get_addr_size_prop(node, name, &entries);
+	if (!prop || entries != 1)
+		return false;
+
+	of_flat_dt_read_addr_size(prop, 0, addr, size);
+	return true;
+}
+
+void __init of_flat_dt_read_addr_size(const __be32 *prop, int entry_index,
+				      u64 *addr, u64 *size)
+{
+	int entry_cells = dt_root_addr_cells + dt_root_size_cells;
+	prop += entry_cells * entry_index;
+
+	*addr = dt_mem_next_cell(dt_root_addr_cells, &prop);
+	*size = dt_mem_next_cell(dt_root_size_cells, &prop);
+}
+
 /**
  * of_fdt_is_compatible - Return true if given node from the given blob has
  * compat in its compatible list
diff --git a/include/linux/of_fdt.h b/include/linux/of_fdt.h
index b8d6c0c20876..51dadbaa3d63 100644
--- a/include/linux/of_fdt.h
+++ b/include/linux/of_fdt.h
@@ -55,6 +55,15 @@ extern int of_get_flat_dt_subnode_by_name(unsigned long node,
 					  const char *uname);
 extern const void *of_get_flat_dt_prop(unsigned long node, const char *name,
 				       int *size);
+
+extern const __be32 *of_flat_dt_get_addr_size_prop(unsigned long node,
+						   const char *name,
+						   int *entries);
+extern bool of_flat_dt_get_addr_size(unsigned long node, const char *name,
+				     u64 *addr, u64 *size);
+extern void of_flat_dt_read_addr_size(const __be32 *prop, int entry_index,
+				      u64 *addr, u64 *size);
+
 extern int of_flat_dt_is_compatible(unsigned long node, const char *name);
 extern unsigned long of_get_flat_dt_root(void);
 extern uint32_t of_get_flat_dt_phandle(unsigned long node);
-- 
2.51.0


