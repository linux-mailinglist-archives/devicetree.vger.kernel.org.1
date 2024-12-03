Return-Path: <devicetree+bounces-126526-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D9739E1C6C
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 13:42:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2A770B31DAE
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 11:01:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 624C81E377C;
	Tue,  3 Dec 2024 11:01:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="hjZwA0uK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 580F81E3766
	for <devicetree@vger.kernel.org>; Tue,  3 Dec 2024 11:01:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733223674; cv=none; b=GSKBKWWNjKJGgf68j5X3buUZRqvd/GdH+f0ND5lcbB86K6TnJLytieyQUprJyXEZDIrabi0BOR7ytwZIISGNIQheGDtAKr9ZrEWf9JW17gi/mE5KqKZr40FHmYeIUDRym4WJ85W186lY2Sfr2gT9zmiovKGRPeCezryZ+P76zyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733223674; c=relaxed/simple;
	bh=UpCDFbHiLoBrphP0ZQ6Ni+CRtV5VYT4LknAceCYNRfw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=NdclzBFNhscQVE1gNn5p3SIEFu0v5TgZCyj8JSuhKS4M55GjX9c8i/mLvapH3IyHrLeB0+j7Cidcww89rFCXd2FRZ31HCt4mSBQjRyXnxJjRNDkNQ7ZjxDaVHpLaqhW0JTpNGFBpG3OsbCkQ4fcMimDKdXq4DD/jugk2P+0zLHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=hjZwA0uK; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-385e2c52c21so2006285f8f.2
        for <devicetree@vger.kernel.org>; Tue, 03 Dec 2024 03:01:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1733223671; x=1733828471; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RITSuX/h//gaahWszdW0fpwFRnABn01F981JW4yCXNU=;
        b=hjZwA0uKbLmXI/SawDIvyqimvT6LCfAkiIYFOaiPwf3UFoVcOHuu7CkHznrV2MWsLC
         rbsiNlZCIBCMbLJn/j1uU5rqtNtp/QsnbJ6ck+HcqVUENr892gZAqng4cp382YA5FiXd
         k7p68mNXydQY9RwGHPQpFzqfofkFTxD34utmvpp+gjZ9d//R83Q05lV17ypliTT4yNOu
         VfqWfl07aq5H0wiKBw2A4X46UGTJNhyAmL5TKTn85vxbU3n6rdX7lQZzsK6XuDlfWnEJ
         sduH7Fu1nMJ7gUoY33EJig9FnqFClyZfAvzPLFqHeszNFpwK9XtfTCmcYpDbNgb8quoO
         LWDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733223671; x=1733828471;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RITSuX/h//gaahWszdW0fpwFRnABn01F981JW4yCXNU=;
        b=ffkJdfIePo+ccapyr0lUDuLIVDM47vdwl0QI05gJLiEQrYgIukdYr60OFDQ1vgfmsi
         vJJM5Dw+3c5IX8v4gik4M8RnjXq7Eqyd5hNS6NHhZY3o9nSB+0+X6C8/BcI1U7Gds4U8
         RMBR/ga/yszP40kKlvqzrexdiKyso5/mfJkv2FRs2pXE8VIN9Ofw6Pe04Qx0qWUyHp17
         5nz1mlenGOfkZZLEwDGdugLLbamVAvXbgqmWxUSFAiLC193xLt4KwdEE7fuZeAaPj5oa
         JoI/gf+8NWuJOYPrR1IjBGVaZVv5C+BqfQTY7W59YIMMNy+mvMvP/q+Yf5nqiLzkvIe5
         kjtw==
X-Forwarded-Encrypted: i=1; AJvYcCW3W+5G02C1IRQ/QyMgkAkraWGXf76Hq+5dBNYhdeXfliaUSpvY6dv2Eofzu10bMlNOjXC5nYz2KjWq@vger.kernel.org
X-Gm-Message-State: AOJu0YzcLO5NdxaPN27aW0LUlfH4ljXsV0Cwqt87NyG7p5isII8GLcwu
	6xliXXfMRsahar57vZ41B5tL+wo+fin8gPEn3Dp8OPYM6pWcHB4/f4mWz/jiP/Q=
X-Gm-Gg: ASbGncvP1//9l/8ztOhwX3ukpLVTJCa+NMVeWp//O+Rml6tpdhPkUi1/YFNJnkX7GWl
	zimP898z3LBDHjfozdwVswlDYNhAXHrGnd9PvCF/+uTxOnzV7iKqPHM1Sw4GBAdqK3PSg0CMARf
	PY9UvBOhOpXf/ZLKNAUA4liUzUi8yEg2SgVbGtc1e6hiQMF8rIr5Gse4wc1ZRKrjC0jG3Lnzo7C
	c5owt9N9wVWxEiUlZVa/Qmznz/TjpjsGf+80Ty+daooG4PibytPWybt7dYInJkzwxncwPlAT8n2
	nU7r0DBFLiVPs61QbhJVoFFsk+cZ/EGcNBsdZpM=
X-Google-Smtp-Source: AGHT+IFA46H2YPPErVFU4xOMsCcOhAl2fAi7jV0BkW3iIY0CR80NEQfPPI5aIOXtrg7jV8yoo66S3g==
X-Received: by 2002:a5d:64a9:0:b0:381:f443:21d3 with SMTP id ffacd0b85a97d-385fd550480mr1563101f8f.57.1733223670641;
        Tue, 03 Dec 2024 03:01:10 -0800 (PST)
Received: from localhost (p200300f65f242d005bbc9b581c6b9666.dip0.t-ipconnect.de. [2003:f6:5f24:2d00:5bbc:9b58:1c6b:9666])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-385e4617a61sm9560448f8f.3.2024.12.03.03.01.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2024 03:01:10 -0800 (PST)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Jonathan Cameron <jic23@kernel.org>
Cc: Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	linux-iio@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alisa-Dariana Roman <alisa.roman@analog.com>,
	Renato Lui Geh <renatogeh@gmail.com>,
	Ceclan Dumitru <dumitru.ceclan@analog.com>,
	devicetree@vger.kernel.org,
	Nuno Sa <nuno.sa@analog.com>,
	David Lechner <dlechner@baylibre.com>,
	Alexandru Ardelean <aardelean@baylibre.com>,
	Andy Shevchenko <andy.shevchenko@gmail.com>,
	Trevor Gamblin <tgamblin@baylibre.com>
Subject: [PATCH v5 02/10] iio: adc: ad7124: Refuse invalid input specifiers
Date: Tue,  3 Dec 2024 12:00:22 +0100
Message-ID: <20241203110019.1520071-14-u.kleine-koenig@baylibre.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241203110019.1520071-12-u.kleine-koenig@baylibre.com>
References: <20241203110019.1520071-12-u.kleine-koenig@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=2144; i=u.kleine-koenig@baylibre.com; h=from:subject; bh=UpCDFbHiLoBrphP0ZQ6Ni+CRtV5VYT4LknAceCYNRfw=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBnTuTK+1KZ5UiwNQ58Q3K97bSFf9BrVCEAt6t2k PM5wp0FvtGJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZ07kygAKCRCPgPtYfRL+ TiC7B/9MTToumMpHGv5g4UT8cZan5TcJIBaTnj1yrI+HniZROBrEH4Xl6T822fgSJNNEOmtijCf hIGLQPTzzkRyzNPpw2uAZMIPq2i3ZVifXJz4HYz3E6AJBdDoF4TEVtnxlr9/0LQxOw0BdPSpu79 JQLWhB19RFkyejHkh6ZCJpR+f0S9pnL/o0+IUMvP4IjwpKtw6zxu5gXBiyCRgty9/2LnGmbADND MpXFakDyt/Jblr1hJVwwWo1vfxvdslc5Cav2CbP1P2HTvnqToVHUQLbK4SNHL1turGt45fCWzYI KMiLohCN8FkkdjT9QYn6OSQY20cPUzN3N6D2+7h1FJZJgNO8
X-Developer-Key: i=u.kleine-koenig@baylibre.com; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit

The ad7124-4 has 8 analog inputs; the input select values 8 to 15 are
reserved and not to be used. These are fine for ad7124-8. For both
ad7124-4 and ad7124-8 values bigger than 15 are internal channels that
might appear as inputs in the channels specified in the device
description according to the description of commit f1794fd7bdf7 ("iio:
adc: ad7124: Remove input number limitation"), values bigger than 31
don't fit into the respective register bit field and the driver masked
them to smaller values.

Check for these invalid input specifiers and fail to probe if one is
found.

Fixes: f1794fd7bdf7 ("iio: adc: ad7124: Remove input number limitation")
Signed-off-by: Uwe Kleine-König <u.kleine-koenig@baylibre.com>
---
 drivers/iio/adc/ad7124.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/drivers/iio/adc/ad7124.c b/drivers/iio/adc/ad7124.c
index 5352b26bb391..1f3342373f1c 100644
--- a/drivers/iio/adc/ad7124.c
+++ b/drivers/iio/adc/ad7124.c
@@ -807,6 +807,19 @@ static int ad7124_check_chip_id(struct ad7124_state *st)
 	return 0;
 }
 
+/*
+ * Input specifiers 8 - 15 are explicitly reserved for ad7124-4
+ * while they are fine for ad7124-8. Values above 31 don't fit
+ * into the register field and so are invalid for sure.
+ */
+static bool ad7124_valid_input_select(unsigned int ain, const struct ad7124_chip_info *info)
+{
+	if (ain >= info->num_inputs && ain < 16)
+		return false;
+
+	return ain <= FIELD_MAX(AD7124_CHANNEL_AINM_MSK);
+}
+
 static int ad7124_parse_channel_config(struct iio_dev *indio_dev,
 				       struct device *dev)
 {
@@ -859,6 +872,11 @@ static int ad7124_parse_channel_config(struct iio_dev *indio_dev,
 		if (ret)
 			return ret;
 
+		if (!ad7124_valid_input_select(ain[0], st->chip_info) ||
+		    !ad7124_valid_input_select(ain[1], st->chip_info))
+			return dev_err_probe(dev, -EINVAL,
+					     "diff-channels property of %pfwP contains invalid data\n", child);
+
 		st->channels[channel].nr = channel;
 		st->channels[channel].ain = AD7124_CHANNEL_AINP(ain[0]) |
 						  AD7124_CHANNEL_AINM(ain[1]);
-- 
2.45.2


