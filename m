Return-Path: <devicetree+bounces-122993-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CD6409D307F
	for <lists+devicetree@lfdr.de>; Tue, 19 Nov 2024 23:34:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 74CA61F21F6A
	for <lists+devicetree@lfdr.de>; Tue, 19 Nov 2024 22:34:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68E881C2DA2;
	Tue, 19 Nov 2024 22:34:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DBAE45945
	for <devicetree@vger.kernel.org>; Tue, 19 Nov 2024 22:33:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732055642; cv=none; b=BawnBT21vLbkchga1XOzN02FG0HcjvKEgEG0gJ+fuMxNIxYnjsyBT14WVPMFv58R3if+SmGkOntd+IM9ZOnZuSNh6S/lPIXXLbg2IUsdDT4ABsg99yFfHq0hzS0oigh8rF92vjNpdOXvC0rUHKrUaYXnoFLe7i1cYsj5j64XTD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732055642; c=relaxed/simple;
	bh=XsoLkw4+T7bCU2TKCMU1O3jt/Rbh8nGvFJ2vrAS9LBM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=NO0MRB7jSdxBSsx7R32227WSvmfEB1gfxapwkvxGVGOfeyggOTCzGCjnQ20RCOMpfvimLY/Y6sKg2GozX6T+qh/Qe8xx01WS/kf78nlZTTWeI+11nW/XxP4Or8KlfQ8DhKRBY29+pkfGFF6cB+xTb3ABGaRmffOhDLCSKt38WJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1tDWnF-0002gF-4s; Tue, 19 Nov 2024 23:33:57 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Tue, 19 Nov 2024 23:33:50 +0100
Subject: [PATCH 1/5] firmware_loader: expand firmware error codes with skip
 error
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241119-v6-10-topic-touchscreen-axiom-v1-1-6124925b9718@pengutronix.de>
References: <20241119-v6-10-topic-touchscreen-axiom-v1-0-6124925b9718@pengutronix.de>
In-Reply-To: <20241119-v6-10-topic-touchscreen-axiom-v1-0-6124925b9718@pengutronix.de>
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
 Danilo Krummrich <dakr@redhat.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-input@vger.kernel.org, kernel@pengutronix.de, 
 Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::28
X-SA-Exim-Mail-From: m.felsch@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Add FW_UPLOAD_ERR_SKIP to allow drivers to inform the firmware_loader
framework that the update is not required. This can be the case if the
user provided firmware matches the current running firmware.

Sync lib/test_firmware.c file accordingly.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/base/firmware_loader/sysfs_upload.c | 1 +
 include/linux/firmware.h                    | 2 ++
 lib/test_firmware.c                         | 1 +
 3 files changed, 4 insertions(+)

diff --git a/drivers/base/firmware_loader/sysfs_upload.c b/drivers/base/firmware_loader/sysfs_upload.c
index 829270067d16..b3cbe5b156e3 100644
--- a/drivers/base/firmware_loader/sysfs_upload.c
+++ b/drivers/base/firmware_loader/sysfs_upload.c
@@ -28,6 +28,7 @@ static const char * const fw_upload_err_str[] = {
 	[FW_UPLOAD_ERR_RW_ERROR]     = "read-write-error",
 	[FW_UPLOAD_ERR_WEAROUT]	     = "flash-wearout",
 	[FW_UPLOAD_ERR_FW_INVALID]   = "firmware-invalid",
+	[FW_UPLOAD_ERR_SKIP]         = "skip",
 };
 
 static const char *fw_upload_progress(struct device *dev,
diff --git a/include/linux/firmware.h b/include/linux/firmware.h
index aae1b85ffc10..46d2192b733a 100644
--- a/include/linux/firmware.h
+++ b/include/linux/firmware.h
@@ -29,6 +29,7 @@ struct firmware {
  * @FW_UPLOAD_ERR_RW_ERROR: read or write to HW failed, see kernel log
  * @FW_UPLOAD_ERR_WEAROUT: FLASH device is approaching wear-out, wait & retry
  * @FW_UPLOAD_ERR_FW_INVALID: invalid firmware file
+ * @FW_UPLOAD_ERR_SKIP: firmware is already up to date, skip update
  * @FW_UPLOAD_ERR_MAX: Maximum error code marker
  */
 enum fw_upload_err {
@@ -41,6 +42,7 @@ enum fw_upload_err {
 	FW_UPLOAD_ERR_RW_ERROR,
 	FW_UPLOAD_ERR_WEAROUT,
 	FW_UPLOAD_ERR_FW_INVALID,
+	FW_UPLOAD_ERR_SKIP,
 	FW_UPLOAD_ERR_MAX
 };
 
diff --git a/lib/test_firmware.c b/lib/test_firmware.c
index bcb32cbff188..6715eac10c6b 100644
--- a/lib/test_firmware.c
+++ b/lib/test_firmware.c
@@ -1133,6 +1133,7 @@ static const char * const fw_upload_err_str[] = {
 	[FW_UPLOAD_ERR_RW_ERROR]     = "read-write-error",
 	[FW_UPLOAD_ERR_WEAROUT]	     = "flash-wearout",
 	[FW_UPLOAD_ERR_FW_INVALID]   = "firmware-invalid",
+	[FW_UPLOAD_ERR_SKIP]         = "skip",
 };
 
 static void upload_err_inject_error(struct test_firmware_upload *tst,

-- 
2.39.5


