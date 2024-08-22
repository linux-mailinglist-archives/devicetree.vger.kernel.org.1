Return-Path: <devicetree+bounces-95760-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B95A95B174
	for <lists+devicetree@lfdr.de>; Thu, 22 Aug 2024 11:23:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B71761F23909
	for <lists+devicetree@lfdr.de>; Thu, 22 Aug 2024 09:23:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A10D9185939;
	Thu, 22 Aug 2024 09:20:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Ioz3Hmpt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f44.google.com (mail-oo1-f44.google.com [209.85.161.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11D95185922
	for <devicetree@vger.kernel.org>; Thu, 22 Aug 2024 09:20:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724318441; cv=none; b=N613Rt082JRQkajDUOOF48Egqqk9FVWfHcdCwR09Kcr5xLF4LDN7NalDZSAvan5C4A+3OrK70TxiG8Z7yIoikY3dHibmxFuV6AnU5wF7sPkiGjZejApzjsyBgm6h4N5OKtA8CW2Pd5ED5FCItaSJQO+h2Ms+HvCvrm0wndrzG+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724318441; c=relaxed/simple;
	bh=gTgPY7UWqR1vyoGV1ZZgVjMMPO2UUtQdJrOqh6+4QXA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ufckBBKjBbuS/AJjAqn/pGdc3y2574Aw6o9OdkkedaCUbHYAniV5OjhkjcBtt4CCVx7Q1teb2aMi4kngAaomiXNZsVmESVmOA6GVu8ER0KPJIjSlqrTacyhMfg/lCq+xS+Nq+v2iFiMR8uoM90lEo8jCCCEEQWdGJis4NjixeNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Ioz3Hmpt; arc=none smtp.client-ip=209.85.161.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-oo1-f44.google.com with SMTP id 006d021491bc7-5d5de0e47b9so352296eaf.0
        for <devicetree@vger.kernel.org>; Thu, 22 Aug 2024 02:20:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1724318439; x=1724923239; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OGdOo23OjShZKKUPhP64Sm0t2nst66j12GqHlKAMLTI=;
        b=Ioz3Hmpt8bCGpwu8UUbaIZtxnwiQj7ErDtRA6qcjKoUyBc9Rk38KPG9nNqLcB1+Dgx
         ET2O3tZsPkoilopB7weaOA51RE6+7UMfTuLF6vjPlvRq0RGif5ClUVe+8kzmkeDGflcz
         BnUsJSzC0BWNM/pXLCGbVdpM2ELKLLIsB3Y2A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724318439; x=1724923239;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OGdOo23OjShZKKUPhP64Sm0t2nst66j12GqHlKAMLTI=;
        b=eMbLSVlmu35jf8GqwsnlH8ZLXMMM25PNytPPzkCBH5KXWq5S0P4gg/+AFVmVwbZlz9
         tlW1W4ZL2WOWc0gxiAIN0o6xtI8LO51fkjtmBeVSaDAr7yuiw7UB1YZ/Qr2+DHtgrlUQ
         3KW7nTAxDKSyW9SZS1JrmL+4fF7UwF2aaM0SyLbJKT6SGN5OdnAGKW2Jr6Eo4wCXcGzr
         45UaL1vex+A4N4lTyP5fSNUnbfG3jz6eJULbQGQXPkCnvbJDBZzsPYoM7f1heV2xepVl
         Ps7MvdXlCBwQOBN+JDnZ5YYMVMIHWTz67rWxORjIDAKFLDRgw5LIw7qOfd9JAKv73TZL
         fbHg==
X-Forwarded-Encrypted: i=1; AJvYcCVtLupgnA9T9IELZHMEQGIJjZC5QntWXN6HSOSArb0gmkwv4QUuFF+pKeeWaTisIjJZBh+pWgSjFL2p@vger.kernel.org
X-Gm-Message-State: AOJu0Ywn1tBdVDUofO7AYEcK3yqPczXgW9pCXvtVeDjwPxNfIu0Or725
	yPrdWghO3EpmreAYjijFae8DBCVL2C58GOmKdmzyNi9rVc0RwHxreMFbjqnQYQ==
X-Google-Smtp-Source: AGHT+IGg4vXGxgKXD8IY1cy882/n6HazEz1G403uPDeFfsv+SBpWVZIvn3E7WqFDu7Zn4wJDa5xJAA==
X-Received: by 2002:a05:6358:2624:b0:1af:3b39:8183 with SMTP id e5c5f4694b2df-1b59fce12c4mr581766055d.20.1724318439044;
        Thu, 22 Aug 2024 02:20:39 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:8470:6a67:8877:ce2c])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71434335e69sm951398b3a.194.2024.08.22.02.20.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Aug 2024 02:20:38 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Rob Herring <robh@kernel.org>,
	Saravana Kannan <saravanak@google.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Wolfram Sang <wsa@kernel.org>,
	Benson Leung <bleung@chromium.org>,
	Tzung-Bi Shih <tzungbi@kernel.org>,
	Mark Brown <broonie@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	chrome-platform@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Douglas Anderson <dianders@chromium.org>,
	Johan Hovold <johan@kernel.org>,
	Jiri Kosina <jikos@kernel.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	linux-i2c@vger.kernel.org
Subject: [PATCH v5 05/10] gpiolib: Add gpio_property_name_length()
Date: Thu, 22 Aug 2024 17:19:58 +0800
Message-ID: <20240822092006.3134096-6-wenst@chromium.org>
X-Mailer: git-send-email 2.46.0.184.g6999bdac58-goog
In-Reply-To: <20240822092006.3134096-1-wenst@chromium.org>
References: <20240822092006.3134096-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The I2C device tree component prober needs to get and toggle GPIO lines
for the components it intends to probe. These components may not use the
same name for their GPIO lines, so the prober must go through the device
tree, check each property to see it is a GPIO property, and get the GPIO
line.

Instead of duplicating the GPIO suffixes, or exporting them to the
prober to do pattern matching, simply add and export a new function that
does the pattern matching and returns the length of the GPIO name. The
caller can then use that to copy out the name if it needs to.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>

---
Changes since v4:
- new patch

Depends on commit 4b91188dced8 ("gpiolib: Replace gpio_suffix_count
with NULL-terminated array").
---
 drivers/gpio/gpiolib.c        | 44 +++++++++++++++++++++++++++++++++++
 include/linux/gpio/consumer.h |  2 ++
 2 files changed, 46 insertions(+)

diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
index 3903d0a75304..e4228ef6f131 100644
--- a/drivers/gpio/gpiolib.c
+++ b/drivers/gpio/gpiolib.c
@@ -4295,6 +4295,50 @@ struct gpio_desc *fwnode_gpiod_get_index(struct fwnode_handle *fwnode,
 }
 EXPORT_SYMBOL_GPL(fwnode_gpiod_get_index);
 
+/**
+ * gpio_property_name_length - Returns the GPIO name length from a property name
+ * @str:	string to check
+ *
+ * This function checks if the given name matches the GPIO property patterns, and
+ * returns the length of the name of the GPIO. The pattern is "*-<GPIO suffix>"
+ * or just "<GPIO suffix>".
+ *
+ * Returns:
+ * The length of the string before '-' if it matches "*-<GPIO suffix>", or
+ * 0 if no name part, just the suffix, or
+ * -EINVAL if the string doesn't match the pattern.
+ */
+int gpio_property_name_length(const char *str)
+{
+	size_t len;
+
+	len = strlen(str);
+
+	/* string need to be at minimum len(gpio) */
+	if (len < 4)
+		return -EINVAL;
+
+	/* Check for no-name case: "gpio" / "gpios" */
+	for (const char *const *p = gpio_suffixes; *p; p++)
+		if (!strcmp(str, *p))
+			return 0;
+
+	for (size_t i = len - 4; i > 0; i--) {
+		/* find right-most '-' and check if remainder matches suffix */
+		if (str[i] != '-')
+			continue;
+
+		for (const char *const *p = gpio_suffixes; *p; p++)
+			if (!strcmp(str + i + 1, *p))
+				return i;
+
+		return -EINVAL;
+	}
+
+	return -EINVAL;
+}
+EXPORT_SYMBOL_GPL(gpio_property_name_length);
+
 /**
  * gpiod_count - return the number of GPIOs associated with a device / function
  *		or -ENOENT if no GPIO has been assigned to the requested function
diff --git a/include/linux/gpio/consumer.h b/include/linux/gpio/consumer.h
index db2dfbae8edb..ce3a5f86a037 100644
--- a/include/linux/gpio/consumer.h
+++ b/include/linux/gpio/consumer.h
@@ -56,6 +56,8 @@ enum gpiod_flags {
 
 #ifdef CONFIG_GPIOLIB
 
+int gpio_property_name_length(const char *name);
+
 /* Return the number of GPIOs associated with a device / function */
 int gpiod_count(struct device *dev, const char *con_id);
 
-- 
2.46.0.184.g6999bdac58-goog


