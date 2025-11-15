Return-Path: <devicetree+bounces-238996-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A2BFAC60657
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 14:51:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0E7D83BE324
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 13:49:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98A382FB617;
	Sat, 15 Nov 2025 13:49:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="jD2E1j+C"
X-Original-To: devicetree@vger.kernel.org
Received: from out-186.mta0.migadu.com (out-186.mta0.migadu.com [91.218.175.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D84242FB966;
	Sat, 15 Nov 2025 13:49:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.186
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763214590; cv=none; b=iDIGtjb7zVhghaK1n9jhXulOlXPk4GHKUNOLDvf08K8F/gDrrHOblnTFOtVbZZvUG2DdQAFPwamnUiF7VjTqZomn+WLIchmC9WvxKWBvHTG14qws/tEQM32h7DbzWPqMzRtqCCNYlrM5KFkf3CHoXs2U5xB/n/gvsiCB7AP01Lk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763214590; c=relaxed/simple;
	bh=vLfXegOczrFOX7ZwcNE5UI+0u9nsnsz5c/rfTcX+Tqk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=E6vE1WJZgVCNdhftdYeyYdZS4Y1QNvWWCq/4JkTgr4jdeF2VPT7uvvDXJLih9NetvwJyarGtuH5EI3KD95SEJTQcIHeNpfXiA2dWSXkeeM3Slf2wlJu8o++Xp9DFsBWdBihygfm0lJPMZTGpLonEuWp/J8HDPWGvgIfVXxtIKYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=jD2E1j+C; arc=none smtp.client-ip=91.218.175.186
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1763214585;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=b61z+7Zwzsrpkor1DhAY2hNXwtM/8j+ZHIAdx/g/Rtg=;
	b=jD2E1j+C/wTwHKpn+rlz5hCuBvzOyvU1Z8RyTATDPvQFeqTzzoKbotgjYyHGB22hGw+uPf
	8O8NZSSwnTUVtVDlKI339mtqT1k7qZj0PC8PDWJRBprjVurePACusgicLnMZToNxtpJfVI
	/uT4kdkjA7iRiCiF1QMjFoawMbDsTDY=
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
Subject: [PATCH v3 7/8] of/reserved_mem: Simplify the logic of fdt_scan_reserved_mem_reg_nodes()
Date: Sat, 15 Nov 2025 21:47:52 +0800
Message-ID: <20251115134753.179931-8-yuntao.wang@linux.dev>
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
fdt_scan_reserved_mem_reg_nodes()

Signed-off-by: Yuntao Wang <yuntao.wang@linux.dev>
---
 drivers/of/of_reserved_mem.c | 25 +++++++------------------
 1 file changed, 7 insertions(+), 18 deletions(-)

diff --git a/drivers/of/of_reserved_mem.c b/drivers/of/of_reserved_mem.c
index 2f1e4450785e..0ceb096c17e6 100644
--- a/drivers/of/of_reserved_mem.c
+++ b/drivers/of/of_reserved_mem.c
@@ -225,12 +225,9 @@ static void __init __rmem_check_for_overlap(void);
  */
 void __init fdt_scan_reserved_mem_reg_nodes(void)
 {
-	int t_len = (dt_root_addr_cells + dt_root_size_cells) * sizeof(__be32);
 	const void *fdt = initial_boot_params;
 	phys_addr_t base, size;
-	const __be32 *prop;
 	int node, child;
-	int len;
 
 	if (!fdt)
 		return;
@@ -251,29 +248,21 @@ void __init fdt_scan_reserved_mem_reg_nodes(void)
 
 	fdt_for_each_subnode(child, fdt, node) {
 		const char *uname;
+		u64 b, s;
 
-		prop = of_get_flat_dt_prop(child, "reg", &len);
-		if (!prop)
-			continue;
 		if (!of_fdt_device_is_available(fdt, child))
 			continue;
 
-		uname = fdt_get_name(fdt, child, NULL);
-		if (len && len % t_len != 0) {
-			pr_err("Reserved memory: invalid reg property in '%s', skipping node.\n",
-			       uname);
+		if (!of_flat_dt_get_addr_size(child, "reg", &b, &s))
 			continue;
-		}
-
-		if (len > t_len)
-			pr_warn("%s() ignores %d regions in node '%s'\n",
-				__func__, len / t_len - 1, uname);
 
-		base = dt_mem_next_cell(dt_root_addr_cells, &prop);
-		size = dt_mem_next_cell(dt_root_size_cells, &prop);
+		base = b;
+		size = s;
 
-		if (size)
+		if (size) {
+			uname = fdt_get_name(fdt, child, NULL);
 			fdt_reserved_mem_save_node(child, uname, base, size);
+		}
 	}
 
 	/* check for overlapping reserved regions */
-- 
2.51.0


