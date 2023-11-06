Return-Path: <devicetree+bounces-14010-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 672297E1C56
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 09:34:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 214B42812BA
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 08:34:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6D3F15B7;
	Mon,  6 Nov 2023 08:34:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="b6wJLoX9"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A538E2912
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 08:34:06 +0000 (UTC)
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 93A25100
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 00:34:04 -0800 (PST)
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-409299277bbso29562285e9.2
        for <devicetree@vger.kernel.org>; Mon, 06 Nov 2023 00:34:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699259643; x=1699864443; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tid5p5CbwnFew1OoFmZZ3rTS9lA993ke+t72lpp1p7Y=;
        b=b6wJLoX96yBlWtkcfIhd5mDosB/eDmsmYWDbLFCcimvYRgm9XkCmRzvc380etF2cwk
         c6m+x6wPy2WXFL/VpbJ291VlJhOKaVVQFaMjVugJiKpIksIAFpVZbQVcJxLpoiWeQAjZ
         bpB6vYyAtBqznvMUP1MpcczW5h5/g4DckgjoUBoQaNNrhwubeHPS2weVYgu0qKI5fyTN
         tLPtpSq96oLiiEhGhDwbTytBaqEuXPHKiOwfwh3A+yWc/+6rz/McCBk2E7uWeD2y/9xh
         i1padH0IuiqHcy+VtGBp9k/llopAb92b2BVD6qAXKaoX6zhDTIuCQG+N4vTBFtHykRGw
         wznA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699259643; x=1699864443;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tid5p5CbwnFew1OoFmZZ3rTS9lA993ke+t72lpp1p7Y=;
        b=m0F4F/AFO+yRfQ73eDrsGC3rlprtfjE6+bkMaCPGGyZFm1G+0Q2p8ntL/Ebifa3uRK
         0mpicTqhKsA0jlR8snsGd+VwvLfNXMHW43bt8cGECw+LHU3YAdOLCPLmFc+Q1cwmcZ/e
         v71nAKAwRRRAB0PbWaxry0T96VbFwLEbqvLOASkbURwYepTbPl8O0StntIqnkbrvhJJn
         HXfhRJd71aW8fJuf6pamXiw2cKVMKprI+WnUidTTTsBlXzPcPs/h5sR1g8j7pb92YQC3
         iANNQzQ06H6QggebVaeamu+9vT++YFk2fdDr0/trCOrCNlwCvt2xXjmV8PvAl9uYgh0g
         8oJw==
X-Gm-Message-State: AOJu0Yzivfyngf4KcRwnpEK1ywAaECO7pMSfyQZSdMPdaM0uzGd5gsm8
	2aXeWDcwD1HFrnBO9k3YacpI3w==
X-Google-Smtp-Source: AGHT+IF9hx0+ythJ4hs40XdkE7PYrN8XIyqUy3i6UMmlLHGB/m2RejTiCvY/fcPdy2h5w43RX+uT3g==
X-Received: by 2002:a05:600c:3b28:b0:402:ee9e:ed98 with SMTP id m40-20020a05600c3b2800b00402ee9eed98mr22702351wms.34.1699259642911;
        Mon, 06 Nov 2023 00:34:02 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id q24-20020a7bce98000000b0040648217f4fsm11132991wmj.39.2023.11.06.00.34.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Nov 2023 00:34:02 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 06 Nov 2023 09:33:58 +0100
Subject: [PATCH v11 3/4] Input: goodix-berlin - add I2C support for Goodix
 Berlin Touchscreen IC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231106-topic-goodix-berlin-upstream-initial-v11-3-5c47e9707c03@linaro.org>
References: <20231106-topic-goodix-berlin-upstream-initial-v11-0-5c47e9707c03@linaro.org>
In-Reply-To: <20231106-topic-goodix-berlin-upstream-initial-v11-0-5c47e9707c03@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=4539;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=/29OxaflwzQer1E/gOu8Bz3LG+5phtsz3jcz094am9k=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlSKT1e5yXT32uz4G+42ChIZKQIvajR75VmTOLTjPF
 +FD2iY2JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZUik9QAKCRB33NvayMhJ0UqxD/
 9c4B626vCGVTnd6wJEWoe/GnJQO1oyhgL9lPUFZhMwpVJfW8VprhHEiPuuhH8dFA71wlwumcqpEwsP
 4Os4+y71F3arVELFSe2/tm29Pa0Tvqs6+NP//66lrDmlmxLiLioabZc6WksDvtw3GOa+ddb0rGiqAd
 kydB3i+bjyLIoY4c2RrddE8SzZ6C9SgOIxRzNBTe4AUqaCiM9mvv/H09jTbJRiBlqgrX7dfPLkaXj3
 gJzY3cJzf8cy8d1gzzH57/5UMY1Wldg2mCeYqY4ntqPSE7CVyTH+P1m8WXZWo1EE1gr6gNV+OZuJyg
 WFbZfNbcvLgwlctU3xE6fWYF78PdpbjPct/hrv35KQHhcyht3x1FwrVHO5JitvtTq6b0dljsoMZSGt
 rbz/O7zO8m6eiRkWiubuoKa1GcSCfaeBkvqBX2CNWCqIFq/CvYgV9bT9M8Nazw3g1unjGOsd0MtY7I
 zV70bRfSP6kIL3/tt2WLbMrQ3WGdv+elEg7zmXhTTsVMrYkdULqFFLeI0tIhNz6ECuB+anNeYzMGD6
 pcFNxoAeZltlwi+8mGJCfs3U1/1muPa4VeNiVZ6o8MknYEr51hRZZxU95CIbJzcpsE+rmb6zwXKzoc
 xti6+GtBEPtbae0mxHpHItVgpSK0oDyxFnGvkcxMSVfqvMc/P8ZRAa2d2hqA==
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
 drivers/input/touchscreen/Kconfig             | 14 +++++
 drivers/input/touchscreen/Makefile            |  1 +
 drivers/input/touchscreen/goodix_berlin_i2c.c | 74 +++++++++++++++++++++++++++
 3 files changed, 89 insertions(+)

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
index 000000000000..4d5bcc101569
--- /dev/null
+++ b/drivers/input/touchscreen/goodix_berlin_i2c.c
@@ -0,0 +1,74 @@
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
+	int error;
+
+	regmap = devm_regmap_init_i2c(client, &goodix_berlin_i2c_regmap_conf);
+	if (IS_ERR(regmap))
+		return PTR_ERR(regmap);
+
+	error = goodix_berlin_probe(&client->dev, client->irq,
+				    &goodix_berlin_i2c_input_id, regmap);
+	if (error)
+		return error;
+
+	return 0;
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


