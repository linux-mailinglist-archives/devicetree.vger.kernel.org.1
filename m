Return-Path: <devicetree+bounces-255063-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5792BD1F54C
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 15:14:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3EEDA30719C3
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 14:14:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F5042D663D;
	Wed, 14 Jan 2026 14:14:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dm462atB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AADB2D6624
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 14:14:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768400043; cv=none; b=RHGlITcvKC+0iJ4tV2NJ8CXVGCYeDBoeBvUhZhBbG/khPNe+DHzat9gHm3Z8pmd2XCjIogQ0ctblNhXr/whudoAuG5nxDhEc/V7eB/3voSrKVOb2Lnr+bvfk+g/R8QrVTwIMgoZKSemSWXgk/mV5s0qUWf4BjcaedZwkgY8BTzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768400043; c=relaxed/simple;
	bh=6HChBFN3+eN58bAfM528LWbrmEuRIcjyzHO9UkHjyc8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=e6xwz0xOVu3Nht6cbWULp3eSuvKwCaKqQTGH/jQysjWRiNguVjI8xZFxGF07JeL3+Q9CZSIHhpi3VJYxqa2Uh1u0jNp+PzMGctvt807iY7VYjuikhnOJJYRVj9njfUl2IOQkf8HINSlPxv1jTshjOyTVrcgqHDTTadzPCSwliEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dm462atB; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-65063a95558so13214271a12.0
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 06:14:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768400039; x=1769004839; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lw0lSbQFfSBadWYIdCR1R+5LqktQW19yPPn8YWeadt0=;
        b=dm462atBvWYnP4TW2NKp5IfBlfYYyQ/+rCCzx1tXMlfrh17gWwXDkRgbAN9G/sZhw5
         OscQpVegGXG3h3/ZxfqSrawqdwknzqfNeQIaih1ZBM8qLABEVvMetxuU+BeKFzT2r7zP
         JN+336wWiFtmH/fWLQbej13tDskZIf2WLN3civGprHAhfl11U/kPQZbcNCgZn2sRKBWu
         UfNYefgwUH9aF2bN6bitJCcRmP9ugaMeJKxuVW0jsyTsO9U2KIF3Om9U9St+/YJWE3Bm
         fYRqnerqsWpQ5WjemM8dvdDowb1rPOES9+aVsSuHT2FH36iP7BtyTyNSYWndl/+cH9Y3
         g/mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768400039; x=1769004839;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=lw0lSbQFfSBadWYIdCR1R+5LqktQW19yPPn8YWeadt0=;
        b=O2b54O+1o+rfANkQ9VSQuKFLczhFh1E8qkg86fnNlheQUy1CCSc8ghd8q94cgTVD4I
         UwDF8IVk37mhGxYLANAZjVTeaPCRt7niB2JA4JO/VZofrgcBJN3yKrrydy0qxB+GkQdU
         snR9vLNL5TSeYXo5i4fghQAXUP3LTqcAvQ5ZqcXMt/9/91W1LKPXZrTuyHBe1zd7hhkw
         W25ZlQZc/g4cLYkp6nw8A/ISSOR/quAMtla2Nycl7gQhvpKFnt4MVszyLrou5qLfHIjX
         l5YsjSB09BQOSTlx5qWMnY3ti1ZtjVV6707ul6hO0BC1InSgl/R5IEN62MD6/11sYGQ4
         M/pg==
X-Forwarded-Encrypted: i=1; AJvYcCWB7YJBaqkn8V9WI0/L5Zc/nj1QEUvpnSXYPzViY0G3W18mdr6vMbYdBPOFJqB/jerUtYFjjXU0lWds@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5h1+C51/VVzw7Q+50IYQSpl99Z0HJlI9mqx715Y2cfch3eBEn
	CWuDdSvVBZYXUX9OTD2hrVjPBGuSL1p8rfTbu0PpmkSMexVMtq52jkzyJEOB45jgtJx0tA==
X-Gm-Gg: AY/fxX5T/vP6gS+04kNllpfHCXf4vkUO+5l+gp29aCeZ+E7zDzSbkJUkwHq8uycdtnV
	cmNNPCrvY4yxXEXnJ144qaBSCUHvDKxyVzj9jb2d8ImHBSq8eusKxI2KND+VokeUgaVJHvDJeFV
	Jnb50Yxb4gzM63jLEKwdXQysKIdt9H+PKDr7u5Bys7Dcd/mdF5fRCvEeWKBh42lfLCSX+ARubUR
	5On+0z6ul+wVWXgxfxKb/kKBWU+5bxMnTp0Gx1KssjvjCrQIkv7fPKEnLyr8tMcBZWRV1YD3Mda
	Ocjqog638XOwI0+3QQWr/6N2xhvPrK7xQLgmwPiZ64KaF+d3UJnX7XqxOcUphmN7cwPeXukh8h2
	c/vdJ/gxArL7Abds/8XttmzbDstqnZSuN8BBUoKD+710HEYCRDGeZimfYU+2v68VfAzEPRH4C94
	ZLbZBvqEcR7uLqr7+law0TIQ==
X-Received: by 2002:a05:6402:1e94:b0:649:69da:6218 with SMTP id 4fb4d7f45d1cf-653ebf7a2e1mr2353585a12.0.1768400038618;
        Wed, 14 Jan 2026 06:13:58 -0800 (PST)
Received: from C-PF5D4647.localdomain ([147.161.248.88])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6507bf667fcsm22651950a12.29.2026.01.14.06.13.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 06:13:58 -0800 (PST)
From: Jie Li <lj29312931@gmail.com>
X-Google-Original-From: Jie Li <jie.i.li@nokia.com>
To: wsa@kernel.org
Cc: linux-i2c@vger.kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linus.walleij@linaro.org,
	linux-kernel@vger.kernel.org,
	Jie Li <jie.i.li@nokia.com>
Subject: [PATCH v1 1/2] i2c: core: add "force-set-sda" flag for open-drain SDA without "FLAG_IS_OUT" bit
Date: Wed, 14 Jan 2026 15:13:51 +0100
Message-ID: <20260114141352.103425-2-jie.i.li@nokia.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260114141352.103425-1-jie.i.li@nokia.com>
References: <20260114141352.103425-1-jie.i.li@nokia.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

On certain specialized SoC platforms, the I2C SDA pin is physically
open-drain but lacks the "FLAG_IS_OUT" bit in the GPIO subsystem.
In such cases, the set_sda function isn't assigned, causing bus
recovery to fail.

This patch introduces a new optional pinctrl flag "force-set-sda".
When this flag is present in the device tree, the I2C recovery
mechanism will explicitly attempt to toggle the SDA line through
the pinctrl state, ensuring the bus can be freed even when the
default recovery logic is insufficient for this specific hardware
implementation.

This change is necessary to improve the robustness of I2C
communication on hardware where the SDA line can remain stuck
low and standard recovery fails.

Signed-off-by: Jie Li <jie.i.li@nokia.com>
---
 drivers/i2c/i2c-core-base.c | 21 ++++++++++++++++++++-
 1 file changed, 20 insertions(+), 1 deletion(-)

diff --git a/drivers/i2c/i2c-core-base.c b/drivers/i2c/i2c-core-base.c
index ae7e9c8b65a6..ffbab3e4528d 100644
--- a/drivers/i2c/i2c-core-base.c
+++ b/drivers/i2c/i2c-core-base.c
@@ -42,6 +42,9 @@
 #include <linux/rwsem.h>
 #include <linux/slab.h>
 #include <linux/string_choices.h>
+#include <linux/device.h>
+#include <linux/gpio/driver.h>
+#include <linux/fwnode.h>
 
 #include "i2c-core.h"
 
@@ -422,9 +425,25 @@ static int i2c_gpio_init_recovery(struct i2c_adapter *adap)
 	return i2c_gpio_init_generic_recovery(adap);
 }
 
+/* Check if SDA can be driven for recovery when
+ * GPIO direction reporting is unavailable.
+ * Usage: add new flag "force-set-sda" in dts pinctrl.
+ */
+static bool force_set_sda(struct device *dev)
+{
+	if (!dev || !dev->of_node)
+		return false;
+
+	if (of_property_read_bool(dev->of_node, "force-set-sda"))
+		return true;
+	else
+		return false;
+}
+
 static int i2c_init_recovery(struct i2c_adapter *adap)
 {
 	struct i2c_bus_recovery_info *bri = adap->bus_recovery_info;
+	struct device *dev = &adap->dev;
 	bool is_error_level = true;
 	char *err_str;
 
@@ -446,7 +465,7 @@ static int i2c_init_recovery(struct i2c_adapter *adap)
 		if (bri->sda_gpiod) {
 			bri->get_sda = get_sda_gpio_value;
 			/* FIXME: add proper flag instead of '0' once available */
-			if (gpiod_get_direction(bri->sda_gpiod) == 0)
+			if (gpiod_get_direction(bri->sda_gpiod) == 0 || force_set_sda(dev))
 				bri->set_sda = set_sda_gpio_value;
 		}
 	} else if (bri->recover_bus == i2c_generic_scl_recovery) {
-- 
2.43.0


