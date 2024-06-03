Return-Path: <devicetree+bounces-71693-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 330018D79C1
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2024 03:24:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9CE3E1F22E6A
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2024 01:24:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2074D4A05;
	Mon,  3 Jun 2024 01:23:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=analog.com header.i=@analog.com header.b="Vd6u7nDZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-00128a01.pphosted.com (mx0a-00128a01.pphosted.com [148.163.135.77])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9CD9208CA;
	Mon,  3 Jun 2024 01:23:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.135.77
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717377801; cv=none; b=A36/hzW13EgI0QXVWa0ztGdxI74lVkIXAxski5aEzNiKudO5RM2eJICznVjfKfz1fe+8LAKaXb5aT31SMa0yRW4MDyOvdC4LOSKUMlIs5e7fBhIFl8+C7YQqNYSaoWmrxNUWXCz0lQD5zoppJI7ozeW02RZ/zNWfD6fXUQpbzYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717377801; c=relaxed/simple;
	bh=j6kHiBP+haRZ1PTfxDrRDNwYbWXaSN1uVvaibXwI2To=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Exawp9XY/+MLhL63TGT/MEY9TQ6Xqy/El6k5lEldvRMWW7yd9cSjWc3isTrpZ1huT0Fabuz5uKB0zOcrk4GMpz3zqztgWlSCmNJyjhvxFRtMExOU+kPkYfEVAylxoGEvb6WVWPR9YuD3nVYZwWvY8KZpCn8Vz+WJeCjFkEPtWyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=analog.com; spf=pass smtp.mailfrom=analog.com; dkim=pass (2048-bit key) header.d=analog.com header.i=@analog.com header.b=Vd6u7nDZ; arc=none smtp.client-ip=148.163.135.77
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=analog.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=analog.com
Received: from pps.filterd (m0375855.ppops.net [127.0.0.1])
	by mx0b-00128a01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 452Hjib9011843;
	Sun, 2 Jun 2024 21:23:03 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=analog.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=DKIM; bh=5ZrEk
	AS/NWAuU43/b/KT4+1HVAVc0Fotvl/BLxav8/s=; b=Vd6u7nDZf1/x6aOlNKCVW
	YSfwTyGZEs4BhKbhYwNBDcn4bFp9dCMSZ6MmPoluR41WuOHNMS7ruJ3WdH9l6aCv
	TgVhoRNrIZwHmN0Fr4jrE9dabeU2n/QdUpOeVYoQ5hd+56qXZcbdcRvwZbk/L04W
	DsnKzA9sak2ZWK0xr2L0jvozocRE+I+FJ3FzNHlm1g2KF2ujLD1MlwdgKS3lCCma
	6C+7EkfawZvwXGxycIieR8yRwIUy9xPLEX2p037+RteY33hXmYxJWm+wgakFihsb
	cJyMmdFePp9Y3y6CFH8DX08R4W0NjzxfSSZY2DQHlvYqDEF+5njgi7FrT690pP8A
	w==
Received: from nwd2mta3.analog.com ([137.71.173.56])
	by mx0b-00128a01.pphosted.com (PPS) with ESMTPS id 3yghydt1pt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sun, 02 Jun 2024 21:23:02 -0400 (EDT)
Received: from ASHBMBX9.ad.analog.com (ASHBMBX9.ad.analog.com [10.64.17.10])
	by nwd2mta3.analog.com (8.14.7/8.14.7) with ESMTP id 4531N1Dm049857
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Sun, 2 Jun 2024 21:23:01 -0400
Received: from ASHBCASHYB4.ad.analog.com (10.64.17.132) by
 ASHBMBX9.ad.analog.com (10.64.17.10) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.14; Sun, 2 Jun 2024 21:23:00 -0400
Received: from ASHBMBX8.ad.analog.com (10.64.17.5) by
 ASHBCASHYB4.ad.analog.com (10.64.17.132) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.14; Sun, 2 Jun 2024 21:23:00 -0400
Received: from zeus.spd.analog.com (10.66.68.11) by ashbmbx8.ad.analog.com
 (10.64.17.5) with Microsoft SMTP Server id 15.2.986.14 via Frontend
 Transport; Sun, 2 Jun 2024 21:23:00 -0400
Received: from kim-VirtualBox.ad.analog.com (KPALLER2-L03.ad.analog.com [10.116.242.67])
	by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 4531MFWT007966;
	Sun, 2 Jun 2024 21:22:49 -0400
From: Kim Seer Paller <kimseer.paller@analog.com>
To: <linux-kernel@vger.kernel.org>, <linux-iio@vger.kernel.org>,
        <devicetree@vger.kernel.org>
CC: Jonathan Cameron <jic23@kernel.org>,
        David Lechner
	<dlechner@baylibre.com>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Liam Girdwood
	<lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Dimitri Fedrau
	<dima.fedrau@gmail.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        "Rob
 Herring" <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
        "Michael
 Hennerich" <michael.hennerich@analog.com>,
        =?UTF-8?q?Nuno=20S=C3=A1?=
	<noname.nuno@gmail.com>,
        Kim Seer Paller <kimseer.paller@analog.com>,
        "kernel
 test robot" <lkp@intel.com>
Subject: [PATCH v3 5/5] iio: dac: ltc2664: Add driver for LTC2664 and LTC2672
Date: Mon, 3 Jun 2024 09:22:00 +0800
Message-ID: <20240603012200.16589-6-kimseer.paller@analog.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240603012200.16589-1-kimseer.paller@analog.com>
References: <20240603012200.16589-1-kimseer.paller@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ADIRuleOP-NewSCL: Rule Triggered
X-Proofpoint-GUID: 5d0nEPRS-twkpCdYnMkX6bMRKdLFkZ2H
X-Proofpoint-ORIG-GUID: 5d0nEPRS-twkpCdYnMkX6bMRKdLFkZ2H
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.650,FMLib:17.12.28.16
 definitions=2024-06-02_15,2024-05-30_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 mlxscore=0
 spamscore=0 bulkscore=0 suspectscore=0 phishscore=0 priorityscore=1501
 impostorscore=0 mlxlogscore=999 clxscore=1011 lowpriorityscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2405170001 definitions=main-2406030010

LTC2664 4 channel, 16 bit Voltage Output SoftSpan DAC
LTC2672 5 channel, 16 bit Current Output Softspan DAC

Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202405241141.kYcxrSem-lkp@intel.com/
Co-developed-by: Michael Hennerich <michael.hennerich@analog.com>
Signed-off-by: Michael Hennerich <michael.hennerich@analog.com>
Signed-off-by: Kim Seer Paller <kimseer.paller@analog.com>
---
 MAINTAINERS               |   1 +
 drivers/iio/dac/Kconfig   |  11 +
 drivers/iio/dac/Makefile  |   1 +
 drivers/iio/dac/ltc2664.c | 806 ++++++++++++++++++++++++++++++++++++++
 4 files changed, 819 insertions(+)
 create mode 100644 drivers/iio/dac/ltc2664.c

diff --git a/MAINTAINERS b/MAINTAINERS
index ac1e29e26f31..1262e1231923 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -13071,6 +13071,7 @@ S:	Supported
 W:	https://ez.analog.com/linux-software-drivers
 F:	Documentation/devicetree/bindings/iio/dac/adi,ltc2664.yaml
 F:	Documentation/devicetree/bindings/iio/dac/adi,ltc2672.yaml
+F:	drivers/iio/dac/ltc2664.c
 
 LTC2688 IIO DAC DRIVER
 M:	Nuno Sá <nuno.sa@analog.com>
diff --git a/drivers/iio/dac/Kconfig b/drivers/iio/dac/Kconfig
index 3c2bf620f00f..3d065c157605 100644
--- a/drivers/iio/dac/Kconfig
+++ b/drivers/iio/dac/Kconfig
@@ -370,6 +370,17 @@ config LTC2632
 	  To compile this driver as a module, choose M here: the
 	  module will be called ltc2632.
 
+config LTC2664
+	tristate "Analog Devices LTC2664 and LTC2672 DAC SPI driver"
+	depends on SPI
+	select REGMAP
+	help
+	  Say yes here to build support for Analog Devices
+	  LTC2664 and LTC2672 converters (DAC).
+
+	  To compile this driver as a module, choose M here: the
+	  module will be called ltc2664.
+
 config M62332
 	tristate "Mitsubishi M62332 DAC driver"
 	depends on I2C
diff --git a/drivers/iio/dac/Makefile b/drivers/iio/dac/Makefile
index 8432a81a19dc..2cf148f16306 100644
--- a/drivers/iio/dac/Makefile
+++ b/drivers/iio/dac/Makefile
@@ -37,6 +37,7 @@ obj-$(CONFIG_DS4424) += ds4424.o
 obj-$(CONFIG_LPC18XX_DAC) += lpc18xx_dac.o
 obj-$(CONFIG_LTC1660) += ltc1660.o
 obj-$(CONFIG_LTC2632) += ltc2632.o
+obj-$(CONFIG_LTC2664) += ltc2664.o
 obj-$(CONFIG_LTC2688) += ltc2688.o
 obj-$(CONFIG_M62332) += m62332.o
 obj-$(CONFIG_MAX517) += max517.o
diff --git a/drivers/iio/dac/ltc2664.c b/drivers/iio/dac/ltc2664.c
new file mode 100644
index 000000000000..ef5d7d6fec5a
--- /dev/null
+++ b/drivers/iio/dac/ltc2664.c
@@ -0,0 +1,806 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * LTC2664 4 channel, 16 bit Voltage Output SoftSpan DAC driver
+ * LTC2672 5 channel, 16 bit Current Output Softspan DAC driver
+ *
+ * Copyright 2024 Analog Devices Inc.
+ */
+
+#include <linux/bitfield.h>
+#include <linux/cleanup.h>
+#include <linux/device.h>
+#include <linux/gpio/consumer.h>
+#include <linux/iio/iio.h>
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/mod_devicetable.h>
+#include <linux/mutex.h>
+#include <linux/property.h>
+#include <linux/regmap.h>
+#include <linux/regulator/consumer.h>
+#include <linux/spi/spi.h>
+
+#define LTC2664_CMD_WRITE_N(n)		(0x00 + (n))
+#define LTC2664_CMD_UPDATE_N(n)		(0x10 + (n))
+#define LTC2664_CMD_WRITE_N_UPDATE_ALL	0x20
+#define LTC2664_CMD_WRITE_N_UPDATE_N(n)	(0x30 + (n))
+#define LTC2664_CMD_POWER_DOWN_N(n)	(0x40 + (n))
+#define LTC2664_CMD_POWER_DOWN_ALL	0x50
+#define LTC2664_CMD_SPAN_N(n)		(0x60 + (n))
+#define LTC2664_CMD_CONFIG		0x70
+#define LTC2664_CMD_MUX			0xB0
+#define LTC2664_CMD_TOGGLE_SEL		0xC0
+#define LTC2664_CMD_GLOBAL_TOGGLE	0xD0
+#define LTC2664_CMD_NO_OPERATION	0xF0
+#define LTC2664_REF_DISABLE		0x0001
+#define LTC2664_MSPAN_SOFTSPAN		7
+
+#define LTC2672_MAX_CHANNEL		5
+#define LTC2672_MAX_SPAN		7
+#define LTC2672_SCALE_MULTIPLIER(n)	(50 * BIT(n))
+
+enum ltc2664_ids {
+	LTC2664,
+	LTC2672,
+};
+
+enum {
+	LTC2664_SPAN_RANGE_0V_5V,
+	LTC2664_SPAN_RANGE_0V_10V,
+	LTC2664_SPAN_RANGE_M5V_5V,
+	LTC2664_SPAN_RANGE_M10V_10V,
+	LTC2664_SPAN_RANGE_M2V5_2V5,
+};
+
+enum {
+	LTC2664_INPUT_A,
+	LTC2664_INPUT_B,
+	LTC2664_INPUT_B_AVAIL,
+	LTC2664_POWERDOWN,
+	LTC2664_POWERDOWN_MODE,
+	LTC2664_TOGGLE_EN,
+	LTC2664_GLOBAL_TOGGLE,
+};
+
+static const u16 ltc2664_mspan_lut[8][2] = {
+	{ LTC2664_SPAN_RANGE_M10V_10V, 32768 }, /* MPS2=0, MPS1=0, MSP0=0 (0)*/
+	{ LTC2664_SPAN_RANGE_M5V_5V, 32768 }, /* MPS2=0, MPS1=0, MSP0=1 (1)*/
+	{ LTC2664_SPAN_RANGE_M2V5_2V5, 32768 }, /* MPS2=0, MPS1=1, MSP0=0 (2)*/
+	{ LTC2664_SPAN_RANGE_0V_10V, 0 }, /* MPS2=0, MPS1=1, MSP0=1 (3)*/
+	{ LTC2664_SPAN_RANGE_0V_10V, 32768 }, /* MPS2=1, MPS1=0, MSP0=0 (4)*/
+	{ LTC2664_SPAN_RANGE_0V_5V, 0 }, /* MPS2=1, MPS1=0, MSP0=1 (5)*/
+	{ LTC2664_SPAN_RANGE_0V_5V, 32768 }, /* MPS2=1, MPS1=1, MSP0=0 (6)*/
+	{ LTC2664_SPAN_RANGE_0V_5V, 0 } /* MPS2=1, MPS1=1, MSP0=1 (7)*/
+};
+
+struct ltc2664_state;
+
+struct ltc2664_chip_info {
+	enum ltc2664_ids id;
+	const char *name;
+	int (*scale_get)(const struct ltc2664_state *st, int c);
+	int (*offset_get)(const struct ltc2664_state *st, int c);
+	int measurement_type;
+	unsigned int num_channels;
+	const struct iio_chan_spec *iio_chan;
+	const int (*span_helper)[2];
+	unsigned int num_span;
+	unsigned int internal_vref;
+	bool manual_span_support;
+	bool rfsadj_support;
+};
+
+struct ltc2664_chan {
+	bool toggle_chan;
+	bool powerdown;
+	u8 span;
+	u16 raw[2]; /* A/B */
+};
+
+struct ltc2664_state {
+	struct spi_device *spi;
+	struct regmap *regmap;
+	struct ltc2664_chan channels[LTC2672_MAX_CHANNEL];
+	/* lock to protect against multiple access to the device and shared data */
+	struct mutex lock;
+	const struct ltc2664_chip_info *chip_info;
+	struct iio_chan_spec *iio_channels;
+	int vref;
+	u32 toggle_sel;
+	u32 global_toggle;
+	u32 rfsadj;
+};
+
+static const int ltc2664_span_helper[][2] = {
+	{ 0, 5000 },
+	{ 0, 10000 },
+	{ -5000, 5000 },
+	{ -10000, 10000 },
+	{ -2500, 2500 },
+};
+
+static const int ltc2672_span_helper[][2] = {
+	{ 0, 3125 },
+	{ 0, 6250 },
+	{ 0, 12500 },
+	{ 0, 25000 },
+	{ 0, 50000 },
+	{ 0, 100000 },
+	{ 0, 200000 },
+	{ 0, 300000 },
+};
+
+static int ltc2664_scale_get(const struct ltc2664_state *st, int c)
+{
+	const struct ltc2664_chan *chan = &st->channels[c];
+	const int (*span_helper)[2] = st->chip_info->span_helper;
+	int span, fs;
+
+	span = chan->span;
+	if (span < 0)
+		return span;
+
+	fs = span_helper[span][1] - span_helper[span][0];
+
+	return (fs / 2500) * st->vref;
+}
+
+static int ltc2672_scale_get(const struct ltc2664_state *st, int c)
+{
+	const struct ltc2664_chan *chan = &st->channels[c];
+	int span, fs;
+
+	span = chan->span;
+	if (span < 0)
+		return span;
+
+	fs = 1000 * st->vref / st->rfsadj;
+
+	if (span == LTC2672_MAX_SPAN)
+		return 4800 * fs;
+
+	return LTC2672_SCALE_MULTIPLIER(span) * fs;
+}
+
+static int ltc2664_offset_get(const struct ltc2664_state *st, int c)
+{
+	const struct ltc2664_chan *chan = &st->channels[c];
+	int span;
+
+	span = chan->span;
+	if (span < 0)
+		return span;
+
+	if (st->chip_info->span_helper[span][0] < 0)
+		return -32768;
+
+	return 0;
+}
+
+static int ltc2672_offset_get(const struct ltc2664_state *st, int c)
+{
+	const struct ltc2664_chan *chan = &st->channels[c];
+	int span;
+
+	span = chan->span;
+	if (span < 0)
+		return span;
+
+	if (st->chip_info->span_helper[span][1] < 0)
+		return -32768;
+
+	return st->chip_info->span_helper[span][1] / 250;
+}
+
+static int ltc2664_dac_code_write(struct ltc2664_state *st, u32 chan, u32 input,
+				  u16 code)
+{
+	struct ltc2664_chan *c = &st->channels[chan];
+	int ret, reg;
+
+	guard(mutex)(&st->lock);
+	/* select the correct input register to write to */
+	if (c->toggle_chan) {
+		ret = regmap_write(st->regmap, LTC2664_CMD_TOGGLE_SEL,
+				   input << chan);
+		if (ret)
+			return ret;
+	}
+	/*
+	 * If in toggle mode the dac should be updated by an
+	 * external signal (or sw toggle) and not here.
+	 */
+	if (st->toggle_sel & BIT(chan))
+		reg = LTC2664_CMD_WRITE_N(chan);
+	else
+		reg = LTC2664_CMD_WRITE_N_UPDATE_N(chan);
+
+	ret = regmap_write(st->regmap, reg, code);
+	if (ret)
+		return ret;
+
+	c->raw[input] = code;
+
+	if (c->toggle_chan) {
+		ret = regmap_write(st->regmap, LTC2664_CMD_TOGGLE_SEL,
+				   st->toggle_sel);
+		if (ret)
+			return ret;
+	}
+
+	return ret;
+}
+
+static int ltc2664_dac_code_read(struct ltc2664_state *st, u32 chan, u32 input,
+				 u32 *code)
+{
+	guard(mutex)(&st->lock);
+	*code = st->channels[chan].raw[input];
+
+	return 0;
+}
+
+static const int ltc2664_raw_range[] = {0, 1, U16_MAX};
+
+static int ltc2664_read_avail(struct iio_dev *indio_dev,
+			      struct iio_chan_spec const *chan,
+			      const int **vals, int *type, int *length,
+			      long info)
+{
+	switch (info) {
+	case IIO_CHAN_INFO_RAW:
+		*vals = ltc2664_raw_range;
+		*type = IIO_VAL_INT;
+
+		return IIO_AVAIL_RANGE;
+	default:
+		return -EINVAL;
+	}
+}
+
+static int ltc2664_read_raw(struct iio_dev *indio_dev,
+			    struct iio_chan_spec const *chan, int *val,
+			    int *val2, long info)
+{
+	struct ltc2664_state *st = iio_priv(indio_dev);
+	int ret;
+
+	switch (info) {
+	case IIO_CHAN_INFO_RAW:
+		ret = ltc2664_dac_code_read(st, chan->channel,
+					    LTC2664_INPUT_A, val);
+		if (ret)
+			return ret;
+
+		return IIO_VAL_INT;
+	case IIO_CHAN_INFO_OFFSET:
+		*val = st->chip_info->offset_get(st, chan->channel);
+
+		return IIO_VAL_INT;
+	case IIO_CHAN_INFO_SCALE:
+		*val = st->chip_info->scale_get(st, chan->channel);
+
+		*val2 = 16;
+		return IIO_VAL_FRACTIONAL_LOG2;
+	default:
+		return -EINVAL;
+	}
+}
+
+static int ltc2664_write_raw(struct iio_dev *indio_dev,
+			     struct iio_chan_spec const *chan, int val,
+			     int val2, long info)
+{
+	struct ltc2664_state *st = iio_priv(indio_dev);
+
+	switch (info) {
+	case IIO_CHAN_INFO_RAW:
+		if (val > U16_MAX || val < 0)
+			return -EINVAL;
+
+		return ltc2664_dac_code_write(st, chan->channel,
+					      LTC2664_INPUT_A, val);
+	default:
+		return -EINVAL;
+	}
+}
+
+static ssize_t ltc2664_reg_bool_get(struct iio_dev *indio_dev,
+				    uintptr_t private,
+				    const struct iio_chan_spec *chan,
+				    char *buf)
+{
+	struct ltc2664_state *st = iio_priv(indio_dev);
+	u32 val;
+
+	guard(mutex)(&st->lock);
+	switch (private) {
+	case LTC2664_POWERDOWN:
+		val = st->channels[chan->channel].powerdown;
+
+		return sysfs_emit(buf, "%u\n", val);
+	case LTC2664_POWERDOWN_MODE:
+		return sysfs_emit(buf, "42kohm_to_gnd\n");
+	case LTC2664_TOGGLE_EN:
+		val = !!(st->toggle_sel & BIT(chan->channel));
+
+		return sysfs_emit(buf, "%u\n", val);
+	case LTC2664_GLOBAL_TOGGLE:
+		val = st->global_toggle;
+
+		return sysfs_emit(buf, "%u\n", val);
+	default:
+		return -EINVAL;
+	}
+}
+
+static ssize_t ltc2664_reg_bool_set(struct iio_dev *indio_dev,
+				    uintptr_t private,
+				    const struct iio_chan_spec *chan,
+				    const char *buf, size_t len)
+{
+	struct ltc2664_state *st = iio_priv(indio_dev);
+	int ret;
+	bool en;
+
+	ret = kstrtobool(buf, &en);
+	if (ret)
+		return ret;
+
+	guard(mutex)(&st->lock);
+	switch (private) {
+	case LTC2664_POWERDOWN:
+		ret = regmap_write(st->regmap,
+				   en ? LTC2664_CMD_POWER_DOWN_N(chan->channel) :
+				   LTC2664_CMD_UPDATE_N(chan->channel), en);
+		if (ret)
+			return ret;
+
+		st->channels[chan->channel].powerdown = en;
+
+		return len;
+	case LTC2664_TOGGLE_EN:
+		if (en)
+			st->toggle_sel |= BIT(chan->channel);
+		else
+			st->toggle_sel &= ~BIT(chan->channel);
+
+		ret = regmap_write(st->regmap, LTC2664_CMD_TOGGLE_SEL,
+				   st->toggle_sel);
+		if (ret)
+			return ret;
+
+		return len;
+	case LTC2664_GLOBAL_TOGGLE:
+		ret = regmap_write(st->regmap, LTC2664_CMD_GLOBAL_TOGGLE, en);
+		if (ret)
+			return ret;
+
+		st->global_toggle = en;
+
+		return len;
+	default:
+		return -EINVAL;
+	}
+}
+
+static ssize_t ltc2664_dac_input_read(struct iio_dev *indio_dev,
+				      uintptr_t private,
+				      const struct iio_chan_spec *chan,
+				      char *buf)
+{
+	struct ltc2664_state *st = iio_priv(indio_dev);
+	int ret;
+	u32 val;
+
+	if (private == LTC2664_INPUT_B_AVAIL)
+		return sysfs_emit(buf, "[%u %u %u]\n", ltc2664_raw_range[0],
+				  ltc2664_raw_range[1],
+				  ltc2664_raw_range[2] / 4);
+
+	ret = ltc2664_dac_code_read(st, chan->channel, private, &val);
+	if (ret)
+		return ret;
+
+	return sysfs_emit(buf, "%u\n", val);
+}
+
+static ssize_t ltc2664_dac_input_write(struct iio_dev *indio_dev,
+				       uintptr_t private,
+				       const struct iio_chan_spec *chan,
+				       const char *buf, size_t len)
+{
+	struct ltc2664_state *st = iio_priv(indio_dev);
+	int ret;
+	u16 val;
+
+	if (private == LTC2664_INPUT_B_AVAIL)
+		return -EINVAL;
+
+	ret = kstrtou16(buf, 10, &val);
+	if (ret)
+		return ret;
+
+	ret = ltc2664_dac_code_write(st, chan->channel, private, val);
+	if (ret)
+		return ret;
+
+	return len;
+}
+
+static int ltc2664_reg_access(struct iio_dev *indio_dev,
+			      unsigned int reg,
+			      unsigned int writeval,
+			      unsigned int *readval)
+{
+	struct ltc2664_state *st = iio_priv(indio_dev);
+
+	if (readval)
+		return -EOPNOTSUPP;
+
+	return regmap_write(st->regmap, reg, writeval);
+}
+
+#define LTC2664_CHAN_EXT_INFO(_name, _what, _shared, _read, _write) {	\
+	.name = _name,							\
+	.read = (_read),						\
+	.write = (_write),						\
+	.private = (_what),						\
+	.shared = (_shared),						\
+}
+
+/*
+ * For toggle mode we only expose the symbol attr (sw_toggle) in case a TGPx is
+ * not provided in dts.
+ */
+static const struct iio_chan_spec_ext_info ltc2664_toggle_sym_ext_info[] = {
+	LTC2664_CHAN_EXT_INFO("raw0", LTC2664_INPUT_A, IIO_SEPARATE,
+			      ltc2664_dac_input_read, ltc2664_dac_input_write),
+	LTC2664_CHAN_EXT_INFO("raw1", LTC2664_INPUT_B, IIO_SEPARATE,
+			      ltc2664_dac_input_read, ltc2664_dac_input_write),
+	LTC2664_CHAN_EXT_INFO("powerdown", LTC2664_POWERDOWN, IIO_SEPARATE,
+			      ltc2664_reg_bool_get, ltc2664_reg_bool_set),
+	LTC2664_CHAN_EXT_INFO("powerdown_mode", LTC2664_POWERDOWN_MODE,
+			      IIO_SEPARATE, ltc2664_reg_bool_get, NULL),
+	LTC2664_CHAN_EXT_INFO("symbol", LTC2664_GLOBAL_TOGGLE, IIO_SEPARATE,
+			      ltc2664_reg_bool_get, ltc2664_reg_bool_set),
+	LTC2664_CHAN_EXT_INFO("toggle_en", LTC2664_TOGGLE_EN,
+			      IIO_SEPARATE, ltc2664_reg_bool_get,
+			      ltc2664_reg_bool_set),
+	{ }
+};
+
+static const struct iio_chan_spec_ext_info ltc2664_ext_info[] = {
+	LTC2664_CHAN_EXT_INFO("powerdown", LTC2664_POWERDOWN, IIO_SEPARATE,
+			      ltc2664_reg_bool_get, ltc2664_reg_bool_set),
+	LTC2664_CHAN_EXT_INFO("powerdown_mode", LTC2664_POWERDOWN_MODE,
+			      IIO_SEPARATE, ltc2664_reg_bool_get, NULL),
+	{ }
+};
+
+#define LTC2664_CHANNEL(_chan) {					\
+	.indexed = 1,							\
+	.output = 1,							\
+	.channel = (_chan),						\
+	.info_mask_separate = BIT(IIO_CHAN_INFO_SCALE) |		\
+		BIT(IIO_CHAN_INFO_OFFSET) | BIT(IIO_CHAN_INFO_RAW),	\
+	.info_mask_separate_available = BIT(IIO_CHAN_INFO_RAW),		\
+	.ext_info = ltc2664_ext_info,					\
+}
+
+static const struct iio_chan_spec ltc2664_channels[] = {
+	LTC2664_CHANNEL(0),
+	LTC2664_CHANNEL(1),
+	LTC2664_CHANNEL(2),
+	LTC2664_CHANNEL(3),
+};
+
+static const struct iio_chan_spec ltc2672_channels[] = {
+	LTC2664_CHANNEL(0),
+	LTC2664_CHANNEL(1),
+	LTC2664_CHANNEL(2),
+	LTC2664_CHANNEL(3),
+	LTC2664_CHANNEL(4),
+};
+
+static const struct ltc2664_chip_info ltc2664_chip = {
+	.id = LTC2664,
+	.name = "ltc2664",
+	.scale_get = ltc2664_scale_get,
+	.offset_get = ltc2664_offset_get,
+	.measurement_type = IIO_VOLTAGE,
+	.num_channels = ARRAY_SIZE(ltc2664_channels),
+	.iio_chan = ltc2664_channels,
+	.span_helper = ltc2664_span_helper,
+	.num_span = ARRAY_SIZE(ltc2664_span_helper),
+	.internal_vref = 2500,
+	.manual_span_support = true,
+	.rfsadj_support = false,
+};
+
+static const struct ltc2664_chip_info ltc2672_chip = {
+	.id = LTC2672,
+	.name = "ltc2672",
+	.scale_get = ltc2672_scale_get,
+	.offset_get = ltc2672_offset_get,
+	.measurement_type = IIO_CURRENT,
+	.num_channels = ARRAY_SIZE(ltc2672_channels),
+	.iio_chan = ltc2672_channels,
+	.span_helper = ltc2672_span_helper,
+	.num_span = ARRAY_SIZE(ltc2672_span_helper),
+	.internal_vref = 1250,
+	.manual_span_support = false,
+	.rfsadj_support = true,
+};
+
+static int ltc2664_set_span(const struct ltc2664_state *st, int min, int max,
+			    int chan)
+{
+	const struct ltc2664_chip_info *chip_info = st->chip_info;
+	const int (*span_helper)[2] = chip_info->span_helper;
+	int span, ret;
+
+	st->iio_channels[chan].type = chip_info->measurement_type;
+
+	for (span = 0; span < chip_info->num_span; span++) {
+		if (min == span_helper[span][0] && max == span_helper[span][1])
+			break;
+	}
+
+	if (span == chip_info->num_span)
+		return -EINVAL;
+
+	ret = regmap_write(st->regmap, LTC2664_CMD_SPAN_N(chan),
+			   (chip_info->id == LTC2672) ? span + 1 : span);
+	if (ret)
+		return ret;
+
+	return span;
+}
+
+static int ltc2664_channel_config(struct ltc2664_state *st)
+{
+	const struct ltc2664_chip_info *chip_info = st->chip_info;
+	struct device *dev = &st->spi->dev;
+	u32 reg, tmp[2], mspan;
+	int ret, span = 0;
+
+	mspan = LTC2664_MSPAN_SOFTSPAN;
+	ret = device_property_read_u32(dev, "adi,manual-span-operation-config",
+				       &mspan);
+	if (!ret) {
+		if (!chip_info->manual_span_support)
+			return dev_err_probe(dev, -EINVAL,
+			       "adi,manual-span-operation-config not supported\n");
+
+		if (mspan > ARRAY_SIZE(ltc2664_mspan_lut))
+			return dev_err_probe(dev, -EINVAL,
+			       "adi,manual-span-operation-config not in range\n");
+	}
+
+	st->rfsadj = 20000;
+	ret = device_property_read_u32(dev, "adi,rfsadj-ohms", &st->rfsadj);
+	if (!ret) {
+		if (!chip_info->rfsadj_support)
+			return dev_err_probe(dev, -EINVAL,
+					     "adi,rfsadj-ohms not supported\n");
+
+		if (st->rfsadj < 19000 || st->rfsadj > 41000)
+			return dev_err_probe(dev, -EINVAL,
+					     "adi,rfsadj-ohms not in range\n");
+	}
+
+	device_for_each_child_node_scoped(dev, child) {
+		struct ltc2664_chan *chan;
+
+		ret = fwnode_property_read_u32(child, "reg", &reg);
+		if (ret)
+			return dev_err_probe(dev, ret,
+					     "Failed to get reg property\n");
+
+		if (reg >= chip_info->num_channels)
+			return dev_err_probe(dev, -EINVAL,
+					     "reg bigger than: %d\n",
+					     chip_info->num_channels);
+
+		chan = &st->channels[reg];
+
+		if (fwnode_property_read_bool(child, "adi,toggle-mode")) {
+			chan->toggle_chan = true;
+			/* assume sw toggle ABI */
+			st->iio_channels[reg].ext_info = ltc2664_toggle_sym_ext_info;
+
+			/*
+			 * Clear IIO_CHAN_INFO_RAW bit as toggle channels expose
+			 * out_voltage/current_raw{0|1} files.
+			 */
+			__clear_bit(IIO_CHAN_INFO_RAW,
+				    &st->iio_channels[reg].info_mask_separate);
+		}
+
+		chan->raw[0] = ltc2664_mspan_lut[mspan][1];
+		chan->raw[1] = ltc2664_mspan_lut[mspan][1];
+
+		chan->span = ltc2664_mspan_lut[mspan][0];
+
+		ret = fwnode_property_read_u32_array(child, "adi,output-range-microvolt",
+						     tmp, ARRAY_SIZE(tmp));
+		if (!ret && mspan == LTC2664_MSPAN_SOFTSPAN) {
+			chan->span = ltc2664_set_span(st, tmp[0] / 1000,
+						      tmp[1] / 1000, reg);
+			if (span < 0)
+				return dev_err_probe(dev, span,
+						     "Failed to set span\n");
+
+		}
+
+		ret = fwnode_property_read_u32(child,
+					       "adi,output-range-microamp",
+					       &tmp[0]);
+		if (!ret) {
+			chan->span = ltc2664_set_span(st, 0, tmp[0] / 1000, reg);
+			if (span < 0)
+				return dev_err_probe(dev, span,
+						     "Failed to set span\n");
+		}
+	}
+
+	return 0;
+}
+
+static int ltc2664_setup(struct ltc2664_state *st, struct regulator *vref)
+{
+	const struct ltc2664_chip_info *chip_info = st->chip_info;
+	struct gpio_desc *gpio;
+	int ret;
+
+	/* If we have a clr/reset pin, use that to reset the chip. */
+	gpio = devm_gpiod_get_optional(&st->spi->dev, "reset", GPIOD_OUT_HIGH);
+	if (IS_ERR(gpio))
+		return dev_err_probe(&st->spi->dev, PTR_ERR(gpio),
+				     "Failed to get reset gpio");
+	if (gpio) {
+		usleep_range(1000, 1200);
+		gpiod_set_value_cansleep(gpio, 0);
+	}
+
+	/*
+	 * Duplicate the default channel configuration as it can change during
+	 * @ltc2664_channel_config()
+	 */
+	st->iio_channels = devm_kmemdup(&st->spi->dev, chip_info->iio_chan,
+					(chip_info->num_channels + 1) *
+					sizeof(*chip_info->iio_chan),
+					GFP_KERNEL);
+
+	ret = ltc2664_channel_config(st);
+	if (ret)
+		return ret;
+
+	if (!vref)
+		return 0;
+
+	return regmap_set_bits(st->regmap, LTC2664_CMD_CONFIG, LTC2664_REF_DISABLE);
+}
+
+static void ltc2664_disable_regulator(void *regulator)
+{
+	regulator_disable(regulator);
+}
+
+static const struct regmap_config ltc2664_regmap_config = {
+	.reg_bits = 8,
+	.val_bits = 16,
+	.max_register = LTC2664_CMD_NO_OPERATION,
+};
+
+static const struct iio_info ltc2664_info = {
+	.write_raw = ltc2664_write_raw,
+	.read_raw = ltc2664_read_raw,
+	.read_avail = ltc2664_read_avail,
+	.debugfs_reg_access = ltc2664_reg_access,
+};
+
+static int ltc2664_probe(struct spi_device *spi)
+{
+	static const char * const regulators[] = { "vcc", "iovcc", "v-neg" };
+	const struct ltc2664_chip_info *chip_info;
+	struct device *dev = &spi->dev;
+	struct regulator *vref_reg;
+	struct iio_dev *indio_dev;
+	struct ltc2664_state *st;
+	int ret;
+
+	indio_dev = devm_iio_device_alloc(dev, sizeof(*st));
+	if (!indio_dev)
+		return -ENOMEM;
+
+	st = iio_priv(indio_dev);
+	st->spi = spi;
+
+	chip_info = spi_get_device_match_data(spi);
+	if (!chip_info)
+		return -ENOMEM;
+
+	st->chip_info = chip_info;
+
+	mutex_init(&st->lock);
+
+	st->regmap = devm_regmap_init_spi(spi, &ltc2664_regmap_config);
+	if (IS_ERR(st->regmap))
+		return dev_err_probe(dev, PTR_ERR(st->regmap),
+				     "Failed to init regmap");
+
+	ret = devm_regulator_bulk_get_enable(dev, ARRAY_SIZE(regulators),
+					     regulators);
+	if (ret)
+		return dev_err_probe(dev, ret, "Failed to enable regulators\n");
+
+	vref_reg = devm_regulator_get_optional(dev, "ref");
+	if (IS_ERR(vref_reg)) {
+		if (PTR_ERR(vref_reg) != -ENODEV)
+			return dev_err_probe(dev, PTR_ERR(vref_reg),
+					     "Failed to get ref regulator");
+
+		vref_reg = NULL;
+
+		st->vref = chip_info->internal_vref;
+	} else {
+		ret = regulator_enable(vref_reg);
+		if (ret)
+			return dev_err_probe(dev, ret,
+					     "Failed to enable ref regulators\n");
+
+		ret = devm_add_action_or_reset(dev, ltc2664_disable_regulator,
+					       vref_reg);
+		if (ret)
+			return ret;
+
+		ret = regulator_get_voltage(vref_reg);
+		if (ret < 0)
+			return dev_err_probe(dev, ret, "Failed to get ref\n");
+
+		st->vref = ret / 1000;
+	}
+
+	ret = ltc2664_setup(st, vref_reg);
+	if (ret)
+		return ret;
+
+	indio_dev->name = chip_info->name;
+	indio_dev->info = &ltc2664_info;
+	indio_dev->modes = INDIO_DIRECT_MODE;
+	indio_dev->channels = st->iio_channels;
+	indio_dev->num_channels = chip_info->num_channels;
+
+	return devm_iio_device_register(dev, indio_dev);
+}
+
+static const struct spi_device_id ltc2664_id[] = {
+	{ "ltc2664", (kernel_ulong_t)&ltc2664_chip },
+	{ "ltc2672", (kernel_ulong_t)&ltc2672_chip },
+	{ }
+};
+MODULE_DEVICE_TABLE(spi, ltc2664_id);
+
+static const struct of_device_id ltc2664_of_id[] = {
+	{ .compatible = "adi,ltc2664", .data = &ltc2664_chip },
+	{ .compatible = "adi,ltc2672", .data = &ltc2672_chip },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, ltc2664_of_id);
+
+static struct spi_driver ltc2664_driver = {
+	.driver = {
+		.name = "ltc2664",
+		.of_match_table = ltc2664_of_id,
+	},
+	.probe = ltc2664_probe,
+	.id_table = ltc2664_id,
+};
+module_spi_driver(ltc2664_driver);
+
+MODULE_AUTHOR("Michael Hennerich <michael.hennerich@analog.com>");
+MODULE_AUTHOR("Kim Seer Paller <kimseer.paller@analog.com>");
+MODULE_DESCRIPTION("Analog Devices LTC2664 and LTC2672 DAC");
+MODULE_LICENSE("GPL");
-- 
2.34.1


