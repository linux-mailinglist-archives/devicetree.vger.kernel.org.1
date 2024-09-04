Return-Path: <devicetree+bounces-99974-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E65596BAE7
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 13:37:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 40F2E1C2298C
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 11:37:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F0451D222E;
	Wed,  4 Sep 2024 11:36:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from out28-149.mail.aliyun.com (out28-149.mail.aliyun.com [115.124.28.149])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCDFC18890D;
	Wed,  4 Sep 2024 11:36:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=115.124.28.149
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725449780; cv=none; b=aUCnHQrnphN6ETpCmsbr6bA5Es6c4QufmxN2w1VVf9NMu0Wz9Z//0qXSpr198ctSR2jdtR2psB6/HmMHX4Y5gRJjmTlL9AlhhRojLLDjO3gHDwcLYVVmUmfm4SyMNhtFohvjiXi5zC5cNDEWCXk08MtGJ+0s5CbLQfn6EGePnic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725449780; c=relaxed/simple;
	bh=l65dmDyNwmneIZtYX9nufKD6UvJDVrHkZO+HF23d8so=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=SVURjp+ZEnaJ2cDV0Ve25ai68wNUo0Jb3JsmaEC7ttcHtxJAQ6yAlTbFi2dpSYGhWxvkhSsgZv0QssDte7bFBsGQZxbZIM4iJIq/on0sgorq4iO7HAphrMM1MCaCewA2hJMNO1JllrGGiSMhZT4aewNnnJdkm2oT1SfE9jdebd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=awinic.com; spf=pass smtp.mailfrom=awinic.com; arc=none smtp.client-ip=115.124.28.149
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=awinic.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=awinic.com
Received: from awinic..(mailfrom:wangshuaijie@awinic.com fp:SMTPD_---.ZAven5O_1725449766)
          by smtp.aliyun-inc.com;
          Wed, 04 Sep 2024 19:36:07 +0800
From: wangshuaijie@awinic.com
To: jic23@kernel.org,
	lars@metafoo.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	kees@kernel.org,
	gustavoars@kernel.org,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-hardening@vger.kernel.org,
	andy.shevchenko@gmail.com
Cc: wangshuaijie@awinic.com,
	liweilei@awinic.com,
	kangjiajun@awinic.com
Subject: [PATCH V10 2/2] iio: proximity: aw96103: Add support for aw96103/aw96105 proximity sensor
Date: Wed,  4 Sep 2024 11:35:55 +0000
Message-ID: <20240904113555.1538635-3-wangshuaijie@awinic.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20240904113555.1538635-1-wangshuaijie@awinic.com>
References: <20240904113555.1538635-1-wangshuaijie@awinic.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: shuaijie wang <wangshuaijie@awinic.com>

AW96103 is a low power consumption capacitive touch and proximity controller.
Each channel can be independently config as sensor input, shield output.

Channel Information:
  aw96103: 3-channel
  aw96105: 5-channel

Signed-off-by: shuaijie wang <wangshuaijie@awinic.com>
---
 drivers/iio/proximity/Kconfig   |  11 +
 drivers/iio/proximity/Makefile  |   1 +
 drivers/iio/proximity/aw96103.c | 835 ++++++++++++++++++++++++++++++++
 3 files changed, 847 insertions(+)
 create mode 100644 drivers/iio/proximity/aw96103.c

diff --git a/drivers/iio/proximity/Kconfig b/drivers/iio/proximity/Kconfig
index 2ca3b0bc5eba..974aedf0c057 100644
--- a/drivers/iio/proximity/Kconfig
+++ b/drivers/iio/proximity/Kconfig
@@ -219,4 +219,15 @@ config VL53L0X_I2C
 	  To compile this driver as a module, choose M here: the
 	  module will be called vl53l0x-i2c.
 
+config AW96103
+	tristate "AW96103/AW96105 Awinic proximity sensor"
+	select REGMAP_I2C
+	depends on I2C
+	help
+	  Say Y here to build a driver for Awinic's AW96103/AW96105 capacitive
+	  proximity sensor.
+
+	  To compile this driver as a module, choose M here: the
+	  module will be called aw96103.
+
 endmenu
diff --git a/drivers/iio/proximity/Makefile b/drivers/iio/proximity/Makefile
index f36598380446..b1e32aa93678 100644
--- a/drivers/iio/proximity/Makefile
+++ b/drivers/iio/proximity/Makefile
@@ -21,4 +21,5 @@ obj-$(CONFIG_SX_COMMON) 	+= sx_common.o
 obj-$(CONFIG_SX9500)		+= sx9500.o
 obj-$(CONFIG_VCNL3020)		+= vcnl3020.o
 obj-$(CONFIG_VL53L0X_I2C)	+= vl53l0x-i2c.o
+obj-$(CONFIG_AW96103)		+= aw96103.o
 
diff --git a/drivers/iio/proximity/aw96103.c b/drivers/iio/proximity/aw96103.c
new file mode 100644
index 000000000000..fc460a742bad
--- /dev/null
+++ b/drivers/iio/proximity/aw96103.c
@@ -0,0 +1,835 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * AWINIC aw96103 proximity sensor driver
+ *
+ * Author: Wang Shuaijie <wangshuaijie@awinic.com>
+ *
+ * Copyright (c) 2024 awinic Technology CO., LTD
+ */
+#include <linux/array_size.h>
+#include <linux/bits.h>
+#include <linux/bitfield.h>
+#include <linux/cleanup.h>
+#include <linux/delay.h>
+#include <linux/firmware.h>
+#include <linux/i2c.h>
+#include <linux/interrupt.h>
+#include <linux/regulator/consumer.h>
+#include <linux/regmap.h>
+#include <linux/slab.h>
+#include <linux/types.h>
+
+#include <asm/unaligned.h>
+
+#include <linux/iio/events.h>
+#include <linux/iio/iio.h>
+
+#define AW_DATA_PROCESS_FACTOR			1024
+#define AW96103_CHIP_ID				0xa961
+#define AW96103_BIN_VALID_DATA_OFFSET		64
+#define AW96103_BIN_DATA_LEN_OFFSET		16
+#define AW96103_BIN_DATA_REG_NUM_SIZE		4
+#define AW96103_BIN_CHIP_TYPE_SIZE		8
+#define AW96103_BIN_CHIP_TYPE_OFFSET		24
+
+#define AW96103_REG_SCANCTRL0			0x0000
+#define AW96103_REG_STAT0			0x0090
+#define AW96103_REG_BLFILT_CH0			0x00A8
+#define AW96103_REG_BLRSTRNG_CH0		0x00B4
+#define AW96103_REG_DIFF_CH0			0x0240
+#define AW96103_REG_FWVER2			0x0410
+#define AW96103_REG_CMD				0xF008
+#define AW96103_REG_IRQSRC			0xF080
+#define AW96103_REG_IRQEN			0xF084
+#define AW96103_REG_RESET			0xFF0C
+#define AW96103_REG_CHIPID			0xFF10
+#define AW96103_REG_EEDA0			0x0408
+#define AW96103_REG_EEDA1			0x040C
+#define AW96103_REG_PROXCTRL_CH0		0x00B0
+#define AW96103_REG_PROXTH0_CH0			0x00B8
+#define AW96103_PROXTH_CH_STEP			0x3C
+#define AW96103_THHYST_MASK			GENMASK(13, 12)
+#define AW96103_INDEB_MASK			GENMASK(11, 10)
+#define AW96103_OUTDEB_MASK			GENMASK(9, 8)
+#define AW96103_INITOVERIRQ_MASK		BIT(0)
+#define AW96103_BLFILT_CH_STEP			0x3C
+#define AW96103_BLRSTRNG_MASK			GENMASK(5, 0)
+#define AW96103_CHIPID_MASK			GENMASK(31, 16)
+#define AW96103_BLERRTRIG_MASK			BIT(25)
+#define AW96103_CHAN_EN_MASK			GENMASK(5, 0)
+#define AW96103_REG_PROXCTRL_CH(x)		\
+		(AW96103_REG_PROXCTRL_CH0 + (x) * AW96103_PROXTH_CH_STEP)
+
+#define AW96103_REG_PROXTH0_CH(x)		\
+		(AW96103_REG_PROXTH0_CH0 + (x) * AW96103_PROXTH_CH_STEP)
+
+/**
+ * struct aw_bin - Store the data obtained from parsing the configuration file.
+ * @chip_type: Frame header information-chip type
+ * @valid_data_len: Length of valid data obtained after parsing
+ * @valid_data_addr: The offset address of the valid data obtained
+ *		     after parsing relative to info
+ * @len: The size of the bin file obtained from the firmware
+ * @data: Store the bin file obtained from the firmware
+ */
+struct aw_bin {
+	unsigned char chip_type[8];
+	unsigned int valid_data_len;
+	unsigned int valid_data_addr;
+	unsigned int len;
+	unsigned char data[] __counted_by(len);
+};
+
+enum aw96103_sar_vers {
+	AW96103 = 2,
+	AW96103A = 6,
+	AW96103B = 0xa,
+};
+
+enum aw96103_operation_mode {
+	AW96103_ACTIVE_MODE = 1,
+	AW96103_SLEEP_MODE = 2,
+	AW96103_DEEPSLEEP_MODE = 3,
+	AW96103B_DEEPSLEEP_MODE = 4,
+};
+
+enum aw96103_sensor_type {
+	AW96103_VAL,
+	AW96105_VAL,
+};
+
+struct aw_channels_info {
+	unsigned int old_irq_status;
+	bool used;
+};
+
+struct aw_chip_info {
+	const char *name;
+	struct iio_chan_spec const *channels;
+	int num_channels;
+};
+
+struct aw96103 {
+	unsigned int hostirqen;
+	struct regmap *regmap;
+	struct device *dev;
+	/*
+	 * There is one more logical channel than the actual channels,
+	 * and the extra logical channel is used for temperature detection
+	 * but not for status detection. The specific channel used for
+	 * temperature detection is determined by the register configuration.
+	 */
+	struct aw_channels_info channels_arr[6];
+	unsigned int max_channels;
+	unsigned int chan_en;
+};
+
+static const unsigned int aw96103_reg_default[] = {
+	0x0000, 0x00003f3f, 0x0004, 0x00000064, 0x0008, 0x0017c11e,
+	0x000c, 0x05000000, 0x0010, 0x00093ffd, 0x0014, 0x19240009,
+	0x0018, 0xd81c0207, 0x001c, 0xff000000, 0x0020, 0x00241900,
+	0x0024, 0x00093ff7, 0x0028, 0x58020009, 0x002c, 0xd81c0207,
+	0x0030, 0xff000000, 0x0034, 0x00025800, 0x0038, 0x00093fdf,
+	0x003c, 0x7d3b0009, 0x0040, 0xd81c0207,	0x0044, 0xff000000,
+	0x0048, 0x003b7d00, 0x004c, 0x00093f7f, 0x0050, 0xe9310009,
+	0x0054, 0xd81c0207, 0x0058, 0xff000000,	0x005c, 0x0031e900,
+	0x0060, 0x00093dff, 0x0064, 0x1a0c0009,	0x0068, 0xd81c0207,
+	0x006c, 0xff000000, 0x0070, 0x000c1a00,	0x0074, 0x80093fff,
+	0x0078, 0x043d0009, 0x007c, 0xd81c0207,	0x0080, 0xff000000,
+	0x0084, 0x003d0400, 0x00a0, 0xe6400000,	0x00a4, 0x00000000,
+	0x00a8, 0x010408d2, 0x00ac, 0x00000000,	0x00b0, 0x00000000,
+	0x00b8, 0x00005fff, 0x00bc, 0x00000000,	0x00c0, 0x00000000,
+	0x00c4, 0x00000000, 0x00c8, 0x00000000,	0x00cc, 0x00000000,
+	0x00d0, 0x00000000, 0x00d4, 0x00000000, 0x00d8, 0x00000000,
+	0x00dc, 0xe6447800, 0x00e0, 0x78000000,	0x00e4, 0x010408d2,
+	0x00e8, 0x00000000, 0x00ec, 0x00000000,	0x00f4, 0x00005fff,
+	0x00f8, 0x00000000, 0x00fc, 0x00000000,	0x0100, 0x00000000,
+	0x0104, 0x00000000, 0x0108, 0x00000000,	0x010c, 0x02000000,
+	0x0110, 0x00000000, 0x0114, 0x00000000,	0x0118, 0xe6447800,
+	0x011c, 0x78000000, 0x0120, 0x010408d2,	0x0124, 0x00000000,
+	0x0128, 0x00000000, 0x0130, 0x00005fff,	0x0134, 0x00000000,
+	0x0138, 0x00000000, 0x013c, 0x00000000,	0x0140, 0x00000000,
+	0x0144, 0x00000000, 0x0148, 0x02000000,	0x014c, 0x00000000,
+	0x0150, 0x00000000, 0x0154, 0xe6447800,	0x0158, 0x78000000,
+	0x015c, 0x010408d2, 0x0160, 0x00000000,	0x0164, 0x00000000,
+	0x016c, 0x00005fff, 0x0170, 0x00000000,	0x0174, 0x00000000,
+	0x0178, 0x00000000, 0x017c, 0x00000000,	0x0180, 0x00000000,
+	0x0184, 0x02000000, 0x0188, 0x00000000,	0x018c, 0x00000000,
+	0x0190, 0xe6447800, 0x0194, 0x78000000,	0x0198, 0x010408d2,
+	0x019c, 0x00000000, 0x01a0, 0x00000000,	0x01a8, 0x00005fff,
+	0x01ac, 0x00000000, 0x01b0, 0x00000000,	0x01b4, 0x00000000,
+	0x01b8, 0x00000000, 0x01bc, 0x00000000,	0x01c0, 0x02000000,
+	0x01c4, 0x00000000, 0x01c8, 0x00000000,	0x01cc, 0xe6407800,
+	0x01d0, 0x78000000, 0x01d4, 0x010408d2,	0x01d8, 0x00000000,
+	0x01dc, 0x00000000, 0x01e4, 0x00005fff,	0x01e8, 0x00000000,
+	0x01ec, 0x00000000, 0x01f0, 0x00000000,	0x01f4, 0x00000000,
+	0x01f8, 0x00000000, 0x01fc, 0x02000000,	0x0200, 0x00000000,
+	0x0204, 0x00000000, 0x0208, 0x00000008,	0x020c, 0x0000000d,
+	0x41fc, 0x00000000, 0x4400, 0x00000000,	0x4410, 0x00000000,
+	0x4420, 0x00000000, 0x4430, 0x00000000,	0x4440, 0x00000000,
+	0x4450, 0x00000000, 0x4460, 0x00000000,	0x4470, 0x00000000,
+	0xf080, 0x00003018, 0xf084, 0x00000fff,	0xf800, 0x00000000,
+	0xf804, 0x00002e00, 0xf8d0, 0x00000001,	0xf8d4, 0x00000000,
+	0xff00, 0x00000301, 0xff0c, 0x01000000,	0xffe0, 0x00000000,
+	0xfff4, 0x00004011, 0x0090, 0x00000000,	0x0094, 0x00000000,
+	0x0098, 0x00000000, 0x009c, 0x3f3f3f3f,
+};
+
+static const struct iio_event_spec aw_common_events[3] = {
+	{
+		.type = IIO_EV_TYPE_THRESH,
+		.dir = IIO_EV_DIR_RISING,
+		.mask_separate = BIT(IIO_EV_INFO_PERIOD),
+	},
+	{
+		.type = IIO_EV_TYPE_THRESH,
+		.dir = IIO_EV_DIR_FALLING,
+		.mask_separate = BIT(IIO_EV_INFO_PERIOD),
+	},
+	{
+		.type = IIO_EV_TYPE_THRESH,
+		.dir = IIO_EV_DIR_EITHER,
+		.mask_separate = BIT(IIO_EV_INFO_ENABLE) |
+			BIT(IIO_EV_INFO_HYSTERESIS) |
+			BIT(IIO_EV_INFO_VALUE),
+	}
+};
+
+#define AW_IIO_CHANNEL(idx)			\
+{								\
+	.type = IIO_PROXIMITY,				\
+	.info_mask_separate = BIT(IIO_CHAN_INFO_RAW),	\
+	.indexed = 1,			\
+	.channel = idx,			\
+	.event_spec = aw_common_events,		\
+	.num_event_specs = ARRAY_SIZE(aw_common_events),	\
+}							\
+
+static const struct iio_chan_spec aw96103_channels[] = {
+	AW_IIO_CHANNEL(0),
+	AW_IIO_CHANNEL(1),
+	AW_IIO_CHANNEL(2),
+	AW_IIO_CHANNEL(3),
+};
+
+static const struct iio_chan_spec aw96105_channels[] = {
+	AW_IIO_CHANNEL(0),
+	AW_IIO_CHANNEL(1),
+	AW_IIO_CHANNEL(2),
+	AW_IIO_CHANNEL(3),
+	AW_IIO_CHANNEL(4),
+	AW_IIO_CHANNEL(5),
+};
+
+static const struct aw_chip_info aw_chip_info_tbl[] = {
+	[AW96103_VAL] = {
+		.name = "aw96103_sensor",
+		.channels = aw96103_channels,
+		.num_channels = ARRAY_SIZE(aw96103_channels),
+	},
+	[AW96105_VAL] = {
+		.name = "aw96105_sensor",
+		.channels = aw96105_channels,
+		.num_channels = ARRAY_SIZE(aw96105_channels),
+	},
+};
+
+static void aw96103_parsing_bin_file(struct aw_bin *bin)
+{
+	bin->valid_data_addr = AW96103_BIN_VALID_DATA_OFFSET;
+	bin->valid_data_len =
+		*(unsigned int *)(bin->data + AW96103_BIN_DATA_LEN_OFFSET) -
+		AW96103_BIN_DATA_REG_NUM_SIZE;
+	memcpy(bin->chip_type, bin->data + AW96103_BIN_CHIP_TYPE_OFFSET,
+	       AW96103_BIN_CHIP_TYPE_SIZE);
+}
+
+static const struct regmap_config aw96103_regmap_confg = {
+	.reg_bits = 16,
+	.val_bits = 32,
+};
+
+static int aw96103_get_diff_raw(struct aw96103 *aw96103, unsigned int chan,
+				int *buf)
+{
+	u32 data;
+	int ret;
+
+	ret = regmap_read(aw96103->regmap,
+			  AW96103_REG_DIFF_CH0 + chan * 4, &data);
+	if (ret)
+		return ret;
+
+	*buf = data / AW_DATA_PROCESS_FACTOR;
+	return 0;
+}
+
+static int aw96103_read_raw(struct iio_dev *indio_dev,
+			    const struct iio_chan_spec *chan,
+			    int *val, int *val2, long mask)
+{
+	struct aw96103 *aw96103 = iio_priv(indio_dev);
+	int ret;
+
+	switch (mask) {
+	case IIO_CHAN_INFO_RAW:
+		ret = aw96103_get_diff_raw(aw96103, chan->channel, val);
+		if (ret)
+			return ret;
+
+		return IIO_VAL_INT;
+	default:
+		return -EINVAL;
+	}
+}
+
+static int aw96103_read_thresh(struct aw96103 *aw96103,
+			       const struct iio_chan_spec *chan, int *val)
+{
+	int ret;
+
+	ret = regmap_read(aw96103->regmap,
+			  AW96103_REG_PROXTH0_CH(chan->channel), val);
+	if (ret)
+		return ret;
+
+	return IIO_VAL_INT;
+}
+
+static int aw96103_read_out_debounce(struct aw96103 *aw96103,
+				     const struct iio_chan_spec *chan,
+				     int *val)
+{
+	unsigned int reg_val;
+	int ret;
+
+	ret = regmap_read(aw96103->regmap,
+			  AW96103_REG_PROXCTRL_CH(chan->channel), &reg_val);
+	if (ret)
+		return ret;
+
+	*val = FIELD_GET(AW96103_OUTDEB_MASK, reg_val);
+	return IIO_VAL_INT;
+}
+
+static int aw96103_read_in_debounce(struct aw96103 *aw96103,
+				    const struct iio_chan_spec *chan, int *val)
+{
+	unsigned int reg_val;
+	int ret;
+
+	ret = regmap_read(aw96103->regmap,
+			  AW96103_REG_PROXCTRL_CH(chan->channel), &reg_val);
+	if (ret)
+		return ret;
+
+	*val = FIELD_GET(AW96103_INDEB_MASK, reg_val);
+	return IIO_VAL_INT;
+}
+
+static int aw96103_read_hysteresis(struct aw96103 *aw96103,
+				   const struct iio_chan_spec *chan, int *val)
+{
+	unsigned int reg_val;
+	int ret;
+
+	ret = regmap_read(aw96103->regmap,
+			  AW96103_REG_PROXCTRL_CH(chan->channel), &reg_val);
+	if (ret)
+		return ret;
+
+	*val = FIELD_GET(AW96103_THHYST_MASK, reg_val);
+	return IIO_VAL_INT;
+}
+
+static int aw96103_read_event_val(struct iio_dev *indio_dev,
+				  const struct iio_chan_spec *chan,
+				  enum iio_event_type type,
+				  enum iio_event_direction dir,
+				  enum iio_event_info info,
+				  int *val, int *val2)
+{
+	struct aw96103 *aw96103 = iio_priv(indio_dev);
+
+	if (chan->type != IIO_PROXIMITY)
+		return -EINVAL;
+
+	switch (info) {
+	case IIO_EV_INFO_VALUE:
+		return aw96103_read_thresh(aw96103, chan, val);
+	case IIO_EV_INFO_PERIOD:
+		switch (dir) {
+		case IIO_EV_DIR_RISING:
+			return aw96103_read_out_debounce(aw96103, chan, val);
+		case IIO_EV_DIR_FALLING:
+			return aw96103_read_in_debounce(aw96103, chan, val);
+		default:
+			return -EINVAL;
+		}
+	case IIO_EV_INFO_HYSTERESIS:
+		return aw96103_read_hysteresis(aw96103, chan, val);
+	default:
+		return -EINVAL;
+	}
+}
+
+static int aw96103_write_event_val(struct iio_dev *indio_dev,
+				   const struct iio_chan_spec *chan,
+				   enum iio_event_type type,
+				   enum iio_event_direction dir,
+				   enum iio_event_info info, int val, int val2)
+{
+	struct aw96103 *aw96103 = iio_priv(indio_dev);
+
+	if (chan->type != IIO_PROXIMITY)
+		return -EINVAL;
+
+	switch (info) {
+	case IIO_EV_INFO_VALUE:
+		return regmap_write(aw96103->regmap,
+				    AW96103_REG_PROXTH0_CH(chan->channel), val);
+	case IIO_EV_INFO_PERIOD:
+		switch (dir) {
+		case IIO_EV_DIR_RISING:
+			return regmap_update_bits(aw96103->regmap,
+					AW96103_REG_PROXCTRL_CH(chan->channel),
+					AW96103_OUTDEB_MASK,
+					FIELD_PREP(AW96103_OUTDEB_MASK, val));
+
+		case IIO_EV_DIR_FALLING:
+			return regmap_update_bits(aw96103->regmap,
+				AW96103_REG_PROXCTRL_CH(chan->channel),
+				AW96103_INDEB_MASK,
+				FIELD_PREP(AW96103_INDEB_MASK, val));
+		default:
+			return -EINVAL;
+		}
+	case IIO_EV_INFO_HYSTERESIS:
+		return regmap_update_bits(aw96103->regmap,
+					AW96103_REG_PROXCTRL_CH(chan->channel),
+					AW96103_THHYST_MASK,
+					FIELD_PREP(AW96103_THHYST_MASK, val));
+	default:
+		return -EINVAL;
+	}
+}
+
+static int aw96103_read_event_config(struct iio_dev *indio_dev,
+				     const struct iio_chan_spec *chan,
+				     enum iio_event_type type,
+				     enum iio_event_direction dir)
+{
+	struct aw96103 *aw96103 = iio_priv(indio_dev);
+
+	return aw96103->channels_arr[chan->channel].used;
+}
+
+static int aw96103_write_event_config(struct iio_dev *indio_dev,
+				      const struct iio_chan_spec *chan,
+				      enum iio_event_type type,
+				      enum iio_event_direction dir, int state)
+{
+	struct aw96103 *aw96103 = iio_priv(indio_dev);
+
+	aw96103->channels_arr[chan->channel].used = !!state;
+
+	return regmap_update_bits(aw96103->regmap, AW96103_REG_SCANCTRL0,
+				  BIT(chan->channel),
+				  state ? BIT(chan->channel) : 0);
+}
+
+static struct iio_info iio_info = {
+	.read_raw = aw96103_read_raw,
+	.read_event_value = aw96103_read_event_val,
+	.write_event_value = aw96103_write_event_val,
+	.read_event_config = aw96103_read_event_config,
+	.write_event_config = aw96103_write_event_config,
+};
+
+static int aw96103_channel_scan_start(struct aw96103 *aw96103)
+{
+	int ret;
+
+	ret = regmap_write(aw96103->regmap, AW96103_REG_CMD,
+			   AW96103_ACTIVE_MODE);
+	if (ret)
+		return ret;
+
+	return regmap_write(aw96103->regmap, AW96103_REG_IRQEN,
+			    aw96103->hostirqen);
+}
+
+static int aw96103_reg_version_comp(struct aw96103 *aw96103, struct aw_bin *aw_bin)
+{
+	u32 blfilt1_data, fw_ver;
+	unsigned int i;
+	int ret;
+
+	ret = regmap_read(aw96103->regmap, AW96103_REG_FWVER2, &fw_ver);
+	if (ret)
+		return ret;
+	/*
+	 * If the chip version is AW96103A and the loaded register
+	 * configuration file is for AW96103, special handling of the
+	 * AW96103_REG_BLRSTRNG_CH0 register is required.
+	 */
+	if ((fw_ver != AW96103A) || (aw_bin->chip_type[7] != '\0'))
+		return 0;
+
+	for (i = 0; i < aw96103->max_channels; i++) {
+		ret = regmap_read(aw96103->regmap,
+			AW96103_REG_BLFILT_CH0 + AW96103_BLFILT_CH_STEP * i,
+			&blfilt1_data);
+		if (ret)
+			return ret;
+
+		if (FIELD_GET(AW96103_BLERRTRIG_MASK, blfilt1_data) != 1)
+			continue;
+
+		ret = regmap_update_bits(aw96103->regmap,
+			AW96103_REG_BLRSTRNG_CH0 + AW96103_BLFILT_CH_STEP * i,
+			AW96103_BLRSTRNG_MASK, BIT(i));
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
+static int aw96103_bin_valid_loaded(struct aw96103 *aw96103,
+				    struct aw_bin *aw_bin_data_s)
+{
+	unsigned int start_addr = aw_bin_data_s->valid_data_addr;
+	unsigned int i;
+	u32 reg_data;
+	u16 reg_addr;
+	int ret;
+
+	for (i = 0; i < aw_bin_data_s->valid_data_len; i += 6, start_addr += 6) {
+		reg_addr = get_unaligned_le16(aw_bin_data_s->data + start_addr);
+		reg_data = get_unaligned_le32(aw_bin_data_s->data + start_addr + 2);
+		if ((reg_addr == AW96103_REG_EEDA0) || (reg_addr == AW96103_REG_EEDA1))
+			continue;
+		if (reg_addr == AW96103_REG_IRQEN) {
+			aw96103->hostirqen = reg_data;
+			continue;
+		}
+		if (reg_addr == AW96103_REG_SCANCTRL0)
+			aw96103->chan_en = FIELD_GET(AW96103_CHAN_EN_MASK, reg_data);
+
+		ret = regmap_write(aw96103->regmap, reg_addr, reg_data);
+		if (ret < 0)
+			return ret;
+	}
+
+	ret = aw96103_reg_version_comp(aw96103, aw_bin_data_s);
+	if (ret)
+		return ret;
+
+	return aw96103_channel_scan_start(aw96103);
+}
+
+static int aw96103_para_loaded(struct aw96103 *aw96103)
+{
+	unsigned int i;
+	int ret;
+
+	for (i = 0; i < ARRAY_SIZE(aw96103_reg_default); i += 2) {
+		u16 offset = aw96103_reg_default[i];
+		u32 value = aw96103_reg_default[i + 1];
+
+		ret = regmap_write(aw96103->regmap, offset, value);
+		if (ret)
+			return ret;
+
+		if (offset == AW96103_REG_IRQEN)
+			aw96103->hostirqen = value;
+		else if (offset == AW96103_REG_SCANCTRL0)
+			aw96103->chan_en = FIELD_GET(AW96103_CHAN_EN_MASK, value);
+	}
+
+	return aw96103_channel_scan_start(aw96103);
+}
+
+static int aw96103_cfg_all_loaded(const struct firmware *cont,
+				  struct aw96103 *aw96103)
+{
+	if (!cont)
+		return -EINVAL;
+
+	struct aw_bin *aw_bin __free(kfree) =
+		kzalloc(cont->size + sizeof(*aw_bin), GFP_KERNEL);
+	if (!aw_bin)
+		return -ENOMEM;
+
+	aw_bin->len = cont->size;
+	memcpy(aw_bin->data, cont->data, cont->size);
+	release_firmware(cont);
+	aw96103_parsing_bin_file(aw_bin);
+
+	return aw96103_bin_valid_loaded(aw96103, aw_bin);
+}
+
+static void aw96103_cfg_update(const struct firmware *fw, void *data)
+{
+	struct aw96103 *aw96103 = data;
+	unsigned int i;
+	int ret;
+
+	if (!fw || !fw->data) {
+		dev_err(aw96103->dev, "No firmware.\n");
+		return;
+	}
+
+	ret = aw96103_cfg_all_loaded(fw, aw96103);
+	/*
+	 * If loading the register configuration file fails,
+	 * load the default register configuration in the driver to
+	 * ensure the basic functionality of the device.
+	 */
+	if (ret) {
+		ret = aw96103_para_loaded(aw96103);
+		if (ret) {
+			dev_err(aw96103->dev, "load param error.\n");
+			return;
+		}
+	}
+
+	for (i = 0; i < aw96103->max_channels; i++)
+		aw96103->channels_arr[i].used = aw96103->chan_en & BIT(i);
+}
+
+static int aw96103_sw_reset(struct aw96103 *aw96103)
+{
+	int ret;
+
+	ret = regmap_write(aw96103->regmap, AW96103_REG_RESET, 0);
+	/*
+	 * After reset, the initialization process starts to perform and
+	 * it will last for about 20ms.
+	 */
+	msleep(20);
+
+	return ret;
+}
+
+#define FAR			0x00
+#define TRIGGER_TH0		BIT(24)
+#define TRIGGER_TH1		(BIT(24) | BIT(16))
+#define TRIGGER_TH2		(BIT(24) | BIT(16) | BIT(8))
+#define TRIGGER_TH3		(BIT(24) | BIT(16) | BIT(8) | BIT(0))
+#define TRIGGER_TH_MASK		(BIT(24) | BIT(16) | BIT(8) | BIT(0))
+
+static irqreturn_t aw96103_irq(int irq, void *data)
+{
+	unsigned int irq_status, curr_status_val, curr_status;
+	struct iio_dev *indio_dev = data;
+	struct aw96103 *aw96103 = iio_priv(indio_dev);
+	unsigned int i;
+	int ret;
+
+	ret = regmap_read(aw96103->regmap, AW96103_REG_IRQSRC, &irq_status);
+	if (ret)
+		return IRQ_HANDLED;
+
+	ret = regmap_read(aw96103->regmap, AW96103_REG_STAT0, &curr_status_val);
+	if (ret)
+		return IRQ_HANDLED;
+
+	/*
+	 * Iteratively analyze the interrupt status of different channels,
+	 * with each channel having 4 interrupt states.
+	 */
+	for (i = 0; i < aw96103->max_channels; i++) {
+		if (!aw96103->channels_arr[i].used)
+			continue;
+
+		curr_status = ((curr_status_val >> i) & TRIGGER_TH_MASK);
+		if (aw96103->channels_arr[i].old_irq_status == curr_status)
+			continue;
+
+		switch (curr_status) {
+		case FAR:
+			iio_push_event(indio_dev,
+				       IIO_UNMOD_EVENT_CODE(IIO_PROXIMITY, i,
+							    IIO_EV_TYPE_THRESH,
+							    IIO_EV_DIR_RISING),
+				       iio_get_time_ns(indio_dev));
+			break;
+		case TRIGGER_TH0:
+		case TRIGGER_TH1:
+		case TRIGGER_TH2:
+		case TRIGGER_TH3:
+			iio_push_event(indio_dev,
+				       IIO_UNMOD_EVENT_CODE(IIO_PROXIMITY, i,
+							    IIO_EV_TYPE_THRESH,
+							    IIO_EV_DIR_FALLING),
+				       iio_get_time_ns(indio_dev));
+			break;
+		default:
+			return IRQ_HANDLED;
+		}
+		aw96103->channels_arr[i].old_irq_status = curr_status;
+	}
+
+	return IRQ_HANDLED;
+}
+
+static int aw96103_interrupt_init(struct iio_dev *indio_dev, struct i2c_client *i2c)
+{
+	struct aw96103 *aw96103 = iio_priv(indio_dev);
+	unsigned int irq_status;
+	int ret;
+
+	ret = regmap_write(aw96103->regmap, AW96103_REG_IRQEN, 0);
+	if (ret)
+		return ret;
+
+	ret = regmap_read(aw96103->regmap, AW96103_REG_IRQSRC, &irq_status);
+	if (ret)
+		return ret;
+
+	ret = devm_request_threaded_irq(aw96103->dev, i2c->irq, NULL,
+					aw96103_irq, IRQF_ONESHOT,
+					"aw96103_irq", indio_dev);
+	if (ret)
+		return ret;
+
+	return regmap_write(aw96103->regmap, AW96103_REG_IRQEN,
+			    aw96103->hostirqen);
+}
+
+static int aw96103_wait_chip_init(struct aw96103 *aw96103)
+{
+	u32 reg_data;
+
+	/*
+	 * The device should generate an initialization completion
+	 * interrupt within 20ms.
+	 */
+	return regmap_read_poll_timeout(aw96103->regmap, AW96103_REG_IRQSRC,
+					reg_data,
+					FIELD_GET(AW96103_INITOVERIRQ_MASK, reg_data),
+					1000, 20000);
+}
+
+static int aw96103_read_chipid(struct aw96103 *aw96103)
+{
+	unsigned char cnt = 0;
+	u32 reg_val = 0;
+	int ret;
+
+	while (cnt < 3) {
+		/*
+		 * This retry mechanism and the subsequent delay are just
+		 * attempts to read the chip ID as much as possible,
+		 * preventing occasional communication failures from causing
+		 * the chip ID read to fail.
+		 */
+		ret = regmap_read(aw96103->regmap, AW96103_REG_CHIPID,
+				  &reg_val);
+		if (ret < 0) {
+			cnt++;
+			fsleep(2000);
+			continue;
+		}
+		break;
+	}
+	if (cnt == 3)
+		return -ETIMEDOUT;
+
+	if (FIELD_GET(AW96103_CHIPID_MASK, reg_val) != AW96103_CHIP_ID)
+		dev_info(aw96103->dev,
+			 "unexpected chipid, id=0x%08X\n", reg_val);
+
+	return 0;
+}
+
+static int aw96103_i2c_probe(struct i2c_client *i2c)
+{
+	const struct aw_chip_info *chip_info;
+	struct iio_dev *indio_dev;
+	struct aw96103 *aw96103;
+	int ret;
+
+	indio_dev = devm_iio_device_alloc(&i2c->dev, sizeof(*aw96103));
+	if (!indio_dev)
+		return -ENOMEM;
+
+	aw96103 = iio_priv(indio_dev);
+	aw96103->dev = &i2c->dev;
+	chip_info = i2c_get_match_data(i2c);
+	aw96103->max_channels = chip_info->num_channels;
+
+	aw96103->regmap = devm_regmap_init_i2c(i2c, &aw96103_regmap_confg);
+	if (IS_ERR(aw96103->regmap))
+		return PTR_ERR(aw96103->regmap);
+
+	ret = devm_regulator_get_enable(aw96103->dev, "vcc");
+	if (ret < 0)
+		return ret;
+
+	ret = aw96103_read_chipid(aw96103);
+	if (ret)
+		return ret;
+
+	ret = aw96103_sw_reset(aw96103);
+	if (ret)
+		return ret;
+
+	ret = aw96103_wait_chip_init(aw96103);
+	if (ret)
+		return ret;
+
+	ret = request_firmware_nowait(THIS_MODULE, true, "aw96103_0.bin",
+				      aw96103->dev, GFP_KERNEL, aw96103,
+				      aw96103_cfg_update);
+	if (ret)
+		return ret;
+
+	ret = aw96103_interrupt_init(indio_dev, i2c);
+	if (ret)
+		return ret;
+
+	indio_dev->modes = INDIO_DIRECT_MODE;
+	indio_dev->num_channels = chip_info->num_channels;
+	indio_dev->channels = chip_info->channels;
+	indio_dev->info = &iio_info;
+	indio_dev->name = chip_info->name;
+
+	return devm_iio_device_register(aw96103->dev, indio_dev);
+}
+
+static const struct of_device_id aw96103_dt_match[] = {
+	{
+		.compatible = "awinic,aw96103",
+		.data = &aw_chip_info_tbl[AW96103_VAL]
+	},
+	{
+		.compatible = "awinic,aw96105",
+		.data = &aw_chip_info_tbl[AW96105_VAL]
+	},
+	{ }
+};
+MODULE_DEVICE_TABLE(of, aw96103_dt_match);
+
+static const struct i2c_device_id aw96103_i2c_id[] = {
+	{ "aw96103", (kernel_ulong_t)&aw_chip_info_tbl[AW96103_VAL] },
+	{ "aw96105", (kernel_ulong_t)&aw_chip_info_tbl[AW96105_VAL] },
+	{ }
+};
+MODULE_DEVICE_TABLE(i2c, aw96103_i2c_id);
+
+static struct i2c_driver aw96103_i2c_driver = {
+	.driver = {
+		.name = "aw96103_sensor",
+		.of_match_table = aw96103_dt_match,
+	},
+	.probe = aw96103_i2c_probe,
+	.id_table = aw96103_i2c_id,
+};
+module_i2c_driver(aw96103_i2c_driver);
+
+MODULE_AUTHOR("Wang Shuaijie <wangshuaijie@awinic.com>");
+MODULE_DESCRIPTION("Driver for Awinic AW96103 proximity sensor");
+MODULE_LICENSE("GPL v2");
-- 
2.45.1


