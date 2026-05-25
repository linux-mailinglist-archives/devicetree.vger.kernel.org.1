Return-Path: <devicetree+bounces-302428-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SM9sHGjvE2rvHgcAu9opvQ
	(envelope-from <devicetree+bounces-302428-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 08:42:48 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DBB855C6A7B
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 08:42:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 387F6300E3D1
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 06:42:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01B863A4F47;
	Mon, 25 May 2026 06:42:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from inva020.nxp.com (inva020.nxp.com [92.121.34.13])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 408173A5E89;
	Mon, 25 May 2026 06:42:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=92.121.34.13
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779691352; cv=none; b=UTpHGzuALzLQ/2cOeQ2BXDqwfAkbE7B42sdlNp8p5WXC96AmaKI6KYVb02pkni43jFS4TSpep7t2BbovcDcuNs8cTwKBvznt+Oy9GR2apqXYkUxYF/gRyEYZsVXc3YVd2D3MBly8v1iXzaUgk06lu9gsQSqjq6pEh4hoNMLs0sE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779691352; c=relaxed/simple;
	bh=RBT3Smtf8O37uMTKU2xvEuu2KJy/MeHLQffbSoow8Aw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=tZywF+HGmUOQQTuPQtj/uAwxvhyEwglad1PpwxBS52uqoCx0wOc7Z79ne0rtaDu+ife9CPQ6VQlKZTy22AVnlw8Bz7Wx793avA+J+7e1Xvdg77kXIWi9540kpYusJuwYO2BxyzhIJXaUpMA2zmLo27p6du4BSdEiTU0ptzp5xis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; arc=none smtp.client-ip=92.121.34.13
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
Received: from inva020.nxp.com (localhost [127.0.0.1])
	by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 5F33A1A2C9F;
	Mon, 25 May 2026 08:42:22 +0200 (CEST)
Received: from aprdc01srsp001v.ap-rdc01.nxp.com (aprdc01srsp001v.ap-rdc01.nxp.com [165.114.16.16])
	by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 1F3ED1A20F6;
	Mon, 25 May 2026 08:42:22 +0200 (CEST)
Received: from lsv03900.swis.in-blr01.nxp.com (lsv03900.swis.in-blr01.nxp.com [10.12.177.15])
	by aprdc01srsp001v.ap-rdc01.nxp.com (Postfix) with ESMTP id CB51A1800071;
	Mon, 25 May 2026 14:42:20 +0800 (+08)
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
Subject: [PATCH v10 1/9] i3c: master: rename i3c_master_reattach_i3c_dev() to *_locked
Date: Mon, 25 May 2026 12:12:01 +0530
Message-Id: <20260525064209.2263045-2-lakshay.piplani@nxp.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260525064209.2263045-1-lakshay.piplani@nxp.com>
References: <20260525064209.2263045-1-lakshay.piplani@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: ClamAV using ClamSMTP
X-Spamd-Result: default: False [1.64 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[nxp.com : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[vger.kernel.org,lists.infradead.org,bootlin.com,kernel.org,nxp.com,gmail.com];
	RCVD_COUNT_FIVE(0.00)[6];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-302428-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.024];
	FROM_NEQ_ENVFROM(0.00)[lakshay.piplani@nxp.com,devicetree@vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:mid,nxp.com:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Queue-Id: DBB855C6A7B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Rename i3c_master_reattach_i3c_dev() to *_locked() to make the locking
requirement explicit and consistent with other I3C core helpers that
require the bus lock to be held by the caller.

Signed-off-by: Lakshay Piplani <lakshay.piplani@nxp.com>

---
Changes in v10:
 - Rename i3c_master_reattach_i3c_dev() to *_locked to reflect required
   bus locking
---
---
 drivers/i3c/master.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/i3c/master.c b/drivers/i3c/master.c
index 5cd4e5da2233..e89d73508b9a 100644
--- a/drivers/i3c/master.c
+++ b/drivers/i3c/master.c
@@ -1652,8 +1652,8 @@ static int i3c_master_attach_i3c_dev(struct i3c_master_controller *master,
 	return 0;
 }
 
-static int i3c_master_reattach_i3c_dev(struct i3c_dev_desc *dev,
-				       u8 old_dyn_addr)
+static int i3c_master_reattach_i3c_dev_locked(struct i3c_dev_desc *dev,
+					      u8 old_dyn_addr)
 {
 	struct i3c_master_controller *master = i3c_dev_get_master(dev);
 	int ret;
@@ -1742,7 +1742,7 @@ static int i3c_master_early_i3c_dev_add(struct i3c_master_controller *master,
 		goto err_detach_dev;
 
 	i3cdev->info.dyn_addr = i3cdev->boardinfo->init_dyn_addr;
-	ret = i3c_master_reattach_i3c_dev(i3cdev, 0);
+	ret = i3c_master_reattach_i3c_dev_locked(i3cdev, 0);
 	if (ret)
 		goto err_rstdaa;
 
@@ -2358,7 +2358,7 @@ int i3c_master_add_i3c_dev_locked(struct i3c_master_controller *master,
 		if (!ret) {
 			old_dyn_addr = newdev->info.dyn_addr;
 			newdev->info.dyn_addr = expected_dyn_addr;
-			i3c_master_reattach_i3c_dev(newdev, old_dyn_addr);
+			i3c_master_reattach_i3c_dev_locked(newdev, old_dyn_addr);
 		} else {
 			dev_err(&master->dev,
 				"Failed to assign reserved/old address to device %d%llx",
-- 
2.25.1


