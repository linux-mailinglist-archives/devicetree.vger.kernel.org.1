Return-Path: <devicetree+bounces-129197-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D3A439EAE96
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 11:51:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 65C79287447
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 10:51:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BE5F22CBC9;
	Tue, 10 Dec 2024 10:46:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="andx9GKd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E22F622541D
	for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 10:46:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733827615; cv=none; b=b144IL+68guI6Oy4meQ86Ej7lN7UVDho5kntJq1Wzdq1b2sS/R7M9kNvQy6oIDWoskeuyGQpGUQKOWATPbJXtFWu2jNw88pKbBXjxHZ0CVhgaONd1C/j0B1wpRRx7X49JjI/kjv7I9V/owJaOefhPTCBESgj4cT5nFLvB+Q4byQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733827615; c=relaxed/simple;
	bh=q8L+/X8mQMclZDxDMNMoohPiMsPmm9wiBCl25kpj+IE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=NJyLluksPz0LUlWw5KrNr7RFtlyzC9g4sVeuUjTwLdI2xI6bkZN/MoNGXOaKlAbwMCk6LC8hWQS1x/5LlvobZR/40a0E6SvncjmZaEFprbbIBsvtUbPyaU13epTPwH2fTGEQvqFioOVpdw9L+haT86ISfWO/ko/mEck5vhympho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=andx9GKd; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-434a736518eso59267535e9.1
        for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 02:46:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1733827611; x=1734432411; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YXPVN+H7vvYMLNQs3gMlC+noWJOkuHAbBtVwrLjbmHI=;
        b=andx9GKd0Ek48YVvpXcfJueL+UcPkEznFG9XVYgPDoFtP3FjEYd5uWK9ikKWMaiBzq
         PCQIqv5GC31ZmNuljWUqvtfGe6hfnTaExoktOpWyU5eCKc7j/Ny4oiAuHCHA0lsSbEHG
         38UzT6Lp9k5pyRKyC0/1prOzif5iYFYyIOGEoR6E1SqUaQvyWXT2Fb1ElFDBafivBnNe
         T8yVBuDbe3j/LZeFH13InrooaiRUpug/Rpxv0px3oN2GAiAXGoqy3mP0YTtbg8w+155k
         8kIKudIqYd2Nmxan1TU4cCoXi5gvhb4yKxbzgiGctbCjgY97tNgwU5nPFroIsriu8bJi
         56sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733827611; x=1734432411;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YXPVN+H7vvYMLNQs3gMlC+noWJOkuHAbBtVwrLjbmHI=;
        b=HAQgXNLPhufaX96Hraw/TpinZxn6Vqjd1jr4kuQIl/uZKgMdBhtBGlUz1pLK9RzkXd
         XqN+EJ5RcdkTCFXKWpUx16pK9s4EMXfys+e5lKy/veWYSWnlB9pS5nM9l9TTuBDTQ5pC
         kzMNCCecNN+PpS2Qsd/u8jX5R0WnjVAe89tl63ok6a6gC4h8V/VWroeuvHNfoXDZImgu
         QtBa0jSeio6S0AfWxmBreUj/aTnq86XNktV0fdJacXuUDauVWwELqpX9pY9JY3IMXAYd
         9b6nGzuYmUck4QqybybgxohO8HGQSlrdj6Nv016PZ9fqG+kf9MVI77h3CuLp1tB12AQG
         gdpA==
X-Forwarded-Encrypted: i=1; AJvYcCUd4ox1kbxVhCIxT4fYUUtgrFogPieieIbjVH+7vS+fxcckmkdkDqke0HOo55/3Wu6i3CqdNVYNP43i@vger.kernel.org
X-Gm-Message-State: AOJu0YwQtbcIqbGroy/gDCQZpWzvMpwYXDKeLqkG3QvlRE6pGhs+tc1P
	uU4ZBswvxO/hjLBKsuSv15kVMeGKiBd5Oi2CgdcOPRXGfy5xFCRUBlTB5l4HiII=
X-Gm-Gg: ASbGnctdCfFw76qRwHR/jzmCPvA1aML2jX9MdJmQP3wtK6Z3i7r+ZvK8OQbAx/y2/UB
	0rNrX8POCtwEwPbfRRIz64jDaCkiXmkl6wXv7CWcmfKr/ob5wxRY0XLgeB1rV8wlcL7LDtoMFzP
	LiSbeyxk+RJSklDtW65E5iGJyNKTfmtjB+n1IthsR2r8EKdnNSc/0pXagWIHP245bJoskysX7po
	bS7nQAGw8UN4mEMHCsTINVZvP+ovLfTu9YOElUcSBQcNvzxJJwe0KFEsi6XmWETMRcnX1Bi0zd+
	KA==
X-Google-Smtp-Source: AGHT+IEjZNifROqSaH0tgV4tC6R+g7G5eQGgzNCQx1BZaVZ3snqitMBsuRIjjsXOy61Ogp6tgAddnA==
X-Received: by 2002:a05:600c:5114:b0:434:a802:e9a6 with SMTP id 5b1f17b1804b1-434fff30ed9mr39195745e9.7.1733827610857;
        Tue, 10 Dec 2024 02:46:50 -0800 (PST)
Received: from [127.0.1.1] (frhb82016ds.ikexpress.com. [185.246.87.17])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434f2d08564sm94543645e9.12.2024.12.10.02.46.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Dec 2024 02:46:50 -0800 (PST)
From: Guillaume Stols <gstols@baylibre.com>
Date: Tue, 10 Dec 2024 10:46:48 +0000
Subject: [PATCH v2 8/9] iio: adc: ad7606: Change channel macros parameters
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241210-ad7606_add_iio_backend_software_mode-v2-8-6619c3e50d81@baylibre.com>
References: <20241210-ad7606_add_iio_backend_software_mode-v2-0-6619c3e50d81@baylibre.com>
In-Reply-To: <20241210-ad7606_add_iio_backend_software_mode-v2-0-6619c3e50d81@baylibre.com>
To: Lars-Peter Clausen <lars@metafoo.de>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 Jonathan Cameron <jic23@kernel.org>, Nuno Sa <nuno.sa@analog.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Jonathan Cameron <Jonathan.Cameron@huawei.com>, 
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Michael Hennerich <michael.hennerich@analog.com>, 
 devicetree@vger.kernel.org, dlechner@baylibre.com, jstephan@baylibre.com, 
 aardelean@baylibre.com, adureghello@baylibre.com, 
 Guillaume Stols <gstols@baylibre.com>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1733827603; l=3162;
 i=gstols@baylibre.com; s=20240417; h=from:subject:message-id;
 bh=q8L+/X8mQMclZDxDMNMoohPiMsPmm9wiBCl25kpj+IE=;
 b=S0PrQp4CIcaxFv3AH+5EAQczxw7xbqwMk5SsilNV/T3/SOiEvKEaXgaZBKeehaiSvRB0PB77n
 B6xClCSvw8FBS84JkOGiRXfg6iHJ/KyRZVVE7mrwobh3jw1bjQdzQg0
X-Developer-Key: i=gstols@baylibre.com; a=ed25519;
 pk=XvMm5WHuV67sGYOJZqIYzXndbaJOlNd8Q6li6vnb4Cs=

Add the possibility to pass the *_available parameters to the main
macro.
This is a preparation to add the new channels for software mode and
hardware mode in iio backend mode more easily.

Signed-off-by: Guillaume Stols <gstols@baylibre.com>
---
 drivers/iio/adc/ad7606.h | 51 ++++++++++++++++++++++++------------------------
 1 file changed, 25 insertions(+), 26 deletions(-)

diff --git a/drivers/iio/adc/ad7606.h b/drivers/iio/adc/ad7606.h
index eca7ea99e24d..ada8065fba4e 100644
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
2.34.1


