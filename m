Return-Path: <devicetree+bounces-265897-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8Mc0Ca5Pk2nA3QEAu9opvQ
	(envelope-from <devicetree+bounces-265897-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 18:11:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id D867C1468FB
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 18:11:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 54A5C30233C7
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 17:10:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D76732D8393;
	Mon, 16 Feb 2026 17:10:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IoiBjLwd"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A69882D73B6;
	Mon, 16 Feb 2026 17:10:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771261853; cv=none; b=WANRRWTEDuOKTiarJoULtCDtqoshmGWbw2TJlV9XUXq49ZSxrXoDPUhJDAw6tjH4x/ymts7Ma/Pyuqm13mMUrTCGVcx6HU3LG76Yct9xaWLHHT17nfxXFNiadReOPVilQDb7AlsStEteLGy1twJbkzvGJVZlFKcUzonw2LcmY50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771261853; c=relaxed/simple;
	bh=GLo3TKV8gFTB9qN1L1dtwn16ZgzOExq0Urh3QlqIRr8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=G0Drd1wGSjYIaBJYpu/g0OnfR7H1KYtTkR1oosSezoWSSX+gs/85U29Gd6wnJyNYUCMVWabkCW0kVhuNV7s9RzmoNyW1mhGXjPpJvJVysx1bis0GU/WIEj/tVgSue0wEJvJ9D9cyY0XTX2vMXATQQAngon45T2J8EAmwEC5Mr9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IoiBjLwd; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FF44C19425;
	Mon, 16 Feb 2026 17:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771261853;
	bh=GLo3TKV8gFTB9qN1L1dtwn16ZgzOExq0Urh3QlqIRr8=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=IoiBjLwdbUhGshcSNowLb78uJKQTHXGCVytrKyOZBGS+ByJE37lQSW2Avp7J1jBrC
	 af5EfAzrSkFc+EcKhwIfSK4CotgKZOLSDioF4W68cjKkuiLdpugyzWbojqhhRrT6W8
	 JbIpzBCxbQbqcNHLZO9ZE50NEKitGd72Wa4roTRGIZfMcyeQMteMv213x0Z/wzxslr
	 rzZkjfuRTjsSgMqWotqOxwUMqfGumcu01fkPesrLzbQLVo2NW8XOTLcXCmK5yY4T7e
	 xXWwp8o9kvR1BBdhIt5CP1TVI//9awsDFQCWquF00aQDteRYvJOwFC4qLo6OmFDYwn
	 pBRlgVw8mZb7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7290FE81A5B;
	Mon, 16 Feb 2026 17:10:53 +0000 (UTC)
From: Rodrigo Alencar via B4 Relay <devnull+rodrigo.alencar.analog.com@kernel.org>
Date: Mon, 16 Feb 2026 17:10:47 +0000
Subject: [PATCH v5 03/11] iio: amplifiers: ad8366: refactor include headers
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260216-iio-ad8366-update-v5-3-7e6091357d02@analog.com>
References: <20260216-iio-ad8366-update-v5-0-7e6091357d02@analog.com>
In-Reply-To: <20260216-iio-ad8366-update-v5-0-7e6091357d02@analog.com>
To: linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org, 
 devicetree@vger.kernel.org
Cc: Michael Hennerich <Michael.Hennerich@analog.com>, 
 Lars-Peter Clausen <lars@metafoo.de>, Jonathan Cameron <jic23@kernel.org>, 
 David Lechner <dlechner@baylibre.com>, Andy Shevchenko <andy@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Rodrigo Alencar <rodrigo.alencar@analog.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1771261851; l=1982;
 i=rodrigo.alencar@analog.com; s=default; h=from:subject:message-id;
 bh=QRIp0tYYyn+DvtgLdXDkjcNw9aoRAB1xYUrQo6x2IZU=;
 b=kDUXOss1FYOCQTLgt76NE6wZQs9w0kmyBMAHEwlbhL6P8nJLVwnZCKqzs7yVYNesEzUickdMl
 AggTlzeay1iDAc8U/Y0g1GpDLTWWoolz5rR8WdgQsUAZ5KW/TF9LXdR
X-Developer-Key: i=rodrigo.alencar@analog.com; a=ed25519;
 pk=ULeHbgU/OYh/PG/4anHDfLgldFItQHAhOktYRVLMFRo=
X-Endpoint-Received: by B4 Relay for rodrigo.alencar@analog.com/default
 with auth_id=561
X-Original-From: Rodrigo Alencar <rodrigo.alencar@analog.com>
Reply-To: rodrigo.alencar@analog.com
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265897-lists,devicetree=lfdr.de,rodrigo.alencar.analog.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	HAS_REPLYTO(0.00)[rodrigo.alencar@analog.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,analog.com:mid,analog.com:email,analog.com:replyto]
X-Rspamd-Queue-Id: D867C1468FB
X-Rspamd-Action: no action

From: Rodrigo Alencar <rodrigo.alencar@analog.com>

Apply IWYU principle, removing the following headers:
- linux/device.h: no usage of devm_add_action_or_reset, device_attr...
- linux/kernel.h: no usage of container_of, kasprintf, ...
- linux/slab.h: memory management handled by iio
- linux/sysfs.h: sysfs interaction is managed by iio
- linux/iio/sysfs.h: not using iio device attributes in this driver
Adding the following missing headers:
+ linux/array_size.h: for ARRAY_SIZE
+ linux/bits.h: for BIT
+ linux/dev_printk.h: for dev_err
+ linux/math.h: for abs
+ linux/mutex.h: for mutex_lock, mutex_unlock
+ linux/mod_devicetable.h: for spi_device_id
+ linux/types.h for NULL, __aligned

Additionally, those include directives are alphabetically sorted.

Signed-off-by: Rodrigo Alencar <rodrigo.alencar@analog.com>
---
 drivers/iio/amplifiers/ad8366.c | 23 +++++++++++++----------
 1 file changed, 13 insertions(+), 10 deletions(-)

diff --git a/drivers/iio/amplifiers/ad8366.c b/drivers/iio/amplifiers/ad8366.c
index d06ac786501c..8dc639d30dbb 100644
--- a/drivers/iio/amplifiers/ad8366.c
+++ b/drivers/iio/amplifiers/ad8366.c
@@ -11,19 +11,22 @@
  * Copyright 2012-2019 Analog Devices Inc.
  */
 
-#include <linux/device.h>
-#include <linux/kernel.h>
-#include <linux/slab.h>
-#include <linux/sysfs.h>
-#include <linux/spi/spi.h>
-#include <linux/regulator/consumer.h>
-#include <linux/gpio/consumer.h>
-#include <linux/err.h>
-#include <linux/module.h>
+#include <linux/array_size.h>
 #include <linux/bitrev.h>
+#include <linux/bits.h>
+#include <linux/dev_printk.h>
+#include <linux/err.h>
+#include <linux/gpio/consumer.h>
+#include <linux/math.h>
+#include <linux/minmax.h>
+#include <linux/mod_devicetable.h>
+#include <linux/module.h>
+#include <linux/mutex.h>
+#include <linux/regulator/consumer.h>
+#include <linux/spi/spi.h>
+#include <linux/types.h>
 
 #include <linux/iio/iio.h>
-#include <linux/iio/sysfs.h>
 
 enum ad8366_type {
 	ID_AD8366,

-- 
2.43.0



