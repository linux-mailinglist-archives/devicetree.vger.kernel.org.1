Return-Path: <devicetree+bounces-5996-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DA71D7B9A22
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 04:59:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id CBCC51C208E0
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 02:59:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15D701106;
	Thu,  5 Oct 2023 02:59:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="K+IK+vyD"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28BD21847
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 02:59:37 +0000 (UTC)
Received: from mail-io1-xd2b.google.com (mail-io1-xd2b.google.com [IPv6:2607:f8b0:4864:20::d2b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C800619A
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 19:59:34 -0700 (PDT)
Received: by mail-io1-xd2b.google.com with SMTP id ca18e2360f4ac-7a24c86aae3so8587739f.0
        for <devicetree@vger.kernel.org>; Wed, 04 Oct 2023 19:59:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696474774; x=1697079574; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=o8UbiRXeWQbu5CCxehWCFCKEGYBPmnXfSamsU23VNAk=;
        b=K+IK+vyDrEfWzOT5JIT48hmKzhKKMLZFDbPaFEtMSfNdxRbnFRUwpxKPZgx6WNCIPa
         Q/tfeX4dF60zzaRc6qGDxu8TS/XpLaDxVtd0OOZTWBau3G7OlfTRlLCZh3R6PP3edKi1
         Ru+ZdOHqAcEBNBNxR1zDzPlJWQI5K/On1Ee8GwIBthfLrMJoWpbTx0XV3dEsJ83X8XUf
         uac99DhOkV1AeYnDnh9VUTtL2sPKvd+W+BgD8revfnQm7RIkR5ahDK1FNFSA6zFQM/vX
         zNknROnZxuuEl6bUgTOeTksuxH9kBvRzTTa/Bt30fdPVuFBQhLOBOvzPf9jZaXwDqgM0
         rsQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696474774; x=1697079574;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=o8UbiRXeWQbu5CCxehWCFCKEGYBPmnXfSamsU23VNAk=;
        b=xFYOCwQ01ahrzUQvQZDW1Tfdn2lfmIhV1JTDHS1q+S50J8IDmhdjk8wHw7hVfShLRL
         gMjOnUqq1jlacc8Aaiv0zDiZpp8V9lVHWYRlhHmoBiXq3hxP/ikm8Mw7pygPwIZyVZH9
         thbu03bAkZyYcFJpLYTPjJCFfR+dMNYt7UiHN0hqvPArps/16jlkOJFfzQP1n/0nUCzd
         PphS8J1SqVWXI9TF1S1SUQy8IPLbWAT1aPsUuMaSE/3DwWWIruTBO3L9av6OGJPdWMcc
         t+PA80ALHVdPLzl1gIUA/8wYzoBefjbw81zxOigTZY7FMtC/q/YkA2STdkn3/3zteecG
         yVAQ==
X-Gm-Message-State: AOJu0YxY4xxbhLB8VY23K+nM7KlSSvJyUnv8MA/QyDZkJg1woM8S2c2W
	CX34f1ap7Iya6sPHYz48uOFL8A==
X-Google-Smtp-Source: AGHT+IEIo4FgrkyprKPEFogjQ8fMf3lI1H/+E2BdJpeZVdJkotQfybd+YwiLDuLtUjYGfdM29DxTOg==
X-Received: by 2002:a92:dacd:0:b0:351:1ed0:5c6b with SMTP id o13-20020a92dacd000000b003511ed05c6bmr3933124ilq.3.1696474774015;
        Wed, 04 Oct 2023 19:59:34 -0700 (PDT)
Received: from octopus.. ([2400:4050:c3e1:100:a16d:fce2:497:afb7])
        by smtp.gmail.com with ESMTPSA id b18-20020a637152000000b005782ad723casm269265pgn.27.2023.10.04.19.59.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Oct 2023 19:59:33 -0700 (PDT)
From: AKASHI Takahiro <takahiro.akashi@linaro.org>
To: sudeep.holla@arm.com,
	cristian.marussi@arm.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	linus.walleij@linaro.org
Cc: Oleksii_Moisieiev@epam.com,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	AKASHI Takahiro <takahiro.akashi@linaro.org>
Subject: [RFC v2 4/5] gpio: add pinctrl based generic gpio driver
Date: Thu,  5 Oct 2023 11:58:42 +0900
Message-Id: <20231005025843.508689-5-takahiro.akashi@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231005025843.508689-1-takahiro.akashi@linaro.org>
References: <20231005025843.508689-1-takahiro.akashi@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Some pin controllers provide not only a method to set up lines but
also gpio function. With this commit, a new generic gpio driver will
be provided. It is implemented purely by using pinctrl interfaces.
One of such pin controllers is Arm's SCMI.

Signed-off-by: AKASHI Takahiro <takahiro.akashi@linaro.org>
---
RFC v2 (Oct 5, 2023)
* rename the driver to pin-control-gpio (CONFIG_GPIO_BY_PINCTRL)
* return meaningful error codes instead of -1
* remove the masking at PIN_CONFIG_PACKED
* handle emulated OPEN_DRAIN configuration at get_direction()
* define config_set in gpio_chip
* drop remove hook
RFC (Oct 2, 2023)
---
 drivers/gpio/Kconfig           |   7 ++
 drivers/gpio/Makefile          |   1 +
 drivers/gpio/gpio-by-pinctrl.c | 165 +++++++++++++++++++++++++++++++++
 3 files changed, 173 insertions(+)
 create mode 100644 drivers/gpio/gpio-by-pinctrl.c

diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
index 673bafb8be58..a60972be114c 100644
--- a/drivers/gpio/Kconfig
+++ b/drivers/gpio/Kconfig
@@ -216,6 +216,13 @@ config GPIO_BRCMSTB
 	help
 	  Say yes here to enable GPIO support for Broadcom STB (BCM7XXX) SoCs.
 
+config GPIO_BY_PINCTRL
+	tristate "GPIO support based on a pure pin control backend"
+	depends on GPIOLIB
+	help
+	  Select this option to support GPIO devices based solely on pin
+	  control, specifically pin configuration, such as SCMI.
+
 config GPIO_CADENCE
 	tristate "Cadence GPIO support"
 	depends on OF_GPIO
diff --git a/drivers/gpio/Makefile b/drivers/gpio/Makefile
index eb73b5d633eb..71458d81e16a 100644
--- a/drivers/gpio/Makefile
+++ b/drivers/gpio/Makefile
@@ -43,6 +43,7 @@ obj-$(CONFIG_GPIO_BD71828)		+= gpio-bd71828.o
 obj-$(CONFIG_GPIO_BD9571MWV)		+= gpio-bd9571mwv.o
 obj-$(CONFIG_GPIO_BRCMSTB)		+= gpio-brcmstb.o
 obj-$(CONFIG_GPIO_BT8XX)		+= gpio-bt8xx.o
+obj-$(CONFIG_GPIO_BY_PINCTRL)		+= gpio-by-pinctrl.o
 obj-$(CONFIG_GPIO_CADENCE)		+= gpio-cadence.o
 obj-$(CONFIG_GPIO_CLPS711X)		+= gpio-clps711x.o
 obj-$(CONFIG_GPIO_SNPS_CREG)		+= gpio-creg-snps.o
diff --git a/drivers/gpio/gpio-by-pinctrl.c b/drivers/gpio/gpio-by-pinctrl.c
new file mode 100644
index 000000000000..c297a9633e03
--- /dev/null
+++ b/drivers/gpio/gpio-by-pinctrl.c
@@ -0,0 +1,165 @@
+// SPDX-License-Identifier: GPL-2.0
+//
+// Copyright (C) 2023 Linaro Inc.
+//   Author: AKASHI takahiro <takahiro.akashi@linaro.org>
+
+#include <linux/gpio/driver.h>
+#include <linux/list.h>
+#include <linux/module.h>
+#include <linux/pinctrl/consumer.h>
+#include <linux/platform_device.h>
+#include <linux/types.h>
+#include "gpiolib.h"
+
+struct pin_control_gpio_priv {
+	struct gpio_chip chip;
+};
+
+static int pin_control_gpio_get_direction(struct gpio_chip *chip,
+				      unsigned int offset)
+{
+	unsigned long config;
+	bool out_en, in_en;
+	int ret;
+
+	config = PIN_CONFIG_OUTPUT_ENABLE;
+	ret = pinctrl_gpio_get_config(chip->gpiodev->base + offset, &config);
+	if (!ret)
+		out_en = !!config;
+	else if (ret == -EINVAL)
+		out_en = false;
+	else
+		return ret;
+
+	config = PIN_CONFIG_INPUT_ENABLE;
+	ret = pinctrl_gpio_get_config(chip->gpiodev->base + offset, &config);
+	if (!ret)
+		in_en = !!config;
+	else if (ret == -EINVAL)
+		in_en = false;
+	else
+		return ret;
+
+	if (in_en && !out_en)
+		return GPIO_LINE_DIRECTION_IN;
+
+	if (!in_en && out_en)
+		return GPIO_LINE_DIRECTION_OUT;
+
+	if (in_en && out_en) {
+	    /* This may be an emulation for output with open drain */
+		config = PIN_CONFIG_DRIVE_OPEN_DRAIN;
+		ret = pinctrl_gpio_get_config(chip->gpiodev->base + offset,
+					      &config);
+		if (!ret && config)
+			return GPIO_LINE_DIRECTION_OUT;
+	}
+
+	return -EINVAL;
+}
+
+static int pin_control_gpio_direction_input(struct gpio_chip *chip,
+					    unsigned int offset)
+{
+	return pinctrl_gpio_direction_input(chip->gpiodev->base + offset);
+}
+
+static int pin_control_gpio_direction_output(struct gpio_chip *chip,
+					     unsigned int offset, int val)
+{
+	return pinctrl_gpio_direction_output(chip->gpiodev->base + offset);
+}
+
+static int pin_control_gpio_get(struct gpio_chip *chip, unsigned int offset)
+{
+	unsigned long config;
+	int ret;
+
+	config = PIN_CONFIG_INPUT;
+	ret = pinctrl_gpio_get_config(chip->gpiodev->base + offset, &config);
+	if (ret)
+		return ret;
+
+	if (config >> 8)
+		return 1;
+
+	return 0;
+}
+
+static void pin_control_gpio_set(struct gpio_chip *chip, unsigned int offset,
+				 int val)
+{
+	unsigned long config;
+
+	config = PIN_CONF_PACKED(PIN_CONFIG_OUTPUT, val);
+
+	pinctrl_gpio_set_config(chip->gpiodev->base + offset, config);
+}
+
+static u16 sum_up_ngpios(struct gpio_chip *chip)
+{
+	struct gpio_pin_range *range;
+	struct gpio_device *gdev = chip->gpiodev;
+	u16 ngpios = 0;
+
+	list_for_each_entry(range, &gdev->pin_ranges, node) {
+		ngpios += range->range.npins;
+	}
+
+	return ngpios;
+}
+
+static int pin_control_gpio_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct pin_control_gpio_priv *priv;
+	struct gpio_chip *chip;
+	int ret;
+
+	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
+	if (!priv)
+		return -ENOMEM;
+
+	chip = &priv->chip;
+	chip->label = dev_name(dev);
+	chip->parent = dev;
+	chip->base = -1;
+
+	chip->request = gpiochip_generic_request;
+	chip->free = gpiochip_generic_free;
+	chip->get_direction = pin_control_gpio_get_direction;
+	chip->direction_input = pin_control_gpio_direction_input;
+	chip->direction_output = pin_control_gpio_direction_output;
+	chip->get = pin_control_gpio_get;
+	chip->set = pin_control_gpio_set;
+	chip->set_config = gpiochip_generic_config;
+
+	ret = devm_gpiochip_add_data(dev, chip, priv);
+	if (ret)
+		return ret;
+
+	chip->ngpio = sum_up_ngpios(chip);
+
+	platform_set_drvdata(pdev, priv);
+
+	return 0;
+}
+
+static const struct of_device_id pin_control_gpio_match[] = {
+	{ .compatible = "pin-control-gpio" },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, pin_control_gpio_match);
+
+static struct platform_driver pin_control_gpio_driver = {
+	.probe = pin_control_gpio_probe,
+	.driver = {
+		.name = "pin-control-gpio",
+		.of_match_table = pin_control_gpio_match,
+	},
+};
+module_platform_driver(pin_control_gpio_driver);
+
+MODULE_AUTHOR("AKASHI Takahiro <takahiro.akashi@linaro.org>");
+MODULE_DESCRIPTION("Pinctrl based GPIO driver");
+MODULE_LICENSE("GPL");
-- 
2.34.1


