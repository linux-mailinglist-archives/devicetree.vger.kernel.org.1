Return-Path: <devicetree+bounces-123491-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C5CB19D4AAD
	for <lists+devicetree@lfdr.de>; Thu, 21 Nov 2024 11:20:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 55D211F2105C
	for <lists+devicetree@lfdr.de>; Thu, 21 Nov 2024 10:20:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 880521CCEC3;
	Thu, 21 Nov 2024 10:18:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="hpuMVC1E"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8821C1D270C
	for <devicetree@vger.kernel.org>; Thu, 21 Nov 2024 10:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732184317; cv=none; b=WdZU2TNyImTb9GS31OuRBIFaxRHvMzAa71zd+jbqpfnATWlDf9S3avXzcb1m57fioNhq4XRltT4L/y8lkpqjx/pyDFFJryulkimvwtIsLaN1qt4snl48NvnpYcnkZReKJcXSG4KaSuTF5qzQEih+QW0fC8/btyKr3B767YIoBfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732184317; c=relaxed/simple;
	bh=mWJbdcOWnTk8n2J8/cPHfEYESRSRxBYKsYYWv0QF/pU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Mo7gtO0Rqbit2t+j01+W/383QYinL5Iy/Ote1rO56/vJBZ7hYQibYf0D/BAC4jJI0diJN3mVXhp19icDe5tNK1jCd2B8uevbWyZDSCVSA05yxePo5H8W64KbDLXfXT2u+LVY+pWwIunaqaMcIl3uiem1ZQxbSl6xxDdEFOUMtgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=hpuMVC1E; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-3825c05cc90so256270f8f.1
        for <devicetree@vger.kernel.org>; Thu, 21 Nov 2024 02:18:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1732184312; x=1732789112; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6yvppB0Gb4awnhkXwOsnVnHx1N5K4iFDBORsNpfC5gc=;
        b=hpuMVC1EnBpQXzhLPNmk0iWUDAwsQKk3M5f5Sh4HspOhBmf+MdypO/VKy37bYYgu36
         HqGD3DNobIajVIojUW+XC8Ek5k2qyGY29ry8bmEz9mOfA3fRTBKEI5KQBvAJmu/eylWA
         9AvkCt4vvsJiEZ9mwQJXyfJe33z7g9v5H2UfIUlKoNeptlTNrQ/UoJu+OmYhdMiSJnhb
         3FEvtHFRu6z9H/6W/g7epeM+8wFpOOR1ZUSR3r8SXYaQ75W3savvj/CD+yxaeYBqs0yd
         keYd5B+yMTBq5ziXJXDNQa3VtfRDRy68vmumPrrSnuspLdBNpo0dI0MW/WbsR6XHpS5b
         RX3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732184312; x=1732789112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6yvppB0Gb4awnhkXwOsnVnHx1N5K4iFDBORsNpfC5gc=;
        b=BRmeF4fSVgNfXKiFlyA06eN85xAlztqmq0g5A0qxnPfy4oCeXsQqKwSXR99+cN14aE
         Lk5BB6zB3/1hM6qWBjnQQy+BgZmqeqfvFVVxZIdWWSNDjmyKBfMIp0g1gb/vNqZwgXxo
         IhAfuoOatRtfhcUVx/BJquBqaOEEJEAjjBiH5Gm7eq/W7IvbZ9xc18TeK6+IO4m6OoUB
         QmvTFbfwWjCtqByGhggklSu8rK0OI8Hh5/Jf5wOzkJtuDl6khnwrLW2SLecN1rfnzZz9
         oXYMiyXu8871K215Te5KlZu089RtOWPMr39hRBoF8WTOFQaA8hsAHNviXV2aWl7Qtdbw
         94gQ==
X-Forwarded-Encrypted: i=1; AJvYcCUHrkUlvNfsbmpEuX1JhAjYuH2AzJr1N+YAZV0rTREpt+8TpuinJ0CEamSGpTE326eSUAh6XbGqZO7Y@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4gYZJnEkEB1vO4YitNql30S1yFeC2uBF2FULZGQ0rpSawkcKF
	p67Q4XgwtZPInARBJ5Ld2pQwnpiK5l3mXB7mKauXTkjQiu5DW1shgWsBF+uJU+w=
X-Google-Smtp-Source: AGHT+IEbtJaMjzbWoTEULoBN2rcmiUHCqNBc1aBfOYl+g/90jVcFbWCQozFZpOC51CEECLcdqQ8Ctg==
X-Received: by 2002:a05:6000:1f85:b0:382:43ab:7d68 with SMTP id ffacd0b85a97d-38254ade764mr4596133f8f.12.1732184311542;
        Thu, 21 Nov 2024 02:18:31 -0800 (PST)
Received: from [127.0.1.1] (frhb82016ds.ikexpress.com. [185.246.87.17])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38254910796sm4598065f8f.47.2024.11.21.02.18.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Nov 2024 02:18:31 -0800 (PST)
From: Guillaume Stols <gstols@baylibre.com>
Date: Thu, 21 Nov 2024 10:18:29 +0000
Subject: [PATCH 7/9] iio: adc: ad7606: change r/w_register signature
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241121-ad7606_add_iio_backend_software_mode-v1-7-8a693a5e3fa9@baylibre.com>
References: <20241121-ad7606_add_iio_backend_software_mode-v1-0-8a693a5e3fa9@baylibre.com>
In-Reply-To: <20241121-ad7606_add_iio_backend_software_mode-v1-0-8a693a5e3fa9@baylibre.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1732184304; l=6300;
 i=gstols@baylibre.com; s=20240417; h=from:subject:message-id;
 bh=mWJbdcOWnTk8n2J8/cPHfEYESRSRxBYKsYYWv0QF/pU=;
 b=v0wbCrnNqagKEBoeuGktHDzPiFQXMbyEU4gIKTCneCAtkY3DYEU15wNrGmXjqXw5l3p/DYhfh
 aYc82Pj46lKC+KR7xMVXgQVy2EwKSrQJnD2/SWMrtEu+Z+kKKUxOCBi
X-Developer-Key: i=gstols@baylibre.com; a=ed25519;
 pk=XvMm5WHuV67sGYOJZqIYzXndbaJOlNd8Q6li6vnb4Cs=

The register read/write with IIO backend will require to claim the
direct mode, and doing so requires passing the corresponding iio_dev
structure.
So we need to modify the function signature to pass the iio_dev
structure.

Signed-off-by: Guillaume Stols <gstols@baylibre.com>
---
 drivers/iio/adc/ad7606.c     | 25 +++++++++++--------------
 drivers/iio/adc/ad7606.h     |  8 ++++----
 drivers/iio/adc/ad7606_spi.c | 10 +++++-----
 3 files changed, 20 insertions(+), 23 deletions(-)

diff --git a/drivers/iio/adc/ad7606.c b/drivers/iio/adc/ad7606.c
index df0e49bc4bdb..ef1c79587edb 100644
--- a/drivers/iio/adc/ad7606.c
+++ b/drivers/iio/adc/ad7606.c
@@ -574,13 +574,13 @@ static int ad7606_reg_access(struct iio_dev *indio_dev,
 	guard(mutex)(&st->lock);
 
 	if (readval) {
-		ret = st->bops->reg_read(st, reg);
+		ret = st->bops->reg_read(indio_dev, reg);
 		if (ret < 0)
 			return ret;
 		*readval = ret;
 		return 0;
 	} else {
-		return st->bops->reg_write(st, reg, writeval);
+		return st->bops->reg_write(indio_dev, reg, writeval);
 	}
 }
 
@@ -1148,26 +1148,26 @@ static const struct iio_trigger_ops ad7606_trigger_ops = {
 	.validate_device = iio_trigger_validate_own_device,
 };
 
-static int ad7606_write_mask(struct ad7606_state *st,
+static int ad7606_write_mask(struct iio_dev *indio_dev,
 			     unsigned int addr,
 			     unsigned long mask,
 			     unsigned int val)
 {
+	struct ad7606_state *st = iio_priv(indio_dev);
 	int readval;
 
-	readval = st->bops->reg_read(st, addr);
+	readval = st->bops->reg_read(indio_dev, addr);
 	if (readval < 0)
 		return readval;
 
 	readval &= ~mask;
 	readval |= val;
 
-	return st->bops->reg_write(st, addr, readval);
+	return st->bops->reg_write(indio_dev, addr, readval);
 }
 
 static int ad7616_write_scale_sw(struct iio_dev *indio_dev, int ch, int val)
 {
-	struct ad7606_state *st = iio_priv(indio_dev);
 	unsigned int ch_addr, mode, ch_index;
 
 	/*
@@ -1189,23 +1189,20 @@ static int ad7616_write_scale_sw(struct iio_dev *indio_dev, int ch, int val)
 	/* 0b01 for 2.5v, 0b10 for 5v and 0b11 for 10v */
 	mode = AD7616_RANGE_CH_MODE(ch_index, ((val + 1) & 0b11));
 
-	return ad7606_write_mask(st, ch_addr, AD7616_RANGE_CH_MSK(ch_index),
+	return ad7606_write_mask(indio_dev, ch_addr, AD7616_RANGE_CH_MSK(ch_index),
 				     mode);
 }
 
 static int ad7616_write_os_sw(struct iio_dev *indio_dev, int val)
 {
-	struct ad7606_state *st = iio_priv(indio_dev);
 
-	return ad7606_write_mask(st, AD7616_CONFIGURATION_REGISTER,
+	return ad7606_write_mask(indio_dev, AD7616_CONFIGURATION_REGISTER,
 				     AD7616_OS_MASK, val << 2);
 }
 
 static int ad7606_write_scale_sw(struct iio_dev *indio_dev, int ch, int val)
 {
-	struct ad7606_state *st = iio_priv(indio_dev);
-
-	return ad7606_write_mask(st,
+	return ad7606_write_mask(indio_dev,
 				     AD7606_RANGE_CH_ADDR(ch),
 				     AD7606_RANGE_CH_MSK(ch),
 				     AD7606_RANGE_CH_MODE(ch, val));
@@ -1215,7 +1212,7 @@ static int ad7606_write_os_sw(struct iio_dev *indio_dev, int val)
 {
 	struct ad7606_state *st = iio_priv(indio_dev);
 
-	return st->bops->reg_write(st, AD7606_OS_MODE, val);
+	return st->bops->reg_write(indio_dev, AD7606_OS_MODE, val);
 }
 
 static int ad7616_sw_mode_setup(struct iio_dev *indio_dev)
@@ -1236,7 +1233,7 @@ static int ad7616_sw_mode_setup(struct iio_dev *indio_dev)
 		return ret;
 
 	/* Activate Burst mode and SEQEN MODE */
-	return ad7606_write_mask(st,
+	return ad7606_write_mask(indio_dev,
 			      AD7616_CONFIGURATION_REGISTER,
 			      AD7616_BURST_MODE | AD7616_SEQEN_MODE,
 			      AD7616_BURST_MODE | AD7616_SEQEN_MODE);
diff --git a/drivers/iio/adc/ad7606.h b/drivers/iio/adc/ad7606.h
index 7a044b499cfe..eca7ea99e24d 100644
--- a/drivers/iio/adc/ad7606.h
+++ b/drivers/iio/adc/ad7606.h
@@ -235,10 +235,10 @@ struct ad7606_bus_ops {
 	int (*iio_backend_config)(struct device *dev, struct iio_dev *indio_dev);
 	int (*read_block)(struct device *dev, int num, void *data);
 	int (*sw_mode_config)(struct iio_dev *indio_dev);
-	int (*reg_read)(struct ad7606_state *st, unsigned int addr);
-	int (*reg_write)(struct ad7606_state *st,
-				unsigned int addr,
-				unsigned int val);
+	int (*reg_read)(struct iio_dev *indio_dev, unsigned int addr);
+	int (*reg_write)(struct iio_dev *indio_dev,
+			 unsigned int addr,
+			 unsigned int val);
 	int (*update_scan_mode)(struct iio_dev *indio_dev, const unsigned long *scan_mask);
 	u16 (*rd_wr_cmd)(int addr, char isWriteOp);
 };
diff --git a/drivers/iio/adc/ad7606_spi.c b/drivers/iio/adc/ad7606_spi.c
index 640e36092662..376b8a72e8d4 100644
--- a/drivers/iio/adc/ad7606_spi.c
+++ b/drivers/iio/adc/ad7606_spi.c
@@ -128,8 +128,9 @@ static int ad7606_spi_read_block18to32(struct device *dev,
 	return spi_sync_transfer(spi, &xfer, 1);
 }
 
-static int ad7606_spi_reg_read(struct ad7606_state *st, unsigned int addr)
+static int ad7606_spi_reg_read(struct iio_dev *indio_dev, unsigned int addr)
 {
+	struct ad7606_state *st = iio_priv(indio_dev);
 	struct spi_device *spi = to_spi_device(st->dev);
 	struct spi_transfer t[] = {
 		{
@@ -152,10 +153,11 @@ static int ad7606_spi_reg_read(struct ad7606_state *st, unsigned int addr)
 	return be16_to_cpu(st->d16[1]);
 }
 
-static int ad7606_spi_reg_write(struct ad7606_state *st,
+static int ad7606_spi_reg_write(struct iio_dev *indio_dev,
 				unsigned int addr,
 				unsigned int val)
 {
+	struct ad7606_state *st = iio_priv(indio_dev);
 	struct spi_device *spi = to_spi_device(st->dev);
 
 	st->d16[0] = cpu_to_be16((st->bops->rd_wr_cmd(addr, 1) << 8) |
@@ -166,8 +168,6 @@ static int ad7606_spi_reg_write(struct ad7606_state *st,
 
 static int ad7616_sw_mode_config(struct iio_dev *indio_dev)
 {
-	struct ad7606_state *st = iio_priv(indio_dev);
-
 	/*
 	 * Scale can be configured individually for each channel
 	 * in software mode.
@@ -182,7 +182,7 @@ static int ad7606B_sw_mode_config(struct iio_dev *indio_dev)
 	struct ad7606_state *st = iio_priv(indio_dev);
 
 	/* Configure device spi to output on a single channel */
-	st->bops->reg_write(st,
+	st->bops->reg_write(indio_dev,
 			    AD7606_CONFIGURATION_REGISTER,
 			    AD7606_SINGLE_DOUT);
 

-- 
2.34.1


