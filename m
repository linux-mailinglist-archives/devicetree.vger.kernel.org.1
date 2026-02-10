Return-Path: <devicetree+bounces-264427-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CEOBH4U4i2neRgAAu9opvQ
	(envelope-from <devicetree+bounces-264427-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 14:54:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 08E5611B7F9
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 14:54:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 57A243077102
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 13:52:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B15636A022;
	Tue, 10 Feb 2026 13:51:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13E1A366DDE
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 13:51:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770731484; cv=none; b=G8sD7ejKQXf0OWJBK4VU+AGSuJz7o4LiObuqDnOJWegWk3OBs7sPYSYrOwDqW0vTN4WTMi+6L4uq9M6YyDOo2UmPZ6EHERUedaxuqAEb/DkzpaGBmMnbRP2jAZac2sOOWjpkLQZoAyeL7fVHWZFN6dZnRbwEgqx32sT9Mk+ergU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770731484; c=relaxed/simple;
	bh=MxMljzlANYj2yqu4tNqaHx4w1IsklpPRaDv0QCXwfkU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=iIPKmcLh9AhTIPdOyKIWJhOOGH96NZPGEq60qndm1dmr09N9sgtc3J5QgCcoDBxIPdroZnxyQql5kEcpzSBeUNA7qTISRMlgyosK6iUBl7kgyoXxk3TGvLUbmbWByaO3Z5h7l2ERV3EveCiKyqBKYLEYTEgjEc2bUC8zGW0fBS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1vpo93-0005dP-I2; Tue, 10 Feb 2026 14:51:13 +0100
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac] helo=dude04)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1vpo92-0005dB-0s;
	Tue, 10 Feb 2026 14:51:12 +0100
Received: from ore by dude04 with local (Exim 4.98.2)
	(envelope-from <ore@pengutronix.de>)
	id 1vpo92-00000008VOM-3f0W;
	Tue, 10 Feb 2026 14:51:12 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Jonathan Cameron <jic23@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: David Jander <david@protonic.nl>,
	Oleksij Rempel <o.rempel@pengutronix.de>,
	Andy Shevchenko <andriy.shevchenko@intel.com>,
	kernel@pengutronix.de,
	linux-kernel@vger.kernel.org,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	Andy Shevchenko <andy@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	=?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>
Subject: [PATCH v6 08/12] iio: dac: ds4424: add DS4402/DS4404 device IDs
Date: Tue, 10 Feb 2026 14:51:06 +0100
Message-ID: <20260210135110.2027073-9-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260210135110.2027073-1-o.rempel@pengutronix.de>
References: <20260210135110.2027073-1-o.rempel@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[6];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[bounces-264427-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	R_DKIM_NA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[o.rempel@pengutronix.de,devicetree@vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[pengutronix.de:mid,pengutronix.de:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,intel.com:email,protonic.nl:email]
X-Rspamd-Queue-Id: 08E5611B7F9
X-Rspamd-Action: no action

From: David Jander <david@protonic.nl>

Add I2C/OF IDs for DS4402 and DS4404 and set the correct channel count.
Follow-up changes add per-variant scaling based on external Rfs.

Co-developed-by: Oleksij Rempel <o.rempel@pengutronix.de>
Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
Signed-off-by: David Jander <david@protonic.nl>
Reviewed-by: Andy Shevchenko <andriy.shevchenko@intel.com>
---
changes v6:
- assign predictable name to indio_dev->name.
changes v5:
- no changes
changes v4:
- no changes
changes v3:
- Reset author to David Jander and added Co-developed-by tag for
  Oleksij Rempel to clarify roles
changes v2:
- No changes.
---
 drivers/iio/dac/ds4424.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/iio/dac/ds4424.c b/drivers/iio/dac/ds4424.c
index d3bf0dc02b1a..20031639e753 100644
--- a/drivers/iio/dac/ds4424.c
+++ b/drivers/iio/dac/ds4424.c
@@ -40,6 +40,16 @@ struct ds4424_chip_info {
 	u8 num_channels;
 };
 
+static const struct ds4424_chip_info ds4402_info = {
+	.name = "ds4402",
+	.num_channels = DS4422_MAX_DAC_CHANNELS,
+};
+
+static const struct ds4424_chip_info ds4404_info = {
+	.name = "ds4404",
+	.num_channels = DS4424_MAX_DAC_CHANNELS,
+};
+
 static const struct ds4424_chip_info ds4422_info = {
 	.name = "ds4422",
 	.num_channels = DS4422_MAX_DAC_CHANNELS,
@@ -286,6 +296,8 @@ static void ds4424_remove(struct i2c_client *client)
 }
 
 static const struct i2c_device_id ds4424_id[] = {
+	{ "ds4402", (kernel_ulong_t)&ds4402_info },
+	{ "ds4404", (kernel_ulong_t)&ds4404_info },
 	{ "ds4422", (kernel_ulong_t)&ds4422_info },
 	{ "ds4424", (kernel_ulong_t)&ds4424_info },
 	{ }
@@ -294,6 +306,8 @@ static const struct i2c_device_id ds4424_id[] = {
 MODULE_DEVICE_TABLE(i2c, ds4424_id);
 
 static const struct of_device_id ds4424_of_match[] = {
+	{ .compatible = "maxim,ds4402", .data = &ds4402_info },
+	{ .compatible = "maxim,ds4404", .data = &ds4404_info },
 	{ .compatible = "maxim,ds4422", .data = &ds4422_info },
 	{ .compatible = "maxim,ds4424", .data = &ds4424_info },
 	{ }
-- 
2.47.3


