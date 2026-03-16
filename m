Return-Path: <devicetree+bounces-276335-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iBNTB149uGmpagEAu9opvQ
	(envelope-from <devicetree+bounces-276335-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 18:26:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 78F9229E2AA
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 18:26:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 35850307A3FA
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 17:20:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9ADCD3D4119;
	Mon, 16 Mar 2026 17:19:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SJDnGJXf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 272EB3D3481
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 17:19:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773681599; cv=none; b=Dlj+24hZGx74OQ7cgqxDVntlQJYU+LpnIJX6ns9mNX5wgPWgdej23qM7sblAtjkgPGEjQlcZtLMluFVWGKGC7Ram7xP5oZkr4XqibkklTfgRIrGtUnbw/dmvWr1KfO/TVRbEckk3tdlyZv6UCuzyBZdHW4RWRC38Wn1DS6gdZ8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773681599; c=relaxed/simple;
	bh=vP7EEpgruq7jb0BDTrxCYCk5LMVt/Xx+6zryX3dg/1Q=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=NT8tKfbgBYeeoHItQm+0Y/sO4WpPGu+StafJy+iyqob3mheQjh0eE7cq05H6/IAgiCIiWvFlVK65CsdMLYQT9YgY8uUMR0GkBQkGsVrZcAdNDWbHc+lncGRn6XRYJUwJMF4jpoKYqfhxeRTxU8NUeZkhsEt36kGCW5Vjb1M/7W8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SJDnGJXf; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-66391baf250so4580666a12.1
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 10:19:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773681595; x=1774286395; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kmQLMk8d0z4Tj8kbX0Ny9TubbIjksPecuXhm9eaS99k=;
        b=SJDnGJXfzi8qRYKf3vDwMKvlWKwA8HNL5i9G0uWBdeV1d5SNo2/8qOSQtJYLC4hBdN
         lEJ76yq3fG0+5Y1WmS4Q0IaS7j7kcWT8yG7KmnRQZClgbhcMSjC+9duNGUPCnheol9hf
         3map584Pa1QTQIY8kvBfsyRhCM/9EzCvmho7GRzNVs3oNPAQrWLY17vggqsUc/H5gssh
         rKEMg8M1gHzWHKvKYRvKiGz8wFX0gVYiL1XYqsDzLEoou64H2L0anIh3DzIRjq/x3hzT
         w6QjrR32Xm7DH0uZ1Yyrf9KQyenlwPs/Hw9WNx+QWUUdirJkHKaMDYAbS35hP3Lpm9i/
         Oxvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773681595; x=1774286395;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=kmQLMk8d0z4Tj8kbX0Ny9TubbIjksPecuXhm9eaS99k=;
        b=Eck5r5f3lntnqbF/Uojv3FedQ1gt9c+MzrFlgy2CBfxW91lO6DUNnu/IrZUxltvn2z
         nP6wHK7YmnHBBv5eyiyfGkeD1VP+h1dEU/nznta00KHQDvzLzaKEN2SOWSinF6kWviYX
         el5BxeoVVVBAV+4Ws41h7Sfzxy51mPHjzN5FrCnpnRTH0T3VjU0p2S0emUGwyLmO+tWw
         Ua8T1Bn/WSD0eoJM+vhQhFoffwJ6+m4nbOLCFdanyPJlNMQWlPHGYnf/rXKfR+eZMFcc
         6oTx4X1gvIkpctybPOOt1HlDvcR0zfHsqLhcOdPO5Lf6yDAdF4UjT9Hg9IdkXquFHVda
         9sdQ==
X-Forwarded-Encrypted: i=1; AJvYcCXMl+QAr6NNB22sIYt8Ei2HvjBNEf2riKUz/V4J+DnBJ7CL4y6saC/XgynUPN5EHzwPtoRH2t9J65vP@vger.kernel.org
X-Gm-Message-State: AOJu0YxYttZKrKRdpoOTy4VWGvihKx9PDnj0S6+hkCHSpribA3s0fWLX
	siPdlE7ZNZzcLnyLWlfwpmfV6j+ZEIQheYP9TYyZJ1hlOngJyZKfTrod
X-Gm-Gg: ATEYQzxKn7lZabt4f85Kn05sUgMonfzL6OktJPLzUI+jQ5e+HhtujUqKjzd25rKIafO
	sqm73WyzBPWgmVMgHyD0IIY5wsfEskjiUUoU/t4jJoVqGGqTsj4kDyjpxpLQVWdeRTAj3vUwnJx
	ADMJvg+2UkgLsqKuskHuZGcu0GqakO0Y6C4OFJDqN2IoCeOEJQutpS9Axl4TSs3bVNZIHndNlwS
	zEGt+ipmjV8SHmnLp11Aa1zKZ2UnOxUvortb3NvYGdhpv4ASGgIO9ma1qMtvDNbC7gtYq991xXX
	Bl92dTj8viK/oFKvCjPEARl3eP6oRADHAbR0fQCf+zc6W/c4RQUOh/A8giF5eDiXyDjsxD/YfJ9
	93oEDjVA3sjRe9bQmtgBnYRV5Fj9XbBjTYXswyn2/efoFo2bR/T6vfwnTsjjaJE3qLp34VS7dM9
	aLnGJcy3Dl+yfMjpbcfX3m61k5sJnN1WgdiiUN
X-Received: by 2002:a17:906:a14e:b0:b96:ed21:f47e with SMTP id a640c23a62f3a-b976506f1a1mr727876966b.25.1773681595238;
        Mon, 16 Mar 2026 10:19:55 -0700 (PDT)
Received: from [192.168.0.39] ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b97846174cfsm505940266b.22.2026.03.16.10.19.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Mar 2026 10:19:54 -0700 (PDT)
From: Erikas Bitovtas <xerikasxx@gmail.com>
Date: Mon, 16 Mar 2026 19:19:48 +0200
Subject: [PATCH v4 4/7] iio: light: vcnl4000: replace mutex_init with
 devm_mutex_init
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260316-vcnl4000-regulators-v4-4-854fc2eaf54b@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.sr.ht,gmail.com];
	TAGGED_FROM(0.00)[bounces-276335-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xerikasxx@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 78F9229E2AA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Replace mutex_init used across driver with its device-managed
counterpart, so all assigned mutexes get destroyed.

Reviewed-by: David Lechner <dlechner@baylibre.com>
Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
---
 drivers/iio/light/vcnl4000.c | 17 ++++++++++++++---
 1 file changed, 14 insertions(+), 3 deletions(-)

diff --git a/drivers/iio/light/vcnl4000.c b/drivers/iio/light/vcnl4000.c
index 287ccd89cfb2..cd7e6ee42cc5 100644
--- a/drivers/iio/light/vcnl4000.c
+++ b/drivers/iio/light/vcnl4000.c
@@ -356,6 +356,8 @@ static int vcnl4200_set_power_state(struct vcnl4000_data *data, bool on)
 
 static int vcnl4200_init(struct vcnl4000_data *data)
 {
+	struct i2c_client *client = data->client;
+	struct device *dev = &client->dev;
 	int ret, id;
 	u16 regval;
 
@@ -400,8 +402,14 @@ static int vcnl4200_init(struct vcnl4000_data *data)
 	}
 	data->al_scale = data->chip_spec->ulux_step;
 	data->ps_scale = 16;
-	mutex_init(&data->vcnl4200_al.lock);
-	mutex_init(&data->vcnl4200_ps.lock);
+
+	ret = devm_mutex_init(dev, &data->vcnl4200_al.lock);
+	if (ret)
+		return ret;
+
+	ret = devm_mutex_init(dev, &data->vcnl4200_ps.lock);
+	if (ret)
+		return ret;
 
 	/* Use 16 bits proximity sensor readings */
 	ret = i2c_smbus_read_word_data(data->client, VCNL4200_PS_CONF1);
@@ -1979,6 +1987,7 @@ static int vcnl4010_probe_trigger(struct iio_dev *indio_dev)
 static int vcnl4000_probe(struct i2c_client *client)
 {
 	const struct i2c_device_id *id = i2c_client_get_device_id(client);
+	struct device *dev = &client->dev;
 	struct vcnl4000_data *data;
 	struct iio_dev *indio_dev;
 	int ret;
@@ -1993,7 +2002,9 @@ static int vcnl4000_probe(struct i2c_client *client)
 	data->id = id->driver_data;
 	data->chip_spec = &vcnl4000_chip_spec_cfg[data->id];
 
-	mutex_init(&data->vcnl4000_lock);
+	ret = devm_mutex_init(dev, &data->vcnl4000_lock);
+	if (ret)
+		return ret;
 
 	ret = data->chip_spec->init(data);
 	if (ret < 0)

-- 
2.53.0


