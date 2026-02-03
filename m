Return-Path: <devicetree+bounces-262130-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sCGyF3zCgWmjJgMAu9opvQ
	(envelope-from <devicetree+bounces-262130-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 10:40:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C139FD6EBE
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 10:40:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 61DC030A1495
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 09:34:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6CCE39A808;
	Tue,  3 Feb 2026 09:34:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 659C1313532
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 09:34:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770111284; cv=none; b=gLwA0adPuH9nrfSttoxaap9sB0OdOdjzQTUlP1iYonyp9OCJwO7qK7F1L0w9JYNCeA9D7XWKpVZh3nLdT2cS0m6NL1TWVIOlNJJKBPPWF0F4SngYPnMndJA1zobijM4gt8pV4dHkEI31SjKE0Kv+7p3H7HMKyp7dEUA7EIpIoDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770111284; c=relaxed/simple;
	bh=zwBYqkLNtbhXVbgrsrQaASQJCt7kvW7S2MFFwDgGVuw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=uD4SHa/RmQ/5RqnQtM9HUtUqleuj5csh+Q8k8S/J4FX0qxQbR2qOVx7R52qWmpRlrie7R+bQ9Fu00L4q6uw9OSqnTzoakDIoG01AShPNVbw+P1E2noEst0FwzP64eUEEUY5ZvQEqJPzFKXGO/OPJB5RMQJ1NsG7+f8EkFtELhn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1vnCnr-0003lc-Q9; Tue, 03 Feb 2026 10:34:35 +0100
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac] helo=dude04)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1vnCnr-003slV-36;
	Tue, 03 Feb 2026 10:34:35 +0100
Received: from ore by dude04 with local (Exim 4.98.2)
	(envelope-from <ore@pengutronix.de>)
	id 1vnCnr-0000000Ah9c-0icp;
	Tue, 03 Feb 2026 10:34:35 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Jonathan Cameron <jic23@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Oleksij Rempel <o.rempel@pengutronix.de>,
	kernel@pengutronix.de,
	linux-kernel@vger.kernel.org,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	Andy Shevchenko <andy@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	=?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>,
	David Jander <david@protonic.nl>
Subject: [PATCH v4 06/13] iio: dac: ds4424: use device match data for chip info
Date: Tue,  3 Feb 2026 10:34:26 +0100
Message-ID: <20260203093434.2548978-7-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260203093434.2548978-1-o.rempel@pengutronix.de>
References: <20260203093434.2548978-1-o.rempel@pengutronix.de>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[6];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-262130-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[o.rempel@pengutronix.de,devicetree@vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,pengutronix.de:mid,pengutronix.de:email]
X-Rspamd-Queue-Id: C139FD6EBE
X-Rspamd-Action: no action

Refactor the driver to use device match data instead of checking ID enums
in a switch statement.

Define a `ds4424_chip_info` structure to hold variant-specific attributes
(currently just the channel count) and attach it directly to the I2C and
OF device ID tables.

Use `client->name` instead of `id->name` to decouple the probe function
from the legacy `i2c_device_id` structure.

This simplifies the probe function and makes it easier to add support for
new variants like DS4402/DS4404.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
changes v4:
- New patch
---
 drivers/iio/dac/ds4424.c | 44 +++++++++++++++++++---------------------
 1 file changed, 21 insertions(+), 23 deletions(-)

diff --git a/drivers/iio/dac/ds4424.c b/drivers/iio/dac/ds4424.c
index 3385f39521d9..5709d8a39d7b 100644
--- a/drivers/iio/dac/ds4424.c
+++ b/drivers/iio/dac/ds4424.c
@@ -34,9 +34,16 @@
 	.info_mask_separate = BIT(IIO_CHAN_INFO_RAW), \
 }
 
-enum ds4424_device_ids {
-	ID_DS4422,
-	ID_DS4424,
+struct ds4424_chip_info {
+	u8 num_channels;
+};
+
+static const struct ds4424_chip_info ds4422_info = {
+	.num_channels = DS4422_MAX_DAC_CHANNELS,
+};
+
+static const struct ds4424_chip_info ds4424_info = {
+	.num_channels = DS4424_MAX_DAC_CHANNELS,
 };
 
 struct ds4424_data {
@@ -204,11 +211,15 @@ static const struct iio_info ds4424_iio_info = {
 
 static int ds4424_probe(struct i2c_client *client)
 {
-	const struct i2c_device_id *id = i2c_client_get_device_id(client);
+	const struct ds4424_chip_info *chip_info;
 	struct ds4424_data *data;
 	struct iio_dev *indio_dev;
 	int ret;
 
+	chip_info = i2c_get_match_data(client);
+	if (!chip_info)
+		return -ENODEV;
+
 	indio_dev = devm_iio_device_alloc(&client->dev, sizeof(*data));
 	if (!indio_dev)
 		return -ENOMEM;
@@ -216,7 +227,6 @@ static int ds4424_probe(struct i2c_client *client)
 	data = iio_priv(indio_dev);
 	i2c_set_clientdata(client, indio_dev);
 	data->client = client;
-	indio_dev->name = id->name;
 
 	data->vcc_reg = devm_regulator_get(&client->dev, "vcc");
 	if (IS_ERR(data->vcc_reg))
@@ -236,20 +246,8 @@ static int ds4424_probe(struct i2c_client *client)
 	if (ret < 0)
 		goto fail;
 
-	switch (id->driver_data) {
-	case ID_DS4422:
-		indio_dev->num_channels = DS4422_MAX_DAC_CHANNELS;
-		break;
-	case ID_DS4424:
-		indio_dev->num_channels = DS4424_MAX_DAC_CHANNELS;
-		break;
-	default:
-		dev_err(&client->dev,
-				"ds4424: Invalid chip id.\n");
-		ret = -ENXIO;
-		goto fail;
-	}
-
+	indio_dev->name = client->name;
+	indio_dev->num_channels = chip_info->num_channels;
 	indio_dev->channels = ds4424_channels;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	indio_dev->info = &ds4424_iio_info;
@@ -278,16 +276,16 @@ static void ds4424_remove(struct i2c_client *client)
 }
 
 static const struct i2c_device_id ds4424_id[] = {
-	{ "ds4422", ID_DS4422 },
-	{ "ds4424", ID_DS4424 },
+	{ "ds4422", (kernel_ulong_t)&ds4422_info },
+	{ "ds4424", (kernel_ulong_t)&ds4424_info },
 	{ }
 };
 
 MODULE_DEVICE_TABLE(i2c, ds4424_id);
 
 static const struct of_device_id ds4424_of_match[] = {
-	{ .compatible = "maxim,ds4422" },
-	{ .compatible = "maxim,ds4424" },
+	{ .compatible = "maxim,ds4422", .data = &ds4422_info },
+	{ .compatible = "maxim,ds4424", .data = &ds4424_info },
 	{ }
 };
 
-- 
2.47.3


