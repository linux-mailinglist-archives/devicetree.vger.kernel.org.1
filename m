Return-Path: <devicetree+bounces-22414-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 50D018074C9
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 17:20:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 821BA1C20E88
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 16:20:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 915E64654F;
	Wed,  6 Dec 2023 16:20:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from pegase1.c-s.fr (pegase1.c-s.fr [93.17.236.30])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6B23C137
	for <devicetree@vger.kernel.org>; Wed,  6 Dec 2023 08:20:09 -0800 (PST)
Received: from localhost (mailhub3.si.c-s.fr [192.168.12.233])
	by localhost (Postfix) with ESMTP id 4SljBT1j8vz9v3s;
	Wed,  6 Dec 2023 17:13:37 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
	by localhost (pegase1.c-s.fr [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j29R1s66VDJD; Wed,  6 Dec 2023 17:13:37 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
	by pegase1.c-s.fr (Postfix) with ESMTP id 4SljBQ3nBqz9tLb;
	Wed,  6 Dec 2023 17:13:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id 7D5588B775;
	Wed,  6 Dec 2023 17:13:34 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
	by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
	with ESMTP id tKgdmTAWPCof; Wed,  6 Dec 2023 17:13:34 +0100 (CET)
Received: from PO20335.idsi0.si.c-s.fr (unknown [192.168.233.46])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id 2FAB78B768;
	Wed,  6 Dec 2023 17:13:34 +0100 (CET)
From: Christophe Leroy <christophe.leroy@csgroup.eu>
To: Michael Ellerman <mpe@ellerman.id.au>,
	Nicholas Piggin <npiggin@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Frank Rowand <frowand.list@gmail.com>
Cc: Christophe Leroy <christophe.leroy@csgroup.eu>,
	linux-kernel@vger.kernel.org,
	linuxppc-dev@lists.ozlabs.org,
	devicetree@vger.kernel.org
Subject: [PATCH v1 1/4] of: Add of_machine_compatible_match()
Date: Wed,  6 Dec 2023 17:13:32 +0100
Message-ID: <e6cf01d41502b15e688b6f5aa5c3b68c62b8ac64.1701878821.git.christophe.leroy@csgroup.eu>
X-Mailer: git-send-email 2.41.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1701879211; l=2801; i=christophe.leroy@csgroup.eu; s=20211009; h=from:subject:message-id; bh=c6d/Rx06Kt8Bt1G9rtquAkZe0f2nlHuViMD7F0hL2S4=; b=1f+/wsYwWQjD5pmBu7O+IVQFbcxSbh2ceZui+mlCpSuQo7mjy4uAIzshOFoDg40UJs0Gpei86 XqDnXzbH4InC73ivd8DhRSoDj2sZO72NGEgaXbWqIEWWNBplHv4euCP
X-Developer-Key: i=christophe.leroy@csgroup.eu; a=ed25519; pk=HIzTzUj91asvincQGOFx6+ZF5AoUuP9GdOtQChs7Mm0=
Content-Transfer-Encoding: 8bit

From: Michael Ellerman <mpe@ellerman.id.au>

We have of_machine_is_compatible() to check if a machine is compatible
with a single compatible string. However some code is able to support
multiple compatible boards, and so wants to check for one of many
compatible strings.

So add of_machine_compatible_match() which takes a NULL terminated
array of compatible strings to check against the root node's
compatible property.

Compared to an open coded match this is slightly more self
documenting, and also avoids the caller needing to juggle the root
node either directly or via of_find_node_by_path().

Signed-off-by: Michael Ellerman <mpe@ellerman.id.au>
Signed-off-by: Christophe Leroy <christophe.leroy@csgroup.eu>
---
 drivers/of/base.c  | 21 +++++++++++++++++++++
 include/linux/of.h |  6 ++++++
 2 files changed, 27 insertions(+)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 8d93cb6ea9cd..9020be2eb4d5 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -394,6 +394,27 @@ int of_device_compatible_match(const struct device_node *device,
 }
 EXPORT_SYMBOL_GPL(of_device_compatible_match);
 
+/**
+ * of_machine_compatible_match - Test root of device tree against a compatible array
+ * @compats: NULL terminated array of compatible strings to look for in root node's compatible property.
+ *
+ * Returns true if the root node has any of the given compatible values in its
+ * compatible property.
+ */
+bool of_machine_compatible_match(const char *const *compats)
+{
+	struct device_node *root;
+	int rc = 0;
+
+	root = of_find_node_by_path("/");
+	if (root) {
+		rc = of_device_compatible_match(root, compats);
+		of_node_put(root);
+	}
+
+	return rc != 0;
+}
+
 /**
  * of_machine_is_compatible - Test root of device tree for a given compatible value
  * @compat: compatible string to look for in root node's compatible property.
diff --git a/include/linux/of.h b/include/linux/of.h
index 6a9ddf20e79a..e3418babc203 100644
--- a/include/linux/of.h
+++ b/include/linux/of.h
@@ -403,6 +403,7 @@ extern int of_alias_get_id(struct device_node *np, const char *stem);
 extern int of_alias_get_highest_id(const char *stem);
 
 extern int of_machine_is_compatible(const char *compat);
+bool of_machine_compatible_match(const char *const *compats);
 
 extern int of_add_property(struct device_node *np, struct property *prop);
 extern int of_remove_property(struct device_node *np, struct property *prop);
@@ -808,6 +809,11 @@ static inline int of_remove_property(struct device_node *np, struct property *pr
 	return 0;
 }
 
+static inline bool of_machine_compatible_match(const char *const *compats)
+{
+	return false;
+}
+
 static inline bool of_console_check(const struct device_node *dn, const char *name, int index)
 {
 	return false;
-- 
2.41.0


