Return-Path: <devicetree+bounces-270790-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WAMaJqJjp2mghAAAu9opvQ
	(envelope-from <devicetree+bounces-270790-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 23:41:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A2771F816A
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 23:41:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id F138B301FAA7
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 22:41:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10144372665;
	Tue,  3 Mar 2026 22:41:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C86A4375AAC
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 22:41:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772577692; cv=none; b=YlsxTzL2s/8ZhK0FeTE3azkmLYuRM7irgVq3CgcKyg2Xif4gEL8DCdyEFrKa+v1fBF4idqSeQELfGqIqcb0Uls/0HRG7qkZVMSdjeaj+CQj6bQ/LshXspkpycraKz/3COIYRXBPWKc5/UHpXKSKVt5NZrBcsUTqKXxAL5W/vkuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772577692; c=relaxed/simple;
	bh=tlm8rYcUfrQ6WsTKgrxSTs613xn2DoKEwpwCAZuGP64=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Dyr3kKFSfzpVGOqlNPi/JiwxGTTo1ETHZo9MpjDhssyarYQMNSD7Brg9Q2Y/seSK78N/rhAzmKQgOr69BYlZTrSWEoBiX1mYVgtMUrff1lUTELuPWxGAXErJTBdhF5/n96aQKb7WJRJgKUv4r3UtGuVl6x12QyMDHyI3PHJ12gM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1vxYQe-0000sx-9d; Tue, 03 Mar 2026 23:41:24 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Tue, 03 Mar 2026 23:41:19 +0100
Subject: [PATCH v6 1/4] firmware_loader: expand firmware error codes with
 up-to-date error
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260303-v6-10-topic-touchscreen-axiom-v6-1-8ac755add12b@pengutronix.de>
References: <20260303-v6-10-topic-touchscreen-axiom-v6-0-8ac755add12b@pengutronix.de>
In-Reply-To: <20260303-v6-10-topic-touchscreen-axiom-v6-0-8ac755add12b@pengutronix.de>
To: Luis Chamberlain <mcgrof@kernel.org>, 
 Russ Weight <russ.weight@linux.dev>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, 
 Andrew Morton <akpm@linux-foundation.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
 Kamel Bouhara <kamel.bouhara@bootlin.com>, 
 Marco Felsch <kernel@pengutronix.de>, Henrik Rydberg <rydberg@bitmath.org>, 
 Danilo Krummrich <dakr@kernel.org>, andrew.thomas@touchnetix.com, 
 Danilo Krummrich <dakr@kernel.org>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-input@vger.kernel.org, kernel@pengutronix.de, 
 Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.2
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::28
X-SA-Exim-Mail-From: m.felsch@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Rspamd-Queue-Id: 5A2771F816A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[kernel.org,linux.dev,linuxfoundation.org,linux-foundation.org,gmail.com,bootlin.com,pengutronix.de,bitmath.org,touchnetix.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270790-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[m.felsch@pengutronix.de,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.627];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.dev:email,pengutronix.de:mid,pengutronix.de:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action

Add FW_UPLOAD_ERR_DUPLICATE to allow drivers to inform the firmware_loader
framework that the update is not required. This can be the case if the
user provided firmware matches the current running firmware.

Sync lib/test_firmware.c accordingly.

Reviewed-by: Russ Weight <russ.weight@linux.dev>
Reviewed-by: Luis Chamberlain <mcgrof@kernel.org>
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/base/firmware_loader/sysfs_upload.c | 1 +
 include/linux/firmware.h                    | 2 ++
 lib/test_firmware.c                         | 1 +
 3 files changed, 4 insertions(+)

diff --git a/drivers/base/firmware_loader/sysfs_upload.c b/drivers/base/firmware_loader/sysfs_upload.c
index 829270067d1632f92656859fb9143e3fa9635670..0a583a1b3f4fde563257566426d523fbf839b13f 100644
--- a/drivers/base/firmware_loader/sysfs_upload.c
+++ b/drivers/base/firmware_loader/sysfs_upload.c
@@ -28,6 +28,7 @@ static const char * const fw_upload_err_str[] = {
 	[FW_UPLOAD_ERR_RW_ERROR]     = "read-write-error",
 	[FW_UPLOAD_ERR_WEAROUT]	     = "flash-wearout",
 	[FW_UPLOAD_ERR_FW_INVALID]   = "firmware-invalid",
+	[FW_UPLOAD_ERR_DUPLICATE]    = "firmware-duplicate",
 };
 
 static const char *fw_upload_progress(struct device *dev,
diff --git a/include/linux/firmware.h b/include/linux/firmware.h
index aae1b85ffc10e20e9c3c9b6009d26b83efd8cb24..fe7797be4c08cd62cdad9617b8f70095d5e0af2f 100644
--- a/include/linux/firmware.h
+++ b/include/linux/firmware.h
@@ -29,6 +29,7 @@ struct firmware {
  * @FW_UPLOAD_ERR_RW_ERROR: read or write to HW failed, see kernel log
  * @FW_UPLOAD_ERR_WEAROUT: FLASH device is approaching wear-out, wait & retry
  * @FW_UPLOAD_ERR_FW_INVALID: invalid firmware file
+ * @FW_UPLOAD_ERR_DUPLICATE: firmware is already up to date (duplicate)
  * @FW_UPLOAD_ERR_MAX: Maximum error code marker
  */
 enum fw_upload_err {
@@ -41,6 +42,7 @@ enum fw_upload_err {
 	FW_UPLOAD_ERR_RW_ERROR,
 	FW_UPLOAD_ERR_WEAROUT,
 	FW_UPLOAD_ERR_FW_INVALID,
+	FW_UPLOAD_ERR_DUPLICATE,
 	FW_UPLOAD_ERR_MAX
 };
 
diff --git a/lib/test_firmware.c b/lib/test_firmware.c
index 211222e63328f970228920f5662ee80cc7f51215..603c3a4b385c849944a695849a1894693234b5eb 100644
--- a/lib/test_firmware.c
+++ b/lib/test_firmware.c
@@ -1133,6 +1133,7 @@ static const char * const fw_upload_err_str[] = {
 	[FW_UPLOAD_ERR_RW_ERROR]     = "read-write-error",
 	[FW_UPLOAD_ERR_WEAROUT]	     = "flash-wearout",
 	[FW_UPLOAD_ERR_FW_INVALID]   = "firmware-invalid",
+	[FW_UPLOAD_ERR_DUPLICATE]    = "firmware-duplicate",
 };
 
 static void upload_err_inject_error(struct test_firmware_upload *tst,

-- 
2.47.3


