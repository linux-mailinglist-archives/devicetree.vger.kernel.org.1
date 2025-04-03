Return-Path: <devicetree+bounces-162992-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5561FA7A959
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 20:28:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D47941885007
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 18:28:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79A98252911;
	Thu,  3 Apr 2025 18:28:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="cxbq0a7U"
X-Original-To: devicetree@vger.kernel.org
Received: from out-184.mta0.migadu.com (out-184.mta0.migadu.com [91.218.175.184])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44D562512ED
	for <devicetree@vger.kernel.org>; Thu,  3 Apr 2025 18:28:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.184
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743704890; cv=none; b=rEg38VbeIY6EyHG21YYuQB/0ENMbD+OOv6a/BeVH2VWPatwo4ISTHYeEQAsjf1xnoFE75rc+OY0YqmkSXEKSNnpGEhv9oo75e6Y2xs7pN6MBM0Fsgjaf/CahmYVGi5TTv0GmsUsyytOjzpQhrMi0MvVaL54QMHdxWGATFo4q8HE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743704890; c=relaxed/simple;
	bh=9HGE9TrTnweO7XWnG7nBAZmG3PDk6spnJoz3hkJLqqI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ieI9Bp9n8CNTN3SXhufIWq0NwNyYeaUG+JUOwrjSUsMRtSFmTstuoFlkcEd5Pbl14vxXeUqnw8NT8uQ69CUHBkQ+u8rZx1w4BEjI9qEhn/BJiD7C6curKmiiBIsq+nHOBi7RxKZwLehCt3JgvhuZHbYWcqhNv+bS3mBzamdzwog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=cxbq0a7U; arc=none smtp.client-ip=91.218.175.184
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1743704885;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Njrew+KPtIbVI7168u+BMm4Bpq3YCah2uEWKUu7PAkQ=;
	b=cxbq0a7UzfbxH/r2tUwZ0WkuPqJ7YnzwAeFVyMHWCoJ0Zst6vO3m8gXxWLoYciv3bL9ut+
	oamE/EvbXhJiprCtkBUlOYvkHIys/lWQ7aam54wB4dcR0LIErvkB3iJKa4wUljnpzr3aKM
	yNEC9YoBzE8dGMysZJECpKt6XGLfJ68=
From: Sean Anderson <sean.anderson@linux.dev>
To: netdev@vger.kernel.org,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Russell King <linux@armlinux.org.uk>
Cc: Christian Marangi <ansuelsmth@gmail.com>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	linux-kernel@vger.kernel.org,
	upstream@airoha.com,
	Rob Herring <robh@kernel.org>,
	Saravana Kannan <saravanak@google.com>,
	devicetree@vger.kernel.org,
	Sean Anderson <sean.anderson@linux.dev>
Subject: [RFC net-next PATCH 11/13] of: property: Add device link support for PCS
Date: Thu,  3 Apr 2025 14:27:58 -0400
Message-Id: <20250403182758.1948569-1-sean.anderson@linux.dev>
In-Reply-To: <20250403181907.1947517-1-sean.anderson@linux.dev>
References: <20250403181907.1947517-1-sean.anderson@linux.dev>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

This adds device link support for PCS devices, providing
better probe ordering.

Signed-off-by: Sean Anderson <sean.anderson@linux.dev>
---

 drivers/of/property.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/of/property.c b/drivers/of/property.c
index c1feb631e383..f3e0c390ddba 100644
--- a/drivers/of/property.c
+++ b/drivers/of/property.c
@@ -1379,6 +1379,7 @@ DEFINE_SIMPLE_PROP(pses, "pses", "#pse-cells")
 DEFINE_SIMPLE_PROP(power_supplies, "power-supplies", NULL)
 DEFINE_SUFFIX_PROP(regulators, "-supply", NULL)
 DEFINE_SUFFIX_PROP(gpio, "-gpio", "#gpio-cells")
+DEFINE_SIMPLE_PROP(pcs_handle, "pcs-handle", NULL)
 
 static struct device_node *parse_gpios(struct device_node *np,
 				       const char *prop_name, int index)
@@ -1535,6 +1536,7 @@ static const struct supplier_bindings of_supplier_bindings[] = {
 		.parse_prop = parse_post_init_providers,
 		.fwlink_flags = FWLINK_FLAG_IGNORE,
 	},
+	{ .parse_prop = parse_pcs_handle, },
 	{}
 };
 
-- 
2.35.1.1320.gc452695387.dirty


