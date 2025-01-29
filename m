Return-Path: <devicetree+bounces-141642-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 41936A21BCC
	for <lists+devicetree@lfdr.de>; Wed, 29 Jan 2025 12:06:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8D903162692
	for <lists+devicetree@lfdr.de>; Wed, 29 Jan 2025 11:06:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 954CB1DE4C7;
	Wed, 29 Jan 2025 11:05:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="hWNvhJ7W"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 861E51DE2B1
	for <devicetree@vger.kernel.org>; Wed, 29 Jan 2025 11:05:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738148719; cv=none; b=hWvAIXtdcTyPSguFZPtReuV6hMRAhQNgyIP8EGpTNa7p4X4yTEOyRM10xgqvh0bK1hgb5izAC/JmDGTRP4IkMXJIhXWtZug5znGOOZdFE6Fx/I/AFmfpKRHaCQrgydvyF7j9YRHEIgFfnD/qZOb5mneTO/mEStePbWYJjQommy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738148719; c=relaxed/simple;
	bh=waFUc7Y98lVcelQdxEeSHTjUKlAPBIkUFiT/B2RzsUU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rKyOFdEaV6cDnnJxDljdVEXOCueUkxZf5pC9K8NuPdrd+qS8vE0EjSfTgU4nQBMx8cb4JgUDni7fAHkXmUUqk0txcIXlqQxYvr5o9H2WzdZY9hN2//Ykz0fJgxulMVC1zLmeUKkj0quwToyfWvJfn/t3DNOIXNoDQLKDwD94sfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=hWNvhJ7W; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4368a293339so75988585e9.3
        for <devicetree@vger.kernel.org>; Wed, 29 Jan 2025 03:05:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738148715; x=1738753515; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=joYblRHTZ8apOwpe6Vq3h7ChVrXqa2XFvM8jV4cZmtQ=;
        b=hWNvhJ7Wwm0y4WZjdosXn3Jmv+rz6z4noxChVoP1HEk3gw8Js0NGg3RtbsmhJ4pK/R
         NHaYH5sZaBZ2PaW/LbDAyYxkq71i9OQaTScUgZHA1ZWNUKPZOWTfsie850urmd2ygVpb
         MCBn92cTES43QLAml3xWzDsEaPvzaKyr48m3ZDbtTeWfYyF3WZFyRQt0UF+uIDWnr7gd
         BwIxt3CLQSgRyX53Xgvtb76IoZins+wnsjeTABR19JFljJPXhkE8vgpQMz3RcnWIwyMX
         NLXMNAyNgIPMgxh0N9VT6hw1/IOtAW15jVDQBUamAGzStYaFigR3L3BbYoUgfrROOCi8
         AqnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738148715; x=1738753515;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=joYblRHTZ8apOwpe6Vq3h7ChVrXqa2XFvM8jV4cZmtQ=;
        b=lMRPV0rSHqdhSuyiyG0ZR473+xtKwdU/5IxTWLNRKKksz2SBu6VGP5MtCIvTqtqDY0
         gIJ1aYfQT2osXytT75jqn51wsgkfPwlTpmV5sPCI7o2EAcB3qy0joP1vwDknCWuQmVaL
         Dta59Scm3qIg9hpEocMtP3k/VAEB5ZApshxan6oWU4GtfuKJiaSr2Miw8DajpgSKWsu5
         04/MDXB2FzY7iBEqTZzUlyjKCwPMNVxJN1oB9hcH7IYz1ANPqcHIEnxLz/2/dAvISIVU
         wlTrh+gk3ecgRjujPDvJttAIcG+uERRjRoIpswhTHWJW4g3UPAMU2DRa1ylb0Abb0qvu
         FrRQ==
X-Forwarded-Encrypted: i=1; AJvYcCW1Gq8be9y010NC02wscCAtE/8bbspBur3cO3N1rmnEe+Xfggiz7w/YCBn20hSmJUyQtuA9ZTwbBbyJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0W3vGN86RCpITutbiWIcXoAb3Oz2U0r7M983Wk3BeS06y9RWz
	nkeKOrLCFe3dnxGt4WFuXlRRsC6z6Iy2WlF1JJv8UirhBv9kgF8SzzWiE+j3Y34=
X-Gm-Gg: ASbGncssM9nOGZB4NxeGiY3HSRHH16FWz6SywhS7gJ8pQ0RxvCSzyxvo92YyAP+U6Sz
	00gRT1mV3Py3ua5bVxzWcv5o50AJOJkh5tkHgBjPWwipKwX9/SUt4633FvlRqcVnKBvRhOggSE2
	fMSMtx4R8hNh0KVYKJOgK6TfNrLt55skH9DoK9cJ2rJTBfrrn6Cte8EuxwskBm/4XJWfTYy0kLy
	hygu9b6lnDs2zBGwbHP6StGlmnHAXuzQz2PQNZf4ruVqtrZdFuFD5IaYrUwUjuw3v/dKRMX3+9e
	nY1BeKI29RAnAgQUc/0OEnNxl19FkZilX8BXMTJUam21pOIMZGucsfYcOq0c6tSEWgbZNLU=
X-Google-Smtp-Source: AGHT+IHiMbOiYeOXFJU+/sYQ6d/SHusLAP//Q35lqgWeMJj2FLezKvdhAFo4grov+EgNrSzdFbLeRA==
X-Received: by 2002:a5d:47c9:0:b0:38b:da31:3e3c with SMTP id ffacd0b85a97d-38c5194c567mr1967009f8f.20.1738148714791;
        Wed, 29 Jan 2025 03:05:14 -0800 (PST)
Received: from [127.0.1.1] (host-95-245-235-245.retail.telecomitalia.it. [95.245.235.245])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38c2a17d7a7sm17107364f8f.32.2025.01.29.03.05.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jan 2025 03:05:14 -0800 (PST)
From: Angelo Dureghello <adureghello@baylibre.com>
X-Google-Original-From: Angelo Dureghello <adureghello@baylibre.org>
Date: Wed, 29 Jan 2025 12:03:08 +0100
Subject: [PATCH v3 07/10] iio: adc: adi-axi-adc: add support for AD7606
 register writing
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250129-wip-bl-ad7606_add_backend_sw_mode-v3-7-c3aec77c0ab7@baylibre.com>
References: <20250129-wip-bl-ad7606_add_backend_sw_mode-v3-0-c3aec77c0ab7@baylibre.com>
In-Reply-To: <20250129-wip-bl-ad7606_add_backend_sw_mode-v3-0-c3aec77c0ab7@baylibre.com>
To: Michael Hennerich <michael.hennerich@analog.com>, 
 Lars-Peter Clausen <lars@metafoo.de>, Jonathan Cameron <jic23@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Alexandru Ardelean <aardelean@baylibre.com>, 
 David Lechner <dlechner@baylibre.com>
Cc: Jonathan Cameron <Jonathan.Cameron@huawei.com>, 
 linux-fbdev@vger.kernel.org, linux-iio@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Guillaume Stols <gstols@baylibre.com>, 
 Angelo Dureghello <adureghello@baylibre.com>
X-Mailer: b4 0.14.1

From: Guillaume Stols <gstols@baylibre.com>

Since we must access the bus parallel bus using a custom procedure,
let's add a specialized compatible, and define specialized callbacks for
writing the registers using the parallel interface.

Signed-off-by: Guillaume Stols <gstols@baylibre.com>
Co-developed-by: Angelo Dureghello <adureghello@baylibre.com>
Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
---
 drivers/iio/adc/adi-axi-adc.c | 100 ++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 100 insertions(+)

diff --git a/drivers/iio/adc/adi-axi-adc.c b/drivers/iio/adc/adi-axi-adc.c
index 0923565cf5bb..aaeb445a8a3e 100644
--- a/drivers/iio/adc/adi-axi-adc.c
+++ b/drivers/iio/adc/adi-axi-adc.c
@@ -27,6 +27,7 @@
 #include <linux/iio/buffer.h>
 #include <linux/iio/iio.h>
 
+#include "ad7606_bus_iface.h"
 /*
  * Register definitions:
  *   https://wiki.analog.com/resources/fpga/docs/axi_adc_ip#register_map
@@ -73,6 +74,12 @@
 #define ADI_AXI_ADC_REG_DELAY(l)		(0x0800 + (l) * 0x4)
 #define   AXI_ADC_DELAY_CTRL_MASK		GENMASK(4, 0)
 
+#define ADI_AXI_REG_CONFIG_WR			0x0080
+#define ADI_AXI_REG_CONFIG_RD			0x0084
+#define ADI_AXI_REG_CONFIG_CTRL			0x008c
+#define   ADI_AXI_REG_CONFIG_CTRL_READ		0x03
+#define   ADI_AXI_REG_CONFIG_CTRL_WRITE		0x01
+
 #define ADI_AXI_ADC_MAX_IO_NUM_LANES		15
 
 #define ADI_AXI_REG_CHAN_CTRL_DEFAULTS		\
@@ -80,6 +87,10 @@
 	 ADI_AXI_REG_CHAN_CTRL_FMT_EN |		\
 	 ADI_AXI_REG_CHAN_CTRL_ENABLE)
 
+#define ADI_AXI_REG_READ_BIT			0x8000
+#define ADI_AXI_REG_ADDRESS_MASK		0xff00
+#define ADI_AXI_REG_VALUE_MASK			0x00ff
+
 struct axi_adc_info {
 	unsigned int version;
 	const struct iio_backend_info *backend_info;
@@ -313,6 +324,81 @@ static struct iio_buffer *axi_adc_request_buffer(struct iio_backend *back,
 	return iio_dmaengine_buffer_setup(st->dev, indio_dev, dma_name);
 }
 
+static int axi_adc_raw_write(struct iio_backend *back, void *buf, unsigned int len)
+{
+	struct adi_axi_adc_state *st = iio_backend_get_priv(back);
+	u32 data;
+
+	data = *(u32 *)(buf);
+
+	regmap_write(st->regmap, ADI_AXI_REG_CONFIG_WR, data);
+	regmap_write(st->regmap, ADI_AXI_REG_CONFIG_CTRL,
+		     ADI_AXI_REG_CONFIG_CTRL_WRITE);
+	usleep_range(50, 100);
+	regmap_write(st->regmap, ADI_AXI_REG_CONFIG_CTRL, 0x00);
+	usleep_range(50, 100);
+
+	return 0;
+}
+
+static int axi_adc_raw_read(struct iio_backend *back, void *buf, unsigned int len)
+{
+	struct adi_axi_adc_state *st = iio_backend_get_priv(back);
+	u32 *bdata = buf;
+
+	regmap_write(st->regmap, ADI_AXI_REG_CONFIG_CTRL,
+		     ADI_AXI_REG_CONFIG_CTRL_READ);
+	usleep_range(50, 100);
+	regmap_read(st->regmap, ADI_AXI_REG_CONFIG_RD, bdata);
+	regmap_write(st->regmap, ADI_AXI_REG_CONFIG_CTRL, 0x00);
+	usleep_range(50, 100);
+
+	return 0;
+}
+
+static int ad7606_bus_reg_read(struct iio_backend *back, u32 reg, u32 *val)
+{
+	struct adi_axi_adc_state *st = iio_backend_get_priv(back);
+	u32 buf;
+
+	guard(mutex)(&st->lock);
+
+	/*
+	 * The address is written on the highest weight byte, and the MSB set
+	 * at 1 indicates a read operation.
+	 */
+	buf = FIELD_PREP(ADI_AXI_REG_ADDRESS_MASK, reg) | ADI_AXI_REG_READ_BIT;
+	axi_adc_raw_write(back, &buf, sizeof(buf));
+	axi_adc_raw_read(back, val, 4);
+
+	/* Write 0x0 on the bus to get back to ADC mode */
+	buf = 0;
+	axi_adc_raw_write(back, &buf, sizeof(buf));
+	return 0;
+}
+
+static int ad7606_bus_reg_write(struct iio_backend *back, u32 reg, u32 val)
+{
+	struct adi_axi_adc_state *st = iio_backend_get_priv(back);
+	u32 buf;
+
+	guard(mutex)(&st->lock);
+
+	/* Write any register to switch to register mode */
+	buf = 0xaf00;
+	axi_adc_raw_write(back, &buf, sizeof(buf));
+
+	buf = FIELD_PREP(ADI_AXI_REG_ADDRESS_MASK, reg) |
+	      FIELD_PREP(ADI_AXI_REG_VALUE_MASK, val);
+	axi_adc_raw_write(back, &buf, sizeof(buf));
+
+	/* Write 0x0 on the bus to get back to ADC mode */
+	buf = 0;
+	axi_adc_raw_write(back, &buf, sizeof(buf));
+
+	return 0;
+}
+
 static void axi_adc_free_buffer(struct iio_backend *back,
 				struct iio_buffer *buffer)
 {
@@ -484,9 +570,23 @@ static const struct axi_adc_info adc_generic = {
 	.backend_info = &adi_axi_adc_generic,
 };
 
+static const struct ad7606_platform_data ad7606_pdata = {
+	.bus_reg_read = ad7606_bus_reg_read,
+	.bus_reg_write = ad7606_bus_reg_write,
+};
+
+static const struct axi_adc_info adc_ad7606 = {
+	.version = ADI_AXI_PCORE_VER(10, 0, 'a'),
+	.backend_info = &adi_axi_adc_generic,
+	.bus_controller = true,
+	.pdata = &ad7606_pdata,
+	.pdata_sz = sizeof(ad7606_pdata),
+};
+
 /* Match table for of_platform binding */
 static const struct of_device_id adi_axi_adc_of_match[] = {
 	{ .compatible = "adi,axi-adc-10.0.a", .data = &adc_generic },
+	{ .compatible = "adi,axi-ad7606x", .data = &adc_ad7606 },
 	{ /* end of list */ }
 };
 MODULE_DEVICE_TABLE(of, adi_axi_adc_of_match);

-- 
2.47.0


