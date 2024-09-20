Return-Path: <devicetree+bounces-104224-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AD89E97DA5F
	for <lists+devicetree@lfdr.de>; Fri, 20 Sep 2024 23:59:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 38151284046
	for <lists+devicetree@lfdr.de>; Fri, 20 Sep 2024 21:59:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22D71187329;
	Fri, 20 Sep 2024 21:59:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xbxtvfyw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54A9018453F
	for <devicetree@vger.kernel.org>; Fri, 20 Sep 2024 21:59:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726869561; cv=none; b=Cd8RWpiQiSue6X0rwCB8V/wUl+5PMrsdN2x3wwM7FiPiJ+/JAoH9iho+p2zqHVB+W3wO/95TTNtb/dCiLOchGC7KLh18KijqQLZkt4+a6TCShcMKV8cSnezB0IqCl5lP4T8PUri/boTHGr27LBbjz38F3NjxVj7f++T3yRLNOnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726869561; c=relaxed/simple;
	bh=pzwKpebvYVuzFkHtfWxT2dIgxpG/NhoiTFU5g0KtTr8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=n/7OtMHMOfj3Ef1wH4Glc33gta8PK7KuJdV7Ih77hHWEgCSVC75+g9wZ/K8F3L2Vmz5NRj2WffaIdxVQwBGP1RpFT+MeLA2CLZwh61VEOEHaxSSnCEKLNywHP+ZpAS4jJKPk1kUjXQR19mbwezPmpOWKhTn4VWafyofEslREdRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xbxtvfyw; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-378c16a4d3eso2559204f8f.1
        for <devicetree@vger.kernel.org>; Fri, 20 Sep 2024 14:59:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726869556; x=1727474356; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QhUCILeSXAkUcmBh/Q/38AfnCBVEM+/ogGyjiE56sKs=;
        b=xbxtvfywujr+bqkRMHHKHf+0d5d7Ij8Vg4AQ/0m27pXOkHYRE/11Bowp9GM3L1cATj
         uPtOF1Hs+kQSjhYlSQMyQslddc2BrlUkdl2fshncZa3wmmG9hBkUkj1zzjOJNBsy6aDG
         JrGeRDVEo6Ia346ey3IuEH5ehMTkMR4a8bZshbEXIBREg5w0hAkfhF73csTLcFjFH5HN
         pcgi4bX4mbXWxjgYtCPgzjXsL1+fgUqo816MbCyI8G2QfymQ2ho5dkr013nh+TZeh9Hp
         b1UmfilHpFuko2u/C/GcLp6YLfOWD00jXUOYgp/lfnWwAimsMCrK3t41+GD2Ft2JKqlF
         uCjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726869556; x=1727474356;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QhUCILeSXAkUcmBh/Q/38AfnCBVEM+/ogGyjiE56sKs=;
        b=a8NVmwILV+HuzQKHIQNfIrgMe9oyD7g+DbSYszHRAiSE0v+zBZgHk41pk+xwWKZmUU
         y10Mss09pm86/Vor+uSr6U/avV5hPsULG/YK0xAkcxci0DHwNWs4fp7+bT9tghehE1UO
         p8FgxxUO5qf8x4qqABQvRoQVeqEInWz6eMS1b1hChOuV/lzHEd2PQVcPY+YXS1yrXA/m
         CVoRSu9ui/E7wtOqSV0VpXM0Lmok7Xbp0qEFz1rpjzxWOhXlO79rdq5GURMF7cbDzu8C
         uK1jYG3GI7mV5T1bH3IPC1Dtptq82NBvfkyAcXsbh311B6JLdIjbVXUBnykxrayB39X2
         9NPQ==
X-Forwarded-Encrypted: i=1; AJvYcCWf+QNH/0loE5PT/J4v0oVEpa+PKo8Nx3SjPA708hB1FQSQ6zrwYBN3NIT2aavcT5lZ2pUL7GRVYvcV@vger.kernel.org
X-Gm-Message-State: AOJu0YzySkVBkrs0cc9CU2GL65ckZxmlz6my6wGvkEKwHODciaNcis68
	GRUIjuJgzQ6L+XuqDCvsMK03qfpD67y0DVHj9jR48tlQxMFAxOAu/t8y23KTI+s=
X-Google-Smtp-Source: AGHT+IEn3IcFD2Fbyv6iaMwKQbdR/rjcEenFHfFt8cMW2+izbedffoWXjkJwz6Z8qL+HOX996ORtHw==
X-Received: by 2002:a5d:452e:0:b0:374:c847:867 with SMTP id ffacd0b85a97d-37a42367b0fmr3322120f8f.47.1726869556517;
        Fri, 20 Sep 2024 14:59:16 -0700 (PDT)
Received: from lino.lan ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a90612b3a04sm900617766b.125.2024.09.20.14.59.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Sep 2024 14:59:15 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 20 Sep 2024 23:59:05 +0200
Subject: [PATCH 3/4] leds: bcm63128: Handle shift register config
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20240920-bcm63138-leds-v1-3-c150871324a0@linaro.org>
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

This adds code to optionally read the width of the shift register
chain from the device tree and use it to set up the register
controlling the shifter hardware.

If the property is not present, the boot-time default is used so
existing device trees keep working as this is what they assume.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 drivers/leds/blink/leds-bcm63138.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/leds/blink/leds-bcm63138.c b/drivers/leds/blink/leds-bcm63138.c
index 374f68f4f277..bf170a5bb12a 100644
--- a/drivers/leds/blink/leds-bcm63138.c
+++ b/drivers/leds/blink/leds-bcm63138.c
@@ -2,6 +2,7 @@
 /*
  * Copyright (C) 2021 Rafał Miłecki <rafal@milecki.pl>
  */
+#include <linux/bits.h>
 #include <linux/cleanup.h>
 #include <linux/delay.h>
 #include <linux/io.h>
@@ -254,6 +255,7 @@ static int bcm63138_leds_probe(struct platform_device *pdev)
 	struct device_node *np = dev_of_node(&pdev->dev);
 	struct device *dev = &pdev->dev;
 	struct bcm63138_leds *leds;
+	u32 shift_bits;
 
 	leds = devm_kzalloc(dev, sizeof(*leds), GFP_KERNEL);
 	if (!leds)
@@ -267,6 +269,12 @@ static int bcm63138_leds_probe(struct platform_device *pdev)
 
 	spin_lock_init(&leds->lock);
 
+	/* If this property is not present, we use boot defaults */
+	if (!of_property_read_u32(np, "brcm,serial-shift-bits", &shift_bits)) {
+		bcm63138_leds_write(leds, BCM63138_SERIAL_LED_SHIFT_SEL,
+				    GENMASK(32 - shift_bits - 1, 0));
+	}
+
 	bcm63138_leds_write(leds, BCM63138_GLB_CTRL,
 			    BCM63138_GLB_CTRL_SERIAL_LED_DATA_PPOL |
 			    BCM63138_GLB_CTRL_SERIAL_LED_EN_POL);

-- 
2.46.0


