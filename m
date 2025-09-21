Return-Path: <devicetree+bounces-219704-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 76A13B8DC4D
	for <lists+devicetree@lfdr.de>; Sun, 21 Sep 2025 15:35:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DE5813A7292
	for <lists+devicetree@lfdr.de>; Sun, 21 Sep 2025 13:35:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C4122D9ECD;
	Sun, 21 Sep 2025 13:34:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Ta+rnP6g"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CFC22D97AB
	for <devicetree@vger.kernel.org>; Sun, 21 Sep 2025 13:34:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758461688; cv=none; b=ZKaC2dnmvX/xKJylD3tF5q2HkCcpvXiCjpr486SBD07B+8eKNgyKcsDHVSd5nMLqy09Cd4Qg+tZOQG0nyHD4WrcjyU3D9SFlS32XxLHmH4H0YMm2xzHfZJJbZUq0w1UqUjROw2yIkAAPEeXHni2Nz3z32HXlX5WMiHa7Ksb4wX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758461688; c=relaxed/simple;
	bh=Z1mX2m/OXiU91gA8TYEaETgdsyiPwXwaDItuxLIfEMQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=EO/IYd3370xHvojjCamrlSjPiFChQx4Jw0cWcf/e4TczDbHXQ+TKYsQpzur0KOc7nlFBM7GT+SmZBNsTpW7s8xOlhQ2/5K1jiNbyB/SASWgdQmFY7ddsa5gD5UvcSNpGd3GxovMA7W9AYA/iMQ6BiQoRJRZq1ZHx922qIYVKRU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Ta+rnP6g; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-3ee1221ceaaso1787685f8f.3
        for <devicetree@vger.kernel.org>; Sun, 21 Sep 2025 06:34:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758461684; x=1759066484; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CxQm9dlMBJd/LKK8WOOT2DmMqEvMLd7G+78EouGRlBk=;
        b=Ta+rnP6gyhNNHPWzXwXDr6nZ3y7zbden2pdrlKj2AKCsKzpJIi1h4LBSnBHmLnpn8d
         /q3njgupaVEFY7H69MeBcufqFFZt4mGI5ILeXUDZEcj+ZLN5dAri1SZiZh08/VxsEkQg
         QEWJ0pbuuFN+NzQeOa231KqU9vkQzzcYV+dUWOaPfBj8R2bx2DUDw/dyVJ+R8qW/3zID
         mYDctZZjHGbeweXK0GlT/T3G4AEmjV9pO70bTWJt3/ect8JWqYTIH/uFSQi0Otd6aN5n
         ysPeNyHItOUIsdCT4UnvpB9FSIBtmxMXdgG7KKMYvPYprxGpIjFsI1Cndj6BXwTSsJHI
         e53A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758461684; x=1759066484;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CxQm9dlMBJd/LKK8WOOT2DmMqEvMLd7G+78EouGRlBk=;
        b=G29jbBUYVE6NhQZXUfll4MmRTjDnoPCMMV9/bypRMpkQM3DFJNxL8LpPTEgb21bdUW
         1veR3fC6+1CCiqMgKfYMr4DH0QEOVicpuMoptL3FFhhrF+u8gcEZHoaqZJ3aHgKO0MA6
         9XdKkLw8ukqUrPZBqZv1pUBK+B1hW8MtE53w5qQ4ntqWg6aKk8MITfBugeP652u7p13f
         lz5qQD+HrAYCEq0YOvuwbiO5D58ehqvkqab76VbXWOKx3AyO7ThaZv5CE3+2+WcO7m53
         rmnsx9Z+RTIx6AY0pUwGnvFEJEfEdjI1wm4Ccs5s1djZr4GOrSF+P/lmvXv3xbzfg6PM
         tiYQ==
X-Forwarded-Encrypted: i=1; AJvYcCXHmqyH0hoNlZcxf/rS3bZAooLrCYHa6Pn3aoXMykF8xECVDJYu8US6ylkw0lWoWggI7o4uN595F3tG@vger.kernel.org
X-Gm-Message-State: AOJu0YydhOg9xwxiTsUKCCdPRp+1QYpmHYPC8lLgZK/mMLD8lKQIsn8K
	ZXtwcfRddwftp9N6hzxS3nIAs8uYj/0dJrTMBcd8fz5MxaC6SwsRgvRn
X-Gm-Gg: ASbGnctpOXdkx4xqqzK931vzNrhvkB1WlaHV2ijWTHWam8UMjyJies9XmFXUJM8aWMm
	QQDY+DJijamE2hhaYe/+tKOZ732amyafykpQBBl/w17eQvFJjq9abm2Jj3Byx6bQd0ncVYzSQfT
	+c5zSzKuyJ9ffdpdJWjtTbIQKgBytNSE5QLn27eeqZ50G7mm77xmQnNkZSniNakOXZE2E/1UCsB
	UB6usIduOep1wq4AlfOZvS6+Hi3AtmHvcv/fLxtsNhKjz9c1rUFO/cw2YApzdGrezPGq9ue1qfr
	D8sCv0tRILWZSCdRyxh/USqG9ghMdrO7kAktWSMxO9i8O8SCnPxgXJfKkemrJysNJt7bNss4jXB
	ahkWEG6QGAjPLRPZsbujm+qymfcwRvVJMcQOjAF4y
X-Google-Smtp-Source: AGHT+IG7qovjjdT6m8GQ5GU2Dc7YckEL6iJRQ6XfVKTVWuekUILlGHW/0/oOIkhq1WPVFmgP6n9cvQ==
X-Received: by 2002:a05:6000:4010:b0:3e7:458e:f69 with SMTP id ffacd0b85a97d-3ee867b3098mr8291631f8f.56.1758461684492;
        Sun, 21 Sep 2025 06:34:44 -0700 (PDT)
Received: from localhost.localdomain ([78.211.117.102])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3ee0fc00a92sm15910316f8f.63.2025.09.21.06.34.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Sep 2025 06:34:44 -0700 (PDT)
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
Subject: [PATCH 3/3] iio: mpl3115: add support for sampling frequency
Date: Sun, 21 Sep 2025 15:33:28 +0200
Message-Id: <20250921133327.123726-4-apokusinski01@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250921133327.123726-1-apokusinski01@gmail.com>
References: <20250921133327.123726-1-apokusinski01@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

When the device is in ACTIVE mode the temperature and pressure measurements
are collected with a frequency determined by the ST[3:0] bits of CTRL_REG2
register.

Signed-off-by: Antoni Pokusinski <apokusinski01@gmail.com>
---
 drivers/iio/pressure/mpl3115.c | 80 ++++++++++++++++++++++++++++++++++
 1 file changed, 80 insertions(+)

diff --git a/drivers/iio/pressure/mpl3115.c b/drivers/iio/pressure/mpl3115.c
index cf34de8f0d7e..2f1860ca1f32 100644
--- a/drivers/iio/pressure/mpl3115.c
+++ b/drivers/iio/pressure/mpl3115.c
@@ -28,6 +28,7 @@
 #define MPL3115_INT_SOURCE 0x12
 #define MPL3115_PT_DATA_CFG 0x13
 #define MPL3115_CTRL_REG1 0x26
+#define MPL3115_CTRL_REG2 0x27
 #define MPL3115_CTRL_REG3 0x28
 #define MPL3115_CTRL_REG4 0x29
 #define MPL3115_CTRL_REG5 0x2a
@@ -46,6 +47,8 @@
 #define MPL3115_CTRL_ACTIVE BIT(0) /* continuous measurement */
 #define MPL3115_CTRL_OS_258MS (BIT(5) | BIT(4)) /* 64x oversampling */
 
+#define MPL3115_CTRL_ST (BIT(3) | BIT(2) | BIT(1) | BIT(0))
+
 #define MPL3115_CTRL_IPOL1 BIT(5)
 #define MPL3115_CTRL_IPOL2 BIT(1)
 
@@ -53,6 +56,25 @@
 
 #define MPL3115_CTRL_INT_CFG_DRDY BIT(7)
 
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
@@ -163,10 +185,60 @@ static int mpl3115_read_raw(struct iio_dev *indio_dev,
 		default:
 			return -EINVAL;
 		}
+	case IIO_CHAN_INFO_SAMP_FREQ:
+		ret = i2c_smbus_read_byte_data(data->client, MPL3115_CTRL_REG2);
+		if (ret < 0)
+			return ret;
+
+		ret &= MPL3115_CTRL_ST;
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
+	ret = i2c_smbus_write_byte_data(data->client, MPL3115_CTRL_REG2, i);
+	iio_device_release_direct(indio_dev);
+	return ret;
+}
+
 static irqreturn_t mpl3115_trigger_handler(int irq, void *p)
 {
 	struct iio_poll_func *pf = p;
@@ -224,6 +296,9 @@ static const struct iio_chan_spec mpl3115_channels[] = {
 		.type = IIO_PRESSURE,
 		.info_mask_separate = BIT(IIO_CHAN_INFO_RAW),
 		.info_mask_shared_by_type = BIT(IIO_CHAN_INFO_SCALE),
+		.info_mask_shared_by_all = BIT(IIO_CHAN_INFO_SAMP_FREQ),
+		.info_mask_shared_by_all_available =
+			BIT(IIO_CHAN_INFO_SAMP_FREQ),
 		.scan_index = 0,
 		.scan_type = {
 			.sign = 'u',
@@ -237,6 +312,9 @@ static const struct iio_chan_spec mpl3115_channels[] = {
 		.type = IIO_TEMP,
 		.info_mask_separate = BIT(IIO_CHAN_INFO_RAW),
 		.info_mask_shared_by_type = BIT(IIO_CHAN_INFO_SCALE),
+		.info_mask_shared_by_all = BIT(IIO_CHAN_INFO_SAMP_FREQ),
+		.info_mask_shared_by_all_available =
+			BIT(IIO_CHAN_INFO_SAMP_FREQ),
 		.scan_index = 1,
 		.scan_type = {
 			.sign = 's',
@@ -307,6 +385,8 @@ static const struct iio_trigger_ops mpl3115_trigger_ops = {
 
 static const struct iio_info mpl3115_info = {
 	.read_raw = &mpl3115_read_raw,
+	.read_avail = &mpl3115_read_avail,
+	.write_raw = &mpl3115_write_raw,
 };
 
 static int mpl3115_trigger_probe(struct mpl3115_data *data,
-- 
2.25.1


