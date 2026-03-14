Return-Path: <devicetree+bounces-275731-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yOqjOt2HtWn11QAAu9opvQ
	(envelope-from <devicetree+bounces-275731-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 17:07:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id AD95428DCDB
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 17:07:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7EF1E304735A
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 16:07:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2447337BE6E;
	Sat, 14 Mar 2026 16:06:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YwhUlJB4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CFC73793DE
	for <devicetree@vger.kernel.org>; Sat, 14 Mar 2026 16:06:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773504405; cv=none; b=tns9+71/0PazyWNjZ/0GanV2n5lXRxn3OXqDsL0/DMWcWxmLeEVtKEtRhaXmKplG6oeJL/dRO7lOXzpPBOGElwalgm0C2k/aBtbcKi36aMMh3YyhuEemZJlBbbjcrvXi7YqCRXYByyBhYrwdU9K3RgSQciDnZGOpdq5WqEEqEKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773504405; c=relaxed/simple;
	bh=j6qWWe6QEp4AZVAT6HIO6TViQIm6aoaS6Zal4S7e85c=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=tdXKM3ws+WhuxaLOPV0xfxfVa//025gLJbPcpBAG5G2tjfboUzxKKxNL65zRqvHlP9tfEDDKTmH7ORz98gec4HRh05BOUW3ec/lXS0wGCn+Dj14e/Zyf/fT6e1OM+jvNDMgrlvGNzK6QLhBoX2lrGGe0vmJBnEgfMT9jZ6TDD74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YwhUlJB4; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-b9382e59c0eso507888666b.0
        for <devicetree@vger.kernel.org>; Sat, 14 Mar 2026 09:06:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773504402; x=1774109202; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pgQ8nZvVLHmAMjTgF6dNW3MLBAIvM4glDSXsOvEDdCg=;
        b=YwhUlJB445tKoZ1CRAnYSeqWBXS+3hEiTngSSs/xWTb3T7+c68p1aulsxcX9mPdXyR
         ctxFO6wv/0+7kx4/I2XnLsONDbwb2sfT95VsaRN2Du9JTfEEnx9jiJ7ZQug4hzxihLYx
         f/grZjcT8kh1qcWDn1wcC+JSzbLTLI+xj36RKbalY//glNcz2yQDDWRF4Z4kQV4bKE15
         ULyciwpr3nokbwnPEQvWngxpZ6gBnWmOJ4/6+cM0kjfSDDg4qPoBNIfEeNJ2V/wgD44Q
         2Nx9UFeeXmiF1dHWNXY3R7uHeYUTJwLuWtwnZmBCYRY+R7OiGLvFeIZIW3AwajUuaAJn
         kaoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773504402; x=1774109202;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=pgQ8nZvVLHmAMjTgF6dNW3MLBAIvM4glDSXsOvEDdCg=;
        b=Ij7dLnJcUPKSa4O8miem5fozjopNYRJIuFAg2bsgCCk4Vvoy8jCiTFksU4NtRhGnRK
         Kflx/9r2bjMnckcq5hMp9gVrIdZhSLGfS0o+vvbtJzkA4JgVeZGhQ2i2JKRzUU+CgVJ0
         NiKnFSpX7iHhKoRJF/hLOFC63LZYOdXTC9Dh82oQR5JcivV1cy/Y0EMAfGBQdW9+LOPz
         Dyyg5L25z5/qKoNjYkjOFXuorDEbHQr2GcAf+RWwJ8g07uFKfe9sVAoPbWmd13DSqrKI
         GvLMhVf7QXCPlz4PcsnAQPvcNLwQC5HrLZtpbOZKCQZCPDZXhsHclVw50C+6UJY0Bp3Y
         QSeQ==
X-Forwarded-Encrypted: i=1; AJvYcCV5E0T5XT+5vgugxHhAAEZHqtOJMgGlCs8qvNaoRpevI6R5f/KrKEj6FwI3X9IwuWRUmERa6rIUsc+e@vger.kernel.org
X-Gm-Message-State: AOJu0YwsoNTqSABlLr/ZFUCKxlNVziQ/nq1Qxum1bSwTcu8qs5gMk0UT
	cBCitXg6I6hQvSliOEaomDA4xvok2he1i9pu/7rUFUivDprDBfzLzdHz
X-Gm-Gg: ATEYQzxim3O0xdtv22NkAtyhQTspnA8C8hDcb5bivof9p/NCsWrIR+maWN+/U9wkMch
	J3MVlT0N/NeC5GuadchFwyu36sNHnT+hjlKU3RF4sNM4iXsoWzyhYwixy2cHZNikyhYN6gx2L1B
	HQ9UnhDBK+2rgvkVQBoNIYBNQ/FhLs7vtU/hCiLEB9gQAbg4Av5m2OLecV3TlqhPpuT8JtFoWV+
	Vo2T3Ib78lSqN/FmPrwi7QwC8xMZJKYEaMfuXo6+o2gl3Jw3q/80kNqjuiRLnvyZBkgrJs61mDk
	Asm/0JSAUzb/Wizxd3iyhwKv+DvBIst9nLOKzGfiWzalXzgzRopIvV9esOxQfB7RRRbblDGPiTE
	k4DjsEt6gIvNE9/GMpgYp9cNkzIPq8LzkyR3Nruc0WUscH5gMsCntXubprFke9JNDJpATUJfJf3
	yEQLyLHtkrEaelAfHFbZ9fmJP7pA==
X-Received: by 2002:a17:906:e96:b0:b8f:7aa8:d9a4 with SMTP id a640c23a62f3a-b9764fc9c3dmr278758466b.20.1773504401926;
        Sat, 14 Mar 2026 09:06:41 -0700 (PDT)
Received: from [192.168.0.39] ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b978b8625d3sm151722366b.52.2026.03.14.09.06.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Mar 2026 09:06:41 -0700 (PDT)
From: Erikas Bitovtas <xerikasxx@gmail.com>
Date: Sat, 14 Mar 2026 18:06:33 +0200
Subject: [PATCH v3 4/6] iio: light: vcnl4000: add support for regulators
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260314-vcnl4000-regulators-v3-4-3c4a48d30676@gmail.com>
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
 phone-devel@vger.kernel.org, Erikas Bitovtas <xerikasxx@gmail.com>, 
 Raymond Hackley <raymondhackley@protonmail.com>
X-Mailer: b4 0.14.3
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275731-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.sr.ht,gmail.com,protonmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[protonmail.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: AD95428DCDB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add supply, I2C and cathode voltage regulators to the sensor and enable
them. This keeps the sensor powered on even after its only supply shared
by another device shuts down.

Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
Reported-by: Raymond Hackley <raymondhackley@protonmail.com>
---
 drivers/iio/light/vcnl4000.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/iio/light/vcnl4000.c b/drivers/iio/light/vcnl4000.c
index 0ee307fc5ab7..e501db7249d7 100644
--- a/drivers/iio/light/vcnl4000.c
+++ b/drivers/iio/light/vcnl4000.c
@@ -24,6 +24,7 @@
 #include <linux/interrupt.h>
 #include <linux/module.h>
 #include <linux/pm_runtime.h>
+#include <linux/regulator/consumer.h>
 #include <linux/units.h>
 
 #include <linux/iio/buffer.h>
@@ -1991,6 +1992,7 @@ static int vcnl4010_probe_trigger(struct iio_dev *indio_dev)
 static int vcnl4000_probe(struct i2c_client *client)
 {
 	const struct i2c_device_id *id = i2c_client_get_device_id(client);
+	const char * const regulator_names[] = { "vdd", "vddio", "vled" };
 	struct vcnl4000_data *data;
 	struct iio_dev *indio_dev;
 	struct device *dev = &client->dev;
@@ -2006,6 +2008,12 @@ static int vcnl4000_probe(struct i2c_client *client)
 	data->id = id->driver_data;
 	data->chip_spec = &vcnl4000_chip_spec_cfg[data->id];
 
+	ret = devm_regulator_bulk_get_enable(dev,
+				      ARRAY_SIZE(regulator_names),
+				      regulator_names);
+	if (ret < 0)
+		return ret;
+
 	ret = devm_mutex_init(dev, &data->vcnl4000_lock);
 	if (ret < 0)
 		return ret;

-- 
2.53.0


