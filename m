Return-Path: <devicetree+bounces-123756-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 670E89D5E25
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 12:34:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 27ED3280E99
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 11:34:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BC451DDA3E;
	Fri, 22 Nov 2024 11:34:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="YGBMnUyr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09F0B1DE2C0
	for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 11:34:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732275242; cv=none; b=R7nDtaB2mQErCya39+hWHBBPb20GtuGijWJKFIeY6LceFzKVPjYtO+eo6M7s8LxB3ecLVA0PX4JnWC8L+WOhrROW8aMdsh461dlnCOn85uD6uPrETx2d5v+NtpusL8Vilqmv7p9k7mRKYqDlje+kB1DeRQmezaMzQJy1NpTDks4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732275242; c=relaxed/simple;
	bh=UpCDFbHiLoBrphP0ZQ6Ni+CRtV5VYT4LknAceCYNRfw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=juS/rux5lCPoMLvdrGIVFMQNcaNzQAR+ZPKeiJOt/CFdADbMS9k6mjI3aYw9zyjC1MyU3xqQLRRfpauzZ7T1YAHSj8u35Nvm46N+Fxtjv6hePkYoY0HUfxfqQ6qpX+nCdUhfUIKWGC6SfL0zh4cnw9w06L0/bsLuGC23Q6rsO+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=YGBMnUyr; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-53da6801c6dso1749592e87.0
        for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 03:34:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1732275239; x=1732880039; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RITSuX/h//gaahWszdW0fpwFRnABn01F981JW4yCXNU=;
        b=YGBMnUyrP+1gw90WRkl279Kwbo27y98bVjfyMD7kR9B73C+vbxlNEkQLdZCekFnfyr
         2JIzgdWik/38Elt168Sm19Cbd00ygu5Sgshsn6H6gip1Jxv+rus3yFIGPHqpbwB3a9cV
         ROORz2oDoAnPqSha3n58Fa9myno4Y6Y6bB7d2oCI0ZsKUQgxuo1gy5jel9jEqxp/x7kW
         oVVpPATVatuxxXMU8Y+1ZYs2LZTkfOkRU4n7tJM/EIx+YcHCDYbjGs+qen6chJc4dq4x
         gJxMEE4JYrG5DyPcvOUqbjIOb1o4iFNj8dx/XLgHW9mAABGYSn9lopxJs9fXXeHDGwRm
         4OuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732275239; x=1732880039;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RITSuX/h//gaahWszdW0fpwFRnABn01F981JW4yCXNU=;
        b=NplKeTFiphoRjuTSSvSXKrtUrG4DhejilgLtCNhgHtN47XL4v3S/MqMx/VIj8K2DaA
         BgDf4OqTkzLwihAeX7FTd+OdKG0hQA47Q2V1UQBZMsrxve39JHzMGvwVj2wpUDhy6v2u
         W9Ziyg4gznEDHvbURadRG8zv+9JMaJ04q8+VxDYRs6cAqPKjedoZQq6FPA9PrES1Y57/
         mgi6/vypFaIeaopgRrHedG6tiQIfyg969JGQt7XDVWtuEzyRrI2FVMnR36eKYkN1I5RB
         iP5njZxG0P+3aq+wNZoqbmWfnuwwdKmfChwCGoXNBK9jZZrcN5DHR7QnNwvL+NIKuCMc
         EgIw==
X-Forwarded-Encrypted: i=1; AJvYcCWv6Ua7WpS8CHhp8RdWUDUfpRMRbojYKt5mhv6XHBk80gC1lFNS7ESuydOBOP5ut+VZrvzxUIW6vW0U@vger.kernel.org
X-Gm-Message-State: AOJu0YwEncRm7Z5JsG/uC7zkF0Z32AnYYrOVEZ0hjnM2HIOzpChUC9tE
	ehFSJHvk7QzbANcZ95iNx+lxKhI0AhdhBI8fLK4wkjJ9WS/jxU+znuTecvAR8mI=
X-Gm-Gg: ASbGncuNqjz27bL766XT+dfKJF8w1oqSrTZSCDSZYgWCuE8AShO+S3naKzo+ZczdEUf
	x6h2RPy+UlnXfczbHBX2F76utZHkiWsvns6jaeOzJ4kD3qEnZ0G4wWiikw6tMtHvzBpGi/MkyQg
	FDewXYy1y4GatfEZU9FYFHx75QCtQtqG+EE9yCRdQY7Mu4A3JeU4t8IKI2/Q/ZUYCDjjrQMy0Co
	2prXPbpf4GX+rALf7Y9ZFTChQJf6roo69m7oVEILJRHIYC8wR9NIzLg2jqY+sc6l5BjjI9+YHXg
	DgU=
X-Google-Smtp-Source: AGHT+IFuJlxu5HJfwHL/G0HKYtzazTpe1NMfuln7ItQncr5JbRlzXCpYYyf6DYgRhYgcBMftOMdt0Q==
X-Received: by 2002:a05:6512:b81:b0:539:ddf1:ac6f with SMTP id 2adb3069b0e04-53dd39a4c7dmr1223377e87.46.1732275239075;
        Fri, 22 Nov 2024 03:33:59 -0800 (PST)
Received: from localhost (p509159f1.dip0.t-ipconnect.de. [80.145.89.241])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-433cde9800fsm24416405e9.40.2024.11.22.03.33.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Nov 2024 03:33:58 -0800 (PST)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>
Cc: Alexandru Ardelean <aardelean@baylibre.com>,
	Alisa-Dariana Roman <alisa.roman@analog.com>,
	Andy Shevchenko <andy.shevchenko@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Dumitru Ceclan <dumitru.ceclan@analog.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Nuno Sa <nuno.sa@analog.com>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-iio@vger.kernel.org
Subject: [PATCH v3 02/10] iio: adc: ad7124: Refuse invalid input specifiers
Date: Fri, 22 Nov 2024 12:33:21 +0100
Message-ID: <20241122113322.242875-14-u.kleine-koenig@baylibre.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241122113322.242875-12-u.kleine-koenig@baylibre.com>
References: <20241122113322.242875-12-u.kleine-koenig@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=2144; i=u.kleine-koenig@baylibre.com; h=from:subject; bh=UpCDFbHiLoBrphP0ZQ6Ni+CRtV5VYT4LknAceCYNRfw=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBnQGwH+1KZ5UiwNQ58Q3K97bSFf9BrVCEAt6t2k PM5wp0FvtGJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZ0BsBwAKCRCPgPtYfRL+ TiUaB/4gYCNz94dKkWDcW0KKqFeOXvfsVUzt5cxSiRjARESlRrGbLd/24tMnF2r/tweF8QefAyn Q8eL0bowPaRpgKTQiNizArUA2g2PYxidP8ECNMVLw3y+FDabYZ+3m4JyI/htn20q5T/v9e22Rs0 y5i6nhXoK4xyieeuZOeubKPKPrQKjhi/YHN3MXcQadAV9WSDdwfjDFLNkMJiy+e0YKM9GE+lLEC cmEtaczQc9lV8kc3xlrwf1TLVvWVCy8AwwfMv9HS8PAGDIcQiCKBava15JfC+Mx7CSXuOvBg64V HgYGh53ihBgzqjiEijuCD/hEQwGXCPYIIIpCqiDrs140+/oR
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


