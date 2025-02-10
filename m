Return-Path: <devicetree+bounces-144767-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EDE7DA2F2D6
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 17:14:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1B5FD188886E
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 16:14:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D322F25743C;
	Mon, 10 Feb 2025 16:13:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="SGO92Vj7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 358122566DD
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 16:13:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739203982; cv=none; b=XlD0DtOJOP8IysjaqXWkZuhdoJML6O8G0NUJzFGDG5rrB3gPcHXAaC/GRfO2wxQopGRHFw8WZNR6y2R/kosbVlQay8fq3ZI882SSCMSX+mARxSbLzcUAQ+XXM+3P6NA7TNzv1eHBekZAzvIsnnhU0Q0h2mAiHhWVC1fiN3kXobo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739203982; c=relaxed/simple;
	bh=3NUUx15Y02eAxw+Z9yWc/3djPoH5Ry3lT7zOZkK3n3A=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=knD8gX+3M8ta+H8yMH2jiHqhOkKBv4aU6RryQoZ+jDKUolauV8X14zE2s1xh/m/qxbImiWarDYTVG8vodXSHhOZFvWIRwegVarlMtuCcyM/kGx5Be2Yc6xbNHW5vM8YGnaZVlPDEVlJbT8ztJnXgfG+xG21NHNxICxUCQ1pe0tw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=SGO92Vj7; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4393dc02b78so9800835e9.3
        for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 08:12:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1739203978; x=1739808778; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vN8F20QDO3HQKLIA661OKCUheq7UYLkLcdweF7Jz39U=;
        b=SGO92Vj75AVvK5gTOo+5OX4/xiKGRksBD2WkNDiY8nnGVEKsP0XW5Nn7BVVSRgXG2G
         /aeCgRVQy0JyyZOP1VC4IuOF1letySh2sZ2FFJx2nTbLJPO0uQgqcElS7nPZtRy+4wyI
         KagCTQCuTHzsRXAAeg/j5C7TEKjW3s7H9DDndnFfDmonuhAWcLIEaX9SYU04qz4w9YlT
         jsIVDMLxpmaj3EkdYwDYdUZKn63UNnHERNZkhpO+LuEzum6n95GIH3WI/1Ikuq8H5iJE
         PaLg3MJ5jzCUpc9ChfL/nOJ+mWvgxJTHtzYmD+ZoqA/PJvQYxuIVA9fjayX3ulgszl8N
         KUYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739203978; x=1739808778;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vN8F20QDO3HQKLIA661OKCUheq7UYLkLcdweF7Jz39U=;
        b=aIcCWt7LQyRKMnlCBzwWZ8m/2V2TmrB/qOKs0ZS7zRbLy9ippw3JGF4FafkblHygh9
         ITHrud6hB39V3SKpnPGxHUbW9roRrh67arfIFOE0YftH6kSUD9qYauK03rKn2HdMP3wD
         sKVaECIEoluPdky37sRg+7BPK1MSSjhr/fL3xt5twlNtxwRCRX9O/UhTC2c3kqVGmW/n
         ityYDwrwKv4jdvNp00/KVDtVESwLPCftNoI4WJaZkXlnl4Jz6O+TZAxeYHJhed/zoyxt
         U/ViSKcPcfDchU4pajdg1yEHxHcMDrGg50lftIZ9KM4MGJzoILMdhWRYIPTbQiXWkaIS
         1AxA==
X-Forwarded-Encrypted: i=1; AJvYcCUg7A45I4Wcg+Ys3k227XiHhNvuQ2PSLOXU+Azn+IAhmj0wgmlhqFnLDl94Y9jmrUBX4pA9K1dqarNb@vger.kernel.org
X-Gm-Message-State: AOJu0YxG+4QhwqochRhh7J8KpOiXVhk2xJetKSxg6DuT51rfXWc3t0jk
	/c+XAdFrrgHXiJ6W62Kag7K7P++2t5pT6SK17DlfZlu+8PL3HftfVNpjYAaLpsM=
X-Gm-Gg: ASbGncsrSI8I7hrrLKwWJqBqFDHjHIMcvHUxXhQSsx+VHrOsuPla6vflQ9ayEJB62js
	HRogEMXAq3UNrIoLiHvBb51rhbeTXQ4huYgqx9uuIEjgfJEuV/ofS3gCSFMlDUQ77Z7TXw0McEB
	z9GNs5glo9qb5ghFHVqYx/j4VAc6oHJCgCUtRHYjE/4f8kiI6ET+YjfHs8UM/9vSv+SR1UmLdNv
	PBfbIh/bL8PLNuLqBHtnYIz0pL7kxtxDNHDF7/LXSIxd9TdLTBwem48b4rTPnFPs7D44Ev9FvWZ
	ZNL7N7iYClSq0UgW2lXDe1lQQJFIW49vXJWgy+oa0Qn/kG5VPNht/2kMCkwMrOM=
X-Google-Smtp-Source: AGHT+IG6o5ZREGcR3FZz87qZP85Jb0UcLM1o8sU4230MxIIzFZQjtotZMxY+b32r+NX9bZ4tcPkzxw==
X-Received: by 2002:a05:600c:510c:b0:434:a4b3:5ebe with SMTP id 5b1f17b1804b1-4394c847ad4mr3624905e9.24.1739203978447;
        Mon, 10 Feb 2025 08:12:58 -0800 (PST)
Received: from [127.0.1.1] (host-87-8-15-130.retail.telecomitalia.it. [87.8.15.130])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4391dc9ffcdsm146637945e9.15.2025.02.10.08.12.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Feb 2025 08:12:57 -0800 (PST)
From: Angelo Dureghello <adureghello@baylibre.com>
X-Google-Original-From: Angelo Dureghello <adureghello@baylibre.org>
Date: Mon, 10 Feb 2025 17:10:58 +0100
Subject: [PATCH v4 8/9] iio: adc: ad7606: change channel macros parameters
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250210-wip-bl-ad7606_add_backend_sw_mode-v4-8-160df18b1da7@baylibre.com>
References: <20250210-wip-bl-ad7606_add_backend_sw_mode-v4-0-160df18b1da7@baylibre.com>
In-Reply-To: <20250210-wip-bl-ad7606_add_backend_sw_mode-v4-0-160df18b1da7@baylibre.com>
To: Michael Hennerich <michael.hennerich@analog.com>, 
 Lars-Peter Clausen <lars@metafoo.de>, Jonathan Cameron <jic23@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Alexandru Ardelean <aardelean@baylibre.com>, 
 David Lechner <dlechner@baylibre.com>
Cc: Jonathan Cameron <Jonathan.Cameron@huawei.com>, 
 linux-fbdev@vger.kernel.org, linux-iio@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Guillaume Stols <gstols@baylibre.com>, 
 Angelo Dureghello <adureghello@baylibre.com>
X-Mailer: b4 0.14.1

From: Guillaume Stols <gstols@baylibre.com>

Add the possibility to pass the *_available parameters to the main
macro.
This is a preparation to add the new channels for software mode and
hardware mode in iio backend mode more easily.

Signed-off-by: Guillaume Stols <gstols@baylibre.com>
---
 drivers/iio/adc/ad7606.h | 51 ++++++++++++++++++++++++------------------------
 1 file changed, 25 insertions(+), 26 deletions(-)

diff --git a/drivers/iio/adc/ad7606.h b/drivers/iio/adc/ad7606.h
index 7a044b499cfe..a35b526f3915 100644
--- a/drivers/iio/adc/ad7606.h
+++ b/drivers/iio/adc/ad7606.h
@@ -40,37 +40,19 @@
 #define AD7606_RANGE_CH_ADDR(ch)	(0x03 + ((ch) >> 1))
 #define AD7606_OS_MODE			0x08
 
-#define AD760X_CHANNEL(num, mask_sep, mask_type, mask_all, bits) {	\
+#define AD760X_CHANNEL(num, mask_sep, mask_type, mask_all,	\
+		mask_sep_avail, mask_all_avail, bits) {		\
 		.type = IIO_VOLTAGE,				\
 		.indexed = 1,					\
 		.channel = num,					\
 		.address = num,					\
 		.info_mask_separate = mask_sep,			\
+		.info_mask_separate_available =			\
+			mask_sep_avail,				\
 		.info_mask_shared_by_type = mask_type,		\
 		.info_mask_shared_by_all = mask_all,		\
-		.scan_index = num,				\
-		.scan_type = {					\
-			.sign = 's',				\
-			.realbits = (bits),			\
-			.storagebits = (bits) > 16 ? 32 : 16,	\
-			.endianness = IIO_CPU,			\
-		},						\
-}
-
-#define AD7606_SW_CHANNEL(num, bits) {				\
-		.type = IIO_VOLTAGE,				\
-		.indexed = 1,					\
-		.channel = num,					\
-		.address = num,					\
-		.info_mask_separate =				\
-			BIT(IIO_CHAN_INFO_RAW) |		\
-			BIT(IIO_CHAN_INFO_SCALE),		\
-		.info_mask_separate_available =			\
-			BIT(IIO_CHAN_INFO_SCALE),		\
-		.info_mask_shared_by_all =			\
-			BIT(IIO_CHAN_INFO_OVERSAMPLING_RATIO),	\
 		.info_mask_shared_by_all_available =		\
-			BIT(IIO_CHAN_INFO_OVERSAMPLING_RATIO),	\
+			mask_all_avail,				\
 		.scan_index = num,				\
 		.scan_type = {					\
 			.sign = 's',				\
@@ -80,14 +62,30 @@
 		},						\
 }
 
+#define AD7606_SW_CHANNEL(num, bits)			\
+	AD760X_CHANNEL(num,				\
+		/* mask separate */			\
+		BIT(IIO_CHAN_INFO_RAW) |		\
+		BIT(IIO_CHAN_INFO_SCALE),		\
+		/* mask type */				\
+		BIT(IIO_CHAN_INFO_OVERSAMPLING_RATIO),	\
+		/* mask all */				\
+		0,					\
+		/* mask separate available */		\
+		BIT(IIO_CHAN_INFO_SCALE),		\
+		/* mask all available */		\
+		BIT(IIO_CHAN_INFO_OVERSAMPLING_RATIO),	\
+		bits)
+
 #define AD7605_CHANNEL(num)				\
 	AD760X_CHANNEL(num, BIT(IIO_CHAN_INFO_RAW),	\
-		BIT(IIO_CHAN_INFO_SCALE), 0, 16)
+		BIT(IIO_CHAN_INFO_SCALE), 0, 0, 0, 16)
 
 #define AD7606_CHANNEL(num, bits)			\
 	AD760X_CHANNEL(num, BIT(IIO_CHAN_INFO_RAW),	\
 		BIT(IIO_CHAN_INFO_SCALE),		\
-		BIT(IIO_CHAN_INFO_OVERSAMPLING_RATIO), bits)
+		BIT(IIO_CHAN_INFO_OVERSAMPLING_RATIO),	\
+		0, 0, bits)
 
 #define AD7616_CHANNEL(num)	AD7606_SW_CHANNEL(num, 16)
 
@@ -95,7 +93,8 @@
 	AD760X_CHANNEL(num, 0,				\
 		BIT(IIO_CHAN_INFO_SCALE),		\
 		BIT(IIO_CHAN_INFO_SAMP_FREQ) |		\
-		BIT(IIO_CHAN_INFO_OVERSAMPLING_RATIO), 16)
+		BIT(IIO_CHAN_INFO_OVERSAMPLING_RATIO),  \
+		0, 0, 16)
 
 struct ad7606_state;
 

-- 
2.47.0


