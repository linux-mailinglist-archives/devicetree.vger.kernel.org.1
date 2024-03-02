Return-Path: <devicetree+bounces-47899-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id EB41786F28A
	for <lists+devicetree@lfdr.de>; Sat,  2 Mar 2024 22:29:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5B3481F22448
	for <lists+devicetree@lfdr.de>; Sat,  2 Mar 2024 21:29:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0182340BEA;
	Sat,  2 Mar 2024 21:29:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=paroga.com header.i=@paroga.com header.b="DDwieXHI";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=paroga.com header.i=@paroga.com header.b="DDwieXHI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx104.easyname.com (mx104.easyname.com [77.244.243.90])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65D7417C69
	for <devicetree@vger.kernel.org>; Sat,  2 Mar 2024 21:29:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=77.244.243.90
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709414957; cv=none; b=EsKAiFMCuqrZ2KGGlcSz56PCx14UkcgwWJjVzAe5fKtWdEnCoxdyYoYQeVzEixwe2Coz3Y2a6ELhx9+lPpTnA1ncSVJ84zzONs9dbu/Sz3+LVoI77rFu5WIplmJyphb9tWs1uwr6ChrWsLVZN9MkXaK0xlCLOnEOzx650W6ZHrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709414957; c=relaxed/simple;
	bh=KxknxHA9DUM4+hKmtlLzIg45SxQcS32HLiiKEd5fyT4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=OtWlSnXgIAMBJu622+367hcfnBv8EuNCp3+TUCyXi8oA6j7H1RU2cU9T9FpiSqi73D3RJB/GIeBmFTvHcgSUEb6qVPe8HVt/dHzUj0XFad0W3LkUAEGJL1/s3qFfRDjmwr5KjusNJjhvSNIyJvc5SGYAQu5yeiEJy+F3PsqIvZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=paroga.com; spf=pass smtp.mailfrom=paroga.com; dkim=pass (2048-bit key) header.d=paroga.com header.i=@paroga.com header.b=DDwieXHI; dkim=pass (2048-bit key) header.d=paroga.com header.i=@paroga.com header.b=DDwieXHI; arc=none smtp.client-ip=77.244.243.90
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=paroga.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=paroga.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=paroga.com;
	 s=easyname; h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=wVe+/3wLX7Qm7Oh1LqZBn8fjZgYO8Gy0ELG5th5Xjzk=; b=DDwieXHIxYfDJRCDRwmwyQBW2w
	qaeAyhQmq26NUF5DR+RgtzcXSMcxPSv1gtr0P0sLaLcBLl+uzShid7rBDg5Gz4wDPAlI5RgtYSJcQ
	+vGkCsc12JZew1rfW6GVp6q+q5LijXSxH/S0kw2mpwO12Tvl0f0h4wrgjDakWVZhLP3NJfj00EReU
	ODVg/P6ZvJNrNt7n9F8UvKKo+vuaHF5byEbA0nlfayoiCm7rJHZ53H4mch8AphTvorFZcxfU6oCZz
	r6N4V7gsP1j/7w5wgj7XcQK/zb0YgUEE8UVxMDmuNQFg3LVK5Kpz2N5pESsmdsY6U4fzm1sRdiVq+
	13roVhJQ==;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=paroga.com;
	 s=easyname; h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=wVe+/3wLX7Qm7Oh1LqZBn8fjZgYO8Gy0ELG5th5Xjzk=; b=DDwieXHIxYfDJRCDRwmwyQBW2w
	qaeAyhQmq26NUF5DR+RgtzcXSMcxPSv1gtr0P0sLaLcBLl+uzShid7rBDg5Gz4wDPAlI5RgtYSJcQ
	+vGkCsc12JZew1rfW6GVp6q+q5LijXSxH/S0kw2mpwO12Tvl0f0h4wrgjDakWVZhLP3NJfj00EReU
	ODVg/P6ZvJNrNt7n9F8UvKKo+vuaHF5byEbA0nlfayoiCm7rJHZ53H4mch8AphTvorFZcxfU6oCZz
	r6N4V7gsP1j/7w5wgj7XcQK/zb0YgUEE8UVxMDmuNQFg3LVK5Kpz2N5pESsmdsY6U4fzm1sRdiVq+
	13roVhJQ==;
Received: from 84-115-228-205.cable.dynamic.surfer.at ([84.115.228.205] helo=localhost.localdomain)
	by mx.easyname.com with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <paroga@paroga.com>)
	id 1rgWup-0005aa-LC; Sat, 02 Mar 2024 21:29:12 +0000
From: Patrick Gansterer <paroga@paroga.com>
To: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org
Cc: Lee Jones <lee@kernel.org>,
	Daniel Thompson <daniel.thompson@linaro.org>,
	Jingoo Han <jingoohan1@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Patrick Gansterer <paroga@paroga.com>
Subject: [PATCH 2/2] backlight: Add new lm3509 backlight driver
Date: Sat,  2 Mar 2024 22:27:57 +0100
Message-ID: <20240302212757.1871164-2-paroga@paroga.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240302212757.1871164-1-paroga@paroga.com>
References: <20240302212757.1871164-1-paroga@paroga.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Easy-Autoreply: EN

This is a general driver for LM3509 backlight chip of TI.
LM3509 is High Efficiency Boost for White LEDs and/or OLED Displays with
Dual Current Sinks. This driver supports OLED/White LED select, brightness
control and sub/main control.
The datasheet can be found at http://www.ti.com/product/lm3509.

Signed-off-by: Patrick Gansterer <paroga@paroga.com>
---
 drivers/video/backlight/Kconfig     |   7 +
 drivers/video/backlight/Makefile    |   1 +
 drivers/video/backlight/lm3509_bl.c | 247 ++++++++++++++++++++++++++++
 3 files changed, 255 insertions(+)
 create mode 100644 drivers/video/backlight/lm3509_bl.c

diff --git a/drivers/video/backlight/Kconfig b/drivers/video/backlight/Kconfig
index ea2d0d69bd8c..96ad5dc584b6 100644
--- a/drivers/video/backlight/Kconfig
+++ b/drivers/video/backlight/Kconfig
@@ -366,6 +366,13 @@ config BACKLIGHT_AAT2870
 	  If you have a AnalogicTech AAT2870 say Y to enable the
 	  backlight driver.
 
+config BACKLIGHT_LM3509
+	tristate "Backlight Driver for LM3509"
+	depends on I2C
+	select REGMAP_I2C
+	help
+	  This supports TI LM3509 Backlight Driver
+
 config BACKLIGHT_LM3630A
 	tristate "Backlight Driver for LM3630A"
 	depends on I2C && PWM
diff --git a/drivers/video/backlight/Makefile b/drivers/video/backlight/Makefile
index 06966cb20459..51a4ac5d0530 100644
--- a/drivers/video/backlight/Makefile
+++ b/drivers/video/backlight/Makefile
@@ -35,6 +35,7 @@ obj-$(CONFIG_BACKLIGHT_HP700)		+= jornada720_bl.o
 obj-$(CONFIG_BACKLIGHT_IPAQ_MICRO)	+= ipaq_micro_bl.o
 obj-$(CONFIG_BACKLIGHT_KTD253)		+= ktd253-backlight.o
 obj-$(CONFIG_BACKLIGHT_KTZ8866)		+= ktz8866.o
+obj-$(CONFIG_BACKLIGHT_LM3509)		+= lm3509_bl.o
 obj-$(CONFIG_BACKLIGHT_LM3533)		+= lm3533_bl.o
 obj-$(CONFIG_BACKLIGHT_LM3630A)		+= lm3630a_bl.o
 obj-$(CONFIG_BACKLIGHT_LM3639)		+= lm3639_bl.o
diff --git a/drivers/video/backlight/lm3509_bl.c b/drivers/video/backlight/lm3509_bl.c
new file mode 100644
index 000000000000..977145374641
--- /dev/null
+++ b/drivers/video/backlight/lm3509_bl.c
@@ -0,0 +1,247 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+#include <linux/backlight.h>
+#include <linux/delay.h>
+#include <linux/gpio/consumer.h>
+#include <linux/i2c.h>
+#include <linux/module.h>
+#include <linux/regmap.h>
+
+#define LM3509_NAME "lm3509_bl"
+
+#define LM3509_DEF_BRIGHTNESS 0x12
+#define LM3509_MAX_BRIGHTNESS 0x1F
+
+#define REG_GP 0x10
+#define REG_BMAIN 0xA0
+#define REG_BSUB 0xB0
+#define REG_MAX 0xFF
+
+enum {
+	REG_GP_ENM_BIT = 0,
+	REG_GP_ENS_BIT,
+	REG_GP_UNI_BIT,
+	REG_GP_RMP0_BIT,
+	REG_GP_RMP1_BIT,
+	REG_GP_OLED_BIT,
+};
+
+struct lm3509_bl {
+	struct regmap *regmap;
+	struct backlight_device *bl_main;
+	struct backlight_device *bl_sub;
+	struct gpio_desc *reset_gpio;
+};
+
+static void lm3509_reset(struct lm3509_bl *data)
+{
+	if (data->reset_gpio) {
+		gpiod_set_value(data->reset_gpio, 1);
+		udelay(1);
+		gpiod_set_value(data->reset_gpio, 0);
+		udelay(10);
+	}
+}
+
+static int lm3509_update_status(struct backlight_device *bl,
+				unsigned int en_mask, unsigned int br_reg)
+{
+	struct lm3509_bl *data = bl_get_data(bl);
+	int ret;
+	bool en;
+
+	ret = regmap_write(data->regmap, br_reg, bl->props.brightness);
+	if (ret < 0)
+		return ret;
+
+	en = bl->props.power <= FB_BLANK_NORMAL;
+	return regmap_update_bits(data->regmap, REG_GP, en_mask,
+				  en ? en_mask : 0);
+}
+
+static int lm3509_main_update_status(struct backlight_device *bl)
+{
+	return lm3509_update_status(bl, BIT(REG_GP_ENM_BIT), REG_BMAIN);
+}
+
+static const struct backlight_ops lm3509_main_ops = {
+	.options = BL_CORE_SUSPENDRESUME,
+	.update_status = lm3509_main_update_status,
+};
+
+static int lm3509_sub_update_status(struct backlight_device *bl)
+{
+	return lm3509_update_status(bl, BIT(REG_GP_ENS_BIT), REG_BSUB);
+}
+
+static const struct backlight_ops lm3509_sub_ops = {
+	.options = BL_CORE_SUSPENDRESUME,
+	.update_status = lm3509_sub_update_status,
+};
+
+static struct backlight_device *lm3509_backlight_register(
+	struct device *dev, const char *name_suffix, struct lm3509_bl *data,
+	const struct backlight_ops *ops, int brightness, int max_brightness)
+
+{
+	struct backlight_device *bd;
+	struct backlight_properties props;
+	char name[64];
+
+	memset(&props, 0, sizeof(props));
+	props.type = BACKLIGHT_RAW;
+	props.brightness = brightness;
+	props.max_brightness = max_brightness;
+	props.power = brightness > 0 ? FB_BLANK_UNBLANK : FB_BLANK_POWERDOWN;
+
+	snprintf(name, sizeof(name), "lm3509-%s-%s", dev_name(dev),
+		 name_suffix);
+
+	bd = devm_backlight_device_register(dev, name, dev, data, ops, &props);
+	if (bd)
+		backlight_update_status(bd);
+
+	return bd;
+}
+
+static const struct regmap_config lm3509_regmap = {
+	.reg_bits = 8,
+	.val_bits = 8,
+	.max_register = REG_MAX,
+};
+
+static int lm3509_probe(struct i2c_client *client)
+{
+	struct lm3509_bl *data;
+	struct device *dev = &client->dev;
+	int ret;
+	bool unison_mode = false;
+	bool oled_mode = false;
+	unsigned int reg_gp_val = 0;
+	u32 rate_of_change = 0;
+	u32 brightness = LM3509_DEF_BRIGHTNESS;
+	u32 max_brightness = LM3509_MAX_BRIGHTNESS;
+
+	if (!i2c_check_functionality(client->adapter, I2C_FUNC_I2C)) {
+		dev_err(dev, "fail : i2c functionality check\n");
+		return -EOPNOTSUPP;
+	}
+
+	data = devm_kzalloc(dev, sizeof(struct lm3509_bl), GFP_KERNEL);
+	if (!data)
+		return -ENOMEM;
+
+	data->regmap = devm_regmap_init_i2c(client, &lm3509_regmap);
+	if (IS_ERR(data->regmap)) {
+		dev_err(dev, "fail : allocate register map\n");
+		return PTR_ERR(data->regmap);
+	}
+	i2c_set_clientdata(client, data);
+
+	data->reset_gpio = devm_gpiod_get_optional(dev, "reset", GPIOD_OUT_LOW);
+	if (IS_ERR(data->reset_gpio)) {
+		ret = PTR_ERR(data->reset_gpio);
+		if (ret != -EPROBE_DEFER)
+			dev_err(dev, "fail : get reset GPIO: %d\n", ret);
+		return ret;
+	}
+
+	lm3509_reset(data);
+
+	of_property_read_u32(dev->of_node, "default-brightness", &brightness);
+	of_property_read_u32(dev->of_node, "max-brightness", &max_brightness);
+	unison_mode = of_property_read_bool(dev->of_node, "ti,unison-mode");
+	oled_mode = of_property_read_bool(dev->of_node, "ti,oled-mode");
+
+	if (!of_property_read_u32(dev->of_node,
+				  "ti,brightness-rate-of-change-us",
+				  &rate_of_change)) {
+		switch (rate_of_change) {
+		case 51:
+			reg_gp_val = 0;
+			break;
+		case 13000:
+			reg_gp_val = BIT(REG_GP_RMP1_BIT);
+			break;
+		case 26000:
+			reg_gp_val = BIT(REG_GP_RMP0_BIT);
+			break;
+		case 52000:
+			reg_gp_val = BIT(REG_GP_RMP0_BIT) |
+				     BIT(REG_GP_RMP1_BIT);
+			break;
+		default:
+			dev_warn(dev, "invalid rate of change %u\n",
+				 rate_of_change);
+			break;
+		}
+	}
+
+	if (unison_mode)
+		reg_gp_val |= BIT(REG_GP_UNI_BIT);
+	if (oled_mode)
+		reg_gp_val |= BIT(REG_GP_OLED_BIT);
+
+	ret = regmap_write(data->regmap, REG_GP, reg_gp_val);
+	if (ret < 0)
+		return ret;
+
+	max_brightness = min_t(u32, max_brightness, LM3509_MAX_BRIGHTNESS);
+	brightness = min_t(u32, brightness, max_brightness);
+
+	data->bl_main = lm3509_backlight_register(dev, "main", data,
+						  &lm3509_main_ops, brightness,
+						  max_brightness);
+	if (IS_ERR(data->bl_main)) {
+		dev_err(dev, "fail : register main backlight\n");
+		return PTR_ERR(data->bl_main);
+	}
+
+	if (!unison_mode) {
+		data->bl_sub = lm3509_backlight_register(dev, "sub", data,
+							 &lm3509_sub_ops,
+							 brightness,
+							 max_brightness);
+		if (IS_ERR(data->bl_sub)) {
+			dev_err(dev, "fail : register secondary backlight\n");
+			return PTR_ERR(data->bl_sub);
+		}
+	}
+
+	return 0;
+}
+
+static void lm3509_remove(struct i2c_client *client)
+{
+	struct lm3509_bl *data = i2c_get_clientdata(client);
+
+	regmap_write(data->regmap, REG_GP, 0x00);
+}
+
+static const struct i2c_device_id lm3509_id[] = { { LM3509_NAME, 0 }, {} };
+
+MODULE_DEVICE_TABLE(i2c, lm3509_id);
+
+static const struct of_device_id lm3509_match_table[] = {
+	{
+		.compatible = "ti,lm3509",
+	},
+	{},
+};
+
+MODULE_DEVICE_TABLE(of, lm3509_match_table);
+
+static struct i2c_driver lm3509_i2c_driver = {
+	.driver = {
+		.name = LM3509_NAME,
+		.of_match_table = lm3509_match_table,
+	},
+	.probe = lm3509_probe,
+	.remove = lm3509_remove,
+	.id_table = lm3509_id,
+};
+
+module_i2c_driver(lm3509_i2c_driver);
+
+MODULE_DESCRIPTION("Texas Instruments Backlight driver for LM3509");
+MODULE_AUTHOR("Patrick Gansterer <paroga@paroga.com>");
+MODULE_LICENSE("GPL");
-- 
2.44.0


