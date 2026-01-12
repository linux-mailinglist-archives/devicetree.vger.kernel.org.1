Return-Path: <devicetree+bounces-254015-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 41373D13329
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 15:38:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 549D730CBA4D
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 14:27:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0AAE8366DAF;
	Mon, 12 Jan 2026 14:21:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="j2pXUTvN"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A13CC2E7BCC;
	Mon, 12 Jan 2026 14:21:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.171.202.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768227704; cv=none; b=pxhzAcP8A7D7ldVYfQw74IXELhLnNY7KtFqwqpTimm6iRFMX4EKqMbOOpBZA2zxkJrzRZGMZuUBQn1dXgVIkCxI0IF+NxQFjBvMNrSJCzc3C/okJmd8lpofHEb/OvhSHnLQaRW+2mM61u2LfJbhCC/r/XARXnrBrZcq2JgnMVFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768227704; c=relaxed/simple;
	bh=emz6BTfiZT39QJRtAInNNGDoqzeKXs1k4yodIzfFbMc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=lXt7cVTb6bWpQnjvY5gDlwc+I0pNbyoIHaVlbwSe3vCfaSG36ZwgLUNlIaBvEUPOlyPvEumqbtUZqqOufOi88omwhUQnAtSHWc6DDZl01s1UgnU2YztsyIvawNi5LVBxKyH0ql8qcGvekjDq4BBJ4Z9FC6BoXKWl9nTL7Z2HKf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=j2pXUTvN; arc=none smtp.client-ip=185.171.202.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id D782FC20868;
	Mon, 12 Jan 2026 14:21:12 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 5AFBA606FA;
	Mon, 12 Jan 2026 14:21:39 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id CBF7B103C8CD8;
	Mon, 12 Jan 2026 15:21:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1768227698; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding:in-reply-to:references;
	bh=t9eg9xhAykBraJlN9d8iype3cA15Fcc1FzDy86VUk+Y=;
	b=j2pXUTvNwOWF/XjA0ZsrozI3E54u/80Uvc3Fkr50cdFSzyRcWBX1FH+bD8DRZ03UMGg/RV
	3ctqwmb4JKc0RkVDlSWz3SI05o3GDglha87fgN9tjxLZtgH69c56q3udoZJ8sxx8mtNmuI
	mtVFFRwL4SmQkLvMSBQbwAnoxMbFkkVVa58rVm1gOkZu4Vyx9DF5msJsXR02Bq3yFvuR5B
	tJlvAkxUGqreQlVXAfbnl5P3//Yh7XPgpgHqdlptuvNC3d6dXEqe2/AEztNSO6bi/C1IvG
	pUx4+yw/QLzRa7TI8mqW3grLF11mp5QJVDy6F9LenS8DeHmwlzyENG9XV0UF+Q==
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
Subject: [RFC PATCH 51/77] dtc: Avoid NULL fullpath for nodes in orphan trees
Date: Mon, 12 Jan 2026 15:19:41 +0100
Message-ID: <20260112142009.1006236-52-herve.codina@bootlin.com>
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

Orphan nodes have been introduced recently.

The process_checks() function uses fullpath in several places and
crashes due NULL pointer dereferences if fullpath is NULL.

In order to have process_checks() function running without crashes with
orphan trees (i.e. trees based on orphan nodes), the fullpath of node
available in those orphan trees must not be NULL.

Fullpath values are built by dti_fill_fullpaths(). Update it to handle
fullpath in trees based on orphan nodes.

Use a simple "__orphan__/" prefix to avoid the NULL pointer and to be
distinct from the root node ("/" prefix).

It is worth noting that this "__orphan__/" prefix is a temporary prefix
and it will be change later when support for reference by path involving
nodes in orphan tree is added.

Signed-off-by: Herve Codina <herve.codina@bootlin.com>
---
 dtc.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/dtc.c b/dtc.c
index 59f4d77..5cf8f31 100644
--- a/dtc.c
+++ b/dtc.c
@@ -47,9 +47,14 @@ static void fill_fullpaths(struct node *tree, const char *prefix)
 
 static void dti_fill_fullpaths(struct dt_info *dti)
 {
+	struct node *orphan;
+
 	/* Fill fullpaths for the root node */
 	if (dti->dt)
 		fill_fullpaths(dti->dt, "");
+
+	for_each_orphan(dti->orphanlist, orphan)
+		fill_fullpaths(orphan, "__orphan__/");
 }
 
 /* Usage related data. */
-- 
2.52.0


