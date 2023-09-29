Return-Path: <devicetree+bounces-4731-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DC61C7B38B4
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 19:26:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 8C419283929
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 17:26:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1D0D66665;
	Fri, 29 Sep 2023 17:26:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4260658BD
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 17:26:02 +0000 (UTC)
Received: from mail-oo1-xc2a.google.com (mail-oo1-xc2a.google.com [IPv6:2607:f8b0:4864:20::c2a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 851EACED
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 10:26:00 -0700 (PDT)
Received: by mail-oo1-xc2a.google.com with SMTP id 006d021491bc7-57e4459aa29so170978eaf.0
        for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 10:26:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1696008359; x=1696613159; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Poh3NcltZJCv8ErOckDuYAOGqnEo7FR3Od1QJodXfh4=;
        b=XZL5fqUy6jsM/2hgri2lGkEOLdPeJEqnQiF0vzkDquju09dgNyORdIWS3W4O6swQJz
         JyrZflus2mCu/KkFvGSAB7KTIQW715aAR+NATDYFE/61sJHJ+1xtbYy4dnKBzQzaGE1X
         V1za1w4upFvJXrBuBkenIigzXfWqPy/0sDtWcBfJSyQUcozQqHS2ay/hSy5r8denyc2S
         FUgHlNGjLOSOc3/To/I08mm4lSB4BJ8jc+kyrb8DTf1xb6uMSWfcCEN99HH08ljZyfay
         NSzmQTXVkQG00WGPvHaYtpXhAGAGReDUPbE5k2Jt1vwNTwWXqlO18DZpuzzRCwToBXzv
         qDcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696008359; x=1696613159;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Poh3NcltZJCv8ErOckDuYAOGqnEo7FR3Od1QJodXfh4=;
        b=WSB0OMsy8ZwAxl8E8694f1eUb/YZYLo1JzAuBragz54gf/7oWxXANjxJ+ABXdo3Rsv
         YZzokwa90BzOsbhECFrjQg+A7hf4U3Ysj6CuXPIdyKPoqYLgYfJrOSHx4nPMqK4CrX0N
         UM0W32+FPRn5G7qIi4H7X18RT/pEXVMolAKvhs+tbt6FpHlk5lFEn3/CWHkRAwSx2/hw
         e6/kcsgZ3PW52HytWQx+7hyhbMZ/WCbNMfu+pK3K5ICpGSYqzdX8uG92nETZA1NTTPPw
         cBt8cP8hnD02uN3xvXape3rGkOz/Z4qL9l7L6mpt7AbGiJfk5LIcSBD029iPEteOELKM
         SKqw==
X-Gm-Message-State: AOJu0YwZUudiq70ule+5lm781V4CkE099wYTTpTRIPQP8b6HsGPSELm1
	U1bPbwGtLSRj4F4aOZxXSvGtQA==
X-Google-Smtp-Source: AGHT+IFcKaBoCPHTdIYrdiIJME1W/aXyuWm+uUQA3E3oI36LT3glA4oafOIzM/Cwr+iVAGhbAWzh9A==
X-Received: by 2002:a4a:a347:0:b0:576:bbf6:8a8e with SMTP id u7-20020a4aa347000000b00576bbf68a8emr3601045ool.2.1696008359600;
        Fri, 29 Sep 2023 10:25:59 -0700 (PDT)
Received: from freyr.lechnology.com (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id f128-20020a4a5886000000b0057bb326cad4sm2272915oob.33.2023.09.29.10.25.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Sep 2023 10:25:59 -0700 (PDT)
From: David Lechner <dlechner@baylibre.com>
To: linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-staging@lists.linux.dev
Cc: David Lechner <david@lechnology.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	=?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
	Axel Haslam <ahaslam@baylibre.com>,
	Philip Molloy <pmolloy@baylibre.com>,
	linux-kernel@vger.kernel.org,
	David Lechner <dlechner@baylibre.com>
Subject: [PATCH v3 14/27] staging: iio: resolver: ad2s1210: implement hysteresis as channel attr
Date: Fri, 29 Sep 2023 12:23:19 -0500
Message-ID: <20230929-ad2s1210-mainline-v3-14-fa4364281745@baylibre.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230929-ad2s1210-mainline-v3-0-fa4364281745@baylibre.com>
References: <20230929-ad2s1210-mainline-v3-0-fa4364281745@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Mailer: b4 0.12.3
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: David Lechner <david@lechnology.com>

From: David Lechner <dlechner@baylibre.com>

The AD2S1210 resolver has a hysteresis feature that can be used to
prevent flicker in the LSB of the position register. This can be either
enabled or disabled. Disabling hysteresis is useful for increasing
precision by oversampling.

Signed-off-by: David Lechner <dlechner@baylibre.com>
---

v3 changes:
* Refactored into more functions to reduce complexity of switch statements.
* Use early return instead of break in switch statements.

 drivers/staging/iio/resolver/ad2s1210.c | 86 +++++++++++++++++++++++++++++++--
 1 file changed, 83 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/iio/resolver/ad2s1210.c b/drivers/staging/iio/resolver/ad2s1210.c
index 0ec3598b600a..a82cb124a12f 100644
--- a/drivers/staging/iio/resolver/ad2s1210.c
+++ b/drivers/staging/iio/resolver/ad2s1210.c
@@ -78,7 +78,6 @@ struct ad2s1210_state {
 	/** The external oscillator frequency in Hz. */
 	unsigned long clkin_hz;
 	unsigned int fexcit;
-	bool hysteresis;
 	u8 resolution;
 	/** For reading raw sample value via SPI. */
 	__be16 sample __aligned(IIO_DMA_MINALIGN);
@@ -430,6 +429,35 @@ static int ad2s1210_single_conversion(struct ad2s1210_state *st,
 	return ret;
 }
 
+static int ad2s1210_get_hysteresis(struct ad2s1210_state *st, int *val)
+{
+	int ret;
+
+	mutex_lock(&st->lock);
+	ret = regmap_test_bits(st->regmap, AD2S1210_REG_CONTROL,
+			       AD2S1210_ENABLE_HYSTERESIS);
+	mutex_unlock(&st->lock);
+
+	if (ret < 0)
+		return ret;
+
+	*val = !!ret;
+	return IIO_VAL_INT;
+}
+
+static int ad2s1210_set_hysteresis(struct ad2s1210_state *st, int val)
+{
+	int ret;
+
+	mutex_lock(&st->lock);
+	ret = regmap_update_bits(st->regmap, AD2S1210_REG_CONTROL,
+				 AD2S1210_ENABLE_HYSTERESIS,
+				 val ? AD2S1210_ENABLE_HYSTERESIS : 0);
+	mutex_unlock(&st->lock);
+
+	return ret;
+}
+
 static const int ad2s1210_velocity_scale[] = {
 	17089132, /* 8.192MHz / (2*pi * 2500 / 2^15) */
 	42722830, /* 8.192MHz / (2*pi * 1000 / 2^15) */
@@ -462,7 +490,55 @@ static int ad2s1210_read_raw(struct iio_dev *indio_dev,
 		default:
 			return -EINVAL;
 		}
+	case IIO_CHAN_INFO_HYSTERESIS:
+		switch (chan->type) {
+		case IIO_ANGL:
+			return ad2s1210_get_hysteresis(st, val);
+		default:
+			return -EINVAL;
+		}
+	default:
+		return -EINVAL;
+	}
+}
+
+static int ad2s1210_read_avail(struct iio_dev *indio_dev,
+			       struct iio_chan_spec const *chan,
+			       const int **vals, int *type,
+			       int *length, long mask)
+{
+	static const int hysteresis_available[] = { 0, 1 };
+
+	switch (mask) {
+	case IIO_CHAN_INFO_HYSTERESIS:
+		switch (chan->type) {
+		case IIO_ANGL:
+			*vals = hysteresis_available;
+			*type = IIO_VAL_INT;
+			*length = ARRAY_SIZE(hysteresis_available);
+			return IIO_AVAIL_LIST;
+		default:
+			return -EINVAL;
+		}
+	default:
+		return -EINVAL;
+	}
+}
 
+static int ad2s1210_write_raw(struct iio_dev *indio_dev,
+			      struct iio_chan_spec const *chan,
+			      int val, int val2, long mask)
+{
+	struct ad2s1210_state *st = iio_priv(indio_dev);
+
+	switch (mask) {
+	case IIO_CHAN_INFO_HYSTERESIS:
+		switch (chan->type) {
+		case IIO_ANGL:
+			return ad2s1210_set_hysteresis(st, val);
+		default:
+			return -EINVAL;
+		}
 	default:
 		return -EINVAL;
 	}
@@ -503,7 +579,10 @@ static const struct iio_chan_spec ad2s1210_channels[] = {
 		.indexed = 1,
 		.channel = 0,
 		.info_mask_separate = BIT(IIO_CHAN_INFO_RAW) |
-				      BIT(IIO_CHAN_INFO_SCALE),
+				      BIT(IIO_CHAN_INFO_SCALE) |
+				      BIT(IIO_CHAN_INFO_HYSTERESIS),
+		.info_mask_separate_available =
+					BIT(IIO_CHAN_INFO_HYSTERESIS),
 	}, {
 		.type = IIO_ANGL_VEL,
 		.indexed = 1,
@@ -581,6 +660,8 @@ static int ad2s1210_debugfs_reg_access(struct iio_dev *indio_dev,
 
 static const struct iio_info ad2s1210_info = {
 	.read_raw = ad2s1210_read_raw,
+	.read_avail = ad2s1210_read_avail,
+	.write_raw = ad2s1210_write_raw,
 	.attrs = &ad2s1210_attribute_group,
 	.debugfs_reg_access = &ad2s1210_debugfs_reg_access,
 };
@@ -696,7 +777,6 @@ static int ad2s1210_probe(struct spi_device *spi)
 
 	mutex_init(&st->lock);
 	st->sdev = spi;
-	st->hysteresis = true;
 	st->resolution = 12;
 	st->fexcit = AD2S1210_DEF_EXCIT;
 

-- 
2.42.0


