Return-Path: <devicetree+bounces-135598-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 549EFA016EC
	for <lists+devicetree@lfdr.de>; Sat,  4 Jan 2025 22:06:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 84BB61884EB7
	for <lists+devicetree@lfdr.de>; Sat,  4 Jan 2025 21:06:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 985D51D5CFA;
	Sat,  4 Jan 2025 21:06:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=iinet.net.au header.i=@iinet.net.au header.b="rdPiROB5"
X-Original-To: devicetree@vger.kernel.org
Received: from omr008.pc5.atmailcloud.com (omr008.pc5.atmailcloud.com [103.150.252.8])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E052146D55;
	Sat,  4 Jan 2025 21:06:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.150.252.8
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736024781; cv=none; b=CGTjHfETQevvRJuNEZ6NJmoEgIqb6tnY0Xe08Wnc3BMitpo9I/BbiCZrFcG00gmY+JNQCfIuDagTiRPZjjJiJmNl2b5a0afUBcD4zl6+90lTKMJL2Ba72Je4j0i8XwYYcGTcphqXWuGWCvXOJ3Fn2ICwKK+DCzt2mmgNI2MHnBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736024781; c=relaxed/simple;
	bh=CBonEI+EtPkyMJA7HqNFg8/ZoUCPOFkriv25vUla0RM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=qZt5Xs+Egp6Gb/ydk7woCW/HVmw9UN7a+2doIuSVMBVabCSAyxowHHnQRf+Jgr+2kTG0/ii5jr2vCLBbaN45AGo0d8EfDlIfm/g9JKxAy9jalC8+/H0L6r4+T3ePpIP/PNdHgeZIv+OQQzGOmaDHnos0BhnUJKZ+d3KsPdjucSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=iinet.net.au; spf=pass smtp.mailfrom=iinet.net.au; dkim=pass (2048-bit key) header.d=iinet.net.au header.i=@iinet.net.au header.b=rdPiROB5; arc=none smtp.client-ip=103.150.252.8
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=iinet.net.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=iinet.net.au
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=iinet.net.au; s=202309; h=MIME-Version:Message-Id:Date:Subject:To:From:
	content-type; bh=cVIAUb2qc1NCjxX6aW/YDNo+DkW2UxiURY7wLZC2gGE=; b=rdPiROB5DHdW
	FrMAl3tK/9W3tf+EyitjnzOuuU9ix437JmxJtX2Rnq8J7iQJkcSQeVVIYD3bC1dQ6tvRf7Bt7wUhN
	lyf5u7tkEE3eCn/6bwp1xjlgnOy9dxZt9NvnKASW5Nh7zRJDj7lvB/20hLvYCBq6XoQh0y0tFjX6d
	LYRnolW4hpYVA/G4tz9aC88PEiP1VGxHbV5Derczlne592TkDBrG8fxslOcI+kXGcWbUGzhsE9UJP
	E1xX9bgbnWSHPYshKlqg7NGpuqBogSngJGFq/2bU+I2jLncC9lxnRhQKoFOMgG7ZKmLl/OQvfDm1h
	fspG1ze/agHzdjVzsCJSdw==;
Received: from cmr-kakadu03.internal.pc5.atmailcloud.com (cmr-kakadu03.internal.pc5.atmailcloud.com [192.168.1.5]) 
	by omr.internal.pc5.atmailcloud.com (Exim/cmr-kakadu03.i-01ab443d0bcdc103a) with ESMTPS
	(envelope-from <gordoste@iinet.net.au>)
	id 1tUBLd-000000006qF-3Twh ;
	Sat, 04 Jan 2025 21:06:17 +0000
Received: from [220.233.184.101] (helo=localhost)
	 by CMR-KAKADU03.i-01ab443d0bcdc103a with esmtpsa
	(envelope-from <gordoste@iinet.net.au>)
	id 1tUBLd-0000000083s-1cYE;
	Sat, 04 Jan 2025 21:06:17 +0000
From: Stephen Gordon <gordoste@iinet.net.au>
To: robh@kernel.org,
	saravanak@google.com
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Stephen Gordon <gordoste@iinet.net.au>
Subject: [PATCH 1/2] of: Add of_get_next_child_by_id()
Date: Sun,  5 Jan 2025 08:05:23 +1100
Message-Id: <20250104210524.2137-2-gordoste@iinet.net.au>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250104210524.2137-1-gordoste@iinet.net.au>
References: <20250104210524.2137-1-gordoste@iinet.net.au>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Atmail-Id: gordoste@iinet.net.au
X-atmailcloud-spam-action: no action
X-Cm-Analysis: v=2.4 cv=b7W04MGx c=1 sm=1 tr=0 ts=6779a2c9 a=HSUqTxjWRdnMbJspRni59w==:117 a=HSUqTxjWRdnMbJspRni59w==:17 a=VdSt8ZQiCzkA:10 a=x7bEGLp0ZPQA:10 a=4jraHwQkAAAA:8 a=sa_jXb20p6y_KsnTsqcA:9
X-Cm-Envelope: MS4xfKV7ikyTV8aUXI0zskyRCnkTJjVmq5DV3YeDsXk+h6qL4oZ5tsOJpE3NpVJYKCK2c7W/oaNSY/5Gl56M2NOPFK2ue+sFqmDhwbGQPXNhbRSDZcqldwO1 jYdl9NlXVIhCIS1xiFNTPfq4kDafsVTSq4+FzuvweJyQ0yGbzBghFC1ev8OFygH3njhGzUNGEPzhtg==
X-atmailcloud-route: unknown

This new function returns nodes in address order. There is also a
corresponding for_each_child_of_node_by_id() macro.

Signed-off-by: Stephen Gordon <gordoste@iinet.net.au>
---
 drivers/of/base.c  | 41 ++++++++++++++++++++++++++++++++++++++++-
 include/linux/of.h | 12 ++++++++++++
 2 files changed, 52 insertions(+), 1 deletion(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 7dc394255a0a..0be430b022fb 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -623,7 +623,46 @@ static struct device_node *__of_get_next_child(const struct device_node *node,
 	     child = __of_get_next_child(parent, child))
 
 /**
- * of_get_next_child - Iterate a node childs
+ * of_get_next_child_by_id - Iterate a node's children in order of id
+ * @node:	parent node
+ * @prev:	previous child of the parent node, or NULL to get first
+ *
+ * Return: A node pointer with refcount incremented, use of_node_put() on
+ * it when done. Returns NULL when prev is the last child. Decrements the
+ * refcount of prev.
+ */
+struct device_node *of_get_next_child_by_id(const struct device_node *node,
+						struct device_node *prev)
+{
+	struct device_node *next = NULL;
+	u32 next_id = U32_MAX;
+	u32 prev_id, this_id;
+	unsigned long flags;
+
+	if (!node || !(node->child))
+		return NULL;
+
+	if (prev)
+		of_property_read_u32(prev, "reg", &prev_id);
+
+	for_each_child_of_node_scoped(node, child) {
+		of_property_read_u32(child, "reg", &this_id);
+		if ((!prev || (this_id > prev_id)) && this_id < next_id) {
+			next = child;
+			next_id = this_id;
+		}
+	}
+
+	raw_spin_lock_irqsave(&devtree_lock, flags);
+	of_node_get(next);
+	of_node_put(prev);
+	raw_spin_unlock_irqrestore(&devtree_lock, flags);
+	return next;
+}
+EXPORT_SYMBOL(of_get_next_child_by_id);
+
+/**
+ * of_get_next_child - Iterate a node's children
  * @node:	parent node
  * @prev:	previous child of the parent node, or NULL to get first
  *
diff --git a/include/linux/of.h b/include/linux/of.h
index f921786cb8ac..7eaaade5f749 100644
--- a/include/linux/of.h
+++ b/include/linux/of.h
@@ -289,6 +289,8 @@ extern struct device_node *of_get_parent(const struct device_node *node);
 extern struct device_node *of_get_next_parent(struct device_node *node);
 extern struct device_node *of_get_next_child(const struct device_node *node,
 					     struct device_node *prev);
+extern struct device_node *of_get_next_child_by_id(const struct device_node *node,
+					     struct device_node *prev);
 extern struct device_node *of_get_next_child_with_prefix(const struct device_node *node,
 							 struct device_node *prev,
 							 const char *prefix);
@@ -545,6 +547,12 @@ static inline struct device_node *of_get_next_child(
 	return NULL;
 }
 
+static inline struct device_node *of_get_next_child_by_id(
+	const struct device_node *node, struct device_node *prev)
+{
+	return NULL;
+}
+
 static inline struct device_node *of_get_next_available_child(
 	const struct device_node *node, struct device_node *prev)
 {
@@ -1471,6 +1479,10 @@ static inline int of_property_read_s32(const struct device_node *np,
 	     child != NULL;						\
 	     child = of_get_next_child(parent, child))
 
+#define for_each_child_of_node_by_id(parent, child) \
+	for (child = of_get_next_child_by_id(parent, NULL); child != NULL; \
+	     child = of_get_next_child_by_id(parent, child))
+
 #define for_each_child_of_node_with_prefix(parent, child, prefix)	\
 	for (struct device_node *child __free(device_node) =		\
 	     of_get_next_child_with_prefix(parent, NULL, prefix);	\
-- 
2.39.5


