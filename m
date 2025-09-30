Return-Path: <devicetree+bounces-222771-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 6176EBACC30
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 14:03:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2F6FB7A10CD
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 12:01:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE6362F83D4;
	Tue, 30 Sep 2025 12:03:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="I9f+TLtR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 231FC2F7AC4
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 12:03:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759233790; cv=none; b=g3BXMHHkJf6yCBaq1pQs9O1Q37+xwuUBQpmFxNGWyXbinEK1CDa0PkHfyWa6irKPhlfClVpVolG9AYMLizz0xvUoZNlYqdjhMXrrm3zr29XaDinVyLYM7h3FRHZBaKB3IhEPM2mGTzw54k+t5gadumxjBve709Ry7B5oPe9LbSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759233790; c=relaxed/simple;
	bh=gjUmwu6vW87dgYR6ByqBRk3LF8SFvjZ1PcrYhs2yofE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=WSsT8Ky0FIf2ERaG/o4/0jkv6ckj8BqxImzkmn68IfoHMbTmXtMfYhj6gYnaxwd7sHkHU1sB9OM7oBjTTpv+iT9kUwm/eKTjHNT3ETbs0JXrNuF1fNYseS8iRTvNN3MUMtMXLmrdngQjl2ZUsLXQgP4UzU3Oify6faWBNj5gzb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=I9f+TLtR; arc=none smtp.client-ip=209.85.222.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-qk1-f176.google.com with SMTP id af79cd13be357-86302b5a933so365464785a.0
        for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 05:03:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759233788; x=1759838588; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eDggfI4p5TeOGtAQWJj+T8vsugydYvOM8pqJ4uwjX+o=;
        b=I9f+TLtR01Gzkrte9Sywg0e8eUjYIK27adJJ4uJAXGxQU0xVN6Ka0aSyyTsbZauc65
         1HZq3xItAm8Iw88u+jS1ovgmFDyTJkUIfw89KqBSHzGffDMX2mE4U/y/0l3P3O+hvj8l
         gmB+CTsjyUxagrgS+8FlYF3nSWNXlr7nWf864bjRblymGLg/Ms5vU9a6CUXFOUnsN4cq
         3Yo1F69lrg7rwBzqjgTtnmjgxYJdPgRIa04T6PyoQdVxqjQrKDVjFmac8NMgcr/4V2ax
         CTyjtoJooI3LVV5eSj2vehGv3We4dJmwjEd5rm5l8IV72Hnf9epkqErkIEReK6b/ja1Y
         GocQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759233788; x=1759838588;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eDggfI4p5TeOGtAQWJj+T8vsugydYvOM8pqJ4uwjX+o=;
        b=gptdcGfrwz4SDOoZect7zTBkbANf001sTXqELVDodE1YVvmqkjh/wYUQHe08xDSqCG
         V6kU684SrKpTdJcKvZn8P9fL1+6KyhiLbIXkOZwK44/WTPrgjd0OZgjd1Y5KOo6GZj1v
         pHRnhY6YFQQlKEfipkiJeJMq+p/MKlaB6NmoJyE3wMVV2jTN0wzsyH2w3YZLK6ULW4JH
         ROaE4iQdoS2qJVuM4cHtGUdaSlHt7KMXzD2l9e2UaD0nzf/wFbPizcQ5NBK+JMm61/pC
         BBWBGAqW5+jD94Ybv+GXmLc6Roib8W3MA4jV22hmQOqNMi6t+kqtiaotKEX0IOWS+EGl
         nVbg==
X-Forwarded-Encrypted: i=1; AJvYcCVrTuevMZT5pPXL0uruUUlPrIa2HOtgv1xOXRQ92OoLeQSQeul1bk/oE51QeDEBo7n8nO80xhrok0Pl@vger.kernel.org
X-Gm-Message-State: AOJu0YyqErPST19Nij+tvoViZrAaCJlVRDPBzWmayxzpObTK0j6Z4kYD
	owhuTihrJwnxU9Q9dKHaddMJ7YHB27BEQibsMO0Pc1OIVKmQ3+CXkGPYKZK5q6BJY5I=
X-Gm-Gg: ASbGncuZoAHpYgB6csQDkLa5M3+WQXu00UAE6aUbzYiP9Qpz+FAWHUj0DJjfRtoysSz
	yEeMZqnkpeBZTIr63FutbIOHpXmV9NJ8axFmkD0K7/Y+77dqqBLdw7wobj5duUEEnAHDaGHmo7q
	tWDn/hE86EwAALB6t20FV/HP+Q1KcDeBMbp/ubc/+I+9GT94zRNShvihylvFuKrMc0HFNNEYfxS
	ANZoL6Fs8aIPJc0pLbXb76aDPWAxl0rwdIZcc1ass6JJ/v8W9fCSl7KILkfz0DVzgGbtMnI+bhe
	lUZQu2MQ4c5rBhfVolfM25uBNM3nlYxSIdKy7+FBA7sFZjGMVuOeVK/N9iKkIBKnGY30ULqclij
	r8xLpKxaCSbkXv5VKYpxn5uFglBmKK3o1lMo/fFoInfCajnujdmKnJL1QKDtMtO+amqW4
X-Google-Smtp-Source: AGHT+IFZLhst3yxVYryNrmKUu3Gz+c+9FXYpGGOJ5oz94eu4lad9gvqUMOOebdBdhsa5WFINToy3xA==
X-Received: by 2002:a05:620a:45a9:b0:864:7f5d:3fc4 with SMTP id af79cd13be357-8647f5d41fbmr1761803285a.49.1759233787722;
        Tue, 30 Sep 2025 05:03:07 -0700 (PDT)
Received: from [192.168.1.140] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-85c306b5f64sm1020160885a.32.2025.09.30.05.03.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Sep 2025 05:03:07 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 30 Sep 2025 14:02:49 +0200
Subject: [PATCH 2/6] pinctrl: bcm: bcmbca: Parameterize pins, groups, funcs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250930-bcmbca-pinctrl-v1-2-73218459a094@linaro.org>
References: <20250930-bcmbca-pinctrl-v1-0-73218459a094@linaro.org>
In-Reply-To: <20250930-bcmbca-pinctrl-v1-0-73218459a094@linaro.org>
To: =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 William Zhang <william.zhang@broadcom.com>, 
 Anand Gore <anand.gore@broadcom.com>, 
 Kursad Oney <kursad.oney@broadcom.com>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
 Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.14.2

This will make all pins, groups and functions depend of data
associated with the compatible string that is matched on
probe.

This makes it possible to add support for other BCMBCA SoC:s
than BCM4908.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 drivers/pinctrl/bcm/pinctrl-bcmbca.c | 67 +++++++++++++++++++++++++-----------
 1 file changed, 46 insertions(+), 21 deletions(-)

diff --git a/drivers/pinctrl/bcm/pinctrl-bcmbca.c b/drivers/pinctrl/bcm/pinctrl-bcmbca.c
index 834241103b5452836aea9fe817f7e5d143893985..5a18a5fadd94ddb5f237f2dca560f1d4b8186dad 100644
--- a/drivers/pinctrl/bcm/pinctrl-bcmbca.c
+++ b/drivers/pinctrl/bcm/pinctrl-bcmbca.c
@@ -9,6 +9,7 @@
 #include <linux/pinctrl/pinctrl.h>
 #include <linux/pinctrl/pinmux.h>
 #include <linux/platform_device.h>
+#include <linux/property.h>
 #include <linux/slab.h>
 #include <linux/string_helpers.h>
 
@@ -24,6 +25,26 @@
 #define BCMBCA_TEST_PORT_COMMAND			0x0c
 #define  BCMBCA_TEST_PORT_CMD_LOAD_MUX_REG		0x00000021
 
+struct bcmbca_pinctrl_grp {
+	const char *name;
+	const struct bcmbca_pinctrl_pin_setup *pins;
+	const unsigned int num_pins;
+};
+
+struct bcmbca_pinctrl_function {
+	const char *name;
+	const char * const *groups;
+	const unsigned int num_groups;
+};
+
+struct bcmbca_soc_info {
+	unsigned int num_pins;
+	const struct bcmbca_pinctrl_grp *groups;
+	unsigned int num_groups;
+	const struct bcmbca_pinctrl_function *functions;
+	unsigned int num_functions;
+};
+
 struct bcmbca_pinctrl {
 	struct device *dev;
 	void __iomem *base;
@@ -249,12 +270,6 @@ static const struct bcmbca_pinctrl_pin_setup usb1_pwr_pins[] = {
 	{ 67, 0 },
 };
 
-struct bcmbca_pinctrl_grp {
-	const char *name;
-	const struct bcmbca_pinctrl_pin_setup *pins;
-	const unsigned int num_pins;
-};
-
 static const struct bcmbca_pinctrl_grp bcm4908_pinctrl_grps[] = {
 	{ "led_0_grp_a", led_0_pins_a, ARRAY_SIZE(led_0_pins_a) },
 	{ "led_1_grp_a", led_1_pins_a, ARRAY_SIZE(led_1_pins_a) },
@@ -308,12 +323,6 @@ static const struct bcmbca_pinctrl_grp bcm4908_pinctrl_grps[] = {
  * Functions
  */
 
-struct bcmbca_pinctrl_function {
-	const char *name;
-	const char * const *groups;
-	const unsigned int num_groups;
-};
-
 static const char * const led_0_groups[] = { "led_0_grp_a" };
 static const char * const led_1_groups[] = { "led_1_grp_a" };
 static const char * const led_2_groups[] = { "led_2_grp_a" };
@@ -462,13 +471,25 @@ static const struct pinctrl_desc bcmbca_pinctrl_desc = {
 	.pmxops = &bcmbca_pinctrl_pmxops,
 };
 
+static const struct bcmbca_soc_info bcm4908_pinctrl_soc_info = {
+	.num_pins = BCM4908_NUM_PINS,
+	.groups = bcm4908_pinctrl_grps,
+	.num_groups = ARRAY_SIZE(bcm4908_pinctrl_grps),
+	.functions = bcm4908_pinctrl_functions,
+	.num_functions = ARRAY_SIZE(bcm4908_pinctrl_functions),
+};
+
 static const struct of_device_id bcmbca_pinctrl_of_match_table[] = {
-	{ .compatible = "brcm,bcm4908-pinctrl", },
+	{
+		.compatible = "brcm,bcm4908-pinctrl",
+		.data = &bcm4908_pinctrl_soc_info,
+	},
 	{ }
 };
 
 static int bcmbca_pinctrl_probe(struct platform_device *pdev)
 {
+	const struct bcmbca_soc_info *info;
 	struct device *dev = &pdev->dev;
 	struct bcmbca_pinctrl *bcmbca_pinctrl;
 	struct pinctrl_desc *pctldesc;
@@ -476,6 +497,10 @@ static int bcmbca_pinctrl_probe(struct platform_device *pdev)
 	char **pin_names;
 	int i;
 
+	info = device_get_match_data(dev);
+	if (!info)
+		return dev_err_probe(dev, -EINVAL, "No match data\n");
+
 	bcmbca_pinctrl = devm_kzalloc(dev, sizeof(*bcmbca_pinctrl), GFP_KERNEL);
 	if (!bcmbca_pinctrl)
 		return -ENOMEM;
@@ -496,19 +521,19 @@ static int bcmbca_pinctrl_probe(struct platform_device *pdev)
 
 	/* Set pinctrl properties */
 
-	pin_names = devm_kasprintf_strarray(dev, "pin", BCM4908_NUM_PINS);
+	pin_names = devm_kasprintf_strarray(dev, "pin", info->num_pins);
 	if (IS_ERR(pin_names))
 		return PTR_ERR(pin_names);
 
-	pins = devm_kcalloc(dev, BCM4908_NUM_PINS, sizeof(*pins), GFP_KERNEL);
+	pins = devm_kcalloc(dev, info->num_pins, sizeof(*pins), GFP_KERNEL);
 	if (!pins)
 		return -ENOMEM;
-	for (i = 0; i < BCM4908_NUM_PINS; i++) {
+	for (i = 0; i < info->num_pins; i++) {
 		pins[i].number = i;
 		pins[i].name = pin_names[i];
 	}
 	pctldesc->pins = pins;
-	pctldesc->npins = BCM4908_NUM_PINS;
+	pctldesc->npins = info->num_pins;
 
 	/* Register */
 
@@ -519,8 +544,8 @@ static int bcmbca_pinctrl_probe(struct platform_device *pdev)
 
 	/* Groups */
 
-	for (i = 0; i < ARRAY_SIZE(bcm4908_pinctrl_grps); i++) {
-		const struct bcmbca_pinctrl_grp *group = &bcm4908_pinctrl_grps[i];
+	for (i = 0; i < info->num_groups; i++) {
+		const struct bcmbca_pinctrl_grp *group = &info->groups[i];
 		int *pins;
 		int j;
 
@@ -536,8 +561,8 @@ static int bcmbca_pinctrl_probe(struct platform_device *pdev)
 
 	/* Functions */
 
-	for (i = 0; i < ARRAY_SIZE(bcm4908_pinctrl_functions); i++) {
-		const struct bcmbca_pinctrl_function *function = &bcm4908_pinctrl_functions[i];
+	for (i = 0; i < info->num_functions; i++) {
+		const struct bcmbca_pinctrl_function *function = &info->functions[i];
 
 		pinmux_generic_add_function(bcmbca_pinctrl->pctldev,
 					    function->name,

-- 
2.51.0


