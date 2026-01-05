Return-Path: <devicetree+bounces-251379-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7204CCF288B
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 09:53:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E3A2C302DCA5
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 08:51:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 545AD32862B;
	Mon,  5 Jan 2026 08:51:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fVKa/TFv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 690E5328634
	for <devicetree@vger.kernel.org>; Mon,  5 Jan 2026 08:51:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767603111; cv=none; b=inKYHxTgZA5CglrjlTPVSsCIoOivstGF1ghGMwr50Tr78/yOqDCSiS5uKS5nhs0aS/FGe82f0JxybwJzMn5a04fzOx6C7H/gYNFxZSw43ftJUjm1aGJHNNLc7WISLyVHp9fvPj43g4odtPwkmXItTr2OFoFNXrzvCwJofhbIWiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767603111; c=relaxed/simple;
	bh=ZQ6Y7IFZTaEd6ktsVoxdPOs72CPIs+7PsUG1QLPNjHU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=V6ppMc15cQL9r1Su66r1WLCJ2wDfIbjs8gdtzVsloE9nle7DWO07tOqNkvmsFWj8LTjqsl//n+O0y6tnmQdiCeY2oAVbvsGxCWdQgh07ClVsCxatlHp4OHesdERKZtJkW1JUVNpGfBC2ui15wx2dtEcM78bNWRr7v5UHksWObWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fVKa/TFv; arc=none smtp.client-ip=209.85.216.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f47.google.com with SMTP id 98e67ed59e1d1-34c2f52585fso12463488a91.1
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 00:51:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767603104; x=1768207904; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bFt+oA/6TnGUcf1mQLhvyTPCz7K2SXMiNJhoCpH+0PQ=;
        b=fVKa/TFvf8XIfjlirfLhfwDttkkYRLbl0EB2WfX0NiEgjrgaMKeUci0BORuosejzsW
         v4AXvruwrwxC5Bi1VpHCv/B2VswHBLIa4YYYvVDXUYqcADYjqUkLvtrVM73RLhh9WygU
         CgBNmGEjTF2R4Zs+VnjT17r/4Ho6gWCukz3bbOPmtio0Vkqp1sE34w8ElpkagVKeKKkX
         cqfJ+kMW0hwzDViK0RNQVHGOADhuHeZve/cDTzI3zSYgvxDs+2EwSbBGONCRqnpONzj1
         x/ceBlTCPwdtjxVGhbwg1sso0UNuLevOceR9akSqgLBScHnAMVjI74ywOxCEjQsl8kUD
         U3LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767603104; x=1768207904;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=bFt+oA/6TnGUcf1mQLhvyTPCz7K2SXMiNJhoCpH+0PQ=;
        b=Bl6SFC3xyAGIItRCiYW2zPhSIEt4S5PtxuIQ6m0S1RSku76kzfqgu4wr5eeWCPqOpn
         MS7dXbTPjS1K9yahdT4z9zvxiNXtEz/EgrI0P9IZFlpEVef0RrLhxWlOygl54zcbvGe0
         ycdonUECW2G61iHoiH/fossA8+J4MaYaotjBw9+Hw5IhzK4tKuiiW4kgbwtrFOYzeBt8
         zaZHic0VdtHZtxoW/Csh2UDl0YdMs3IyZ22fefFbrdx+EqV5AMFr8U4vCT6BjwtG2neB
         jJamSxIsBXD6J8Huen5Jum0+aYKqkpaUD9ijKI8OwwbE2HIU/G5qwjq/PpR+2voglSq4
         nDIw==
X-Forwarded-Encrypted: i=1; AJvYcCXohU8HR0uLli3OKdJKFHWjU8dWX0/B4vB16Ra3b3U2Y4jj0sVxpytMwC0/PyArMU+xMo0AgGcyKnew@vger.kernel.org
X-Gm-Message-State: AOJu0YyG2WcUr5fSyBu7O6XXxd9ur9RR1p1u2gXuCSqFmLk/XZ5E2yz8
	LQjAmfbIj4UjbNmMrAnBAHzVPwjUtd/zNnrS6o7HGgB3HYQwoHB0XQ98
X-Gm-Gg: AY/fxX4y3qNwKStQo0Fan08Khwetv9mw5Bw0bvsvSRBdnumcmB1itL0nIzo7/5aY8Fs
	npxGbpSV2pN8gr4R8+qE74Xw1V2D3uusZTdHp0G9Co5f3eK+HbVkcvNwYxfj7r/OReOqglPYNbB
	HghDFq2q/8dZmDNfGPOlGUT5h6chnKtBWOMdsr3BZzNZNyPEU4uPGirjG3sgYwJtno4hBt7cRtH
	yB0Fmu1AqJnalHPdUkVuBBbLTav2FDztUED/wKJu67lTs7/EVcRwgEkhGzFflBPOaTymXiOUdw8
	woEWr/mAAGF9t2lM9UOVkcYSlETTeQzcncbOCI78tc23NRtHoJ0eNc2IcKD6hjjP9cQ1IsbUcoL
	wDXTAqSWDtDvvy83WYIr5kKUGHn+xSoe/VXkV5NI7hEl5/zH0DuznqStYj01ghVHE3oYsEZbHJ4
	HI3WMJAcRDTbnMtxkUK6GTpR2fl+J5oj4c327C
X-Google-Smtp-Source: AGHT+IE9h/a5pga/RcO3GaC9CZMJm/hBktjxAoM256+iS35FTfAipE1WuhDdgjBTuxYdSkDNtweQhg==
X-Received: by 2002:a17:90a:d60c:b0:34c:4c6d:ad0f with SMTP id 98e67ed59e1d1-34e921f0e35mr38658346a91.37.1767603103621;
        Mon, 05 Jan 2026 00:51:43 -0800 (PST)
Received: from test-HP-Desktop-Pro-G3.. ([103.218.174.23])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34f476fab12sm5631951a91.5.2026.01.05.00.51.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 00:51:43 -0800 (PST)
From: Sudarshan Shetty <tessolveupstream@gmail.com>
To: lee@kernel.org,
	danielt@kernel.org,
	jingoohan1@gmail.com
Cc: deller@gmx.de,
	pavel@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-fbdev@vger.kernel.org,
	linux-leds@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sudarshan Shetty <tessolveupstream@gmail.com>
Subject: [PATCH v1 2/2] backlight: gpio: add support for multiple GPIOs for backlight control
Date: Mon,  5 Jan 2026 14:21:20 +0530
Message-Id: <20260105085120.230862-3-tessolveupstream@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260105085120.230862-1-tessolveupstream@gmail.com>
References: <20260105085120.230862-1-tessolveupstream@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Extend the gpio-backlight driver to handle multiple GPIOs instead of a
single one. This allows panels that require driving several enable pins
to be controlled by the backlight framework.

Signed-off-by: Sudarshan Shetty <tessolveupstream@gmail.com>
---
 drivers/video/backlight/gpio_backlight.c | 61 +++++++++++++++++-------
 1 file changed, 45 insertions(+), 16 deletions(-)

diff --git a/drivers/video/backlight/gpio_backlight.c b/drivers/video/backlight/gpio_backlight.c
index 728a546904b0..037e1c111e48 100644
--- a/drivers/video/backlight/gpio_backlight.c
+++ b/drivers/video/backlight/gpio_backlight.c
@@ -17,14 +17,18 @@
 
 struct gpio_backlight {
 	struct device *dev;
-	struct gpio_desc *gpiod;
+	struct gpio_desc **gpiods;
+	unsigned int num_gpios;
 };
 
 static int gpio_backlight_update_status(struct backlight_device *bl)
 {
 	struct gpio_backlight *gbl = bl_get_data(bl);
+	unsigned int i;
+	int br = backlight_get_brightness(bl);
 
-	gpiod_set_value_cansleep(gbl->gpiod, backlight_get_brightness(bl));
+	for (i = 0; i < gbl->num_gpios; i++)
+		gpiod_set_value_cansleep(gbl->gpiods[i], br);
 
 	return 0;
 }
@@ -52,6 +56,7 @@ static int gpio_backlight_probe(struct platform_device *pdev)
 	struct backlight_device *bl;
 	struct gpio_backlight *gbl;
 	int ret, init_brightness, def_value;
+	unsigned int i;
 
 	gbl = devm_kzalloc(dev, sizeof(*gbl), GFP_KERNEL);
 	if (gbl == NULL)
@@ -62,10 +67,22 @@ static int gpio_backlight_probe(struct platform_device *pdev)
 
 	def_value = device_property_read_bool(dev, "default-on");
 
-	gbl->gpiod = devm_gpiod_get(dev, NULL, GPIOD_ASIS);
-	if (IS_ERR(gbl->gpiod))
-		return dev_err_probe(dev, PTR_ERR(gbl->gpiod),
-				     "The gpios parameter is missing or invalid\n");
+	gbl->num_gpios = gpiod_count(dev, NULL);
+	if (gbl->num_gpios == 0)
+		return dev_err_probe(dev, -EINVAL,
+			"The gpios parameter is missing or invalid\n");
+	gbl->gpiods = devm_kcalloc(dev, gbl->num_gpios, sizeof(*gbl->gpiods),
+				   GFP_KERNEL);
+	if (!gbl->gpiods)
+		return -ENOMEM;
+
+	for (i = 0; i < gbl->num_gpios; i++) {
+		gbl->gpiods[i] =
+			devm_gpiod_get_index(dev, NULL, i, GPIOD_ASIS);
+		if (IS_ERR(gbl->gpiods[i]))
+			return dev_err_probe(dev, PTR_ERR(gbl->gpiods[i]),
+					"Failed to get GPIO at index %u\n", i);
+	}
 
 	memset(&props, 0, sizeof(props));
 	props.type = BACKLIGHT_RAW;
@@ -78,22 +95,34 @@ static int gpio_backlight_probe(struct platform_device *pdev)
 	}
 
 	/* Set the initial power state */
-	if (!of_node || !of_node->phandle)
+	if (!of_node || !of_node->phandle) {
 		/* Not booted with device tree or no phandle link to the node */
 		bl->props.power = def_value ? BACKLIGHT_POWER_ON
-					    : BACKLIGHT_POWER_OFF;
-	else if (gpiod_get_value_cansleep(gbl->gpiod) == 0)
-		bl->props.power = BACKLIGHT_POWER_OFF;
-	else
-		bl->props.power = BACKLIGHT_POWER_ON;
+						    : BACKLIGHT_POWER_OFF;
+	} else {
+		bool all_high = true;
+
+		for (i = 0; i < gbl->num_gpios; i++) {
+			if (gpiod_get_value_cansleep(gbl->gpiods[i]) != 0) {
+				all_high = false;
+				break;
+			}
+		}
+
+		bl->props.power =
+			all_high ? BACKLIGHT_POWER_ON :  BACKLIGHT_POWER_OFF;
+	}
 
 	bl->props.brightness = 1;
 
 	init_brightness = backlight_get_brightness(bl);
-	ret = gpiod_direction_output(gbl->gpiod, init_brightness);
-	if (ret) {
-		dev_err(dev, "failed to set initial brightness\n");
-		return ret;
+
+	for (i = 0; i < gbl->num_gpios; i++) {
+		ret = gpiod_direction_output(gbl->gpiods[i], init_brightness);
+		if (ret)
+			return dev_err_probe(dev, ret,
+					"failed to set gpio %u direction\n",
+					i);
 	}
 
 	platform_set_drvdata(pdev, bl);
-- 
2.34.1


