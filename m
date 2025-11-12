Return-Path: <devicetree+bounces-237657-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id EE730C52E6E
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 16:10:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id E5CC85046F6
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 14:40:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D5D833859B;
	Wed, 12 Nov 2025 14:38:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="vApOzEYw"
X-Original-To: devicetree@vger.kernel.org
Received: from out-174.mta0.migadu.com (out-174.mta0.migadu.com [91.218.175.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F57D30AAC1
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 14:38:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762958288; cv=none; b=cr/lQWkTLVwsb8HiMBreJpKASdYiJWXGkuHELY1BJD28No1oK7+WAtVbEXlMlX4YN50CMzJ0lXllf8e2QvzUAiYdX2659Ozh5E+sV9EWtJQVeojtYZzIAa0MS29Jt4MMom3+7hcR4ucLmW31HLA1GjKi7/H7nYtfJUgEuch3IWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762958288; c=relaxed/simple;
	bh=6gvFcInAP8t8L2kmK5h3Zxq2zu/wipQmo4Mnh+74jY8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Br+vzZRZmDWJXlzAH5HfqYdh0FnjP87ft+zeXvgGTWXIEQdt1f1fK44my9Hy+LNVgj0Aiy37xDa4dn4Td0I19Kc2u690MBbCtHAATmgp3DnnXB071ZXiIK4RLefa18djoTbTnOqjuW7yeSMPuXgGoyHu/0THtc03bxgbsBcSzcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=vApOzEYw; arc=none smtp.client-ip=91.218.175.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1762958284;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=1NaEnFI/uQ27KEb/5xnqjBU/hb2tkFfiaNlWSyHEPWE=;
	b=vApOzEYw7bqknr3FxyFh1qQcLDcBVtF3FC9KYKp30/gByzo5lLnvADYMtbTZQbpIWLvPeD
	c2sPvwhyI0Z/6L/sNZV/lHmz7JNeXUiBykGvdHMdRwn+qxnhwZHntNnxPZRA4NKrcCq+qa
	nmVhposGyR9DdSAzVTVaOQbUyrZXSCU=
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
Subject: [PATCH 06/10] of/fdt: Fix the len check in early_init_dt_check_for_elfcorehdr()
Date: Wed, 12 Nov 2025 22:35:16 +0800
Message-ID: <20251112143520.233870-7-yuntao.wang@linux.dev>
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

The len value is in bytes, while `dt_root_addr_cells + dt_root_size_cells`
is in cells (4 bytes per cell).

Comparing them directly is incorrect. Convert units before comparison.

Fixes: f7e7ce93aac1 ("of: fdt: Add generic support for handling elf core headers property")
Fixes: e62aaeac426ab1dd ("arm64: kdump: provide /proc/vmcore file")
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Yuntao Wang <yuntao.wang@linux.dev>
---
 drivers/of/fdt.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index a1db3c9ac981..716ebe8c23d3 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -821,7 +821,7 @@ static void __init early_init_dt_check_for_elfcorehdr(unsigned long node)
 	pr_debug("Looking for elfcorehdr property... ");
 
 	prop = of_get_flat_dt_prop(node, "linux,elfcorehdr", &len);
-	if (!prop || (len < (dt_root_addr_cells + dt_root_size_cells)))
+	if (!prop || len < dt_root_addr_size_bytes())
 		return;
 
 	elfcorehdr_addr = dt_mem_next_cell(dt_root_addr_cells, &prop);
-- 
2.51.0


