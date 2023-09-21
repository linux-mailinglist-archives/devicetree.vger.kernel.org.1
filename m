Return-Path: <devicetree+bounces-2094-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B65F77A99E9
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 20:33:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 387E8B209F5
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 18:33:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BEF01772B;
	Thu, 21 Sep 2023 17:28:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB22A2032E
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 17:28:19 +0000 (UTC)
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 457A14562D
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 10:26:13 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-307d58b3efbso1184358f8f.0
        for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 10:26:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1695317171; x=1695921971; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T9WVKxDU/WCTxqQ52/M5ua8wasfSRRcZpI1eeblkSC8=;
        b=tyiP/g1R53dk1fptWz642M4uovR8vYl6bogDs1cnWSVOr3ESOL9K/fB2waF2pLcTsb
         nQqyeUhmnBbcqnDCqCHpX3lVAs2MN3zGk6W4+C7MQkIMGGRU4lQazQu3K3Nx1JTRxTq/
         gQbphneVNErtEod2ijFUoUGAx0jLEBYEfqVeZ1vsc+zb46dBekfMCvI++3tCaXdjrmfh
         ILpgRyj0w0chYM6DjKbkepGYwcQiXXCYcDrVWIVz8GReNhWJRUxtnb3Elg4bcvU0d6t4
         iq8X7HPkcDUbwLcwZ/nb27Zuu5Dm7pzVn9LKdrcdnxldQzpzoek6k6ec9o1XlKhSO79+
         JQzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695317171; x=1695921971;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=T9WVKxDU/WCTxqQ52/M5ua8wasfSRRcZpI1eeblkSC8=;
        b=GQc70ZWusLCEI/k4hxADlMINAFDJf4vQbyl7V15uxgs5sW1tytsqgoRYtd3aKvD4hm
         VVh9pGM3UsbbOOm15jQDnXLhYk2cDAe7LZNfAqvMwAuF2PsblfH/sSJUZhGLG+VGHtEA
         zFYmPISXMDWDgAmcWcoq0snBI65EPT+tErmG/bMlxh2oUzund0LU2m4nTOK7pxKXyfhL
         Xm2exee//qUC/Ech8FxlIvZLzI7T08L8CUwjbOK+7Eehkz/zE9u2onmjW/k5Lvh/kVdU
         Okb3DrG/2C8YswnHZHwh8WWRP2yVs+JIREjza6AHChfiVdcQQyuHhtupdkTSTFn2TxxI
         3nwg==
X-Gm-Message-State: AOJu0YwWIFcWLfoOh5FHf4aJLP8Lt+GAf/eZZiuuendlOTA7/TpvFNzt
	zAUfh3sqgCsfftOt9/xWY70C5ZGMhVifTR4gsjtdHDmN
X-Google-Smtp-Source: AGHT+IErIr8HYB39hw00Tn3dC53NPjDauGkjswbrG4/MJD7OhSd2tta9YfBeev9o1GBCz+kjzTcBFw==
X-Received: by 2002:a05:600c:1d1d:b0:405:336b:8307 with SMTP id l29-20020a05600c1d1d00b00405336b8307mr1536343wms.7.1695306162032;
        Thu, 21 Sep 2023 07:22:42 -0700 (PDT)
Received: from localhost.localdomain (abordeaux-655-1-129-86.w90-5.abo.wanadoo.fr. [90.5.10.86])
        by smtp.gmail.com with ESMTPSA id n11-20020a5d4c4b000000b0031fbbe347ebsm1901426wrt.22.2023.09.21.07.22.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Sep 2023 07:22:41 -0700 (PDT)
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
Subject: [v2 11/19] staging: iio: resolver: ad2s1210: remove config attribute
Date: Thu, 21 Sep 2023 09:19:39 -0500
Message-Id: <20230921141947.57784-14-dlechner@baylibre.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230921141947.57784-1-dlechner@baylibre.com>
References: <20230921141947.57784-1-dlechner@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This removes the config register sysfs attribute.

Writing to the config register directly can be dangerous and userspace
should not need to have to know the register layout. This register
can still be accessed though debugfs if needed.

We can add new attributes to set specific flags in the config register
in the future if needed (e.g. `enable_hysterisis` and
`phase_lock_range`).

Signed-off-by: David Lechner <dlechner@baylibre.com>
---
 drivers/staging/iio/resolver/ad2s1210.c | 47 -------------------------
 1 file changed, 47 deletions(-)

diff --git a/drivers/staging/iio/resolver/ad2s1210.c b/drivers/staging/iio/resolver/ad2s1210.c
index b99928394e3f..223cc4702188 100644
--- a/drivers/staging/iio/resolver/ad2s1210.c
+++ b/drivers/staging/iio/resolver/ad2s1210.c
@@ -269,50 +269,6 @@ static ssize_t ad2s1210_store_fexcit(struct device *dev,
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
@@ -519,8 +475,6 @@ static int ad2s1210_read_raw(struct iio_dev *indio_dev,
 
 static IIO_DEVICE_ATTR(fexcit, 0644,
 		       ad2s1210_show_fexcit,	ad2s1210_store_fexcit, 0);
-static IIO_DEVICE_ATTR(control, 0644,
-		       ad2s1210_show_control, ad2s1210_store_control, 0);
 static IIO_DEVICE_ATTR(bits, 0644,
 		       ad2s1210_show_resolution, ad2s1210_store_resolution, 0);
 static IIO_DEVICE_ATTR(fault, 0644,
@@ -566,7 +520,6 @@ static const struct iio_chan_spec ad2s1210_channels[] = {
 
 static struct attribute *ad2s1210_attributes[] = {
 	&iio_dev_attr_fexcit.dev_attr.attr,
-	&iio_dev_attr_control.dev_attr.attr,
 	&iio_dev_attr_bits.dev_attr.attr,
 	&iio_dev_attr_fault.dev_attr.attr,
 	&iio_dev_attr_los_thrd.dev_attr.attr,
-- 
2.34.1


