Return-Path: <devicetree+bounces-109940-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 70B53998905
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2024 16:15:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 45C5DB2B716
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2024 14:11:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97EAE1C9B67;
	Thu, 10 Oct 2024 14:11:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Yb856gu4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2A841C8FBA
	for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 14:11:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728569463; cv=none; b=fofwlGfak6xfYQ4WWV3+fJPP0D2eKo8D0f/7meHlWpM7LjdkPlVja1di5WtxLARBv5cun3a/hykLwWAooQdOw30ntt0dIiD13qux69jr18qUggfbOpqMVvHpX/sAWbW2QPidgiUAsISnKXxaJ10WpixelgPqIzHaDgxuAtomR18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728569463; c=relaxed/simple;
	bh=gvBNRxgBPZ2zeZFI0slr0ZK/bibGW/1MvVv3P+uNb5g=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=lQL5R9EM/L/1DRneNLIwicWbG2pi9CuVpAoX7MomTzaK6os9tRlIh+Q8Sfl9BtKz3BXv+g8hSSyELwm3Bp1cYb0exGafont2uT6NToAu6vHwAUVj2Prs9Fk7hfRdgvpuZ0gB//u4PRod/2PcWRiCdN6Iet89YKSlxwHc22foQjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Yb856gu4; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-a99422929c5so114307266b.0
        for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 07:11:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728569459; x=1729174259; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Z7sMROkRKGoFLIFPCxBzcqqWuegoZL694cLilxCXEAc=;
        b=Yb856gu4ZYUWe+KIhYVGbfzm8taZbaUSjxjckHrhvds8swO2sND9nCYyPbYePnMwis
         Ifs9oTCvoxoHOSLMq0msO3BA+KwvyhY0mhQK6lrD9yZASCsZyYhIVaOlNKX5GwUiIhRY
         we5jMey6TOqDBnopdHPefomtxwxQNnGTowpmaNCqyueAjKm6oYTK9nAkMg3SUE3Hzm3k
         0Rie68VkhzKZRsUnDXYZBgRZ58eu9WMMRgwsJ8Nw/ZRFzKnLmp1DwJeRbhzmfFE9Cg65
         wf/VCUCNTKu0Ki645NW8yy0BGSdus0Un6PL3cS26QjXYPNo8zooJxmcxVTLroIP8U4zt
         efgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728569459; x=1729174259;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Z7sMROkRKGoFLIFPCxBzcqqWuegoZL694cLilxCXEAc=;
        b=B1HDa5g0fymMQq/dP9eMiub1Ekbkt252JrsbSqwn2wtUHdUBqr39tn9UBuBuQjF1OE
         9pTEaiohPiob3yxLCU/trKF5YVMk3qIPIW4cQjtZXyqF1Fb+n3To5Tf+hrd8I/tYQ+R/
         yaP+7+xpNjjwA5Bf7l0Iq3IRjWtpi1Aq5MIAW0++1jsHqHspGWzddcLYs5bxdfgTiwZr
         cucrvgS3rQc2qVJaOagvcevbDhHTR3HPrxl0OyjnEHNVl5j29g6Y++NNUfwOyfJH4zuM
         5qxvUPnkNmF8LwW8I9HHWMYDIdMdPucJ3XXsIY6ZR9VuzEbkeOMEqmk2EKhmPgPvjN1M
         DxTQ==
X-Forwarded-Encrypted: i=1; AJvYcCU8Hh7tirPDQeO6A5HH8Vgn+u4CKbOeTrXYFNxyUFAzlSVx1uhyLslX7JAbNZ0AVjfwEH+1cooHijV5@vger.kernel.org
X-Gm-Message-State: AOJu0YyR94GjkPeF13LcO7yuxftfQSeYGwdy7EnuuFINnEzbis9u5klR
	IZjsp0Q3DzWXSuQq3bWeV7HiTA7M01Ic7Ve6QFhu+enuhm1FD8Wa0yqy1aDPyNBYwPOQsEp8v2q
	V
X-Google-Smtp-Source: AGHT+IEuuUbomch6k13XEw7+i2ujQMHPYDCYT4xRgwBH/IsoA7Ire1rPyJAiOKaWwFy0P328wZMOVA==
X-Received: by 2002:a17:907:1ca5:b0:a99:40e3:23e8 with SMTP id a640c23a62f3a-a998d32d757mr457102466b.51.1728569459248;
        Thu, 10 Oct 2024 07:10:59 -0700 (PDT)
Received: from lino.lan ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a99a7ec5704sm94540866b.23.2024.10.10.07.10.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2024 07:10:57 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 10 Oct 2024 16:10:51 +0200
Subject: [PATCH v4 2/4] leds: bcm63138: Use scopes and guards
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20241010-bcm63138-leds-v4-2-cdb80780a555@linaro.org>
References: <20241010-bcm63138-leds-v4-0-cdb80780a555@linaro.org>
In-Reply-To: <20241010-bcm63138-leds-v4-0-cdb80780a555@linaro.org>
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

Reviewed-by: Florian Fainelli <florian.fainelli@broadcom.com>
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
2.46.2


