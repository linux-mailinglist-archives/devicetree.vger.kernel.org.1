Return-Path: <devicetree+bounces-123490-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 073339D4AA7
	for <lists+devicetree@lfdr.de>; Thu, 21 Nov 2024 11:19:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0D390B223F7
	for <lists+devicetree@lfdr.de>; Thu, 21 Nov 2024 10:19:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED8841D358B;
	Thu, 21 Nov 2024 10:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="TU+cWkdh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7935C1D12F9
	for <devicetree@vger.kernel.org>; Thu, 21 Nov 2024 10:18:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732184314; cv=none; b=r3tG+13TXWbrEQfM1MNmJSIqZFWfw9jxo8y07PVbQbaVuCUjBcvP9eo6OdFTRIuupV0v+11mhItyQjW0F5qHdGnpCYirkFKt7dNS6dG5xgWIm1YWCC76PahBJ/IPPbl/9zTHiCFZy13cgzqV9QEmR7fbrCyiyy7rm04OWl2ezNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732184314; c=relaxed/simple;
	bh=wZoWe2uh7o0wDxPA6+E9EMFl/wLAdO0Fg4I6Jk0xuyk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Gk0Al13cM+HdBbXJyFB6SAskwuoeRsuxm1ajL34sVjJFv/iL+qCJZRCyW7MPhqiURPBnlsT9mJmoFdTprl8pJLOqCg5mdfyncHZAvyx9GW+kJvyrYPSDtbJvNEolxFjeVE6Q/3HA8pxSbyF2Zl2SQZb439JxHtcFXi8rdFiDQeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=TU+cWkdh; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-3825a721ae5so309940f8f.1
        for <devicetree@vger.kernel.org>; Thu, 21 Nov 2024 02:18:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1732184311; x=1732789111; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Fg+uPrEXF11/PRnUyC5yKUWGEQV9hpuZekI2ZQLsxVA=;
        b=TU+cWkdhPfFRUd5anBCBvT5USUYh4pFgODMiC82q+ir1TbYtoyqajjFNXrwGeONq0E
         ebmlwqWIDrBNKYXD/nInapxtAk6fV3LvZb6/2oo4r+sp+gnooGsnkYDodoWR+BJiLz1L
         icTDB1VndQm89cK+XZc9MrGN5kjlpA+QOwCWjMZvwq8zZMEuSwSSQYjsmLp5eo8knII/
         xAoWHcvEOtLbw7jEsR2rrt0TOZeFbR/HxDWpaBpd261LxNgB3zav/0/z2nVCe4WsesRJ
         3FxCvBOQqzkA1xfEYR1Tj3l5T7bACWvrMkOdyeuiNG3vhqqhJKdvgNme4YGcB4z4RDvi
         WsEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732184311; x=1732789111;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Fg+uPrEXF11/PRnUyC5yKUWGEQV9hpuZekI2ZQLsxVA=;
        b=UWXW/R1lTlnbXw4W2aHyCKYUla6tplnsSzMSepV67UULbcG3Vw1fIS+61g6U3IWHwd
         CllF2SmqZiXzBvRymnMbBtJbAbpD3INsWVaF2r8/STCJD9MPEJjMPPflvn6RNEeuBk7N
         uo2QoyQjGGYu8zlAgfUWosr6vVuO+KpvqxQC9wZWgC2maGmMR2tahwfZEXFAVfMx5PXK
         YRv18ECRecwlAqQ3qtIE0RLdmL2obpCGD/EGpAG0833gCcbgZOb8XyhIPEMQrhs4ZI6R
         7gM/uuHMvZyfV0FKHVIBS9q5AjMBIDMA9fw+5SFwaAaT7LAFR+2gyLA6TyCFHfx3J/cO
         gXXg==
X-Forwarded-Encrypted: i=1; AJvYcCVIN6onq5PrVjy2BqhSEoqsdJFwP4kl9Lb5ZDu0BxraGupot43gnSltZI4rF3oT98g+jcfYNPCh02IN@vger.kernel.org
X-Gm-Message-State: AOJu0YwCuehdseo/vYEeGAea5D9nOPrSYo9DXDk0iP8xeS2xBVA8GgON
	Ono5TLEdqAMGjtgZwJs3LEyL9ZzIp7ZFfjKQTBVW0ob+CGG+dF4JxpQ7p8JDq7Y=
X-Google-Smtp-Source: AGHT+IHlDNuJJTOOvoxL7zbj9Zrz4uncleEVmbSRywR9I8Nxpfo6Tdsysq27z9w2ER26L8rzgLmJVw==
X-Received: by 2002:a05:6000:1886:b0:382:4b69:9ca4 with SMTP id ffacd0b85a97d-38259d25ec7mr1919620f8f.26.1732184310663;
        Thu, 21 Nov 2024 02:18:30 -0800 (PST)
Received: from [127.0.1.1] (frhb82016ds.ikexpress.com. [185.246.87.17])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38254910796sm4598065f8f.47.2024.11.21.02.18.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Nov 2024 02:18:30 -0800 (PST)
From: Guillaume Stols <gstols@baylibre.com>
Date: Thu, 21 Nov 2024 10:18:28 +0000
Subject: [PATCH 6/9] iio: adc: adi-axi-adc: Add support for AD7606 register
 writing
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241121-ad7606_add_iio_backend_software_mode-v1-6-8a693a5e3fa9@baylibre.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1732184304; l=5448;
 i=gstols@baylibre.com; s=20240417; h=from:subject:message-id;
 bh=wZoWe2uh7o0wDxPA6+E9EMFl/wLAdO0Fg4I6Jk0xuyk=;
 b=pKU291JFm5SCHkK3zmu0MvLY5KrgkniaEw1tcrkUYwWPsSW/o4djZJGL6ttU2q9QTDBxCED8V
 ya4O52LVVuYBnoRh3/AynuhdbC4lXiXOYRsIruLbllugCWCA2jIhP9Z
X-Developer-Key: i=gstols@baylibre.com; a=ed25519;
 pk=XvMm5WHuV67sGYOJZqIYzXndbaJOlNd8Q6li6vnb4Cs=

Since we must access the bus parallel bus using a custom procedure,
let's add a specialized compatible, and define specialized callbacks for
writing the registers using the parallel interface.

Signed-off-by: Guillaume Stols <gstols@baylibre.com>
---
 drivers/iio/adc/ad7606_bi.h   | 16 +++++++
 drivers/iio/adc/adi-axi-adc.c | 99 +++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 115 insertions(+)

diff --git a/drivers/iio/adc/ad7606_bi.h b/drivers/iio/adc/ad7606_bi.h
new file mode 100644
index 000000000000..9ade23ec61dd
--- /dev/null
+++ b/drivers/iio/adc/ad7606_bi.h
@@ -0,0 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/*
+ * Copyright (c) 2010-2024 Analog Devices Inc.
+ * Copyright (c) 2024 Baylibre, SAS
+ */
+#ifndef __LINUX_PLATFORM_DATA_AD7606_H__
+#define __LINUX_PLATFORM_DATA_AD7606_H__
+
+#include <linux/iio/backend.h>
+
+struct ad7606_platform_data {
+	int (*bus_reg_read)(struct iio_backend *back, u32 reg, u32 *val);
+	int (*bus_reg_write)(struct iio_backend *back, u32 reg, u32 val);
+};
+
+#endif /* __LINUX_PLATFORM_DATA_AD7606_H__ */
diff --git a/drivers/iio/adc/adi-axi-adc.c b/drivers/iio/adc/adi-axi-adc.c
index 704ebd6ea83e..d3cc7c25f163 100644
--- a/drivers/iio/adc/adi-axi-adc.c
+++ b/drivers/iio/adc/adi-axi-adc.c
@@ -27,6 +27,7 @@
 #include <linux/iio/buffer.h>
 #include <linux/iio/iio.h>
 
+#include "ad7606_bi.h"
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
@@ -80,6 +87,11 @@
 	 ADI_AXI_REG_CHAN_CTRL_FMT_EN |		\
 	 ADI_AXI_REG_CHAN_CTRL_ENABLE)
 
+/* AD7606's specific */
+#define AD7606_REG_READ_BIT			0x8000
+#define AD7606_REG_ADDRESS_MASK			0xff00
+#define AD7606_REG_VALUE_MASK			0x00ff
+
 struct axi_adc_info {
 	unsigned int version;
 	const struct iio_backend_info *backend_info;
@@ -313,6 +325,80 @@ static struct iio_buffer *axi_adc_request_buffer(struct iio_backend *back,
 	return iio_dmaengine_buffer_setup(st->dev, indio_dev, dma_name);
 }
 
+static int axi_adc_raw_write(struct iio_backend *back, void *buf, unsigned int len)
+{
+	struct adi_axi_adc_state *st = iio_backend_get_priv(back);
+	u32 data;
+	u32 *bdata = buf;
+
+	data = *bdata;
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
+static int ad7606_bi_reg_read(struct iio_backend *back, u32 reg, u32 *val)
+{
+	struct adi_axi_adc_state *st = iio_backend_get_priv(back);
+	u32 buf;
+
+	guard(mutex)(&st->lock);
+
+	/*
+	 * The address is written on the highest weight byte, and the MSB set at 1
+	 * indicates a read operation.
+	 */
+	buf = FIELD_PREP(AD7606_REG_ADDRESS_MASK, reg) | AD7606_REG_READ_BIT;
+	axi_adc_raw_write(back, &buf, 4);
+	axi_adc_raw_read(back, val, 4);
+
+	/* Write 0x0 on the bus to get back to ADC mode */
+	buf = 0;
+	axi_adc_raw_write(back, &buf, 4);
+	return 0;
+}
+
+static int ad7606_bi_reg_write(struct iio_backend *back, u32 reg, u32 val)
+{
+	struct adi_axi_adc_state *st = iio_backend_get_priv(back);
+	u32 buf;
+
+	guard(mutex)(&st->lock);
+
+	/* Read any register to switch to register mode */
+	buf = 0xaf00;
+	axi_adc_raw_write(back, &buf, 4);
+
+	buf = FIELD_PREP(AD7606_REG_ADDRESS_MASK, reg) | FIELD_PREP(AD7606_REG_VALUE_MASK, val);
+	axi_adc_raw_write(back, &buf, 4);
+
+	/* Write 0x0 on the bus to get back to ADC mode */
+	buf = 0;
+	axi_adc_raw_write(back, &buf, 4);
+
+	return 0;
+}
+
 static void axi_adc_free_buffer(struct iio_backend *back,
 				struct iio_buffer *buffer)
 {
@@ -487,9 +573,22 @@ static const struct axi_adc_info adc_generic = {
 	.backend_info = &adi_axi_adc_generic,
 };
 
+static const struct ad7606_platform_data ad7606_pdata = {
+		.bus_reg_read = ad7606_bi_reg_read,
+		.bus_reg_write = ad7606_bi_reg_write,
+};
+
+static const struct axi_adc_info adc_ad7606 = {
+	.version = ADI_AXI_PCORE_VER(10, 0, 'a'),
+	.backend_info = &adi_axi_adc_generic,
+	.bus_controller = true,
+	.pdata = &ad7606_pdata,
+	.pdata_sz = sizeof(ad7606_pdata),
+};
 
 static const struct of_device_id adi_axi_adc_of_match[] = {
 	{ .compatible = "adi,axi-adc-10.0.a", .data = &adc_generic },
+	{ .compatible = "adi,axi-ad7606x", .data = &adc_ad7606 },
 	{  }
 };
 MODULE_DEVICE_TABLE(of, adi_axi_adc_of_match);

-- 
2.34.1


