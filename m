Return-Path: <devicetree+bounces-259730-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GJtYIcVWeGkNpgEAu9opvQ
	(envelope-from <devicetree+bounces-259730-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 07:10:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 62A57903FB
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 07:10:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 396C9300FF83
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 06:10:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D394E32FA00;
	Tue, 27 Jan 2026 06:09:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EAFE32B9BB
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 06:09:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769494190; cv=none; b=eO7wHGm6CjnV0qCe9DdDYnZnMl5KS8kUQTruKABO5QTZIiIQaNQDzfCy8AB3R7m0qyHVSZ4nlWK841hnf8zh7ekI0KzMSjlLQsLwKHnfgpUeTUb7rh+U08RdcSPJGNKzGnfgmAHqtPUDV1dmWCnwt2w0x+NEsU/5yvOuhENBpB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769494190; c=relaxed/simple;
	bh=3VAe1S+YoVFTzjAEeIIj6KaWPmcgZqLeu66mEbSENWI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=t6ffftpCOG8Y3AMMwKlPp1+e4DvhPM9KFpofJvfXOvzmyCgrBIqtssanVyteJp67InUUH+aTRzmHcdlQa7hnwToE1Ax9kbugSEIat8L6ckMPQfXOC07sPmrdXQYs8PpWXh3UBr7dfrRbPy0ME0eEn2bgTHwpEdjuvfx0unZ/A2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1vkcGk-0003pb-0D; Tue, 27 Jan 2026 07:09:42 +0100
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac] helo=dude04)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1vkcGj-002hiP-35;
	Tue, 27 Jan 2026 07:09:41 +0100
Received: from ore by dude04 with local (Exim 4.98.2)
	(envelope-from <ore@pengutronix.de>)
	id 1vkcGj-0000000GQFN-0sCO;
	Tue, 27 Jan 2026 07:09:41 +0100
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
Subject: [PATCH v2 5/8] iio: dac: ds4424: convert to regmap
Date: Tue, 27 Jan 2026 07:09:36 +0100
Message-ID: <20260127060939.3914006-6-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260127060939.3914006-1-o.rempel@pengutronix.de>
References: <20260127060939.3914006-1-o.rempel@pengutronix.de>
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
	TAGGED_FROM(0.00)[bounces-259730-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.994];
	FROM_NEQ_ENVFROM(0.00)[o.rempel@pengutronix.de,devicetree@vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[pengutronix.de:mid,pengutronix.de:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 62A57903FB
X-Rspamd-Action: no action

Refactor the driver to use the regmap API.

Replace the driver-specific mutex and manual shadow buffers with the
standard regmap infrastructure for locking and caching.

This ensures the cache is populated from hardware at probe, preventing
state desynchronization (e.g. across suspend/resume).

Define access tables to validate the different register maps of DS44x2
and DS44x4.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
changes v2:
- new patch
---
 drivers/iio/dac/Kconfig  |   1 +
 drivers/iio/dac/ds4424.c | 163 +++++++++++++++++++++++----------------
 2 files changed, 96 insertions(+), 68 deletions(-)

diff --git a/drivers/iio/dac/Kconfig b/drivers/iio/dac/Kconfig
index 7cd3caec1262..dbbbc45e8718 100644
--- a/drivers/iio/dac/Kconfig
+++ b/drivers/iio/dac/Kconfig
@@ -408,6 +408,7 @@ config DPOT_DAC
 config DS4424
 	tristate "Maxim Integrated DS4422/DS4424 DAC driver"
 	depends on I2C
+	select REGMAP_I2C
 	help
 	  If you say yes here you get support for Maxim chips DS4422, DS4424.
 
diff --git a/drivers/iio/dac/ds4424.c b/drivers/iio/dac/ds4424.c
index a4f00045f17b..f9ab7f4b97ff 100644
--- a/drivers/iio/dac/ds4424.c
+++ b/drivers/iio/dac/ds4424.c
@@ -14,6 +14,7 @@
 #include <linux/iio/machine.h>
 #include <linux/kernel.h>
 #include <linux/module.h>
+#include <linux/regmap.h>
 #include <linux/regulator/consumer.h>
 
 #define DS4422_MAX_DAC_CHANNELS		2
@@ -55,11 +56,8 @@ enum ds4424_device_ids {
 };
 
 struct ds4424_data {
-	struct i2c_client *client;
-	struct mutex lock;
-	uint8_t save[DS4424_MAX_DAC_CHANNELS];
+	struct regmap *regmap;
 	struct regulator *vcc_reg;
-	uint8_t raw[DS4424_MAX_DAC_CHANNELS];
 };
 
 static const struct iio_chan_spec ds4424_channels[] = {
@@ -69,59 +67,80 @@ static const struct iio_chan_spec ds4424_channels[] = {
 	DS4424_CHANNEL(3),
 };
 
-static int ds4424_get_value(struct iio_dev *indio_dev,
-			     int *val, int channel)
-{
-	struct ds4424_data *data = iio_priv(indio_dev);
-	int ret;
+static const struct regmap_range ds44x2_ranges[] = {
+	regmap_reg_range(DS4424_DAC_ADDR(0), DS4424_DAC_ADDR(1)),
+};
 
-	mutex_lock(&data->lock);
-	ret = i2c_smbus_read_byte_data(data->client, DS4424_DAC_ADDR(channel));
-	if (ret < 0)
-		goto fail;
+static const struct regmap_range ds44x4_ranges[] = {
+	regmap_reg_range(DS4424_DAC_ADDR(0), DS4424_DAC_ADDR(3)),
+};
 
-	*val = ret;
+static const struct regmap_access_table ds44x2_table = {
+	.yes_ranges = ds44x2_ranges,
+	.n_yes_ranges = ARRAY_SIZE(ds44x2_ranges),
+};
 
-fail:
-	mutex_unlock(&data->lock);
-	return ret;
-}
+static const struct regmap_access_table ds44x4_table = {
+	.yes_ranges = ds44x4_ranges,
+	.n_yes_ranges = ARRAY_SIZE(ds44x4_ranges),
+};
 
-static int ds4424_set_value(struct iio_dev *indio_dev,
-			     int val, struct iio_chan_spec const *chan)
+static const struct regmap_config ds44x2_regmap_config = {
+	.reg_bits = 8,
+	.val_bits = 8,
+	.cache_type = REGCACHE_FLAT,
+	.max_register = DS4424_DAC_ADDR(1),
+	.rd_table = &ds44x2_table,
+	.wr_table = &ds44x2_table,
+};
+
+static const struct regmap_config ds44x4_regmap_config = {
+	.reg_bits = 8,
+	.val_bits = 8,
+	.cache_type = REGCACHE_FLAT,
+	.max_register = DS4424_DAC_ADDR(3),
+	.rd_table = &ds44x4_table,
+	.wr_table = &ds44x4_table,
+};
+
+static int ds4424_init_regmap(struct i2c_client *client,
+			      struct iio_dev *indio_dev)
 {
 	struct ds4424_data *data = iio_priv(indio_dev);
-	int ret;
+	const struct regmap_config *regmap_config;
 
-	mutex_lock(&data->lock);
-	ret = i2c_smbus_write_byte_data(data->client,
-			DS4424_DAC_ADDR(chan->channel), val);
-	if (ret < 0)
-		goto fail;
+	if (indio_dev->num_channels == DS4424_MAX_DAC_CHANNELS)
+		regmap_config = &ds44x4_regmap_config;
+	else
+		regmap_config = &ds44x2_regmap_config;
 
-	data->raw[chan->channel] = val;
+	data->regmap = devm_regmap_init_i2c(client, regmap_config);
+	if (IS_ERR(data->regmap))
+		return dev_err_probe(&client->dev, PTR_ERR(data->regmap),
+				     "Failed to init regmap.\n");
 
-fail:
-	mutex_unlock(&data->lock);
-	return ret;
+	return 0;
 }
 
 static int ds4424_read_raw(struct iio_dev *indio_dev,
 			   struct iio_chan_spec const *chan,
 			   int *val, int *val2, long mask)
 {
+	struct ds4424_data *data = iio_priv(indio_dev);
 	union ds4424_raw_data raw;
+	unsigned int regval;
 	int ret;
 
 	switch (mask) {
 	case IIO_CHAN_INFO_RAW:
-		ret = ds4424_get_value(indio_dev, val, chan->channel);
+		ret = regmap_read(data->regmap, DS4424_DAC_ADDR(chan->channel),
+				  &regval);
 		if (ret < 0) {
-			pr_err("%s : ds4424_get_value returned %d\n",
-							__func__, ret);
+			pr_err("%s : regmap_read returned %d\n",
+						__func__, ret);
 			return ret;
 		}
-		raw.bits = *val;
+		raw.bits = regval;
 		*val = raw.dx;
 		if (raw.source_bit == DS4424_SINK_I)
 			*val = -*val;
@@ -136,6 +155,7 @@ static int ds4424_write_raw(struct iio_dev *indio_dev,
 			     struct iio_chan_spec const *chan,
 			     int val, int val2, long mask)
 {
+	struct ds4424_data *data = iio_priv(indio_dev);
 	union ds4424_raw_data raw;
 
 	if (val2 != 0)
@@ -154,7 +174,8 @@ static int ds4424_write_raw(struct iio_dev *indio_dev,
 			raw.dx = -val;
 		}
 
-		return ds4424_set_value(indio_dev, raw.bits, chan);
+		return regmap_write(data->regmap, DS4424_DAC_ADDR(chan->channel),
+				    raw.bits);
 
 	default:
 		return -EINVAL;
@@ -163,49 +184,52 @@ static int ds4424_write_raw(struct iio_dev *indio_dev,
 
 static int ds4424_verify_chip(struct iio_dev *indio_dev)
 {
-	int ret, val;
+	struct ds4424_data *data = iio_priv(indio_dev);
+	u8 raw_values[DS4424_MAX_DAC_CHANNELS];
+	int ret;
 
-	ret = ds4424_get_value(indio_dev, &val, 0);
-	if (ret < 0)
-		dev_err(&indio_dev->dev,
-				"%s failed. ret: %d\n", __func__, ret);
+	/* Bulk read all channels starting at 0xf8.
+	 * This populates the regmap cache with current HW values.
+	 */
+	ret = regmap_bulk_read(data->regmap, DS4424_DAC_ADDR(0),
+			       raw_values, indio_dev->num_channels);
+	if (ret)
+		return dev_err_probe(&indio_dev->dev, ret, "Failed to seed cache\n");
 
-	return ret;
+	return 0;
 }
 
 static int ds4424_suspend(struct device *dev)
 {
-	struct i2c_client *client = to_i2c_client(dev);
-	struct iio_dev *indio_dev = i2c_get_clientdata(client);
+	struct iio_dev *indio_dev = dev_get_drvdata(dev);
 	struct ds4424_data *data = iio_priv(indio_dev);
-	int ret = 0;
-	int i;
-
-	for (i = 0; i < indio_dev->num_channels; i++) {
-		data->save[i] = data->raw[i];
-		ret = ds4424_set_value(indio_dev, 0,
-				&indio_dev->channels[i]);
-		if (ret < 0)
+	int ret;
+
+	/* Disable all outputs, bypass cache so the '0' isn't saved */
+	regcache_cache_bypass(data->regmap, true);
+	for (unsigned int i = 0; i < indio_dev->num_channels; i++) {
+		ret = regmap_write(data->regmap, DS4424_DAC_ADDR(i), 0);
+		if (ret) {
+			dev_err(dev, "Failed to zero channel %d: %d\n", i, ret);
+			regcache_cache_bypass(data->regmap, false);
 			return ret;
+		}
 	}
-	return ret;
+	regcache_cache_bypass(data->regmap, false);
+
+	regcache_cache_only(data->regmap, true);
+	regcache_mark_dirty(data->regmap);
+
+	return 0;
 }
 
 static int ds4424_resume(struct device *dev)
 {
-	struct i2c_client *client = to_i2c_client(dev);
-	struct iio_dev *indio_dev = i2c_get_clientdata(client);
+	struct iio_dev *indio_dev = dev_get_drvdata(dev);
 	struct ds4424_data *data = iio_priv(indio_dev);
-	int ret = 0;
-	int i;
 
-	for (i = 0; i < indio_dev->num_channels; i++) {
-		ret = ds4424_set_value(indio_dev, data->save[i],
-				&indio_dev->channels[i]);
-		if (ret < 0)
-			return ret;
-	}
-	return ret;
+	regcache_cache_only(data->regmap, false);
+	return regcache_sync(data->regmap);
 }
 
 static DEFINE_SIMPLE_DEV_PM_OPS(ds4424_pm_ops, ds4424_suspend, ds4424_resume);
@@ -228,7 +252,6 @@ static int ds4424_probe(struct i2c_client *client)
 
 	data = iio_priv(indio_dev);
 	i2c_set_clientdata(client, indio_dev);
-	data->client = client;
 	indio_dev->name = id->name;
 
 	data->vcc_reg = devm_regulator_get(&client->dev, "vcc");
@@ -236,7 +259,6 @@ static int ds4424_probe(struct i2c_client *client)
 		return dev_err_probe(&client->dev, PTR_ERR(data->vcc_reg),
 				     "Failed to get vcc-supply regulator.\n");
 
-	mutex_init(&data->lock);
 	ret = regulator_enable(data->vcc_reg);
 	if (ret < 0) {
 		dev_err(&client->dev,
@@ -245,9 +267,6 @@ static int ds4424_probe(struct i2c_client *client)
 	}
 
 	usleep_range(1000, 1200);
-	ret = ds4424_verify_chip(indio_dev);
-	if (ret < 0)
-		goto fail;
 
 	switch (id->driver_data) {
 	case ID_DS4402:
@@ -269,6 +288,14 @@ static int ds4424_probe(struct i2c_client *client)
 		goto fail;
 	}
 
+	ret = ds4424_init_regmap(client, indio_dev);
+	if (ret < 0)
+		goto fail;
+
+	ret = ds4424_verify_chip(indio_dev);
+	if (ret < 0)
+		goto fail;
+
 	indio_dev->channels = ds4424_channels;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	indio_dev->info = &ds4424_info;
-- 
2.47.3


