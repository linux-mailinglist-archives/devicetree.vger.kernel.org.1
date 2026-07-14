Return-Path: <devicetree+bounces-326047-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id SYJTAe8AVmoWxwAAu9opvQ
	(envelope-from <devicetree+bounces-326047-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 11:27:11 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 749B9752D50
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 11:27:10 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326047-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-326047-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=fail reason="SPF not aligned (relaxed), No valid DKIM" header.from=nxp.com (policy=none);
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E23E83021777
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 09:27:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CA5243F8BC;
	Tue, 14 Jul 2026 09:26:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from inva021.nxp.com (inva021.nxp.com [92.121.34.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA96043E9DC;
	Tue, 14 Jul 2026 09:26:51 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784021215; cv=none; b=cK6UO7+jj/RoFLlYI1plY8oXnKYgK4cIf6JsyE9ET7ESJ80wLYkBxVPVvkjC9K223F7Rfw7Y6kAV09posdUmTeb9PSxwEG6uyLsRbjVkmr4+1rA8YtGZHubqy2Yvxs+QinoCDp0LepKdMZBQLUK5tk5NQtC4aRVFE/sOWcIlPQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784021215; c=relaxed/simple;
	bh=e+PnxNrFcZ9v99XHoxtUNVZ+jjac/BrVBw5roYfXrSQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=pzPlYW0PUqk6WC0bjZG0ZCHmfs9UUNZLWzz0LReOV9A4CI/brmLB4t3dB7f6aCvD3A8d+wobHmGnaVwWYCxHlBsMHO5dV2dYkTvtFoGU7PWS0Jj9tq5m7Gp+KkZaRsCyLoGKyav9vItCFxZ7PGV5+EZUBvK3v5i0IIqPm2CEqSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; arc=none smtp.client-ip=92.121.34.21
Received: from inva021.nxp.com (localhost [127.0.0.1])
	by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 92A25200053;
	Tue, 14 Jul 2026 11:21:01 +0200 (CEST)
Received: from aprdc01srsp001v.ap-rdc01.nxp.com (aprdc01srsp001v.ap-rdc01.nxp.com [165.114.16.16])
	by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 5ADE320004C;
	Tue, 14 Jul 2026 11:21:01 +0200 (CEST)
Received: from lsv03900.swis.in-blr01.nxp.com (lsv03900.swis.in-blr01.nxp.com [10.12.177.15])
	by aprdc01srsp001v.ap-rdc01.nxp.com (Postfix) with ESMTP id 05BDE18000B5;
	Tue, 14 Jul 2026 17:20:59 +0800 (+08)
From: Lakshay Piplani <lakshay.piplani@nxp.com>
To: linux-kernel@vger.kernel.org,
	linux-i3c@lists.infradead.org,
	alexandre.belloni@bootlin.com,
	krzk+dt@kernel.org,
	robh@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	broonie@kernel.org,
	lee@kernel.org,
	Frank.Li@nxp.com,
	lgirdwood@gmail.com
Cc: vikash.bansal@nxp.com,
	priyanka.jain@nxp.com,
	aman.kumarpandey@nxp.com,
	Lakshay Piplani <lakshay.piplani@nxp.com>
Subject: [PATCH v14 2/8] i3c: master: Fix IBI request and free cleanup paths
Date: Tue, 14 Jul 2026 14:50:47 +0530
Message-Id: <20260714092053.2461482-3-lakshay.piplani@nxp.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260714092053.2461482-1-lakshay.piplani@nxp.com>
References: <20260714092053.2461482-1-lakshay.piplani@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: ClamAV using ClamSMTP
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.64 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[nxp.com : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-326047-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:linux-kernel@vger.kernel.org,m:linux-i3c@lists.infradead.org,m:alexandre.belloni@bootlin.com,m:krzk+dt@kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:broonie@kernel.org,m:lee@kernel.org,m:Frank.Li@nxp.com,m:lgirdwood@gmail.com,m:vikash.bansal@nxp.com,m:priyanka.jain@nxp.com,m:aman.kumarpandey@nxp.com,m:lakshay.piplani@nxp.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[lakshay.piplani@nxp.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[vger.kernel.org,lists.infradead.org,bootlin.com,kernel.org,nxp.com,gmail.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lakshay.piplani@nxp.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	R_DKIM_NA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:from_mime,nxp.com:email,nxp.com:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 749B9752D50

i3c_dev_request_ibi_locked() allocates the generic IBI object and its
workqueue before calling the controller request_ibi() callback. If the
callback fails, destroy the workqueue before freeing the IBI object.

Also, a controller callback may clear dev->ibi while forwarding the request
or free operation to another controller. Avoid touching dev->ibi after the
callback if it has already been cleared.

This prevents a workqueue leak in the request failure path and avoids NULL
pointer dereference in the free path when the callback has already released
the IBI object.

Signed-off-by: Lakshay Piplani <lakshay.piplani@nxp.com>
Signed-off-by: Vikash Bansal <vikash.bansal@nxp.com>
Signed-off-by: Aman Kumar Pandey <aman.kumarpandey@nxp.com>

---
Changes in v14:
 - Destroy the allocated IBI workqueue when request_ibi() callback fails
 - Avoid touching dev->ibi after request/free callbacks if a forwarding
   controller callback has already cleared it
---
---
 drivers/i3c/master.c | 21 +++++++++++++++++++--
 1 file changed, 19 insertions(+), 2 deletions(-)

diff --git a/drivers/i3c/master.c b/drivers/i3c/master.c
index 2cb94face156..01c6e048485c 100644
--- a/drivers/i3c/master.c
+++ b/drivers/i3c/master.c
@@ -3499,8 +3499,18 @@ int i3c_dev_request_ibi_locked(struct i3c_dev_desc *dev,
 
 	dev->ibi = ibi;
 	ret = master->ops->request_ibi(dev, req);
-	if (ret) {
-		kfree(ibi);
+
+	/*
+	 * The controller callback may have already released and cleared dev->ibi
+	 * when the request is forwarded by a virtual controller. Only clean up the
+	 * IBI object if the callback left dev->ibi valid.
+	 */
+	if (ret && dev->ibi) {
+		/* Avoid leaking the workqueue allocated for this IBI request. */
+		if (dev->ibi->wq)
+			destroy_workqueue(dev->ibi->wq);
+
+		kfree(dev->ibi);
 		dev->ibi = NULL;
 	}
 
@@ -3540,6 +3550,13 @@ void i3c_dev_free_ibi_locked(struct i3c_dev_desc *dev)
 
 	master->ops->free_ibi(dev);
 
+	/*
+	 * The controller callback may have already released dev->ibi, for example
+	 * when the request was forwarded by a virtual controller.
+	 */
+	if (!dev->ibi)
+		return;
+
 	if (dev->ibi->wq) {
 		destroy_workqueue(dev->ibi->wq);
 		dev->ibi->wq = NULL;
-- 
2.25.1


