Return-Path: <devicetree+bounces-276338-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EDa5AFg8uGmpagEAu9opvQ
	(envelope-from <devicetree+bounces-276338-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 18:22:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A5F1929E124
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 18:22:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 33B87304394D
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 17:20:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B29833D16E0;
	Mon, 16 Mar 2026 17:20:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HCFq8+hq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3E233D4121
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 17:19:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773681601; cv=none; b=M9uQadDjx/E+9COuN1bAtNTr0JamOU9wT1BnizXC0/FzbqMTIXDgOL/Wt/3KL0BANSAZWjhGILhj2lXuw0vCAcyUJbZv1bRnZpeh/v5Hy4pSAl463w0IjtkfnJNUj2djSq+u53IWkaB07qs61grflRs+sls3pNpbyAj7g7yUabQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773681601; c=relaxed/simple;
	bh=R6JJNuzHldqhmL0cT6TJNLfm8et18/BjP7zu6n32s78=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=hGfY23vTwYDDwUJlNzcUNiN9WBA8DQPqO9OBn3nZajvGdPbHZnVjDqAAYh8+r6WyMlGNFibgdecG7U6rDDqkh/eVE2LB71TCeNMVI7zaTUWvMfkZ46MBEtRa0TzexTQTwKHTAT40Wl3uGiQILHAbOMi6Pdr8awvZuGpEjnqw/EM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HCFq8+hq; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-b8f97c626aaso758215366b.2
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 10:19:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773681598; x=1774286398; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+Pk3Hh6DzxINjbi6c9eEVbOAYCxG55sTKC9+jA3jbVA=;
        b=HCFq8+hqMXgzbt/2zeyqCXmplmmZqeBlD49pWb+k3wvkx3lcIKKpQriNVUOmMcN+LZ
         d5FmLMi+dtzV/MHeCnobJQH4nWSUrKjW6cBdPdlhQ2vB10An89TZ0MQc5wilhXij+iir
         yi0FaN8nGn+6FbgMDJTdJ8XkuqcBMAleYCJkkvMWU6uKmPTDGSMoFbIew24XMidaMYZA
         WUOUofNR61BdDonfynlm6grUdFJn/sNecQoIq1JwZMKbfwava54tNQ91GMZx/OFzoCS1
         dbW8DxpXoDhtPM7xP7I4YAsHEoN46IMV3EksKOjlNzZxg62jv/mOdIgXyaKAbYc+KHsu
         uEag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773681598; x=1774286398;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+Pk3Hh6DzxINjbi6c9eEVbOAYCxG55sTKC9+jA3jbVA=;
        b=qQ4cVDK/O009qPD8AULepj3os+kSMtTcLbH7EsIXPZU6p0BFfOuJIsD54j/h8Z8axV
         2W7ojPvv8fjpPnw36O1Ujo2QV0hm7cq3/x311PuiJboPquA5eCDhBP/xv/XZTfrLC5b7
         i813F9x67Alu6SOWWS1+iscOFCeiVG52DheyFs/2Y0Oo/9GZ8NAk/MMwOasH1R1wP2Et
         FxCetu57U3q2LTqYkg84qHwtZkw+TYUneKuG6Z7PhVM3BxDY2OFd/UjnupUIskD23WEf
         qzZy7yVdR8/8pB3oQw+gRqy5fXq7bOXn3cROUqLMR6JeCN7sCti2TtHnqvW3gjNECNRQ
         DzIg==
X-Forwarded-Encrypted: i=1; AJvYcCVngZnMkhG3DFXUTYfDstV7YeQflt3VoPpyhi4vKRDg78hWDeh6IlXLuZyDcghGffQ6/ogy/JL38QYp@vger.kernel.org
X-Gm-Message-State: AOJu0YwUqWZ7ZlghzaW9YwEXpBOihGjZ6WUocM8YCAbWmlAab9+dYOtx
	WyEmhDJ3AZMNB2Wh35HI1zlEMBGpEx9+Sqh/0hHyIKNeOkoAe55z6VWG
X-Gm-Gg: ATEYQzzT4KXe+e2uAC5IFErU0FYRJYWl2SexnFPjYh8XQnkJt7ta5QfYW2LgGggOfb7
	EdoNSxowrtUSq0sozBniX5xMDxnnziZgYIw8bY/SGECUcapAFvrO6tYQ+n56/O/vI/hcxYE2e4f
	KojZ7D2bkXbQ0L8SChYNBa3ELKE5JJ7HP0lB8nY+ouFKJRTWkuQ1NPVSZcGaRxd0ATlmSn4T+P8
	oBBr6BQjakU1RBC2/sDIU87jpu8ylNSq0xA5w+N/Q0f1Sjhq2pgfxExkadsgAUsseRdU6Q6ppE0
	/OisTJuMKnwhI1eAyQ66Gs94mM/lZVz6lpV9qat5qkvMfuxjguhYRMAv913PQZQfijGEK48FpG9
	zInkcBNj3p7KSDRNIBguntDY28SpA37t53Loh9dNkQpRJQV6WTZmThpVbLHuSnM7nx9q15pKStL
	t+QFcxfqXDVZykdvGNcrEOAexEhw==
X-Received: by 2002:a17:906:3e49:b0:b97:5aa2:8337 with SMTP id a640c23a62f3a-b976514e2afmr618393266b.25.1773681598063;
        Mon, 16 Mar 2026 10:19:58 -0700 (PDT)
Received: from [192.168.0.39] ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b97846174cfsm505940266b.22.2026.03.16.10.19.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Mar 2026 10:19:57 -0700 (PDT)
From: Erikas Bitovtas <xerikasxx@gmail.com>
Date: Mon, 16 Mar 2026 19:19:50 +0200
Subject: [PATCH v4 6/7] iio: light: vcnl4000: use variables for I2C client
 and device instances
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260316-vcnl4000-regulators-v4-6-854fc2eaf54b@gmail.com>
References: <20260316-vcnl4000-regulators-v4-0-854fc2eaf54b@gmail.com>
In-Reply-To: <20260316-vcnl4000-regulators-v4-0-854fc2eaf54b@gmail.com>
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
	TAGGED_FROM(0.00)[bounces-276338-lists,devicetree=lfdr.de];
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
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,baylibre.com:email]
X-Rspamd-Queue-Id: A5F1929E124
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

After moving data->client and client->dev into variables of their own,
replace all instances of data->client and client->dev being used in
vcnl4200_init and vcnl4000_probe by the said variables to reduce
clutter.

Reviewed-by: David Lechner <dlechner@baylibre.com>
Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
---
 drivers/iio/light/vcnl4000.c | 39 +++++++++++++++++----------------------
 1 file changed, 17 insertions(+), 22 deletions(-)

diff --git a/drivers/iio/light/vcnl4000.c b/drivers/iio/light/vcnl4000.c
index 76aee16d479b..0a4d82679cfe 100644
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
 
@@ -2014,12 +2012,10 @@ static int vcnl4000_probe(struct i2c_client *client)
 	if (ret)
 		return ret;
 
-	dev_dbg(&client->dev, "%s Ambient light/proximity sensor, Rev: %02x\n",
+	dev_dbg(dev, "%s Ambient light/proximity sensor, Rev: %02x\n",
 		data->chip_spec->prod, data->rev);
 
-	if (device_property_read_u32(&client->dev, "proximity-near-level",
-				     &data->near_level))
-		data->near_level = 0;
+	device_property_read_u32(dev, "proximity-near-level", &data->near_level);
 
 	indio_dev->info = data->chip_spec->info;
 	indio_dev->channels = data->chip_spec->channels;
@@ -2029,8 +2025,7 @@ static int vcnl4000_probe(struct i2c_client *client)
 
 	if (data->chip_spec->trig_buffer_func &&
 	    data->chip_spec->buffer_setup_ops) {
-		ret = devm_iio_triggered_buffer_setup(&client->dev, indio_dev,
-						      NULL,
+		ret = devm_iio_triggered_buffer_setup(dev, indio_dev, NULL,
 						      data->chip_spec->trig_buffer_func,
 						      data->chip_spec->buffer_setup_ops);
 		if (ret < 0)
@@ -2038,8 +2033,8 @@ static int vcnl4000_probe(struct i2c_client *client)
 	}
 
 	if (client->irq && data->chip_spec->irq_thread) {
-		ret = devm_request_threaded_irq(&client->dev, client->irq,
-						NULL, data->chip_spec->irq_thread,
+		ret = devm_request_threaded_irq(dev, client->irq, NULL,
+						data->chip_spec->irq_thread,
 						IRQF_TRIGGER_FALLING |
 						IRQF_ONESHOT,
 						"vcnl4000_irq",
@@ -2052,7 +2047,7 @@ static int vcnl4000_probe(struct i2c_client *client)
 			return ret;
 	}
 
-	ret = pm_runtime_set_active(&client->dev);
+	ret = pm_runtime_set_active(dev);
 	if (ret < 0)
 		goto fail_poweroff;
 
@@ -2060,9 +2055,9 @@ static int vcnl4000_probe(struct i2c_client *client)
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


