Return-Path: <devicetree+bounces-265177-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AJQnJhsajmkX/gAAu9opvQ
	(envelope-from <devicetree+bounces-265177-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 19:21:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 38AD61303B2
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 19:21:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9A7BF30EC156
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 18:20:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6208285C98;
	Thu, 12 Feb 2026 18:20:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eP37YKbL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 725FB284B54
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 18:20:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770920427; cv=none; b=MLj4tUsZ2kZ/d10wky+UyZK9nctvavnnEwE99JRfwp+4fwvNB9YKfi59G+RehgBXfSMsdrxjS3HxZf57QJzwH1Do1KIN1DCG9SkUMYMY9kKg70TzTJkthiUoeWiLQfUM/b4VFbzGfXzR4ufUazou4RFUS2n5sna6vF5rW6zro2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770920427; c=relaxed/simple;
	bh=j7w5W5n+1tnAj9tyIzUZDSwh/ga/Vo6JWcfZq1R2EOo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=J3n+dct81hy6AhetdxE9uG5Xk8JblV8Yv7EF0gKNl6KlPYvgc7b3/HdZImZtGaIx4oM1JWkfjPSh9PUsksK7GaBQHQnv5lW05Hi++3l9f+RdYkK6hfyCIcA5Skr27FVc1Ee36fZ6tKPqR6KPBUtf3TY6UIm6wzLUw4knQT9v+n0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=eP37YKbL; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-43638a3330dso138489f8f.0
        for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 10:20:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770920425; x=1771525225; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YJKm78yJdUZ0qsK3Qh4mVjVC+cGTgJke+yjUKqEIW6U=;
        b=eP37YKbLcXwbqsBS55aAyL5g40PkfHB5KgNca2CmAW9OweLh9uD2D8TH14n4NKSovb
         3mCb5SN/rT0gtUSoz69WXYtQ8snZMjx6Qjttk6MZnhydxYKBDw+vKKP/z/sthfK0S7Ot
         T1Tsp22Rjwg+0pm/F1PgVRps0Z2Ujrug5Gq+wg4knZJhyRQ/U+hnDgc1eJYEd8lfGrz2
         nQD1FuVyuoIoRcJJDyaWh0FF9AA3RJXPnEMzoc0f8OaLPhmVAS4WbBDFM8nqSsaZpDP6
         CgWFAqXzIMt8znVZeEqUFSqI3WVIFN4oZvwFMq4SRju0ZLUWdF/US8s5x722JmSmMr7x
         jEzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770920425; x=1771525225;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=YJKm78yJdUZ0qsK3Qh4mVjVC+cGTgJke+yjUKqEIW6U=;
        b=KhdpJGad4TbIfdEbwmJTT2XETxDgjCghfouxPVE0pLGM6ilQU18+EWROluu41J95Vw
         k7Pqf74K25C+avptzgmJwMSJObD+gYifzl1L/UMqq2jY8IarNyIUG0K5kS9zYKQISFf4
         ICrktVcatrnjGEwrfDd3H742q0TyTNJrB4pGJYmqKHtxz0lqix4McHtzc32xS98X37EZ
         bkYD6N5a3WvjzoxgcaVonUiCtclvdNkGkL72waqN1/eXOwSHQaUedMvDhdv4QtLMXgY3
         7DUlP8AsUoRrwArVBZ93fadT0Ylq+xi/XQKo/jT7bVpVWJwdTR9JGZZ8+4iGS3FPWAiR
         hMTg==
X-Forwarded-Encrypted: i=1; AJvYcCXU5wckk36eMKvldQ6OZ4LUdOnF54mz1eiQThMb5B1JBUtGhaBoPaLbnpyDmNXv2r2ACq7Wz+EQVSy+@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+V9NSC+L8CPnh1p+m6Py9IwN6nAEYgjGMl/Bqci20y+QBntoX
	kP92OhYEcugNGqiPG5ghneL0JA7xcdRzuUArhu+TYAUzVYKnuNVq2Jhh
X-Gm-Gg: AZuq6aLwHWaT+te9hc9dcEv+409b7uHeC5f8/nI/7GAC7Zb+CbjbDj8UefWNCPiW02/
	TBZhEBuM94dh34heakqhGxuur6vUc63xNPAwxhLAWsRBI95KpEE8PRNnrvu/fXqyLsB1XWvbRcG
	T8SRp1L8iVEGVGnEgswoT7c01j5Tu0VG3rFb/3CypvhVdiufLoCog4tKdINzslCqr5OgT0mefhN
	M3F+mEfPO0U6FemhcxYl6KYJgVH5eItcvzEFhVFgIHRE5OzT9Q7exPBh6fr0+hdBaOV7KV+lqeu
	+lEGwveLfSIln793I+xMLeo6H6N7O4bWHeDAvPxtoYmNeviqeAenDcQ+xUhMK55bK0EPAoYAZZo
	u7n9p/YiU5y6PZN78fBNZmizF1Gs/XvLEFPLzqCUmhznxnajwdfVNX3PCnZ2eCbdraNUvrRfQ06
	B9k/1tTEpqoUzHueiZNAKZ7mWuY4v5obwSsnNSbpw7iPMRHxcxDXA8z/jYb8SbcfnI
X-Received: by 2002:a05:6000:178f:b0:431:656:c73a with SMTP id ffacd0b85a97d-4378ac7e289mr6007987f8f.31.1770920424821;
        Thu, 12 Feb 2026 10:20:24 -0800 (PST)
Received: from db07.UM6P.local ([196.200.180.25])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43783dfc2b0sm13239933f8f.21.2026.02.12.10.20.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Feb 2026 10:20:24 -0800 (PST)
From: Taha Ed-Dafili <0rayn.dev@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: David Lechner <dlechner@baylibre.com>,
	=?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-mentees@lists.linuxfoundation.org,
	me@brighamcampbell.com,
	skhan@linuxfoundation.org,
	Taha Ed-Dafili <0rayn.dev@gmail.com>
Subject: [PATCH v1 2/2] iio: dac: ad5504: use adi,output-range-volts for scale calculation
Date: Thu, 12 Feb 2026 19:19:55 +0100
Message-ID: <20260212181955.42724-3-0rayn.dev@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260212181955.42724-1-0rayn.dev@gmail.com>
References: <20260212181955.42724-1-0rayn.dev@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-265177-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[baylibre.com,analog.com,kernel.org,vger.kernel.org,lists.linuxfoundation.org,brighamcampbell.com,linuxfoundation.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[0rayndev@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,baylibre.com:email]
X-Rspamd-Queue-Id: 38AD61303B2
X-Rspamd-Action: no action

The driver previously used VCC to calculate the scale, but the datasheet
states the output range is fixed by the R_SEL pin (0-30V or 0-60V).

Update probe to read `adi,output-range-volts` for the scale. Default
to the 60V range if the property is missing, while keeping the VCC
regulator enable for power.

Suggested-by: David Lechner <dlechner@baylibre.com>
Signed-off-by: Taha Ed-Dafili <0rayn.dev@gmail.com>
---
 drivers/iio/dac/ad5504.c | 26 ++++++++++++++++----------
 1 file changed, 16 insertions(+), 10 deletions(-)

diff --git a/drivers/iio/dac/ad5504.c b/drivers/iio/dac/ad5504.c
index 355bcb6a8ba0..1796a9b1e750 100644
--- a/drivers/iio/dac/ad5504.c
+++ b/drivers/iio/dac/ad5504.c
@@ -15,6 +15,7 @@
 #include <linux/regulator/consumer.h>
 #include <linux/module.h>
 #include <linux/bitops.h>
+#include <linux/property.h>
 
 #include <linux/iio/iio.h>
 #include <linux/iio/sysfs.h>
@@ -274,6 +275,7 @@ static int ad5504_probe(struct spi_device *spi)
 	struct iio_dev *indio_dev;
 	struct ad5504_state *st;
 	int ret;
+	u32 val;
 
 	indio_dev = devm_iio_device_alloc(&spi->dev, sizeof(*st));
 	if (!indio_dev)
@@ -281,17 +283,21 @@ static int ad5504_probe(struct spi_device *spi)
 
 	st = iio_priv(indio_dev);
 
-	ret = devm_regulator_get_enable_read_voltage(&spi->dev, "vcc");
-	if (ret < 0 && ret != -ENODEV)
+	ret = devm_regulator_get_enable(&spi->dev, "vcc");
+	if (ret)
 		return ret;
-	if (ret == -ENODEV) {
-		if (pdata->vref_mv)
-			st->vref_mv = pdata->vref_mv;
-		else
-			dev_warn(&spi->dev, "reference voltage unspecified\n");
-	} else {
-		st->vref_mv = ret / 1000;
-	}
+
+	ret = device_property_read_u32(&spi->dev, "adi,output-range-volts", &val);
+	if (ret)
+		val = 60;
+
+	if (val == 60)
+		st->vref_mv = 60000;
+	else
+		st->vref_mv = 30000;
+
+	if (pdata && pdata->vref_mv)
+		st->vref_mv = pdata->vref_mv;
 
 	st->spi = spi;
 	indio_dev->name = spi_get_device_id(st->spi)->name;
-- 
2.47.3


