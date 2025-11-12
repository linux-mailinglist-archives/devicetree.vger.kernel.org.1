Return-Path: <devicetree+bounces-237660-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D6EA9C532C3
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 16:50:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 110984A384D
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 14:42:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DD5333F8CF;
	Wed, 12 Nov 2025 14:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="BOZsCKjj"
X-Original-To: devicetree@vger.kernel.org
Received: from out-180.mta0.migadu.com (out-180.mta0.migadu.com [91.218.175.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7793C2C08C5
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 14:38:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762958313; cv=none; b=pXHb353TKqitMDo+NWSu0I4Pq/Q4WyCvr/IjYeTOwhGnan6U4N0MVrRtSspFwpiuvPsQ8LhjNwGzSyYRYStpDUEat5+0aSEToJQFuHPcdhcNMxj4tE9CHDgCU452u0CdUbJuJWonzXxxglWXUkkNEllZZ1kl9jtg+A73tHBxgoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762958313; c=relaxed/simple;
	bh=iyoAsGQGFkkRyLWwIXuw9sz9AApsVOQKRvv9BqDR5LU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=e2cNZVsfrBOCQcqB4FOx8SMSprMAxNWJSU2PXGJa21ddnZg1wyOhJSwUInoaCB+DMp86CPw++FnQSh+mOCS34mMFW8QlXYWgG4OLSCEsc/5V16m6JRAVVidlgrqwobTgObJt1ZbTPxOcQOxm1NVa9i1d7Ah+HLoB8LNJwP2agm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=BOZsCKjj; arc=none smtp.client-ip=91.218.175.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1762958309;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=LzmGMWxJH7R4p+oRJophXFwsUFgFBj2qEtFwWWGetb0=;
	b=BOZsCKjjFQONm+8rxX6JqTQqwaXES9xxP7PKPpElFBb0Rz0lfQM8/ntbkCa2J9rzuLKG6T
	72OuPWnrAWtfXpwJT4clt8e7Ood2QYwoOc9uy9Fzfo/izbnt1hkxkytyUw+Nao/kbGdJxE
	LL8pcnqPhwpFBdbOCmzsrckrerNTb2Q=
From: Yuntao Wang <yuntao.wang@linux.dev>
To: Rob Herring <robh@kernel.org>,
	Saravana Kannan <saravanak@google.com>
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
	Catalin Marinas <catalin.marinas@arm.com>,
	AKASHI Takahiro <takahiro.akashi@linaro.org>,
	James Morse <james.morse@arm.com>,
	Chen Zhou <chenzhou10@huawei.com>,
	Baoquan He <bhe@redhat.com>,
	Zhen Lei <thunder.leizhen@huawei.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Changyuan Lyu <changyuanl@google.com>,
	Alexander Graf <graf@amazon.com>,
	"Mike Rapoport (Microsoft)" <rppt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Yuntao Wang <yuntao.wang@linux.dev>
Subject: [PATCH 09/10] of/fdt: Fix incorrect use of dt_root_addr_cells in early_init_dt_check_kho()
Date: Wed, 12 Nov 2025 22:35:19 +0800
Message-ID: <20251112143520.233870-10-yuntao.wang@linux.dev>
In-Reply-To: <20251112143520.233870-1-yuntao.wang@linux.dev>
References: <20251112143520.233870-1-yuntao.wang@linux.dev>
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

Fix these issues.

Fixes: 274cdcb1c004 ("arm64: add KHO support")
Signed-off-by: Yuntao Wang <yuntao.wang@linux.dev>
---
 drivers/of/fdt.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index fa1703612530..3b34c7e71ebc 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -894,14 +894,14 @@ static void __init early_init_dt_check_kho(void)
 		return;
 
 	fdt_start = dt_mem_next_cell(dt_root_addr_cells, &p);
-	fdt_size = dt_mem_next_cell(dt_root_addr_cells, &p);
+	fdt_size = dt_mem_next_cell(dt_root_size_cells, &p);
 
 	p = of_get_flat_dt_prop(node, "linux,kho-scratch", &l);
 	if (l != dt_root_addr_size_bytes())
 		return;
 
 	scratch_start = dt_mem_next_cell(dt_root_addr_cells, &p);
-	scratch_size = dt_mem_next_cell(dt_root_addr_cells, &p);
+	scratch_size = dt_mem_next_cell(dt_root_size_cells, &p);
 
 	kho_populate(fdt_start, fdt_size, scratch_start, scratch_size);
 }
-- 
2.51.0


