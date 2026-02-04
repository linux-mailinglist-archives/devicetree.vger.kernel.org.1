Return-Path: <devicetree+bounces-262677-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KO6kITRRg2mJlQMAu9opvQ
	(envelope-from <devicetree+bounces-262677-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 15:01:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DAF2E6C26
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 15:01:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 23E0A300C023
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 14:01:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F16AA40F8FB;
	Wed,  4 Feb 2026 14:00:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC53740F8EC
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 14:00:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770213653; cv=none; b=SydDId88XeriScZpoSO1LXQHQaNT3H6L1PwrZFTs5OR4WaV6FdHz9+vFZygwtkPHVEf6Cn50WNVabxFNDKkEzjWbBehdEFVykNhVZz32RkbSYMniGkYp4czLyz3IsPpcWvYrRrjsP/wDDUv8fFT00Sr0CKbBBmCK9FUUfy7fLcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770213653; c=relaxed/simple;
	bh=dCzyW5BpQeGE40tP8UP/X0XyikoTZoNUpks1nESYHEo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=tCdDVWRJTdGnxU1YIkiVznnliOwSuHvbjqtCh1qukjkSu4be801qKXZOuB/KKfx9s7e/7XbrJieI8Hg4/7b7w/XRjA1q3I9XS5Z0XNhyUFjg+WKADS4/d+GnOgUrmS/ALZko6NHFGafy2qzsBm5KDQO2vTu0vsmMieDDsgzoTrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1vndR1-0001Qt-HO; Wed, 04 Feb 2026 15:00:47 +0100
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac] helo=dude04)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1vndR1-0045FT-2O;
	Wed, 04 Feb 2026 15:00:47 +0100
Received: from ore by dude04 with local (Exim 4.98.2)
	(envelope-from <ore@pengutronix.de>)
	id 1vndR0-00000001dgz-3M6v;
	Wed, 04 Feb 2026 15:00:46 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Jonathan Cameron <jic23@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Oleksij Rempel <o.rempel@pengutronix.de>,
	Andy Shevchenko <andriy.shevchenko@intel.com>,
	kernel@pengutronix.de,
	linux-kernel@vger.kernel.org,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	Andy Shevchenko <andy@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	=?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>,
	David Jander <david@protonic.nl>
Subject: [PATCH v5 10/13] iio: dac: ds4424: support per-variant output range limits
Date: Wed,  4 Feb 2026 15:00:42 +0100
Message-ID: <20260204140045.390677-11-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260204140045.390677-1-o.rempel@pengutronix.de>
References: <20260204140045.390677-1-o.rempel@pengutronix.de>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[6];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-262677-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.977];
	FROM_NEQ_ENVFROM(0.00)[o.rempel@pengutronix.de,devicetree@vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,pengutronix.de:mid,pengutronix.de:email]
X-Rspamd-Queue-Id: 4DAF2E6C26
X-Rspamd-Action: no action

The DS4402/DS4404 variants operate with a 5-bit resolution (31 steps),
whereas the DS4422/DS4424 support 7-bit (127 steps).

Previously, the driver enforced a hardcoded 7-bit mask (DS4424_DAC_MASK)
for all variants. This allowed users to write values exceeding the 5-bit
range to DS4402/DS4404 devices, resulting in silent truncation or
undefined behavior.

Add a `result_mask` field to the chip_info structure to define the valid
data range for each variant. Use this mask to:
1. Correctly mask register values in read_raw().
2. Return -EINVAL in write_raw() if the input value exceeds the
   variant's capabilities.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
Reviewed-by: Andy Shevchenko <andriy.shevchenko@intel.com>
---
changes v5:
- add Reviewed-by: Andy ..
changes v4:
- New patch
- Split from the original patch (v3) to isolate 5-bit vs 7-bit handling.
---
 drivers/iio/dac/ds4424.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/iio/dac/ds4424.c b/drivers/iio/dac/ds4424.c
index 0ff034634fd1..0a1c7b15fdd2 100644
--- a/drivers/iio/dac/ds4424.c
+++ b/drivers/iio/dac/ds4424.c
@@ -23,6 +23,7 @@
 #define DS4424_MAX_DAC_CHANNELS		4
 
 #define DS4424_DAC_MASK			GENMASK(6, 0)
+#define DS4404_DAC_MASK			GENMASK(4, 0)
 #define DS4424_DAC_SOURCE		BIT(7)
 
 #define DS4424_DAC_ADDR(chan)   ((chan) + 0xf8)
@@ -36,22 +37,27 @@
 }
 
 struct ds4424_chip_info {
+	u8 result_mask;
 	u8 num_channels;
 };
 
 static const struct ds4424_chip_info ds4402_info = {
+	.result_mask = DS4404_DAC_MASK,
 	.num_channels = DS4422_MAX_DAC_CHANNELS,
 };
 
 static const struct ds4424_chip_info ds4404_info = {
+	.result_mask = DS4404_DAC_MASK,
 	.num_channels = DS4424_MAX_DAC_CHANNELS,
 };
 
 static const struct ds4424_chip_info ds4422_info = {
+	.result_mask = DS4424_DAC_MASK,
 	.num_channels = DS4422_MAX_DAC_CHANNELS,
 };
 
 static const struct ds4424_chip_info ds4424_info = {
+	.result_mask = DS4424_DAC_MASK,
 	.num_channels = DS4424_MAX_DAC_CHANNELS,
 };
 
@@ -61,6 +67,7 @@ struct ds4424_data {
 	uint8_t save[DS4424_MAX_DAC_CHANNELS];
 	struct regulator *vcc_reg;
 	uint8_t raw[DS4424_MAX_DAC_CHANNELS];
+	const struct ds4424_chip_info *chip_info;
 };
 
 static const struct iio_chan_spec ds4424_channels[] = {
@@ -111,6 +118,7 @@ static int ds4424_read_raw(struct iio_dev *indio_dev,
 			   struct iio_chan_spec const *chan,
 			   int *val, int *val2, long mask)
 {
+	struct ds4424_data *data = iio_priv(indio_dev);
 	int ret, regval;
 
 	switch (mask) {
@@ -123,7 +131,7 @@ static int ds4424_read_raw(struct iio_dev *indio_dev,
 			return ret;
 		}
 
-		*val = regval & DS4424_DAC_MASK;
+		*val = regval & data->chip_info->result_mask;
 		if (!(regval & DS4424_DAC_SOURCE))
 			*val = -*val;
 
@@ -138,6 +146,7 @@ static int ds4424_write_raw(struct iio_dev *indio_dev,
 			     struct iio_chan_spec const *chan,
 			     int val, int val2, long mask)
 {
+	struct ds4424_data *data = iio_priv(indio_dev);
 	unsigned int abs_val;
 
 	if (val2 != 0)
@@ -146,7 +155,7 @@ static int ds4424_write_raw(struct iio_dev *indio_dev,
 	switch (mask) {
 	case IIO_CHAN_INFO_RAW:
 		abs_val = abs(val);
-		if (abs_val > DS4424_DAC_MASK)
+		if (abs_val > data->chip_info->result_mask)
 			return -EINVAL;
 
 		/*
@@ -238,6 +247,7 @@ static int ds4424_probe(struct i2c_client *client)
 	i2c_set_clientdata(client, indio_dev);
 	data->client = client;
 	indio_dev->name = id->name;
+	data->chip_info = chip_info;
 
 	data->vcc_reg = devm_regulator_get(&client->dev, "vcc");
 	if (IS_ERR(data->vcc_reg))
-- 
2.47.3


