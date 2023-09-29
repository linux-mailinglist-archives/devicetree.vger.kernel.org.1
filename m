Return-Path: <devicetree+bounces-4726-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E5E1D7B38AE
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 19:26:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 97A69283CFA
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 17:26:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07B5151228;
	Fri, 29 Sep 2023 17:26:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21098658B6
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 17:25:58 +0000 (UTC)
Received: from mail-oo1-xc2b.google.com (mail-oo1-xc2b.google.com [IPv6:2607:f8b0:4864:20::c2b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D7B9A1BE
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 10:25:54 -0700 (PDT)
Received: by mail-oo1-xc2b.google.com with SMTP id 006d021491bc7-57b9231e91dso6636570eaf.2
        for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 10:25:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1696008354; x=1696613154; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=28jJJTis54b3wmpIVJwL9RF7C6DVS3KioTbcI+7oS24=;
        b=3PFkbdyxbMZwlZeXWoI2d1QtPAsODCvqtmGPRR+Ney0eMDNlVeJlmpTPUQgNZtlipl
         JU5/FFJyEXHzZ516M31k1EYLkRpFnDstuWKiA1tNeCnpKGEpAyFQSA5yTt1Bw160PA+Z
         tzTwh2W08wQaDF+0fXVCWIcqpjkkOQbDde+zzVw8wkNbG8kDCNMZY47L9ATj8qua2PBA
         pC0ZMqvx8iASdH49rrNBYrgq1qZnIg0hBJPN2sxEKQP7dhKliAn8RPHjL7myDM8ymqbU
         t8r5DTBhgSe9euMuO71HLXYhNpmWOCbPT074K/wD+wWGgqoCJ1zGhYs39gyPPZlNeHJ6
         99nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696008354; x=1696613154;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=28jJJTis54b3wmpIVJwL9RF7C6DVS3KioTbcI+7oS24=;
        b=JSu9UEOM/uYztvhZe77pLyuPORqY7riDgL3cGZnL/Fk0EpHTjW3Xr9ZLC4o2/iZA1J
         HquZsI0N/get2htcCqHZu8vcRgZWZ4GIbK+9pLuQQVgES8JBdmHSZuREetmkFUtaBmrU
         vCrT4xdt0q1c6t6vF7hlcMRBJSbweqEeKXXK/hi9VQ2qRF8XpFEixMsvI8YkiPoPvDyK
         s1px4SiXfREbYXsi4PhfaAKQOHrDA2/pQO+ggIOeV2A5kjvi7JLjMHSmzUEJbEDqCnXx
         47m3pj7ZvxUBJi2AjYvR8gMdauSVy8PFpPHFHb2lmX7gWgROhXMfASSivhK3Z/QyBiR2
         7Yhg==
X-Gm-Message-State: AOJu0YwlTXuzr617rIlcmK45yATV7Cc2KYjdrvwdu/VEdPDKmkAm5Enb
	BnVnnazOu04Q8PNx1mD4BiICrw==
X-Google-Smtp-Source: AGHT+IG6QmUCiM9xhfcEn2UE7ttPOZ69R5Dzu9UBXrdUUMo4iJAI90PE/xg3KBZxsjTwj0v9W0j4JQ==
X-Received: by 2002:a05:6820:295:b0:57b:e345:43ad with SMTP id q21-20020a056820029500b0057be34543admr4992821ood.4.1696008354146;
        Fri, 29 Sep 2023 10:25:54 -0700 (PDT)
Received: from freyr.lechnology.com (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id f128-20020a4a5886000000b0057bb326cad4sm2272915oob.33.2023.09.29.10.25.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Sep 2023 10:25:53 -0700 (PDT)
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
Subject: [PATCH v3 08/27] staging: iio: resolver: ad2s1210: implement IIO_CHAN_INFO_SCALE
Date: Fri, 29 Sep 2023 12:23:13 -0500
Message-ID: <20230929-ad2s1210-mainline-v3-8-fa4364281745@baylibre.com>
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

This adds an implementation of IIO_CHAN_INFO_SCALE to the ad2s1210
resolver driver. This allows userspace to get the scale factor for the
raw values.

Signed-off-by: David Lechner <dlechner@baylibre.com>
---

v3 changes:
* Split ad2s1210_read_raw() into two functions to reduce complexity.
* Use early return instead of break in switch statements.

 drivers/staging/iio/resolver/ad2s1210.c | 53 ++++++++++++++++++++++++++++-----
 1 file changed, 45 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/iio/resolver/ad2s1210.c b/drivers/staging/iio/resolver/ad2s1210.c
index f9774dff2df4..a710598a64f0 100644
--- a/drivers/staging/iio/resolver/ad2s1210.c
+++ b/drivers/staging/iio/resolver/ad2s1210.c
@@ -461,13 +461,10 @@ static ssize_t ad2s1210_store_reg(struct device *dev,
 	return ret < 0 ? ret : len;
 }
 
-static int ad2s1210_read_raw(struct iio_dev *indio_dev,
-			     struct iio_chan_spec const *chan,
-			     int *val,
-			     int *val2,
-			     long m)
+static int ad2s1210_single_conversion(struct ad2s1210_state *st,
+				      struct iio_chan_spec const *chan,
+				      int *val)
 {
-	struct ad2s1210_state *st = iio_priv(indio_dev);
 	int ret = 0;
 
 	mutex_lock(&st->lock);
@@ -514,6 +511,44 @@ static int ad2s1210_read_raw(struct iio_dev *indio_dev,
 	return ret;
 }
 
+static const int ad2s1210_velocity_scale[] = {
+	17089132, /* 8.192MHz / (2*pi * 2500 / 2^15) */
+	42722830, /* 8.192MHz / (2*pi * 1000 / 2^15) */
+	85445659, /* 8.192MHz / (2*pi * 500 / 2^15) */
+	341782638, /* 8.192MHz / (2*pi * 125 / 2^15) */
+};
+
+static int ad2s1210_read_raw(struct iio_dev *indio_dev,
+			     struct iio_chan_spec const *chan,
+			     int *val,
+			     int *val2,
+			     long mask)
+{
+	struct ad2s1210_state *st = iio_priv(indio_dev);
+
+	switch (mask) {
+	case IIO_CHAN_INFO_RAW:
+		return ad2s1210_single_conversion(st, chan, val);
+	case IIO_CHAN_INFO_SCALE:
+		switch (chan->type) {
+		case IIO_ANGL:
+			/* approx 0.3 arc min converted to radians */
+			*val = 0;
+			*val2 = 95874;
+			return IIO_VAL_INT_PLUS_NANO;
+		case IIO_ANGL_VEL:
+			*val = st->fclkin;
+			*val2 = ad2s1210_velocity_scale[st->resolution];
+			return IIO_VAL_FRACTIONAL;
+		default:
+			return -EINVAL;
+		}
+
+	default:
+		return -EINVAL;
+	}
+}
+
 static IIO_DEVICE_ATTR(fclkin, 0644,
 		       ad2s1210_show_fclkin, ad2s1210_store_fclkin, 0);
 static IIO_DEVICE_ATTR(fexcit, 0644,
@@ -552,12 +587,14 @@ static const struct iio_chan_spec ad2s1210_channels[] = {
 		.type = IIO_ANGL,
 		.indexed = 1,
 		.channel = 0,
-		.info_mask_separate = BIT(IIO_CHAN_INFO_RAW),
+		.info_mask_separate = BIT(IIO_CHAN_INFO_RAW) |
+				      BIT(IIO_CHAN_INFO_SCALE),
 	}, {
 		.type = IIO_ANGL_VEL,
 		.indexed = 1,
 		.channel = 0,
-		.info_mask_separate = BIT(IIO_CHAN_INFO_RAW),
+		.info_mask_separate = BIT(IIO_CHAN_INFO_RAW) |
+				      BIT(IIO_CHAN_INFO_SCALE),
 	}
 };
 

-- 
2.42.0


