Return-Path: <devicetree+bounces-134706-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 805FA9FE528
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 11:03:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3968E1624BC
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 10:03:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE1FA1A76B0;
	Mon, 30 Dec 2024 10:03:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Goxk28YW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com [209.85.214.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A17831A725A;
	Mon, 30 Dec 2024 10:03:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735553012; cv=none; b=RRUuyhGqzCb93ak8+QfhvG1D99nFRIu+WK2E84W3cdOxubgPocvD1Prkok1FeB3chnimuGkkTuIUVz0e7F7lagKE6Hd8fDMhxFqfQyOzNZd29kqkJSYZL5cqH1cqvTAs/69XYbU4UaEMcAS8cgqW1GaNrT1k9kzWItPC1SwkRxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735553012; c=relaxed/simple;
	bh=ZfO8/DhT31tH7tz+lxK41Chh1i9Nq/kiwPw3d+UmuUw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Ev9C9YwSsF6ryUmnpDTNhlL3e9J6G15OwtjzNg73Con+169vfUHLSDtb6h+DRb5gheHeN/G6aRs0/qkDnjjbONdALII/3rSBdgnyCDEinuuFro/+vpeiHfAUdmr1A2gjIyqS7M7W0+00xcGk7fm/UJI28C2+V5bFYZ0ggeMRk4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Goxk28YW; arc=none smtp.client-ip=209.85.214.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f193.google.com with SMTP id d9443c01a7336-2165cb60719so116831585ad.0;
        Mon, 30 Dec 2024 02:03:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1735553010; x=1736157810; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VjpzyyDnSg2qnvK3aocr7ogCaV/w73iZ8OTPqTUfFXI=;
        b=Goxk28YWi1XUslmV4YOMXD7M+hfPVE/Wdc0MSVQ0bk6CCJON3nOEYLJgBJHdgEI9jC
         vthCECETjoSPZmKi9xezEBSvGOXwIGQFRf6ziWRKKqsjBxn3ci7NPpqoNHK1m6SIXxUh
         mBtq17UQMp0oiXq7rw2MRnQqeb0g3EjTeeq8feZmiJ07bZJorszxChF4uhEvwUUSKIkp
         4RATdu54iRCRWzgSKQzBt+KuOqHgZFfSh4OjZYrR8e3K+iImpioHaxrQSGeFIa8PyhTl
         nm+zNSjwXzFta25a5uG0OKvDvO1OxgqE5JAM1SATyoK6t2XHTotEsVJcZybS+G0eACQf
         YXeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735553010; x=1736157810;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VjpzyyDnSg2qnvK3aocr7ogCaV/w73iZ8OTPqTUfFXI=;
        b=ftj2cu1Dtf9s2e+oiihBaIfWjnIoPNKnXBEiH/7UyF2io2aEJdJi8Hj7tOg9/i2KWZ
         T4MMPBTTQSW7dx2m+mXA8nLw3d/fEMreL7wogV+v0PgsZ8mVQqtHPOlqiSLk62kRE/J9
         NlP7D4qYBPXoklaBdYXzq4GH3oQJ+dmjO1a0nGTb7fKNngNP4KgXpbXBmwZLvXtikmHl
         EA48tlJRfQCI7mHl4IE3bU3hXY94MNT3vpGjueXalqyEO6124SdS1NRbvG2/q4sJq/ch
         B/2MO1g9gRwIwz27v12+8j18/3kagy7w+JYnS4y8+Gd/sYYiHkEJY7eZ3fIKgZ076dAu
         3Uyw==
X-Forwarded-Encrypted: i=1; AJvYcCVNcUnShbU/oW6zVRZYIe7h4nVkacO3OSfPBV56tdO2Q8aJ8kX1Z/WOeopbVHaVAgc6MWA39NVG7VnXopUo@vger.kernel.org, AJvYcCW6cUZJYWAv420Mb+Mu69q/uReE06XkaNGiykj+QXpFLRMD5C851TRx+ILyEdLegiS92UkLcsfaloXl@vger.kernel.org
X-Gm-Message-State: AOJu0YwSh0zDu3Ic2wjQd/fmgemwJ9ogyW9b4n8YrSHXQM++DB/UyqZw
	04s9t4bDTfGocyKOZtZdUgeSPZkYcVQRzPSQEEOk/Yx2EaINjrpC
X-Gm-Gg: ASbGnctP/f0jR54nYnZLPBFq0h0O1E2tsYyS+o3aYlcB3FcucozQupH+NzH0i9E/g2K
	XDxE3LUxfOXW5ulab2SbFjMpkR/QbS0gwh7FTbPOpFeA53+xpoBOhUWkyAYXBbsvfNCiPd4Dvv0
	LJl0T7pr0GbLnwpawjG12FoayD6w94S7PQwWSVx90OeGLkm2+QoJQkClhwMGKCAoIQEaSCkzAE0
	PZGIkJsZDtPIk7WtpZ70/4VPbQp4J98KGydHzFGvy9S2xBgWELkUUpGu8QUADmM
X-Google-Smtp-Source: AGHT+IEt6e4HucvzBlHuuMkjls02jjS05kC9Gqjrp5xozzKdwvKnOcBYdrnRFpHbtQEV2OcYtnIa+w==
X-Received: by 2002:a05:6a20:a127:b0:1e1:aa24:2e56 with SMTP id adf61e73a8af0-1e5e07ffd4bmr60461961637.30.1735553009734;
        Mon, 30 Dec 2024 02:03:29 -0800 (PST)
Received: from [127.0.1.1] ([106.114.236.41])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-842aba72f71sm17328587a12.9.2024.12.30.02.03.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Dec 2024 02:03:29 -0800 (PST)
From: Troy Mitchell <troymitchell988@gmail.com>
X-Google-Original-From: Troy Mitchell <TroyMitchell988@gmail.com>
Date: Mon, 30 Dec 2024 18:02:06 +0800
Subject: [PATCH 2/2] mfd: add new driver for P1 PMIC from SpacemiT
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241230-k1-p1-v1-2-aa4e02b9f993@gmail.com>
References: <20241230-k1-p1-v1-0-aa4e02b9f993@gmail.com>
In-Reply-To: <20241230-k1-p1-v1-0-aa4e02b9f993@gmail.com>
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Troy Mitchell <troymitchell988@gmail.com>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Troy Mitchell <TroyMitchell988@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1735552935; l=20096;
 i=TroyMitchell988@gmail.com; h=from:subject:message-id;
 bh=ZfO8/DhT31tH7tz+lxK41Chh1i9Nq/kiwPw3d+UmuUw=;
 b=KBQTI/7crlVhxujHe12fwoagE3ECEsspEIftF3dyrAiHA+P/DEbJWUws1ws+OpV48U2OnZP9Q
 rVapH0e60hwAIJs3i7s6BX25Uw+uhSgq5kbZ9ZI9qAaForXmwkuf41J
X-Developer-Key: i=TroyMitchell988@gmail.com; a=ed25519;
 pk=2spEMGBd/Wkpd36N1aD9KFWOk0aHrhVxZQt+jxLXVC0=

Add the core MFD driver for P1 PMIC. I define four sub-devices
for which the drivers will be added in subsequent patches.

For this patch, It supports `reboot` and `shutdown`.

Signed-off-by: Troy Mitchell <TroyMitchell988@gmail.com>
---
 drivers/mfd/Kconfig                        |  14 +
 drivers/mfd/Makefile                       |   1 +
 drivers/mfd/spacemit-pmic.c                | 159 ++++++++++
 include/linux/mfd/spacemit/spacemit-p1.h   | 491 +++++++++++++++++++++++++++++
 include/linux/mfd/spacemit/spacemit-pmic.h |  39 +++
 5 files changed, 704 insertions(+)

diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
index ae23b317a64e49f0cb529ae6bd1becbb90b7c282..c062bf6b11fd23d420a6d5f6ee51b3ec97f9fcbb 100644
--- a/drivers/mfd/Kconfig
+++ b/drivers/mfd/Kconfig
@@ -1173,6 +1173,20 @@ config MFD_QCOM_RPM
 	  Say M here if you want to include support for the Qualcomm RPM as a
 	  module. This will build a module called "qcom_rpm".
 
+config MFD_SPACEMIT_PMIC
+	tristate "SpacemiT PMIC"
+	depends on ARCH_SPACEMIT || COMPILE_TEST
+	depends on I2C && OF
+	select MFD_CORE
+	select REGMAP_I2C
+	select REGMAP_IRQ
+	help
+	  If this option is turned on, the P1 chip produced by SpacemiT will
+	  be supported.
+
+	  This driver can also be compiled as a module. If you choose to build
+	  it as a module, the resulting kernel module will be named `spacemit-pmic`.
+
 config MFD_SPMI_PMIC
 	tristate "Qualcomm SPMI PMICs"
 	depends on ARCH_QCOM || COMPILE_TEST
diff --git a/drivers/mfd/Makefile b/drivers/mfd/Makefile
index e057d6d6faef5c1d639789e2560f336fa26cd872..284dbb8fe2ef83bdd994a598504fe315f2eabbdf 100644
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
index 0000000000000000000000000000000000000000..d9f6785cecbd405821dead13cdf8d1f9fd64e508
--- /dev/null
+++ b/drivers/mfd/spacemit-pmic.c
@@ -0,0 +1,159 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2024 Troy Mitchell <troymitchell988@gmail.com>
+ */
+
+#include <linux/i2c.h>
+#include <linux/mfd/core.h>
+#include <linux/mfd/spacemit/spacemit-pmic.h>
+#include <linux/module.h>
+#include <linux/of_device.h>
+#include <linux/pm_wakeirq.h>
+#include <linux/reboot.h>
+
+P1_REGMAP_CONFIG;
+P1_IRQS_DESC;
+P1_IRQ_CHIP_DESC;
+P1_POWER_KEY_RESOURCES_DESC;
+P1_RTC_RESOURCES_DESC;
+P1_MFD_CELL;
+P1_MFD_MATCH_DATA;
+
+static int spacemit_pmic_shutdown(struct sys_off_data *data)
+{
+	int ret;
+	struct spacemit_pmic *pmic = data->cb_data;
+
+	ret = regmap_update_bits(pmic->regmap,
+				 pmic->match_data->shutdown.reg,
+				 pmic->match_data->shutdown.bit,
+				 pmic->match_data->shutdown.bit);
+	if (ret)
+		dev_err(data->dev, "failed to reboot device!");
+
+	return NOTIFY_DONE;
+}
+
+static int spacemit_pmic_restart(struct sys_off_data *data)
+{
+	int ret;
+	struct spacemit_pmic *pmic = data->cb_data;
+
+	ret = regmap_update_bits(pmic->regmap,
+				 pmic->match_data->reboot.reg,
+				 pmic->match_data->reboot.bit,
+				 pmic->match_data->reboot.bit);
+	if (ret)
+		dev_err(data->dev, "failed to reboot device!");
+
+	return NOTIFY_DONE;
+}
+
+static int spacemit_pmic_probe(struct i2c_client *client)
+{
+	const struct spacemit_pmic_match_data *match_data;
+	const struct mfd_cell *cells;
+	struct spacemit_pmic *pmic;
+	int nr_cells, ret;
+
+	if (!client->irq)
+		return dev_err_probe(&client->dev, -ENXIO, "no interrupt supported");
+
+	match_data = of_device_get_match_data(&client->dev);
+	if (WARN_ON(!match_data))
+		return -EINVAL;
+
+	pmic = devm_kzalloc(&client->dev, sizeof(*pmic), GFP_KERNEL);
+	if (!pmic)
+		return -ENOMEM;
+
+	cells = match_data->mfd_cells;
+	nr_cells = match_data->nr_cells;
+
+	pmic->regmap_cfg = match_data->regmap_cfg;
+	pmic->regmap_irq_chip = match_data->regmap_irq_chip;
+	pmic->i2c = client;
+	pmic->match_data = match_data;
+	pmic->regmap = devm_regmap_init_i2c(client, pmic->regmap_cfg);
+	if (IS_ERR(pmic->regmap))
+		return dev_err_probe(&client->dev,
+				     PTR_ERR(pmic->regmap),
+				     "regmap initialization failed");
+
+	regcache_cache_bypass(pmic->regmap, true);
+
+	i2c_set_clientdata(client, pmic);
+
+	if (pmic->regmap_irq_chip) {
+		ret = regmap_add_irq_chip(pmic->regmap, client->irq, IRQF_ONESHOT, -1,
+						pmic->regmap_irq_chip, &pmic->irq_data);
+		if (ret)
+			return dev_err_probe(&client->dev, ret, "failed to add irqchip");
+	}
+
+	dev_pm_set_wake_irq(&client->dev, client->irq);
+	device_init_wakeup(&client->dev, true);
+
+	ret = devm_mfd_add_devices(&client->dev, PLATFORM_DEVID_NONE,
+				   cells, nr_cells, NULL, 0,
+				   regmap_irq_get_domain(pmic->irq_data));
+	if (ret)
+		return dev_err_probe(&client->dev, ret, "failed to add MFD devices");
+
+	if (match_data->shutdown.reg) {
+		ret = devm_register_sys_off_handler(&client->dev,
+						    SYS_OFF_MODE_POWER_OFF_PREPARE,
+						    SYS_OFF_PRIO_HIGH,
+						    &spacemit_pmic_shutdown,
+						    pmic);
+		if (ret)
+			return dev_err_probe(&client->dev,
+					     ret,
+					     "failed to register restart handler");
+
+	}
+
+	if (match_data->reboot.reg) {
+		ret = devm_register_sys_off_handler(&client->dev,
+						    SYS_OFF_MODE_RESTART,
+						    SYS_OFF_PRIO_HIGH,
+						    &spacemit_pmic_restart,
+						    pmic);
+		if (ret)
+			return dev_err_probe(&client->dev,
+					     ret,
+					     "failed to register restart handler");
+	}
+
+	return 0;
+}
+
+static const struct of_device_id spacemit_pmic_of_match[] = {
+	{ .compatible = "spacemit,p1", .data = &pmic_p1_match_data },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, spacemit_pmic_of_match);
+
+static struct i2c_driver spacemit_pmic_i2c_driver = {
+	.driver = {
+		.name = "spacemit-pmic",
+		.of_match_table = spacemit_pmic_of_match,
+	},
+	.probe    = spacemit_pmic_probe,
+};
+
+static int __init spacemit_pmic_init(void)
+{
+	return platform_driver_register(&spacemit_pmic_i2c_driver);
+}
+
+static void __exit spacemit_pmic_exit(void)
+{
+	platform_driver_unregister(&spacemit_pmic_i2c_driver);
+}
+
+module_init(spacemit_pmic_init);
+module_exit(spacemit_pmic_exit);
+
+MODULE_LICENSE("GPL");
+MODULE_DESCRIPTION("mfd core driver for the SpacemiT PMIC");
diff --git a/include/linux/mfd/spacemit/spacemit-p1.h b/include/linux/mfd/spacemit/spacemit-p1.h
new file mode 100644
index 0000000000000000000000000000000000000000..6d4d5126b79d6b887d23dea097ec585ecca5e758
--- /dev/null
+++ b/include/linux/mfd/spacemit/spacemit-p1.h
@@ -0,0 +1,491 @@
+/* SPDX-License-Identifier: GPL-2.0-only
+ *
+ * Copyright (C) 2024 Troy Mitchell <troymitchell988@gmail.com>
+ */
+#ifndef __SPACEMIT_P1_H__
+#define __SPACEMIT_P1_H__
+
+enum p1_reg {
+	P1_ID_DCDC1,
+	P1_ID_DCDC2,
+	P1_ID_DCDC3,
+	P1_ID_DCDC4,
+	P1_ID_DCDC5,
+	P1_ID_DCDC6,
+	P1_ID_LDO1,
+	P1_ID_LDO2,
+	P1_ID_LDO3,
+	P1_ID_LDO4,
+	P1_ID_LDO5,
+	P1_ID_LDO6,
+	P1_ID_LDO7,
+	P1_ID_LDO8,
+	P1_ID_LDO9,
+	P1_ID_LDO10,
+	P1_ID_LDO11,
+	P1_ID_SWITCH1,
+};
+
+enum p1_irq_line {
+	/* reg: 0x91 */
+	P1_E_GPI0,
+	P1_E_GPI1,
+	P1_E_GPI2,
+	P1_E_GPI3,
+	P1_E_GPI4,
+	P1_E_GPI5,
+
+	/* reg: 0x92 */
+	P1_E_ADC_TEMP,
+	P1_E_ADC_EOC,
+	P1_E_ADC_EOS,
+	P1_E_WDT_TO,
+	P1_E_ALARM,
+	P1_E_TICK,
+
+	/* reg: 0x93 */
+	P1_E_LDO_OV,
+	P1_E_LDO_UV,
+	P1_E_LDO_SC,
+	P1_E_SW_SC,
+	P1_E_TEMP_WARN,
+	P1_E_TEMP_SEVERE,
+	P1_E_TEMP_CRIT,
+
+	/* reg: 0x94 */
+	P1_E_BUCK1_OV,
+	P1_E_BUCK2_OV,
+	P1_E_BUCK3_OV,
+	P1_E_BUCK4_OV,
+	P1_E_BUCK5_OV,
+	P1_E_BUCK6_OV,
+
+	/* reg: 0x95 */
+	P1_E_BUCK1_UV,
+	P1_E_BUCK2_UV,
+	P1_E_BUCK3_UV,
+	P1_E_BUCK4_UV,
+	P1_E_BUCK5_UV,
+	P1_E_BUCK6_UV,
+
+	/* reg: 0x96 */
+	P1_E_BUCK1_SC,
+	P1_E_BUCK2_SC,
+	P1_E_BUCK3_SC,
+	P1_E_BUCK4_SC,
+	P1_E_BUCK5_SC,
+	P1_E_BUCK6_SC,
+
+	/* reg: 0x97 */
+	P1_E_PWRON_RINTR,
+	P1_E_PWRON_FINTR,
+	P1_E_PWRON_SINTR,
+	P1_E_PWRON_LINTR,
+	P1_E_PWRON_SDINTR,
+	P1_E_VSYS_OV,
+};
+
+#define P1_MAX_REG			0xA8
+
+#define P1_BUCK_VSEL_MASK		0xff
+#define P1_BUCK_EN_MASK			0x1
+
+#define P1_BUCK1_CTRL_REG		0x47
+#define P1_BUCK2_CTRL_REG		0x4a
+#define P1_BUCK3_CTRL_REG		0x4d
+#define P1_BUCK4_CTRL_REG		0x50
+#define P1_BUCK5_CTRL_REG		0x53
+#define P1_BUCK6_CTRL_REG		0x56
+
+#define P1_BUCK1_VSEL_REG		0x48
+#define P1_BUCK2_VSEL_REG		0x4b
+#define P1_BUCK3_VSEL_REG		0x4e
+#define P1_BUCK4_VSEL_REG		0x51
+#define P1_BUCK5_VSEL_REG		0x54
+#define P1_BUCK6_VSEL_REG		0x57
+
+#define P1_ALDO1_CTRL_REG		0x5b
+#define P1_ALDO2_CTRL_REG		0x5e
+#define P1_ALDO3_CTRL_REG		0x61
+#define P1_ALDO4_CTRL_REG		0x64
+
+#define P1_ALDO1_VOLT_REG		0x5c
+#define P1_ALDO2_VOLT_REG		0x5f
+#define P1_ALDO3_VOLT_REG		0x62
+#define P1_ALDO4_VOLT_REG		0x65
+
+#define P1_ALDO_EN_MASK			0x1
+#define P1_ALDO_VSEL_MASK		0x7f
+
+#define P1_DLDO1_CTRL_REG		0x67
+#define P1_DLDO2_CTRL_REG		0x6a
+#define P1_DLDO3_CTRL_REG		0x6d
+#define P1_DLDO4_CTRL_REG		0x70
+#define P1_DLDO5_CTRL_REG		0x73
+#define P1_DLDO6_CTRL_REG		0x76
+#define P1_DLDO7_CTRL_REG		0x79
+
+#define P1_DLDO1_VOLT_REG		0x68
+#define P1_DLDO2_VOLT_REG		0x6b
+#define P1_DLDO3_VOLT_REG		0x6e
+#define P1_DLDO4_VOLT_REG		0x71
+#define P1_DLDO5_VOLT_REG		0x74
+#define P1_DLDO6_VOLT_REG		0x77
+#define P1_DLDO7_VOLT_REG		0x7a
+
+#define P1_DLDO_EN_MASK			0x1
+#define P1_DLDO_VSEL_MASK		0x7f
+
+#define P1_SWITCH_CTRL_REG		0x59
+#define P1_SWTICH_EN_MASK		0x1
+
+#define P1_PWR_CTRL2			0x7e
+#define P1_SW_SHUTDOWN_BIT_MSK		0x4
+#define P1_SW_RESET_BIT_MSK		0x2
+
+#define P1_E_GPI0_MSK			BIT(0)
+#define P1_E_GPI1_MSK			BIT(1)
+#define P1_E_GPI2_MSK			BIT(2)
+#define P1_E_GPI3_MSK			BIT(3)
+#define P1_E_GPI4_MSK			BIT(4)
+#define P1_E_GPI5_MSK			BIT(5)
+
+#define P1_E_ADC_TEMP_MSK		BIT(0)
+#define P1_E_ADC_EOC_MSK		BIT(1)
+#define P1_E_ADC_EOS_MSK		BIT(2)
+#define P1_E_WDT_TO_MSK			BIT(3)
+#define P1_E_ALARM_MSK			BIT(4)
+#define P1_E_TICK_MSK			BIT(5)
+
+#define P1_E_LDO_OV_MSK			BIT(0)
+#define P1_E_LDO_UV_MSK			BIT(1)
+#define P1_E_LDO_SC_MSK			BIT(2)
+#define P1_E_SW_SC_MSK			BIT(3)
+#define P1_E_TEMP_WARN_MSK		BIT(4)
+#define P1_E_TEMP_SEVERE_MSK		BIT(5)
+#define P1_E_TEMP_CRIT_MSK		BIT(6)
+
+#define P1_E_BUCK1_OV_MSK		BIT(0)
+#define P1_E_BUCK2_OV_MSK		BIT(1)
+#define P1_E_BUCK3_OV_MSK		BIT(2)
+#define P1_E_BUCK4_OV_MSK		BIT(3)
+#define P1_E_BUCK5_OV_MSK		BIT(4)
+#define P1_E_BUCK6_OV_MSK		BIT(5)
+
+#define P1_E_BUCK1_UV_MSK		BIT(0)
+#define P1_E_BUCK2_UV_MSK		BIT(1)
+#define P1_E_BUCK3_UV_MSK		BIT(2)
+#define P1_E_BUCK4_UV_MSK		BIT(3)
+#define P1_E_BUCK5_UV_MSK		BIT(4)
+#define P1_E_BUCK6_UV_MSK		BIT(5)
+
+#define P1_E_BUCK1_SC_MSK		BIT(0)
+#define P1_E_BUCK2_SC_MSK		BIT(1)
+#define P1_E_BUCK3_SC_MSK		BIT(2)
+#define P1_E_BUCK4_SC_MSK		BIT(3)
+#define P1_E_BUCK5_SC_MSK		BIT(4)
+#define P1_E_BUCK6_SC_MSK		BIT(5)
+
+#define P1_E_PWRON_RINTR_MSK		BIT(0)
+#define P1_E_PWRON_FINTR_MSK		BIT(1)
+#define P1_E_PWRON_SINTR_MSK		BIT(2)
+#define P1_E_PWRON_LINTR_MSK		BIT(3)
+#define P1_E_PWRON_SDINTR_MSK		BIT(4)
+#define P1_E_VSYS_OV_MSK		BIT(5)
+
+#define P1_E_STATUS_REG_BASE		0x91
+#define P1_E_EN_REG_BASE		0x98
+
+#define P1_REGMAP_CONFIG	\
+	static const struct regmap_config p1_regmap_config = {	\
+		.reg_bits = 8,					\
+		.val_bits = 8,					\
+		.max_register = P1_MAX_REG,			\
+		.cache_type = REGCACHE_RBTREE,			\
+	}
+
+#define P1_IRQS_DESC					\
+static const struct regmap_irq p1_irqs[] = {		\
+	[P1_E_GPI0] = {					\
+		.mask = P1_E_GPI0_MSK,			\
+		.reg_offset = 0,			\
+	},						\
+							\
+	[P1_E_GPI1] = {					\
+		.mask = P1_E_GPI1_MSK,			\
+		.reg_offset = 0,			\
+	},						\
+							\
+	[P1_E_GPI2] = {					\
+		.mask = P1_E_GPI2_MSK,			\
+		.reg_offset = 0,			\
+	},						\
+							\
+	[P1_E_GPI3] = {					\
+		.mask = P1_E_GPI3_MSK,			\
+		.reg_offset = 0,			\
+	},						\
+							\
+	[P1_E_GPI4] = {					\
+		.mask = P1_E_GPI4_MSK,			\
+		.reg_offset = 0,			\
+	},						\
+							\
+	[P1_E_GPI5] = {					\
+		.mask = P1_E_GPI5_MSK,			\
+		.reg_offset = 0,			\
+	},						\
+							\
+	[P1_E_ADC_TEMP] = {				\
+		.mask = P1_E_ADC_TEMP_MSK,		\
+		.reg_offset = 1,			\
+	},						\
+							\
+	[P1_E_ADC_EOC] = {				\
+		.mask = P1_E_ADC_EOC_MSK,		\
+		.reg_offset = 1,			\
+	},						\
+							\
+	[P1_E_ADC_EOS] = {				\
+		.mask = P1_E_ADC_EOS_MSK,		\
+		.reg_offset = 1,			\
+	},						\
+							\
+	[P1_E_WDT_TO] = {				\
+		.mask = P1_E_WDT_TO_MSK,		\
+		.reg_offset = 1,			\
+	},						\
+							\
+	[P1_E_ALARM] = {				\
+		.mask = P1_E_ALARM_MSK,			\
+		.reg_offset = 1,			\
+	},						\
+							\
+	[P1_E_TICK] = {					\
+		.mask = P1_E_TICK_MSK,			\
+		.reg_offset = 1,			\
+	},						\
+							\
+	[P1_E_LDO_OV] = {				\
+		.mask = P1_E_LDO_OV_MSK,		\
+		.reg_offset = 2,			\
+	},						\
+							\
+	[P1_E_LDO_UV] = {				\
+		.mask = P1_E_LDO_UV_MSK,		\
+		.reg_offset = 2,			\
+	},						\
+							\
+	[P1_E_LDO_SC] = {				\
+		.mask = P1_E_LDO_SC_MSK,		\
+		.reg_offset = 2,			\
+	},						\
+							\
+	[P1_E_SW_SC] = {				\
+		.mask = P1_E_SW_SC_MSK,			\
+		.reg_offset = 2,			\
+	},						\
+							\
+	[P1_E_TEMP_WARN] = {				\
+		.mask = P1_E_TEMP_WARN_MSK,		\
+		.reg_offset = 2,			\
+	},						\
+							\
+	[P1_E_TEMP_SEVERE] = {				\
+		.mask = P1_E_TEMP_SEVERE_MSK,		\
+		.reg_offset = 2,			\
+	},						\
+							\
+	[P1_E_TEMP_CRIT] = {				\
+		.mask = P1_E_TEMP_CRIT_MSK,		\
+		.reg_offset = 2,			\
+	},						\
+							\
+	[P1_E_BUCK1_OV] = {				\
+		.mask = P1_E_BUCK1_OV_MSK,		\
+		.reg_offset = 3,			\
+	},						\
+							\
+	[P1_E_BUCK2_OV] = {				\
+		.mask = P1_E_BUCK2_OV_MSK,		\
+		.reg_offset = 3,			\
+	},						\
+							\
+	[P1_E_BUCK3_OV] = {				\
+		.mask = P1_E_BUCK3_OV_MSK,		\
+		.reg_offset = 3,			\
+	},						\
+							\
+	[P1_E_BUCK4_OV] = {				\
+		.mask = P1_E_BUCK4_OV_MSK,		\
+		.reg_offset = 3,			\
+	},						\
+							\
+	[P1_E_BUCK5_OV] = {				\
+		.mask = P1_E_BUCK5_OV_MSK,		\
+		.reg_offset = 3,			\
+	},						\
+							\
+	[P1_E_BUCK6_OV] = {				\
+		.mask = P1_E_BUCK6_OV_MSK,		\
+		.reg_offset = 3,			\
+	},						\
+							\
+	[P1_E_BUCK1_UV] = {				\
+		.mask = P1_E_BUCK1_UV_MSK,		\
+		.reg_offset = 4,			\
+	},						\
+							\
+	[P1_E_BUCK2_UV] = {				\
+		.mask = P1_E_BUCK2_UV_MSK,		\
+		.reg_offset = 4,			\
+	},						\
+							\
+	[P1_E_BUCK3_UV] = {				\
+		.mask = P1_E_BUCK3_UV_MSK,		\
+		.reg_offset = 4,			\
+	},						\
+							\
+	[P1_E_BUCK4_UV] = {				\
+		.mask = P1_E_BUCK4_UV_MSK,		\
+		.reg_offset = 4,			\
+	},						\
+							\
+	[P1_E_BUCK5_UV] = {				\
+		.mask = P1_E_BUCK5_UV_MSK,		\
+		.reg_offset = 4,			\
+	},						\
+							\
+	[P1_E_BUCK6_UV] = {				\
+		.mask = P1_E_BUCK6_UV_MSK,		\
+		.reg_offset = 4,			\
+	},						\
+							\
+	[P1_E_BUCK1_SC] = {				\
+		.mask = P1_E_BUCK1_SC_MSK,		\
+		.reg_offset = 5,			\
+	},						\
+							\
+	[P1_E_BUCK2_SC] = {				\
+		.mask = P1_E_BUCK2_SC_MSK,		\
+		.reg_offset = 5,			\
+	},						\
+							\
+	[P1_E_BUCK3_SC] = {				\
+		.mask = P1_E_BUCK3_SC_MSK,		\
+		.reg_offset = 5,			\
+	},						\
+							\
+	[P1_E_BUCK4_SC] = {				\
+		.mask = P1_E_BUCK4_SC_MSK,		\
+		.reg_offset = 5,			\
+	},						\
+							\
+	[P1_E_BUCK5_SC] = {				\
+		.mask = P1_E_BUCK5_SC_MSK,		\
+		.reg_offset = 5,			\
+	},						\
+							\
+	[P1_E_BUCK6_SC] = {				\
+		.mask = P1_E_BUCK6_SC_MSK,		\
+		.reg_offset = 5,			\
+	},						\
+							\
+	[P1_E_PWRON_RINTR] = {				\
+		.mask = P1_E_PWRON_RINTR_MSK,		\
+		.reg_offset = 6,			\
+	},						\
+							\
+	[P1_E_PWRON_FINTR] = {				\
+		.mask = P1_E_PWRON_FINTR_MSK,		\
+		.reg_offset = 6,			\
+	},						\
+							\
+	[P1_E_PWRON_SINTR] = {				\
+		.mask = P1_E_PWRON_SINTR_MSK,		\
+		.reg_offset = 6,			\
+	},						\
+							\
+	[P1_E_PWRON_LINTR] = {				\
+		.mask = P1_E_PWRON_LINTR_MSK,		\
+		.reg_offset = 6,			\
+	},						\
+							\
+	[P1_E_PWRON_SDINTR] = {				\
+		.mask = P1_E_PWRON_SDINTR_MSK,		\
+		.reg_offset = 6,			\
+	},						\
+							\
+	[P1_E_VSYS_OV] = {				\
+		.mask = P1_E_VSYS_OV_MSK,		\
+		.reg_offset = 6,			\
+	},						\
+}
+
+#define P1_IRQ_CHIP_DESC				\
+static const struct regmap_irq_chip p1_irq_chip = {	\
+	.name			= "p1",			\
+	.irqs			= p1_irqs,		\
+	.num_irqs		= ARRAY_SIZE(p1_irqs),	\
+	.num_regs		= 7,			\
+	.status_base		= P1_E_STATUS_REG_BASE,	\
+	.mask_base		= P1_E_EN_REG_BASE,	\
+	.ack_base		= P1_E_STATUS_REG_BASE,	\
+	.init_ack_masked	= true,			\
+}
+
+#define P1_POWER_KEY_RESOURCES_DESC			\
+static const struct resource p1_pwrkey_resources[] = {	\
+	DEFINE_RES_IRQ(P1_E_PWRON_RINTR),		\
+	DEFINE_RES_IRQ(P1_E_PWRON_FINTR),		\
+	DEFINE_RES_IRQ(P1_E_PWRON_SINTR),		\
+	DEFINE_RES_IRQ(P1_E_PWRON_LINTR),		\
+}
+
+#define P1_RTC_RESOURCES_DESC				\
+static const struct resource p1_rtc_resources[] = {	\
+	DEFINE_RES_IRQ(P1_E_ALARM),			\
+}
+
+#define P1_MFD_CELL	\
+	static const struct mfd_cell p1[] = {					\
+		{								\
+			.name = "spacemit-regulator@p1",			\
+			.of_compatible = "pmic,p1-regulator",			\
+		},								\
+		{								\
+			.name = "spacemit-pinctrl@p1",				\
+			.of_compatible = "pmic,p1-pinctrl",			\
+		},								\
+		{								\
+			.name = "spacemit-pwrkey@p1",				\
+			.of_compatible = "pmic,p1-pwrkey",			\
+			.num_resources = ARRAY_SIZE(p1_pwrkey_resources),	\
+			.resources = &p1_pwrkey_resources[0],			\
+		},								\
+		{								\
+			.name = "spacemit-rtc@p1",				\
+			.of_compatible = "pmic,p1-rtc",				\
+			.num_resources = ARRAY_SIZE(p1_rtc_resources),		\
+			.resources = &p1_rtc_resources[0],			\
+		},								\
+	}
+
+#define P1_MFD_MATCH_DATA							\
+static struct spacemit_pmic_match_data pmic_p1_match_data = {			\
+	.regmap_cfg = &p1_regmap_config,					\
+	.regmap_irq_chip = &p1_irq_chip,					\
+	.mfd_cells = p1,							\
+	.nr_cells = ARRAY_SIZE(p1),						\
+	.name = "p1",								\
+	.shutdown = {								\
+		.reg = P1_PWR_CTRL2,						\
+		.bit = P1_SW_SHUTDOWN_BIT_MSK,					\
+	},									\
+	.reboot = {								\
+		.reg = P1_PWR_CTRL2,						\
+		.bit = P1_SW_RESET_BIT_MSK,					\
+	},									\
+}
+
+#endif // __SPACEMIT_P1_H__
diff --git a/include/linux/mfd/spacemit/spacemit-pmic.h b/include/linux/mfd/spacemit/spacemit-pmic.h
new file mode 100644
index 0000000000000000000000000000000000000000..808bbf1883c4ba019e552ffca94a10e46036ad3a
--- /dev/null
+++ b/include/linux/mfd/spacemit/spacemit-pmic.h
@@ -0,0 +1,39 @@
+/* SPDX-License-Identifier: GPL-2.0-only
+ *
+ * Copyright (C) 2024 Troy Mitchell <troymitchell988@gmail.com>
+ */
+#ifndef __SPACEMIT_PMIC_H__
+#define __SPACEMIT_PMIC_H__
+
+#include <linux/regulator/machine.h>
+#include <linux/regmap.h>
+#include <linux/mfd/spacemit/spacemit-p1.h>
+
+struct spacemit_pmic_match_data {
+	const struct regmap_config *regmap_cfg;
+	const struct regmap_irq_chip *regmap_irq_chip;
+	const struct mfd_cell *mfd_cells;
+	int nr_cells;
+	const char *name;
+
+	struct {
+		unsigned char reg;
+		unsigned char bit;
+	} shutdown;
+
+	struct {
+		unsigned int reg;
+		unsigned char bit;
+	} reboot;
+};
+
+struct spacemit_pmic {
+	struct i2c_client		*i2c;
+	struct regmap_irq_chip_data	*irq_data;
+	struct regmap			*regmap;
+	const struct regmap_config	*regmap_cfg;
+	const struct regmap_irq_chip	*regmap_irq_chip;
+	const struct spacemit_pmic_match_data *match_data;
+};
+
+#endif // __SPACEMIT_PMIC_H__

-- 
2.34.1


