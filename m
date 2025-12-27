Return-Path: <devicetree+bounces-249903-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 54466CE00BF
	for <lists+devicetree@lfdr.de>; Sat, 27 Dec 2025 19:02:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DE65C3027CD6
	for <lists+devicetree@lfdr.de>; Sat, 27 Dec 2025 18:01:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CEAD32694B;
	Sat, 27 Dec 2025 18:01:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="H0jzYcGK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68C62221277
	for <devicetree@vger.kernel.org>; Sat, 27 Dec 2025 18:01:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766858507; cv=none; b=gci9lLY+qBtSrIhC/pOjzz26mnpHxUptnz508WbfDvovp+3ikJ24kD98oUFE8X7rTcEELGwq5cvZxPuAC4CCqztCVmi1XufqAUce+X3aOji1V4lL6FT9PgdZU8RHzc25tf/HF3xfR7j5Gr+pwxeYeLwFupq5Ck+eBye3fKnVKqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766858507; c=relaxed/simple;
	bh=e8YVyW49DbFA1obivdBn8/Pnhvbl84qe6o+D/PBtoO4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=lzjqHUBEaiLew4y8vzkSTsViLvgqw3Jg42nBnNce6ULht6TUl+it7qZ5m515qD9/KiNyDscDg8pWKxk1Pv1UiK7UsQH3EdWKteT9bDi4OMwV7vSZmjEQdPxW+smeOWqxkSzL4qoxW6CaM7BWwU5WvkvlhxlvSvjsNVsfUDhRv5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=H0jzYcGK; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-b734fcbf1e3so1631859466b.3
        for <devicetree@vger.kernel.org>; Sat, 27 Dec 2025 10:01:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766858503; x=1767463303; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sTALi2qrQQaNiy7RTP6OBTzsPFHWxY/VKluyG/WXiPQ=;
        b=H0jzYcGKiQLVoe/KVz063EstGwqVDyRhv/ROFadORH1vQtqNx+Ewr/8LuG5M6PRH3y
         jAps5auXwfvOGvzFR38heBUaO8W0qxYkvyF/8jEYt8ORJa/Mx0/+mfFp/mdB3jk5zsJR
         Ko/Qab0mpw3iSHrCxXxm8GXqmYFf5JMo+KRLBSIRrcfakFf9+W9VF0h7Flqh/CR31+OS
         GdcTKz9Ae8GDjkP62VnT1vBlyO0OiIiwSvCM7ankJlsVfbHqSIABgBGqK8qsaCeWm6XU
         k8iGvZB4OLIykn5H0ESMr8IDXED2Yt4NNT9fU2lXSlwcMqM8bUxtwrK1QoyTPl6dIVGk
         +ieQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766858503; x=1767463303;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=sTALi2qrQQaNiy7RTP6OBTzsPFHWxY/VKluyG/WXiPQ=;
        b=J4E78y8jDoVjfDF7oufQ3RfDJbsP2fLSZPTjjORqeFtr8h6T0Go3gE5TMfNXXw3pP0
         6iHqCDU++p6TQbLQJqUbDINTWx5tnVwJm4fmoYMc6kC25s9h+/kNoBpmPUiArPdw72jC
         mzG1LBcJuh5W1pRpoTrkEHq8A55oQXJKBC+wLXCzepxzYljNGjTNCOTZkXt+qL7s16qR
         3G4neJYrxy0KLq+RL0O6xoQqKgUgOphKHjpo5zjyRVy4+Q4pGaY2vngwtpMC1SqvS580
         j540smLagoEuYcEUxeZaMWwZRE8a74IHQ2OI5DDdeGjRpnw9T9anFgKi9hE0Swb4mCTK
         A8Yw==
X-Forwarded-Encrypted: i=1; AJvYcCVsykjCRV7xwr9C9L8u6zm80EpMJhNTBZsS5FpxpTUxKGsUgzPC9D5aiF0R7+pvUv7qSNVUqkXlW+c6@vger.kernel.org
X-Gm-Message-State: AOJu0Yxcn+LfNNJXM0/g00Khpc7iv76p6l6pEk53CCM9bJLAeLdj93+D
	tHpSvMZaxq+l1NDeRngLZuya4KF7QyQwPOGRyxqOb3I2jBsV1yI9gtW/
X-Gm-Gg: AY/fxX7VJkebwniEhujWxsTe4GsiipnSEGvQnCPs6I5ul4PsPvgQeAqH1kpMx73rkvm
	vl2TJ5fTASCDnYRwhPMx/97VCrD4axfn5ym9BnRV6CyBzqZNmSq2diY2wMUgF+t5IsX9hLOrrN+
	npmSXTF5mQnTB9RIgA5edkltW3RKKGU9VuNhSNZxxq/IBIa9WQaqLbTRqGrPbG5hIoJGwNXleIH
	oEbv/33bmRI4eAHjEIR6JzdUEl6zSKNV8TzHurYXM/S+7+NDzT8QPlr4UkPNVv+DJ1GMjJa2kkT
	1rHihRuAiVa++WNwbEeitIEPWicfYv14GjF8YZyVYEFoILubbgkBsG74EoId7hWEmQ3hpdedlZL
	X/b1gQaUGgJ0L+fOT7gt7zmhY7OT0EkHafKrd/rb6XawiBumhXBxXK31wSU+xkknHj8IF27CReD
	kXSKEhPc9OIRH26wY=
X-Google-Smtp-Source: AGHT+IFiQda7vyrnxfvivqvCgO4e6qjL6oqGwmGim+3hpMHkIza8dH5snrsL7yqxi5m6n45jfh3bMQ==
X-Received: by 2002:a17:907:9719:b0:b80:f4d:4aba with SMTP id a640c23a62f3a-b80371d6999mr2746322966b.47.1766858503444;
        Sat, 27 Dec 2025 10:01:43 -0800 (PST)
Received: from builder.. ([2001:9e8:f10d:7316:be24:11ff:fe30:5d85])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037de1421sm2794835666b.41.2025.12.27.10.01.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Dec 2025 10:01:43 -0800 (PST)
From: Jonas Jelonek <jelonek.jonas@gmail.com>
To: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Peter Rosin <peda@axentia.se>,
	Geert Uytterhoeven <geert+renesas@glider.be>
Cc: linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Thomas Richard <thomas.richard@bootlin.com>,
	Jonas Jelonek <jelonek.jonas@gmail.com>
Subject: [PATCH v7 2/2] gpio: add gpio-line-mux driver
Date: Sat, 27 Dec 2025 18:01:34 +0000
Message-ID: <20251227180134.1262138-3-jelonek.jonas@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251227180134.1262138-1-jelonek.jonas@gmail.com>
References: <20251227180134.1262138-1-jelonek.jonas@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add a new driver which provides a 1-to-many mapping for a single real
GPIO using a multiplexer. Each virtual GPIO corresponds to a multiplexer
state which, if set for the multiplexer, connects the real GPIO to the
corresponding virtual GPIO.

This can help in various usecases. One practical case is the special
hardware design of the Realtek-based XS1930-10 switch from Zyxel. It
features two SFP+ ports/cages whose signals are wired directly to the
switch SoC. Although Realtek SoCs are short on GPIOs, there are usually
enough the fit the SFP signals without any hacks.

However, Zyxel did some weird design and connected RX_LOS, MOD_ABS and
TX_FAULT of one SFP cage onto a single GPIO line controlled by a
multiplexer (the same for the other SFP cage). The single multiplexer
controls the lines for both SFP and depending on the state, the
designated 'signal GPIO lines' are connected to one of the three SFP
signals.

Because the SFP core/driver doesn't support multiplexer but needs single
GPIOs for each of the signals, this driver fills the gap between both.
It registers a gpio_chip, provides multiple virtual GPIOs and sets the
backing multiplexer accordingly.

Due to several practical issues, this is input-only and doesn't support
IRQs.

Signed-off-by: Jonas Jelonek <jelonek.jonas@gmail.com>
Reviewed-by: Thomas Richard <thomas.richard@bootlin.com>
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
---
 MAINTAINERS                  |   6 ++
 drivers/gpio/Kconfig         |   9 +++
 drivers/gpio/Makefile        |   1 +
 drivers/gpio/gpio-line-mux.c | 126 +++++++++++++++++++++++++++++++++++
 4 files changed, 142 insertions(+)
 create mode 100644 drivers/gpio/gpio-line-mux.c

diff --git a/MAINTAINERS b/MAINTAINERS
index 5b11839cba9d..8056ef0ffbf0 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -10774,6 +10774,12 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/leds/irled/gpio-ir-tx.yaml
 F:	drivers/media/rc/gpio-ir-tx.c
 
+GPIO LINE MUX
+M:	Jonas Jelonek <jelonek.jonas@gmail.com>
+S:	Maintained
+F:	Documentation/devicetree/bindings/gpio/gpio-line-mux.yaml
+F:	drivers/gpio/gpio-line-mux.c
+
 GPIO MOCKUP DRIVER
 M:	Bamvor Jian Zhang <bamv2005@gmail.com>
 L:	linux-gpio@vger.kernel.org
diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
index c33f9305ab97..2efa58f10781 100644
--- a/drivers/gpio/Kconfig
+++ b/drivers/gpio/Kconfig
@@ -1994,6 +1994,15 @@ config GPIO_LATCH
 	  Say yes here to enable a driver for GPIO multiplexers based on latches
 	  connected to other GPIOs.
 
+config GPIO_LINE_MUX
+	tristate "GPIO line mux driver"
+	depends on OF_GPIO
+	select MULTIPLEXER
+	help
+	  Say Y here to support the GPIO line mux, which can provide virtual
+	  GPIOs backed by a shared real GPIO and a multiplexer in a 1-to-many
+	  fashion.
+
 config GPIO_MOCKUP
 	tristate "GPIO Testing Driver (DEPRECATED)"
 	select IRQ_SIM
diff --git a/drivers/gpio/Makefile b/drivers/gpio/Makefile
index 2421a8fd3733..36fa7c52d240 100644
--- a/drivers/gpio/Makefile
+++ b/drivers/gpio/Makefile
@@ -90,6 +90,7 @@ obj-$(CONFIG_GPIO_IXP4XX)		+= gpio-ixp4xx.o
 obj-$(CONFIG_GPIO_JANZ_TTL)		+= gpio-janz-ttl.o
 obj-$(CONFIG_GPIO_KEMPLD)		+= gpio-kempld.o
 obj-$(CONFIG_GPIO_LATCH)		+= gpio-latch.o
+obj-$(CONFIG_GPIO_LINE_MUX)		+= gpio-line-mux.o
 obj-$(CONFIG_GPIO_LJCA) 		+= gpio-ljca.o
 obj-$(CONFIG_GPIO_LOGICVC)		+= gpio-logicvc.o
 obj-$(CONFIG_GPIO_LOONGSON1)		+= gpio-loongson1.o
diff --git a/drivers/gpio/gpio-line-mux.c b/drivers/gpio/gpio-line-mux.c
new file mode 100644
index 000000000000..a4f384306218
--- /dev/null
+++ b/drivers/gpio/gpio-line-mux.c
@@ -0,0 +1,126 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * GPIO line mux which acts as virtual gpiochip and provides a 1-to-many
+ * mapping between virtual GPIOs and a real GPIO + multiplexer.
+ *
+ * Copyright (c) 2025 Jonas Jelonek <jelonek.jonas@gmail.com>
+ */
+
+#include <linux/gpio/consumer.h>
+#include <linux/gpio/driver.h>
+#include <linux/mod_devicetable.h>
+#include <linux/mutex.h>
+#include <linux/mux/consumer.h>
+#include <linux/platform_device.h>
+
+#define MUX_SELECT_DELAY_US	100
+
+struct gpio_lmux {
+	struct gpio_chip gc;
+	struct mux_control *mux;
+	struct gpio_desc *muxed_gpio;
+
+	u32 num_gpio_mux_states;
+	unsigned int gpio_mux_states[] __counted_by(num_gpio_mux_states);
+};
+
+static int gpio_lmux_gpio_get(struct gpio_chip *gc, unsigned int offset)
+{
+	struct gpio_lmux *glm = gpiochip_get_data(gc);
+	int ret;
+
+	if (offset > gc->ngpio)
+		return -EINVAL;
+
+	ret = mux_control_select_delay(glm->mux, glm->gpio_mux_states[offset],
+				       MUX_SELECT_DELAY_US);
+	if (ret < 0)
+		return ret;
+
+	ret = gpiod_get_raw_value_cansleep(glm->muxed_gpio);
+	mux_control_deselect(glm->mux);
+	return ret;
+}
+
+static int gpio_lmux_gpio_set(struct gpio_chip *gc, unsigned int offset,
+			      int value)
+{
+	return -EOPNOTSUPP;
+}
+
+static int gpio_lmux_gpio_get_direction(struct gpio_chip *gc,
+					unsigned int offset)
+{
+	return GPIO_LINE_DIRECTION_IN;
+}
+
+static int gpio_lmux_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct gpio_lmux *glm;
+	unsigned int ngpio;
+	size_t size;
+	int ret;
+
+	ngpio = device_property_count_u32(dev, "gpio-line-mux-states");
+	if (!ngpio)
+		return -EINVAL;
+
+	size = struct_size(glm, gpio_mux_states, ngpio);
+	glm = devm_kzalloc(dev, size, GFP_KERNEL);
+	if (!glm)
+		return -ENOMEM;
+
+	glm->gc.base = -1;
+	glm->gc.can_sleep = true;
+	glm->gc.fwnode = dev_fwnode(dev);
+	glm->gc.label = dev_name(dev);
+	glm->gc.ngpio = ngpio;
+	glm->gc.owner = THIS_MODULE;
+	glm->gc.parent = dev;
+
+	glm->gc.get = gpio_lmux_gpio_get;
+	glm->gc.set = gpio_lmux_gpio_set;
+	glm->gc.get_direction = gpio_lmux_gpio_get_direction;
+
+	glm->mux = devm_mux_control_get(dev, NULL);
+	if (IS_ERR(glm->mux))
+		return dev_err_probe(dev, PTR_ERR(glm->mux),
+				     "could not get mux controller\n");
+
+	glm->muxed_gpio = devm_gpiod_get(dev, "muxed", GPIOD_IN);
+	if (IS_ERR(glm->muxed_gpio))
+		return dev_err_probe(dev, PTR_ERR(glm->muxed_gpio),
+				     "could not get muxed-gpio\n");
+
+	glm->num_gpio_mux_states = ngpio;
+	ret = device_property_read_u32_array(dev, "gpio-line-mux-states",
+					     &glm->gpio_mux_states[0], ngpio);
+	if (ret)
+		return dev_err_probe(dev, ret, "could not get mux states\n");
+
+	ret = devm_gpiochip_add_data(dev, &glm->gc, glm);
+	if (ret)
+		return dev_err_probe(dev, ret, "failed to add gpiochip\n");
+
+	return 0;
+}
+
+static const struct of_device_id gpio_lmux_of_match[] = {
+	{ .compatible = "gpio-line-mux" },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, gpio_lmux_of_match);
+
+static struct platform_driver gpio_lmux_driver = {
+	.driver = {
+		.name = "gpio-line-mux",
+		.of_match_table = gpio_lmux_of_match,
+	},
+	.probe = gpio_lmux_probe,
+};
+module_platform_driver(gpio_lmux_driver);
+
+MODULE_AUTHOR("Jonas Jelonek <jelonek.jonas@gmail.com>");
+MODULE_DESCRIPTION("GPIO line mux driver");
+MODULE_LICENSE("GPL");
-- 
2.48.1


