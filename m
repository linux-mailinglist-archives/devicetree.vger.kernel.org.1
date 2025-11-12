Return-Path: <devicetree+bounces-237656-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 142ECC52D38
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 15:54:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 3508150416C
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 14:39:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE7243161B3;
	Wed, 12 Nov 2025 14:37:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="Vrcw36mp"
X-Original-To: devicetree@vger.kernel.org
Received: from out-173.mta0.migadu.com (out-173.mta0.migadu.com [91.218.175.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC13F2C08D0
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 14:37:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762958279; cv=none; b=KHrqY1jilTu/I2tyNORpoihb+7D/MnU0QHztzXFhQ7LI+xxT7v2P1PxhhsYWHV9tt4+TRV4+yogpv/tHfyhvX7smZlipFdI8Q9ALLSu13MoAVvvOunQQDOvD8HPJP6ztOGtGIAb2/fpL51QKCliQg1BBjHu3pYkYsfVQ0pZTwcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762958279; c=relaxed/simple;
	bh=tlzXcMXy8FsmBGgDOagtaOXIuwvKvU9OQ00actPcIUg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=S6jilgNc/l5JMIP+b2GR4dGw0jLcRLzSDlSDFYwOMXataai6qB1tguW2X7bCPgui7LMtnHWpIRzofgGPRDrrBdrLD3lPrdZw+aW+3pPPZqTez65kxJsE0JIJoYsW/0b6ky4jM99cPPrKWomcZ0RlFBew+0woFy7VUmxAKSTcMc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=Vrcw36mp; arc=none smtp.client-ip=91.218.175.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1762958276;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=UXYo/CzGAlYteilPh0ZKzeSdTBerfs4sNxjGWF5Bkm4=;
	b=Vrcw36mp4Tb0XqVNnMyiHjQYwMbtquKj0IIVKJssEjJbyBynju04/ez6VJE+GjQ2OUmi4t
	OnWx7084aU5S1Q66j38DdsLzDjbEmt1zcvJo7xMcisqQejt846lINewzj7I9cB3L+3O4ef
	ZTavnN8qQsUzGCpFVePpqCu2Rm37LKk=
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
Subject: [PATCH 05/10] of/fdt: Use dt_root_addr_size_bytes() instead of open-coding it
Date: Wed, 12 Nov 2025 22:35:15 +0800
Message-ID: <20251112143520.233870-6-yuntao.wang@linux.dev>
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

Use dt_root_addr_size_bytes() instead of open-coding it in
of_fdt_limit_memory() to improve code maintainability.

Signed-off-by: Yuntao Wang <yuntao.wang@linux.dev>
---
 drivers/of/fdt.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index 0edd639898a6..a1db3c9ac981 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -52,7 +52,7 @@ void __init of_fdt_limit_memory(int limit)
 	int memory;
 	int len;
 	const void *val;
-	int cell_size = sizeof(uint32_t)*(dt_root_addr_cells + dt_root_size_cells);
+	int cell_size = dt_root_addr_size_bytes();
 
 	memory = fdt_path_offset(initial_boot_params, "/memory");
 	if (memory > 0) {
-- 
2.51.0


