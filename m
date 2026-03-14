Return-Path: <devicetree+bounces-275733-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eBHHBBKItWn11QAAu9opvQ
	(envelope-from <devicetree+bounces-275733-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 17:08:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DDF128DCFA
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 17:08:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 80B4D3039F51
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 16:07:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6AAC37E2E8;
	Sat, 14 Mar 2026 16:06:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dGaiKDey"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 336A237CD57
	for <devicetree@vger.kernel.org>; Sat, 14 Mar 2026 16:06:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773504407; cv=none; b=GeLwtnwW2bG1B6tFMDIy2fj30O9Sg4G4ugLk6v8DeWoc315OEQA6wlYAjLreYcrDEfXpnq9wlBVmZ7Pxvjkx9cSK56WbmXeoxUaMuxjmBrSbUFj0MkAxVypzSEjarGBiEPTYfASZp6s1ubWK0zTT3mbwXrQJUiAngR/LhVPAF1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773504407; c=relaxed/simple;
	bh=AAYQH8m5hJopiQqgeTngADuMlO+elqyJCsSOeSZcnBU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=UA/JY0z8RCQh8t6RifJ3Cvhe/1fz2AXRsGLu8SJw3k74YXQOZCwWmLFdC6YS/vpWjelRF5QgQ//UBWdPWj+nwm2ha2OdDBJ/16ZErUYAzMExuqWRW/kDcwWYF8ctRHZbENAWjfKqJy3FC1iLI1D0FUu5rfH9brm0WOIa7BgbOUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dGaiKDey; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-66438f18ea1so1893965a12.3
        for <devicetree@vger.kernel.org>; Sat, 14 Mar 2026 09:06:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773504404; x=1774109204; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ztVKqP7Iue8aUh5WW0pabHa7SHe1KuIXZfJfBXrdn9M=;
        b=dGaiKDeyCS/zMpoONAWtHlh6/lm5+lp/RD1B9EeSGZ2u5oRIpW1Iirkmz6zYIloLUs
         /VEQqCH0R4Ju26RpDnC1TS3BAF8DBdY3Q1WBZn2Uc+aCHx1O3h2FCSuD7NOXd8cKJyew
         J7uWG3FghoA8CkNzjwbAEajbKB3PKa6EDxnl9TvygmQ7D3+SB4dAu+1gec9Pp9HuS2em
         3BBpwDEj7DyjxSYc6iuY1TW/JVmo7U/pE/tUCSnHUkzJ/wit9T/7rU8xc4H5q+DmUNWl
         NSDJUXU3GBO1RC28jclfsIoF2DHlcKiXVfRlT2OpoKW5x6xn9oR1sY5RKL7fIDYahpB+
         f2TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773504404; x=1774109204;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ztVKqP7Iue8aUh5WW0pabHa7SHe1KuIXZfJfBXrdn9M=;
        b=kFw7RXKhgYE+r7baJE66/V0PRKoWXoAdJ+rqCipod9NBvtJis0w9Cj2Ujt3GP5LUhl
         IJBbGjuuNkqifPZrOaTa2QREig2OTFfzPnpmA30RWzT28/MqzPYPhqIz03k+PfnkWcqH
         bejVZKSigajpoDF212Q3oiN14h6axyAQEP5XzsR7jo40ZRjZwUnlOFEtKN00XXSFvc8Z
         4UHoTjtFZ2NUkkfGXaWdKcxOs+fcvPSK2+vMsZqRt6a5pEj9dhset28n2k69b2FBNkC6
         Ko0cBmUTNA7DnrMWxc8+u7M8vnhluxG7ZZV5jziSODGTH9C7oRHZlxxTYkwbgY3w0Q0/
         hrkw==
X-Forwarded-Encrypted: i=1; AJvYcCXS49MP+yw8CMdi3yoM9a4Gu0e6yKATpYVNU/eF/Py3jT61DNLM5tDsLBkDp0/ZzmQIuqXNFJlTKmRL@vger.kernel.org
X-Gm-Message-State: AOJu0YyZ6SFeJhjp/+onzb7qcBSolXs5hJW5Pao9mnB7w7FtHDvWWv9/
	lgIoqCgcUeXY9KhPtwq+1xZYbKcxmRWyf6wNJzZ7cf931OlHude9A3t3
X-Gm-Gg: ATEYQzzALGb1JvJqTMiU4U8dCM1OHJ4/9JkDrsoqzIvgQbbHZpT9Gm7CDYiW3j7H1Wu
	FTPCopGHSgLFcZQvYgArf286ptKA6XSnbs/odoIHkJPfkbFcoxrVvykIe6aegkAtTBSm1AOhbkC
	WnIiq9BvnXR44cXJ2NUXK9P96yFYGlLZvdwZkdyxZUipbRzQoFQVoUGaTTFyKpJrU7Stf1tPFUv
	baiJkhMu5mDd+ygS/Pdc41nfOFPN+YsSedUD7wngvWxjoET6w+/xVk2ndjUWq/Ad+p0ZQShi4bb
	gs11uazBXpWJU5nOOP/bJlyWRE0SCGN7zlHn0AUcsR4NtMoF7HIF+OO9ydrGMSKKynf67gSZGgX
	L0h9NzjDfPvUWbCrujJ2nOiWGeSb7gh076lOJ6ZGwmOhj2iHwkBHmDJsU8UKvp3FsvTONzTj9fM
	YZ1/R6L8JNmVGSG/rv/RtV8ueTcw==
X-Received: by 2002:a17:907:746:b0:b97:6384:2317 with SMTP id a640c23a62f3a-b97650e5609mr440832566b.17.1773504404085;
        Sat, 14 Mar 2026 09:06:44 -0700 (PDT)
Received: from [192.168.0.39] ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b978b8625d3sm151722366b.52.2026.03.14.09.06.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Mar 2026 09:06:43 -0700 (PDT)
From: Erikas Bitovtas <xerikasxx@gmail.com>
Date: Sat, 14 Mar 2026 18:06:35 +0200
Subject: [PATCH v3 6/6] iio: light: vcnl4000: use variables for I2C client
 and device instances
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260314-vcnl4000-regulators-v3-6-3c4a48d30676@gmail.com>
References: <20260314-vcnl4000-regulators-v3-0-3c4a48d30676@gmail.com>
In-Reply-To: <20260314-vcnl4000-regulators-v3-0-3c4a48d30676@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275733-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.sr.ht,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xerikasxx@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 7DDF128DCFA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

After moving data->client and client->dev into variables of their own,
replace all instances of data->client and client->dev being used in
vcnl4200_init and vcnl4000_probe by the said variables to reduce
clutter.

Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
---
 drivers/iio/light/vcnl4000.c | 34 +++++++++++++++++-----------------
 1 file changed, 17 insertions(+), 17 deletions(-)

diff --git a/drivers/iio/light/vcnl4000.c b/drivers/iio/light/vcnl4000.c
index c8bb1826b916..9b7cd3f0c8fb 100644
--- a/drivers/iio/light/vcnl4000.c
+++ b/drivers/iio/light/vcnl4000.c
@@ -362,14 +362,14 @@ static int vcnl4200_init(struct vcnl4000_data *data)
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
 
@@ -379,7 +379,7 @@ static int vcnl4200_init(struct vcnl4000_data *data)
 			return -ENODEV;
 	}
 
-	dev_dbg(&data->client->dev, "device id 0x%x", id);
+	dev_dbg(dev, "device id 0x%x", id);
 
 	data->rev = (ret >> 8) & 0xf;
 	data->ps_int = 0;
@@ -413,23 +413,23 @@ static int vcnl4200_init(struct vcnl4000_data *data)
 		return ret;
 
 	/* Use 16 bits proximity sensor readings */
-	ret = i2c_smbus_read_word_data(data->client, VCNL4200_PS_CONF1);
+	ret = i2c_smbus_read_word_data(client, VCNL4200_PS_CONF1);
 	if (ret < 0)
 		return ret;
 
 	regval = ret | VCNL4040_PS_CONF2_PS_HD;
-	ret = i2c_smbus_write_word_data(data->client, VCNL4200_PS_CONF1,
+	ret = i2c_smbus_write_word_data(client, VCNL4200_PS_CONF1,
 					regval);
 	if (ret < 0)
 		return ret;
 
 	/* Align proximity sensor sample rate to 16 bits data width */
-	ret = i2c_smbus_read_word_data(data->client, VCNL4200_PS_CONF3);
+	ret = i2c_smbus_read_word_data(client, VCNL4200_PS_CONF3);
 	if (ret < 0)
 		return ret;
 
 	regval = ret | VCNL4040_CONF3_PS_SAMPLE_16BITS;
-	ret = i2c_smbus_write_word_data(data->client, VCNL4200_PS_CONF3,
+	ret = i2c_smbus_write_word_data(client, VCNL4200_PS_CONF3,
 					regval);
 	if (ret < 0)
 		return ret;
@@ -1998,7 +1998,7 @@ static int vcnl4000_probe(struct i2c_client *client)
 	struct device *dev = &client->dev;
 	int ret;
 
-	indio_dev = devm_iio_device_alloc(&client->dev, sizeof(*data));
+	indio_dev = devm_iio_device_alloc(dev, sizeof(*data));
 	if (!indio_dev)
 		return -ENOMEM;
 
@@ -2022,10 +2022,10 @@ static int vcnl4000_probe(struct i2c_client *client)
 	if (ret < 0)
 		return ret;
 
-	dev_dbg(&client->dev, "%s Ambient light/proximity sensor, Rev: %02x\n",
+	dev_dbg(dev, "%s Ambient light/proximity sensor, Rev: %02x\n",
 		data->chip_spec->prod, data->rev);
 
-	if (device_property_read_u32(&client->dev, "proximity-near-level",
+	if (device_property_read_u32(dev, "proximity-near-level",
 				     &data->near_level))
 		data->near_level = 0;
 
@@ -2037,7 +2037,7 @@ static int vcnl4000_probe(struct i2c_client *client)
 
 	if (data->chip_spec->trig_buffer_func &&
 	    data->chip_spec->buffer_setup_ops) {
-		ret = devm_iio_triggered_buffer_setup(&client->dev, indio_dev,
+		ret = devm_iio_triggered_buffer_setup(dev, indio_dev,
 						      NULL,
 						      data->chip_spec->trig_buffer_func,
 						      data->chip_spec->buffer_setup_ops);
@@ -2046,8 +2046,8 @@ static int vcnl4000_probe(struct i2c_client *client)
 	}
 
 	if (client->irq && data->chip_spec->irq_thread) {
-		ret = devm_request_threaded_irq(&client->dev, client->irq,
-						NULL, data->chip_spec->irq_thread,
+		ret = devm_request_threaded_irq(dev, client->irq, NULL,
+						data->chip_spec->irq_thread,
 						IRQF_TRIGGER_FALLING |
 						IRQF_ONESHOT,
 						"vcnl4000_irq",
@@ -2060,7 +2060,7 @@ static int vcnl4000_probe(struct i2c_client *client)
 			return ret;
 	}
 
-	ret = pm_runtime_set_active(&client->dev);
+	ret = pm_runtime_set_active(dev);
 	if (ret < 0)
 		goto fail_poweroff;
 
@@ -2068,9 +2068,9 @@ static int vcnl4000_probe(struct i2c_client *client)
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


