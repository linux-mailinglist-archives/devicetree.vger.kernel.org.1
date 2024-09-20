Return-Path: <devicetree+bounces-104222-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 63D1F97DA5A
	for <lists+devicetree@lfdr.de>; Fri, 20 Sep 2024 23:59:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 914E01C20FF2
	for <lists+devicetree@lfdr.de>; Fri, 20 Sep 2024 21:59:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1C7C186E4B;
	Fri, 20 Sep 2024 21:59:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tuSEMe9i"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 269921420B6
	for <devicetree@vger.kernel.org>; Fri, 20 Sep 2024 21:59:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726869557; cv=none; b=FehEpRMGtqxakpR3VSQeRJrFuDg2Dwg/j6dkr6zRy/TYOFeSku9uG1H1yDXdemhh+mOLtRdNuFS+AltE162kINEpnRkGih49FiBp5h+w1DEQ4sJa2zeA82upOn+3LZrmNAzFomrJ0xdR+nACi197v5xa/p/oBIFhY4cdtcpE+SA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726869557; c=relaxed/simple;
	bh=gXl6DeY/9dMT9uXw7AqViTblnZhMwQSRd5v3XKQfaTU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=DLE8Eh4K+BIwoTgfqLM+kfob8ghCIC5UTq5Fh+hU2L+hJGatx9c+RiM9nDAaAYrB6lX9Zplmjxv8eXhK289TyhBglKb2jBH0P/nvk7IbMwnr5CxbI6LeOsYOfFdJF0HP9CHEm9t01Yjq13NYkT4PeWN1jASQAKW7yIwcwseMDLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tuSEMe9i; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-a8d2b4a5bf1so324909066b.2
        for <devicetree@vger.kernel.org>; Fri, 20 Sep 2024 14:59:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726869554; x=1727474354; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8/JfYrX/aNtfPTLK68m0sSubqj4AyYAOoUh1lb0Sm34=;
        b=tuSEMe9ijExJCjnQWwZfrB2hsuaxZZsBD+X/HJow6BosrQjVae+CWAYTV/2eh6p3ld
         m4wNBB3r2Jnug+HwGhiSnwAdN7d1VvlqdBy7HE5X5BvoaJa8ZnVK4qTD4Two1RY9/4+B
         33TAno44QMMffgHQ00/OHaLJhdls9ebRTef9TQMhRWJoBvyAndNtYOFjuhbflLmMh1Gw
         RyRT4cbaVLiUNPo62WT0xSVwEoesy7ss0tTyCylWp0UIAicW2yZ13PwBBUJ93mqySTUX
         fImNtGQyt1hXdCTmbREiDUyCYVMYW24MCUb5diOpZK/1B0wNVIEZlbrUEVHgRpYdkP/k
         m0+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726869554; x=1727474354;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8/JfYrX/aNtfPTLK68m0sSubqj4AyYAOoUh1lb0Sm34=;
        b=NspoM/ukR2USWgMZsN5gHUEFonaRKVvP11X8wdP8bjdvEx1qr4CjOYobtBKbbnY8+R
         VdrRT3ds09QnL9SBhR3p3GCibCDExjgaE+dR4ZkovMTpZzIM6RvAWXTw6W7aqyoj1O9r
         SlRO6GeQfDiizkBcD9ZZscgT8ycstbzO6bKmX7Q/2x6Y7QsJBuHbBWJ5x83Po3dVA2eg
         gdusC+lobt9QWG9Et84ATFr8bQaWVNz7ZIN89KYxPSPVtlEJfj95nUZCwFw/4ZtvOvpL
         8QWkidXZqOjrlHWyZym8HKrkuq1u9f5r0/5h7w5E3LESLTfHh82oycKrcpFIXp0HRQxZ
         RoCQ==
X-Forwarded-Encrypted: i=1; AJvYcCU4MbC+BHT0Pty3cKpuql6/fcPLIt8vEP42D7LJg4cQ4wq76oXr062IdHEuqQ4EtIJuOgvFZ3hA6MQm@vger.kernel.org
X-Gm-Message-State: AOJu0YzldT/y0G+LK4o37aszXxgKZxWp2fh/zzmQYxUC8K9D5nrgrFCB
	B6uYO7NZuOvUr8Mdx9j6jmYQ0O1b2pX2j/6essWNl2KbY2ko4BZ0B6nFiPz3m3Y=
X-Google-Smtp-Source: AGHT+IFXdJ1xKzR//xbZgTZ9zcz2hn5EODZNg6u+Uq6l4/z6nZspAes4iJST+Pb1cPbW+dldhb7xAg==
X-Received: by 2002:a17:906:d261:b0:a86:80b7:4743 with SMTP id a640c23a62f3a-a90d4ffddf4mr353840066b.24.1726869554350;
        Fri, 20 Sep 2024 14:59:14 -0700 (PDT)
Received: from lino.lan ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a90612b3a04sm900617766b.125.2024.09.20.14.59.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Sep 2024 14:59:13 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 20 Sep 2024 23:59:04 +0200
Subject: [PATCH 2/4] leds: bcm63138: Use scopes and guards
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20240920-bcm63138-leds-v1-2-c150871324a0@linaro.org>
References: <20240920-bcm63138-leds-v1-0-c150871324a0@linaro.org>
In-Reply-To: <20240920-bcm63138-leds-v1-0-c150871324a0@linaro.org>
To: Pavel Machek <pavel@ucw.cz>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 William Zhang <william.zhang@broadcom.com>, 
 Anand Gore <anand.gore@broadcom.com>, 
 Kursad Oney <kursad.oney@broadcom.com>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>
Cc: linux-leds@vger.kernel.org, devicetree@vger.kernel.org, 
 Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.14.0

Use scoped helpers and guards to handle DT node iterations
and spinlocks. This cuts some lines of code and eliminates
common mistakes (such as the missing of_node_put()).

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 drivers/leds/blink/leds-bcm63138.c | 14 ++++----------
 1 file changed, 4 insertions(+), 10 deletions(-)

diff --git a/drivers/leds/blink/leds-bcm63138.c b/drivers/leds/blink/leds-bcm63138.c
index 3a5e0b98bfbc..374f68f4f277 100644
--- a/drivers/leds/blink/leds-bcm63138.c
+++ b/drivers/leds/blink/leds-bcm63138.c
@@ -2,6 +2,7 @@
 /*
  * Copyright (C) 2021 Rafał Miłecki <rafal@milecki.pl>
  */
+#include <linux/cleanup.h>
 #include <linux/delay.h>
 #include <linux/io.h>
 #include <linux/leds.h>
@@ -125,17 +126,14 @@ static void bcm63138_leds_brightness_set(struct led_classdev *led_cdev,
 {
 	struct bcm63138_led *led = container_of(led_cdev, struct bcm63138_led, cdev);
 	struct bcm63138_leds *leds = led->leds;
-	unsigned long flags;
 
-	spin_lock_irqsave(&leds->lock, flags);
+	guard(spinlock_irqsave)(&leds->lock);
 
 	bcm63138_leds_enable_led(leds, led, value);
 	if (!value)
 		bcm63138_leds_set_flash_rate(leds, led, 0);
 	else
 		bcm63138_leds_set_bright(leds, led, value);
-
-	spin_unlock_irqrestore(&leds->lock, flags);
 }
 
 static int bcm63138_leds_blink_set(struct led_classdev *led_cdev,
@@ -144,7 +142,6 @@ static int bcm63138_leds_blink_set(struct led_classdev *led_cdev,
 {
 	struct bcm63138_led *led = container_of(led_cdev, struct bcm63138_led, cdev);
 	struct bcm63138_leds *leds = led->leds;
-	unsigned long flags;
 	u8 value;
 
 	if (!*delay_on && !*delay_off) {
@@ -179,13 +176,11 @@ static int bcm63138_leds_blink_set(struct led_classdev *led_cdev,
 		return -EINVAL;
 	}
 
-	spin_lock_irqsave(&leds->lock, flags);
+	guard(spinlock_irqsave)(&leds->lock);
 
 	bcm63138_leds_enable_led(leds, led, BCM63138_MAX_BRIGHTNESS);
 	bcm63138_leds_set_flash_rate(leds, led, value);
 
-	spin_unlock_irqrestore(&leds->lock, flags);
-
 	return 0;
 }
 
@@ -259,7 +254,6 @@ static int bcm63138_leds_probe(struct platform_device *pdev)
 	struct device_node *np = dev_of_node(&pdev->dev);
 	struct device *dev = &pdev->dev;
 	struct bcm63138_leds *leds;
-	struct device_node *child;
 
 	leds = devm_kzalloc(dev, sizeof(*leds), GFP_KERNEL);
 	if (!leds)
@@ -280,7 +274,7 @@ static int bcm63138_leds_probe(struct platform_device *pdev)
 	bcm63138_leds_write(leds, BCM63138_SERIAL_LED_POLARITY, 0);
 	bcm63138_leds_write(leds, BCM63138_PARALLEL_LED_POLARITY, 0);
 
-	for_each_available_child_of_node(np, child) {
+	for_each_available_child_of_node_scoped(np, child) {
 		bcm63138_leds_create_led(leds, child);
 	}
 

-- 
2.46.0


