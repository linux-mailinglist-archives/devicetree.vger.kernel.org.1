Return-Path: <devicetree+bounces-2317-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BCE707AA8BF
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 08:08:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 945FF282FBD
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 06:08:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77C49156C5;
	Fri, 22 Sep 2023 06:08:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E37297494
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 06:08:06 +0000 (UTC)
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 15AA9195
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 23:08:04 -0700 (PDT)
Received: by mail-lj1-x22f.google.com with SMTP id 38308e7fff4ca-2c01d22f332so37140681fa.0
        for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 23:08:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695362882; x=1695967682; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=++yx9IJ8E+PZjoxMl1CLd/MzC41autPKHycVRiUyVKQ=;
        b=kAGZjXawOM0jFxvzDMeN4Gf1lOh5pArQhwlW0pg0Vl8eJuiGHp+lAoB4ssqwVcDDud
         Sa71j2BivE0xsoCw3Ncaw8LXu0nu+7w9fZNQkby+U9m0tgow8fY68iYxyWxpEzCqMpDI
         ad8fJT7RklxvArYpubKDuNnhFClaTG2qoKf8alznWiZ4N5FaVQG5Pzk84VOWjkHjwRqF
         f2k/QkpKju60QEAma438kQEE/5UdEbdfqRVXn5dZFlpZ7gXg7SQ85ok7EB/6KGzftmez
         2sfSv61fQO9OQJ9jBtny/vbl4KdMVjryFpeJTtohA+OtuhmQrLk0xFP6z1Q7mlVqMgpQ
         ApaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695362882; x=1695967682;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=++yx9IJ8E+PZjoxMl1CLd/MzC41autPKHycVRiUyVKQ=;
        b=I/EfHnhD77vfA4a4MbkOTOJkoG0Iacz2guf/Gvm6AGh29pwWEjcSY628d+SriSOzYV
         nO60cFjp2KrVmq9AykmDRthJottvSojzQBWdlSEsqf9wbjc+G/eMsa29m5o4aMDhi3x8
         C/SHBjhQoLpgLBE6AhJGMC2sbsNTc5KAqR/QLsGfmNy/VtLXmwKsS9ysG46msuT50wMT
         rhLHtIgGI3lnf6P9Xx09c519c765w5qxEYqzT5S4NRaRioC1OgUsydAdW5m/nH3CK8Kd
         kneOqx839Q3Fecy4ahUWMTARgvxoACI8N0VR8bJIPH1RCD+ln9opf24rkWhVpxkfE6nN
         VpQg==
X-Gm-Message-State: AOJu0YzciIc8YTt0e+9UCsWTSmQcinF7plFiIzNGPvt738YYsxhwI53i
	idtKaCr20JCne2FZD7bP9jxVEg==
X-Google-Smtp-Source: AGHT+IGIsqnuMfAIqMdMUTMmXDu3vinQVWFl2mp4U9dRuQ5seLKSfpjjpbAD6W2oee/G5+2a7XRujQ==
X-Received: by 2002:a2e:a4c4:0:b0:2bd:7bd:1a45 with SMTP id p4-20020a2ea4c4000000b002bd07bd1a45mr705519ljm.13.1695362882365;
        Thu, 21 Sep 2023 23:08:02 -0700 (PDT)
Received: from [192.168.1.2] (c-05d8225c.014-348-6c756e10.bbcust.telenor.se. [92.34.216.5])
        by smtp.gmail.com with ESMTPSA id w22-20020a05651c103600b002b9f4841913sm754329ljm.1.2023.09.21.23.08.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Sep 2023 23:08:01 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 22 Sep 2023 08:07:57 +0200
Subject: [PATCH v2 2/2] gpio: ixp4xx: Handle clock output on pin 14 and 15
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230922-ixp4xx-gpio-clocks-v2-2-0215ee10976d@linaro.org>
References: <20230922-ixp4xx-gpio-clocks-v2-0-0215ee10976d@linaro.org>
In-Reply-To: <20230922-ixp4xx-gpio-clocks-v2-0-0215ee10976d@linaro.org>
To: Linus Walleij <linusw@kernel.org>, Imre Kaloz <kaloz@openwrt.org>, 
 Krzysztof Halasa <khalasa@piap.pl>, Bartosz Golaszewski <brgl@bgdev.pl>, 
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-gpio@vger.kernel.org, 
 devicetree@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.12.3
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

This makes it possible to provide basic clock output on pins
14 and 15. The clocks are typically used by random electronics,
not modeled in the device tree, so they just need to be provided
on request.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 drivers/gpio/gpio-ixp4xx.c | 40 ++++++++++++++++++++++++++++++++++++++--
 1 file changed, 38 insertions(+), 2 deletions(-)

diff --git a/drivers/gpio/gpio-ixp4xx.c b/drivers/gpio/gpio-ixp4xx.c
index dde6cf3a5779..d69954d19144 100644
--- a/drivers/gpio/gpio-ixp4xx.c
+++ b/drivers/gpio/gpio-ixp4xx.c
@@ -38,6 +38,18 @@
 #define IXP4XX_GPIO_STYLE_MASK		GENMASK(2, 0)
 #define IXP4XX_GPIO_STYLE_SIZE		3
 
+/*
+ * Clock output control register defines.
+ */
+#define IXP4XX_GPCLK_CLK0DC_SHIFT	0
+#define IXP4XX_GPCLK_CLK0TC_SHIFT	4
+#define IXP4XX_GPCLK_CLK0_MASK		GENMASK(7, 0)
+#define IXP4XX_GPCLK_MUX14		BIT(8)
+#define IXP4XX_GPCLK_CLK1DC_SHIFT	16
+#define IXP4XX_GPCLK_CLK1TC_SHIFT	20
+#define IXP4XX_GPCLK_CLK1_MASK		GENMASK(23, 16)
+#define IXP4XX_GPCLK_MUX15		BIT(24)
+
 /**
  * struct ixp4xx_gpio - IXP4 GPIO state container
  * @dev: containing device for this instance
@@ -202,6 +214,7 @@ static int ixp4xx_gpio_probe(struct platform_device *pdev)
 	struct ixp4xx_gpio *g;
 	struct gpio_irq_chip *girq;
 	struct device_node *irq_parent;
+	u32 val;
 	int ret;
 
 	g = devm_kzalloc(dev, sizeof(*g), GFP_KERNEL);
@@ -227,11 +240,34 @@ static int ixp4xx_gpio_probe(struct platform_device *pdev)
 
 	/*
 	 * Make sure GPIO 14 and 15 are NOT used as clocks but GPIO on
-	 * specific machines.
+	 * specific machines. For others, use the boot defaults as
+	 * starting point.
 	 */
 	if (of_machine_is_compatible("dlink,dsm-g600-a") ||
 	    of_machine_is_compatible("iom,nas-100d"))
-		__raw_writel(0x0, g->base + IXP4XX_REG_GPCLK);
+		val = 0;
+	else
+		val = __raw_readl(g->base + IXP4XX_REG_GPCLK);
+
+	/*
+	 * Enable clock outputs with default timings of requested clock.
+	 * If you need control over TC and DC, add these to the device
+	 * tree bindings and use them here.
+	 */
+	if (of_property_read_bool(np, "intel,ixp4xx-gpio14-clkout")) {
+		val &= ~IXP4XX_GPCLK_CLK0_MASK;
+		val |= (0 << IXP4XX_GPCLK_CLK0DC_SHIFT);
+		val |= (1 << IXP4XX_GPCLK_CLK0TC_SHIFT);
+		val |= IXP4XX_GPCLK_MUX14;
+	}
+
+	if (of_property_read_bool(np, "intel,ixp4xx-gpio15-clkout")) {
+		val &= ~IXP4XX_GPCLK_CLK1_MASK;
+		val |= (0 << IXP4XX_GPCLK_CLK1DC_SHIFT);
+		val |= (1 << IXP4XX_GPCLK_CLK1TC_SHIFT);
+		val |= IXP4XX_GPCLK_MUX15;
+	}
+	__raw_writel(val, g->base + IXP4XX_REG_GPCLK);
 
 	/*
 	 * This is a very special big-endian ARM issue: when the IXP4xx is

-- 
2.41.0


