Return-Path: <devicetree+bounces-1915-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 701BA7A8F71
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 00:31:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8E40B1C20AA2
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 22:31:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8E4642C12;
	Wed, 20 Sep 2023 22:24:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9817842BF6
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 22:24:02 +0000 (UTC)
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 33D5AEC
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 15:23:54 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-50307acd445so634417e87.0
        for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 15:23:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695248632; x=1695853432; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vLjkgT3erisd8thNh77YSEgF45UAom1/3ug+bR94eRg=;
        b=cdxhTM4FOMFbeN1O2M6wuRnVUDnPudDGmykJjGY1R7O8d8nHolmlCgIUpib+oFTPpG
         HQPtyqzFp/t/mkAGqXrIv+RPTU+VEanlTLyy2oH5fPBjrNx1UnWbHqGcv+XLY75w+wbH
         uFB/x+78qRbluGVRddOSURw+pDR4VeRgEVrAYYSwwJ3CMLDZ4I730IBwme7Dv5r/+2yd
         PkKcVJyBEtJg9jgn2GHnNpMsfMAZk6Ngnm8LxYAM1Hv6jhCOJigrKrsjdsrZaks03piy
         yWgQsJV6DacoN9FLmCV00BS5sztpJ0KyXQYo0TEcYtoZQXR+XRqJ/guxcRnCYhLKTn6L
         snmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695248632; x=1695853432;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vLjkgT3erisd8thNh77YSEgF45UAom1/3ug+bR94eRg=;
        b=XiXY9qmLE+wCEIfh7WjFQTS5pY0jUNwSpYjj3CsabJBEoP7GwBQEuW5ZemhkD4y9ji
         KvMQXx3AI6ps7GKm2yJTdcMviKtyAqYv0GTq+dMg2VxjEF0kZKBlulLhkzrWuh5BT9/v
         YvWIp9uvlpOASBkifFbJt+K2LgwKztusP3l6+iDfCI+mZ+zwCRIjksr5xTd6rhN3yNuY
         pYDjyNosk7bi3NhAszFz6RDCuB8ouGkO+MvJF+5XN8vcavGsCv8Pkpmq/63oGhYvOGtT
         ezUkiQIS6Q4iQwnheWgrzn8+nrZYdJHGivD9kM8gab9JwnvebCJjlVJjeBMZq8SdAP51
         XXOQ==
X-Gm-Message-State: AOJu0YxIU7aP3yYVDHqErAVlTw/J/a7byklqAU2cEQAG7n+ju9P/n1Ce
	6BFwNtIeTwLZwBbtXlIcwnPd0YaPGRb/YuTFgf4=
X-Google-Smtp-Source: AGHT+IFH1+VG7sJVN2LpzTzfZwbtQcp/ITUJsCKlrEFwWrMWXLwatBlfdkhi+mqAWOgOpqVxBMjZbQ==
X-Received: by 2002:a05:6512:3f03:b0:500:b8a3:1bf1 with SMTP id y3-20020a0565123f0300b00500b8a31bf1mr4205773lfa.43.1695248632103;
        Wed, 20 Sep 2023 15:23:52 -0700 (PDT)
Received: from [192.168.1.2] (c-05d8225c.014-348-6c756e10.bbcust.telenor.se. [92.34.216.5])
        by smtp.gmail.com with ESMTPSA id u14-20020ac2518e000000b004fe0fead9e2sm14557lfi.165.2023.09.20.15.23.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Sep 2023 15:23:51 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 21 Sep 2023 00:23:46 +0200
Subject: [PATCH 2/2] gpio: ixp4xx: Handle clock output on pin 14 and 15
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230921-ixp4xx-gpio-clocks-v1-2-574942bf944a@linaro.org>
References: <20230921-ixp4xx-gpio-clocks-v1-0-574942bf944a@linaro.org>
In-Reply-To: <20230921-ixp4xx-gpio-clocks-v1-0-574942bf944a@linaro.org>
To: Linus Walleij <linusw@kernel.org>, Imre Kaloz <kaloz@openwrt.org>, 
 Krzysztof Halasa <khalasa@piap.pl>, Bartosz Golaszewski <brgl@bgdev.pl>, 
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-gpio@vger.kernel.org, 
 devicetree@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.12.3
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

This makes it possible to provide basic clock output on pins
14 and 15. The clocks are typically used by random electronics,
not modeled in the device tree, so they just need to be provided
on request.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 drivers/gpio/gpio-ixp4xx.c | 36 +++++++++++++++++++++++++++++++++++-
 1 file changed, 35 insertions(+), 1 deletion(-)

diff --git a/drivers/gpio/gpio-ixp4xx.c b/drivers/gpio/gpio-ixp4xx.c
index dde6cf3a5779..6a9d32b4d0d7 100644
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
@@ -225,13 +238,34 @@ static int ixp4xx_gpio_probe(struct platform_device *pdev)
 	}
 	g->fwnode = of_node_to_fwnode(np);
 
+	val = __raw_readl(g->base + IXP4XX_REG_GPCLK);
 	/*
 	 * Make sure GPIO 14 and 15 are NOT used as clocks but GPIO on
 	 * specific machines.
 	 */
 	if (of_machine_is_compatible("dlink,dsm-g600-a") ||
 	    of_machine_is_compatible("iom,nas-100d"))
-		__raw_writel(0x0, g->base + IXP4XX_REG_GPCLK);
+		val = 0;
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


