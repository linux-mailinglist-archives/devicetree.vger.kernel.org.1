Return-Path: <devicetree+bounces-92981-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7285D94F11A
	for <lists+devicetree@lfdr.de>; Mon, 12 Aug 2024 17:01:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AD73DB24E02
	for <lists+devicetree@lfdr.de>; Mon, 12 Aug 2024 15:01:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26D88183CC8;
	Mon, 12 Aug 2024 15:01:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="Bbhrdsta"
X-Original-To: devicetree@vger.kernel.org
Received: from relay9-d.mail.gandi.net (relay9-d.mail.gandi.net [217.70.183.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4614C4D112;
	Mon, 12 Aug 2024 15:01:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.199
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723474873; cv=none; b=XxBe87IDdKo9X6uY02Xyrl2nWTBeoZB10p32+LGq5v3oYijhv5EQrlSYdjoOuWwA7dVg9rqk3JLjvtJemT9D6Rq5NfYNC9BYz6SCF+IrqVy9NBzxOs0+PGJSw6SBupAje70RKLTju+GwWiwR4SVMBUayhIItVvHjtgu5Gji2SeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723474873; c=relaxed/simple;
	bh=PQlPjVrDPUgRAPgwTm0B7JNP4tXrjTJ3OTkiPTB5e/w=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=nniSyyR4Z91Dx0szjRdC4KQuTBs6Dl1YTwfXxDLkBqsogcRRPply8dC8pkThg0ts85GRcqhE0SenLEg5MMHfaxKWMBhgtlpNFP/R6geAttVEmnobg6RYZxL7BpkC/Q8djga7Lu6y0IXsw+XNK05/r+mA0aDWbZd7hAiWzZTNrX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=Bbhrdsta; arc=none smtp.client-ip=217.70.183.199
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id B2FFCFF806;
	Mon, 12 Aug 2024 15:01:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1723474868;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=BExSz4iOskUobW1Wtu0GnWkPwUOzbXt3bldw+FebJAE=;
	b=BbhrdstaVAQv9urtLj+TvNjTyMPJuDNrxfIpcdEp8Qwk3c8hUfIhhC1+TVlRiBK77ZWhB5
	8nSsoH8qFkU0ZzWEQOeG5OQjw4Zey6WU/zjJ4jWaThdtX32EuSHq4PVZOrPIP4SCNKCTaE
	PVH/+cBcKahB589fGzIELj7SjqzTXNiLSuUcIjLT6JmmXdYY8nO7HPD/yOm0O/ddAaWfWc
	wT5SlQyePeZVS3cJw3GKyZZRDqllDSchUVZHYDQ5rWthGMP7qD1ATKv3k8WdxA3XotD/mF
	0/JRJzDBPfmNd+wkK5+fV6mUmkAc1s+LsmDMfDUg8JHh7iNSBEQky+nbVz+M+g==
From: Thomas Bonnefille <thomas.bonnefille@bootlin.com>
Date: Mon, 12 Aug 2024 17:00:56 +0200
Subject: [PATCH v4 2/3] iio: adc: sophgo-saradc: Add driver for Sophgo
 CV18XX series SARADC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240812-sg2002-adc-v4-2-599bdb67592f@bootlin.com>
References: <20240812-sg2002-adc-v4-0-599bdb67592f@bootlin.com>
In-Reply-To: <20240812-sg2002-adc-v4-0-599bdb67592f@bootlin.com>
To: Jonathan Cameron <jic23@kernel.org>, 
 Lars-Peter Clausen <lars@metafoo.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chen Wang <unicorn_wang@outlook.com>, 
 Inochi Amaoto <inochiama@outlook.com>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 =?utf-8?q?Miqu=C3=A8l_Raynal?= <miquel.raynal@bootlin.com>, 
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
 Thomas Bonnefille <thomas.bonnefille@bootlin.com>
X-Mailer: b4 0.14.1
X-GND-Sasl: thomas.bonnefille@bootlin.com

This adds a driver for the common Sophgo SARADC.

Signed-off-by: Thomas Bonnefille <thomas.bonnefille@bootlin.com>
---
 drivers/iio/adc/Kconfig             |  10 ++
 drivers/iio/adc/Makefile            |   1 +
 drivers/iio/adc/sophgo-cv18xx-adc.c | 208 ++++++++++++++++++++++++++++++++++++
 3 files changed, 219 insertions(+)

diff --git a/drivers/iio/adc/Kconfig b/drivers/iio/adc/Kconfig
index f60fe85a30d5..b10bf26d8e86 100644
--- a/drivers/iio/adc/Kconfig
+++ b/drivers/iio/adc/Kconfig
@@ -1156,6 +1156,16 @@ config SC27XX_ADC
 	  This driver can also be built as a module. If so, the module
 	  will be called sc27xx_adc.
 
+config SOPHGO_CV18XX_ADC
+	tristate "Sophgo CV18XX series SARADC"
+	depends on ARCH_SOPHGO || COMPILE_TEST
+	help
+	  Say yes here to build support for the SARADC integrated inside
+	  the Sophgo CV18XX series SoCs.
+
+	  This driver can also be built as a module. If so, the module
+	  will be called sophgo_cv18xx_adc.
+
 config SPEAR_ADC
 	tristate "ST SPEAr ADC"
 	depends on PLAT_SPEAR || COMPILE_TEST
diff --git a/drivers/iio/adc/Makefile b/drivers/iio/adc/Makefile
index d370e066544e..24c241b12ef0 100644
--- a/drivers/iio/adc/Makefile
+++ b/drivers/iio/adc/Makefile
@@ -105,6 +105,7 @@ obj-$(CONFIG_ROCKCHIP_SARADC) += rockchip_saradc.o
 obj-$(CONFIG_RZG2L_ADC) += rzg2l_adc.o
 obj-$(CONFIG_SC27XX_ADC) += sc27xx_adc.o
 obj-$(CONFIG_SD_ADC_MODULATOR) += sd_adc_modulator.o
+obj-$(CONFIG_SOPHGO_CV18XX_ADC) += sophgo-cv18xx-adc.o
 obj-$(CONFIG_SPEAR_ADC) += spear_adc.o
 obj-$(CONFIG_STM32_ADC_CORE) += stm32-adc-core.o
 obj-$(CONFIG_STM32_ADC) += stm32-adc.o
diff --git a/drivers/iio/adc/sophgo-cv18xx-adc.c b/drivers/iio/adc/sophgo-cv18xx-adc.c
new file mode 100644
index 000000000000..ab7ee0f482cc
--- /dev/null
+++ b/drivers/iio/adc/sophgo-cv18xx-adc.c
@@ -0,0 +1,208 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ *  Sophgo CV18XX series SARADC Driver
+ *
+ *  Copyright (C) Bootlin 2024
+ *  Author: Thomas Bonnefille <thomas.bonnefille@bootlin.com>
+ */
+
+#include "linux/err.h"
+#include <linux/bitfield.h>
+#include <linux/clk.h>
+#include <linux/completion.h>
+#include <linux/dev_printk.h>
+#include <linux/interrupt.h>
+#include <linux/iio/iio.h>
+#include <linux/iopoll.h>
+#include <linux/mod_devicetable.h>
+#include <linux/module.h>
+#include <linux/mutex.h>
+#include <linux/platform_device.h>
+
+#define CV18XX_ADC_CTRL_REG				0x04
+#define		CV18XX_ADC_EN				BIT(0)
+#define		CV18XX_ADC_SEL(x)			BIT((x) + 5)
+#define CV18XX_ADC_STATUS_REG				0x08
+#define		CV18XX_ADC_BUSY				BIT(0)
+#define CV18XX_ADC_CYC_SET_REG				0x0C
+/* The default cycle configuration is set to maximize the accuracy */
+#define		CV18XX_ADC_DEF_STARTUP_CYCLE_MASK	0x1F
+#define		CV18XX_ADC_DEF_SAMPLE_WINDOW_MASK	0xF00
+#define		CV18XX_ADC_DEF_CLOCK_DIVIDER_MASK	0xF000
+#define		CV18XX_ADC_DEF_COMPARE_CYCLE_MASK	0xF0000
+#define CV18XX_ADC_CH_RESULT_REG(x)			(0x14 + 4 * (x))
+#define		CV18XX_ADC_CH_RESULT			GENMASK(11, 0)
+#define		CV18XX_ADC_CH_VALID			BIT(15)
+#define CV18XX_ADC_INTR_EN_REG				0x20
+#define CV18XX_ADC_INTR_CLR_REG				0x24
+#define		CV18XX_ADC_INTR_CLR_BIT			BIT(0)
+#define CV18XX_ADC_INTR_STA_REG				0x28
+#define		CV18XX_ADC_INTR_STA_BIT			BIT(0)
+
+#define CV18XX_ADC_CHANNEL(index)					\
+	{								\
+		.type = IIO_VOLTAGE,					\
+		.indexed = 1,						\
+		.channel = index,					\
+		.info_mask_separate = BIT(IIO_CHAN_INFO_RAW),		\
+		.info_mask_shared_by_type = BIT(IIO_CHAN_INFO_SCALE),	\
+		.scan_index = index,					\
+	}
+
+struct cv18xx_adc {
+	struct completion completion;
+	void __iomem *regs;
+	struct mutex lock; /* ADC Control and Result register */
+	int irq;
+};
+
+static const struct iio_chan_spec sophgo_channels[] = {
+	CV18XX_ADC_CHANNEL(0),
+	CV18XX_ADC_CHANNEL(1),
+	CV18XX_ADC_CHANNEL(2),
+};
+
+static void cv18xx_adc_start_measurement(struct cv18xx_adc *saradc,
+					    int channel)
+{
+	writel(0, saradc->regs + CV18XX_ADC_CTRL_REG);
+	writel(CV18XX_ADC_SEL(channel) | CV18XX_ADC_EN,
+	       saradc->regs + CV18XX_ADC_CTRL_REG);
+}
+
+static int cv18xx_adc_wait(struct cv18xx_adc *saradc)
+{
+	if (saradc->irq < 0) {
+		u32 reg;
+
+		return readl_poll_timeout(saradc->regs + CV18XX_ADC_STATUS_REG,
+					  reg, !(reg & CV18XX_ADC_BUSY),
+					  500, 1000000);
+	}
+	return wait_for_completion_timeout(&saradc->completion,
+					  msecs_to_jiffies(1000)) > 0
+					  ? 0 : -ETIMEDOUT;
+}
+
+static int cv18xx_adc_read_raw(struct iio_dev *indio_dev,
+				  struct iio_chan_spec const *chan,
+				  int *val, int *val2, long mask)
+{
+
+	switch (mask) {
+	case IIO_CHAN_INFO_RAW:{
+		struct cv18xx_adc *saradc = iio_priv(indio_dev);
+		u32 sample;
+
+		scoped_guard(mutex, &saradc->lock) {
+			int ret;
+
+			cv18xx_adc_start_measurement(saradc, chan->scan_index);
+			ret = cv18xx_adc_wait(saradc);
+			if (ret < 0)
+				return ret;
+
+			sample = readl(saradc->regs + CV18XX_ADC_CH_RESULT_REG(chan->scan_index));
+		}
+		if (!(sample & CV18XX_ADC_CH_VALID))
+			return -ENODATA;
+
+		*val = sample & CV18XX_ADC_CH_RESULT;
+		return IIO_VAL_INT;
+		}
+	case IIO_CHAN_INFO_SCALE:
+		*val = 3300;
+		*val2 = 12;
+		return IIO_VAL_FRACTIONAL_LOG2;
+	default:
+		return -EINVAL;
+	}
+}
+
+static irqreturn_t cv18xx_adc_interrupt_handler(int irq, void *private)
+{
+	struct cv18xx_adc *saradc = private;
+
+	if (!(FIELD_GET(CV18XX_ADC_INTR_STA_BIT,
+			readl(saradc->regs + CV18XX_ADC_INTR_STA_REG))))
+		return IRQ_NONE;
+
+	writel(CV18XX_ADC_INTR_CLR_BIT, saradc->regs + CV18XX_ADC_INTR_CLR_REG);
+	complete(&saradc->completion);
+	return IRQ_HANDLED;
+}
+
+static const struct iio_info cv18xx_adc_info = {
+	.read_raw = &cv18xx_adc_read_raw,
+};
+
+static int cv18xx_adc_probe(struct platform_device *pdev)
+{
+	struct cv18xx_adc *saradc;
+	struct iio_dev *indio_dev;
+	struct clk *clk;
+	int ret;
+
+	indio_dev = devm_iio_device_alloc(&pdev->dev, sizeof(*saradc));
+	if (!indio_dev)
+		return -ENOMEM;
+
+	saradc = iio_priv(indio_dev);
+	indio_dev->name = "sophgo-cv18xx-adc";
+	indio_dev->modes = INDIO_DIRECT_MODE;
+	indio_dev->info = &cv18xx_adc_info;
+	indio_dev->num_channels = ARRAY_SIZE(sophgo_channels);
+	indio_dev->channels = sophgo_channels;
+
+	clk = devm_clk_get_enabled(&pdev->dev, NULL);
+	if (IS_ERR(clk))
+		return PTR_ERR(clk);
+
+	saradc->regs = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(saradc->regs))
+		return PTR_ERR(saradc->regs);
+
+	saradc->irq = platform_get_irq_optional(pdev, 0);
+	if (saradc->irq >= 0) {
+		init_completion(&saradc->completion);
+		ret = devm_request_irq(&pdev->dev, saradc->irq,
+				       cv18xx_adc_interrupt_handler, 0,
+				       dev_name(&pdev->dev), saradc);
+		if (ret)
+			return ret;
+
+		writel(1, saradc->regs + CV18XX_ADC_INTR_EN_REG);
+	}
+
+	ret = devm_mutex_init(&pdev->dev, &saradc->lock);
+	if (ret)
+		return ret;
+
+	platform_set_drvdata(pdev, indio_dev);
+	writel(FIELD_PREP(CV18XX_ADC_DEF_STARTUP_CYCLE_MASK, 0xF) |
+	       FIELD_PREP(CV18XX_ADC_DEF_SAMPLE_WINDOW_MASK, 0xF) |
+	       FIELD_PREP(CV18XX_ADC_DEF_CLOCK_DIVIDER_MASK, 0x1) |
+	       FIELD_PREP(CV18XX_ADC_DEF_COMPARE_CYCLE_MASK, 0xF),
+	       saradc->regs + CV18XX_ADC_CYC_SET_REG);
+
+	return devm_iio_device_register(&pdev->dev, indio_dev);
+}
+
+static const struct of_device_id cv18xx_adc_match[] = {
+	{ .compatible = "sophgo,cv1800b-saradc", },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, cv18xx_adc_match);
+
+static struct platform_driver cv18xx_adc_driver = {
+	.driver	= {
+		.name		= "sophgo-cv18xx-saradc",
+		.of_match_table	= cv18xx_adc_match,
+	},
+	.probe = cv18xx_adc_probe,
+};
+module_platform_driver(cv18xx_adc_driver);
+
+MODULE_AUTHOR("Thomas Bonnefille <thomas.bonnefille@bootlin.com>");
+MODULE_DESCRIPTION("Sophgo CV18XX series SARADC driver");
+MODULE_LICENSE("GPL");

-- 
2.46.0


