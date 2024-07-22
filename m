Return-Path: <devicetree+bounces-87239-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 02B00938D2A
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 12:08:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 18A821C22569
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 10:08:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D43516F29C;
	Mon, 22 Jul 2024 10:03:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="G9opwJfK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DC5F16F0C4;
	Mon, 22 Jul 2024 10:03:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721642632; cv=none; b=An8HXnhI7+a1W++hglCFbbLm1u/FSwDgFEs4fhq+SRKiDsM9PSXl0sjk1JVewCqHxUrNdcLzZydmh9nBi/u6fIqsuSP/othbE8uPcIIJMtDoiPaYCx1oXH8cJjEZ66yjVgCp/YB17xryyr7kCmdCpMjoLu/SXoKtLbZEP2ZGlU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721642632; c=relaxed/simple;
	bh=pyhqqLbbsLYo2hEfKHcg1yjLs95HgPNDNJWgtMnxXVk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=KNNXJFgvNZbpyJe4peSMYryc6H35Cl0PrtSYletJtmQsuS/OTXAd/R7WEJdvPSU54iKKGONz6eQVXO5BqRmkxIpuv4BN7rQf/epPhV861BmE0xbdPr9HfO9Tlae1xDZIOZhh2ZYl7luHr4IaHvqgSUVczxUi7Qq5rlNLvkORrp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=G9opwJfK; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-36887ca3da2so1607800f8f.2;
        Mon, 22 Jul 2024 03:03:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1721642627; x=1722247427; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Lcz/2m3RC/4njyMoPht5cr+LwlK1eMWvQfnfuc60lms=;
        b=G9opwJfKHwGF++Kjz4v1Mz+bGO9i9Z3dyHd53Zbiiu1ExIO0GAljhwt3eaItUfwFgY
         UuMLlkV4EYQAXVyjVW1Rl/9TkMsA/nbMaaaoHNzJxywYAGoa2RqboMZ/M4CK0LcrfSAF
         yo26ycgPUHN1GOYfNCOhYmjCjDVCoRfEMxAUyIITKoqPbaUn+SFL4WkBcf5CmeUEam3I
         ACSatsueRrE7+xDS5vtTdibyNzdk2MWwhL6Wle7I+lSrgcyJQ4ilj6Ml5iBBCTbIOIhq
         R2aPMlFUO15JOtRAK78bw/HPHqbpvPvnzvuHwPN+N7KMHLOk6ip0+w9U2arSw87qTXRw
         LhoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721642627; x=1722247427;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Lcz/2m3RC/4njyMoPht5cr+LwlK1eMWvQfnfuc60lms=;
        b=K21vwHt5ZxD2i9NbDwLcdmLnVd91u/omDZYZCmuNT2D/lBzT+kJJQl27x0ARCTLY6C
         RgupjiNMur5guVYSGdFMxezwymubeswKT6BTGiZA6Lcj15LcmqafteoG8JTrH28fidKS
         MWsRT4GRvmLhBHsTdvrQB9+mQTaB3IryZUvtmUl2HVuub2gsBfa8bFvKPU9IwGHVXt6o
         dgAw4xH6yr8mUA74LVSfMQEflSMGu3zQPYedtAvL19xggtsvrQtYLFl8XmjfOCihv/SE
         +l+Bx2Y7jhzUWngHMAFtTcKWJB+jTpuJwgKT21fTjfjrcajBPo1XKXeUffYUBuwA4ona
         6Jfg==
X-Forwarded-Encrypted: i=1; AJvYcCXjJN/C+G76pmbOlGLv8kmZv/vYu8okHLupbsWtbDKrNt7OnmmhcCXfOQPVHbcr4kh8slzzAjmogQLxhzESj0m2+cK0FlfZ2kISqMKjpD4/0+UaVFSZyp2L+/eVZVkWHQusuim9olI5Qg==
X-Gm-Message-State: AOJu0Yxpbb08K1NC9vkov8qdZf6S+RsKXKNv9e5MsVjGpGI7vns7Pu3U
	EktnIV5MApNNTnxUWLlSFJJzbt99r5hha/oq14lSuJuh43p22hc+
X-Google-Smtp-Source: AGHT+IHHSiOTfDzxCubzWN0l4OXsmsBtgcLibx6rprVPfoR9EqIe9sbztYnxD4J8+6PSVOVuLK2fHA==
X-Received: by 2002:a05:6000:144a:b0:367:4dbb:ed4e with SMTP id ffacd0b85a97d-369bba4f072mr4379688f8f.0.1721642627220;
        Mon, 22 Jul 2024 03:03:47 -0700 (PDT)
Received: from localhost (host-82-58-19-206.retail.telecomitalia.it. [82.58.19.206])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-368787ced78sm8128305f8f.74.2024.07.22.03.03.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jul 2024 03:03:46 -0700 (PDT)
From: Matteo Martelli <matteomartelli3@gmail.com>
Date: Mon, 22 Jul 2024 12:03:20 +0200
Subject: [PATCH v3 3/3] iio: adc: add support for pac1921
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240722-iio-pac1921-v3-3-05dc9916cb33@gmail.com>
References: <20240722-iio-pac1921-v3-0-05dc9916cb33@gmail.com>
In-Reply-To: <20240722-iio-pac1921-v3-0-05dc9916cb33@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>, 
 Lars-Peter Clausen <lars@metafoo.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Marius Cristea <marius.cristea@microchip.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Matteo Martelli <matteomartelli3@gmail.com>
X-Mailer: b4 0.14.0

Add support for Microchip PAC1921 Power/Current monitor.

Implemented features:
* capture of bus voltage, sense voltage, current and power measurements
  in free-run integration mode
* support for both raw and triggered buffer reading
* support for overflow events
* scale attributes to control voltage and current gains
* oversampling ratio attribute to control the number of integration
  samples
* sampling rate attribute that reflects the integration period
* userspace attribute and DT parameter to control shunt resistor
* simple power management support

Limitations:
* operation mode fixed to free-run integration
* READ/INT pin and OUT pin not supported
* no controls for measurement resolutions and filters

Signed-off-by: Matteo Martelli <matteomartelli3@gmail.com>
---
 MAINTAINERS               |    7 +
 drivers/iio/adc/Kconfig   |   13 +
 drivers/iio/adc/Makefile  |    1 +
 drivers/iio/adc/pac1921.c | 1265 +++++++++++++++++++++++++++++++++++++++++++++
 4 files changed, 1286 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 06ecfa64a39a..eb32f8915202 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -14793,6 +14793,13 @@ F:	Documentation/devicetree/bindings/nvmem/microchip,sama7g5-otpc.yaml
 F:	drivers/nvmem/microchip-otpc.c
 F:	include/dt-bindings/nvmem/microchip,sama7g5-otpc.h
 
+MICROCHIP PAC1921 POWER/CURRENT MONITOR DRIVER
+M:	Matteo Martelli <matteomartelli3@gmail.com>
+L:	linux-iio@vger.kernel.org
+S:	Supported
+F:	Documentation/devicetree/bindings/iio/adc/microchip,pac1921.yaml
+F:	drivers/iio/adc/pac1921.c
+
 MICROCHIP PAC1934 POWER/ENERGY MONITOR DRIVER
 M:	Marius Cristea <marius.cristea@microchip.com>
 L:	linux-iio@vger.kernel.org
diff --git a/drivers/iio/adc/Kconfig b/drivers/iio/adc/Kconfig
index f60fe85a30d5..0993253b435c 100644
--- a/drivers/iio/adc/Kconfig
+++ b/drivers/iio/adc/Kconfig
@@ -991,6 +991,19 @@ config NPCM_ADC
 	  This driver can also be built as a module. If so, the module
 	  will be called npcm_adc.
 
+config PAC1921
+	tristate "Microchip Technology PAC1921 driver"
+	depends on I2C
+	select REGMAP_I2C
+	select IIO_BUFFER
+	select IIO_TRIGGERED_BUFFER
+	help
+	  Say yes here to build support for Microchip Technology's PAC1921
+	  High-Side Power/Current Monitor with Analog Output.
+
+	  This driver can also be built as a module. If so, the module
+	  will be called pac1921.
+
 config PAC1934
 	tristate "Microchip Technology PAC1934 driver"
 	depends on I2C
diff --git a/drivers/iio/adc/Makefile b/drivers/iio/adc/Makefile
index d370e066544e..5af30eeff262 100644
--- a/drivers/iio/adc/Makefile
+++ b/drivers/iio/adc/Makefile
@@ -90,6 +90,7 @@ obj-$(CONFIG_MP2629_ADC) += mp2629_adc.o
 obj-$(CONFIG_MXS_LRADC_ADC) += mxs-lradc-adc.o
 obj-$(CONFIG_NAU7802) += nau7802.o
 obj-$(CONFIG_NPCM_ADC) += npcm_adc.o
+obj-$(CONFIG_PAC1921) += pac1921.o
 obj-$(CONFIG_PAC1934) += pac1934.o
 obj-$(CONFIG_PALMAS_GPADC) += palmas_gpadc.o
 obj-$(CONFIG_QCOM_PM8XXX_XOADC) += qcom-pm8xxx-xoadc.o
diff --git a/drivers/iio/adc/pac1921.c b/drivers/iio/adc/pac1921.c
new file mode 100644
index 000000000000..33cc52255e6a
--- /dev/null
+++ b/drivers/iio/adc/pac1921.c
@@ -0,0 +1,1265 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * IIO driver for PAC1921 High-Side Power/Current Monitor
+ *
+ * Copyright (C) 2024 Matteo Martelli <matteomartelli3@gmail.com>
+ */
+
+#include <asm/unaligned.h>
+#include <linux/bitfield.h>
+#include <linux/i2c.h>
+#include <linux/iio/events.h>
+#include <linux/iio/iio.h>
+#include <linux/iio/trigger_consumer.h>
+#include <linux/iio/triggered_buffer.h>
+#include <linux/regmap.h>
+#include <linux/units.h>
+
+/* pac1921 registers */
+#define PAC1921_REG_GAIN_CFG		0x00
+#define PAC1921_REG_INT_CFG		0x01
+#define PAC1921_REG_CONTROL		0x02
+#define PAC1921_REG_VBUS		0x10
+#define PAC1921_REG_VSENSE		0x12
+#define PAC1921_REG_OVERFLOW_STS	0x1C
+#define PAC1921_REG_VPOWER		0x1D
+
+/* pac1921 gain configuration bits */
+#define PAC1921_GAIN_DI_GAIN_MASK	GENMASK(5, 3)
+#define PAC1921_GAIN_DV_GAIN_MASK	GENMASK(2, 0)
+
+/* pac1921 integration configuration bits */
+#define PAC1921_INT_CFG_SMPL_MASK	GENMASK(7, 4)
+#define PAC1921_INT_CFG_VSFEN		BIT(3)
+#define PAC1921_INT_CFG_VBFEN		BIT(2)
+#define PAC1921_INT_CFG_RIOV		BIT(1)
+#define PAC1921_INT_CFG_INTEN		BIT(0)
+
+/* pac1921 control bits */
+#define PAC1921_CONTROL_MXSL_MASK	GENMASK(7, 6)
+enum pac1921_mxsl {
+	PAC1921_MXSL_VPOWER_PIN = 0,
+	PAC1921_MXSL_VSENSE_FREE_RUN = 1,
+	PAC1921_MXSL_VBUS_FREE_RUN = 2,
+	PAC1921_MXSL_VPOWER_FREE_RUN = 3,
+};
+#define PAC1921_CONTROL_SLEEP		BIT(2)
+
+/* pac1921 result registers mask and resolution */
+#define PAC1921_RES_MASK		GENMASK(15, 6)
+#define PAC1921_RES_RESOLUTION		1023
+
+/* pac1921 overflow status bits */
+#define PAC1921_OVERFLOW_VSOV		BIT(2)
+#define PAC1921_OVERFLOW_VBOV		BIT(1)
+#define PAC1921_OVERFLOW_VPOV		BIT(0)
+
+/* pac1921 constants */
+#define PAC1921_MAX_VSENSE_MV		100
+#define PAC1921_MAX_VBUS_V		32
+/* Time to first communication after power up (tINT_T) */
+#define PAC1921_POWERUP_TIME_MS		20
+/* Time from Sleep State to Start of Integration Period (tSLEEP_TO_INT) */
+#define PAC1921_SLEEP_TO_INT_TIME_US	86
+
+/* pac1921 defaults */
+#define PAC1921_DEFAULT_DV_GAIN		0 /* 2^(value): 1x gain (HW default) */
+#define PAC1921_DEFAULT_DI_GAIN		0 /* 2^(value): 1x gain (HW default) */
+#define PAC1921_DEFAULT_NUM_SAMPLES	0 /* 2^(value): 1 sample (HW default) */
+
+/*
+ * Pre-computed scale factors for BUS voltage
+ * format: IIO_VAL_INT_PLUS_NANO
+ * unit: mV
+ *
+ * Vbus scale (mV) = max_vbus (mV) / dv_gain / resolution
+ */
+static const int pac1921_vbus_scales[][2] = {
+	{31, 280547409},	/* dv_gain x1 */
+	{15, 640273704},	/* dv_gain x2 */
+	{7, 820136852},		/* dv_gain x4 */
+	{3, 910068426},		/* dv_gain x8 */
+	{1, 955034213},		/* dv_gain x16 */
+	{0, 977517106}		/* dv_gain x32 */
+};
+
+/*
+ * Pre-computed scales for SENSE voltage
+ * format: IIO_VAL_INT_PLUS_NANO
+ * unit: mV
+ *
+ * Vsense scale (mV) = max_vsense (mV) / di_gain / resolution
+ */
+static const int pac1921_vsense_scales[][2] = {
+	{0, 97751710},		/* di_gain x1 */
+	{0, 48875855},		/* di_gain x2 */
+	{0, 24437927},		/* di_gain x4 */
+	{0, 12218963},		/* di_gain x8 */
+	{0, 6109481},		/* di_gain x16 */
+	{0, 3054740},		/* di_gain x32 */
+	{0, 1527370},		/* di_gain x64 */
+	{0, 763685}		/* di_gain x128 */
+};
+
+/*
+ * Numbers of samples used to integrate measurements at the end of an
+ * integration period.
+ *
+ * Changing the number of samples affects the integration period: higher the
+ * number of samples, longer the integration period.
+ *
+ * These correspond to the oversampling ratios available exposed to userspace.
+ */
+static const int pac1921_int_num_samples[] = {
+	1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048
+};
+
+/*
+ * The integration period depends on the configuration of number of integration
+ * samples, measurement resolution and post filters. The following array
+ * contains integration periods, in microsecs unit, based on table 4-5 from
+ * datasheet considering power integration mode, 14-Bit resolution and post
+ * filters on. Each index corresponds to a specific number of samples from 1
+ * to 2048.
+ */
+static const unsigned int pac1921_int_periods_usecs[] = {
+	2720,		/* 1 sample */
+	4050,		/* 2 samples */
+	6790,		/* 4 samples */
+	12200,		/* 8 samples */
+	23000,		/* 16 samples */
+	46000,		/* 32 samples */
+	92000,		/* 64 samples */
+	184000,		/* 128 samples */
+	368000,		/* 256 samples */
+	736000,		/* 512 samples */
+	1471000,	/* 1024 samples */
+	2941000		/* 2048 samples */
+};
+
+/* pac1921 regmap configuration */
+static const struct regmap_range pac1921_regmap_wr_ranges[] = {
+	regmap_reg_range(PAC1921_REG_GAIN_CFG, PAC1921_REG_CONTROL),
+};
+
+static const struct regmap_access_table pac1921_regmap_wr_table = {
+	.yes_ranges = pac1921_regmap_wr_ranges,
+	.n_yes_ranges = ARRAY_SIZE(pac1921_regmap_wr_ranges),
+};
+
+static const struct regmap_range pac1921_regmap_rd_ranges[] = {
+	regmap_reg_range(PAC1921_REG_GAIN_CFG, PAC1921_REG_CONTROL),
+	regmap_reg_range(PAC1921_REG_VBUS, PAC1921_REG_VPOWER + 1),
+};
+
+static const struct regmap_access_table pac1921_regmap_rd_table = {
+	.yes_ranges = pac1921_regmap_rd_ranges,
+	.n_yes_ranges = ARRAY_SIZE(pac1921_regmap_rd_ranges),
+};
+
+static const struct regmap_config pac1921_regmap_config = {
+	.reg_bits = 8,
+	.val_bits = 8,
+	.rd_table = &pac1921_regmap_rd_table,
+	.wr_table = &pac1921_regmap_wr_table,
+};
+
+enum pac1921_channels {
+	PAC1921_CHAN_VBUS = 0,
+	PAC1921_CHAN_VSENSE = 1,
+	PAC1921_CHAN_CURRENT = 2,
+	PAC1921_CHAN_POWER = 3,
+};
+#define PAC1921_NUM_MEAS_CHANS 4
+
+struct pac1921_priv {
+	struct i2c_client *client;
+	struct regmap *regmap;
+	struct regulator *vdd;
+	struct iio_info iio_info;
+
+	/*
+	 * Synchronize access to private members, and ensure atomicity of
+	 * consecutive regmap operations.
+	 */
+	struct mutex lock;
+
+	u32 rshunt_uohm; /* uOhm */
+	u8 dv_gain;
+	u8 di_gain;
+	u8 n_samples;
+	u8 prev_ovf_flags;
+	u8 ovf_enabled_events;
+
+	bool first_integr_started;
+	bool first_integr_done;
+	unsigned long integr_started_time_jiffies;
+	unsigned int integr_period_usecs;
+
+	int current_scales[ARRAY_SIZE(pac1921_vsense_scales)][2];
+
+	struct {
+		u16 chan[PAC1921_NUM_MEAS_CHANS];
+		s64 timestamp __aligned(8);
+	} scan;
+};
+
+/*
+ * Check if first integration after configuration update has completed.
+ *
+ * Must be called with lock held.
+ */
+static bool pac1921_data_ready(struct pac1921_priv *priv)
+{
+	if (!priv->first_integr_started)
+		return false;
+
+	if (!priv->first_integr_done) {
+		unsigned long t_ready;
+
+		/*
+		 * Data valid after the device entered into integration state,
+		 * considering worst case where the device was in sleep state,
+		 * and completed the first integration period.
+		 */
+		t_ready = priv->integr_started_time_jiffies +
+			  usecs_to_jiffies(PAC1921_SLEEP_TO_INT_TIME_US) +
+			  usecs_to_jiffies(priv->integr_period_usecs);
+
+		if (time_before(jiffies, t_ready))
+			return false;
+
+		priv->first_integr_done = true;
+	}
+
+	return true;
+}
+
+static inline void pac1921_calc_scale(int dividend, int divisor, int *val,
+				      int *val2)
+{
+	s64 tmp;
+
+	tmp = div_s64(dividend * (s64)NANO, divisor);
+	*val = (int)div_s64_rem(tmp, NANO, val2);
+}
+
+/*
+ * Fill the table of scale factors for current
+ * format: IIO_VAL_INT_PLUS_NANO
+ * unit: mA
+ *
+ * Vsense LSB (nV) = max_vsense (nV) * di_gain / resolution
+ * Current scale (mA) = Vsense LSB (nV) / shunt (uOhm)
+ *
+ * Must be called with held lock when updating after first initialization.
+ */
+static void pac1921_calc_current_scales(struct pac1921_priv *priv)
+{
+	for (unsigned int i = 0; i < ARRAY_SIZE(priv->current_scales); i++) {
+		int max = (PAC1921_MAX_VSENSE_MV * MICRO) >> i;
+		int vsense_lsb = DIV_ROUND_CLOSEST(max, PAC1921_RES_RESOLUTION);
+
+		pac1921_calc_scale(vsense_lsb, (int)priv->rshunt_uohm,
+				   &priv->current_scales[i][0],
+				   &priv->current_scales[i][1]);
+	}
+}
+
+/*
+ * Check if overflow occurred and if so, push the corresponding events.
+ *
+ * Must be called with lock held.
+ */
+static int pac1921_check_push_overflow(struct iio_dev *indio_dev, s64 timestamp)
+{
+	struct pac1921_priv *priv = iio_priv(indio_dev);
+	unsigned int flags;
+	int ret;
+
+	ret = regmap_read(priv->regmap, PAC1921_REG_OVERFLOW_STS, &flags);
+	if (ret)
+		return ret;
+
+	if (flags & PAC1921_OVERFLOW_VBOV &&
+	    !(priv->prev_ovf_flags & PAC1921_OVERFLOW_VBOV) &&
+	    priv->ovf_enabled_events & PAC1921_OVERFLOW_VBOV) {
+		iio_push_event(indio_dev,
+			       IIO_UNMOD_EVENT_CODE(
+				       IIO_VOLTAGE, PAC1921_CHAN_VBUS,
+				       IIO_EV_TYPE_THRESH, IIO_EV_DIR_RISING),
+			       timestamp);
+	}
+	if (flags & PAC1921_OVERFLOW_VSOV &&
+	    !(priv->prev_ovf_flags & PAC1921_OVERFLOW_VSOV) &&
+	    priv->ovf_enabled_events & PAC1921_OVERFLOW_VSOV) {
+		iio_push_event(indio_dev,
+			       IIO_UNMOD_EVENT_CODE(
+				       IIO_VOLTAGE, PAC1921_CHAN_VSENSE,
+				       IIO_EV_TYPE_THRESH, IIO_EV_DIR_RISING),
+			       timestamp);
+		iio_push_event(indio_dev,
+			       IIO_UNMOD_EVENT_CODE(
+				       IIO_CURRENT, PAC1921_CHAN_CURRENT,
+				       IIO_EV_TYPE_THRESH, IIO_EV_DIR_RISING),
+			       timestamp);
+	}
+	if (flags & PAC1921_OVERFLOW_VPOV &&
+	    !(priv->prev_ovf_flags & PAC1921_OVERFLOW_VPOV) &&
+	    priv->ovf_enabled_events & PAC1921_OVERFLOW_VPOV) {
+		iio_push_event(indio_dev,
+			       IIO_UNMOD_EVENT_CODE(
+				       IIO_POWER, PAC1921_CHAN_POWER,
+				       IIO_EV_TYPE_THRESH, IIO_EV_DIR_RISING),
+			       timestamp);
+	}
+
+	priv->prev_ovf_flags = (u8)flags;
+
+	return 0;
+}
+
+/*
+ * Read the value from a result register
+ *
+ * Result registers contain the most recent averaged values of Vbus, Vsense and
+ * Vpower. Each value is 10 bits wide and spread across two consecutive 8 bit
+ * registers, with 6 bit LSB zero padding.
+ */
+static int pac1921_read_res(struct pac1921_priv *priv, unsigned long reg,
+			    u16 *val)
+{
+	int ret = regmap_bulk_read(priv->regmap, (unsigned int)reg, val,
+				   sizeof(*val));
+	if (ret)
+		return ret;
+
+	*val = (u16)FIELD_GET(PAC1921_RES_MASK, get_unaligned_be16(val));
+
+	return 0;
+}
+
+static int pac1921_read_raw(struct iio_dev *indio_dev,
+			    struct iio_chan_spec const *chan, int *val,
+			    int *val2, long mask)
+{
+	struct pac1921_priv *priv = iio_priv(indio_dev);
+
+	guard(mutex)(&priv->lock);
+
+	switch (mask) {
+	case IIO_CHAN_INFO_RAW: {
+		s64 ts;
+		u16 res_val;
+		int ret;
+
+		if (!pac1921_data_ready(priv))
+			return -EBUSY;
+
+		ts = iio_get_time_ns(indio_dev);
+
+		ret = pac1921_check_push_overflow(indio_dev, ts);
+		if (ret)
+			return ret;
+
+		ret = pac1921_read_res(priv, chan->address, &res_val);
+		if (ret)
+			return ret;
+
+		*val = (int)res_val;
+
+		return IIO_VAL_INT;
+	}
+	case IIO_CHAN_INFO_SCALE:
+		switch (chan->channel) {
+		case PAC1921_CHAN_VBUS:
+			*val = pac1921_vbus_scales[priv->dv_gain][0];
+			*val2 = pac1921_vbus_scales[priv->dv_gain][1];
+			return IIO_VAL_INT_PLUS_NANO;
+
+		case PAC1921_CHAN_VSENSE:
+			*val = pac1921_vsense_scales[priv->di_gain][0];
+			*val2 = pac1921_vsense_scales[priv->di_gain][1];
+			return IIO_VAL_INT_PLUS_NANO;
+
+		case PAC1921_CHAN_CURRENT:
+			*val = priv->current_scales[priv->di_gain][0];
+			*val2 = priv->current_scales[priv->di_gain][1];
+			return IIO_VAL_INT_PLUS_NANO;
+
+		case PAC1921_CHAN_POWER: {
+			/*
+			 * Power scale factor in mW:
+			 * Current scale (mA) * max_vbus (V) / dv_gain
+			 */
+
+			/* Get current scale based on di_gain */
+			int *curr_scale = priv->current_scales[priv->di_gain];
+
+			/* Convert current_scale from INT_PLUS_NANO to INT */
+			s64 tmp = curr_scale[0] * (s64)NANO + curr_scale[1];
+
+			/* Multiply by max_vbus (V) / dv_gain */
+			tmp *= PAC1921_MAX_VBUS_V >> (int)priv->dv_gain;
+
+			/* Convert back to INT_PLUS_NANO */
+			*val = (int)div_s64_rem(tmp, NANO, val2);
+
+			return IIO_VAL_INT_PLUS_NANO;
+		}
+		default:
+			return -EINVAL;
+		}
+
+	case IIO_CHAN_INFO_OVERSAMPLING_RATIO:
+		*val = pac1921_int_num_samples[priv->n_samples];
+		return IIO_VAL_INT;
+
+	case IIO_CHAN_INFO_SAMP_FREQ:
+		/*
+		 * The sampling frequency (Hz) is read-only and corresponds to
+		 * how often the device provides integrated measurements into
+		 * the result registers, thus it's 1/integration_period.
+		 * The integration period depends on the number of integration
+		 * samples, measurement resolution and post filters.
+		 *
+		 * 1/(integr_period_usecs/MICRO) = MICRO/integr_period_usecs
+		 */
+		*val = MICRO;
+		*val2 = (int)priv->integr_period_usecs;
+		return IIO_VAL_FRACTIONAL;
+
+	default:
+		return -EINVAL;
+	}
+}
+
+static int pac1921_read_avail(struct iio_dev *indio_dev,
+			      struct iio_chan_spec const *chan,
+			      const int **vals, int *type, int *length,
+			      long mask)
+{
+	switch (mask) {
+	case IIO_CHAN_INFO_OVERSAMPLING_RATIO:
+		*type = IIO_VAL_INT;
+		*vals = pac1921_int_num_samples;
+		*length = ARRAY_SIZE(pac1921_int_num_samples);
+		return IIO_AVAIL_LIST;
+	default:
+		return -EINVAL;
+	}
+}
+
+/*
+ * Perform configuration update sequence: set the device into read state, then
+ * write the config register and set the device back into integration state.
+ * Also reset integration start time and mark first integration to be yet
+ * completed.
+ *
+ * Must be called with lock held.
+ */
+static int pac1921_update_cfg_reg(struct pac1921_priv *priv, unsigned int reg,
+				  unsigned int mask, unsigned int val)
+{
+	/* Enter READ state before configuration */
+	int ret = regmap_update_bits(priv->regmap, PAC1921_REG_INT_CFG,
+				     PAC1921_INT_CFG_INTEN, 0);
+	if (ret)
+		return ret;
+
+	/* Update configuration value */
+	ret = regmap_update_bits(priv->regmap, reg, mask, val);
+	if (ret)
+		return ret;
+
+	/* Re-enable integration */
+	ret = regmap_update_bits(priv->regmap, PAC1921_REG_INT_CFG,
+				 PAC1921_INT_CFG_INTEN, PAC1921_INT_CFG_INTEN);
+	if (ret)
+		return ret;
+
+	/*
+	 * Reset integration started time and mark this integration period as
+	 * the first one so that new measurements will be considered as valid
+	 * only at the end of this integration period.
+	 */
+	priv->integr_started_time_jiffies = jiffies;
+	priv->first_integr_done = false;
+
+	return 0;
+}
+
+/*
+ * Retrieve the index of the given scale (represented by scale_val and
+ * scale_val2) from scales_tbl. The returned index (if found) is the log2 of
+ * the gain corresponding to the given scale.
+ *
+ * Must be called with lock held if the scales_tbl can change runtime (e.g. for
+ * the current scales table)
+ */
+static int pac1921_lookup_scale(const int (*const scales_tbl)[2], size_t size,
+				int scale_val, int scale_val2)
+{
+	for (unsigned int i = 0; i < size; i++)
+		if (scales_tbl[i][0] == scale_val &&
+		    scales_tbl[i][1] == scale_val2)
+			return (int)i;
+
+	return -EINVAL;
+}
+
+/*
+ * Configure device with the given gain (only if changed)
+ *
+ * Must be called with lock held.
+ */
+static int pac1921_update_gain(struct pac1921_priv *priv, u8 *priv_val, u8 gain,
+			       unsigned int mask)
+{
+	unsigned int reg_val;
+	int ret;
+
+	if (*priv_val == gain)
+		return 0;
+
+	reg_val = (gain << __ffs(mask)) & mask;
+	ret = pac1921_update_cfg_reg(priv, PAC1921_REG_GAIN_CFG, mask, reg_val);
+	if (ret)
+		return ret;
+
+	*priv_val = gain;
+
+	return 0;
+}
+
+/*
+ * Given a scale factor represented by scale_val and scale_val2 with format
+ * IIO_VAL_INT_PLUS_NANO, find the corresponding gain value and write it to the
+ * device.
+ *
+ * Must be called with lock held.
+ */
+static int pac1921_update_gain_from_scale(struct pac1921_priv *priv,
+					  struct iio_chan_spec const *chan,
+					  int scale_val, int scale_val2)
+{
+	int ret;
+
+	switch (chan->channel) {
+	case PAC1921_CHAN_VBUS:
+		ret = pac1921_lookup_scale(pac1921_vbus_scales,
+					   ARRAY_SIZE(pac1921_vbus_scales),
+					   scale_val, scale_val2);
+		if (ret < 0)
+			return ret;
+
+		return pac1921_update_gain(priv, &priv->dv_gain, (u8)ret,
+					   PAC1921_GAIN_DV_GAIN_MASK);
+	case PAC1921_CHAN_VSENSE:
+		ret = pac1921_lookup_scale(pac1921_vsense_scales,
+					   ARRAY_SIZE(pac1921_vsense_scales),
+					   scale_val, scale_val2);
+		if (ret < 0)
+			return ret;
+
+		return pac1921_update_gain(priv, &priv->di_gain, (u8)ret,
+					   PAC1921_GAIN_DI_GAIN_MASK);
+	case PAC1921_CHAN_CURRENT:
+		ret = pac1921_lookup_scale(priv->current_scales,
+					   ARRAY_SIZE(priv->current_scales),
+					   scale_val, scale_val2);
+		if (ret < 0)
+			return ret;
+
+		return pac1921_update_gain(priv, &priv->di_gain, (u8)ret,
+					   PAC1921_GAIN_DI_GAIN_MASK);
+	default:
+		return -EINVAL;
+	}
+}
+
+/*
+ * Retrieve the index of the given number of samples from the constant table.
+ * The returned index (if found) is the log2 of the given num_samples.
+ */
+static int pac1921_lookup_int_num_samples(int num_samples)
+{
+	for (unsigned int i = 0; i < ARRAY_SIZE(pac1921_int_num_samples); i++)
+		if (pac1921_int_num_samples[i] == num_samples)
+			return (int)i;
+
+	return -EINVAL;
+}
+
+/*
+ * Update the device with the given number of integration samples.
+ *
+ * Must be called with lock held.
+ */
+static int pac1921_update_int_num_samples(struct pac1921_priv *priv,
+					  int num_samples)
+{
+	unsigned int reg_val;
+	u8 n_samples;
+	int ret;
+
+	ret = pac1921_lookup_int_num_samples(num_samples);
+	if (ret < 0)
+		return ret;
+
+	n_samples = (u8)ret;
+
+	if (priv->n_samples == n_samples)
+		return 0;
+
+	reg_val = (u8)FIELD_PREP(PAC1921_INT_CFG_SMPL_MASK, n_samples);
+
+	ret = pac1921_update_cfg_reg(priv, PAC1921_REG_INT_CFG,
+				     PAC1921_INT_CFG_SMPL_MASK, reg_val);
+	if (ret)
+		return ret;
+
+	priv->n_samples = n_samples;
+
+	priv->integr_period_usecs = pac1921_int_periods_usecs[priv->n_samples];
+
+	return 0;
+}
+
+static int pac1921_write_raw_get_fmt(struct iio_dev *indio_dev,
+				     struct iio_chan_spec const *chan,
+				     long info)
+{
+	switch (info) {
+	case IIO_CHAN_INFO_SCALE:
+		return IIO_VAL_INT_PLUS_NANO;
+	case IIO_CHAN_INFO_OVERSAMPLING_RATIO:
+		return IIO_VAL_INT;
+	default:
+		return -EINVAL;
+	}
+}
+
+static int pac1921_write_raw(struct iio_dev *indio_dev,
+			     struct iio_chan_spec const *chan, int val,
+			     int val2, long mask)
+{
+	struct pac1921_priv *priv = iio_priv(indio_dev);
+
+	guard(mutex)(&priv->lock);
+
+	switch (mask) {
+	case IIO_CHAN_INFO_SCALE:
+		return pac1921_update_gain_from_scale(priv, chan, val, val2);
+	case IIO_CHAN_INFO_OVERSAMPLING_RATIO:
+		return pac1921_update_int_num_samples(priv, val);
+	default:
+		return -EINVAL;
+	}
+}
+
+static int pac1921_read_label(struct iio_dev *indio_dev,
+			      struct iio_chan_spec const *chan, char *label)
+{
+	switch (chan->channel) {
+	case PAC1921_CHAN_VBUS:
+		return sprintf(label, "vbus\n");
+	case PAC1921_CHAN_VSENSE:
+		return sprintf(label, "vsense\n");
+	case PAC1921_CHAN_CURRENT:
+		return sprintf(label, "current\n");
+	case PAC1921_CHAN_POWER:
+		return sprintf(label, "power\n");
+	default:
+		return -EINVAL;
+	}
+}
+
+static int pac1921_read_event_config(struct iio_dev *indio_dev,
+				     const struct iio_chan_spec *chan,
+				     enum iio_event_type type,
+				     enum iio_event_direction dir)
+{
+	struct pac1921_priv *priv = iio_priv(indio_dev);
+
+	guard(mutex)(&priv->lock);
+
+	switch (chan->channel) {
+	case PAC1921_CHAN_VBUS:
+		return !!(priv->ovf_enabled_events & PAC1921_OVERFLOW_VBOV);
+	case PAC1921_CHAN_VSENSE:
+	case PAC1921_CHAN_CURRENT:
+		return !!(priv->ovf_enabled_events & PAC1921_OVERFLOW_VSOV);
+	case PAC1921_CHAN_POWER:
+		return !!(priv->ovf_enabled_events & PAC1921_OVERFLOW_VPOV);
+	default:
+		return -EINVAL;
+	}
+}
+
+static int pac1921_write_event_config(struct iio_dev *indio_dev,
+				      const struct iio_chan_spec *chan,
+				      enum iio_event_type type,
+				      enum iio_event_direction dir, int state)
+{
+	struct pac1921_priv *priv = iio_priv(indio_dev);
+	u8 ovf_bit;
+
+	guard(mutex)(&priv->lock);
+
+	switch (chan->channel) {
+	case PAC1921_CHAN_VBUS:
+		ovf_bit = PAC1921_OVERFLOW_VBOV;
+		break;
+	case PAC1921_CHAN_VSENSE:
+	case PAC1921_CHAN_CURRENT:
+		ovf_bit = PAC1921_OVERFLOW_VSOV;
+		break;
+	case PAC1921_CHAN_POWER:
+		ovf_bit = PAC1921_OVERFLOW_VPOV;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	if (state)
+		priv->ovf_enabled_events |= ovf_bit;
+	else
+		priv->ovf_enabled_events &= ~ovf_bit;
+
+	return 0;
+}
+
+static int pac1921_read_event_value(struct iio_dev *indio_dev,
+				    const struct iio_chan_spec *chan,
+				    enum iio_event_type type,
+				    enum iio_event_direction dir,
+				    enum iio_event_info info, int *val,
+				    int *val2)
+{
+	switch (info) {
+	case IIO_EV_INFO_VALUE:
+		*val = PAC1921_RES_RESOLUTION;
+		return IIO_VAL_INT;
+	default:
+		return -EINVAL;
+	}
+}
+
+static const struct iio_info pac1921_iio = {
+	.read_raw = pac1921_read_raw,
+	.read_avail = pac1921_read_avail,
+	.write_raw = pac1921_write_raw,
+	.write_raw_get_fmt = pac1921_write_raw_get_fmt,
+	.read_label = pac1921_read_label,
+	.read_event_config = pac1921_read_event_config,
+	.write_event_config = pac1921_write_event_config,
+	.read_event_value = pac1921_read_event_value,
+};
+
+static ssize_t pac1921_read_shunt_resistor(struct iio_dev *indio_dev,
+					    uintptr_t private,
+					    const struct iio_chan_spec *chan,
+					    char *buf)
+{
+	struct pac1921_priv *priv = iio_priv(indio_dev);
+	int vals[2];
+
+	if (chan->channel != PAC1921_CHAN_CURRENT)
+		return -EINVAL;
+
+	guard(mutex)(&priv->lock);
+
+	vals[0] = (int)priv->rshunt_uohm;
+	vals[1] = MICRO;
+
+	return iio_format_value(buf, IIO_VAL_FRACTIONAL, 1, vals);
+}
+
+static ssize_t pac1921_write_shunt_resistor(struct iio_dev *indio_dev,
+					    uintptr_t private,
+					    const struct iio_chan_spec *chan,
+					    const char *buf, size_t len)
+{
+	struct pac1921_priv *priv = iio_priv(indio_dev);
+	u64 rshunt_uohm;
+	int val, val_fract;
+	int ret;
+
+	if (chan->channel != PAC1921_CHAN_CURRENT)
+		return -EINVAL;
+
+	ret = iio_str_to_fixpoint(buf, 100000, &val, &val_fract);
+	if (ret)
+		return ret;
+
+	rshunt_uohm = (u32)val * MICRO + (u32)val_fract;
+	if (rshunt_uohm == 0 || rshunt_uohm > INT_MAX)
+		return -EINVAL;
+
+	guard(mutex)(&priv->lock);
+
+	priv->rshunt_uohm = (u32)rshunt_uohm;
+
+	pac1921_calc_current_scales(priv);
+
+	return len;
+}
+
+/*
+ * Emit on sysfs the list of available scales contained in scales_tbl
+ *
+ * TODO:: this function can be replaced with iio_format_avail_list() if the
+ * latter will ever be exported.
+ *
+ * Must be called with lock held if the scales_tbl can change runtime (e.g. for
+ * the current scales table)
+ */
+static ssize_t pac1921_format_scale_avail(const int (*const scales_tbl)[2],
+					  size_t size, char *buf)
+{
+	ssize_t len = 0;
+
+	for (unsigned int i = 0; i < size; i++) {
+		if (i != 0) {
+			len += sysfs_emit_at(buf, len, " ");
+			if (len >= PAGE_SIZE)
+				return -EFBIG;
+		}
+		len += sysfs_emit_at(buf, len, "%d.%09d", scales_tbl[i][0],
+				     scales_tbl[i][1]);
+		if (len >= PAGE_SIZE)
+			return -EFBIG;
+	}
+
+	len += sysfs_emit_at(buf, len, "\n");
+	return len;
+}
+
+/*
+ * Read available scales for a specific channel
+ *
+ * NOTE: using extended info insted of iio.read_avail() because access to
+ * current scales must be locked as they depend on shunt resistor which may
+ * change runtime. Caller of iio.read_avail() would access the table unlocked
+ * instead.
+ */
+static ssize_t pac1921_read_scale_avail(struct iio_dev *indio_dev,
+					uintptr_t private,
+					const struct iio_chan_spec *chan,
+					char *buf)
+{
+	struct pac1921_priv *priv = iio_priv(indio_dev);
+	const int (*scales_tbl)[2];
+	size_t size;
+
+	switch (chan->channel) {
+	case PAC1921_CHAN_VBUS:
+		scales_tbl = pac1921_vbus_scales;
+		size = ARRAY_SIZE(pac1921_vbus_scales);
+		return pac1921_format_scale_avail(scales_tbl, size, buf);
+
+	case PAC1921_CHAN_VSENSE:
+		scales_tbl = pac1921_vsense_scales;
+		size = ARRAY_SIZE(pac1921_vsense_scales);
+		return pac1921_format_scale_avail(scales_tbl, size, buf);
+
+	case PAC1921_CHAN_CURRENT: {
+		guard(mutex)(&priv->lock);
+		scales_tbl = priv->current_scales;
+		size = ARRAY_SIZE(priv->current_scales);
+		return pac1921_format_scale_avail(scales_tbl, size, buf);
+	}
+	default:
+		return -EINVAL;
+	}
+}
+
+static const struct iio_chan_spec_ext_info pac1921_ext_info_rshunt = {
+	.name = "shunt_resistor",
+	.read = pac1921_read_shunt_resistor,
+	.write = pac1921_write_shunt_resistor,
+	.shared = IIO_SEPARATE,
+};
+
+static const struct iio_chan_spec_ext_info pac1921_ext_info_scale_avail = {
+	.name = "scale_available",
+	.read = pac1921_read_scale_avail,
+	.shared = IIO_SEPARATE,
+};
+
+static const struct iio_chan_spec_ext_info pac1921_ext_info_voltage[] = {
+	pac1921_ext_info_scale_avail,
+	{}
+};
+
+static const struct iio_chan_spec_ext_info pac1921_ext_info_current[] = {
+	pac1921_ext_info_scale_avail,
+	pac1921_ext_info_rshunt,
+	{}
+};
+
+static const struct iio_event_spec pac1921_overflow_event[] = {
+	{
+		.type = IIO_EV_TYPE_THRESH,
+		.dir = IIO_EV_DIR_RISING,
+		.mask_shared_by_all = BIT(IIO_EV_INFO_VALUE),
+		.mask_separate = BIT(IIO_EV_INFO_ENABLE),
+	},
+};
+
+static const struct iio_chan_spec pac1921_channels[] = {
+	{
+		.type = IIO_VOLTAGE,
+		.info_mask_separate = BIT(IIO_CHAN_INFO_RAW) |
+				      BIT(IIO_CHAN_INFO_SCALE),
+		.info_mask_shared_by_all =
+			BIT(IIO_CHAN_INFO_OVERSAMPLING_RATIO) |
+			BIT(IIO_CHAN_INFO_SAMP_FREQ),
+		.info_mask_shared_by_all_available =
+			BIT(IIO_CHAN_INFO_OVERSAMPLING_RATIO),
+		.channel = PAC1921_CHAN_VBUS,
+		.address = PAC1921_REG_VBUS,
+		.scan_index = PAC1921_CHAN_VBUS,
+		.scan_type = {
+			.sign = 'u',
+			.realbits = 10,
+			.storagebits = 16,
+			.endianness = IIO_CPU
+		},
+		.indexed = 1,
+		.event_spec = pac1921_overflow_event,
+		.num_event_specs = ARRAY_SIZE(pac1921_overflow_event),
+		.ext_info = pac1921_ext_info_voltage,
+	},
+	{
+		.type = IIO_VOLTAGE,
+		.info_mask_separate = BIT(IIO_CHAN_INFO_RAW) |
+				      BIT(IIO_CHAN_INFO_SCALE),
+		.info_mask_shared_by_all =
+			BIT(IIO_CHAN_INFO_OVERSAMPLING_RATIO) |
+			BIT(IIO_CHAN_INFO_SAMP_FREQ),
+		.info_mask_shared_by_all_available =
+			BIT(IIO_CHAN_INFO_OVERSAMPLING_RATIO),
+		.channel = PAC1921_CHAN_VSENSE,
+		.address = PAC1921_REG_VSENSE,
+		.scan_index = PAC1921_CHAN_VSENSE,
+		.scan_type = {
+			.sign = 'u',
+			.realbits = 10,
+			.storagebits = 16,
+			.endianness = IIO_CPU
+		},
+		.indexed = 1,
+		.event_spec = pac1921_overflow_event,
+		.num_event_specs = ARRAY_SIZE(pac1921_overflow_event),
+		.ext_info = pac1921_ext_info_voltage,
+	},
+	{
+		.type = IIO_CURRENT,
+		.info_mask_separate = BIT(IIO_CHAN_INFO_RAW) |
+				      BIT(IIO_CHAN_INFO_SCALE),
+		.info_mask_shared_by_all =
+			BIT(IIO_CHAN_INFO_OVERSAMPLING_RATIO) |
+			BIT(IIO_CHAN_INFO_SAMP_FREQ),
+		.info_mask_shared_by_all_available =
+			BIT(IIO_CHAN_INFO_OVERSAMPLING_RATIO),
+		.channel = PAC1921_CHAN_CURRENT,
+		.address = PAC1921_REG_VSENSE,
+		.scan_index = PAC1921_CHAN_CURRENT,
+		.scan_type = {
+			.sign = 'u',
+			.realbits = 10,
+			.storagebits = 16,
+			.endianness = IIO_CPU
+		},
+		.event_spec = pac1921_overflow_event,
+		.num_event_specs = ARRAY_SIZE(pac1921_overflow_event),
+		.ext_info = pac1921_ext_info_current,
+	},
+	{
+		.type = IIO_POWER,
+		.info_mask_separate = BIT(IIO_CHAN_INFO_RAW) |
+				      BIT(IIO_CHAN_INFO_SCALE),
+		.info_mask_shared_by_all =
+			BIT(IIO_CHAN_INFO_OVERSAMPLING_RATIO) |
+			BIT(IIO_CHAN_INFO_SAMP_FREQ),
+		.info_mask_shared_by_all_available =
+			BIT(IIO_CHAN_INFO_OVERSAMPLING_RATIO),
+		.channel = PAC1921_CHAN_POWER,
+		.address = PAC1921_REG_VPOWER,
+		.scan_index = PAC1921_CHAN_POWER,
+		.scan_type = {
+			.sign = 'u',
+			.realbits = 10,
+			.storagebits = 16,
+			.endianness = IIO_CPU
+		},
+		.event_spec = pac1921_overflow_event,
+		.num_event_specs = ARRAY_SIZE(pac1921_overflow_event),
+	},
+	IIO_CHAN_SOFT_TIMESTAMP(PAC1921_NUM_MEAS_CHANS),
+};
+
+static irqreturn_t pac1921_trigger_handler(int irq, void *p)
+{
+	struct iio_poll_func *pf = p;
+	struct iio_dev *idev = pf->indio_dev;
+	struct pac1921_priv *priv = iio_priv(idev);
+	int ret;
+	int bit;
+	int ch = 0;
+
+	guard(mutex)(&priv->lock);
+
+	if (!pac1921_data_ready(priv))
+		goto done;
+
+	ret = pac1921_check_push_overflow(idev, pf->timestamp);
+	if (ret)
+		goto done;
+
+	for_each_set_bit(bit, idev->active_scan_mask, idev->masklength) {
+		u16 val;
+
+		ret = pac1921_read_res(priv, idev->channels[ch].address, &val);
+		if (ret)
+			goto done;
+
+		priv->scan.chan[ch++] = val;
+	}
+
+	iio_push_to_buffers_with_timestamp(idev, &priv->scan, pf->timestamp);
+
+done:
+	iio_trigger_notify_done(idev->trig);
+
+	return IRQ_HANDLED;
+}
+
+/*
+ * Initialize device by writing initial configuration and putting it into
+ * integration state.
+ *
+ * Must be called with lock held when called after first initialization
+ * (e.g. from pm resume)
+ */
+static int pac1921_init(struct pac1921_priv *priv)
+{
+	unsigned int val;
+	int ret;
+
+	/* Enter READ state before configuration */
+	ret = regmap_update_bits(priv->regmap, PAC1921_REG_INT_CFG,
+				 PAC1921_INT_CFG_INTEN, 0);
+	if (ret)
+		return ret;
+
+	/* Configure gains, use 14-bits measurement resolution (HW default) */
+	val = (u8)FIELD_PREP(PAC1921_GAIN_DI_GAIN_MASK, priv->di_gain) |
+	      (u8)FIELD_PREP(PAC1921_GAIN_DV_GAIN_MASK, priv->dv_gain);
+	ret = regmap_write(priv->regmap, PAC1921_REG_GAIN_CFG, val);
+	if (ret)
+		return ret;
+
+	/*
+	 * Configure integration:
+	 * - num of integration samples
+	 * - filters enabled (HW default)
+	 * - set READ/INT pin override (RIOV) to control operation mode via
+	 *   register instead of pin
+	 */
+	val = (u8)FIELD_PREP(PAC1921_INT_CFG_SMPL_MASK, priv->n_samples) |
+	      PAC1921_INT_CFG_VSFEN | PAC1921_INT_CFG_VBFEN |
+	      PAC1921_INT_CFG_RIOV;
+	ret = regmap_write(priv->regmap, PAC1921_REG_INT_CFG, val);
+	if (ret)
+		return ret;
+
+	/*
+	 * Init control register:
+	 * - VPower free run integration mode
+	 * - OUT pin full scale range: 3V (HW detault)
+	 * - no timeout, no sleep, no sleep override, no recalc (HW defaults)
+	 */
+	val = (u8)FIELD_PREP(PAC1921_CONTROL_MXSL_MASK,
+			     PAC1921_MXSL_VPOWER_FREE_RUN);
+	ret = regmap_write(priv->regmap, PAC1921_REG_CONTROL, val);
+	if (ret)
+		return ret;
+
+	/* Enable integration */
+	ret = regmap_update_bits(priv->regmap, PAC1921_REG_INT_CFG,
+				 PAC1921_INT_CFG_INTEN, PAC1921_INT_CFG_INTEN);
+	if (ret)
+		return ret;
+
+	priv->first_integr_started = true;
+	priv->integr_started_time_jiffies = jiffies;
+	priv->integr_period_usecs = pac1921_int_periods_usecs[priv->n_samples];
+
+	return 0;
+}
+
+static int pac1921_suspend(struct device *dev)
+{
+	struct iio_dev *indio_dev = dev_get_drvdata(dev);
+	struct pac1921_priv *priv = iio_priv(indio_dev);
+	int ret;
+
+	guard(mutex)(&priv->lock);
+
+	priv->first_integr_started = false;
+	priv->first_integr_done = false;
+
+	ret = regmap_update_bits(priv->regmap, PAC1921_REG_INT_CFG,
+				     PAC1921_INT_CFG_INTEN, 0);
+	if (ret)
+		return ret;
+
+	ret = regmap_update_bits(priv->regmap, PAC1921_REG_CONTROL,
+				 PAC1921_CONTROL_SLEEP, PAC1921_CONTROL_SLEEP);
+	if (ret)
+		return ret;
+
+	return regulator_disable(priv->vdd);
+
+}
+
+static int pac1921_resume(struct device *dev)
+{
+	struct iio_dev *indio_dev = dev_get_drvdata(dev);
+	struct pac1921_priv *priv = iio_priv(indio_dev);
+	int ret;
+
+	guard(mutex)(&priv->lock);
+
+	ret = regulator_enable(priv->vdd);
+	if (ret)
+		return ret;
+
+	msleep(PAC1921_POWERUP_TIME_MS);
+
+	return pac1921_init(priv);
+}
+
+static DEFINE_SIMPLE_DEV_PM_OPS(pac1921_pm_ops, pac1921_suspend,
+				pac1921_resume);
+
+static void pac1921_regulator_disable(void *data)
+{
+	struct regulator *regulator = data;
+
+	regulator_disable(regulator);
+}
+
+static int pac1921_probe(struct i2c_client *client)
+{
+	const struct i2c_device_id *id = i2c_client_get_device_id(client);
+	struct device *dev = &client->dev;
+	struct pac1921_priv *priv;
+	struct iio_dev *indio_dev;
+	int ret;
+
+	indio_dev = devm_iio_device_alloc(dev, sizeof(*priv));
+	if (!indio_dev)
+		return -ENOMEM;
+
+	priv = iio_priv(indio_dev);
+	priv->client = client;
+	i2c_set_clientdata(client, indio_dev);
+
+	priv->regmap = devm_regmap_init_i2c(client, &pac1921_regmap_config);
+	if (IS_ERR(priv->regmap))
+		dev_err_probe(dev, (int)PTR_ERR(priv->regmap),
+			      "Cannot initialize register map\n");
+
+	devm_mutex_init(dev, &priv->lock);
+
+	priv->dv_gain = PAC1921_DEFAULT_DV_GAIN;
+	priv->di_gain = PAC1921_DEFAULT_DI_GAIN;
+	priv->n_samples = PAC1921_DEFAULT_NUM_SAMPLES;
+
+	ret = device_property_read_u32(dev, "shunt-resistor-micro-ohms",
+				       &priv->rshunt_uohm);
+	if (ret)
+		return dev_err_probe(dev, ret,
+				     "Cannot read shunt resistor property\n");
+	if (priv->rshunt_uohm == 0 || priv->rshunt_uohm > INT_MAX)
+		return dev_err_probe(dev, -EINVAL,
+				     "Invalid shunt resistor: %u\n",
+				     priv->rshunt_uohm);
+
+	pac1921_calc_current_scales(priv);
+
+	priv->vdd = devm_regulator_get(dev, "vdd");
+	if (IS_ERR(priv->vdd))
+		return dev_err_probe(dev, (int)PTR_ERR(priv->vdd),
+				     "Cannot get vdd regulator\n");
+
+	ret = regulator_enable(priv->vdd);
+	if (ret)
+		return dev_err_probe(dev, ret, "Cannot enable vdd regulator\n");
+
+	ret = devm_add_action_or_reset(dev, pac1921_regulator_disable,
+				       priv->vdd);
+	if (ret)
+		return dev_err_probe(
+			dev, ret,
+			"Cannot add action for vdd regulator disposal\n");
+
+	msleep(PAC1921_POWERUP_TIME_MS);
+
+	ret = pac1921_init(priv);
+	if (ret)
+		return dev_err_probe(dev, ret, "Cannot initialize device\n");
+
+	priv->iio_info = pac1921_iio;
+
+	indio_dev->name = id->name;
+	indio_dev->info = &priv->iio_info;
+	indio_dev->modes = INDIO_DIRECT_MODE;
+	indio_dev->channels = pac1921_channels;
+	indio_dev->num_channels = ARRAY_SIZE(pac1921_channels);
+
+	ret = devm_iio_triggered_buffer_setup(dev, indio_dev,
+					      &iio_pollfunc_store_time,
+					      &pac1921_trigger_handler, NULL);
+	if (ret)
+		return dev_err_probe(dev, ret,
+				     "Cannot setup IIO triggered buffer\n");
+
+	ret = devm_iio_device_register(dev, indio_dev);
+	if (ret)
+		return dev_err_probe(dev, ret, "Cannot register IIO device\n");
+
+	return 0;
+}
+
+static const struct i2c_device_id pac1921_id[] = {
+	{ .name = "pac1921", 0 },
+	{}
+};
+MODULE_DEVICE_TABLE(i2c, pac1921_id);
+
+static const struct of_device_id pac1921_of_match[] = {
+	{ .compatible = "microchip,pac1921" },
+	{}
+};
+MODULE_DEVICE_TABLE(of, pac1921_of_match);
+
+static struct i2c_driver pac1921_driver = {
+	.driver	 = {
+		.name = "pac1921",
+		.pm = pm_sleep_ptr(&pac1921_pm_ops),
+		.of_match_table = pac1921_of_match,
+	},
+	.probe = pac1921_probe,
+	.id_table = pac1921_id,
+};
+
+module_i2c_driver(pac1921_driver);
+
+MODULE_AUTHOR("Matteo Martelli <matteomartelli3@gmail.com>");
+MODULE_DESCRIPTION("IIO driver for PAC1921 High-Side Power/Current Monitor");
+MODULE_LICENSE("GPL");

-- 
2.45.2


