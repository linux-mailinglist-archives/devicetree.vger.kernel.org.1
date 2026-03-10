Return-Path: <devicetree+bounces-273287-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2GpAIujAr2kucAIAu9opvQ
	(envelope-from <devicetree+bounces-273287-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 07:57:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E3B652460A4
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 07:57:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 854C83053BB6
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 06:57:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B67429993D;
	Tue, 10 Mar 2026 06:57:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from inva021.nxp.com (inva021.nxp.com [92.121.34.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 406A632D0CC;
	Tue, 10 Mar 2026 06:57:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=92.121.34.21
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773125860; cv=none; b=X/RXQUXrEu88e1k7z8UFE2GilVNYyhB9UWyUCJ4NAL38/6HqaA70p+qDKk2x5KO2A1u5LivGrijyxnSM9OT45v9ydkQ8IwYNZgTVA+6mRAVNcstlrNs7CA8Auv3BDVRkLpOUsXBBJWmWsORwXTPqEOSvluVT6Y5YvhPE4uSSgKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773125860; c=relaxed/simple;
	bh=DXQLbcaAhRAGOs2uWsZzaAwhod1Q8tJO7LXEIVe58S0=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=RSFYpFMivGCSrWvL4qHmQOi1qi08/hFDgZd2gEfR/7iXeFHLnv+qONtYqfaTY1G6Y8W2SsupUSOyrDbC6029YE959QZ36Qfx4EkRZzplkTCFXjZLiNlTDHBwIwM9W9b2E9ny38T7QRvPJ91u0Wj1Acwq6DlouRUAcIsDaOE8oK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; arc=none smtp.client-ip=92.121.34.21
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
Received: from inva021.nxp.com (localhost [127.0.0.1])
	by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id DBA62201F02;
	Tue, 10 Mar 2026 07:57:30 +0100 (CET)
Received: from aprdc01srsp001v.ap-rdc01.nxp.com (aprdc01srsp001v.ap-rdc01.nxp.com [165.114.16.16])
	by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id B04ED201F1D;
	Tue, 10 Mar 2026 07:57:30 +0100 (CET)
Received: from lsv03900.swis.in-blr01.nxp.com (lsv03900.swis.in-blr01.nxp.com [10.12.177.15])
	by aprdc01srsp001v.ap-rdc01.nxp.com (Postfix) with ESMTP id 63D6A18000B0;
	Tue, 10 Mar 2026 14:57:29 +0800 (+08)
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
	lakshay.piplani@nxp.com
Subject: [PATCH v6 1/7] i3c: master: Expose the APIs to support I3C hub
Date: Tue, 10 Mar 2026 12:27:21 +0530
Message-Id: <20260310065727.3759342-1-lakshay.piplani@nxp.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: ClamAV using ClamSMTP
X-Rspamd-Queue-Id: E3B652460A4
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.64 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[nxp.com : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273287-lists,devicetree=lfdr.de];
	TO_DN_NONE(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[vger.kernel.org,lists.infradead.org,bootlin.com,kernel.org,nxp.com,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[lakshay.piplani@nxp.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,nxp.com:mid,nxp.com:email]
X-Rspamd-Action: no action

From: Aman Kumar Pandey <aman.kumarpandey@nxp.com>

Expose the below APIs to support I3C hub.

1) i3c_dev_enable_ibi_locked()
2) i3c_dev_disable_ibi_locked()
3) i3c_dev_request_ibi_locked()
4) i3c_dev_free_ibi_locked()
5) i3c_master_reattach_i3c_dev()

Signed-off-by: Aman Kumar Pandey <aman.kumarpandey@nxp.com>

---
Changes in v6:
 - Split the patch into two parts:
        1) expose the existing API
        2) add new APIs.

Changes in v5:
 - No change

Changes in v4:
 - Updated I3C master to handle hub support
---
---
 drivers/i3c/master.c       | 70 ++++++++++++++++++++++++++++++++++++--
 include/linux/i3c/master.h |  2 ++
 2 files changed, 70 insertions(+), 2 deletions(-)

diff --git a/drivers/i3c/master.c b/drivers/i3c/master.c
index 9e6be49bebb2..886637757c26 100644
--- a/drivers/i3c/master.c
+++ b/drivers/i3c/master.c
@@ -1619,8 +1619,23 @@ static int i3c_master_attach_i3c_dev(struct i3c_master_controller *master,
 	return 0;
 }
 
-static int i3c_master_reattach_i3c_dev(struct i3c_dev_desc *dev,
-				       u8 old_dyn_addr)
+/**
+ * i3c_master_reattach_i3c_dev() - reattach an I3C device with a new address
+ * @dev: I3C device descriptor to reattach
+ * @old_dyn_addr: previous dynamic address of the device
+ *
+ * This function reattaches an existing I3C device to the bus when its dynamic
+ * address has changed. It updates the bus address slot status accordingly:
+ * - Marks the new dynamic address as occupied by an I3C device.
+ * - Frees the old dynamic address slot if applicable.
+ *
+ * This function must be called with the bus lock held in write mode.
+ *
+ * Return: 0 on success, or a negative error code if reattachment fails
+ *         (e.g. -EBUSY if the new address slot is not free).
+ */
+int i3c_master_reattach_i3c_dev(struct i3c_dev_desc *dev,
+				u8 old_dyn_addr)
 {
 	struct i3c_master_controller *master = i3c_dev_get_master(dev);
 	int ret;
@@ -1644,6 +1659,7 @@ static int i3c_master_reattach_i3c_dev(struct i3c_dev_desc *dev,
 
 	return 0;
 }
+EXPORT_SYMBOL_GPL(i3c_master_reattach_i3c_dev);
 
 static void i3c_master_detach_i3c_dev(struct i3c_dev_desc *dev)
 {
@@ -3168,6 +3184,16 @@ int i3c_dev_do_xfers_locked(struct i3c_dev_desc *dev, struct i3c_xfer *xfers,
 	return master->ops->i3c_xfers(dev, xfers, nxfers, mode);
 }
 
+/**
+ * i3c_dev_disable_ibi() - Disable IBIs coming from a specific device
+ * @dev: device on which IBIs should be disabled
+ *
+ * This function disable IBIs coming from a specific device and wait for
+ * all pending IBIs to be processed.
+ *
+ * Context: Must be called with mutex_lock(&dev->desc->ibi_lock) held.
+ * Return: 0 in case of success, a negative error core otherwise.
+ */
 int i3c_dev_disable_ibi_locked(struct i3c_dev_desc *dev)
 {
 	struct i3c_master_controller *master;
@@ -3189,7 +3215,22 @@ int i3c_dev_disable_ibi_locked(struct i3c_dev_desc *dev)
 
 	return 0;
 }
+EXPORT_SYMBOL_GPL(i3c_dev_disable_ibi_locked);
 
+/**
+ * i3c_dev_enable_ibi_locked() - Enable IBIs from a specific device (lock held)
+ * @dev: device on which IBIs should be enabled
+ *
+ * This function enable IBIs coming from a specific device and wait for
+ * all pending IBIs to be processed. This should be called on a device
+ * where i3c_device_request_ibi() has succeeded.
+ *
+ * Note that IBIs from this device might be received before this function
+ * returns to its caller.
+ *
+ * Context: Must be called with mutex_lock(&dev->desc->ibi_lock) held.
+ * Return: 0 on success, or a negative error code on failure.
+ */
 int i3c_dev_enable_ibi_locked(struct i3c_dev_desc *dev)
 {
 	struct i3c_master_controller *master = i3c_dev_get_master(dev);
@@ -3204,7 +3245,20 @@ int i3c_dev_enable_ibi_locked(struct i3c_dev_desc *dev)
 
 	return ret;
 }
+EXPORT_SYMBOL_GPL(i3c_dev_enable_ibi_locked);
 
+/**
+ * i3c_dev_request_ibi() - Request an IBI
+ * @dev: device for which we should enable IBIs
+ * @req: setup requested for this IBI
+ *
+ * This function is responsible for pre-allocating all resources needed to
+ * process IBIs coming from @dev. When this function returns, the IBI is not
+ * enabled until i3c_device_enable_ibi() is called.
+ *
+ * Context: Must be called with mutex_lock(&dev->desc->ibi_lock) held.
+ * Return: 0 in case of success, a negative error core otherwise.
+ */
 int i3c_dev_request_ibi_locked(struct i3c_dev_desc *dev,
 			       const struct i3c_ibi_setup *req)
 {
@@ -3243,7 +3297,18 @@ int i3c_dev_request_ibi_locked(struct i3c_dev_desc *dev,
 
 	return ret;
 }
+EXPORT_SYMBOL_GPL(i3c_dev_request_ibi_locked);
 
+/**
+ * i3c_dev_free_ibi() - Free all resources needed for IBI handling
+ * @dev: device on which you want to release IBI resources
+ *
+ * This function is responsible for de-allocating resources previously
+ * allocated by i3c_device_request_ibi(). It should be called after disabling
+ * IBIs with i3c_device_disable_ibi().
+ *
+ * Context: Must be called with mutex_lock(&dev->desc->ibi_lock) held.
+ */
 void i3c_dev_free_ibi_locked(struct i3c_dev_desc *dev)
 {
 	struct i3c_master_controller *master = i3c_dev_get_master(dev);
@@ -3274,6 +3339,7 @@ void i3c_dev_free_ibi_locked(struct i3c_dev_desc *dev)
 	kfree(dev->ibi);
 	dev->ibi = NULL;
 }
+EXPORT_SYMBOL_GPL(i3c_dev_free_ibi_locked);
 
 static int __init i3c_init(void)
 {
diff --git a/include/linux/i3c/master.h b/include/linux/i3c/master.h
index 592b646f6134..aeccec171e64 100644
--- a/include/linux/i3c/master.h
+++ b/include/linux/i3c/master.h
@@ -613,6 +613,8 @@ void i3c_master_dma_unmap_single(struct i3c_dma *dma_xfer);
 DEFINE_FREE(i3c_master_dma_unmap_single, void *,
 	    if (_T) i3c_master_dma_unmap_single(_T))
 
+int i3c_master_reattach_i3c_dev(struct i3c_dev_desc *dev,
+				u8 old_dyn_addr);
 int i3c_master_set_info(struct i3c_master_controller *master,
 			const struct i3c_device_info *info);
 
-- 
2.25.1


