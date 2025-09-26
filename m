Return-Path: <devicetree+bounces-222046-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 15050BA548F
	for <lists+devicetree@lfdr.de>; Sat, 27 Sep 2025 00:03:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 30D001C02836
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 22:03:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3EBC030DEB6;
	Fri, 26 Sep 2025 22:02:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ficbu0oC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D99630DD31
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 22:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758924156; cv=none; b=u1/CN379ZaSOVNToQjy4AU7EExuubKtYVypZ8ZyfW7XoWbPcsi0pccXfdKIp7OAZ9Q/Z0BF+lfuTjDVDpTAq33DMqVVBVlzfRSUGnDiIsPx2mavsSgMvkpUEHRlcOzyjulCqayvbB9Fn5UNqiNFFTCuNCKLGFW85M3/WxwQdA50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758924156; c=relaxed/simple;
	bh=XOWax2v2KYX1458l61V4MRz49SxrJWypS2Bb8v3VlCw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=BILPPP7ECHA4Z7dZDeq9js1qiQc7WrbIO80f4deUnLUmyOMCbwr1A095GZss4E4RFaYzLiKIyqa2IOz0f2f50NX4d/CXFtdM77f+mi5jSJqSHqMqKu0JpXfCRZM5GV+5pb8HP39RXtfRzWMHaLnYAJOs9CrwWhA+3uISD5wRPAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ficbu0oC; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-46e37d10f3eso16891805e9.0
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 15:02:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758924153; x=1759528953; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=keOSSq7qxCBLRN0euL2Ky8S0cfHWSYbEeRT4dYHPsaY=;
        b=ficbu0oCeiXmTNKpeBXVxufQHdrwyF9y9PXabjSe7RPq1XGHSg2HgNYTIuL/GzKgF9
         Yy+V1Rf8GaDpWYUmz4WYpv+WDWtp/1boAkY059NCup0YpeCYTQ4rjwWVIBTjFIZeW4b/
         UoC3+cuj85MFhK5H67Y8Zvelo6c2wimADdsUePA6d3CdtaELxO+4HYZ+J4QbiVLOwVv2
         1KEKXTE7OgHnOcD4jUeb3Ctb2XYl8yv2MKsex4mbRXiD5OYzddxi/GUDM9okLuxgzSvL
         F0liJHi41xhvW+2wC+X48BrIeLukgfLTCG6siw44IMB/LbzdWRAJn4OpC53pdglMnhjj
         ONAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758924153; x=1759528953;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=keOSSq7qxCBLRN0euL2Ky8S0cfHWSYbEeRT4dYHPsaY=;
        b=nV9EmDpe6oollsbJVw4TDQtJ9MiQyPtmiwWIEGj3EpRNvReW1h9LBj1BcAQFfJcwqN
         Uq37OWTW69npsAF0nwmYnDjuBOZou8cBoNnclprRobELOCMLjmUI0sXtp2pcLvnAPo5r
         XimItXfozP7epJNkiLXqRPT5nDXk0oAnbQmiCa9MwwoAyoySCfYDUeniFLztfkOaT0i6
         JD++B0l5xlFMutOfEq/1xzojPYQkWTVQk9l2Rnd7dmxrPYICyth7v3FdPkAJuVT3K0hL
         WiUugbxXOzfuE8SLpTV3JIJ5JXKYCoxn3wLzP/skT4MzDXaRsgHqCTihL69XhRQGMuJl
         z+gA==
X-Forwarded-Encrypted: i=1; AJvYcCWsjE4oRuNzzDm3KMlO9M/CYOVKob9ckxeBcE6nyYammQEMi3wM7Wp4annWxlh6WcM0BLk0yd1uLor6@vger.kernel.org
X-Gm-Message-State: AOJu0YyJjl7XKW9gbu87ez/mWwA1hHYztjfhLvaUYXmTzJrPd0/kCj91
	YyBzfC220U+UFpN+5pH7vNpefM7J/d1Koh8QXodDwXxKbeLn1yuCJ/bc
X-Gm-Gg: ASbGncvPnFaGLIBuKatB2J78ytW12UFSaMR04WlKqqcf2Qo30r1lC+Ask6KYEbYpjMT
	nw/RgcG467IvkXVQ+3g9doSJEG9Og7LnsuRfcn57UqMvApBo1m8SLzRRLZy92lz4L9g45vOu2zN
	cCcoDhM6/pdcfANVvKNBz05ElrU/g5CLjI6dBlBcbGBEaOFa6jk56Tdl60LVRPPuBV8rdNlpK5U
	ALS7P7WNVyI4oru4TvJbCxxjsKwTqOzD895MfoFtuqe3oXuNFtEtad6Cfh/SaUgGhzyAGGYOJEm
	srd0ogM1pJMlj2qMYsBGdSohDGBIO8QHpW24udL1Oi8mcOLYWjdtimah+cB7agF17zM719jT+sb
	tEXHbYCm1PSAIH/6TUrlXFZM0u/OX8dX74WdvpBuaDNZ3zvPDNMGkhf+YuxXlSg==
X-Google-Smtp-Source: AGHT+IFmlxLVnZBT1LwhYEs7yN9fTfegYhgr8vdvZKMVbXQQXf+IleK74UBzGjvgjkwQypDXTAq/UA==
X-Received: by 2002:a05:600c:37ce:b0:46e:38f7:625f with SMTP id 5b1f17b1804b1-46e38f762f6mr57509815e9.10.1758924152513;
        Fri, 26 Sep 2025 15:02:32 -0700 (PDT)
Received: from localhost.localdomain ([37.163.230.203])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-40fc82f2965sm8410236f8f.55.2025.09.26.15.02.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Sep 2025 15:02:31 -0700 (PDT)
From: Antoni Pokusinski <apokusinski01@gmail.com>
To: jic23@kernel.org,
	dlechner@baylibre.com,
	nuno.sa@analog.com,
	andy@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-iio@vger.kernel.org,
	linux@roeck-us.net,
	rodrigo.gobbi.7@gmail.com,
	naresh.solanki@9elements.com,
	michal.simek@amd.com,
	grantpeltier93@gmail.com,
	farouk.bouabid@cherry.de,
	marcelo.schmitt1@gmail.com,
	Antoni Pokusinski <apokusinski01@gmail.com>
Subject: [PATCH v3 4/4] iio: mpl3115: add support for sampling frequency
Date: Sat, 27 Sep 2025 00:01:50 +0200
Message-Id: <20250926220150.22560-5-apokusinski01@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250926220150.22560-1-apokusinski01@gmail.com>
References: <20250926220150.22560-1-apokusinski01@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

When the device is in ACTIVE mode the temperature and pressure measurements
are collected with a frequency determined by the ST[3:0] bits of CTRL_REG2
register.

Reviewed-by: Nuno Sá <nuno.sa@analog.com>
Signed-off-by: Antoni Pokusinski <apokusinski01@gmail.com>
---
 drivers/iio/pressure/mpl3115.c | 82 ++++++++++++++++++++++++++++++++++
 1 file changed, 82 insertions(+)

diff --git a/drivers/iio/pressure/mpl3115.c b/drivers/iio/pressure/mpl3115.c
index 13c8b338a15e..04c126ff4d46 100644
--- a/drivers/iio/pressure/mpl3115.c
+++ b/drivers/iio/pressure/mpl3115.c
@@ -10,6 +10,7 @@
  * user offset correction, raw mode
  */
 
+#include <linux/bitfield.h>
 #include <linux/cleanup.h>
 #include <linux/delay.h>
 #include <linux/i2c.h>
@@ -30,6 +31,7 @@
 #define MPL3115_INT_SOURCE 0x12
 #define MPL3115_PT_DATA_CFG 0x13
 #define MPL3115_CTRL_REG1 0x26
+#define MPL3115_CTRL_REG2 0x27
 #define MPL3115_CTRL_REG3 0x28
 #define MPL3115_CTRL_REG4 0x29
 #define MPL3115_CTRL_REG5 0x2a
@@ -48,6 +50,8 @@
 #define MPL3115_CTRL1_ACTIVE BIT(0) /* continuous measurement */
 #define MPL3115_CTRL1_OS_258MS GENMASK(5, 4) /* 64x oversampling */
 
+#define MPL3115_CTRL2_ST GENMASK(3, 0)
+
 #define MPL3115_CTRL3_IPOL1 BIT(5)
 #define MPL3115_CTRL3_IPOL2 BIT(1)
 
@@ -57,6 +61,25 @@
 
 #define MPL3115_INT2 BIT(2) /* flag that indicates INT2 in use */
 
+static const unsigned int mpl3115_samp_freq_table[][2] = {
+	{ 1,      0},
+	{ 0, 500000},
+	{ 0, 250000},
+	{ 0, 125000},
+	{ 0,  62500},
+	{ 0,  31250},
+	{ 0,  15625},
+	{ 0,   7812},
+	{ 0,   3906},
+	{ 0,   1953},
+	{ 0,    976},
+	{ 0,    488},
+	{ 0,    244},
+	{ 0,    122},
+	{ 0,     61},
+	{ 0,     30},
+};
+
 struct mpl3115_data {
 	struct i2c_client *client;
 	struct iio_trigger *drdy_trig;
@@ -174,10 +197,61 @@ static int mpl3115_read_raw(struct iio_dev *indio_dev,
 		default:
 			return -EINVAL;
 		}
+	case IIO_CHAN_INFO_SAMP_FREQ:
+		ret = i2c_smbus_read_byte_data(data->client, MPL3115_CTRL_REG2);
+		if (ret < 0)
+			return ret;
+
+		ret = FIELD_GET(MPL3115_CTRL2_ST, ret);
+
+		*val = mpl3115_samp_freq_table[ret][0];
+		*val2 = mpl3115_samp_freq_table[ret][1];
+		return IIO_VAL_INT_PLUS_MICRO;
 	}
 	return -EINVAL;
 }
 
+static int mpl3115_read_avail(struct iio_dev *indio_dev,
+			      struct iio_chan_spec const *chan,
+			      const int **vals, int *type, int *length,
+			      long mask)
+{
+	if (mask != IIO_CHAN_INFO_SAMP_FREQ)
+		return -EINVAL;
+
+	*type = IIO_VAL_INT_PLUS_MICRO;
+	*length = ARRAY_SIZE(mpl3115_samp_freq_table) * 2;
+	*vals = (int *)mpl3115_samp_freq_table;
+	return IIO_AVAIL_LIST;
+}
+
+static int mpl3115_write_raw(struct iio_dev *indio_dev,
+			     const struct iio_chan_spec *chan,
+			     int val, int val2, long mask)
+{
+	struct mpl3115_data *data = iio_priv(indio_dev);
+	int i, ret;
+
+	if (mask != IIO_CHAN_INFO_SAMP_FREQ)
+		return -EINVAL;
+
+	for (i = 0; i < ARRAY_SIZE(mpl3115_samp_freq_table); i++)
+		if (val == mpl3115_samp_freq_table[i][0] &&
+		    val2 == mpl3115_samp_freq_table[i][1])
+			break;
+
+	if (i == ARRAY_SIZE(mpl3115_samp_freq_table))
+		return -EINVAL;
+
+	if (!iio_device_claim_direct(indio_dev))
+		return -EBUSY;
+
+	ret = i2c_smbus_write_byte_data(data->client, MPL3115_CTRL_REG2,
+					FIELD_PREP(MPL3115_CTRL2_ST, i));
+	iio_device_release_direct(indio_dev);
+	return ret;
+}
+
 static irqreturn_t mpl3115_trigger_handler(int irq, void *p)
 {
 	struct iio_poll_func *pf = p;
@@ -229,6 +303,9 @@ static const struct iio_chan_spec mpl3115_channels[] = {
 		.type = IIO_PRESSURE,
 		.info_mask_separate = BIT(IIO_CHAN_INFO_RAW),
 		.info_mask_shared_by_type = BIT(IIO_CHAN_INFO_SCALE),
+		.info_mask_shared_by_all = BIT(IIO_CHAN_INFO_SAMP_FREQ),
+		.info_mask_shared_by_all_available =
+			BIT(IIO_CHAN_INFO_SAMP_FREQ),
 		.scan_index = 0,
 		.scan_type = {
 			.sign = 'u',
@@ -242,6 +319,9 @@ static const struct iio_chan_spec mpl3115_channels[] = {
 		.type = IIO_TEMP,
 		.info_mask_separate = BIT(IIO_CHAN_INFO_RAW),
 		.info_mask_shared_by_type = BIT(IIO_CHAN_INFO_SCALE),
+		.info_mask_shared_by_all = BIT(IIO_CHAN_INFO_SAMP_FREQ),
+		.info_mask_shared_by_all_available =
+			BIT(IIO_CHAN_INFO_SAMP_FREQ),
 		.scan_index = 1,
 		.scan_type = {
 			.sign = 's',
@@ -312,6 +392,8 @@ static const struct iio_trigger_ops mpl3115_trigger_ops = {
 
 static const struct iio_info mpl3115_info = {
 	.read_raw = &mpl3115_read_raw,
+	.read_avail = &mpl3115_read_avail,
+	.write_raw = &mpl3115_write_raw,
 };
 
 static int mpl3115_trigger_probe(struct mpl3115_data *data,
-- 
2.25.1


