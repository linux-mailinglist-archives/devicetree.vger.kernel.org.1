Return-Path: <devicetree+bounces-252343-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 303F6CFDDA8
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 14:12:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 87FF4303932A
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 13:05:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A7E331B127;
	Wed,  7 Jan 2026 13:05:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="0ivL6Xob"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48FE631AA9E
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 13:05:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.84.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767791120; cv=none; b=T+e7rXBKUdNRG41i5bYmO2wsuW+sXm3+ddEHEL34XXRH0Ja2dasOWikdA0wZnhmvLtzSP2vyMha56B3tGDPXx1TLaXEsp3fnMDLnQhz5NPFmBm9oa8qto26DuRbFpl7Aa65W0VhbvR1n+h71SXba175ycsb5AjIBjChUhm2X7IY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767791120; c=relaxed/simple;
	bh=8L7BEeLSyAGZr88Hz5hZv2yOvdC/hTQ7EyJ6GMOjePs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=brzE5XWbQVWErYGM731f2OxZqZ4+wD4aDHCnRTipVjgRitBKPvMjv1dxnyozq1haiSUh0X8AoEsCkecUFOM5bdy/cpa0SUsOvpr8+mvDXPNLR4+jDRVJHOo4agmOzKI9A6uvQr9HOwUVBOK8kPLzI3CMzNj+S+bhufj9juqvU7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=0ivL6Xob; arc=none smtp.client-ip=185.246.84.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id A934E1A26C0;
	Wed,  7 Jan 2026 13:05:16 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 7E1E9606F8;
	Wed,  7 Jan 2026 13:05:16 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id B697C103C872C;
	Wed,  7 Jan 2026 14:05:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1767791115; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=28/kVheK1lvYqLZuz6cxLCTZassa/8QL++w4LyvFy3Q=;
	b=0ivL6Xobw/RkGwwLITYh6UfvAOWLChYOicSsB1GAPA7BgL4XvR3hFeZucfosgi42g7iQzI
	c6HbaFj+SUfm0P8qi5lzLqWntM+3yAi48Tnf82GD1iNuqSkDFWuOaN1saaSFTvALAMoFSO
	27T2ubyCtpFxA8zG3M0X/tW0AqvLBW1+FJs1FW7QY6/2iAI4AYlIsdrshFAI081/7LLAx5
	9waryOXNoT4ssZOoi4zIzQqLCIKRe0sWlaD7BZ/cwLU9M4qnjJcObELdDzvW8Bk0jvoIZz
	+qKOFd5i+8NCHP8KroYRt+0ur0/xt/3Ti0EsyQEv0Pb0BZO+BHceHr5VR7gU+Q==
From: Gregory CLEMENT <gregory.clement@bootlin.com>
Date: Wed, 07 Jan 2026 14:04:52 +0100
Subject: [PATCH v3 1/4] of: reserved_mem: Fix placement of __free()
 annotation
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260107-mtd-memregion-v3-1-f9fc9107b992@bootlin.com>
References: <20260107-mtd-memregion-v3-0-f9fc9107b992@bootlin.com>
In-Reply-To: <20260107-mtd-memregion-v3-0-f9fc9107b992@bootlin.com>
To: Rob Herring <robh@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
 Miquel Raynal <miquel.raynal@bootlin.com>, 
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>, 
 =?utf-8?q?Beno=C3=AEt_Monin?= <benoit.monin@bootlin.com>, 
 =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mtd@lists.infradead.org, 
 Gregory CLEMENT <gregory.clement@bootlin.com>
X-Mailer: b4 0.14.3
X-Last-TLS-Session-Version: TLSv1.3

The __free() annotation was incorrectly placed before the variable
name instead of after it, which resulted in the following checkpatch
errors:

ERROR: need consistent spacing around '*' (ctx:WxV)
+       struct device_node __free(device_node) *target = of_parse_phandle(np, "memory-region", idx);
                                               ^
WARNING: function definition argument 'idx' should also have an identifier name
+       struct device_node __free(device_node) *target = of_parse_phandle(np, "memory-region", idx);

As part of this cleanup, also remove the useless return statement
flagged by checkpatch.

Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
---
 drivers/of/of_reserved_mem.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/of/of_reserved_mem.c b/drivers/of/of_reserved_mem.c
index 5619ec9178587..1ab8f4153600b 100644
--- a/drivers/of/of_reserved_mem.c
+++ b/drivers/of/of_reserved_mem.c
@@ -127,7 +127,6 @@ static void __init fdt_reserved_mem_save_node(unsigned long node, const char *un
 	fdt_init_reserved_mem_node(rmem);
 
 	reserved_mem_count++;
-	return;
 }
 
 static int __init early_init_dt_reserve_memory(phys_addr_t base,
@@ -747,7 +746,7 @@ int of_reserved_mem_region_to_resource(const struct device_node *np,
 	if (!np)
 		return -EINVAL;
 
-	struct device_node __free(device_node) *target = of_parse_phandle(np, "memory-region", idx);
+	struct device_node *target __free(device_node) = of_parse_phandle(np, "memory-region", idx);
 	if (!target || !of_device_is_available(target))
 		return -ENODEV;
 

-- 
2.51.0


