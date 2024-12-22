Return-Path: <devicetree+bounces-133422-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 09A559FA826
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 21:30:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D992E1886461
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 20:30:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ADFDD170A37;
	Sun, 22 Dec 2024 20:30:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=weissschuh.net header.i=@weissschuh.net header.b="rPFyUUGd"
X-Original-To: devicetree@vger.kernel.org
Received: from todd.t-8ch.de (todd.t-8ch.de [159.69.126.157])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B260913BC0C;
	Sun, 22 Dec 2024 20:30:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=159.69.126.157
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734899430; cv=none; b=nynC7m9Rb2SyDiZRA5bjl7Ll/VSHgBbhvBQjAauGKCBA/J47A5WHohfJRyTemOiOayhUWfFgTHZjqAhGw7QrQXVVDaXusEt/gCr4uXEUvZIUFIbdcdcFC2vjKJJrIJEsljIYLphKTtUs+u/9eGcOflxUnpPqLbmiHnkSl78wQWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734899430; c=relaxed/simple;
	bh=tZBypa3Xhggfp0N/igIubpVKE5DDud9KINBtJY41C5c=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=E5H1HB2IkQt8I6Wq4P7Cb1EVnyjoDlGEOpImyuT+8J3S1xjnxNDcb7d4ruHM41PUn0Ny2V5GV6Xeatq2njsO8dO5u7uBBImSphwSb9NWxgEtEpOt91w5AxFzhgzKZksPPL+AlAmM5sEDEsDw4fFA4MqwnS6WWDOkO9tZlmjHTis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=weissschuh.net; spf=pass smtp.mailfrom=weissschuh.net; dkim=pass (1024-bit key) header.d=weissschuh.net header.i=@weissschuh.net header.b=rPFyUUGd; arc=none smtp.client-ip=159.69.126.157
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=weissschuh.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=weissschuh.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=weissschuh.net;
	s=mail; t=1734899426;
	bh=tZBypa3Xhggfp0N/igIubpVKE5DDud9KINBtJY41C5c=;
	h=From:Date:Subject:To:Cc:From;
	b=rPFyUUGdWvst2+4ZyY/fd74pgq5fAuI0v5sRgqWCZnLu07MDuaXnJPTp1KXZxcKBa
	 fFRYzpOQn9E6uG+w1APu2QFtTMzOJ9qBTKwnVlkLggAeyrqYL3thH10J8hMbtzCGGq
	 dg+b7imO9ITl5VH6t+OaY3rJfwXiuwrQTNzaOn5w=
From: =?utf-8?q?Thomas_Wei=C3=9Fschuh?= <linux@weissschuh.net>
Date: Sun, 22 Dec 2024 21:30:25 +0100
Subject: [PATCH] of: Constify 'struct bin_attribute'
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20241222-sysfs-const-bin_attr-of-v1-1-99cc2e8c2a55@weissschuh.net>
X-B4-Tracking: v=1; b=H4sIAOB2aGcC/x3MQQqEMAxA0atI1gZsUBCvIoPYNtVs2qEpooh3t
 7h8i/9vUM7CClNzQ+ZDVFKsMG0Dbl/jxii+Gqij3hAR6qVB0aWoBa3EZS0lYwpo/TB0I5N1xkO
 t/5mDnN95/j3PC3/5rD5pAAAA
X-Change-ID: 20241222-sysfs-const-bin_attr-of-bd5508e2bc1d
To: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 =?utf-8?q?Thomas_Wei=C3=9Fschuh?= <linux@weissschuh.net>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1734899425; l=1524;
 i=linux@weissschuh.net; s=20221212; h=from:subject:message-id;
 bh=tZBypa3Xhggfp0N/igIubpVKE5DDud9KINBtJY41C5c=;
 b=VKDLm/QnePoLR/apEsTjVd8RLdb/4Va8le2e0sqBcOW94BdmoQa+xq6sQ4pNmPGwj/ZoK5KsT
 rnQ/iVTKwKwDzQkLa4H/4BXsuIqQybtDFCzg9+hGux8riqcscKvCfE2
X-Developer-Key: i=linux@weissschuh.net; a=ed25519;
 pk=KcycQgFPX2wGR5azS7RhpBqedglOZVgRPfdFSPB1LNw=

The sysfs core now allows instances of 'struct bin_attribute' to be
moved into read-only memory. Make use of that to protect them against
accidental or malicious modifications.

Signed-off-by: Thomas Weißschuh <linux@weissschuh.net>
---
 drivers/of/kobj.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/of/kobj.c b/drivers/of/kobj.c
index cab9b169dc67f90a5ae8a97bb5d9fbf3f13559ef..aa887166f0d21030d620d43c864ca76cde1c6d05 100644
--- a/drivers/of/kobj.c
+++ b/drivers/of/kobj.c
@@ -29,7 +29,7 @@ const struct kobj_type of_node_ktype = {
 };
 
 static ssize_t of_node_property_read(struct file *filp, struct kobject *kobj,
-				struct bin_attribute *bin_attr, char *buf,
+				const struct bin_attribute *bin_attr, char *buf,
 				loff_t offset, size_t count)
 {
 	struct property *pp = container_of(bin_attr, struct property, attr);
@@ -77,7 +77,7 @@ int __of_add_property_sysfs(struct device_node *np, struct property *pp)
 	pp->attr.attr.name = safe_name(&np->kobj, pp->name);
 	pp->attr.attr.mode = secure ? 0400 : 0444;
 	pp->attr.size = secure ? 0 : pp->length;
-	pp->attr.read = of_node_property_read;
+	pp->attr.read_new = of_node_property_read;
 
 	rc = sysfs_create_bin_file(&np->kobj, &pp->attr);
 	WARN(rc, "error adding attribute %s to node %pOF\n", pp->name, np);

---
base-commit: bcde95ce32b666478d6737219caa4f8005a8f201
change-id: 20241222-sysfs-const-bin_attr-of-bd5508e2bc1d

Best regards,
-- 
Thomas Weißschuh <linux@weissschuh.net>


