Return-Path: <devicetree+bounces-94397-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CDFD795562E
	for <lists+devicetree@lfdr.de>; Sat, 17 Aug 2024 09:41:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3E58D1F229F5
	for <lists+devicetree@lfdr.de>; Sat, 17 Aug 2024 07:41:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 368A3140369;
	Sat, 17 Aug 2024 07:41:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="gDKEVVT3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 568F113DDC0
	for <devicetree@vger.kernel.org>; Sat, 17 Aug 2024 07:41:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723880473; cv=none; b=jts/Zcrnma2IEJS2iU68sz5u7dNma4q59CD2vO2E1jvSwvnFUu94xQgN1/Cb3SoAczRjzFfqc+m2HndZhAD+5R4jlOVTtpu/c4hIWCj1phMuOvIXjMVtvIN33T5PioJ/ST4TZEJsvEPaQ+QESnFZD8CR1SBmW4XEelm3a9TSsok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723880473; c=relaxed/simple;
	bh=rPfPuGfh1UW1S1e0N3zz+OLUk/Jea98BE7sqKkvRG/0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=c+GAixiUzjgpTnR2GB6kxc0mC6bOGXWuJfkVBm4A5IZEqkpmoWrQvoR6R6U01z3pITOSJ6R7wyvQRu+SgsJ0vA4c4kce2zqfGw0MkFfjoAUiyZG6TqvcvjBYinTGsXqbsbx4cUDAetxAiVxb5xsezqfhbgt3rN17GeyNL6Abxuk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=gDKEVVT3; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-5bed68129a7so1319511a12.2
        for <devicetree@vger.kernel.org>; Sat, 17 Aug 2024 00:41:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1723880470; x=1724485270; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=hBORzQsZTXM1LbW/643seFKYzIpgNc2kY1JCnCvH3JE=;
        b=gDKEVVT3O+M8so4/nawWrPmAlj8arktrdoQ98EolSnyfXx/Vn8yYz8n+lW4kAepdej
         tc8jV3/no1RboqSsJNbhiOdT0OLiajpKM1adzNnLCPLRnW9ovsOCY2jK2+1BBluQ4Vk5
         44B0ElhSZWTlIT7dMrXvW3kvog4A4mGAdksCcpsn4F1YWubJVn+ZFjswTf1FybaidPag
         4akBcWBNQqyQ4tGMmMqeMl+DCI+It1KDOPtx9jTx0TsKJHbYItIBJ5EDEMeFiBSUO5XQ
         7syRoK7eNL+I5T6ZRgm0pkZiyDyYOi0Ldm7LcPygpPpE80SvLOVpEQLs5xD35vAR7nM2
         oonw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723880470; x=1724485270;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hBORzQsZTXM1LbW/643seFKYzIpgNc2kY1JCnCvH3JE=;
        b=rHdHN2JMaUwneckfAq2al/HLaigTh/9Svn8oSDQuK1+LKT5cP08+HbNJ6jAccTf8Xt
         zhSG5dz0EmddurrgjuXzKWi2rGKvqigRWE8ro1neq6gDxMcl6szEvx0WB30oQih/byWR
         XFeQiGGK/uf+9HOC+JBqCWSXmCY3S9oxDLwSz/HJe1NBFUoqEGfFcO7M2KGcCxChkQvA
         xfCaR+meVQGCpdI+/MGok+9Qw1lNKnE6ww8v/YpKIfCnEzqSKpicxXPpStMh6h5RVHbr
         2cJvD8OeLtEHjIpORlQztKOnx+gmZzzUY0SuVAIjOQ7j9Ma07CJFNqjYeO2mq9jdlvfo
         WcOA==
X-Gm-Message-State: AOJu0Yz5CcSlkxs6RIP8th0KwK56XAqZukX73W9+od2MelrIisNG1Yhm
	niZbHmpZq2e8eBm7gzgF0KFtYYuqV3wjJlUjlohOwI9j/yd+OGUbm7To6KD+LTiqln3OqMZ5V0Q
	eh9c=
X-Google-Smtp-Source: AGHT+IENhmqi+DxLc2mz1SydD0A7p9AlI66nGERR3UWKR5q1emYV4OIEyUSKUHefLCRrMdx9ictRhg==
X-Received: by 2002:a17:907:e2ce:b0:a7a:a4be:2f99 with SMTP id a640c23a62f3a-a839292f4d3mr321245066b.22.1723880469146;
        Sat, 17 Aug 2024 00:41:09 -0700 (PDT)
Received: from localhost (cst2-173-13.cust.vodafone.cz. [31.30.173.13])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a83aeb6eb4dsm66950666b.35.2024.08.17.00.41.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Aug 2024 00:41:08 -0700 (PDT)
From: Andrew Jones <ajones@ventanamicro.com>
To: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	loongarch@lists.linux.dev,
	linux-mips@vger.kernel.org
Cc: maz@kernel.org,
	mark.rutland@arm.com,
	robh@kernel.org,
	saravanak@google.com,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	Anup Patel <apatel@ventanamicro.com>
Subject: [PATCH v3] of/irq: Support #msi-cells=<0> in of_msi_get_domain
Date: Sat, 17 Aug 2024 09:41:08 +0200
Message-ID: <20240817074107.31153-2-ajones@ventanamicro.com>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

An 'msi-parent' property with a single entry and no accompanying
'#msi-cells' property is considered the legacy definition as opposed
to its definition after being expanded with commit 126b16e2ad98
("Docs: dt: add generic MSI bindings"). However, the legacy
definition is completely compatible with the current definition and,
since of_phandle_iterator_next() tolerates missing and present-but-
zero *cells properties since commit e42ee61017f5 ("of: Let
of_for_each_phandle fallback to non-negative cell_count"), there's no
need anymore to special case the legacy definition in
of_msi_get_domain().

Indeed, special casing has turned out to be harmful, because, as of
commit 7c025238b47a ("dt-bindings: irqchip: Describe the IMX MU block
as a MSI controller"), MSI controller DT bindings have started
specifying '#msi-cells' as a required property (even when the value
must be zero) as an effort to make the bindings more explicit. But,
since the special casing of 'msi-parent' only uses the existence of
'#msi-cells' for its heuristic, and not whether or not it's also
nonzero, the legacy path is not taken. Furthermore, the path to
support the new, broader definition isn't taken either since that
path has been restricted to the platform-msi bus.

But, neither the definition of 'msi-parent' nor the definition of
'#msi-cells' is platform-msi-specific (the platform-msi bus was just
the first bus that needed '#msi-cells'), so remove both the special
casing and the restriction. The code removal also requires changing
to of_parse_phandle_with_optional_args() in order to ensure the
legacy (but compatible) use of 'msi-parent' remains supported. This
not only simplifies the code but also resolves an issue with PCI
devices finding their MSI controllers on riscv, as the riscv,imsics
binding requires '#msi-cells=<0>'.

Signed-off-by: Andrew Jones <ajones@ventanamicro.com>
---
v3:
 - switch to of_for_each_phandle() to further cleanup/simplify the
   code [Rob]
v2:
 - switch to of_parse_phandle_with_optional_args() to ensure the
   absence of #msi-cells means count=0

 drivers/of/irq.c | 35 ++++++++---------------------------
 1 file changed, 8 insertions(+), 27 deletions(-)

diff --git a/drivers/of/irq.c b/drivers/of/irq.c
index c94203ce65bb..b74a3f5fc4e2 100644
--- a/drivers/of/irq.c
+++ b/drivers/of/irq.c
@@ -709,8 +709,7 @@ struct irq_domain *of_msi_map_get_device_domain(struct device *dev, u32 id,
  * @np: device node for @dev
  * @token: bus type for this domain
  *
- * Parse the msi-parent property (both the simple and the complex
- * versions), and returns the corresponding MSI domain.
+ * Parse the msi-parent property and returns the corresponding MSI domain.
  *
  * Returns: the MSI domain for this device (or NULL on failure).
  */
@@ -718,33 +717,15 @@ struct irq_domain *of_msi_get_domain(struct device *dev,
 				     struct device_node *np,
 				     enum irq_domain_bus_token token)
 {
-	struct device_node *msi_np;
+	struct of_phandle_iterator it;
 	struct irq_domain *d;
+	int err;
 
-	/* Check for a single msi-parent property */
-	msi_np = of_parse_phandle(np, "msi-parent", 0);
-	if (msi_np && !of_property_read_bool(msi_np, "#msi-cells")) {
-		d = irq_find_matching_host(msi_np, token);
-		if (!d)
-			of_node_put(msi_np);
-		return d;
-	}
-
-	if (token == DOMAIN_BUS_PLATFORM_MSI) {
-		/* Check for the complex msi-parent version */
-		struct of_phandle_args args;
-		int index = 0;
-
-		while (!of_parse_phandle_with_args(np, "msi-parent",
-						   "#msi-cells",
-						   index, &args)) {
-			d = irq_find_matching_host(args.np, token);
-			if (d)
-				return d;
-
-			of_node_put(args.np);
-			index++;
-		}
+	of_for_each_phandle(&it, err, np, "msi-parent", "#msi-cells", 0) {
+		d = irq_find_matching_host(it.node, token);
+		if (d)
+			return d;
+		of_node_put(it.node);
 	}
 
 	return NULL;
-- 
2.45.2


