Return-Path: <devicetree+bounces-10538-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 940AE7D1CB5
	for <lists+devicetree@lfdr.de>; Sat, 21 Oct 2023 13:09:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3FC8028252E
	for <lists+devicetree@lfdr.de>; Sat, 21 Oct 2023 11:09:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47F37DF5C;
	Sat, 21 Oct 2023 11:09:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="s9jhwt+o"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93894DDDE
	for <devicetree@vger.kernel.org>; Sat, 21 Oct 2023 11:09:39 +0000 (UTC)
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 57F75D76
	for <devicetree@vger.kernel.org>; Sat, 21 Oct 2023 04:09:33 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-32d9d8284abso1169949f8f.3
        for <devicetree@vger.kernel.org>; Sat, 21 Oct 2023 04:09:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697886571; x=1698491371; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Z5GSTRd7yWsW/2h2X+KrYHhvI8Ce18nIFifnprRO8h4=;
        b=s9jhwt+olIgkWhYo7fNs3No8HJfIG67wvJ6ugPHDfNnrIGlpK0Htvl04DFsBT9ZTqt
         E77KofAXu1ClG9zxI7zWFrLwWYYsJKam8KgczGalsAy+ElquFtOtvjQsvhIjIxlQ8ygx
         JYQ6HDvdHhL6wo60p/XajlhSEVqgZBNPUGwBPskM7k+gtEA+RHr90rqSsUm8wZjg8vKZ
         nY2f6x3A7tdp/3xFM9GJielDLIIjqi41IzQN9TOxbyZ2Mo+ZCbKpmUPBwSraX+2o64Kn
         NoCBluqhwThLXftDcCvmTDmxNjSe+mn54JYuFqhsLeMrsf9w3HSifxEeHNOGkiS3LNFy
         7HVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697886571; x=1698491371;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Z5GSTRd7yWsW/2h2X+KrYHhvI8Ce18nIFifnprRO8h4=;
        b=VrElsn0CQosx/Q5mZhXhViraszXXhIkSf62Pw8Fd+Tt63XSyZUkZt1aHBnjouEWWua
         mbCq0z90WAFOBYtvJn+msgtsTtclb7jE78QECTrwQGU5jniAVvKKCJVsbahHYx+JMITn
         3lLJYDd0DwDYoKtMCdJ/S5gxN8mUZarM/xdvAxr8VhM9ObFIfpt3jHCSnzv+hhjKxB5r
         Wlc2KK+lozq4Vq1pMK3Wz4SqnCwMQBbMVUYciZVhEG2v0ESDwmlkbkhLGhHOyX0hhpkp
         G8aXgJmxyLmNrX3vItAgjjWlF6wCchk14tk0ZGnv8UW9lElorNbb6FTqDkkPbzU8mzO9
         0FzA==
X-Gm-Message-State: AOJu0YwKfI+86DtTtxTEvWWHWoxV3DEpKYUg6peunjl7YgR6nBh7XCW5
	mkVjMCIaUT/tn01e6y484ap/ug==
X-Google-Smtp-Source: AGHT+IFUjZCPB0icLUSAb0eFbREE8JU8ih44f0+Y3srkDyrhVVDldjn7+VpGEDJtFJdkIDz1zreP5w==
X-Received: by 2002:adf:cf0d:0:b0:32d:9f1a:9f60 with SMTP id o13-20020adfcf0d000000b0032d9f1a9f60mr2982658wrj.61.1697886571486;
        Sat, 21 Oct 2023 04:09:31 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id o7-20020a056000010700b003232d122dbfsm3491096wrx.66.2023.10.21.04.09.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Oct 2023 04:09:31 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Sat, 21 Oct 2023 13:09:25 +0200
Subject: [PATCH v9 3/4] Input: goodix-berlin - add I2C support for Goodix
 Berlin Touchscreen IC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231021-topic-goodix-berlin-upstream-initial-v9-3-13fb4e887156@linaro.org>
References: <20231021-topic-goodix-berlin-upstream-initial-v9-0-13fb4e887156@linaro.org>
In-Reply-To: <20231021-topic-goodix-berlin-upstream-initial-v9-0-13fb4e887156@linaro.org>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
 linux-input@vger.kernel.org
Cc: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bastien Nocera <hadess@hadess.net>, 
 Hans de Goede <hdegoede@redhat.com>, Henrik Rydberg <rydberg@bitmath.org>, 
 Jeff LaBundy <jeff@labundy.com>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=4476;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=fvuZaiaDmAw7atVHwbHQLhUjO6UmtXJUopSvbqmyj84=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlM7FmySGMj4e93PeqOhh/2eEdrxZ95FeLK5NMZEbZ
 LvAnLquJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZTOxZgAKCRB33NvayMhJ0YOqD/
 wMBrPpSS2lHa6jeFTTPyglqwII5CN87UWAtuDrpHQBTt4jV33AC22Ksr1UQc7SeTj1FsDJRopphnU4
 cXYc+AZVEfUFiRq1ZLlTqxL5Z66XzCCEsEd+RKrE+jodoXVg4sGBQVc5EUwvVevR/iff4TrCgJrXDR
 e4YVEq8eRyQtoH1Svlk0mqlRZ3Kdtt8QMu0fr77ceKOLgIMlM0dI8xKH9KOCC/GYxL358tbysKlhaQ
 OjKdAh8mq0vw8x6UByff5ezTEhch0TNhl9zzur0o6PQepB7Uqy2VPF4gZUNMRiz/N59OwLU8KvlQGa
 PQQOz0jEAQLEEt0A7EkfrQRuflzVRmjsX1GPp585Yzfr8FUhnugsXWt+SzUgSciF981eOf5fPZVXH/
 eg9y2+MCWxCkpER5z7CMJiTL4pw44zN5uidhZLv7/NvFCjpYjbTZsmYm5G3Ppkkg2ywXgK3FERu1bL
 vrGS+u2LPqIL3H85ZUyMzQi+mEXMWoKmQ27X+ShiTOYeznuBBoBUaJrYYa7cGneLkqCygdW218XE/1
 uoAjOpTnkAGQxMCALwcrnauRDoqjpsr7nh+cr+6+VvpMOnL9LTUAmKn+meQU9mUqerZTPZKvhIkBFj
 F7uIceqGUgS42JQjk+e/D5G5ko6I/ccbT41dYX1To3zh262TF4Jz7Dv1MvvA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Add initial support for the new Goodix "Berlin" touchscreen ICs
over the I2C interface.

This initial driver is derived from the Goodix goodix_ts_berlin
available at [1] and [2] and only supports the GT9916 IC
present on the Qualcomm SM8550 MTP & QRD touch panel.

The current implementation only supports BerlinD, aka GT9916.

[1] https://github.com/goodix/goodix_ts_berlin
[2] https://git.codelinaro.org/clo/la/platform/vendor/opensource/touch-drivers

Reviewed-by: Jeff LaBundy <jeff@labundy.com>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/input/touchscreen/Kconfig             | 14 ++++++
 drivers/input/touchscreen/Makefile            |  1 +
 drivers/input/touchscreen/goodix_berlin_i2c.c | 69 +++++++++++++++++++++++++++
 3 files changed, 84 insertions(+)

diff --git a/drivers/input/touchscreen/Kconfig b/drivers/input/touchscreen/Kconfig
index 950da599ae1a..cc7b88118158 100644
--- a/drivers/input/touchscreen/Kconfig
+++ b/drivers/input/touchscreen/Kconfig
@@ -419,6 +419,20 @@ config TOUCHSCREEN_GOODIX
 config TOUCHSCREEN_GOODIX_BERLIN_CORE
 	tristate
 
+config TOUCHSCREEN_GOODIX_BERLIN_I2C
+	tristate "Goodix Berlin I2C touchscreen"
+	depends on I2C
+	select REGMAP_I2C
+	select TOUCHSCREEN_GOODIX_BERLIN_CORE
+	help
+	  Say Y here if you have a Goodix Berlin IC connected to
+	  your system via I2C.
+
+	  If unsure, say N.
+
+	  To compile this driver as a module, choose M here: the
+	  module will be called goodix_berlin_i2c.
+
 config TOUCHSCREEN_HIDEEP
 	tristate "HiDeep Touch IC"
 	depends on I2C
diff --git a/drivers/input/touchscreen/Makefile b/drivers/input/touchscreen/Makefile
index 2e2f3e70cd2c..7ef677cf7a10 100644
--- a/drivers/input/touchscreen/Makefile
+++ b/drivers/input/touchscreen/Makefile
@@ -48,6 +48,7 @@ obj-$(CONFIG_TOUCHSCREEN_EXC3000)	+= exc3000.o
 obj-$(CONFIG_TOUCHSCREEN_FUJITSU)	+= fujitsu_ts.o
 obj-$(CONFIG_TOUCHSCREEN_GOODIX)	+= goodix_ts.o
 obj-$(CONFIG_TOUCHSCREEN_GOODIX_BERLIN_CORE)	+= goodix_berlin_core.o
+obj-$(CONFIG_TOUCHSCREEN_GOODIX_BERLIN_I2C)	+= goodix_berlin_i2c.o
 obj-$(CONFIG_TOUCHSCREEN_HIDEEP)	+= hideep.o
 obj-$(CONFIG_TOUCHSCREEN_HYNITRON_CSTXXX)	+= hynitron_cstxxx.o
 obj-$(CONFIG_TOUCHSCREEN_ILI210X)	+= ili210x.o
diff --git a/drivers/input/touchscreen/goodix_berlin_i2c.c b/drivers/input/touchscreen/goodix_berlin_i2c.c
new file mode 100644
index 000000000000..6407b2258eb1
--- /dev/null
+++ b/drivers/input/touchscreen/goodix_berlin_i2c.c
@@ -0,0 +1,69 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Goodix Berlin Touchscreen Driver
+ *
+ * Copyright (C) 2020 - 2021 Goodix, Inc.
+ * Copyright (C) 2023 Linaro Ltd.
+ *
+ * Based on goodix_ts_berlin driver.
+ */
+#include <linux/i2c.h>
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/regmap.h>
+
+#include "goodix_berlin.h"
+
+#define I2C_MAX_TRANSFER_SIZE		256
+
+static const struct regmap_config goodix_berlin_i2c_regmap_conf = {
+	.reg_bits = 32,
+	.val_bits = 8,
+	.max_raw_read = I2C_MAX_TRANSFER_SIZE,
+	.max_raw_write = I2C_MAX_TRANSFER_SIZE,
+};
+
+/* vendor & product left unassigned here, should probably be updated from fw info */
+static const struct input_id goodix_berlin_i2c_input_id = {
+	.bustype = BUS_I2C,
+};
+
+static int goodix_berlin_i2c_probe(struct i2c_client *client)
+{
+	struct regmap *regmap;
+
+	regmap = devm_regmap_init_i2c(client, &goodix_berlin_i2c_regmap_conf);
+	if (IS_ERR(regmap))
+		return PTR_ERR(regmap);
+
+	return goodix_berlin_probe(&client->dev, client->irq,
+				   &goodix_berlin_i2c_input_id, regmap);
+}
+
+static const struct i2c_device_id goodix_berlin_i2c_id[] = {
+	{ "gt9916", 0 },
+	{ }
+};
+
+MODULE_DEVICE_TABLE(i2c, goodix_berlin_i2c_id);
+
+static const struct of_device_id goodix_berlin_i2c_of_match[] = {
+	{ .compatible = "goodix,gt9916", },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, goodix_berlin_i2c_of_match);
+
+static struct i2c_driver goodix_berlin_i2c_driver = {
+	.driver = {
+		.name = "goodix-berlin-i2c",
+		.of_match_table = goodix_berlin_i2c_of_match,
+		.pm = pm_sleep_ptr(&goodix_berlin_pm_ops),
+	},
+	.probe = goodix_berlin_i2c_probe,
+	.id_table = goodix_berlin_i2c_id,
+};
+module_i2c_driver(goodix_berlin_i2c_driver);
+
+MODULE_LICENSE("GPL");
+MODULE_DESCRIPTION("Goodix Berlin I2C Touchscreen driver");
+MODULE_AUTHOR("Neil Armstrong <neil.armstrong@linaro.org>");

-- 
2.34.1


