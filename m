Return-Path: <devicetree+bounces-14012-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 351A07E1C5C
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 09:34:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A0FE1B20D03
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 08:34:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9ED51257B;
	Mon,  6 Nov 2023 08:34:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="l0dOYpJg"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90FE633CF
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 08:34:08 +0000 (UTC)
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A2CFDB0
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 00:34:05 -0800 (PST)
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-5401bab7525so7055126a12.2
        for <devicetree@vger.kernel.org>; Mon, 06 Nov 2023 00:34:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699259644; x=1699864444; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OxnVNSfczT25XAfpC4X+ICgFqABO9v8W+zLZSFvXeiM=;
        b=l0dOYpJgyr7MpCXzr2PK6914ol0WKBP1Cy/zYU+e9rVir5zByr9LbyZI/386Ymvbpq
         +z/XKMbaNvb2veItYy5PITAPWdvhgwMuCmjXJuSSCihqessoY7V2aWRFrfP+mtCCBRlP
         MtvxQIbbKmXATVh5k06Tb1XYq+qYIK2gdKam0NogoE0EkRtvBYCjdtIlRBnd02hiZP5B
         QAyg7wT/u5zPInlPhXVaXvmo+NWgd7VMDy2gq72Dl6qGcWYLf8ZR0gH0WpHUc8c8c/Qn
         qbf+0fsJ0yjjrEmlziX6TyAe8akc4OKFEebLEn76xMHV8T/9r68EpoO4ec7vwuqoR/Cy
         1DJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699259644; x=1699864444;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OxnVNSfczT25XAfpC4X+ICgFqABO9v8W+zLZSFvXeiM=;
        b=wV3qgEfO448oEhbUizfD/g/EQusP4Oximko12FYW89ZjQ6hfApKRzHtk4gwroed0Hl
         n5k6KrWkX69fgZA55a3duQkjlc/klEp25EswuiNe4t/BxFKaLzZHs7m8O8Ogvp/Hbqsn
         Ax8OIr7PbexPG8RhflvRs1RMc58gMwUguMbj83cKhdWYEC9KQoeJRppN/+PPosKctm/o
         vLE2OBf+lF+KzQ7RNpwOQu6FwYsXdQH9XZZlpGn6PqHlTd6in/azUjxkboqLjUw9++5t
         Ij4JSR7+JK7klaYD6E7/K84eOrkeufEVP5cM3Dd7a5POWc9jH/pEYDBNfmBOElILNtYf
         zJmw==
X-Gm-Message-State: AOJu0YwLgkNFJHgae3NxwJD/nD30ABIbmra3Nkhf1KNS/3tLdsYNFtIj
	IslSoQNMxu6OB3Hxmvom7Q8Y1Q==
X-Google-Smtp-Source: AGHT+IEH0+oVX58+uggKJ7R9Rqu8bdFhdAVwjxs0JsLvDyYFiK4op9g98SYsIi9Nm/DHVLmPUigpXw==
X-Received: by 2002:a17:907:26c5:b0:9e0:2319:16dc with SMTP id bp5-20020a17090726c500b009e0231916dcmr2466244ejc.73.1699259644042;
        Mon, 06 Nov 2023 00:34:04 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id q24-20020a7bce98000000b0040648217f4fsm11132991wmj.39.2023.11.06.00.34.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Nov 2023 00:34:03 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 06 Nov 2023 09:33:59 +0100
Subject: [PATCH v11 4/4] Input: goodix-berlin - add SPI support for Goodix
 Berlin Touchscreen IC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231106-topic-goodix-berlin-upstream-initial-v11-4-5c47e9707c03@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=8067;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=IRI86qOlgcP+lY+pewvMbMLCeQCDU17m1zaFOv0kod4=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlSKT2L/YIoIVQCfo/epBR8EfFUB+oHqLAeES4nTBl
 rRb/Y/6JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZUik9gAKCRB33NvayMhJ0WU9EA
 CD+XjwmhLu0Bi0k3zqpiosQTJr5WVPxuvvJiPf8pBfYKm0hi5Ae6gclEWUBkeY1hkMMzJQ53+p6/O0
 zNZ+bSX0e4RzSm0OcnCny33ueKV0+RomM8fikoJOW+JzRvYEmtwhrsRESWxLJbFIEr0ffh2MIJBsrP
 kWgHif1sDgdV+LjNWCHqaOvgpXi4MbEktlemUiGnx6BFmGMhuZi03NezTDImfLRgSYBv6g/H8PoEZW
 UajOM7EsK2OvW0hoadwLd8YVnJlPMu/Y3S9SPK0VvvZLV5pbo7mdXXgSDDAOyZKkFKIEk6FC7bvWOm
 GnvrRB1iPjj1589U4laOmL7x7HYkcPxWk3llxSDguA/oZrTOUTS5OYa1ZqMq8Mb9drdKmqTLfoDo3i
 gfL8FshdQl0MHwAgMi2AGXS+9TWTKYcz+RoEBzQlrvFRSoj5J2n4G/TDiMSE2v3/+GmIIqzRgY39LI
 LdcrKfNuRrSU+EUIiOJj9IkoffJq5zszATkR5zjIvcjNBpy+CYh9M+VbQErRusIubG+6IBb+VDHR4y
 Z/5zJFA+gfoXKGiWlYy/zR6KHkYanSzahg0SYu8l4ds09JWhA98nqTzRdT4+Uk+zhbEsPoBb68d8vB
 QMqhW9GiUWdgrs8SI/cnxgV2R309tltlNnTYwJahqjgJJOvU5XzpYOk4ey4Q==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Add initial support for the new Goodix "Berlin" touchscreen ICs
over the SPI interface.

The driver doesn't use the regmap_spi code since the SPI messages
needs to be prefixed, thus this custom regmap code.

This initial driver is derived from the Goodix goodix_ts_berlin
available at [1] and [2] and only supports the GT9916 IC
present on the Qualcomm SM8550 MTP & QRD touch panel.

The current implementation only supports BerlinD, aka GT9916.

[1] https://github.com/goodix/goodix_ts_berlin
[2] https://git.codelinaro.org/clo/la/platform/vendor/opensource/touch-drivers

Reviewed-by: Jeff LaBundy <jeff@labundy.com>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/input/touchscreen/Kconfig             |  14 ++
 drivers/input/touchscreen/Makefile            |   1 +
 drivers/input/touchscreen/goodix_berlin_spi.c | 177 ++++++++++++++++++++++++++
 3 files changed, 192 insertions(+)

diff --git a/drivers/input/touchscreen/Kconfig b/drivers/input/touchscreen/Kconfig
index cc7b88118158..c821fe3ee794 100644
--- a/drivers/input/touchscreen/Kconfig
+++ b/drivers/input/touchscreen/Kconfig
@@ -433,6 +433,20 @@ config TOUCHSCREEN_GOODIX_BERLIN_I2C
 	  To compile this driver as a module, choose M here: the
 	  module will be called goodix_berlin_i2c.
 
+config TOUCHSCREEN_GOODIX_BERLIN_SPI
+	tristate "Goodix Berlin SPI touchscreen"
+	depends on SPI_MASTER
+	select REGMAP
+	select TOUCHSCREEN_GOODIX_BERLIN_CORE
+	help
+	  Say Y here if you have a Goodix Berlin IC connected to
+	  your system via SPI.
+
+	  If unsure, say N.
+
+	  To compile this driver as a module, choose M here: the
+	  module will be called goodix_berlin_spi.
+
 config TOUCHSCREEN_HIDEEP
 	tristate "HiDeep Touch IC"
 	depends on I2C
diff --git a/drivers/input/touchscreen/Makefile b/drivers/input/touchscreen/Makefile
index 7ef677cf7a10..a81cb5aa21a5 100644
--- a/drivers/input/touchscreen/Makefile
+++ b/drivers/input/touchscreen/Makefile
@@ -49,6 +49,7 @@ obj-$(CONFIG_TOUCHSCREEN_FUJITSU)	+= fujitsu_ts.o
 obj-$(CONFIG_TOUCHSCREEN_GOODIX)	+= goodix_ts.o
 obj-$(CONFIG_TOUCHSCREEN_GOODIX_BERLIN_CORE)	+= goodix_berlin_core.o
 obj-$(CONFIG_TOUCHSCREEN_GOODIX_BERLIN_I2C)	+= goodix_berlin_i2c.o
+obj-$(CONFIG_TOUCHSCREEN_GOODIX_BERLIN_SPI)	+= goodix_berlin_spi.o
 obj-$(CONFIG_TOUCHSCREEN_HIDEEP)	+= hideep.o
 obj-$(CONFIG_TOUCHSCREEN_HYNITRON_CSTXXX)	+= hynitron_cstxxx.o
 obj-$(CONFIG_TOUCHSCREEN_ILI210X)	+= ili210x.o
diff --git a/drivers/input/touchscreen/goodix_berlin_spi.c b/drivers/input/touchscreen/goodix_berlin_spi.c
new file mode 100644
index 000000000000..502b143e9e05
--- /dev/null
+++ b/drivers/input/touchscreen/goodix_berlin_spi.c
@@ -0,0 +1,177 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Goodix Berlin Touchscreen Driver
+ *
+ * Copyright (C) 2020 - 2021 Goodix, Inc.
+ * Copyright (C) 2023 Linaro Ltd.
+ *
+ * Based on goodix_ts_berlin driver.
+ */
+#include <asm/unaligned.h>
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/regmap.h>
+#include <linux/spi/spi.h>
+
+#include "goodix_berlin.h"
+
+#define GOODIX_BERLIN_SPI_TRANS_PREFIX_LEN	1
+#define GOODIX_BERLIN_REGISTER_WIDTH		4
+#define GOODIX_BERLIN_SPI_READ_DUMMY_LEN	3
+#define GOODIX_BERLIN_SPI_READ_PREFIX_LEN	(GOODIX_BERLIN_SPI_TRANS_PREFIX_LEN + \
+						 GOODIX_BERLIN_REGISTER_WIDTH + \
+						 GOODIX_BERLIN_SPI_READ_DUMMY_LEN)
+#define GOODIX_BERLIN_SPI_WRITE_PREFIX_LEN	(GOODIX_BERLIN_SPI_TRANS_PREFIX_LEN + \
+						 GOODIX_BERLIN_REGISTER_WIDTH)
+
+#define GOODIX_BERLIN_SPI_WRITE_FLAG		0xF0
+#define GOODIX_BERLIN_SPI_READ_FLAG		0xF1
+
+static int goodix_berlin_spi_read(void *context, const void *reg_buf,
+				  size_t reg_size, void *val_buf,
+				  size_t val_size)
+{
+	struct spi_device *spi = context;
+	struct spi_transfer xfers;
+	struct spi_message spi_msg;
+	const u32 *reg = reg_buf; /* reg is stored as native u32 at start of buffer */
+	u8 *buf;
+	int error;
+
+	if (reg_size != GOODIX_BERLIN_REGISTER_WIDTH)
+		return -EINVAL;
+
+	buf = kzalloc(GOODIX_BERLIN_SPI_READ_PREFIX_LEN + val_size, GFP_KERNEL);
+	if (!buf)
+		return -ENOMEM;
+
+	spi_message_init(&spi_msg);
+	memset(&xfers, 0, sizeof(xfers));
+
+	/* buffer format: 0xF1 + addr(4bytes) + dummy(3bytes) + data */
+	buf[0] = GOODIX_BERLIN_SPI_READ_FLAG;
+	put_unaligned_be32(*reg, buf + GOODIX_BERLIN_SPI_TRANS_PREFIX_LEN);
+	memset(buf + GOODIX_BERLIN_SPI_TRANS_PREFIX_LEN + GOODIX_BERLIN_REGISTER_WIDTH,
+	       0xff, GOODIX_BERLIN_SPI_READ_DUMMY_LEN);
+
+	xfers.tx_buf = buf;
+	xfers.rx_buf = buf;
+	xfers.len = GOODIX_BERLIN_SPI_READ_PREFIX_LEN + val_size;
+	xfers.cs_change = 0;
+	spi_message_add_tail(&xfers, &spi_msg);
+
+	error = spi_sync(spi, &spi_msg);
+	if (error < 0)
+		dev_err(&spi->dev, "spi transfer error, %d", error);
+	else
+		memcpy(val_buf, buf + GOODIX_BERLIN_SPI_READ_PREFIX_LEN, val_size);
+
+	kfree(buf);
+	return error;
+}
+
+static int goodix_berlin_spi_write(void *context, const void *data,
+				   size_t count)
+{
+	unsigned int len = count - GOODIX_BERLIN_REGISTER_WIDTH;
+	struct spi_device *spi = context;
+	struct spi_transfer xfers;
+	struct spi_message spi_msg;
+	const u32 *reg = data; /* reg is stored as native u32 at start of buffer */
+	u8 *buf;
+	int error;
+
+	buf = kzalloc(GOODIX_BERLIN_SPI_WRITE_PREFIX_LEN + len, GFP_KERNEL);
+	if (!buf)
+		return -ENOMEM;
+
+	spi_message_init(&spi_msg);
+	memset(&xfers, 0, sizeof(xfers));
+
+	buf[0] = GOODIX_BERLIN_SPI_WRITE_FLAG;
+	put_unaligned_be32(*reg, buf + GOODIX_BERLIN_SPI_TRANS_PREFIX_LEN);
+	memcpy(buf + GOODIX_BERLIN_SPI_WRITE_PREFIX_LEN,
+	       data + GOODIX_BERLIN_REGISTER_WIDTH, len);
+
+	xfers.tx_buf = buf;
+	xfers.len = GOODIX_BERLIN_SPI_WRITE_PREFIX_LEN + len;
+	xfers.cs_change = 0;
+	spi_message_add_tail(&xfers, &spi_msg);
+
+	error = spi_sync(spi, &spi_msg);
+	if (error < 0)
+		dev_err(&spi->dev, "spi transfer error, %d", error);
+
+	kfree(buf);
+	return error;
+}
+
+static const struct regmap_config goodix_berlin_spi_regmap_conf = {
+	.reg_bits = 32,
+	.val_bits = 8,
+	.read = goodix_berlin_spi_read,
+	.write = goodix_berlin_spi_write,
+};
+
+/* vendor & product left unassigned here, should probably be updated from fw info */
+static const struct input_id goodix_berlin_spi_input_id = {
+	.bustype = BUS_SPI,
+};
+
+static int goodix_berlin_spi_probe(struct spi_device *spi)
+{
+	struct regmap_config regmap_config;
+	struct regmap *regmap;
+	size_t max_size;
+	int error = 0;
+
+	spi->mode = SPI_MODE_0;
+	spi->bits_per_word = 8;
+	error = spi_setup(spi);
+	if (error)
+		return error;
+
+	max_size = spi_max_transfer_size(spi);
+
+	regmap_config = goodix_berlin_spi_regmap_conf;
+	regmap_config.max_raw_read = max_size - GOODIX_BERLIN_SPI_READ_PREFIX_LEN;
+	regmap_config.max_raw_write = max_size - GOODIX_BERLIN_SPI_WRITE_PREFIX_LEN;
+
+	regmap = devm_regmap_init(&spi->dev, NULL, spi, &regmap_config);
+	if (IS_ERR(regmap))
+		return PTR_ERR(regmap);
+
+	error = goodix_berlin_probe(&spi->dev, spi->irq,
+				    &goodix_berlin_spi_input_id, regmap);
+	if (error)
+		return error;
+
+	return 0;
+}
+
+static const struct spi_device_id goodix_berlin_spi_ids[] = {
+	{ "gt9916" },
+	{ },
+};
+MODULE_DEVICE_TABLE(spi, goodix_berlin_spi_ids);
+
+static const struct of_device_id goodix_berlin_spi_of_match[] = {
+	{ .compatible = "goodix,gt9916", },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, goodix_berlin_spi_of_match);
+
+static struct spi_driver goodix_berlin_spi_driver = {
+	.driver = {
+		.name = "goodix-berlin-spi",
+		.of_match_table = goodix_berlin_spi_of_match,
+		.pm = pm_sleep_ptr(&goodix_berlin_pm_ops),
+	},
+	.probe = goodix_berlin_spi_probe,
+	.id_table = goodix_berlin_spi_ids,
+};
+module_spi_driver(goodix_berlin_spi_driver);
+
+MODULE_LICENSE("GPL");
+MODULE_DESCRIPTION("Goodix Berlin SPI Touchscreen driver");
+MODULE_AUTHOR("Neil Armstrong <neil.armstrong@linaro.org>");

-- 
2.34.1


