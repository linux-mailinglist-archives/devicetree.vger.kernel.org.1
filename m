Return-Path: <devicetree+bounces-107733-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 990FA98FE4A
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2024 09:59:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 36AC41F238DC
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2024 07:59:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4C8013B7A1;
	Fri,  4 Oct 2024 07:59:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Hs3Nc6Wz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F116013B79F
	for <devicetree@vger.kernel.org>; Fri,  4 Oct 2024 07:59:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728028773; cv=none; b=rI2i5BGF954ivG/l5jLkoYLhlNxGOdEO/z6hq4VCF4E2G6QAac051RZQp+tQ6bmTLYbgX5WKflE1HCeMJ333PIIZxXNeS4+wWJRhnwYiO1NJAPUv/HEDp2u/cZR5Ais8HV5MBwpPL8slGbKdh2fLOvuPj74Bmz1lMVmC5xxsjP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728028773; c=relaxed/simple;
	bh=FnmLOeDSpJX+e4oZfKM4ssmMezMCZY+ZhBPl8+fQFa0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=hKLM8+5cvrsmYj1iWTc6GcAO12kRpI28sOsOn8Nq6IJc0ryRU90vjagV+a4AFfGODf/lqxZQ9Z5hYFLbxjTI/seq82xbQS7xMWBJt8fJiJfs4llTPp3aniBBu/f4qQUzMaGYvqwcRE7OrnQuy5DIoRdJbDeo10fH3aR3+0RvBXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Hs3Nc6Wz; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-a98f6f777f1so231336666b.2
        for <devicetree@vger.kernel.org>; Fri, 04 Oct 2024 00:59:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728028770; x=1728633570; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Q0Xo7lyATMDsOi/JTMW6RiHHyZurrxixH5uKKnJ9YLk=;
        b=Hs3Nc6WzcqmZqQi3tlvWsLSlTBioMwo6+3kMyKu8nNX1vfg+LeWbiJ3y3GlUWhdkfI
         TEKVbEJutoFJYnPselCUy+z33A5Pm2Wiu1lAC/3dP4aDsv7W8YRn1DOEJENqRyPiRBqc
         lxWlNfr/uXliHQj30WCVwBupYbVDG9BXd6jLsBm8J+W9FMAbFUglcKv3kjf6XV5VwrLZ
         VuF3H6eI9fWbcyMQsBOj5WFf2vVPDGjkSBj3NLqVvHOdbBwZ0rYcPeQhzV7M8NrgqkKi
         AJpSs+gLsv6h2xTghGI2a4IXYP2TmFVU6Xbmh1F8VDwLk6diMYKgiOCF2hJ9fYT+Rfv5
         EyEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728028770; x=1728633570;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Q0Xo7lyATMDsOi/JTMW6RiHHyZurrxixH5uKKnJ9YLk=;
        b=JboXR03OuFqYLSJBZpG6D8I4cVaHBZDpt37NJG/REwVud3LSnOF8aP93nogEdkiTRU
         MDsdWYix+dRHFJuH4Xr0Xwio5MhbacUHwmSXs8V2eW3Fg4FcAnfwsiVlpklnbxasXKag
         /kSx6XIah9eniBw1ioL+kgyxLYYk51brABdreHO93DsSdWYmjzucUIdRZyFORl7as+ms
         9pcktBdnnhXXNBiZcNR41zQ66+ayKGL574QLWOw9OFiztL2j9JFtcD5nTMfTa9gxjFUS
         TeUaZHOFevCaLGrp0V0zJ/aD9YdLfOEyX2i5YHL7z0WlnMx4A9sHp31o8ZdaaHYTMUmD
         9TkA==
X-Forwarded-Encrypted: i=1; AJvYcCXt7tvwwBaQEESGk6QVFrcosVX7Xo9eIdezBSPE9y2L9OKfZQNe9nAMIpjbHsNH3XNNNbmXvg3utEAn@vger.kernel.org
X-Gm-Message-State: AOJu0YzDFF4TXze4kgjBsNZdqRZxg4RuWLhaQPMk4rBCykEBoBARkrbP
	+pg3vL5C11HIn/TnjN2AuwnLvL+bp9qjj4Tb2HshoWujbAgle84ASCpcln2hL5U=
X-Google-Smtp-Source: AGHT+IE7MV8JyFfIszGHwPZJa9aOyZZIQ0GuHo4UCGz5I4KY1Z5YQgjIBnAkIIBwmrzyLlDj1gbyZA==
X-Received: by 2002:a17:907:9289:b0:a8d:2faf:d33d with SMTP id a640c23a62f3a-a991bd05798mr178258566b.9.1728028770068;
        Fri, 04 Oct 2024 00:59:30 -0700 (PDT)
Received: from lino.lan ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9910286fd8sm187266366b.27.2024.10.04.00.59.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Oct 2024 00:59:28 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 04 Oct 2024 09:59:24 +0200
Subject: [PATCH v3 3/4] leds: bcm63138: Handle shift register config
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20241004-bcm63138-leds-v3-3-ba99a8e464b9@linaro.org>
References: <20241004-bcm63138-leds-v3-0-ba99a8e464b9@linaro.org>
In-Reply-To: <20241004-bcm63138-leds-v3-0-ba99a8e464b9@linaro.org>
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
index 374f68f4f277..9fe1af156c80 100644
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
+				    GENMASK(shift_bits - 1, 0));
+	}
+
 	bcm63138_leds_write(leds, BCM63138_GLB_CTRL,
 			    BCM63138_GLB_CTRL_SERIAL_LED_DATA_PPOL |
 			    BCM63138_GLB_CTRL_SERIAL_LED_EN_POL);

-- 
2.46.1


