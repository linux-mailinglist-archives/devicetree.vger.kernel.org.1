Return-Path: <devicetree+bounces-185842-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A0E72AD96C7
	for <lists+devicetree@lfdr.de>; Fri, 13 Jun 2025 23:02:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A023E189E46E
	for <lists+devicetree@lfdr.de>; Fri, 13 Jun 2025 21:02:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 925A5257AF2;
	Fri, 13 Jun 2025 21:02:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="imr9ptHs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f173.google.com (mail-il1-f173.google.com [209.85.166.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1C5A255F52
	for <devicetree@vger.kernel.org>; Fri, 13 Jun 2025 21:01:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749848520; cv=none; b=PwiVIT900b8ssV0dVskQdiAqONlLpiVGNiiTvjcp9s9/LTD9I+C0MGr4AoAm8zhXd/gn6tDI6eWqxhv/cA5QJ0Gy3A824IrhBt6CZlJoZr6ICebfm6U2UFbJW5RfMIyDCLvQNIkYZajH2QiKIqPAb0GzP6m5/9bP9pll3X2hLLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749848520; c=relaxed/simple;
	bh=/NCcF6YCEJOyMhiP8ip3TX+vLuixILptGte5tycyhEo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=JzfKZ4D1HzrRGLRPHYKmUBmxrSFHk3saKHC6YrX6te2X0qbR93/QqUvvZwRrzZNiYiNW4l8VN8P+vSZskMvzeBplQevkqYUuTjPCTJj/e07F/Y3wejxE2VT8EG+Qn/BqJ73sYUniMjAetSFt95kxPnwfhVOPqB9KlySHZjf8ZL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=imr9ptHs; arc=none smtp.client-ip=209.85.166.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-il1-f173.google.com with SMTP id e9e14a558f8ab-3d8020ba858so26849505ab.0
        for <devicetree@vger.kernel.org>; Fri, 13 Jun 2025 14:01:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1749848517; x=1750453317; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gi6K0d2gbDCkO0xyzWEymKA3zwyl78Rkz9g9qNQNf5w=;
        b=imr9ptHsCKAjWiCwfOH3mXOVepAoPTEjUV6szCuuSsVwlpqzaQq/Ytu/2CQjWQodAA
         thjtP7jkCE+t2ChRwfa0rM9pDH5Vb8tEPo1G1T8yQ2Al2pgLUJBpL2Hvz3iEfFrE6gVo
         Nzq1jXgAVI+KcDUO8yuN72NRDUscWEQE5XcNclXKyZAEe/xTI1VG+zF5X73OU5iMOMxP
         wJhHQFUaTAfFD8wxeGlGR4Qj4+58Sjx0a7xfYuQfQlICw7h6Gd7u78QqHCTXhTMGHHUq
         +NEe3+so8S0BeqIyOGgxxd1M/uN/i2v0ClH7DNCG8418BtDkgsQkSKToA3eJPG6nslIC
         cSyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749848517; x=1750453317;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gi6K0d2gbDCkO0xyzWEymKA3zwyl78Rkz9g9qNQNf5w=;
        b=ACRvgEXd64HV/C0Nm2jQm/gtACcrQmAN71K4pKlLIbrBjixtBJxgkbqE/RYqrhQXSD
         megrSWPNxkeX2gZDQffQFYLBnHnzX8X1S5q7hX0h/JMTO/SNyeh8+ugE7HE1wTKeo2/0
         rcCw9bpi8cD3Lldeu1DNAm47SQGFXeRTJbPtHMYSCfJqKTwpw6Uo9vUuPfm3CzUn5X3K
         qj0Xj6Njm8+knd6bCrgE8QuENjiwTPzcFTa9XIKcNo2zvsYjz1EZ0BgqEjmOqcZ60n2Q
         MzEvPCHM4qb0h2kI3poteutfZiGerQyEqBGNCMddWYvR23VYm7WqZHD4FwJOocH1dZhM
         JXKQ==
X-Forwarded-Encrypted: i=1; AJvYcCV8Rd38Kh+6NaZY1rbdS17Nf0/4TLDxtjszFENzx55u0X4Ib4g7sXlVwPVv1soaRHguOG1QVQ5K9Pgm@vger.kernel.org
X-Gm-Message-State: AOJu0YwuDGe52pkIBkCJk493R6iLvejPWyr8wcsJynV8rPAFORyM47Qt
	pbMZXOPOhGXqubvXL6E+sfnduOaxVsr1hQRMBaep+dJTYLnPDQxV/lkGkLRm3pZB0lM=
X-Gm-Gg: ASbGncuQ3EcWddesWtqtnSf7r7Xd1+R2YsFI+HoupeDShAXSR6eYTrfGlHet5b9BWcq
	hidz8HAZ++hr78FoRgCKkYkv5j5X4JhDdARnAUZuVwXI6YIuEnPGnN6IvSVBXEaxkkt7nmKRMgg
	D4ooCjVJY79mbb7CQAQ1Hc8s+F9cCWucnwFlLouaJUtWNHNZS33S0BUxH8iLN/szMovlKbyyZL6
	K/BfREDftjopBJkvS6veRQeboVYGuR9QdLoI/f3i62yvjYTZAxR5QZBdc9CNW4bozt4blmwBtq9
	nuOXmJn5amzGoj0D1mW/t2iZre2tJw6oOfY5oCV6OEv+Z7aOWIgdusNv68pYVXAQpA+nrfkZNxN
	ySshbom1gNq9KcFhaEsZ62rdWsqDBZlU=
X-Google-Smtp-Source: AGHT+IHYzBl71DO7p2Gah6d5B9SY/cCvwoxopRRBUcIrRK0VYAC+l9zq9ORsJh/cQvfo3p6WSG2YAQ==
X-Received: by 2002:a05:6e02:318a:b0:3dd:cb92:f148 with SMTP id e9e14a558f8ab-3de07cd16a2mr15293465ab.12.1749848517617;
        Fri, 13 Jun 2025 14:01:57 -0700 (PDT)
Received: from presto.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-3de019b44b3sm4996315ab.10.2025.06.13.14.01.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Jun 2025 14:01:57 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: lee@kernel.org,
	lgirdwood@gmail.com,
	broonie@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	dlan@gentoo.org
Cc: paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	troymitchell988@gmail.com,
	guodong@riscstar.com,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/6] mfd: spacemit: add support for SpacemiT PMICs
Date: Fri, 13 Jun 2025 16:01:45 -0500
Message-ID: <20250613210150.1468845-3-elder@riscstar.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250613210150.1468845-1-elder@riscstar.com>
References: <20250613210150.1468845-1-elder@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add support for SpacemiT PMICs. Initially only the P1 PMIC is supported
but the driver is structured to allow support for others to be added.

The P1 PMIC is controlled by I2C, and is normally implemented with the
SpacemiT K1 SoC.  This PMIC provides six buck converters and 12 LDO
regulators.  It also implements a switch, watchdog timer, real-time clock,
and more, but initially we will only support its regulators.

Signed-off-by: Alex Elder <elder@riscstar.com>
---
 drivers/mfd/Kconfig         | 11 +++++
 drivers/mfd/Makefile        |  1 +
 drivers/mfd/spacemit-pmic.c | 91 +++++++++++++++++++++++++++++++++++++
 3 files changed, 103 insertions(+)
 create mode 100644 drivers/mfd/spacemit-pmic.c

diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
index 6fb3768e3d71c..c59ae6cc2dd8d 100644
--- a/drivers/mfd/Kconfig
+++ b/drivers/mfd/Kconfig
@@ -1182,6 +1182,17 @@ config MFD_QCOM_RPM
 	  Say M here if you want to include support for the Qualcomm RPM as a
 	  module. This will build a module called "qcom_rpm".
 
+config MFD_SPACEMIT_PMIC
+	tristate "SpacemiT PMIC"
+	depends on ARCH_SPACEMIT || COMPILE_TEST
+	depends on I2C && OF
+	select MFD_CORE
+	select REGMAP_I2C
+	default ARCH_SPACEMIT
+	help
+	  This option enables support for SpacemiT I2C based PMICs.  At
+	  this time only the P1 PMIC (used with the K1 SoC) is supported.
+
 config MFD_SPMI_PMIC
 	tristate "Qualcomm SPMI PMICs"
 	depends on ARCH_QCOM || COMPILE_TEST
diff --git a/drivers/mfd/Makefile b/drivers/mfd/Makefile
index 79495f9f3457b..59d1ec8db3a3f 100644
--- a/drivers/mfd/Makefile
+++ b/drivers/mfd/Makefile
@@ -266,6 +266,7 @@ obj-$(CONFIG_MFD_SUN4I_GPADC)	+= sun4i-gpadc.o
 obj-$(CONFIG_MFD_STM32_LPTIMER)	+= stm32-lptimer.o
 obj-$(CONFIG_MFD_STM32_TIMERS) 	+= stm32-timers.o
 obj-$(CONFIG_MFD_MXS_LRADC)     += mxs-lradc.o
+obj-$(CONFIG_MFD_SPACEMIT_PMIC)	+= spacemit-pmic.o
 obj-$(CONFIG_MFD_SC27XX_PMIC)	+= sprd-sc27xx-spi.o
 obj-$(CONFIG_RAVE_SP_CORE)	+= rave-sp.o
 obj-$(CONFIG_MFD_ROHM_BD71828)	+= rohm-bd71828.o
diff --git a/drivers/mfd/spacemit-pmic.c b/drivers/mfd/spacemit-pmic.c
new file mode 100644
index 0000000000000..7c3c3e27236da
--- /dev/null
+++ b/drivers/mfd/spacemit-pmic.c
@@ -0,0 +1,91 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2025 by RISCstar Solutions Corporation.  All rights reserved.
+ * Derived from code from:
+ *	Copyright (C) 2024 Troy Mitchell <troymitchell988@gmail.com>
+ */
+
+#include <linux/device.h>
+#include <linux/err.h>
+#include <linux/i2c.h>
+#include <linux/mfd/core.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/regmap.h>
+#include <linux/types.h>
+
+struct spacemit_pmic_data {
+	const struct regmap_config *regmap_config;
+	const struct mfd_cell *mfd_cells;	/* array */
+	size_t mfd_cell_count;
+};
+
+static const struct regmap_config p1_regmap_config = {
+	.reg_bits	= 8,
+	.val_bits	= 8,
+	.max_register	= 0xaa,
+};
+
+/* The name field defines the *driver* name that should bind to the device */
+static const struct mfd_cell p1_cells[] = {
+	{
+		.name		= "spacemit-p1-regulator",
+	},
+};
+
+static const struct spacemit_pmic_data p1_pmic_data = {
+	.regmap_config	= &p1_regmap_config,
+	.mfd_cells	= p1_cells,
+	.mfd_cell_count	= ARRAY_SIZE(p1_cells),
+};
+
+static int spacemit_pmic_probe(struct i2c_client *client)
+{
+	const struct spacemit_pmic_data *data;
+	struct device *dev = &client->dev;
+	struct regmap *regmap;
+
+	/* We currently have no need for a device-specific structure */
+	data = of_device_get_match_data(dev);
+	regmap = devm_regmap_init_i2c(client, data->regmap_config);
+	if (IS_ERR(regmap))
+		return dev_err_probe(dev, PTR_ERR(regmap),
+				     "regmap initialization failed");
+
+	return devm_mfd_add_devices(dev, PLATFORM_DEVID_AUTO,
+				    data->mfd_cells, data->mfd_cell_count,
+				    NULL, 0, NULL);
+}
+
+static const struct of_device_id spacemit_pmic_match[] = {
+	{
+		.compatible	= "spacemit,p1",
+		.data		= &p1_pmic_data,
+	},
+	{ }
+};
+MODULE_DEVICE_TABLE(of, spacemit_pmic_match);
+
+static struct i2c_driver spacemit_pmic_i2c_driver = {
+	.driver = {
+		.name = "spacemit-pmic",
+		.of_match_table = spacemit_pmic_match,
+	},
+	.probe    = spacemit_pmic_probe,
+};
+
+static int __init spacemit_pmic_init(void)
+{
+	return i2c_add_driver(&spacemit_pmic_i2c_driver);
+}
+
+static void __exit spacemit_pmic_exit(void)
+{
+	i2c_del_driver(&spacemit_pmic_i2c_driver);
+}
+
+module_init(spacemit_pmic_init);
+module_exit(spacemit_pmic_exit);
+
+MODULE_LICENSE("GPL");
+MODULE_DESCRIPTION("SpacemiT multi-function PMIC driver");
-- 
2.45.2


