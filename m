Return-Path: <devicetree+bounces-234118-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 37257C29026
	for <lists+devicetree@lfdr.de>; Sun, 02 Nov 2025 15:19:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DF09D3B01D8
	for <lists+devicetree@lfdr.de>; Sun,  2 Nov 2025 14:18:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02A261C3C11;
	Sun,  2 Nov 2025 14:18:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="g9JIT4zb"
X-Original-To: devicetree@vger.kernel.org
Received: from out-177.mta1.migadu.com (out-177.mta1.migadu.com [95.215.58.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0004A34D3BD
	for <devicetree@vger.kernel.org>; Sun,  2 Nov 2025 14:18:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762093121; cv=none; b=XYjwhY3YiSp49wYjC5xF3sjkRH2rVg1E3m907hCZV4tH0GAhAoLg8yk66eMet06VQzgbQzZ9gzssTkoZoy/kTfWU4Ib/eFPgwnsb+34B2cRpXfvf2gMKbIBSxV5Gm5UndAaJX5R+AkkTNQ4x222/19jup/bOTxHAkbcLB2j5/7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762093121; c=relaxed/simple;
	bh=odmiv7j66umnneGAIRzkhz59fjHjPe49QLyX9JRICCU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=m08AaqoS5bbAC9kMUx77fOKw5ilTRYliqrF/HeWvfh9qTL6Z56Z6CzVwoKIWyME991uVsPw+Z85Mfe7hTbK7+osLJLDRYQZ2qw83HjtmgBzLoGKfGrlZDvw2v1JqIQ87WpNRc2SzoE3H0RK4QVDhCPmVphLYhrslfWe0S4e8UVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=g9JIT4zb; arc=none smtp.client-ip=95.215.58.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1762093107;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=DwAmpZ0OhnkimfiVCLS+4vl8FTT7dy6wBUyJ70P/nm4=;
	b=g9JIT4zbB/XsNTdOqN9J435F2LcOwio3ZOSj5OZuoYoqnUHtyGMxRe4uUoYsEWwlqOu25/
	xHixLMiIH0NnAJnQm98AZ7tnv6ghFaJcAetcpEOvrCrp4TcI/xahblMjeRV9M07WvIKTDx
	9uR5VPrkgOU2Z7ifSte2uEQ1UWzP/gc=
From: Yuntao Wang <yuntao.wang@linux.dev>
To: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Rob Herring <robh@kernel.org>,
	Saravana Kannan <saravanak@google.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Yuntao Wang <yuntao.wang@linux.dev>
Subject: [PATCH] of: fdt: Fix the len check in early_init_dt_check_for_elfcorehdr()
Date: Sun,  2 Nov 2025 22:17:33 +0800
Message-ID: <20251102141733.160640-1-yuntao.wang@linux.dev>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

The len value is in bytes, while `dt_root_addr_cells + dt_root_size_cells`
is in cells (4 bytes per cell).

Comparing them directly is incorrect. Convert units before comparison.

Fixes: f7e7ce93aac1 ("of: fdt: Add generic support for handling elf core headers property")
Signed-off-by: Yuntao Wang <yuntao.wang@linux.dev>
---
 drivers/of/fdt.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index 0edd639898a6..f79461f5cffc 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -812,6 +812,7 @@ static void __init early_init_dt_check_for_initrd(unsigned long node)
  */
 static void __init early_init_dt_check_for_elfcorehdr(unsigned long node)
 {
+	int t_len = (dt_root_addr_cells + dt_root_size_cells) * sizeof(__be32);
 	const __be32 *prop;
 	int len;
 
@@ -821,7 +822,7 @@ static void __init early_init_dt_check_for_elfcorehdr(unsigned long node)
 	pr_debug("Looking for elfcorehdr property... ");
 
 	prop = of_get_flat_dt_prop(node, "linux,elfcorehdr", &len);
-	if (!prop || (len < (dt_root_addr_cells + dt_root_size_cells)))
+	if (!prop || len < t_len)
 		return;
 
 	elfcorehdr_addr = dt_mem_next_cell(dt_root_addr_cells, &prop);
-- 
2.51.0


