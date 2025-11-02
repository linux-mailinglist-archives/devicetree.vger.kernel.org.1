Return-Path: <devicetree+bounces-234117-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 54CA3C2901F
	for <lists+devicetree@lfdr.de>; Sun, 02 Nov 2025 15:15:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BBA673AF70F
	for <lists+devicetree@lfdr.de>; Sun,  2 Nov 2025 14:15:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D13BD3C465;
	Sun,  2 Nov 2025 14:15:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="v1dcLZBm"
X-Original-To: devicetree@vger.kernel.org
Received: from out-173.mta0.migadu.com (out-173.mta0.migadu.com [91.218.175.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB129EEBB
	for <devicetree@vger.kernel.org>; Sun,  2 Nov 2025 14:15:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762092939; cv=none; b=W4SQKA1DSDKbIsLTde616jVMP3I9sEkdp7Vsh8jDFJiDw8paosMEusM15jB1ELVbDy2C02IaxM1dgzZtU35qB0QDEFtXiZySRCk6Ps9wWdOt/5/sF+90bHoQb65fkm2f6tg3k4lxgQPL50Rt2IGTcjH4jXale+/6+4FKIs7sAUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762092939; c=relaxed/simple;
	bh=K20hUX7hAsqNGoKfxMIu/x5EaaKLHitvZFPNayiGbtU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=gBYywAg5ytBwN+nNDaGrcbpDOAkbtEeervl1pKLNBCj3dYQlRjpLdm/SGkBs8HdhldR0SEGOWFF9XkcedG3+0HFdsLCgQ5qgR89u9DwwxJio22K9DSTsrpAh5O26kr9FhoswxAuDZUV+CW1bf6dSQ+WuSO7ZzwStKgdPiDQ+LEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=v1dcLZBm; arc=none smtp.client-ip=91.218.175.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1762092925;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=t0a5FA8xjlTHeREr5RqpyYIajyObgxI3ZWv5AKR6ZqA=;
	b=v1dcLZBmh71x5OjSvLsgrJrhn+V6FBCTaN+1tHUWHux/MCQLryXsByju/eUj2mCqzsol7+
	JlrJKvHywI9Ubr1D7W+f0iAYsE63o2+zCnri5gkyLXO1iDOagm8Gh1Thp2u0iWK4wdhwHR
	mAb9sLqzgiXRkJF/+Q1TlyuJ47U7SrQ=
From: Yuntao Wang <yuntao.wang@linux.dev>
To: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Rob Herring <robh@kernel.org>,
	Saravana Kannan <saravanak@google.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Baoquan He <bhe@redhat.com>,
	Zhen Lei <thunder.leizhen@huawei.com>,
	Chen Zhou <chenzhou10@huawei.com>,
	Yuntao Wang <yuntao.wang@linux.dev>
Subject: [PATCH] of: fdt: Fix the len check in early_init_dt_check_for_usable_mem_range()
Date: Sun,  2 Nov 2025 22:14:16 +0800
Message-ID: <20251102141416.160192-1-yuntao.wang@linux.dev>
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

The modulo calculation between them is incorrect, the units must be
converted first.

Fixes: fb319e77a0e7 ("of: fdt: Add memory for devices by DT property "linux,usable-memory-range"")
Signed-off-by: Yuntao Wang <yuntao.wang@linux.dev>
---
 drivers/of/fdt.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index 0edd639898a6..21ddc28a1257 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -852,6 +852,7 @@ void __init early_init_dt_check_for_usable_mem_range(void)
 	const __be32 *prop, *endp;
 	int len, i;
 	unsigned long node = chosen_node_offset;
+	int t_len = (dt_root_addr_cells + dt_root_size_cells) * sizeof(__be32);
 
 	if ((long)node < 0)
 		return;
@@ -859,7 +860,7 @@ void __init early_init_dt_check_for_usable_mem_range(void)
 	pr_debug("Looking for usable-memory-range property... ");
 
 	prop = of_get_flat_dt_prop(node, "linux,usable-memory-range", &len);
-	if (!prop || (len % (dt_root_addr_cells + dt_root_size_cells)))
+	if (!prop || len % t_len)
 		return;
 
 	endp = prop + (len / sizeof(__be32));
-- 
2.51.0


