Return-Path: <devicetree+bounces-235112-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C06FEC34AFA
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 10:06:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id A27D44F5417
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 09:02:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1780A2DBF48;
	Wed,  5 Nov 2025 09:02:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="ZkIuuX+S"
X-Original-To: devicetree@vger.kernel.org
Received: from out-170.mta0.migadu.com (out-170.mta0.migadu.com [91.218.175.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 640CA21D3F2
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 09:02:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762333329; cv=none; b=j7w9T/jNaVWxCkO43OWQUbvc43tvGENvoGh/iUr35toI0EwkbTcyOg/7WjodDuWs7IXRrJkOcCeY6/PEhW7+6sPHkp6gH8AqPMRo2CBfL28TC7vfs6IxMwlhaPzQQf8ykbbEt3XyprcHmUDdiYeMBt8//xh9iS3LDVynp8bK5Tg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762333329; c=relaxed/simple;
	bh=JNmGv0ptKeTdBvC5Z+R3bK63SY8BCP5AbkGot9KL6+Q=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=dIm2rxiw9ZUYCjXA4Yzp4DmBDXX2q9GAMXF1u09WNvWKY14DFLOdWEAds0TwzI/fbxnh1Py8TK5nl9yl5tjhwwjfadr2sh5xt7PgVveyGNSNQEto4xt2hT5K+wyhP/HrReQWMyjWiC/aImAyRHGFzgtA/NRfctBT8P09TG1bJzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=ZkIuuX+S; arc=none smtp.client-ip=91.218.175.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1762333323;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=WhmvUOw/TY0labFA2ZlYeFDTsWuyGaxzAd4QjXKfVE0=;
	b=ZkIuuX+Srx4uYGW8ohjjJH9G9d3OUtD6VVyoEqre93kauW5C1QTDCUKWYpdpqocmdSPljA
	trxvJT1c7QcYLbOo5jjpq14GbsJZP9RpfHTI3nBQm/Df78j0aBO9QTorTA1O9Jo13IBZjH
	IYmOGTnwHO44dKF+UWW2sTNNzM7FVg0=
From: Yuntao Wang <yuntao.wang@linux.dev>
To: geert@linux-m68k.org,
	robh@kernel.org,
	saravanak@google.com
Cc: devicetree@vger.kernel.org,
	geert+renesas@glider.be,
	linux-kernel@vger.kernel.org,
	yuntao.wang@linux.dev
Subject: [PATCH v2] of: fdt: Fix the len check in early_init_dt_check_for_elfcorehdr()
Date: Wed,  5 Nov 2025 17:00:04 +0800
Message-ID: <20251105090004.83119-1-yuntao.wang@linux.dev>
In-Reply-To: <CAMuHMdW0mLsZmJsWmQEaN=g-kRMMVHaBpRZmQW1VFRqyDvK6UQ@mail.gmail.com>
References: <CAMuHMdW0mLsZmJsWmQEaN=g-kRMMVHaBpRZmQW1VFRqyDvK6UQ@mail.gmail.com>
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
Fixes: e62aaeac426ab1dd ("arm64: kdump: provide /proc/vmcore file")
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Yuntao Wang <yuntao.wang@linux.dev>
---
v1 -> v2: Add a new Fixes tag as suggested by Geert Uytterhoeven

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

