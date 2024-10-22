Return-Path: <devicetree+bounces-114204-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C6BF9AA2FF
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 15:23:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C51DDB22772
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 13:23:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD00619F42C;
	Tue, 22 Oct 2024 13:22:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="YCWdYPw1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86E0719E99A
	for <devicetree@vger.kernel.org>; Tue, 22 Oct 2024 13:22:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729603367; cv=none; b=AgjLtBgPzk0dPDGPH3nPJ6IyvGxWJX2GNyrYq1WWFy2RQ1CZWMGsQ7aWQbuihHHJk8I6+2azm+1RHfzA5xwCYIuExtHKvMDkvOcqKPGm1ZUSkaapppSiHX2TjKAx0/6XDc14TrxX0bXxnkKGgOSRVIlIMat6Z72B8hoReoUQzXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729603367; c=relaxed/simple;
	bh=s8uFNPbxVNJ0ubj+QtCVAYqEkC0v6RNjIhpOZ81iCT8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Jux921S14VYt7RHeF6Hb0P+EgqNaUSjHNYsArF3ocyfJvxKFannSQ252p6GrlN3PIjylEad/1dDuD7WXpH70pyOI868/F3cGiN6K029iWovybdlYYgRelZNRz08HevrGLAB/V/2KhGWZvSaevgSwdbrre82M+R4/kqvrF3KvQk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=YCWdYPw1; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-5c9709c9b0cso7395262a12.1
        for <devicetree@vger.kernel.org>; Tue, 22 Oct 2024 06:22:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1729603364; x=1730208164; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=m3THIeKT2uotc/kE1QXaEVNl4DypBbo/jMvvgPrzSZk=;
        b=YCWdYPw1yMkVbE49gXYI68Upltit+KRrz1Wj1JCHW317wkEYLdhvQM06N15iyDKlw9
         Lj4Brm+XDRXRMZpFZcfmcVFJSbA/mSMomKvTK1CJAARIEtNf2IGUd4hWJYG7rr+jK6z4
         6xYpBF7gmkvyfX1t9/6TDJR5NG8sqfT/zW6cyM8Mo+yUjUI94UXFQlpK8ca8ZXg8c8oE
         ZIdYpjL82VvpKpGh9zIPQiItr27jRNBnT5D6rLtYDtlyUptFRAhNO0dpOMrfs2gu3e2P
         wVa1EiIWXkJpTHsOOivSmoT3SaQi2Byf+1RwnX0oywHsMWnj4/CCaPOAm0fKc66GWjvp
         IiqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729603364; x=1730208164;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=m3THIeKT2uotc/kE1QXaEVNl4DypBbo/jMvvgPrzSZk=;
        b=v/Ez0BFdIATWdkdCSksIy7P6ujvC2y23xazTwTvLxsyftAs3vZUGgpiCorut8u57ES
         cLAJJLrqQS9A6/ct/v6s4idbBfKB7xnVA67xNk/Toa/QKGynhB22B2HRelH9jo2sXPx7
         i02J6AYs7dSsPYrrw/2yUQD16AXwierOukvYnAOazD7suD3t+Z3tMb6sbB5BqoVUaIGs
         EDSQvWAZCpJDAZudDjmuyBsnfaqqtkxWbpEizjS0QI6euUmH8Czy/rttHAHfXZFclnTs
         HrhcR8HjOCpA2Gm0xc7aZ2kuAc4xwFrBZ30YA0EwscNwOxwVpbMKxIKpwTmWZh01La7S
         wV2Q==
X-Forwarded-Encrypted: i=1; AJvYcCU+3DpyWT60TKVL9oBc4I74lFTj9vFF7RtPAi5ZQAm1aAXAdKcigi0P5cwsOt+gFQhvI+3/Y8JCXdzq@vger.kernel.org
X-Gm-Message-State: AOJu0Yxzp0Dl3SgSltqsTsPJe8L06De2VKupnS7r0o0N+3YAvjhOZsk6
	/x+bsrI4rBAzc4coEYiBkHryrgIAlf+fuDxN9cSFeBOCX0bMgWTi38hi7GJtkUo=
X-Google-Smtp-Source: AGHT+IHiEe+S/y+yuilKaM6h9pl72qQWVuFWIIkOv+21yNIanhGh/C/lniO9KLY9WHrHvXoh9hSRrA==
X-Received: by 2002:a05:6402:2788:b0:5c8:84a8:5185 with SMTP id 4fb4d7f45d1cf-5cb782b1dc3mr2759875a12.6.1729603363782;
        Tue, 22 Oct 2024 06:22:43 -0700 (PDT)
Received: from [192.168.1.64] (2a02-842a-d52e-6101-6fd0-06c4-5d68-f0a5.rev.sfr.net. [2a02:842a:d52e:6101:6fd0:6c4:5d68:f0a5])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5cb66c737c4sm3109496a12.96.2024.10.22.06.22.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Oct 2024 06:22:43 -0700 (PDT)
From: Julien Stephan <jstephan@baylibre.com>
Date: Tue, 22 Oct 2024 15:22:38 +0200
Subject: [PATCH v3 3/5] iio: adc: ad7380: add missing supplies
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241022-ad7380-fix-supplies-v3-3-f0cefe1b7fa6@baylibre.com>
References: <20241022-ad7380-fix-supplies-v3-0-f0cefe1b7fa6@baylibre.com>
In-Reply-To: <20241022-ad7380-fix-supplies-v3-0-f0cefe1b7fa6@baylibre.com>
To: Lars-Peter Clausen <lars@metafoo.de>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 David Lechner <dlechner@baylibre.com>, Jonathan Cameron <jic23@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, 
 Mark Brown <broonie@kernel.org>, Jonathan Corbet <corbet@lwn.net>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Conor Dooley <conor.dooley@microchip.com>, 
 Jonathan Cameron <Jonathan.Cameron@huawei.com>, linux-doc@vger.kernel.org, 
 Julien Stephan <jstephan@baylibre.com>
X-Mailer: b4 0.14.2

vcc and vlogic are required but are not retrieved and enabled in the
probe. Add them.

In order to prepare support for additional parts requiring different
supplies, add vcc and vlogic to the platform specific structures

Reviewed-by: Nuno Sa <nuno.sa@analog.com>
Reviewed-by: David Lechner <dlechner@baylibre.com>
Signed-off-by: Julien Stephan <jstephan@baylibre.com>
---
 drivers/iio/adc/ad7380.c | 43 +++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 43 insertions(+)

diff --git a/drivers/iio/adc/ad7380.c b/drivers/iio/adc/ad7380.c
index e033c734191143a25a490b09c730dbf95f796737..b107d8e97ab36f7aed4685f18e0f398d63fd1e8d 100644
--- a/drivers/iio/adc/ad7380.c
+++ b/drivers/iio/adc/ad7380.c
@@ -75,6 +75,7 @@
 #define T_CONVERT_NS 190		/* conversion time */
 #define T_CONVERT_0_NS 10		/* 1st conversion start time (oversampling) */
 #define T_CONVERT_X_NS 500		/* xth conversion start time (oversampling) */
+#define T_POWERUP_US 5000		/* Power up */
 
 struct ad7380_timing_specs {
 	const unsigned int t_csh_ns;	/* CS minimum high time */
@@ -86,6 +87,8 @@ struct ad7380_chip_info {
 	unsigned int num_channels;
 	unsigned int num_simult_channels;
 	bool has_mux;
+	const char * const *supplies;
+	unsigned int num_supplies;
 	const char * const *vcm_supplies;
 	unsigned int num_vcm_supplies;
 	const unsigned long *available_scan_masks;
@@ -243,6 +246,10 @@ DEFINE_AD7380_8_CHANNEL(ad7386_4_channels, 16, 0, u);
 DEFINE_AD7380_8_CHANNEL(ad7387_4_channels, 14, 0, u);
 DEFINE_AD7380_8_CHANNEL(ad7388_4_channels, 12, 0, u);
 
+static const char * const ad7380_supplies[] = {
+	"vcc", "vlogic",
+};
+
 static const char * const ad7380_2_channel_vcm_supplies[] = {
 	"aina", "ainb",
 };
@@ -338,6 +345,8 @@ static const struct ad7380_chip_info ad7380_chip_info = {
 	.channels = ad7380_channels,
 	.num_channels = ARRAY_SIZE(ad7380_channels),
 	.num_simult_channels = 2,
+	.supplies = ad7380_supplies,
+	.num_supplies = ARRAY_SIZE(ad7380_supplies),
 	.available_scan_masks = ad7380_2_channel_scan_masks,
 	.timing_specs = &ad7380_timing,
 };
@@ -347,6 +356,8 @@ static const struct ad7380_chip_info ad7381_chip_info = {
 	.channels = ad7381_channels,
 	.num_channels = ARRAY_SIZE(ad7381_channels),
 	.num_simult_channels = 2,
+	.supplies = ad7380_supplies,
+	.num_supplies = ARRAY_SIZE(ad7380_supplies),
 	.available_scan_masks = ad7380_2_channel_scan_masks,
 	.timing_specs = &ad7380_timing,
 };
@@ -356,6 +367,8 @@ static const struct ad7380_chip_info ad7383_chip_info = {
 	.channels = ad7383_channels,
 	.num_channels = ARRAY_SIZE(ad7383_channels),
 	.num_simult_channels = 2,
+	.supplies = ad7380_supplies,
+	.num_supplies = ARRAY_SIZE(ad7380_supplies),
 	.vcm_supplies = ad7380_2_channel_vcm_supplies,
 	.num_vcm_supplies = ARRAY_SIZE(ad7380_2_channel_vcm_supplies),
 	.available_scan_masks = ad7380_2_channel_scan_masks,
@@ -367,6 +380,8 @@ static const struct ad7380_chip_info ad7384_chip_info = {
 	.channels = ad7384_channels,
 	.num_channels = ARRAY_SIZE(ad7384_channels),
 	.num_simult_channels = 2,
+	.supplies = ad7380_supplies,
+	.num_supplies = ARRAY_SIZE(ad7380_supplies),
 	.vcm_supplies = ad7380_2_channel_vcm_supplies,
 	.num_vcm_supplies = ARRAY_SIZE(ad7380_2_channel_vcm_supplies),
 	.available_scan_masks = ad7380_2_channel_scan_masks,
@@ -378,6 +393,8 @@ static const struct ad7380_chip_info ad7386_chip_info = {
 	.channels = ad7386_channels,
 	.num_channels = ARRAY_SIZE(ad7386_channels),
 	.num_simult_channels = 2,
+	.supplies = ad7380_supplies,
+	.num_supplies = ARRAY_SIZE(ad7380_supplies),
 	.has_mux = true,
 	.available_scan_masks = ad7380_2x2_channel_scan_masks,
 	.timing_specs = &ad7380_timing,
@@ -388,6 +405,8 @@ static const struct ad7380_chip_info ad7387_chip_info = {
 	.channels = ad7387_channels,
 	.num_channels = ARRAY_SIZE(ad7387_channels),
 	.num_simult_channels = 2,
+	.supplies = ad7380_supplies,
+	.num_supplies = ARRAY_SIZE(ad7380_supplies),
 	.has_mux = true,
 	.available_scan_masks = ad7380_2x2_channel_scan_masks,
 	.timing_specs = &ad7380_timing,
@@ -398,6 +417,8 @@ static const struct ad7380_chip_info ad7388_chip_info = {
 	.channels = ad7388_channels,
 	.num_channels = ARRAY_SIZE(ad7388_channels),
 	.num_simult_channels = 2,
+	.supplies = ad7380_supplies,
+	.num_supplies = ARRAY_SIZE(ad7380_supplies),
 	.has_mux = true,
 	.available_scan_masks = ad7380_2x2_channel_scan_masks,
 	.timing_specs = &ad7380_timing,
@@ -408,6 +429,8 @@ static const struct ad7380_chip_info ad7380_4_chip_info = {
 	.channels = ad7380_4_channels,
 	.num_channels = ARRAY_SIZE(ad7380_4_channels),
 	.num_simult_channels = 4,
+	.supplies = ad7380_supplies,
+	.num_supplies = ARRAY_SIZE(ad7380_supplies),
 	.available_scan_masks = ad7380_4_channel_scan_masks,
 	.timing_specs = &ad7380_4_timing,
 };
@@ -417,6 +440,8 @@ static const struct ad7380_chip_info ad7381_4_chip_info = {
 	.channels = ad7381_4_channels,
 	.num_channels = ARRAY_SIZE(ad7381_4_channels),
 	.num_simult_channels = 4,
+	.supplies = ad7380_supplies,
+	.num_supplies = ARRAY_SIZE(ad7380_supplies),
 	.available_scan_masks = ad7380_4_channel_scan_masks,
 	.timing_specs = &ad7380_4_timing,
 };
@@ -426,6 +451,8 @@ static const struct ad7380_chip_info ad7383_4_chip_info = {
 	.channels = ad7383_4_channels,
 	.num_channels = ARRAY_SIZE(ad7383_4_channels),
 	.num_simult_channels = 4,
+	.supplies = ad7380_supplies,
+	.num_supplies = ARRAY_SIZE(ad7380_supplies),
 	.vcm_supplies = ad7380_4_channel_vcm_supplies,
 	.num_vcm_supplies = ARRAY_SIZE(ad7380_4_channel_vcm_supplies),
 	.available_scan_masks = ad7380_4_channel_scan_masks,
@@ -437,6 +464,8 @@ static const struct ad7380_chip_info ad7384_4_chip_info = {
 	.channels = ad7384_4_channels,
 	.num_channels = ARRAY_SIZE(ad7384_4_channels),
 	.num_simult_channels = 4,
+	.supplies = ad7380_supplies,
+	.num_supplies = ARRAY_SIZE(ad7380_supplies),
 	.vcm_supplies = ad7380_4_channel_vcm_supplies,
 	.num_vcm_supplies = ARRAY_SIZE(ad7380_4_channel_vcm_supplies),
 	.available_scan_masks = ad7380_4_channel_scan_masks,
@@ -448,6 +477,8 @@ static const struct ad7380_chip_info ad7386_4_chip_info = {
 	.channels = ad7386_4_channels,
 	.num_channels = ARRAY_SIZE(ad7386_4_channels),
 	.num_simult_channels = 4,
+	.supplies = ad7380_supplies,
+	.num_supplies = ARRAY_SIZE(ad7380_supplies),
 	.has_mux = true,
 	.available_scan_masks = ad7380_2x4_channel_scan_masks,
 	.timing_specs = &ad7380_4_timing,
@@ -458,6 +489,8 @@ static const struct ad7380_chip_info ad7387_4_chip_info = {
 	.channels = ad7387_4_channels,
 	.num_channels = ARRAY_SIZE(ad7387_4_channels),
 	.num_simult_channels = 4,
+	.supplies = ad7380_supplies,
+	.num_supplies = ARRAY_SIZE(ad7380_supplies),
 	.has_mux = true,
 	.available_scan_masks = ad7380_2x4_channel_scan_masks,
 	.timing_specs = &ad7380_4_timing,
@@ -468,6 +501,8 @@ static const struct ad7380_chip_info ad7388_4_chip_info = {
 	.channels = ad7388_4_channels,
 	.num_channels = ARRAY_SIZE(ad7388_4_channels),
 	.num_simult_channels = 4,
+	.supplies = ad7380_supplies,
+	.num_supplies = ARRAY_SIZE(ad7380_supplies),
 	.has_mux = true,
 	.available_scan_masks = ad7380_2x4_channel_scan_masks,
 	.timing_specs = &ad7380_4_timing,
@@ -1004,6 +1039,14 @@ static int ad7380_probe(struct spi_device *spi)
 	if (!st->chip_info)
 		return dev_err_probe(&spi->dev, -EINVAL, "missing match data\n");
 
+	ret = devm_regulator_bulk_get_enable(&spi->dev, st->chip_info->num_supplies,
+					     st->chip_info->supplies);
+
+	if (ret)
+		return dev_err_probe(&spi->dev, ret,
+				     "Failed to enable power supplies\n");
+	fsleep(T_POWERUP_US);
+
 	/*
 	 * If there is no REFIO supply, then it means that we are using
 	 * the internal 2.5V reference, otherwise REFIO is reference voltage.

-- 
2.47.0


