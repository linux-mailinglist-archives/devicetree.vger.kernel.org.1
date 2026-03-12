Return-Path: <devicetree+bounces-274552-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SKDhMMWpsmnwOQAAu9opvQ
	(envelope-from <devicetree+bounces-274552-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 12:55:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EA2927156A
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 12:55:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 370A03160693
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 11:53:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36BB03A383E;
	Thu, 12 Mar 2026 11:53:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DxLbspGt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67D9F399362
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 11:53:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773316407; cv=none; b=XqugFPjYQ9HlNbFiP6Oud4M0X8iyUH/uVRuDHi1GT4SL7qz5WNV9vb5kVLmtEmypfI3T2D3tfUAtC92zgdoDr+3X0k4s36QYtl4nFHF1s5Fdo9Nr8cmvv5VJe/iaDluuiNlPELPXE8TFkX9PySkKCO40JLpnOeNAuKJKZsD0LvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773316407; c=relaxed/simple;
	bh=6TUyoJLJSqeungB5Dy08vZAqsI6zizoCJy5q8AmL2/4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=p8pP4nKXKR10NODbneCZ3ko/bjURp7X3KPFyRMNj5LrvVN4Uc2HeWQiEBmyXqSp8daifYI8b/IDbSaIsHaow8BgeE10JscX/dqC4te1LDAsYQyiEbg65CYFciKDSxhMIL0kveKUojb3nxAfeG/0lssopNztqPkSoFWFDuHd1BoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DxLbspGt; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4852fdb36a8so10495025e9.2
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 04:53:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773316403; x=1773921203; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zJtLWo5ws6cOY8PPBgpE01aNyBcJ7pcov+uZ7h1HS6E=;
        b=DxLbspGtxz9Q6QNkA6okY2YiBQNjpHb4sbbGAYsNfczWxfyTi8gijMyWahB+xf5Il7
         9Cu9x1uwC8gYz1janyFJvW2Jrl/45h2weuIa0T8o7/cL/I5HDHXP0ZRCd0m/q3bkX+LT
         sN/2TsH2EyzMK6ka0PYNHUOHTCn2d1cZEKKMPykwnFL0UjQOjv2wNYerZjNA3PvzFjQT
         yzlhgzL5KetUJTSMfn0VlW/QUT2W8FuC3agq9Zo7OVeUSuMgVus2ud0HLs+f9k40CG/X
         JvyrmC08JE1sszAEmmbOtk7hJGG5/XhcAjQGWel0fe+Jgz7ojURYAxD6r4zLhn4G38vt
         w8Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773316403; x=1773921203;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=zJtLWo5ws6cOY8PPBgpE01aNyBcJ7pcov+uZ7h1HS6E=;
        b=X36Kk6IIYcs6pe0hzymCyacVBsGWBAzbbgWInMAe27JZYprfFsRuuQnDk6NN5pJ+c9
         LDkks2XFA0rn4NSlJgcFf/lDAqSkF0BuE18G3NSqbR0IqgDJ9qCWTaUZ8lH77BVd0PiV
         O4bWMUuuXsvueeeG8L1cbHPcCteaC8Q2F5o6ssueWtiJ0biBRN7XAA16URDu21/8bsHC
         1fUb3OQs8Q7uUM+tjB5T1Kymuac6snP6KSW4LqY37g5jmETKABjuF4ZjsYbZNM9PWo42
         90pAoNIKKpx2REFZfO7oOKkfXf7ovbGvH5n97kiUXT4+vnI9QR52KTslYfRNL3ZApHT9
         0MLA==
X-Forwarded-Encrypted: i=1; AJvYcCWl/nTpM0kAGA2zX5t3fbS/qnLdmbrWIRbHgg7VV8nP3L4Ar3+Yu6api2xLm035MGiMPUtXV6sH8UUW@vger.kernel.org
X-Gm-Message-State: AOJu0YwcFCC5QeVU2ySxGiNWhO5m1s7uJ6weyF5nakLvZyQoGAxziiFb
	JAmz6AvZTF7enmumYeauMLp1mp0RNsE1A8UhOJI4UahS++cyodurucYS
X-Gm-Gg: ATEYQzxLUEu/Zx/AyoJsrJTozwjetoyji9F3Pz7V9ogSHeA+vr8BoBzrsjYa0M7wD+C
	wL1WhezjiweQroB5q5F+duamkkrgZjXob2PGKjg+MYEaWwoV8rD1s3XiuOQv6GaIHa+L/cKqDho
	1Szf7fJdsYAYJj2Kb/wDk2hKiyBu+TglessDBTuR5F9QGd/XPbKPkEgB9o65wPF/aCCZAYhhCA6
	eYApDMJLcBTEeqfuWM9CIp4cUvc/rustb0IhgcLlCxKFlmFrAjwqf1updMyFZLt2OnLmElW3JWu
	xY0WqWmGYjRuSjjG/CCECGMNHq9mOb3j+hiSue4x35hzfqja+2qgSZHbPfk9RmAT0MNIL0CpvlI
	j9jFUYBHwyrcgXK9Iw+bgEIj9TBa0C4j5r+ziikj4ujZa8P4wzD5kXjkWb9+actfHkUmc5tghWM
	vpyW2VksGCpk+8wu9KWCxFGDPzNA==
X-Received: by 2002:a05:600c:19d4:b0:485:3ae3:b394 with SMTP id 5b1f17b1804b1-4854b158082mr108421115e9.31.1773316402466;
        Thu, 12 Mar 2026 04:53:22 -0700 (PDT)
Received: from [192.168.0.39] ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439fe22529csm7044960f8f.31.2026.03.12.04.53.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 04:53:22 -0700 (PDT)
From: Erikas Bitovtas <xerikasxx@gmail.com>
Date: Thu, 12 Mar 2026 13:53:14 +0200
Subject: [PATCH v2 3/3] iio: light: vcnl4000: move client->dev in probe
 into a variable
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260312-vcnl4000-regulators-v2-3-2bdebbcbb58a@gmail.com>
References: <20260312-vcnl4000-regulators-v2-0-2bdebbcbb58a@gmail.com>
In-Reply-To: <20260312-vcnl4000-regulators-v2-0-2bdebbcbb58a@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274552-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.sr.ht,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 6EA2927156A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Move client->dev into a variable of its own and replace all instances of
client->dev being used by it.

Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
---
 drivers/iio/light/vcnl4000.c | 27 ++++++++++++++-------------
 1 file changed, 14 insertions(+), 13 deletions(-)

diff --git a/drivers/iio/light/vcnl4000.c b/drivers/iio/light/vcnl4000.c
index 04bde498aec4..36a3d8075eb3 100644
--- a/drivers/iio/light/vcnl4000.c
+++ b/drivers/iio/light/vcnl4000.c
@@ -1987,9 +1987,10 @@ static int vcnl4000_probe(struct i2c_client *client)
 	const char * const regulator_names[] = { "vdd", "vddio", "vled" };
 	struct vcnl4000_data *data;
 	struct iio_dev *indio_dev;
+	struct device *dev = &client->dev;
 	int ret;
 
-	indio_dev = devm_iio_device_alloc(&client->dev, sizeof(*data));
+	indio_dev = devm_iio_device_alloc(dev, sizeof(*data));
 	if (!indio_dev)
 		return -ENOMEM;
 
@@ -1999,7 +2000,7 @@ static int vcnl4000_probe(struct i2c_client *client)
 	data->id = id->driver_data;
 	data->chip_spec = &vcnl4000_chip_spec_cfg[data->id];
 
-	ret = devm_regulator_bulk_get_enable(&client->dev,
+	ret = devm_regulator_bulk_get_enable(dev,
 				      ARRAY_SIZE(regulator_names),
 				      regulator_names);
 	if (ret < 0)
@@ -2011,10 +2012,10 @@ static int vcnl4000_probe(struct i2c_client *client)
 	if (ret < 0)
 		return ret;
 
-	dev_dbg(&client->dev, "%s Ambient light/proximity sensor, Rev: %02x\n",
+	dev_dbg(dev, "%s Ambient light/proximity sensor, Rev: %02x\n",
 		data->chip_spec->prod, data->rev);
 
-	if (device_property_read_u32(&client->dev, "proximity-near-level",
+	if (device_property_read_u32(dev, "proximity-near-level",
 				     &data->near_level))
 		data->near_level = 0;
 
@@ -2026,26 +2027,26 @@ static int vcnl4000_probe(struct i2c_client *client)
 
 	if (data->chip_spec->trig_buffer_func &&
 	    data->chip_spec->buffer_setup_ops) {
-		ret = devm_iio_triggered_buffer_setup(&client->dev, indio_dev,
+		ret = devm_iio_triggered_buffer_setup(dev, indio_dev,
 						      NULL,
 						      data->chip_spec->trig_buffer_func,
 						      data->chip_spec->buffer_setup_ops);
 		if (ret < 0) {
-			dev_err(&client->dev,
+			dev_err(dev,
 				"unable to setup iio triggered buffer\n");
 			return ret;
 		}
 	}
 
 	if (client->irq && data->chip_spec->irq_thread) {
-		ret = devm_request_threaded_irq(&client->dev, client->irq,
-						NULL, data->chip_spec->irq_thread,
+		ret = devm_request_threaded_irq(dev, client->irq, NULL,
+						data->chip_spec->irq_thread,
 						IRQF_TRIGGER_FALLING |
 						IRQF_ONESHOT,
 						"vcnl4000_irq",
 						indio_dev);
 		if (ret < 0) {
-			dev_err(&client->dev, "irq request failed\n");
+			dev_err(dev, "irq request failed\n");
 			return ret;
 		}
 
@@ -2054,7 +2055,7 @@ static int vcnl4000_probe(struct i2c_client *client)
 			return ret;
 	}
 
-	ret = pm_runtime_set_active(&client->dev);
+	ret = pm_runtime_set_active(dev);
 	if (ret < 0)
 		goto fail_poweroff;
 
@@ -2062,9 +2063,9 @@ static int vcnl4000_probe(struct i2c_client *client)
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


