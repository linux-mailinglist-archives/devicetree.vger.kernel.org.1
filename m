Return-Path: <devicetree+bounces-28081-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BEE4681CB99
	for <lists+devicetree@lfdr.de>; Fri, 22 Dec 2023 16:02:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7578D2868A0
	for <lists+devicetree@lfdr.de>; Fri, 22 Dec 2023 15:02:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7DD4D241E4;
	Fri, 22 Dec 2023 15:01:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tkWHwcPH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 876E62374E
	for <devicetree@vger.kernel.org>; Fri, 22 Dec 2023 15:01:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-50e70b0b869so33826e87.2
        for <devicetree@vger.kernel.org>; Fri, 22 Dec 2023 07:01:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1703257306; x=1703862106; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rY+Ix+0Edhw9Of7v8MceePDnv6PKZ0qWKEzNHi94emw=;
        b=tkWHwcPHNl6C92mcSdRFaIAzD+3EGQaFRERrgZ8lhjD0Xd5NFc+P+sHBss+A0hJtBS
         HVnbubc10EwBPTT44endWBIG2gC2GBKycrxBiVWkKt/h7UWUV7Xn1RXeoVkl/tC0ymmd
         GwC69zUp0jt41yvisLpu3/U2kK5xItjQ/0EJ6wWA5rUMfcdxcKnarRQS1hVo2krRuo/W
         EKb7m+0919wOf7NeS9ODy4JNqltnbJCZ6QvlwZXCvkFBakW6/xisEShfOT7X3+OhkS3S
         EGv2jsptpBatVty1TEY6qpXI9jnHxD7ZcPLlAsn1B7TrtQFspUjlBbPvpvrzbAN8X76k
         ujag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703257306; x=1703862106;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rY+Ix+0Edhw9Of7v8MceePDnv6PKZ0qWKEzNHi94emw=;
        b=dYKGq07rzgRACvcpaQhdyk65QJVO1P01wKI2Sp5GN/hbp3Dy3i1AmTGoNhwSIdljyS
         ZG1K6v2aHq+A22awrAniZ1pWHZKsBvHcrdwv1/aKEXX9sNoyprracGAjshXiPQxuRQ40
         yatvqrNuBJmgS8xbcUe4cr1aDpG+YCy4cRqNfGOtJ4e9KoSozxMXjmHOSMyZ0RAn0Nc4
         j2HptPdGIUN9Zl9H2R98CLD1aNi+04sicmlYuSQc8SnsG2oD665U8cmWUhBjcYFE8+U9
         2kSSPfoBRlxfkNPDya7eeij9MOX2y9k399qrItnDYOQ1JlDkPbYFReI6RB+jcBGr037u
         mWJg==
X-Gm-Message-State: AOJu0YyTTzCNNJMqkv6hstTaxiBiQOgnQ43jeVJ5Xs459acckb27UQNE
	pw22v1MCexvSYpDQf45XY3A6XCDNF+FqAA==
X-Google-Smtp-Source: AGHT+IERJW4T91WGiP+wu8qoU0QkN4X16TMIuviArBP6wKljKiUI/SdehMnQ9+X+6SnuqpYnMufOlA==
X-Received: by 2002:a05:6512:104a:b0:50e:6a31:127a with SMTP id c10-20020a056512104a00b0050e6a31127amr770806lfb.31.1703257306354;
        Fri, 22 Dec 2023 07:01:46 -0800 (PST)
Received: from krzk-bin.. ([78.10.206.178])
        by smtp.gmail.com with ESMTPSA id h1-20020a17090791c100b00a26af35c171sm1275671ejz.0.2023.12.22.07.01.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Dec 2023 07:01:45 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Banajit Goswami <bgoswami@quicinc.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	linux-arm-msm@vger.kernel.org,
	alsa-devel@alsa-project.org,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Sean Anderson <sean.anderson@seco.com>
Subject: [PATCH 2/4] reset: add GPIO-based reset controller
Date: Fri, 22 Dec 2023 16:01:31 +0100
Message-Id: <20231222150133.732662-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231222150133.732662-1-krzysztof.kozlowski@linaro.org>
References: <20231222150133.732662-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add simple driver to control GPIO-based resets using the reset
controller API for the cases when the GPIOs are shared and reset should
be coordinated.  The driver is expected to be used by reset core
framework for ad-hoc reset controllers.

Cc: Bartosz Golaszewski <brgl@bgdev.pl>
Cc: Sean Anderson <sean.anderson@seco.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 MAINTAINERS                |   5 ++
 drivers/reset/Kconfig      |   9 ++++
 drivers/reset/Makefile     |   1 +
 drivers/reset/reset-gpio.c | 105 +++++++++++++++++++++++++++++++++++++
 4 files changed, 120 insertions(+)
 create mode 100644 drivers/reset/reset-gpio.c

diff --git a/MAINTAINERS b/MAINTAINERS
index 7fe27cd60e1b..a0fbd4814bc7 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -8866,6 +8866,11 @@ F:	Documentation/i2c/muxes/i2c-mux-gpio.rst
 F:	drivers/i2c/muxes/i2c-mux-gpio.c
 F:	include/linux/platform_data/i2c-mux-gpio.h
 
+GENERIC GPIO RESET DRIVER
+M:	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
+S:	Maintained
+F:	drivers/reset/reset-gpio.c
+
 GENERIC HDLC (WAN) DRIVERS
 M:	Krzysztof Halasa <khc@pm.waw.pl>
 S:	Maintained
diff --git a/drivers/reset/Kconfig b/drivers/reset/Kconfig
index ccd59ddd7610..bb1b5a326eb7 100644
--- a/drivers/reset/Kconfig
+++ b/drivers/reset/Kconfig
@@ -66,6 +66,15 @@ config RESET_BRCMSTB_RESCAL
 	  This enables the RESCAL reset controller for SATA, PCIe0, or PCIe1 on
 	  BCM7216.
 
+config RESET_GPIO
+	tristate "GPIO reset controller"
+	help
+	  This enables a generic reset controller for resets attached via
+	  GPIOs.  Typically for OF platforms this driver expects "reset-gpios"
+	  property.
+
+	  If compiled as module, it will be called reset-gpio.
+
 config RESET_HSDK
 	bool "Synopsys HSDK Reset Driver"
 	depends on HAS_IOMEM
diff --git a/drivers/reset/Makefile b/drivers/reset/Makefile
index 8270da8a4baa..fd8b49fa46fc 100644
--- a/drivers/reset/Makefile
+++ b/drivers/reset/Makefile
@@ -11,6 +11,7 @@ obj-$(CONFIG_RESET_BCM6345) += reset-bcm6345.o
 obj-$(CONFIG_RESET_BERLIN) += reset-berlin.o
 obj-$(CONFIG_RESET_BRCMSTB) += reset-brcmstb.o
 obj-$(CONFIG_RESET_BRCMSTB_RESCAL) += reset-brcmstb-rescal.o
+obj-$(CONFIG_RESET_GPIO) += reset-gpio.o
 obj-$(CONFIG_RESET_HSDK) += reset-hsdk.o
 obj-$(CONFIG_RESET_IMX7) += reset-imx7.o
 obj-$(CONFIG_RESET_INTEL_GW) += reset-intel-gw.o
diff --git a/drivers/reset/reset-gpio.c b/drivers/reset/reset-gpio.c
new file mode 100644
index 000000000000..6952996dbc9f
--- /dev/null
+++ b/drivers/reset/reset-gpio.c
@@ -0,0 +1,105 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#include <linux/gpio/consumer.h>
+#include <linux/mod_devicetable.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/platform_device.h>
+#include <linux/reset-controller.h>
+
+struct reset_gpio_priv {
+	struct reset_controller_dev rc;
+	struct gpio_desc *reset;
+};
+
+static inline struct reset_gpio_priv
+*rc_to_reset_gpio(struct reset_controller_dev *rc)
+{
+	return container_of(rc, struct reset_gpio_priv, rc);
+}
+
+static int reset_gpio_assert(struct reset_controller_dev *rc, unsigned long id)
+{
+	struct reset_gpio_priv *priv = rc_to_reset_gpio(rc);
+
+	gpiod_set_value_cansleep(priv->reset, 1);
+
+	return 0;
+}
+
+static int reset_gpio_deassert(struct reset_controller_dev *rc,
+			       unsigned long id)
+{
+	struct reset_gpio_priv *priv = rc_to_reset_gpio(rc);
+
+	gpiod_set_value_cansleep(priv->reset, 0);
+
+	return 0;
+}
+
+static int reset_gpio_status(struct reset_controller_dev *rc, unsigned long id)
+{
+	struct reset_gpio_priv *priv = rc_to_reset_gpio(rc);
+
+	return gpiod_get_value_cansleep(priv->reset);
+}
+
+static const struct reset_control_ops reset_gpio_ops = {
+	.assert = reset_gpio_assert,
+	.deassert = reset_gpio_deassert,
+	.status = reset_gpio_status,
+};
+
+static int reset_gpio_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct device_node **platdata = dev_get_platdata(dev);
+	struct reset_gpio_priv *priv;
+
+	if (!platdata && !*platdata)
+		return -EINVAL;
+
+	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
+	if (!priv)
+		return -ENOMEM;
+
+	platform_set_drvdata(pdev, &priv->rc);
+	device_set_node(dev, of_fwnode_handle(*platdata));
+
+	/*
+	 * Need to get non-exclusive because it is used in reset core as cookie
+	 * to find existing controllers.  However the actual use is exclusive.
+	 */
+	priv->reset = devm_gpiod_get(dev, "reset",
+				     GPIOD_OUT_HIGH);
+	if (IS_ERR(priv->reset))
+		return dev_err_probe(dev, PTR_ERR(priv->reset),
+				     "Could not get reset gpios\n");
+
+	priv->rc.ops = &reset_gpio_ops;
+	priv->rc.owner = THIS_MODULE;
+	priv->rc.dev = dev;
+	priv->rc.cookie = priv->reset;
+	priv->rc.nr_resets = 1;
+
+	return devm_reset_controller_register(dev, &priv->rc);
+}
+
+static const struct platform_device_id reset_gpio_ids[] = {
+	{ .name = "reset-gpio", },
+	{}
+};
+MODULE_DEVICE_TABLE(platform, reset_gpio_ids);
+
+static struct platform_driver reset_gpio_driver = {
+	.probe		= reset_gpio_probe,
+	.id_table	= reset_gpio_ids,
+	.driver	= {
+		.name = "reset-gpio",
+	},
+};
+module_platform_driver(reset_gpio_driver);
+
+MODULE_AUTHOR("Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>");
+MODULE_DESCRIPTION("Generic GPIO reset driver");
+MODULE_LICENSE("GPL");
-- 
2.34.1


