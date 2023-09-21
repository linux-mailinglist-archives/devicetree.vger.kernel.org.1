Return-Path: <devicetree+bounces-2066-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D22E7A99AE
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 20:17:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6BB2A1C20F1B
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 18:17:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67F5C1945C;
	Thu, 21 Sep 2023 17:23:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0532F168CF
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 17:23:05 +0000 (UTC)
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BB04F5A579
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 10:21:19 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-503397ee920so2089208e87.1
        for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 10:21:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1695316877; x=1695921677; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nYFN9YS9lGoY3Drq+6yfHeUu5PUEzCkva/9j6XN0ZE4=;
        b=vLptmQtbzoGEcvidn+m9+G82q2inX9ZfApYfbgN60+Tz5X7AsPTx15xhTaAWeatagr
         g40L5zurVCiXkDH5SWigF9cP4jzF1a9V1iOz85h2/epzK95+Ljgf2YICAhClRgE6TSCJ
         reVggeEm0a/IGsaTeaqcirHVMgMfGm8+N+OwMWr1N5OPwXXUE4+wFaY9FdYGE8NvlIv6
         Vxzu94p+qzo0MHz1/mVUluDEx2uBnxwFRQCjqijEE2Zviw/pwIOoRdGZePCVUfijcjX/
         cEMguOIEmUzvlwESrinDaUVq/l+CoG45coisVGAkRPfA5CcZFG0P7wDojUt/l71Droy9
         Zq3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695316877; x=1695921677;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nYFN9YS9lGoY3Drq+6yfHeUu5PUEzCkva/9j6XN0ZE4=;
        b=LY6hGwxfhtdXhkNq6wq7hyXUg3W++T9p+yYgAAn6MuhhHMljVYryTAMncSiHzLbNsk
         Bs7OtBfPwOD+/YCaSZgF+79eiMB+nqGKJmnBqaBkqUOUdrpYBLm/LK3F/UrTEN2TrAB4
         lzqIzfAouVfxbwdrv3iwn1Sco9wpM/N12ZUrW4M+S3MEb7x6pl8Je4aqYwXYFbOZe9lm
         DOMkNPw4OBW9vvj5Bi5L9WcEqBGQV1sC/1dBUcA4MkIWZGVKX5F2u+oLzaHP0i396rKr
         9Fndttz4dl+Q6fNAlTH3hqyuC5rCQJP7O3hSYiQjC2IfsxDXHT8zhlsixAtzKKrofPG5
         CJ8g==
X-Gm-Message-State: AOJu0YwUrWUgbkFpQaMH/r5uEJ71pjrS8zKms+LBdETeno2L1r8I4D1R
	fwG616EcBBr2k7mRtNj3oaZTyoWV0ACGPb1qq/ONS5sX
X-Google-Smtp-Source: AGHT+IGzi9ygNvTFbE+Q0DTN6Dqq1DY5zH+YbCcxdTub+gBa6RSxhhAqH5GwDY9iR65TpVMFQugkOA==
X-Received: by 2002:a05:600c:478a:b0:405:3955:5872 with SMTP id k10-20020a05600c478a00b0040539555872mr743765wmo.18.1695307466583;
        Thu, 21 Sep 2023 07:44:26 -0700 (PDT)
Received: from localhost.localdomain (abordeaux-655-1-129-86.w90-5.abo.wanadoo.fr. [90.5.10.86])
        by smtp.gmail.com with ESMTPSA id s17-20020a1cf211000000b003fe2a40d287sm2125515wmc.1.2023.09.21.07.44.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Sep 2023 07:44:26 -0700 (PDT)
From: David Lechner <dlechner@baylibre.com>
To: linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-staging@lists.linux.dev
Cc: linux-kernel@vger.kernel.org,
	Jonathan Cameron <jic23@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	=?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>,
	Axel Haslam <ahaslam@baylibre.com>,
	Philip Molloy <pmolloy@baylibre.com>,
	David Lechner <dlechner@baylibre.com>
Subject: [PATCH v2 16/19] staging: iio: resolver: ad2s1210: rename fexcit attribute
Date: Thu, 21 Sep 2023 09:43:57 -0500
Message-Id: <20230921144400.62380-17-dlechner@baylibre.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230921144400.62380-1-dlechner@baylibre.com>
References: <20230921144400.62380-1-dlechner@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

This renames the fexcit attribute to excitation_frequency to be more
human-readable. Since we are already making many breaking changes to
the staging driver, this is a good time to do this.

Also make use of IIO_DEVICE_ATTR_RW while we are touching this.

Signed-off-by: David Lechner <dlechner@baylibre.com>
---
 drivers/staging/iio/resolver/ad2s1210.c | 17 ++++++++---------
 1 file changed, 8 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/iio/resolver/ad2s1210.c b/drivers/staging/iio/resolver/ad2s1210.c
index 27294eff99ef..14bec2b20939 100644
--- a/drivers/staging/iio/resolver/ad2s1210.c
+++ b/drivers/staging/iio/resolver/ad2s1210.c
@@ -217,9 +217,9 @@ static int ad2s1210_set_resolution_gpios(struct ad2s1210_state *st,
 				     bitmap);
 }
 
-static ssize_t ad2s1210_show_fexcit(struct device *dev,
-				    struct device_attribute *attr,
-				    char *buf)
+static ssize_t excitation_frequency_show(struct device *dev,
+					 struct device_attribute *attr,
+					 char *buf)
 {
 	struct ad2s1210_state *st = iio_priv(dev_to_iio_dev(dev));
 	unsigned int value;
@@ -240,9 +240,9 @@ static ssize_t ad2s1210_show_fexcit(struct device *dev,
 	return ret;
 }
 
-static ssize_t ad2s1210_store_fexcit(struct device *dev,
-				     struct device_attribute *attr,
-				     const char *buf, size_t len)
+static ssize_t excitation_frequency_store(struct device *dev,
+					  struct device_attribute *attr,
+					  const char *buf, size_t len)
 {
 	struct ad2s1210_state *st = iio_priv(dev_to_iio_dev(dev));
 	u16 fexcit;
@@ -555,8 +555,7 @@ static int ad2s1210_write_raw(struct iio_dev *indio_dev,
 	return ret;
 }
 
-static IIO_DEVICE_ATTR(fexcit, 0644,
-		       ad2s1210_show_fexcit,	ad2s1210_store_fexcit, 0);
+static IIO_DEVICE_ATTR_RW(excitation_frequency, 0);
 static IIO_DEVICE_ATTR(bits, 0644,
 		       ad2s1210_show_resolution, ad2s1210_store_resolution, 0);
 static IIO_DEVICE_ATTR(fault, 0644,
@@ -604,7 +603,7 @@ static const struct iio_chan_spec ad2s1210_channels[] = {
 };
 
 static struct attribute *ad2s1210_attributes[] = {
-	&iio_dev_attr_fexcit.dev_attr.attr,
+	&iio_dev_attr_excitation_frequency.dev_attr.attr,
 	&iio_dev_attr_bits.dev_attr.attr,
 	&iio_dev_attr_fault.dev_attr.attr,
 	&iio_dev_attr_los_thrd.dev_attr.attr,
-- 
2.34.1


