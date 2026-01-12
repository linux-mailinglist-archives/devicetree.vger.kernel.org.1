Return-Path: <devicetree+bounces-253990-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7670BD132A8
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 15:34:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A280A303272B
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 14:23:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D248135C19B;
	Mon, 12 Jan 2026 14:21:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="FvI1FgiV"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F03B22DE70C;
	Mon, 12 Jan 2026 14:21:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.171.202.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768227667; cv=none; b=Vap+4z6d90y8fgJTzrFCjgN1fFD91CERoHfqSs+USlkvRLYz2puhVF37mPiHenQkmNwI1rk0pF4xL6kjUXZfP7hSQqUEROBPKJTiZ4SYYjFPn9O9FAzwQA1rxSBk6vIE0rPi/NfEbONWSZzpc7ocQQiT56PdR/ZI/vmoAF3A3iM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768227667; c=relaxed/simple;
	bh=nniPvKcWEi4LfAC3oR0MW3FHuw9UeRhJz/7mnfTVxSQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Zc772qiJPFZ1Ngv4D+xtqxofAzhV4Geh3864IpdgAuZwNjEo9Br6oN9ImhlatoCaQTWIaF/crp2BPfZpBP5nUpH2yLFnKC3DaYZBdD1Rid4ocY7T09ETPpTk4xuG4xfEgkfruvTXl47elSkrgNr5G0KKEvOHeUnZB8R76b+kBg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=FvI1FgiV; arc=none smtp.client-ip=185.171.202.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 3049EC2086B;
	Mon, 12 Jan 2026 14:20:38 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id A8723606FA;
	Mon, 12 Jan 2026 14:21:04 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 10082103C9280;
	Mon, 12 Jan 2026 15:21:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1768227663; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding:in-reply-to:references;
	bh=iEuhMiG7AJAvgbNC6ER9xCpEGPNZd1hu0Nn4zQ6EPeA=;
	b=FvI1FgiVlJxeGRt0eclmys0iC3nYIL450BFJer9/TPmSa5a4KmIj8JbXjsIM0kYMvLzy6F
	mXh0OAXs3R+SlLQwMCWsVePG0n1Bpdbpecs8r8dUdaSBdgbbSE0eP+9d7Bx8sfOoFIkrT3
	KgiS1OSIIgctN0IEKOh3tgbKwmcSr2ab6EJD+QB6GdtSIPWvxMaXLPuondmO/p5eC014oL
	uHtDdp+ANMqvcMGA4P6W8lmzwK5awYPEWEubxMRnRYNjU8o/qA225NGdeJI0TTBDTKEE9e
	Jtt0pLtvLkNnPfaVRVd3dEjkpcVWFFAi5iyhBFn4lclft7zh7p0UJgaxUSdFnA==
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
Subject: [RFC PATCH 27/77] dtc: Add support for export symbols sorting
Date: Mon, 12 Jan 2026 15:19:17 +0100
Message-ID: <20260112142009.1006236-28-herve.codina@bootlin.com>
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

dtc can sort items when the command line --sort option is set.

Add support for export symbols sorting when this option is used.

Signed-off-by: Herve Codina <herve.codina@bootlin.com>
---
 livetree.c | 37 +++++++++++++++++++++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/livetree.c b/livetree.c
index 7efa1da..1de5990 100644
--- a/livetree.c
+++ b/livetree.c
@@ -916,6 +916,42 @@ static void sort_properties(struct node *node)
 	free(tbl);
 }
 
+static int cmp_symbol(const void *ax, const void *bx)
+{
+	const struct symbol *a, *b;
+
+	a = *((const struct symbol * const *)ax);
+	b = *((const struct symbol * const *)bx);
+
+	return strcmp(a->name, b->name);
+}
+
+static void sort_exportsyms(struct node *node)
+{
+	int n = 0, i = 0;
+	struct symbol *symbol, **tbl;
+
+	for_each_symbol(node->exportsymlist, symbol)
+		n++;
+
+	if (n == 0)
+		return;
+
+	tbl = xmalloc(n * sizeof(*tbl));
+
+	for_each_symbol(node->exportsymlist, symbol)
+		tbl[i++] = symbol;
+
+	qsort(tbl, n, sizeof(*tbl), cmp_symbol);
+
+	node->exportsymlist = tbl[0];
+	for (i = 0; i < (n-1); i++)
+		tbl[i]->next = tbl[i+1];
+	tbl[n-1]->next = NULL;
+
+	free(tbl);
+}
+
 static int cmp_subnode(const void *ax, const void *bx)
 {
 	const struct node *a, *b;
@@ -957,6 +993,7 @@ static void sort_node(struct node *node)
 	struct node *c;
 
 	sort_properties(node);
+	sort_exportsyms(node);
 	sort_subnodes(node);
 	for_each_child_withdel(node, c)
 		sort_node(c);
-- 
2.52.0


