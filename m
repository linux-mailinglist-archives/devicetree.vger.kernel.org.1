Return-Path: <devicetree+bounces-277753-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MClIBDDmu2njpQIAu9opvQ
	(envelope-from <devicetree+bounces-277753-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 13:04:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EA8DE2CAD92
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 13:03:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2DA1230625B2
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 12:00:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FC963D3339;
	Thu, 19 Mar 2026 11:59:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GjrdSSgm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50F1C3D16F7
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 11:59:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773921564; cv=none; b=kTOHqbGAiE4QgT0EVUZ23MfmEsa5iami2b3fpzuPs35FT5iEpTiR2YjMyNxUGXxUm+h0bc48xTcY0ymF+J1WZZCSpcoZ9misTnMZtRpYVupxyjotPi4pQOUJZDpzDKhlVO40Himfhc+Q8Q9kX66Co6h3CL5EhN8SQb0Tc/19HLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773921564; c=relaxed/simple;
	bh=egKHr0hohoUF1Y46/QK4pbAPf8UkacKpEmSV/fnmdIg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=PV2Er8v1BHbHIg8GbIcZVJA28UphKChi3MZYwemxZj5jt1HreJwElN3rNBu2LZE5cuXzElBb2h4322GkG6Up2CC/tMCIKeSU2ayTPpHZwKTuG/CARgJsUtjz6RNs37qagFDZgkNleH4NZw55yafiKszBkxKlXwajVwTR2Mj7luQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GjrdSSgm; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-65c0891f4e9so1738470a12.1
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 04:59:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773921555; x=1774526355; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Dtlos7JIiB738v4Wa8FtbGBxNvY35k21oQSX4LVS2wk=;
        b=GjrdSSgmlb2KrbbOT6j+43Ru+iTKWJP24YhsLvvuE6FQf81yA4j2BvWIkRyDGknu/+
         7PH8nx7WcNBKDp1LDt4HGa+OY9yMp7mjwbae7tRzyoTAtT+0valqkhMwgDJOe+JHvEbS
         BYy+K0AyFJTBvXdVws352ZlStgUqX4OXH//QpqVl+te38byYNCzpRkz0lYtGdblkMy5I
         PQ1YPvGl1IgZkSdW2/oYGMjhhiF4bLGySEuYhGfpXyLdIbfEQM/l5qSjG6NhkCh0quAk
         78m5OxBWwdHeUJCBt4TCzxkULbYXYPGkrYiwRSvxnm8Bg53vEggYy0iqBbmiaTmkY/To
         5VOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773921555; x=1774526355;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Dtlos7JIiB738v4Wa8FtbGBxNvY35k21oQSX4LVS2wk=;
        b=JniY3Xqb0IcGAqspWCHHO3uJzQt5B9xmV1uidgVCNzQ2+65xlA7IjYh8vhfzZLs0LI
         EmLOysta08ZyWTTTufMPGqD1aVJDp2VYoxN/ibRq7ZL6vRua5Ctfpe6M3ZiU0wCoAS+9
         nypmBlHdVtTf985Eih2e7LQwGhuoDCnk9cjHMch/NQsdKh2tXQHoucIRkKMjRYV23Gv2
         UJZPsTIlWYSXDDuCVqTS6oh4OsEyU3GbyP51OS+PW1Ml7Qv7xK5wDdFzvDpntWPwMz1A
         yle1mhX9QTke2GF398MsugAmNJOTGDkaAX54Cb3Z4J75S6Kwp7UdFXPJCUdgOUQ9aaQf
         bjXQ==
X-Forwarded-Encrypted: i=1; AJvYcCVUR8wyk1uRsS+2fc4GIvWXCb+tdxe1iwLyBHT4ikrjkuYVaWo/VhT3BRgus8CVzrQARiTV9aDaNcpx@vger.kernel.org
X-Gm-Message-State: AOJu0YyCpf4ETUvOeqsjK3egFScvXqik4YhdzPR3RrkzRsemqk8SU24m
	mLyJzDuhmfwKVD+PTLGRLdUoiUeu8W1lf0Mp3a3Owev6wak6QwVZkcQj
X-Gm-Gg: ATEYQzz0RwyvWDSPCnAmqh8GM4CcIvdDWTwbr91z6oST6Z829ViziY3jh1ztmLg37Zf
	RH1NHWNd+bFt8IAbxy1eVanDvDtg4/ZUI8aTe8XOTSTbqZY316Q5bGbYC6r2ojrQuKBeHWDuYHJ
	b/9l8PZnhVN0Vkqu/tLm3OugTrj8nBB8Ub95HNtvARmj4pUXmA3jRDLCZvGx8Us5LF1Ncd9b5oe
	mY7h8xGzfDGDAp39XTMwgTukFZnELdLbbtHVGZgnopiG9vyE1hki2c0e8pgUqD+uggE8PkY5bxR
	RUW9xt/eusZm/uwgWW0XMY2wbmsHED5Mu/lmQVCxdNGiQ+u+fRxXi61pVh6be73a5HyGF2Ry1wl
	SfJRFCg88qihhtyp3ojQYSpy6KwaDy5V5Hh7SMxGzrN/sfQWYrOt0CxgAmJ02HOEQ7CRIKAInf9
	nKjUOFl5BrfiLF00ggN8fDw28uEliF5AGdoHIO
X-Received: by 2002:a17:907:60d5:b0:b97:cc05:61a7 with SMTP id a640c23a62f3a-b97f4aad93cmr479421466b.51.1773921554991;
        Thu, 19 Mar 2026 04:59:14 -0700 (PDT)
Received: from [192.168.0.39] ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b97f16d3380sm461399166b.42.2026.03.19.04.59.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 04:59:14 -0700 (PDT)
From: Erikas Bitovtas <xerikasxx@gmail.com>
Date: Thu, 19 Mar 2026 13:58:44 +0200
Subject: [PATCH v5 6/8] iio: light: vcnl4000: use variables for I2C client
 and device instances
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260319-vcnl4000-regulators-v5-6-a025d3332805@gmail.com>
References: <20260319-vcnl4000-regulators-v5-0-a025d3332805@gmail.com>
In-Reply-To: <20260319-vcnl4000-regulators-v5-0-a025d3332805@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>, 
 David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Peter Meerwald <pmeerw@pmeerw.net>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
 phone-devel@vger.kernel.org, Erikas Bitovtas <xerikasxx@gmail.com>
X-Mailer: b4 0.14.3
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277753-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.sr.ht,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xerikasxx@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.969];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[baylibre.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: EA8DE2CAD92
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

After moving data->client and client->dev into variables of their own,
replace all instances of data->client and client->dev being used in
vcnl4200_init() and vcnl4000_probe() by the said variables to reduce
clutter.

Reviewed-by: David Lechner <dlechner@baylibre.com>
Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
---
 drivers/iio/light/vcnl4000.c | 35 ++++++++++++++++-------------------
 1 file changed, 16 insertions(+), 19 deletions(-)

diff --git a/drivers/iio/light/vcnl4000.c b/drivers/iio/light/vcnl4000.c
index 76aee16d479b..34b52725aff6 100644
--- a/drivers/iio/light/vcnl4000.c
+++ b/drivers/iio/light/vcnl4000.c
@@ -361,14 +361,14 @@ static int vcnl4200_init(struct vcnl4000_data *data)
 	int ret, id;
 	u16 regval;
 
-	ret = i2c_smbus_read_word_data(data->client, VCNL4200_DEV_ID);
+	ret = i2c_smbus_read_word_data(client, VCNL4200_DEV_ID);
 	if (ret < 0)
 		return ret;
 
 	id = ret & 0xff;
 
 	if (id != VCNL4200_PROD_ID) {
-		ret = i2c_smbus_read_word_data(data->client, VCNL4040_DEV_ID);
+		ret = i2c_smbus_read_word_data(client, VCNL4040_DEV_ID);
 		if (ret < 0)
 			return ret;
 
@@ -378,7 +378,7 @@ static int vcnl4200_init(struct vcnl4000_data *data)
 			return -ENODEV;
 	}
 
-	dev_dbg(&data->client->dev, "device id 0x%x", id);
+	dev_dbg(dev, "device id 0x%x", id);
 
 	data->rev = (ret >> 8) & 0xf;
 	data->ps_int = 0;
@@ -412,24 +412,22 @@ static int vcnl4200_init(struct vcnl4000_data *data)
 		return ret;
 
 	/* Use 16 bits proximity sensor readings */
-	ret = i2c_smbus_read_word_data(data->client, VCNL4200_PS_CONF1);
+	ret = i2c_smbus_read_word_data(client, VCNL4200_PS_CONF1);
 	if (ret < 0)
 		return ret;
 
 	regval = ret | VCNL4040_PS_CONF2_PS_HD;
-	ret = i2c_smbus_write_word_data(data->client, VCNL4200_PS_CONF1,
-					regval);
+	ret = i2c_smbus_write_word_data(client, VCNL4200_PS_CONF1, regval);
 	if (ret < 0)
 		return ret;
 
 	/* Align proximity sensor sample rate to 16 bits data width */
-	ret = i2c_smbus_read_word_data(data->client, VCNL4200_PS_CONF3);
+	ret = i2c_smbus_read_word_data(client, VCNL4200_PS_CONF3);
 	if (ret < 0)
 		return ret;
 
 	regval = ret | VCNL4040_CONF3_PS_SAMPLE_16BITS;
-	ret = i2c_smbus_write_word_data(data->client, VCNL4200_PS_CONF3,
-					regval);
+	ret = i2c_smbus_write_word_data(client, VCNL4200_PS_CONF3, regval);
 	if (ret < 0)
 		return ret;
 
@@ -1992,7 +1990,7 @@ static int vcnl4000_probe(struct i2c_client *client)
 	struct iio_dev *indio_dev;
 	int ret;
 
-	indio_dev = devm_iio_device_alloc(&client->dev, sizeof(*data));
+	indio_dev = devm_iio_device_alloc(dev, sizeof(*data));
 	if (!indio_dev)
 		return -ENOMEM;
 
@@ -2014,7 +2012,7 @@ static int vcnl4000_probe(struct i2c_client *client)
 	if (ret)
 		return ret;
 
-	dev_dbg(&client->dev, "%s Ambient light/proximity sensor, Rev: %02x\n",
+	dev_dbg(dev, "%s Ambient light/proximity sensor, Rev: %02x\n",
 		data->chip_spec->prod, data->rev);
 
 	if (device_property_read_u32(&client->dev, "proximity-near-level",
@@ -2029,8 +2027,7 @@ static int vcnl4000_probe(struct i2c_client *client)
 
 	if (data->chip_spec->trig_buffer_func &&
 	    data->chip_spec->buffer_setup_ops) {
-		ret = devm_iio_triggered_buffer_setup(&client->dev, indio_dev,
-						      NULL,
+		ret = devm_iio_triggered_buffer_setup(dev, indio_dev, NULL,
 						      data->chip_spec->trig_buffer_func,
 						      data->chip_spec->buffer_setup_ops);
 		if (ret < 0)
@@ -2038,8 +2035,8 @@ static int vcnl4000_probe(struct i2c_client *client)
 	}
 
 	if (client->irq && data->chip_spec->irq_thread) {
-		ret = devm_request_threaded_irq(&client->dev, client->irq,
-						NULL, data->chip_spec->irq_thread,
+		ret = devm_request_threaded_irq(dev, client->irq, NULL,
+						data->chip_spec->irq_thread,
 						IRQF_TRIGGER_FALLING |
 						IRQF_ONESHOT,
 						"vcnl4000_irq",
@@ -2052,7 +2049,7 @@ static int vcnl4000_probe(struct i2c_client *client)
 			return ret;
 	}
 
-	ret = pm_runtime_set_active(&client->dev);
+	ret = pm_runtime_set_active(dev);
 	if (ret < 0)
 		goto fail_poweroff;
 
@@ -2060,9 +2057,9 @@ static int vcnl4000_probe(struct i2c_client *client)
 	if (ret < 0)
 		goto fail_poweroff;
 
-	pm_runtime_enable(&client->dev);
-	pm_runtime_set_autosuspend_delay(&client->dev, VCNL4000_SLEEP_DELAY_MS);
-	pm_runtime_use_autosuspend(&client->dev);
+	pm_runtime_enable(dev);
+	pm_runtime_set_autosuspend_delay(dev, VCNL4000_SLEEP_DELAY_MS);
+	pm_runtime_use_autosuspend(dev);
 
 	return 0;
 fail_poweroff:

-- 
2.53.0


