Return-Path: <devicetree+bounces-253989-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 35C9CD131E2
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 15:28:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 549E73016A9E
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 14:22:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3C1625A659;
	Mon, 12 Jan 2026 14:21:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="SccmcNR1"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A35112ECD34;
	Mon, 12 Jan 2026 14:21:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.171.202.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768227666; cv=none; b=IWhCUqR1rmjY50SvxmVvLctFj9H3jigz1LWHmaCJ/L682b+l8M0ulHjyPz/B69XGW+LvcZKktgP8LVoGW71DXCQ0tQWsUQQZjfTKfBmb7dXVNubUaJjiRGUQwVMr3xgXauYGXTYrJJ8Gj7YrMucLjg4LtrkC+JWmLY9KTWMsm5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768227666; c=relaxed/simple;
	bh=M6wzRazgjLFhzqVroXSpKrrVzyrsDcHr9GnwSuZiXqE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=pM1Zcd5KQtefjLw0dXgkZG6XQk3+ckO6Y6fW+fipc8ucglTMRQ9ngvuILUZO2n+rO8RbGbz8rIv/K3goz825duCgkjWcaKSM9vrIcksgUNSLyGD7seOirAfpFVnDi2dqvwkjb4a1iqj/ISEOkeAv/l5hJZDw+HpAATEmMRjtmlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=SccmcNR1; arc=none smtp.client-ip=185.171.202.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id B8C8DC20869;
	Mon, 12 Jan 2026 14:20:32 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 3CBBE606FA;
	Mon, 12 Jan 2026 14:20:59 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 476E7103C9264;
	Mon, 12 Jan 2026 15:20:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1768227658; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding:in-reply-to:references;
	bh=EIyB/EHU24MdE3qIWWskCx/gYfNdFh0BY/5BKh5Lhr8=;
	b=SccmcNR1jbQ8AJLjQe1YA5yNhPDH8Dy88QjW+N69YsuExhqCCo5r7cfmeNRe9YqwrVD1TC
	Tm7dRl+uv5oepmUJNxJChFfHJcj9hOA20GSml/Wf+PmM9MYSp9MvRXIsl1Y+CE2XPexoI3
	FAQJ7XSxoYg5d+NNC9on+FicGAzhTxy0cFVZMNU+6G2oeIc6NobDBcezgxfjXn5LKN2EfN
	nQpdMiqDLDXPtsH4kKmLDSxB9SRLZzCXeRT3mbjvOBUw97/jMppG2Su2KoiT7DGEs0n4E5
	59l06emiEoD525N2iQuu3AKe+Fd/mp9hcmL4/jJL8U01By8+92P7F/PFGPenqw==
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
Subject: [RFC PATCH 24/77] dtc: Introduce update_exports_ref()
Date: Mon, 12 Jan 2026 15:19:14 +0100
Message-ID: <20260112142009.1006236-25-herve.codina@bootlin.com>
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

In order to have consistent internal data when a export symbol using a
local phandle is parsed from a dtb, the reference related to this
phandle usage needs to be updated based on the phandle value.

This is done for phandles used by properties in update_phandles_ref().

The same operation is needed for export symbols. This is the purpose of
update_exports_ref().

Signed-off-by: Herve Codina <herve.codina@bootlin.com>
---
 dtc.c      |  1 +
 dtc.h      |  1 +
 livetree.c | 30 ++++++++++++++++++++++++++++++
 3 files changed, 32 insertions(+)

diff --git a/dtc.c b/dtc.c
index 030bfa2..e0a0b54 100644
--- a/dtc.c
+++ b/dtc.c
@@ -336,6 +336,7 @@ int main(int argc, char *argv[])
 	update_phandles_ref(dti);
 	mark_local_phandles(dti);
 
+	update_exports_ref(dti);
 	mark_local_exports(dti);
 
 	/*
diff --git a/dtc.h b/dtc.h
index ea073c2..024e172 100644
--- a/dtc.h
+++ b/dtc.h
@@ -368,6 +368,7 @@ void generate_local_fixups_tree(struct dt_info *dti, const char *name);
 void update_phandles_ref(struct dt_info *dti);
 void mark_local_phandles(struct dt_info *dti);
 
+void update_exports_ref(struct dt_info *dti);
 void mark_local_exports(struct dt_info *dti);
 
 /* Checks */
diff --git a/livetree.c b/livetree.c
index 0e756b8..7cf3ee5 100644
--- a/livetree.c
+++ b/livetree.c
@@ -1304,6 +1304,36 @@ void mark_local_phandles(struct dt_info *dti)
 	mark_local_phandles_internal(dti, dti->dt);
 }
 
+static void update_exports_ref_internal(struct dt_info *dti, struct node *node)
+{
+	struct node *c;
+	struct symbol *exportsym;
+	struct node *refnode;
+
+	for_each_symbol(node->exportsymlist, exportsym) {
+		if (exportsym->ref)
+			continue;
+
+		if (exportsym->is_local) {
+			refnode = get_node_by_phandle(dti->dt, exportsym->phandle);
+			if (!refnode)
+				die("Node not found for phandle 0x%"PRIx32"\n", exportsym->phandle);
+
+			exportsym->ref = refnode->fullpath;
+		} else {
+			die("Found a non local phandle without a reference\n");
+		}
+	}
+
+	for_each_child(node, c)
+		update_exports_ref_internal(dti, c);
+}
+
+void update_exports_ref(struct dt_info *dti)
+{
+	update_exports_ref_internal(dti, dti->dt);
+}
+
 static void mark_local_exports_internal(struct dt_info *dti,
 					struct node *node)
 {
-- 
2.52.0


