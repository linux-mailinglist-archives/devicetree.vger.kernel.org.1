Return-Path: <devicetree+bounces-253970-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EB64D1315A
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 15:21:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 61CEC302573D
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 14:20:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E41B8294A10;
	Mon, 12 Jan 2026 14:20:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="1zHUYbzr"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A5CD25D1E9
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 14:20:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.84.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768227636; cv=none; b=VPGHHhQq6gPjoNELckWqNkdwsSvATfjyuWCqgwiClyoDb3w0itnrPjlRuyG5S1Z33xqcvXHFjLL2QMnELgtxlcZc5dkl0LeifYn1y1svquiUJ65YKHbA+xxiCBomqA+8aCaoYhm3DZdQ9X7P88iHaavKuOpG6poFv/xWEP/giFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768227636; c=relaxed/simple;
	bh=5s4MfuH6bV1kFmHdaAlJjhLcHBaKKPUQ+j0TcMZDzMg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=LkLzUn+/KA3iiYuFlgln0oC0qFrPtfzot20HdSb3qvTTX0YqpevhJfE+pJcG6HvQYvPz88nS4T/p+Vn8p8kkVKSIdC4fMi5g+UY2MH7Cr6BPDXZ35ejhX8xoVRGhenPq2D0orlyyQF9PQJae63PGBQ4ynXFtqeD+52rRR0IpJO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=1zHUYbzr; arc=none smtp.client-ip=185.246.84.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id D2C121A27F4;
	Mon, 12 Jan 2026 14:20:33 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id A92D8606FA;
	Mon, 12 Jan 2026 14:20:33 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 8EBB8103C8C61;
	Mon, 12 Jan 2026 15:20:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1768227632; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding:in-reply-to:references;
	bh=oKTQDhMRl0VW80WOH8cTeTsgqrNdBUCiZDYFcFk7Fcg=;
	b=1zHUYbzrT9AfAl2lPr9xVXcmUWw+byCIy28LOsoET0K0pNtqIoL0/rZ7qhiftLKgKBMjfr
	I1B7j3jgYEueY6YBYtkbwuC80XBSfMLbdi3fNuH4pZN24bFR0m7sP1sB0H1+7mB/e1185J
	RR1EtT/6fnDmFhwzikuVTPoTuf9rICg33QHoavqZGDp7yRjEpMIlU5avAuOKDUn42Grc9z
	11iZvcUBZf2Hgbz4gYDk8DyajNF9WEJtrN4vnckmZEWm4JMywzx/LeSkQZmCrx/AEEFi75
	PhpMTiJJkfrwb5nHFiYGH8kQwTyuhfVRLH8b9bN2udQM/XW69V4LsMvT0h178g==
From: Herve Codina <herve.codina@bootlin.com>
To: David Gibson <david@gibson.dropbear.id.au>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Ayush Singh <ayush@beagleboard.org>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	devicetree-compiler@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree-spec@vger.kernel.org,
	Hui Pu <hui.pu@gehealthcare.com>,
	Ian Ray <ian.ray@gehealthcare.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Herve Codina <herve.codina@bootlin.com>
Subject: [RFC PATCH 07/77] livetree: Improve get_node_by_phandle()
Date: Mon, 12 Jan 2026 15:18:57 +0100
Message-ID: <20260112142009.1006236-8-herve.codina@bootlin.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260112142009.1006236-1-herve.codina@bootlin.com>
References: <20260112142009.1006236-1-herve.codina@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3

get_node_by_phandle() allows to get a node based on its phandle value.
It checks the phandle value against value available in internal node
structure.

This internal phandle value is updated during process_check() and so,
get_node_by_phandle() cannot give correct results before the
process_check() call.

Improve get_node_by_phandle() to look at node phandle properties when
the internal phandle value is not valid.

This allows to return a correct matching node even if process_check()
was not called yet.

With the recently introduced FDT_REF_LOCAL dtb tag, this will be needed
to update internal phandle references before the call to process_check().
Indeed, this tag allows to identify phandles and internal references
need to be updated based on the phandle value before the
process_check() call.

Signed-off-by: Herve Codina <herve.codina@bootlin.com>
---
 livetree.c | 21 ++++++++++++++++++++-
 1 file changed, 20 insertions(+), 1 deletion(-)

diff --git a/livetree.c b/livetree.c
index f328824..9b67934 100644
--- a/livetree.c
+++ b/livetree.c
@@ -609,16 +609,35 @@ struct node *get_node_by_label(struct node *tree, const char *label)
 	return NULL;
 }
 
+static cell_t get_node_phandle_existing(struct node *node)
+{
+	struct property *prop;
+
+	if (phandle_is_valid(node->phandle))
+		return node->phandle;
+
+	prop = get_property(node, "phandle");
+	if (!prop) {
+		prop = get_property(node, "linux,phandle");
+		if (!prop)
+			return 0;
+	}
+
+	return propval_cell(prop);
+}
+
 struct node *get_node_by_phandle(struct node *tree, cell_t phandle)
 {
 	struct node *child, *node;
+	cell_t tree_phandle;
 
 	if (!phandle_is_valid(phandle)) {
 		assert(generate_fixups);
 		return NULL;
 	}
 
-	if (tree->phandle == phandle) {
+	tree_phandle = get_node_phandle_existing(tree);
+	if (phandle_is_valid(tree_phandle) && tree_phandle == phandle) {
 		if (tree->deleted)
 			return NULL;
 		return tree;
-- 
2.52.0


