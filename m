Return-Path: <devicetree+bounces-254007-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 94889D132BD
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 15:35:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5312E30119D9
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 14:25:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6358361DB4;
	Mon, 12 Jan 2026 14:21:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="HgwDg9J0"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EEB82E06E6;
	Mon, 12 Jan 2026 14:21:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.85.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768227691; cv=none; b=XXi/BuUcwF4moL/KDFe7JQeF9Vdr7PQn3UQehg/E43RF8Xy+au0UXSPC4lfjO04C4htWlyAXJLgg6Bt2ZvSVxm2wmJhSrdm4nM25SyBUAp5M+0tMFX0oeRWESLf1QGraeNeoQEyjIPuwo6a1LFyB/BMYxMs7h9cJuiHyeOpXipk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768227691; c=relaxed/simple;
	bh=UJOe9J058M+QPWpZkQ3InJqQgg3Eq3lRdII7sc3pcIc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=p56HWhcDOTU5QXVp9MA7iyaFC0mMzvg/58Q+NpHGsc8iZRV2HOnIwjoyclcgA0Kqrj5tYRXNwoVsx+fH8OCt8mbn6Z7rimmLrgktcrR0WuPLZTKdpxzKmD4sPisiZKL44ouN6Wwfh7cKtleqDYJ1911YPtDynJg7ksOQjLhcMY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=HgwDg9J0; arc=none smtp.client-ip=185.246.85.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 69F164E42097;
	Mon, 12 Jan 2026 14:21:24 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 419AB606FA;
	Mon, 12 Jan 2026 14:21:24 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 70A06103C9268;
	Mon, 12 Jan 2026 15:21:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1768227683; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding:in-reply-to:references;
	bh=CaiWFh7u9sbz5mmN+4mQtbyp1ymuZidFap1qL6WWEwo=;
	b=HgwDg9J06FLcqogIbabhjc0P0poM7pxIisEAXaTi/xCaWBTenrZgOmgqUWA+pJON97ErIK
	Fl2lUzn2GDe2Nj+EmbfLvjc5yBKv+nVBf6B6e1Wh/eI8F64X8flQYqGOHG4JxrngRWStmL
	QMG5x892evpuz0hl6zCefg3+kSdbTO0hvbNqwIMzS7gALj2okqILmfZ8e+bHwtH1Dso9ju
	955rQ11u2H13Ek69vGXXDACFPMzRsZOkQGsw3fP79hjWX0m1ftNDflPQApNE6VX4Czd/XX
	YA0hFwuZNC685y29czQuE7dyyVyeBha+kLDKNO4945a1X+eer/pPvY8wrmDiyg==
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
Subject: [RFC PATCH 41/77] dtc: Introduce dti_get_node_by_label()
Date: Mon, 12 Jan 2026 15:19:31 +0100
Message-ID: <20260112142009.1006236-42-herve.codina@bootlin.com>
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

The future introduction of orphan nodes for addons device-tree will lead
to more than one tree in the addons data. Those trees will be:
  - the classical root tree starting at the root node
  - trees related to orphan nodes

Also, an addon device-tree can have only trees based on orphan nodes. In
other words an addon device-tree is valid without having the classical
'root' tree.

To prepare this change, introduce and use dti_get_node_by_label().

dti_get_node_by_label() retrieves a node by its label like
get_node_by_label() but it works at the struct dt_info level.

It handles the case where a 'root' device-tree is not present and will
handle orphan nodes trees as soon as they will be introduced.

This introduction doesn't lead to any functional changes.

Signed-off-by: Herve Codina <herve.codina@bootlin.com>
---
 checks.c   |  2 +-
 dtc.h      |  2 +-
 livetree.c | 15 ++++++++++++++-
 3 files changed, 16 insertions(+), 3 deletions(-)

diff --git a/checks.c b/checks.c
index b2b1bf7..a76e96a 100644
--- a/checks.c
+++ b/checks.c
@@ -444,7 +444,7 @@ static void check_duplicate_label(struct check *c, struct dt_info *dti,
 	struct property *otherprop = NULL;
 	struct marker *othermark = NULL;
 
-	othernode = get_node_by_label(dt, label);
+	othernode = dti_get_node_by_label(dti, label);
 
 	if (!othernode)
 		otherprop = get_property_by_label(dt, label, &othernode);
diff --git a/dtc.h b/dtc.h
index 8ba093f..3dce237 100644
--- a/dtc.h
+++ b/dtc.h
@@ -323,7 +323,6 @@ struct property *get_property_by_label(struct node *tree, const char *label,
 struct marker *get_marker_label(struct node *tree, const char *label,
 				struct node **node, struct property **prop);
 struct node *get_subnode(struct node *node, const char *nodename);
-struct node *get_node_by_label(struct node *tree, const char *label);
 struct node *get_node_by_phandle(struct node *tree, cell_t phandle);
 struct node *get_node_by_ref(struct node *tree, const char *ref);
 cell_t get_node_phandle(struct node *root, struct node *node);
@@ -357,6 +356,7 @@ struct dt_info {
 };
 
 struct node *dti_get_node_by_path(struct dt_info *dti, const char *path);
+struct node *dti_get_node_by_label(struct dt_info *dti, const char *label);
 
 /* DTS version flags definitions */
 #define DTSF_V1		0x0001	/* /dts-v1/ */
diff --git a/livetree.c b/livetree.c
index 23ba957..771ff3d 100644
--- a/livetree.c
+++ b/livetree.c
@@ -685,7 +685,7 @@ static struct node *get_node_by_path(struct node *tree, const char *path)
 	return NULL;
 }
 
-struct node *get_node_by_label(struct node *tree, const char *label)
+static struct node *get_node_by_label(struct node *tree, const char *label)
 {
 	struct node *child, *node;
 	struct label *l;
@@ -798,6 +798,19 @@ struct node *dti_get_node_by_path(struct dt_info *dti, const char *path)
 	return NULL;
 }
 
+struct node *dti_get_node_by_label(struct dt_info *dti, const char *label)
+{
+	struct node *node;
+
+	if (dti->dt) {
+		node = get_node_by_label(dti->dt, label);
+		if (node)
+			return node;
+	}
+
+	return NULL;
+}
+
 static void add_phandle_property(struct node *node,
 				 const char *name, int format)
 {
-- 
2.52.0


