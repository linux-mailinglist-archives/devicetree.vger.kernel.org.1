Return-Path: <devicetree+bounces-49617-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F3D5E87717A
	for <lists+devicetree@lfdr.de>; Sat,  9 Mar 2024 14:45:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 221331C209EF
	for <lists+devicetree@lfdr.de>; Sat,  9 Mar 2024 13:45:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 187633FB91;
	Sat,  9 Mar 2024 13:45:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=paroga.com header.i=@paroga.com header.b="M4fxVx3b";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=paroga.com header.i=@paroga.com header.b="M4fxVx3b"
X-Original-To: devicetree@vger.kernel.org
Received: from mx208.easyname.com (mx208.easyname.com [212.232.28.126])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2406D16FF52
	for <devicetree@vger.kernel.org>; Sat,  9 Mar 2024 13:45:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.232.28.126
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709991916; cv=none; b=QZSzHzs2vxwzj2Ugb+/fOa2WlkTe4LH9VD29x8al/TNleAB7AMCO5sw1Pm5anspFBcvChDKPq219t18QbW+R8bQAJEgwWtUKhCRlbSt+h7sVpeVBjvc9vt2fIHsZGfi2Nv6oD8gWFteyHK+xzOEw40UFlFEPXCNZ53yDOuhaMcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709991916; c=relaxed/simple;
	bh=IE2qguSY701jpxZx2vMhyz1m25EfekTS6ESVvajBqOY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=IKvseD7g9xRTizLgPxG1XF+NgKRXCiJ7MIXtpPxH/RXLESd5uV/Cr/8aBthz2TS7iomOmg3/BRfoKmxm+M38jojSA2BzVxDWAVFub6+rGcVDRjzL18McDyl1axezAoSXywKmxPmZe614bX1/mgPI+LM8wnUmjCzQC85xu0Yka3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=paroga.com; spf=pass smtp.mailfrom=paroga.com; dkim=pass (2048-bit key) header.d=paroga.com header.i=@paroga.com header.b=M4fxVx3b; dkim=pass (2048-bit key) header.d=paroga.com header.i=@paroga.com header.b=M4fxVx3b; arc=none smtp.client-ip=212.232.28.126
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=paroga.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=paroga.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=paroga.com;
	 s=easyname; h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=CAFCHbag+sv3bdbCIN31rifWDBust+Hwzy+kvTsITK0=; b=M4fxVx3bdJ7Wf8m1VyvHU9PaWt
	vRhv7uyNWDwt6Weyevuczyd3uCNP/io6H54isQ9sRUWJYaSPdt3BkIqO0y0uoot3IF8CiYcBDQlJg
	VS8bdEinrIQs1LoPhLh9JAqMc4nrDPCtlnSvvM/J7jr/FIfv+TR4jhNe05Yuoz6d7rStMsNUhG05l
	dqsiSiPSS+w3IEdqx3wVDhw27LQR76EG6KhXHBYaCHcKGFx+z+mDmQ6bebAly3gu/fVKK9ANN7e1o
	u35Y8Zt3UYJInY4K1Z2giv1sP/OTS4u/NP6aq1rjmIGobnrkzD2KD/7lkYYM/2vU9FumQ0BORCDSu
	FviDQAcQ==;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=paroga.com;
	 s=easyname; h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=CAFCHbag+sv3bdbCIN31rifWDBust+Hwzy+kvTsITK0=; b=M4fxVx3bdJ7Wf8m1VyvHU9PaWt
	vRhv7uyNWDwt6Weyevuczyd3uCNP/io6H54isQ9sRUWJYaSPdt3BkIqO0y0uoot3IF8CiYcBDQlJg
	VS8bdEinrIQs1LoPhLh9JAqMc4nrDPCtlnSvvM/J7jr/FIfv+TR4jhNe05Yuoz6d7rStMsNUhG05l
	dqsiSiPSS+w3IEdqx3wVDhw27LQR76EG6KhXHBYaCHcKGFx+z+mDmQ6bebAly3gu/fVKK9ANN7e1o
	u35Y8Zt3UYJInY4K1Z2giv1sP/OTS4u/NP6aq1rjmIGobnrkzD2KD/7lkYYM/2vU9FumQ0BORCDSu
	FviDQAcQ==;
Received: from 84-115-228-205.cable.dynamic.surfer.at ([84.115.228.205] helo=localhost.localdomain)
	by mx.easyname.com with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <paroga@paroga.com>)
	id 1riwhp-000Dah-Py; Sat, 09 Mar 2024 13:25:46 +0000
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
Subject: [PATCH v3 2/2] backlight: Add new lm3509 backlight driver
Date: Sat,  9 Mar 2024 14:24:56 +0100
Message-ID: <20240309132521.1290173-2-paroga@paroga.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240309132521.1290173-1-paroga@paroga.com>
References: <20240309132521.1290173-1-paroga@paroga.com>
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
 drivers/video/backlight/lm3509_bl.c | 340 ++++++++++++++++++++++++++++
 3 files changed, 348 insertions(+)
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
index 000000000000..bfad0aaffa0d
--- /dev/null
+++ b/drivers/video/backlight/lm3509_bl.c
@@ -0,0 +1,340 @@
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
+#define LM3509_SINK_MAIN 0
+#define LM3509_SINK_SUB 1
+#define LM3509_NUM_SINKS 2
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
+struct lm3509_bl_led_pdata {
+	const char *label;
+	int led_sources;
+	u32 brightness;
+	u32 max_brightness;
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
+static struct backlight_device *
+lm3509_backlight_register(struct device *dev, const char *name_suffix,
+			  struct lm3509_bl *data,
+			  const struct backlight_ops *ops,
+			  const struct lm3509_bl_led_pdata *pdata)
+
+{
+	struct backlight_device *bd;
+	struct backlight_properties props;
+	const char *label = pdata->label;
+	char name[64];
+
+	memset(&props, 0, sizeof(props));
+	props.type = BACKLIGHT_RAW;
+	props.brightness = pdata->brightness;
+	props.max_brightness = pdata->max_brightness;
+	props.power = pdata->brightness > 0 ? FB_BLANK_UNBLANK :
+					      FB_BLANK_POWERDOWN;
+
+	if (!label) {
+		snprintf(name, sizeof(name), "lm3509-%s-%s", dev_name(dev),
+			 name_suffix);
+		label = name;
+	}
+
+	bd = devm_backlight_device_register(dev, label, dev, data, ops, &props);
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
+static int lm3509_parse_led_sources(struct device_node *node,
+				    int default_led_sources)
+{
+	u32 sources[LM3509_NUM_SINKS];
+	int ret, num_sources, i;
+
+	num_sources = of_property_count_u32_elems(node, "led-sources");
+	if (num_sources < 0)
+		return default_led_sources;
+	else if (num_sources > ARRAY_SIZE(sources))
+		return -EINVAL;
+
+	ret = of_property_read_u32_array(node, "led-sources", sources,
+					 num_sources);
+	if (ret)
+		return ret;
+
+	for (i = 0; i < num_sources; i++) {
+		if (sources[i] >= LM3509_NUM_SINKS)
+			return -EINVAL;
+
+		ret |= BIT(sources[i]);
+	}
+
+	return ret;
+}
+
+static int lm3509_parse_dt_node(struct device *dev,
+				struct lm3509_bl_led_pdata *pdata)
+{
+	struct device_node *child;
+	int seen_led_sources = 0;
+
+	for_each_child_of_node(dev->of_node, child) {
+		struct lm3509_bl_led_pdata *pd;
+		int ret;
+		u32 reg;
+		int valid_led_sources;
+
+		ret = of_property_read_u32(child, "reg", &reg);
+		if (ret < 0)
+			return ret;
+		if (reg >= LM3509_NUM_SINKS)
+			return -EINVAL;
+		pd = &pdata[reg];
+
+		pd->led_sources = lm3509_parse_led_sources(child, BIT(reg));
+		if (pd->led_sources < 0)
+			return pd->led_sources;
+
+		if (reg == 0)
+			valid_led_sources = BIT(LM3509_SINK_MAIN) |
+					    BIT(LM3509_SINK_SUB);
+		else
+			valid_led_sources = BIT(LM3509_SINK_SUB);
+
+		if (pd->led_sources != (pd->led_sources & valid_led_sources))
+			return -EINVAL;
+
+		if (seen_led_sources & pd->led_sources)
+			return -EINVAL;
+
+		seen_led_sources |= pd->led_sources;
+
+		pd->label = NULL;
+		of_property_read_string(child, "label", &pd->label);
+
+		pd->max_brightness = LM3509_MAX_BRIGHTNESS;
+		of_property_read_u32(child, "max-brightness",
+				     &pd->max_brightness);
+		pd->max_brightness =
+			min_t(u32, pd->max_brightness, LM3509_MAX_BRIGHTNESS);
+
+		pd->brightness = LM3509_DEF_BRIGHTNESS;
+		of_property_read_u32(child, "default-brightness",
+				     &pd->brightness);
+		pd->brightness = min_t(u32, pd->brightness, pd->max_brightness);
+	}
+
+	return 0;
+}
+
+static int lm3509_probe(struct i2c_client *client)
+{
+	struct lm3509_bl *data;
+	struct device *dev = &client->dev;
+	int ret;
+	bool oled_mode = false;
+	unsigned int reg_gp_val = 0;
+	struct lm3509_bl_led_pdata pdata[LM3509_NUM_SINKS];
+	u32 rate_of_change = 0;
+
+	if (!i2c_check_functionality(client->adapter, I2C_FUNC_I2C)) {
+		dev_err(dev, "i2c functionality check failed\n");
+		return -EOPNOTSUPP;
+	}
+
+	data = devm_kzalloc(dev, sizeof(struct lm3509_bl), GFP_KERNEL);
+	if (!data)
+		return -ENOMEM;
+
+	data->regmap = devm_regmap_init_i2c(client, &lm3509_regmap);
+	if (IS_ERR(data->regmap))
+		return PTR_ERR(data->regmap);
+	i2c_set_clientdata(client, data);
+
+	data->reset_gpio = devm_gpiod_get_optional(dev, "reset", GPIOD_OUT_LOW);
+	if (IS_ERR(data->reset_gpio))
+		return dev_err_probe(dev, PTR_ERR(data->reset_gpio),
+				     "Failed to get 'reset' gpio\n");
+
+	lm3509_reset(data);
+
+	memset(pdata, 0, sizeof(pdata));
+	ret = lm3509_parse_dt_node(dev, pdata);
+	if (ret)
+		return ret;
+
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
+	if (pdata[0].led_sources ==
+	    (BIT(LM3509_SINK_MAIN) | BIT(LM3509_SINK_SUB)))
+		reg_gp_val |= BIT(REG_GP_UNI_BIT);
+	if (oled_mode)
+		reg_gp_val |= BIT(REG_GP_OLED_BIT);
+
+	ret = regmap_write(data->regmap, REG_GP, reg_gp_val);
+	if (ret < 0)
+		return ret;
+
+	if (pdata[0].led_sources) {
+		data->bl_main = lm3509_backlight_register(
+			dev, "main", data, &lm3509_main_ops, &pdata[0]);
+		if (IS_ERR(data->bl_main)) {
+			dev_err(dev, "failed to register main backlight\n");
+			return PTR_ERR(data->bl_main);
+		}
+	}
+
+	if (pdata[1].led_sources) {
+		data->bl_sub = lm3509_backlight_register(
+			dev, "sub", data, &lm3509_sub_ops, &pdata[1]);
+		if (IS_ERR(data->bl_sub)) {
+			dev_err(dev,
+				"failed to register secondary backlight\n");
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


