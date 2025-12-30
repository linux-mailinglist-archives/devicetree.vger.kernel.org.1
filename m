Return-Path: <devicetree+bounces-250524-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 491E7CE9BB5
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 14:04:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 498CA303802C
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 13:03:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5BB320A5F3;
	Tue, 30 Dec 2025 13:03:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mMVAfwjW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD54A212FB3
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 13:03:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767099783; cv=none; b=j8naKQM4KmMt+a3kgY6tUAyKEokdeld0tNzQll+SBZ5e2F7jVxOsKa1BsU2+zbamhOyEyH8ZZeFKIgJBIIQBlkaDEeVBtqYFAazZdbZu2LRfgsmy16kWDNkIo/OIAF8m76Uh9WuBsQIzFYy7hw8obA2mtblXjOGxJ+DgHkpDBk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767099783; c=relaxed/simple;
	bh=ZQ6Y7IFZTaEd6ktsVoxdPOs72CPIs+7PsUG1QLPNjHU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=a8klY4mrWSiH2irt9qyrPczGoKDmTiFgRZV+yDhnHHzLPTnbZ9JPbmIrMP3StpN75u6+Ap9+/kBEIzuscX/r7kSPlpEhL67Lo82GSli8YQoDApI/j7cx7X4n0u/cisvoa4FkktHpttvJgOc34/Z5jqpTatnn3+kpV5dR+uEm8AA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mMVAfwjW; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-29efd139227so131284125ad.1
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 05:03:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767099781; x=1767704581; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bFt+oA/6TnGUcf1mQLhvyTPCz7K2SXMiNJhoCpH+0PQ=;
        b=mMVAfwjW+b8cuJ2dwjTdp8T8VEVWy3RZSJRsAaKzXDEE/s7MfXGStu4SM7JO5vj24E
         apwhy77uafCtmqzIVLjYIEv6KJOJAElq+giAK13P0V4usoDkJMBQu+hTNzqHyGAi+D/B
         gKUKc0u4llVgnb8G6domyUHQ0jXTBLgns8sQvQDvOgncKF3fSAxJi51YZhXhJn3VM8yR
         8jHth8edA5vB/VRpYOiLhtqh2Ncgf/g5sLWsWxzV8NAAEjG+E9WDTV853qn1D/Eg3279
         uWRCPvKssC4lBOFSjE+UNqk5XeY+8IOVOJgtRqspUZo778Q4NrHpvBE5QNriwzoUZGTk
         QgCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767099781; x=1767704581;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=bFt+oA/6TnGUcf1mQLhvyTPCz7K2SXMiNJhoCpH+0PQ=;
        b=br8RtAGMF5ZD2kSY8xOLLr4SxHtIDFl9s1z85UHH1whZAam+i+k85zNQdumfKduCap
         lE4iNwe6Dokz7lEdHgmme0YYDeSdpql8VIODAjV/xzMR+eAPWAJ33eNqZ7A79bVcCNTs
         pB1kNqhY5j6hT75LC3ROxT0C3XnGKG8010HOFP69LZcVuDa1TAjwioSLRhZmB/ppib17
         ye9CbL4Pl6vOXWPIAlgLl/k/gu1h6F4beuheqTk5o5WX+jMZrNeZUyeCNyUT2fBx/x/s
         bF25f8k0q7PKXEVHiWyNF/UKf6Tc8kr2CJExJQqLe4nWNGacxZI4MqjnedGpXPpQco/U
         Octw==
X-Forwarded-Encrypted: i=1; AJvYcCXJVMt2PADQ4ojSITY6wg7BNjg0k561frQcBrLwJPtZohw/t2NxMQ1hlSol7TJXrgq2TlYcmpbuheTY@vger.kernel.org
X-Gm-Message-State: AOJu0YwGoNneP+TGXu319PkdzLli0dIKakxqhLdxa4C2mTouP5x6qCdh
	OZgI0x15NG0uMvlex4dAzqe4sIC53KjdPYdz07WWO+WwY8mavbdhcsaq
X-Gm-Gg: AY/fxX5u6/2QHOkax6vTXVXcksmM0e+9mC5V+iJOjQoxcW1CSGrRd1BXuRt83pVLzZW
	JJa3oOLyjvYmyG7FulnLXStli+hSfsShxJFdrejGZBeW3zraH3NicpOyFbhTSnRxa77e/xJ4cdh
	HWrJ+31IcXX9XMbo/B770QFapUBwFWI+blIGgp0+OI9sdVjVfjNGUnhHv8Vp6E0FIiDK4ATl0UX
	E0938bG4rX6K4asEuOF7SBhvuehWqcoNhlnHuySgJC7kGO5Z5N1Is18Szi15+EC4Hhyy+C59Pyd
	W68T8cnz4zz+NSZIZ2fX+7L8PhCDUVBDRlOiUaadtKzk75xdKBcYOVZb7CBZDfBuBqvDGxKuSt9
	pgDxVIz9hkhCPvDZRXyjFAmclTIZBgzhDC8pJfeOyfedWgFoyEw6N3ttRLmUMHttB6qhTitDX31
	9C9Oe9ZpXyraZXLSdWBE85wRboZJyGZVuY18Kh
X-Google-Smtp-Source: AGHT+IFOsQ07Jl6rs2Cw6NmpVbi6zdWPsCauR5WaD4vFkdSAOc437iw7lgABjk+ZfmAgdXjbg4je8w==
X-Received: by 2002:a17:903:fad:b0:295:54cb:16ac with SMTP id d9443c01a7336-2a2f2218accmr324255055ad.18.1767099781202;
        Tue, 30 Dec 2025 05:03:01 -0800 (PST)
Received: from test-HP-Desktop-Pro-G3.. ([103.218.174.23])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3d6ec6bsm296003075ad.87.2025.12.30.05.02.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Dec 2025 05:03:00 -0800 (PST)
From: Sudarshan Shetty <tessolveupstream@gmail.com>
To: andersson@kernel.org,
	konradybcio@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sudarshan Shetty <tessolveupstream@gmail.com>
Subject: [PATCH v10 3/5] backlight: gpio: add support for multiple GPIOs for backlight control
Date: Tue, 30 Dec 2025 18:32:25 +0530
Message-Id: <20251230130227.3503590-4-tessolveupstream@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251230130227.3503590-1-tessolveupstream@gmail.com>
References: <20251230130227.3503590-1-tessolveupstream@gmail.com>
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


