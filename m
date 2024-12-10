Return-Path: <devicetree+bounces-129195-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CFC5D9EAE92
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 11:50:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6200828638B
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 10:50:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0802A22653C;
	Tue, 10 Dec 2024 10:46:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="q8FnBWMY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D30E1DC998
	for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 10:46:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733827613; cv=none; b=vDXBivpWS3HW+Ybz/I34nxw/BovrhaB4BKp5g41+I+8BHUd6qs6Hb/zqrPddInvHrngdY9Kmdbdw15mjLWrv6SVu221xOjdBw6rNrhE9auLW8dcSG+BRL97/mign+EtN/WGxq9iQDua0+gIVqW7SpoBlaYxW2kksAKa7yh9ANeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733827613; c=relaxed/simple;
	bh=dl8B5isqs0cpK6+0Gxa9yBzmXpvsMpKpjWXkbfyzLUU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=FFISI3Eig/Xe9+HH7iQCjsgk9ChXrhkdmdUz6HdymmTrQ66Yuk02YVRMd5GgTyltsp1urE4jEBfvVPAjvzTSQZ917EyCakwC8moBcJj5O1O0GlNNaeIZUHnGm8YtI/6pL5PpM6PvXl+G4faOvG3HzPb+SRrOiAgc2nWFS/FdWPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=q8FnBWMY; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-435004228c0so12623265e9.0
        for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 02:46:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1733827610; x=1734432410; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MuYGelgUrcsjYaOSYK7sVWvHM7X1ualsJkTR9ux60ho=;
        b=q8FnBWMYcWLyuJYQfEO991w8g1yS/vMEDhjfYcM/IaBeIysB6EsBDhJA5divPKMo2A
         5xJDTL4rdnye9YWC6OCtCwxJC5yiXle6Vq9BTxHFBdHsw+X6CNJwydZnZp4vbG82kMjC
         iB0wG2Gks7LO6r5SW5catFbpP3CuEfulr06zQHqObugNOuyM4cr39LevW/RqMqAuJABt
         4HLytprFoQQBRfrx1uc8gupHmCBuQBGKvL6y1gHvDTiN1umyVmuQ7owTBYepaKt2/GN6
         CvNRsQWiCVgL5e5NZK92zs7PJ81FqmCbgIDmlz3DdfT1wbob5fsO2zMXuygNotzPBeAH
         ObDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733827610; x=1734432410;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MuYGelgUrcsjYaOSYK7sVWvHM7X1ualsJkTR9ux60ho=;
        b=WKbqXdLHMZnsa8IfSV1sGnasyjlHlPN2WhH1en14oF9yKc7Si0dTAanygsICns+WFR
         PV5dz7h9LvVjD2hn/sj0Vq0qmiPmBdYishWNfr8RCl/y8S4LXAhgLOPvn0zo/U6gxAAf
         3BbU4kY9VuwrbMdlfV8OS39TA/+4NMY4hXgwLQ+sUd3At6gKYgt8/ZjpQHrKjRAIcom6
         UMO4K9Irv6zFCPUST4d15ZYkwGihZGChq3/pj7mdZkMXjtFU12TCRJC01dX+ibe2pKrp
         ftrlFPeMDNIqrkawrevBhJvALGLxwqV6tqVhVZuUpgTnMo7CuszxpqlokC906+aDJb/E
         gCNQ==
X-Forwarded-Encrypted: i=1; AJvYcCVKoSacHIRKqHxbMrFJGLwFe9DZQuF/ZbVYSXMHf2uPLf8QwOEy93L6d72C2DFia7/uOUyzrys7XD74@vger.kernel.org
X-Gm-Message-State: AOJu0YwOqtO6ooNHTwchRYgynNGYFbrPhtpiOcGzWrkTlwLZa/hFui/g
	5T1jVUtWtRBjRREijuCoWqYzssMxlcJRyb+e50YxWmpO9bIBwWeCxiPGloHpOII=
X-Gm-Gg: ASbGncuMYxQrG6QzKEwyMiBKiToOBjnAhVuxYGptfIBfx+PWiYsCSLax+MOXK8JjNu3
	TBF53nNRMm92l1fe0ZSZ47ufAvilFYFbMB0whFbTMR8dI1Z4xmXPRk1eBjnLZe5eYbDnMKauUa1
	PHjDVoU3mmveQP+4V5d7woTI06jhlqoAxyoOjoGY21TApfitUrduVBNsq0Z3bqfpL4VLVjjkYuE
	g9KE6xUsoZKhH6k8clfDcQaAr+6s0/9pSgcagfEHYOpLuuoVw+k1l0/E+qxbxQwQibVxCfpYNt8
	mg==
X-Google-Smtp-Source: AGHT+IFyW6rQNXo0Ny2uhwpJhbK3Sp5sDIEIf/a6FYrk1ZEAWpFVZIm9PemZcuBaqaqQuSQAAh6JYQ==
X-Received: by 2002:a05:600c:3503:b0:434:f739:7cd9 with SMTP id 5b1f17b1804b1-434fff3dd22mr39545355e9.9.1733827609252;
        Tue, 10 Dec 2024 02:46:49 -0800 (PST)
Received: from [127.0.1.1] (frhb82016ds.ikexpress.com. [185.246.87.17])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434f2d08564sm94543645e9.12.2024.12.10.02.46.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Dec 2024 02:46:48 -0800 (PST)
From: Guillaume Stols <gstols@baylibre.com>
Date: Tue, 10 Dec 2024 10:46:46 +0000
Subject: [PATCH v2 6/9] iio: adc: adi-axi-adc: Add support for AD7606
 register writing
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241210-ad7606_add_iio_backend_software_mode-v2-6-6619c3e50d81@baylibre.com>
References: <20241210-ad7606_add_iio_backend_software_mode-v2-0-6619c3e50d81@baylibre.com>
In-Reply-To: <20241210-ad7606_add_iio_backend_software_mode-v2-0-6619c3e50d81@baylibre.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1733827603; l=5558;
 i=gstols@baylibre.com; s=20240417; h=from:subject:message-id;
 bh=dl8B5isqs0cpK6+0Gxa9yBzmXpvsMpKpjWXkbfyzLUU=;
 b=4n0W5kzyku2wLD8xi8+1pDXXO992R7e2WDCfxngNm+yKusBtmHCG2Iresog+mp2k4gSMf89bx
 5Hcml4eWaXKCUFe0/E5ZVBSKZGw/lgKmneYUXOGlRScm1oq0r3ITF3C
X-Developer-Key: i=gstols@baylibre.com; a=ed25519;
 pk=XvMm5WHuV67sGYOJZqIYzXndbaJOlNd8Q6li6vnb4Cs=

Since we must access the bus parallel bus using a custom procedure,
let's add a specialized compatible, and define specialized callbacks for
writing the registers using the parallel interface.

Signed-off-by: Guillaume Stols <gstols@baylibre.com>
---
 drivers/iio/adc/ad7606_bi.h   |  16 +++++++
 drivers/iio/adc/adi-axi-adc.c | 100 ++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 116 insertions(+)

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
index 7ff636643e56..b8bcf89417b0 100644
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
+	axi_adc_raw_write(back, &buf, sizeof(buf));
+	axi_adc_raw_read(back, val, 4);
+
+	/* Write 0x0 on the bus to get back to ADC mode */
+	buf = 0;
+	axi_adc_raw_write(back, &buf, sizeof(buf));
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
+	axi_adc_raw_write(back, &buf, sizeof(buf));
+
+	buf = FIELD_PREP(AD7606_REG_ADDRESS_MASK, reg) | FIELD_PREP(AD7606_REG_VALUE_MASK, val);
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
@@ -487,9 +573,23 @@ static const struct axi_adc_info adc_generic = {
 	.backend_info = &adi_axi_adc_generic,
 };
 
+static const struct ad7606_platform_data ad7606_pdata = {
+	.bus_reg_read = ad7606_bi_reg_read,
+	.bus_reg_write = ad7606_bi_reg_write,
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
2.34.1


