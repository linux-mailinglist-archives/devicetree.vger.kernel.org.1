Return-Path: <devicetree+bounces-4729-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BA05A7B38B1
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 19:26:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 606452841CA
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 17:26:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D6AE66661;
	Fri, 29 Sep 2023 17:26:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FA8D658A6
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 17:26:00 +0000 (UTC)
Received: from mail-oo1-xc2f.google.com (mail-oo1-xc2f.google.com [IPv6:2607:f8b0:4864:20::c2f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 968E2CD4
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 10:25:58 -0700 (PDT)
Received: by mail-oo1-xc2f.google.com with SMTP id 006d021491bc7-57b8cebf57dso6185680eaf.0
        for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 10:25:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1696008358; x=1696613158; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XiqsYkzaUXytpS8ltMLHCDCpitprsValB11Dy+9gc7k=;
        b=slnF/eCZFAutV0IoSbUdZBfQkVjVzS6MrLQhyETxaWggOtGu6fur9AKJQ2CWNTIVli
         kMXKEjPBoKJR1scA8hFARy5nmK1XhiVOR0yB/7n/IBoMS84S7Mwu1Xxn3IiFkJER9grp
         mPxS0eRsbgJxkUCzFUP4QyW8wqFCKrGbOOa7eF0O7VY4NF7DLHv/dO7R8CsOyQF4j97h
         TeBIksiUHeezfNnxmNNpkGQYQghNn7iTqUPg7QZ0NJg62WOvDLZD4WUOqA3/oxS2CYxe
         dndbl8Qchh7nycXrXQGEecDoparkcLrCGIJUDFXNg2Cv6SaIHvFN8GJHIqRGOgG+DUF9
         DZGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696008358; x=1696613158;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XiqsYkzaUXytpS8ltMLHCDCpitprsValB11Dy+9gc7k=;
        b=nI5tjKqVSha/OJkSRmTN9UFZ4uiKiSEz2+/rTgbXwH/0o6V69Prc4AQQnSjLmSY5/g
         e6BFLHvHGC38FDegVRzFs05pqBr/EbHR1SOhfuorm/53MWA9UXkqDuqtlcniXh28XLNb
         2hm3tl1nLUTooHuWMbz52Ka5RihXbwc8LBuFiQBvU5dTf0F7Jya0doYVkvym4JMlC0EC
         ytEowYfHMNNhsFoUSRUZf9E0DapL2/a9ME752QY5EZyNMAzI0H+/nCdwHw4GwzbiNEcU
         9bbMQIftXXh0Mv0RzCHZZlCvZdbx3P/NuziS+AawLStVChYIIpJb5ccwKWy+vpCU1Ue0
         FhBw==
X-Gm-Message-State: AOJu0Yx7axNM5cly4CzgNFKtW4NTksWnh/BRpFQUpxcSS0AkkPOY+Wo0
	HGKGe8a9J2axpyTqpko45QimPA==
X-Google-Smtp-Source: AGHT+IH6BEPcwZBvkbqnPBy7RB7BXkEIE5QaDtZ1O6P4wWzewrPV7PZ5/EMGPYry9IHrSXa5ea9+Ow==
X-Received: by 2002:a4a:3048:0:b0:57b:8524:52c with SMTP id z8-20020a4a3048000000b0057b8524052cmr5299042ooz.3.1696008357811;
        Fri, 29 Sep 2023 10:25:57 -0700 (PDT)
Received: from freyr.lechnology.com (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id f128-20020a4a5886000000b0057bb326cad4sm2272915oob.33.2023.09.29.10.25.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Sep 2023 10:25:57 -0700 (PDT)
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
Subject: [PATCH v3 12/27] staging: iio: resolver: ad2s1210: remove config attribute
Date: Fri, 29 Sep 2023 12:23:17 -0500
Message-ID: <20230929-ad2s1210-mainline-v3-12-fa4364281745@baylibre.com>
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

This removes the config register sysfs attribute.

Writing to the config register directly can be dangerous and userspace
should not need to have to know the register layout. This register
can still be accessed though debugfs if needed.

We can add new attributes to set specific flags in the config register
in the future if needed (e.g. `enable_hysterisis` and
`phase_lock_range`).

Signed-off-by: David Lechner <dlechner@baylibre.com>
---

v3 changes: None

 drivers/staging/iio/resolver/ad2s1210.c | 47 ---------------------------------
 1 file changed, 47 deletions(-)

diff --git a/drivers/staging/iio/resolver/ad2s1210.c b/drivers/staging/iio/resolver/ad2s1210.c
index 31415fbb6384..2b9377447f6a 100644
--- a/drivers/staging/iio/resolver/ad2s1210.c
+++ b/drivers/staging/iio/resolver/ad2s1210.c
@@ -273,50 +273,6 @@ static ssize_t ad2s1210_store_fexcit(struct device *dev,
 	return ret < 0 ? ret : len;
 }
 
-static ssize_t ad2s1210_show_control(struct device *dev,
-				     struct device_attribute *attr,
-				     char *buf)
-{
-	struct ad2s1210_state *st = iio_priv(dev_to_iio_dev(dev));
-	unsigned int value;
-	int ret;
-
-	mutex_lock(&st->lock);
-	ret = regmap_read(st->regmap, AD2S1210_REG_CONTROL, &value);
-	mutex_unlock(&st->lock);
-	return ret < 0 ? ret : sprintf(buf, "0x%x\n", value);
-}
-
-static ssize_t ad2s1210_store_control(struct device *dev,
-				      struct device_attribute *attr,
-				      const char *buf, size_t len)
-{
-	struct ad2s1210_state *st = iio_priv(dev_to_iio_dev(dev));
-	unsigned char udata;
-	unsigned char data;
-	int ret;
-
-	ret = kstrtou8(buf, 16, &udata);
-	if (ret)
-		return -EINVAL;
-
-	mutex_lock(&st->lock);
-	data = udata & ~AD2S1210_ADDRESS_DATA;
-	ret = regmap_write(st->regmap, AD2S1210_REG_CONTROL, data);
-	if (ret < 0)
-		goto error_ret;
-
-	st->resolution =
-		ad2s1210_resolution_value[data & AD2S1210_SET_RES];
-	ad2s1210_set_resolution_pin(st);
-	ret = len;
-	st->hysteresis = !!(data & AD2S1210_ENABLE_HYSTERESIS);
-
-error_ret:
-	mutex_unlock(&st->lock);
-	return ret;
-}
-
 static ssize_t ad2s1210_show_resolution(struct device *dev,
 					struct device_attribute *attr,
 					char *buf)
@@ -523,8 +479,6 @@ static int ad2s1210_read_raw(struct iio_dev *indio_dev,
 
 static IIO_DEVICE_ATTR(fexcit, 0644,
 		       ad2s1210_show_fexcit,	ad2s1210_store_fexcit, 0);
-static IIO_DEVICE_ATTR(control, 0644,
-		       ad2s1210_show_control, ad2s1210_store_control, 0);
 static IIO_DEVICE_ATTR(bits, 0644,
 		       ad2s1210_show_resolution, ad2s1210_store_resolution, 0);
 static IIO_DEVICE_ATTR(fault, 0644,
@@ -570,7 +524,6 @@ static const struct iio_chan_spec ad2s1210_channels[] = {
 
 static struct attribute *ad2s1210_attributes[] = {
 	&iio_dev_attr_fexcit.dev_attr.attr,
-	&iio_dev_attr_control.dev_attr.attr,
 	&iio_dev_attr_bits.dev_attr.attr,
 	&iio_dev_attr_fault.dev_attr.attr,
 	&iio_dev_attr_los_thrd.dev_attr.attr,

-- 
2.42.0


