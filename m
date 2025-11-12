Return-Path: <devicetree+bounces-237653-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 627AAC52E38
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 16:07:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id C7C3B502276
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 14:38:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB2BD33970D;
	Wed, 12 Nov 2025 14:37:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="q3AVVszw"
X-Original-To: devicetree@vger.kernel.org
Received: from out-172.mta0.migadu.com (out-172.mta0.migadu.com [91.218.175.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 061FF2BEFF3
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 14:37:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762958256; cv=none; b=p6niBgvTEew2SZTJ4y4nWOVrWHVbdT4rQZ/V/IqJzwlOyS040iTysFlmjA4ua5jD0iBoK3HcHASoBrv4yKCg2Vl412m/iTsjGoe5Y8V0hM8jUfoGS6VibFM6BPtb3Wxl0vkv/NDNKHIdLn11YOT8GHD/hHKa5NLfEikYg9rzQ2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762958256; c=relaxed/simple;
	bh=KUaz13UbB8OLq6l6G6TlNd70ET1Mwc3jEJ9+JWehkF4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=h2zVRak7JqzBWif9KIf2wPHq67DxYEh6CK5qmi1q2x55vjA6fIG9ODyaDMWWvKXdAQ3ikdHVEN2+3C23pg3NjZY4HLTPXJs3vCx1impWo0NRSduh01jSOf/sWnq34YcQ1KCdvhJAIFhPBH6zWIDHBr1KlxZ80a/9TmS7HRpZKjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=q3AVVszw; arc=none smtp.client-ip=91.218.175.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1762958249;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=yc0kfV4r2fjRhsZWr3QexNqNjpEEGyKvB/5qZrt2EqI=;
	b=q3AVVszw+CsNEAzTfDTqAqwC0WCG+jlFDQpeXJ2Iom2XfAflgrIhZLRl/DRCM8q4PPds8V
	rU18Fr0z/MqW7Z+vltFQtdzFO+hF8CR/MGIa9oA09+tCMcmS1NnOEmgd477v2C2WV6qpJ3
	65a5MCWu2/Y2LJ6IraSzsPHrUxObojE=
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
Subject: [PATCH 02/10] of/reserved_mem: Use dt_root_addr_size_bytes() instead of open-coding it
Date: Wed, 12 Nov 2025 22:35:12 +0800
Message-ID: <20251112143520.233870-3-yuntao.wang@linux.dev>
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
__reserved_mem_reserve_reg() to improve code maintainability.

Signed-off-by: Yuntao Wang <yuntao.wang@linux.dev>
---
 drivers/of/of_reserved_mem.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/of/of_reserved_mem.c b/drivers/of/of_reserved_mem.c
index 2e9ea751ed2d..67c0ccd373c2 100644
--- a/drivers/of/of_reserved_mem.c
+++ b/drivers/of/of_reserved_mem.c
@@ -154,7 +154,7 @@ static int __init early_init_dt_reserve_memory(phys_addr_t base,
 static int __init __reserved_mem_reserve_reg(unsigned long node,
 					     const char *uname)
 {
-	int t_len = (dt_root_addr_cells + dt_root_size_cells) * sizeof(__be32);
+	int t_len = dt_root_addr_size_bytes();
 	phys_addr_t base, size;
 	int len;
 	const __be32 *prop;
-- 
2.51.0


