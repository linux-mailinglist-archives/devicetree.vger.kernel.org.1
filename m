Return-Path: <devicetree+bounces-199538-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D59EB1123E
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 22:26:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 319BE5A7727
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 20:26:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B47F325744F;
	Thu, 24 Jul 2025 20:25:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="vyH00tth"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f42.google.com (mail-io1-f42.google.com [209.85.166.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01F5925392B
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 20:25:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753388722; cv=none; b=cDHdJJe7laAA0bDxT1wvf8s9v3fK6B+QGwxIjGzuSQHutzX+hZfRATv7yWzK1CEaFvKylT45uyopzH3kFxkRDxeecbxV3OHR+f5zISJ6rwlwPxJ/hP7wikfvEjjsa7fhb+KdD+F72591/S+kqfUhtrEekbGAGjtTLeMeHBv94KI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753388722; c=relaxed/simple;
	bh=UrNWY27+WGuXhBrr8FZ4VtBPQzBe5GWLS5gaqBEezLs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=EzTKOyUWu1YMlPzG6V2/kEBLndyBuucop8QPQU3uPXdB5tzF9W3rJ046nfViXMKbbpxHtvOLpxOVxdcvvT+0w/ZLsQUDoBRTgFNY5K4gApom7avkWBCWNZUjhHHgr1cBgzE4HmMxD9kxwh+xRfIW0j8dnTQ4Cugj0+9P0Mob69I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=vyH00tth; arc=none smtp.client-ip=209.85.166.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f42.google.com with SMTP id ca18e2360f4ac-87c0ad018d9so47861539f.2
        for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 13:25:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1753388719; x=1753993519; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mUWJeO10MspBNvjbgvonhw7oiCj7Ud69EwF31dVMKc0=;
        b=vyH00tthU2gfIwChYemo5wrwz0yO+Mt7fE2TPm/dxXiKtOwHYHu/WxRXiDGsYXriZR
         S0PybRIXNuWgfTrz8P1RDd2niMKxibj9eqKQey/SYDDZOtvkNRJUdOrZ7LHUnDcBtjeq
         sBrpNWaVmhvO01JtVn2KxueAO3RtUNueOzNuW03qxJlpwdHYlznD3wr57jV2hfqm01Li
         sPCtE9LnQLV7rWnIUJZGY8/Dy8/y0tIArL6d8+HAl33lSKo5XBvxrl4JvDQ5i6m/v8Zu
         OLxNpWQj07ol5eB8Ua1ltRU2GWzO30zNb01Or1gngp6+dtyRAI5XJuXI5XRG5KGUNntx
         NsQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753388719; x=1753993519;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mUWJeO10MspBNvjbgvonhw7oiCj7Ud69EwF31dVMKc0=;
        b=o6bE1xeS4rfpWrqis0oxQGaqRxR+t6faFNDcD76KCdOaIvE/5akaC426eiXAzG5ziS
         T5/KTMYnSEeuqEsx5MfMfMJ4lwjmgTPvYMJP5SitLZZDFkhzN6tP/zvRtFmqL5yo3DHE
         oo+kIfNI8tCzrl0DyDjZ9Yt6rcRaMfAYGAso6iMX08vwaM7PX6m7I75B0BFBOs+6Lqul
         SQtiTMf2jcgbibDeN2VyJGWuV1/tLnTXaeCD74GkFX5tcTdlNpC0wdaPN3Xm7irVum7n
         WNMydTftdcS2/AO8BH/5xb/aZHSwCxxC0BNtcglKSBpBXpX013Fe+MksAkMoMqtua6QX
         OuoQ==
X-Forwarded-Encrypted: i=1; AJvYcCVw8JSJ+YlwOZALkjIpKmdqKq9iKZ+UghzQx1PJxAPBKElXdOUDm4UfZ3uIMZ8eRmhyTmdF6l0EfOXf@vger.kernel.org
X-Gm-Message-State: AOJu0YyCbFP8fsQdVLtAKkDT6KyaTmNFaWM39fuoD40O4ivOIYaIATyE
	JXdn2YYxHenJIcpwuaVyz55ML40CD6puQ2ZRT+d9/AurjfG6cb4aSgTo4G6KTrsMGN4=
X-Gm-Gg: ASbGncuYe8P6hY/C0WJU0Y1th+LhDHM97wViuAP7qBeJSE77+MTIMiA9I0gNWIZm2vN
	od0+0Xd+O8V6B3ABd8UVD2Gdm2Vd5ci+XnIoSpfL5BGjQjrI2zDwsGHHKfVwRWwxMgd2LZNp1nl
	62ZJWdIn4jH2NUmoudhOxvHsKZsE8OyuBOa4MVps2ibgTSbcupzqtBqeS1JlQsjw/RuFYgIwqe3
	eebzQltxxhf7dgDjiYQplMruSZ1XbrzQqpl5V49o4+qjduv4/H6DWC0hhh5M0o2vzNMjxJ5oL7r
	mha7S08ZhUzhiZoiFgJnTVZN1EpXzQ7HZqOnLTr9/2EsepZtMyHqdU9CofpAfIHWXJHtPJcsP8M
	hN6zup06WyJlj1TiOOs6Vt/ZIvFADsVyv3QFm8SNh
X-Google-Smtp-Source: AGHT+IFUp9h4K9IBStIoZAgqsn9asnHHUeYZME463FiGof5MP3p6oGHeDXOYqEh2MNkn2bzq84JyzQ==
X-Received: by 2002:a05:6602:b8e:b0:876:7876:a587 with SMTP id ca18e2360f4ac-87c64dc5c35mr1342670039f.0.1753388719095;
        Thu, 24 Jul 2025 13:25:19 -0700 (PDT)
Received: from zoltan.localdomain ([199.59.116.160])
        by smtp.gmail.com with ESMTPSA id ca18e2360f4ac-87c74316a3bsm63080239f.23.2025.07.24.13.25.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Jul 2025 13:25:18 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: lee@kernel.org,
	lgirdwood@gmail.com,
	broonie@kernel.org,
	alexandre.belloni@bootlin.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: mat.jonczyk@o2.pl,
	dlan@gentoo.org,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	linux.amoon@gmail.com,
	troymitchell988@gmail.com,
	guodong@riscstar.com,
	linux-rtc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH v9 2/8] mfd: simple-mfd-i2c: specify max_register
Date: Thu, 24 Jul 2025 15:25:03 -0500
Message-ID: <20250724202511.499288-3-elder@riscstar.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250724202511.499288-1-elder@riscstar.com>
References: <20250724202511.499288-1-elder@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

All devices supported by simple MFD use the same 8-bit register 8-bit
value regmap configuration.  There is an option available for a device
to specify a custom configuration, but no existing device uses it.

Rather than requiring a "full" regmap configuration to be provided to
change only the max_register value, Lee Jones suggested allowing
max_register to be specified in the simple_mfd_data structure.  The
8-bit register 8-bit configuration is still used by default, but
max_register is also applied if it is non-zero.

If both regmap_config and max_register are provided, the max_register
field in the regmap_config structure is ignored.

Signed-off-by: Alex Elder <elder@riscstar.com>
Suggested-by: Lee Jones <lee@kernel.org>
---
v9: - max_register takes precedence over regmap_config in simple_mfd_data
    - New function simple_regmap_config() encapsulates providing config
    - simple_regmap_config() allocates a regmap_config if necessary
    - A small duplicated comment is removed in "simple-mfd-i2c.h"

 drivers/mfd/simple-mfd-i2c.c | 38 +++++++++++++++++++++++++++++++-----
 drivers/mfd/simple-mfd-i2c.h |  5 +----
 2 files changed, 34 insertions(+), 9 deletions(-)

diff --git a/drivers/mfd/simple-mfd-i2c.c b/drivers/mfd/simple-mfd-i2c.c
index 22159913bea03..f3ba79c112d4e 100644
--- a/drivers/mfd/simple-mfd-i2c.c
+++ b/drivers/mfd/simple-mfd-i2c.c
@@ -29,6 +29,36 @@ static const struct regmap_config regmap_config_8r_8v = {
 	.val_bits = 8,
 };
 
+/*
+ * Determine regmap config to use.  If no regmap_config is provided,
+ * regmap_config_8r_8v is used.  If max_register is specified it is
+ * (also) used, whether or not regmap_config is provided.
+ */
+static const struct regmap_config *
+simple_regmap_config(struct device *dev, const struct simple_mfd_data *data)
+{
+	struct regmap_config *regmap_config;
+
+	if (!data)
+		return &regmap_config_8r_8v;
+
+	if (data->regmap_config && !data->max_register)
+		return data->regmap_config;
+
+	regmap_config = devm_kzalloc(dev, sizeof(*regmap_config), GFP_KERNEL);
+	if (!regmap_config)
+		return NULL;
+
+	if (data->regmap_config)
+		*regmap_config = *data->regmap_config;
+	else
+		*regmap_config = regmap_config_8r_8v;
+	if (data->max_register)
+		regmap_config->max_register = data->max_register;
+
+	return regmap_config;
+}
+
 static int simple_mfd_i2c_probe(struct i2c_client *i2c)
 {
 	const struct simple_mfd_data *simple_mfd_data;
@@ -38,11 +68,9 @@ static int simple_mfd_i2c_probe(struct i2c_client *i2c)
 
 	simple_mfd_data = device_get_match_data(&i2c->dev);
 
-	/* If no regmap_config is specified, use the default 8reg and 8val bits */
-	if (!simple_mfd_data || !simple_mfd_data->regmap_config)
-		regmap_config = &regmap_config_8r_8v;
-	else
-		regmap_config = simple_mfd_data->regmap_config;
+	regmap_config = simple_regmap_config(&i2c->dev, simple_mfd_data);
+	if (!regmap_config)
+		return -ENOMEM;
 
 	regmap = devm_regmap_init_i2c(i2c, regmap_config);
 	if (IS_ERR(regmap))
diff --git a/drivers/mfd/simple-mfd-i2c.h b/drivers/mfd/simple-mfd-i2c.h
index 7cb2bdd347d97..6fa36b3d7a217 100644
--- a/drivers/mfd/simple-mfd-i2c.h
+++ b/drivers/mfd/simple-mfd-i2c.h
@@ -8,10 +8,6 @@
  * shared by all sub-devices.  Children can use their parent's device structure
  * (dev.parent) in order to reference it.
  *
- * This driver creates a single register map with the intention for it to be
- * shared by all sub-devices.  Children can use their parent's device structure
- * (dev.parent) in order to reference it.
- *
  * Once the register map has been successfully initialised, any sub-devices
  * represented by child nodes in Device Tree or via the MFD cells in the
  * associated C file will be subsequently registered.
@@ -25,6 +21,7 @@
 
 struct simple_mfd_data {
 	const struct regmap_config *regmap_config;
+	unsigned int max_register;
 	const struct mfd_cell *mfd_cell;
 	size_t mfd_cell_size;
 };
-- 
2.43.0


