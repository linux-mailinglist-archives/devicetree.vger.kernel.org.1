Return-Path: <devicetree+bounces-264428-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eOalIwE5i2kKRwAAu9opvQ
	(envelope-from <devicetree+bounces-264428-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 14:56:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E26B11B947
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 14:56:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E02CA30A85C3
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 13:52:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6034636A02B;
	Tue, 10 Feb 2026 13:51:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7A5D366DAF
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 13:51:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770731484; cv=none; b=iSqJfzxV933b7w9FWo+x0W0keRbov8UW3T+KDnCyEsroxSuede7Zra2ntFTEa4RRLeovoZT8FMW90wljYD7s92K0jd2LHmwnGWqWeXF6O5JUhpXGyjfMZ5/73AW04alVLOq3vedT9c6qaGFG++uaJ9GVR9F2cN3yR/snfnA2ASE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770731484; c=relaxed/simple;
	bh=Duho69ITpR1VQoZFjLUSXTKeJiyYZw2J2OMqeEZCkDM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=F+Z3vE9vuhptWPnpazpFJhg13SD1didLhM6ZVkxHumqWADDgl4olZvvilGgGpCwMq4oqtxTQ5PCcrTcNeFdNhJ1JcZiNxxJJo0t0WeOGaAh6MMUsBYY0pwOI/Zl4oROcKrMl+eSrBtoeWT0isBtv/bgZ+zKsQDh7ApXTFu882l0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1vpo93-0005dU-HZ; Tue, 10 Feb 2026 14:51:13 +0100
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac] helo=dude04)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1vpo92-0005dI-15;
	Tue, 10 Feb 2026 14:51:12 +0100
Received: from ore by dude04 with local (Exim 4.98.2)
	(envelope-from <ore@pengutronix.de>)
	id 1vpo92-00000008VP3-40bY;
	Tue, 10 Feb 2026 14:51:12 +0100
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
Subject: [PATCH v6 12/12] iio: dac: ds4424: add Rfs-based scale and per-variant limits
Date: Tue, 10 Feb 2026 14:51:10 +0100
Message-ID: <20260210135110.2027073-13-o.rempel@pengutronix.de>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[6];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[bounces-264428-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	R_DKIM_NA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[o.rempel@pengutronix.de,devicetree@vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,pengutronix.de:mid,pengutronix.de:email]
X-Rspamd-Queue-Id: 2E26B11B947
X-Rspamd-Action: no action

Parse optional maxim,rfs-ohms values to derive the per-channel output
current scale (mA per step) for the IIO current ABI.

Behavior changes:
- If maxim,rfs-ohms is present, IIO_CHAN_INFO_SCALE becomes available
  and reports mA/step derived from Rfs.
- If maxim,rfs-ohms is missing, SCALE is not exposed to keep older DTs
  working without requiring updates.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
Reviewed-by: Andy Shevchenko <andriy.shevchenko@intel.com>
---
changes v6:
- no changes
changes v5:
- no changes
changes v4:
- Split series: moved infrastructure and RAW limit fixes to a preceding patch.
- Replaced dynamic channel allocation (devm_kmemdup_array()) with static
  const arrays (ds4424_channels_with_scale) to handle the two states.
- Removed log message when maxim,rfs-ohms is missing.
changes v3:
- Added explicit check for negative return from device_property_count_u32().
- Rename vref_mv to vref_mV
- Use devm_kmemdup_array() instead of devm_kmemdup()
- Use %u for unsigned index in Rfs error logs.
- Consolidated Rfs parse logs to a single line.
changes v2:
- Reorder struct ds4424_chip_info members to optimize padding.
- Use GENMASK() for chip variant masks instead of hex constants.
- Simplify ds4424_setup_channels: use direct devm_kmemdup to avoid stack
  usage and memcpy.
- Use local 'dev' pointer and dev_err_probe() in ds4424_parse_rfs for
  cleaner error handling.
- Rename the static iio_info struct to ds4424_iio_info to prevent name
  collision with the new hardware chip_info structs.
- Use unsigned int for loop counters.
- Rebase on top of regmap and symmetrical raw_access refactoring.
---
 drivers/iio/dac/ds4424.c | 81 +++++++++++++++++++++++++++++++++++++++-
 1 file changed, 80 insertions(+), 1 deletion(-)

diff --git a/drivers/iio/dac/ds4424.c b/drivers/iio/dac/ds4424.c
index 16de31665eff..48dbe7f5727b 100644
--- a/drivers/iio/dac/ds4424.c
+++ b/drivers/iio/dac/ds4424.c
@@ -12,6 +12,7 @@
 #include <linux/i2c.h>
 #include <linux/kernel.h>
 #include <linux/module.h>
+#include <linux/property.h>
 #include <linux/regmap.h>
 #include <linux/regulator/consumer.h>
 #include <linux/time64.h>
@@ -39,32 +40,51 @@
 	.info_mask_separate = BIT(IIO_CHAN_INFO_RAW), \
 }
 
+#define DS4424_CHANNEL_WITH_SCALE(chan) { \
+	.type = IIO_CURRENT, \
+	.indexed = 1, \
+	.output = 1, \
+	.channel = chan, \
+	.info_mask_separate = BIT(IIO_CHAN_INFO_RAW) | \
+			      BIT(IIO_CHAN_INFO_SCALE), \
+}
+
 struct ds4424_chip_info {
 	const char *name;
+	int vref_mV;
+	int scale_denom;
 	u8 result_mask;
 	u8 num_channels;
 };
 
 static const struct ds4424_chip_info ds4402_info = {
 	.name = "ds4402",
+	.vref_mV = 1230,
+	.scale_denom = 4,
 	.result_mask = DS4404_DAC_MASK,
 	.num_channels = DS4422_MAX_DAC_CHANNELS,
 };
 
 static const struct ds4424_chip_info ds4404_info = {
 	.name = "ds4404",
+	.vref_mV = 1230,
+	.scale_denom = 4,
 	.result_mask = DS4404_DAC_MASK,
 	.num_channels = DS4424_MAX_DAC_CHANNELS,
 };
 
 static const struct ds4424_chip_info ds4422_info = {
 	.name = "ds4422",
+	.vref_mV = 976,
+	.scale_denom = 16,
 	.result_mask = DS4424_DAC_MASK,
 	.num_channels = DS4422_MAX_DAC_CHANNELS,
 };
 
 static const struct ds4424_chip_info ds4424_info = {
 	.name = "ds4424",
+	.vref_mV = 976,
+	.scale_denom = 16,
 	.result_mask = DS4424_DAC_MASK,
 	.num_channels = DS4424_MAX_DAC_CHANNELS,
 };
@@ -73,6 +93,8 @@ struct ds4424_data {
 	struct regmap *regmap;
 	struct regulator *vcc_reg;
 	const struct ds4424_chip_info *chip_info;
+	u32 rfs_ohms[DS4424_MAX_DAC_CHANNELS];
+	bool has_rfs;
 };
 
 static const struct iio_chan_spec ds4424_channels[] = {
@@ -82,6 +104,13 @@ static const struct iio_chan_spec ds4424_channels[] = {
 	DS4424_CHANNEL(3),
 };
 
+static const struct iio_chan_spec ds4424_channels_with_scale[] = {
+	DS4424_CHANNEL_WITH_SCALE(0),
+	DS4424_CHANNEL_WITH_SCALE(1),
+	DS4424_CHANNEL_WITH_SCALE(2),
+	DS4424_CHANNEL_WITH_SCALE(3),
+};
+
 static const struct regmap_range ds44x2_ranges[] = {
 	regmap_reg_range(DS4424_DAC_ADDR(0), DS4424_DAC_ADDR(1)),
 };
@@ -174,6 +203,15 @@ static int ds4424_read_raw(struct iio_dev *indio_dev,
 			*val = -*val;
 
 		return IIO_VAL_INT;
+	case IIO_CHAN_INFO_SCALE:
+		if (!data->has_rfs)
+			return -EINVAL;
+
+		/* SCALE is mA/step: mV / Ohm = mA. */
+		*val = data->chip_info->vref_mV;
+		*val2 = data->rfs_ohms[chan->channel] *
+			data->chip_info->scale_denom;
+		return IIO_VAL_FRACTIONAL;
 
 	default:
 		return -EINVAL;
@@ -212,6 +250,39 @@ static int ds4424_write_raw(struct iio_dev *indio_dev,
 	}
 }
 
+static int ds4424_parse_rfs(struct i2c_client *client,
+			    struct ds4424_data *data,
+			    struct iio_dev *indio_dev)
+{
+	struct device *dev = &client->dev;
+	int count, ret;
+
+	if (!device_property_present(dev, "maxim,rfs-ohms"))
+		return 0;
+
+	count = device_property_count_u32(dev, "maxim,rfs-ohms");
+	if (count < 0)
+		return dev_err_probe(dev, count, "Failed to count maxim,rfs-ohms entries\n");
+	if (count != indio_dev->num_channels)
+		return dev_err_probe(dev, -EINVAL, "maxim,rfs-ohms must have %u entries\n",
+				     indio_dev->num_channels);
+
+	ret = device_property_read_u32_array(dev, "maxim,rfs-ohms",
+					     data->rfs_ohms,
+					     indio_dev->num_channels);
+	if (ret)
+		return dev_err_probe(dev, ret, "Failed to read maxim,rfs-ohms property\n");
+
+	for (unsigned int i = 0; i < indio_dev->num_channels; i++) {
+		if (!data->rfs_ohms[i])
+			return dev_err_probe(dev, -EINVAL, "maxim,rfs-ohms entry %u is zero\n", i);
+	}
+
+	data->has_rfs = true;
+
+	return 0;
+}
+
 static int ds4424_suspend(struct device *dev)
 {
 	struct iio_dev *indio_dev = dev_get_drvdata(dev);
@@ -291,7 +362,6 @@ static int ds4424_probe(struct i2c_client *client)
 	fsleep(1 * USEC_PER_MSEC);
 
 	indio_dev->num_channels = chip_info->num_channels;
-	indio_dev->channels = ds4424_channels;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	indio_dev->info = &ds4424_iio_info;
 
@@ -299,6 +369,15 @@ static int ds4424_probe(struct i2c_client *client)
 	if (ret)
 		goto fail;
 
+	ret = ds4424_parse_rfs(client, data, indio_dev);
+	if (ret)
+		goto fail;
+
+	if (data->has_rfs)
+		indio_dev->channels = ds4424_channels_with_scale;
+	else
+		indio_dev->channels = ds4424_channels;
+
 	ret = iio_device_register(indio_dev);
 	if (ret < 0) {
 		dev_err(&client->dev,
-- 
2.47.3


