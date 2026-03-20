Return-Path: <devicetree+bounces-278382-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SE0uI+5/vWnH+QIAu9opvQ
	(envelope-from <devicetree+bounces-278382-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 18:12:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 282262DE5B8
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 18:12:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 714F73271C21
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 16:52:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63B4A3E2740;
	Fri, 20 Mar 2026 16:45:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YlUWndON"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D0A93E1212
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 16:45:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774025157; cv=none; b=Zaco4kiXTGaSpjbY/X8xbPXr7uTkWhpO4D1XlKOpNg81HsnkbJsjcEBQfCckytj0J2pxjTVRKnTE/f6uKINi+FFiFpp4QIyIimybOW7TBx/pVisQWZ0+nqYq1dK0xFeRUy6PXkBl1ZG3ttAn/f7IPTey/o/SSyk2SyM5BjV2Cr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774025157; c=relaxed/simple;
	bh=TzB0TDBcyModHlhscKkRyhu+DntXkSWYAGvIUGrcGVo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=qFt5dOZmAbYixgzH+g1iePbJzf1nMuUqu1qFXx6kY51/8zVFK64SrdW6fqXLfJ97RK1zRdF9ogJ5JOOt6oOw3OoUMeoEKL0M89T1nCwxoSiW9Qq7BvzvaCtNkxkQDGi2jK4T30eFtKOmXhjs+bQCQO217wZ9StEhxwTba6qI1d4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YlUWndON; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-b9358bc9c50so275665366b.1
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 09:45:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1774025153; x=1774629953; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WUcQHeprPMeRllf18ooNN99GRIW3qgL3Mo3SFM1oI1s=;
        b=YlUWndONzOoH252UuKR4mPrWecWzZbY3hEXU3k4sXXZk6zyzicZPwNbhM3fvPZO0ER
         t0qt0VnOpFRqKPjMxftLTD+UEwncaZjI3m938uV1P9wiDmQv5+cY0V9rhR9cGTUPyRwy
         ei7C6/i/Sng9dWcvH9ASMfBkRjMllw3TKyVYAbrtVzHGhWXsCk904zNxfkQz9r7zB/fd
         aVd5Olcm/wAWqAD8EL0FYaERCfN9IVBGQVBdS+wzUwFXpIUar/a/xz8mdtUFBpbR4v5r
         xATi+IGhyt96biURW19ijTc2SaDiZp/MdSwjIgHcBbaEo+1peQoynkzXiv7OFwto8C2R
         V//A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774025153; x=1774629953;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=WUcQHeprPMeRllf18ooNN99GRIW3qgL3Mo3SFM1oI1s=;
        b=SIMhTC1Mw7k/+PkyekKcEdWXsgSTWmMzeffDv6qeKfQLr88wLMHUHiVkyH8lF/vmrt
         USoNRK0FdPj65QMDeJ7Gi+S/PJaCtGneplzobCdwtSBv10RClHADxvLR/aH4Atq94TNJ
         AT4ZrfY79O1QQLdgOGDMB0+xre+lSTa2hq01rdhFHqgksqgZW0S9cQWopj0l6CmQQmb7
         TyJfKJMB8PECRpXYPXdlpOl30lKf6fjL6MgoUAKAgvKXeL6W4q7tBuy1002Oe/jVgeHl
         gXVIKyQvD1U1OM2AwRsaKTbdG6StRtcF9YyDsEQQVePoSW43Tpiytz/omTDtsfp7hiuj
         QTRg==
X-Forwarded-Encrypted: i=1; AJvYcCWFKpK6FQpraThY40oUJqBa4l0JzqCeMgxvSSoQUyawnPRxWDqlF9FhVa4P2dH6uMWa/i6K9oEN/OmD@vger.kernel.org
X-Gm-Message-State: AOJu0YyyqMwLixG849mERmQ5L3RHthzOKG8DMWzj3ZOHWD1BN5x8gB0+
	oL76jf+NXrxvLnDG/Wc8fLfPOl5zYrW3xd441fyznE99Aso6u9ugbMab
X-Gm-Gg: ATEYQzzcBDt3OaqmJnXVaL9K44vpBxGEnUieBJ4Sl5KDnBUdDVi3jPvg2c6YhH6wO1v
	cbvSpeRFOW0eO2r7solZQVXo1TlwJutSoYj4SIOtyQ0MtBH7VlBS7nU+5qkXDkep9uYOzLjW+Dt
	1DFdF4JfJSbNen63oRDos31yCn2/hotJ2b9nT/HraoGRW0Ggtg97wLqUB8zlSuRZPSeowSe//YS
	L6i7Ot2853JIzj+rdVq4ajbyiKFjD4LNt+qGbRn7Z8zlIiQIKZlFy8Kh3JmagVU3zQta3ZzaxW9
	LKJ74SgcWNt/4mMdbR2hD8AyTqVq+dyHObzuAu4rwDTAxYPN8UxK2ibHm9z3NdIDhxKbi7mItq1
	lLnC16YQNMc8zTeccaqLMxIBREX/iX9F5WmHkN+WUR6XB56Ya+EeCj1pWfFoS6ZoaDj6cW3BT3N
	1Qa0wb5YvgN3WVpJhTAWy82TrfEYQcBQ/ou/P8
X-Received: by 2002:a17:906:2092:b0:b96:eb74:3152 with SMTP id a640c23a62f3a-b982f21d50dmr180531966b.22.1774025153243;
        Fri, 20 Mar 2026 09:45:53 -0700 (PDT)
Received: from [192.168.0.39] ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b98335f1747sm176730466b.33.2026.03.20.09.45.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Mar 2026 09:45:52 -0700 (PDT)
From: Erikas Bitovtas <xerikasxx@gmail.com>
Date: Fri, 20 Mar 2026 18:45:43 +0200
Subject: [PATCH v6 8/8] iio: light: vcnl4000: add support for regulators
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260320-vcnl4000-regulators-v6-8-0d24d20b1a5b@gmail.com>
References: <20260320-vcnl4000-regulators-v6-0-0d24d20b1a5b@gmail.com>
In-Reply-To: <20260320-vcnl4000-regulators-v6-0-0d24d20b1a5b@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>, 
 David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Peter Meerwald <pmeerw@pmeerw.net>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
 phone-devel@vger.kernel.org, Erikas Bitovtas <xerikasxx@gmail.com>, 
 Raymond Hackley <raymondhackley@protonmail.com>
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
	TAGGED_FROM(0.00)[bounces-278382-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.sr.ht,gmail.com,protonmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xerikasxx@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.973];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[baylibre.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,protonmail.com:email]
X-Rspamd-Queue-Id: 282262DE5B8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add supply, I2C and cathode voltage regulators to the sensor and enable
them. This keeps the sensor powered on even after its only supply shared
by another device shuts down.

Reported-by: Raymond Hackley <raymondhackley@protonmail.com>
Reviewed-by: David Lechner <dlechner@baylibre.com>
Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
---
 drivers/iio/light/vcnl4000.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/iio/light/vcnl4000.c b/drivers/iio/light/vcnl4000.c
index 0a4d82679cfe..9650dbc41f2b 100644
--- a/drivers/iio/light/vcnl4000.c
+++ b/drivers/iio/light/vcnl4000.c
@@ -24,6 +24,7 @@
 #include <linux/interrupt.h>
 #include <linux/module.h>
 #include <linux/pm_runtime.h>
+#include <linux/regulator/consumer.h>
 #include <linux/units.h>
 
 #include <linux/iio/buffer.h>
@@ -1985,6 +1986,7 @@ static int vcnl4010_probe_trigger(struct iio_dev *indio_dev)
 static int vcnl4000_probe(struct i2c_client *client)
 {
 	const struct i2c_device_id *id = i2c_client_get_device_id(client);
+	const char * const regulator_names[] = { "vdd", "vio", "vled" };
 	struct device *dev = &client->dev;
 	struct vcnl4000_data *data;
 	struct iio_dev *indio_dev;
@@ -2000,6 +2002,11 @@ static int vcnl4000_probe(struct i2c_client *client)
 	data->id = id->driver_data;
 	data->chip_spec = &vcnl4000_chip_spec_cfg[data->id];
 
+	ret = devm_regulator_bulk_get_enable(dev, ARRAY_SIZE(regulator_names),
+					     regulator_names);
+	if (ret)
+		return ret;
+
 	ret = devm_mutex_init(dev, &data->vcnl4000_lock);
 	if (ret)
 		return ret;

-- 
2.53.0


