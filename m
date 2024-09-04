Return-Path: <devicetree+bounces-99865-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 20E5A96B5E3
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 11:04:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 42789B236C0
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 09:03:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36D6B1CF7AD;
	Wed,  4 Sep 2024 09:00:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="FKJzTyPn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91C8F1CF5F8
	for <devicetree@vger.kernel.org>; Wed,  4 Sep 2024 09:00:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725440447; cv=none; b=RjgC8s0Zmef25wA98faRbFqk/pM6vLyo1dhmiCH988ijZUIK4GFQ935jcdnVmr1/ezCDK1cBUVQKD3WblGn+AaanDePY4Tv1HU8seIYMBGnIeRqHYt8Q8MbFbk2zxWMaFX1lG6KRWObZF4Gl+Vl1jJ1LSzetv+l+/oV3leSS7ck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725440447; c=relaxed/simple;
	bh=rtIMsOt6wo4AfcXvwPWe+CMfwtVUeU2YX21kuRORNiY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WbI2pZ40Wu8drFGYbz4PMwu7nu0BHULCoqe1sXIJrfBZk5GQwLOOt4XZD3ZBQa0GYcszMfBsPjjZZBWrNVITczCDDdXG0MtYEbmS1e/iQx9EfJMSSteuwzO6xnF/xBai1U+xLJe3edwLFn8pDy+dHA7Bq5Q5XmOYRVQ6q/K2F6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=FKJzTyPn; arc=none smtp.client-ip=209.85.210.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-714302e7285so5682352b3a.2
        for <devicetree@vger.kernel.org>; Wed, 04 Sep 2024 02:00:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1725440445; x=1726045245; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oXe0bTAdK4fzeVHk0iwWr+4YgaeXrtwwmT3G1fAlM0c=;
        b=FKJzTyPnsNejt0Lnh3J5Sh1NLRMCC41wBPRch0fpvePChGV50iTl9dRyvor0vVQuF0
         9M0K0nl1Q5xJiMHC1KSowBKDXJzKWhWaDQ1HMNqsSJ9D0TgLhR+P1GcLJJ1T0C354KVD
         F2AO9GCHqgoDEdhnzm1qghDRre8y0Q8VoHVZY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725440445; x=1726045245;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oXe0bTAdK4fzeVHk0iwWr+4YgaeXrtwwmT3G1fAlM0c=;
        b=g7I+7TEMDiX0uDTggQ08Ik/eWBQgBjEratuqwPV2PYPB0WA1EymFHrW6fufvl2lYZb
         Vk5/uziqraSspj1/FI5ndIoLAP0RZkvpkNIS8FkfraJVx1sB4oPvPwHv7gYX28k9TfC5
         6zeU2roCHGz1fbPhkeNPKsLQqWaPHVv65yom/IyXI3HUdLI6x5aiiIyO+IPpxmaLJXma
         fLZ7z0frG87IoTsUQYR39XxRPjBnJD3AEDCRvGp7nxAb2T5sp9gPbnUcc17ZDiDVJkxW
         TJiU/1zv8USEpzyHyDfUzeOtMZ1+K5GibCC617T7qci32p6UiMA1Or0i2vU4Yl/oBogw
         IQ4w==
X-Forwarded-Encrypted: i=1; AJvYcCVLU4ayc1MF10wraNOGeyRdFygOPAjz+3f1FXH3H+R2nogvjFDHHyQ0AYaB2mL6ldU2g5yrbe3b6s3X@vger.kernel.org
X-Gm-Message-State: AOJu0YzehGFI26a+NxoN637heqLGWwWrDbrg+Qf760ic2SSnCVQuXlVD
	e6n/RwXzw1nlAr14Rl7aelj3wdfT3muBlFvl2S8ozolOxdW9Q6mTd0ZFeIj7qg==
X-Google-Smtp-Source: AGHT+IGxijmAvO+pYlgJ7hjMKsPERsrObcLBwxYEKhBRWkHQTmof+srMssUjYemzBoLP7fiuqVV5Ew==
X-Received: by 2002:a05:6a20:d48c:b0:1be:c929:e269 with SMTP id adf61e73a8af0-1cce10ab242mr24768495637.34.1725440444657;
        Wed, 04 Sep 2024 02:00:44 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:83fc:5c8e:13bd:d165])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-717785b5183sm1153279b3a.197.2024.09.04.02.00.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Sep 2024 02:00:44 -0700 (PDT)
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
Subject: [PATCH v6 06/12] gpiolib: Add gpio_get_property_name_length()
Date: Wed,  4 Sep 2024 17:00:08 +0800
Message-ID: <20240904090016.2841572-7-wenst@chromium.org>
X-Mailer: git-send-email 2.46.0.469.g59c65b2a67-goog
In-Reply-To: <20240904090016.2841572-1-wenst@chromium.org>
References: <20240904090016.2841572-1-wenst@chromium.org>
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

Andy suggested a much shorter implementation.

Suggested-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>

---
Changes since v5:
- Changed function name to "gpio_get_property_name_length()"
- Changed argument name to "propname"
- Clarified return value for "*-<GPIO suffix>" case
- Reworked according to Andy's suggestion
- Added stub function

Changes since v4:
- new patch
---
 drivers/gpio/gpiolib.c        | 25 +++++++++++++++++++++++++
 include/linux/gpio/consumer.h |  7 +++++++
 2 files changed, 32 insertions(+)

diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
index 3903d0a75304..86527cc7991b 100644
--- a/drivers/gpio/gpiolib.c
+++ b/drivers/gpio/gpiolib.c
@@ -4295,6 +4295,31 @@ struct gpio_desc *fwnode_gpiod_get_index(struct fwnode_handle *fwnode,
 }
 EXPORT_SYMBOL_GPL(fwnode_gpiod_get_index);
 
+/**
+ * gpio_get_property_name_length - Returns the GPIO name length from a property name
+ * @propname:	name of the property to check
+ *
+ * This function checks if the given property name matches the GPIO property
+ * patterns, and returns the length of the name of the GPIO. The pattern is
+ * "*-<GPIO suffix>" or just "<GPIO suffix>".
+ *
+ * Returns:
+ * The length of the string before '-<GPIO suffix>' if it matches
+ * "*-<GPIO suffix>", or 0 if no name part, just the suffix, or
+ * -EINVAL if the string doesn't match the pattern.
+ */
+int gpio_get_property_name_length(const char *propname)
+{
+	const char *dash = strrchr(propname, '-');
+
+	for (const char *const *p = gpio_suffixes; *p; p++)
+		if (!strcmp(dash ? dash + 1 : propname, *p))
+			return dash ? dash - propname : 0;
+
+	return -EINVAL;
+}
+EXPORT_SYMBOL_GPL(gpio_get_property_name_length);
+
 /**
  * gpiod_count - return the number of GPIOs associated with a device / function
  *		or -ENOENT if no GPIO has been assigned to the requested function
diff --git a/include/linux/gpio/consumer.h b/include/linux/gpio/consumer.h
index db2dfbae8edb..494dde33ca44 100644
--- a/include/linux/gpio/consumer.h
+++ b/include/linux/gpio/consumer.h
@@ -56,6 +56,8 @@ enum gpiod_flags {
 
 #ifdef CONFIG_GPIOLIB
 
+int gpio_get_property_name_length(const char *propname);
+
 /* Return the number of GPIOs associated with a device / function */
 int gpiod_count(struct device *dev, const char *con_id);
 
@@ -188,6 +190,11 @@ struct gpio_desc *devm_fwnode_gpiod_get_index(struct device *dev,
 
 #include <asm/bug.h>
 
+static inline int gpio_get_property_name_length(const char *propname)
+{
+	return ERR_PTR(-ENOSYS);
+}
+
 static inline int gpiod_count(struct device *dev, const char *con_id)
 {
 	return 0;
-- 
2.46.0.469.g59c65b2a67-goog


