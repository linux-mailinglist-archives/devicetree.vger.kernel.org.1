Return-Path: <devicetree+bounces-165016-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BE280A83243
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 22:39:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E73B43A9D32
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 20:38:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0EE4321A45C;
	Wed,  9 Apr 2025 20:37:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="w/KR0E7k"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5214521423C
	for <devicetree@vger.kernel.org>; Wed,  9 Apr 2025 20:37:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744231063; cv=none; b=ZJEIU0CWDwbuJQ0biW6B8ezKdXkWN/bvZNmF0lSQZW0W83mMEXO+vSPpO0mRtAPkAoV8kBycC1QLj+510VMl6Yfn6LFF0nDuLFRchr1Gub9kyEhnZrO060oquvLN+18c6EdPbbw3C6eOxcNzTMD2DgxMNKbsh0DlYuyPqTv4rCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744231063; c=relaxed/simple;
	bh=z7ry2zIoxYe73wVH8x9B4bbUYeTgJ3CU8GZMcXBd9o0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=NLg7AdnYrUABONwl0UHbTkUpvml7K2DIJg9IR59WlfcenRCyN7xLe9rKbypKX+Z/9Uy5aXnahVcRJOzE9pTDZ2ukx6BaSlXRt7snHYek1nqvLuTFOKD7Ag9D+xBAo6KeH3MwGlVWMjB0Uh/nKIbF64HhY+rNb2OypVWhXM3a0ks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=w/KR0E7k; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-ac29af3382dso17661266b.2
        for <devicetree@vger.kernel.org>; Wed, 09 Apr 2025 13:37:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744231054; x=1744835854; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gNjyVl4GP/xxJFeVnB7zKfTyyS0OQthZfMcvsKGMHuY=;
        b=w/KR0E7kVedVs0+WBLUF7Gx62z3I6of8ndyUr+KVM8oAKrOEgdSPLFid8NwVmoy12g
         RqScSRjp87zK3KuVub09sI+kjZaTFScZuNc5Ft32BMI7XJ9pH404NA5Y6H9kZe8CNU0N
         WnxzpJvtaVkkofcIohPVacrDC9ZodYT5DJ/bOnkia3jv1SHlkbENxjB7QADu1asisE7W
         GorL5hcZBPaPeHkbBppiA+HyN141N85RIWGS/waf4Mwu2nCi6LaxycdApmFzaagEYs7B
         JbqoEdb/3xWlI69DrbYsvKAOL2hXU4YMLftun+FQqy2AC5huE0neNCdPyWkWTFRKGVJI
         kDsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744231054; x=1744835854;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gNjyVl4GP/xxJFeVnB7zKfTyyS0OQthZfMcvsKGMHuY=;
        b=cjPAXi05DcXOKB9O4Ht+FuuCIWPP3kF80IF/V060J7tWIbtpqhzeB9iy9khRnMbZPR
         FTX0Vywwc/jrgkI57SdVnZsiQqIRyNEusY6Og5SMnO24EFd3aJ5wBPaQaJBrGdFB9ftN
         2/t8IJbigVThICosk4cO4n5OKFtIYW2bPKWUe5ODiOhscEULDhuWPVaYU0xverJno87C
         XWOHf90CZhL9/By2wX+CfweTkFe3qOUvfJqfPgOaiOR2epD/1lgRgTSS2phZ3e44tuUY
         bcz+ez1jRik3j+okJ6f0lbblfrOQCOOzwvuZitEQg5pLYECdK3YH1UuizuCzLCZ46I3T
         OfWg==
X-Forwarded-Encrypted: i=1; AJvYcCUH0QhktpBZUj85PtN6QW4xcwHsihSRX3BFPsvFQZlqbmFvcflszKfiTbdCFqKt6z9ZNW3VpQeJzXSz@vger.kernel.org
X-Gm-Message-State: AOJu0Yx6OwSwEnGI56VxjcslpiQO4vHO0d0LDRiTjs3jbkjalVKhsflf
	yoMgkLXdsDB0GzbBAYmRxGnum0PaFrtxP7oGxYDEeS1T8wOAy421VVtdmczQyKw=
X-Gm-Gg: ASbGncvoBtZBKpjmN41kldKBS/mrQLdua1gEMD9GmZGmjLT7ICkmlw5JEX8zg1mqwJn
	h10MczaF7MYY/jrNoYf0iRsK+HRrX33l5lm9o3UuEjSz5332ciYheaeX46QhHk1JSCeK44w8Gn+
	Dy+i9mMviu745PsCaNlBMLb9e+LQSn/ageZVeldHPyky9rnnNK49y58P2xQqw9VlJakhKtgLIaY
	kAqf8KYj20tzBbxZK8yA3BfcQOl4kKrQeYya7GwW1DiQQHw1Umpzdsm7/xpZrik2+MmptbIgBdO
	hVbUFzAld0fsdOnqLfvGwO6F/CQWcTKvW9uCZnw36YJuGcHQksZSFM/pn7L4nNXeXl9gSsH9zyb
	XFs+BtQhz0ORX0VvLC3pDPVfSEIE=
X-Google-Smtp-Source: AGHT+IF9tkuWE6fcW1tIn288LBcHEQPjAp7Wp2k1VGFg/9+RHCZBIbU7um8koVya4t0rmCpzc7ugjA==
X-Received: by 2002:a17:906:478b:b0:ac8:16fb:a291 with SMTP id a640c23a62f3a-acabd19590dmr10851866b.18.1744231054150;
        Wed, 09 Apr 2025 13:37:34 -0700 (PDT)
Received: from puffmais.c.googlers.com (40.162.204.35.bc.googleusercontent.com. [35.204.162.40])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acaa1ccc001sm145850366b.126.2025.04.09.13.37.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Apr 2025 13:37:33 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Wed, 09 Apr 2025 21:37:30 +0100
Subject: [PATCH v4 09/32] mfd: sec: Add support for S2MPG10 PMIC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250409-s2mpg10-v4-9-d66d5f39b6bf@linaro.org>
References: <20250409-s2mpg10-v4-0-d66d5f39b6bf@linaro.org>
In-Reply-To: <20250409-s2mpg10-v4-0-d66d5f39b6bf@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Russell King <linux@armlinux.org.uk>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-clk@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2

Add support for Samsung's S2MPG10 PMIC, which is a Power Management IC
for mobile applications with buck converters, various LDOs, power
meters, RTC, clock outputs, and additional GPIOs interfaces.

Contrary to existing Samsung S2M series PMICs supported, communication
is not via I2C, but via the Samsung ACPM firmware.

This commit adds the core driver.

Signed-off-by: André Draszik <andre.draszik@linaro.org>

---
Checkpatch suggests to update MAINTAINERS, but the new file is covered
already due to using a wildcard.

v4:
- Lee:
  - consistently start comments with upper case
  - use up to 100 chars wide lines throughout
  - add more comments to regmap ranges
  - introduce ACPM_ADDR_BITS and use where appropriate (regmap config,
    sec_pmic_acpm_bus_write(), sec_pmic_acpm_bus_read()
  - use dev_err_cast_probe() & dev_err_ptr_probe()

v3:
* use an enum for struct sec_acpm_bus_context::type
* consistent name space for all functions sec_pmic_acpm_... to be
  similar to i2c and consistent in this file

v2:
* update to using devm_acpm_get_by_node() instead of
  devm_acpm_get_by_phandle() as this is now expected to be a child of
  the ACPM node
* use c-type file header
* updates to error messages
* drop s2mpg10_rtc_wr_table as everything in RTC is writeable
* rename s2mpg10_volatile_registers -> s2mpg10_rtc_volatile_registers
* fix incorrect regmap range in common block
* add comments to regmap ranges
* add all registers to header for all IP blocks
---
 drivers/mfd/Kconfig                 |  17 ++
 drivers/mfd/Makefile                |   1 +
 drivers/mfd/sec-acpm.c              | 442 +++++++++++++++++++++++++++++++++++
 drivers/mfd/sec-core.c              |  16 ++
 drivers/mfd/sec-irq.c               |  68 ++++++
 include/linux/mfd/samsung/core.h    |   1 +
 include/linux/mfd/samsung/irq.h     | 103 ++++++++
 include/linux/mfd/samsung/rtc.h     |  37 +++
 include/linux/mfd/samsung/s2mpg10.h | 454 ++++++++++++++++++++++++++++++++++++
 9 files changed, 1139 insertions(+)

diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
index 62565dc89ec6d58611bbc1f31c65f757343b6453..e146b28240e731557f34ebe6dea99016b6d19f6b 100644
--- a/drivers/mfd/Kconfig
+++ b/drivers/mfd/Kconfig
@@ -1296,6 +1296,23 @@ config MFD_SEC_CORE
 	select MFD_CORE
 	select REGMAP_IRQ
 
+config MFD_SEC_ACPM
+	tristate "Samsung Electronics S2MPG1x PMICs"
+	depends on EXYNOS_ACPM_PROTOCOL
+	depends on OF
+	select MFD_SEC_CORE
+	help
+	  Support for the Samsung Electronics PMICs with ACPM interface.
+	  This is a Power Management IC for mobile applications with buck
+	  converters, various LDOs, power meters, RTC, clock outputs, and
+	  additional GPIOs interfaces.
+	  This driver provides common support for accessing the device;
+	  additional drivers must be enabled in order to use the functionality
+	  of the device.
+
+	  To compile this driver as a module, choose M here: the module will be
+	  called sec-acpm.
+
 config MFD_SEC_I2C
 	tristate "Samsung Electronics S2MPA/S2MPS1X/S2MPU/S5M series PMICs"
 	depends on I2C=y
diff --git a/drivers/mfd/Makefile b/drivers/mfd/Makefile
index ab6c4b17a391946d4c88f52ccbfee5424b4fb2d2..b617782eca436e34084a9cd24c309801c5680390 100644
--- a/drivers/mfd/Makefile
+++ b/drivers/mfd/Makefile
@@ -229,6 +229,7 @@ obj-$(CONFIG_MFD_RK8XX_I2C)	+= rk8xx-i2c.o
 obj-$(CONFIG_MFD_RK8XX_SPI)	+= rk8xx-spi.o
 obj-$(CONFIG_MFD_RN5T618)	+= rn5t618.o
 obj-$(CONFIG_MFD_SEC_CORE)	+= sec-core.o sec-irq.o
+obj-$(CONFIG_MFD_SEC_ACPM)	+= sec-acpm.o
 obj-$(CONFIG_MFD_SEC_I2C)	+= sec-i2c.o
 obj-$(CONFIG_MFD_SYSCON)	+= syscon.o
 obj-$(CONFIG_MFD_LM3533)	+= lm3533-core.o lm3533-ctrlbank.o
diff --git a/drivers/mfd/sec-acpm.c b/drivers/mfd/sec-acpm.c
new file mode 100644
index 0000000000000000000000000000000000000000..8b31c816d65b86c54a108fa994384abfac0e7da4
--- /dev/null
+++ b/drivers/mfd/sec-acpm.c
@@ -0,0 +1,442 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright 2020 Google Inc
+ * Copyright 2025 Linaro Ltd.
+ *
+ * Samsung S2MPG1x ACPM driver
+ */
+
+#include <linux/array_size.h>
+#include <linux/bitops.h>
+#include <linux/device.h>
+#include <linux/firmware/samsung/exynos-acpm-protocol.h>
+#include <linux/mfd/samsung/core.h>
+#include <linux/mfd/samsung/rtc.h>
+#include <linux/mfd/samsung/s2mpg10.h>
+#include <linux/mod_devicetable.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/platform_device.h>
+#include <linux/pm.h>
+#include <linux/property.h>
+#include <linux/regmap.h>
+#include "sec-core.h"
+
+#define ACPM_ADDR_BITS       8
+#define ACPM_MAX_BULK_DATA   8
+
+struct sec_pmic_acpm_platform_data {
+	int device_type;
+
+	unsigned int acpm_chan_id;
+	u8 speedy_channel;
+
+	const struct regmap_config *regmap_cfg_common;
+	const struct regmap_config *regmap_cfg_pmic;
+	const struct regmap_config *regmap_cfg_rtc;
+	const struct regmap_config *regmap_cfg_meter;
+};
+
+static const struct regmap_range s2mpg10_common_registers[] = {
+	regmap_reg_range(0x00, 0x02), /* CHIP_ID_M, INT, INT_MASK */
+	regmap_reg_range(0x0a, 0x0c), /* Speedy control */
+	regmap_reg_range(0x1a, 0x2a), /* Debug */
+};
+
+static const struct regmap_range s2mpg10_common_ro_registers[] = {
+	regmap_reg_range(0x00, 0x01), /* CHIP_ID_M, INT */
+	regmap_reg_range(0x28, 0x2a), /* Debug */
+};
+
+static const struct regmap_range s2mpg10_common_nonvolatile_registers[] = {
+	regmap_reg_range(0x00, 0x00), /* CHIP_ID_M */
+	regmap_reg_range(0x02, 0x02), /* INT_MASK */
+	regmap_reg_range(0x0a, 0x0c), /* Speedy control */
+};
+
+static const struct regmap_range s2mpg10_common_precious_registers[] = {
+	regmap_reg_range(0x01, 0x01), /* INT */
+};
+
+static const struct regmap_access_table s2mpg10_common_wr_table = {
+	.yes_ranges = s2mpg10_common_registers,
+	.n_yes_ranges = ARRAY_SIZE(s2mpg10_common_registers),
+	.no_ranges = s2mpg10_common_ro_registers,
+	.n_no_ranges = ARRAY_SIZE(s2mpg10_common_ro_registers),
+};
+
+static const struct regmap_access_table s2mpg10_common_rd_table = {
+	.yes_ranges = s2mpg10_common_registers,
+	.n_yes_ranges = ARRAY_SIZE(s2mpg10_common_registers),
+};
+
+static const struct regmap_access_table s2mpg10_common_volatile_table = {
+	.no_ranges = s2mpg10_common_nonvolatile_registers,
+	.n_no_ranges = ARRAY_SIZE(s2mpg10_common_nonvolatile_registers),
+};
+
+static const struct regmap_access_table s2mpg10_common_precious_table = {
+	.yes_ranges = s2mpg10_common_precious_registers,
+	.n_yes_ranges = ARRAY_SIZE(s2mpg10_common_precious_registers),
+};
+
+static const struct regmap_config s2mpg10_regmap_config_common = {
+	.name = "common",
+	.reg_bits = ACPM_ADDR_BITS,
+	.val_bits = 8,
+	.max_register = S2MPG10_COMMON_SPD_DEBUG4,
+	.wr_table = &s2mpg10_common_wr_table,
+	.rd_table = &s2mpg10_common_rd_table,
+	.volatile_table = &s2mpg10_common_volatile_table,
+	.precious_table = &s2mpg10_common_precious_table,
+	.num_reg_defaults_raw = S2MPG10_COMMON_SPD_DEBUG4 + 1,
+	.cache_type = REGCACHE_FLAT,
+};
+
+static const struct regmap_range s2mpg10_pmic_registers[] = {
+	regmap_reg_range(0x00, 0xf6), /* All PMIC registers */
+};
+
+static const struct regmap_range s2mpg10_pmic_ro_registers[] = {
+	regmap_reg_range(0x00, 0x05), /* INTx */
+	regmap_reg_range(0x0c, 0x0f), /* STATUSx PWRONSRC OFFSRC */
+	regmap_reg_range(0xc7, 0xc7), /* GPIO input */
+};
+
+static const struct regmap_range s2mpg10_pmic_nonvolatile_registers[] = {
+	regmap_reg_range(0x06, 0x0b), /* INTxM */
+};
+
+static const struct regmap_range s2mpg10_pmic_precious_registers[] = {
+	regmap_reg_range(0x00, 0x05), /* INTx */
+};
+
+static const struct regmap_access_table s2mpg10_pmic_wr_table = {
+	.yes_ranges = s2mpg10_pmic_registers,
+	.n_yes_ranges = ARRAY_SIZE(s2mpg10_pmic_registers),
+	.no_ranges = s2mpg10_pmic_ro_registers,
+	.n_no_ranges = ARRAY_SIZE(s2mpg10_pmic_ro_registers),
+};
+
+static const struct regmap_access_table s2mpg10_pmic_rd_table = {
+	.yes_ranges = s2mpg10_pmic_registers,
+	.n_yes_ranges = ARRAY_SIZE(s2mpg10_pmic_registers),
+};
+
+static const struct regmap_access_table s2mpg10_pmic_volatile_table = {
+	.no_ranges = s2mpg10_pmic_nonvolatile_registers,
+	.n_no_ranges = ARRAY_SIZE(s2mpg10_pmic_nonvolatile_registers),
+};
+
+static const struct regmap_access_table s2mpg10_pmic_precious_table = {
+	.yes_ranges = s2mpg10_pmic_precious_registers,
+	.n_yes_ranges = ARRAY_SIZE(s2mpg10_pmic_precious_registers),
+};
+
+static const struct regmap_config s2mpg10_regmap_config_pmic = {
+	.name = "pmic",
+	.reg_bits = ACPM_ADDR_BITS,
+	.val_bits = 8,
+	.max_register = S2MPG10_PMIC_LDO_SENSE4,
+	.wr_table = &s2mpg10_pmic_wr_table,
+	.rd_table = &s2mpg10_pmic_rd_table,
+	.volatile_table = &s2mpg10_pmic_volatile_table,
+	.precious_table = &s2mpg10_pmic_precious_table,
+	.num_reg_defaults_raw = S2MPG10_PMIC_LDO_SENSE4 + 1,
+	.cache_type = REGCACHE_FLAT,
+};
+
+static const struct regmap_range s2mpg10_rtc_registers[] = {
+	regmap_reg_range(0x00, 0x2b), /* All RTC registers */
+};
+
+static const struct regmap_range s2mpg10_rtc_volatile_registers[] = {
+	regmap_reg_range(0x01, 0x01), /* RTC_UPDATE */
+	regmap_reg_range(0x05, 0x0c), /* Time / date */
+};
+
+static const struct regmap_access_table s2mpg10_rtc_rd_table = {
+	.yes_ranges = s2mpg10_rtc_registers,
+	.n_yes_ranges = ARRAY_SIZE(s2mpg10_rtc_registers),
+};
+
+static const struct regmap_access_table s2mpg10_rtc_volatile_table = {
+	.yes_ranges = s2mpg10_rtc_volatile_registers,
+	.n_yes_ranges = ARRAY_SIZE(s2mpg10_rtc_volatile_registers),
+};
+
+static const struct regmap_config s2mpg10_regmap_config_rtc = {
+	.name = "rtc",
+	.reg_bits = ACPM_ADDR_BITS,
+	.val_bits = 8,
+	.max_register = S2MPG10_RTC_OSC_CTRL,
+	.rd_table = &s2mpg10_rtc_rd_table,
+	.volatile_table = &s2mpg10_rtc_volatile_table,
+	.num_reg_defaults_raw = S2MPG10_RTC_OSC_CTRL + 1,
+	.cache_type = REGCACHE_FLAT,
+};
+
+static const struct regmap_range s2mpg10_meter_registers[] = {
+	regmap_reg_range(0x00, 0x21), /* Meter config */
+	regmap_reg_range(0x40, 0x8a), /* Meter data */
+	regmap_reg_range(0xee, 0xee), /* Offset */
+	regmap_reg_range(0xf1, 0xf1), /* Trim */
+};
+
+static const struct regmap_range s2mpg10_meter_ro_registers[] = {
+	regmap_reg_range(0x40, 0x8a), /* Meter data */
+};
+
+static const struct regmap_access_table s2mpg10_meter_wr_table = {
+	.yes_ranges = s2mpg10_meter_registers,
+	.n_yes_ranges = ARRAY_SIZE(s2mpg10_meter_registers),
+	.no_ranges = s2mpg10_meter_ro_registers,
+	.n_no_ranges = ARRAY_SIZE(s2mpg10_meter_ro_registers),
+};
+
+static const struct regmap_access_table s2mpg10_meter_rd_table = {
+	.yes_ranges = s2mpg10_meter_registers,
+	.n_yes_ranges = ARRAY_SIZE(s2mpg10_meter_registers),
+};
+
+static const struct regmap_access_table s2mpg10_meter_volatile_table = {
+	.yes_ranges = s2mpg10_meter_ro_registers,
+	.n_yes_ranges = ARRAY_SIZE(s2mpg10_meter_ro_registers),
+};
+
+static const struct regmap_config s2mpg10_regmap_config_meter = {
+	.name = "meter",
+	.reg_bits = ACPM_ADDR_BITS,
+	.val_bits = 8,
+	.max_register = S2MPG10_METER_BUCK_METER_TRIM3,
+	.wr_table = &s2mpg10_meter_wr_table,
+	.rd_table = &s2mpg10_meter_rd_table,
+	.volatile_table = &s2mpg10_meter_volatile_table,
+	.num_reg_defaults_raw = S2MPG10_METER_BUCK_METER_TRIM3 + 1,
+	.cache_type = REGCACHE_FLAT,
+};
+
+struct sec_pmic_acpm_shared_bus_context {
+	const struct acpm_handle *acpm;
+	unsigned int acpm_chan_id;
+	u8 speedy_channel;
+};
+
+enum sec_pmic_acpm_accesstype {
+	SEC_PMIC_ACPM_ACCESSTYPE_COMMON = 0x00,
+	SEC_PMIC_ACPM_ACCESSTYPE_PMIC = 0x01,
+	SEC_PMIC_ACPM_ACCESSTYPE_RTC = 0x02,
+	SEC_PMIC_ACPM_ACCESSTYPE_METER = 0x0a,
+	SEC_PMIC_ACPM_ACCESSTYPE_WLWP = 0x0b,
+	SEC_PMIC_ACPM_ACCESSTYPE_TRIM = 0x0f,
+};
+
+struct sec_pmic_acpm_bus_context {
+	struct sec_pmic_acpm_shared_bus_context *shared;
+	enum sec_pmic_acpm_accesstype type;
+};
+
+static int sec_pmic_acpm_bus_write(void *context, const void *data,
+				   size_t count)
+{
+	struct sec_pmic_acpm_bus_context *ctx = context;
+	const struct acpm_handle *acpm = ctx->shared->acpm;
+	const struct acpm_pmic_ops *pmic_ops = &acpm->ops.pmic_ops;
+	size_t val_count = count - BITS_TO_BYTES(ACPM_ADDR_BITS);
+	const u8 *d = data;
+	const u8 *vals = &d[BITS_TO_BYTES(ACPM_ADDR_BITS)];
+	u8 reg;
+
+	if (val_count < 1 || val_count > ACPM_MAX_BULK_DATA)
+		return -EINVAL;
+
+	reg = d[0];
+
+	return pmic_ops->bulk_write(acpm, ctx->shared->acpm_chan_id, ctx->type, reg,
+				    ctx->shared->speedy_channel, val_count, vals);
+}
+
+static int sec_pmic_acpm_bus_read(void *context, const void *reg_buf, size_t reg_size,
+				  void *val_buf, size_t val_size)
+{
+	struct sec_pmic_acpm_bus_context *ctx = context;
+	const struct acpm_handle *acpm = ctx->shared->acpm;
+	const struct acpm_pmic_ops *pmic_ops = &acpm->ops.pmic_ops;
+	const u8 *r = reg_buf;
+	u8 reg;
+
+	if (reg_size != BITS_TO_BYTES(ACPM_ADDR_BITS) || !val_size ||
+	    val_size > ACPM_MAX_BULK_DATA)
+		return -EINVAL;
+
+	reg = r[0];
+
+	return pmic_ops->bulk_read(acpm, ctx->shared->acpm_chan_id, ctx->type, reg,
+				   ctx->shared->speedy_channel, val_size, val_buf);
+}
+
+static int sec_pmic_acpm_bus_reg_update_bits(void *context, unsigned int reg, unsigned int mask,
+					     unsigned int val)
+{
+	struct sec_pmic_acpm_bus_context *ctx = context;
+	const struct acpm_handle *acpm = ctx->shared->acpm;
+	const struct acpm_pmic_ops *pmic_ops = &acpm->ops.pmic_ops;
+
+	return pmic_ops->update_reg(acpm, ctx->shared->acpm_chan_id, ctx->type, reg & 0xff,
+				    ctx->shared->speedy_channel, val, mask);
+}
+
+static const struct regmap_bus sec_pmic_acpm_regmap_bus = {
+	.write = sec_pmic_acpm_bus_write,
+	.read = sec_pmic_acpm_bus_read,
+	.reg_update_bits = sec_pmic_acpm_bus_reg_update_bits,
+	.max_raw_read = ACPM_MAX_BULK_DATA,
+	.max_raw_write = ACPM_MAX_BULK_DATA,
+};
+
+static struct regmap *sec_pmic_acpm_regmap_init(struct device *dev,
+						struct sec_pmic_acpm_shared_bus_context *shared_ctx,
+						enum sec_pmic_acpm_accesstype type,
+						const struct regmap_config *cfg, bool do_attach)
+{
+	struct sec_pmic_acpm_bus_context *ctx;
+	struct regmap *regmap;
+
+	ctx = devm_kzalloc(dev, sizeof(*ctx), GFP_KERNEL);
+	if (!ctx)
+		return ERR_PTR(-ENOMEM);
+
+	ctx->shared = shared_ctx;
+	ctx->type = type;
+
+	regmap = devm_regmap_init(dev, &sec_pmic_acpm_regmap_bus, ctx, cfg);
+	if (IS_ERR(regmap))
+		return dev_err_cast_probe(dev, regmap, "regmap init (%s) failed\n", cfg->name);
+
+	if (do_attach) {
+		int ret;
+
+		ret = regmap_attach_dev(dev, regmap, cfg);
+		if (ret)
+			return dev_err_ptr_probe(dev, ret, "regmap attach (%s) failed\n",
+						 cfg->name);
+	}
+
+	return regmap;
+}
+
+static void sec_pmic_acpm_mask_common_irqs(void *regmap_common)
+{
+	regmap_write(regmap_common, S2MPG10_COMMON_INT_MASK, S2MPG10_COMMON_INT_SRC);
+}
+
+static int sec_pmic_acpm_probe(struct platform_device *pdev)
+{
+	struct regmap *regmap_common, *regmap_pmic, *regmap;
+	const struct sec_pmic_acpm_platform_data *pdata;
+	struct sec_pmic_acpm_shared_bus_context *shared_ctx;
+	const struct acpm_handle *acpm;
+	struct device *dev = &pdev->dev;
+	int ret, irq;
+
+	pdata = device_get_match_data(dev);
+	if (!pdata)
+		return dev_err_probe(dev, -ENODEV, "unsupported device type\n");
+
+	acpm = devm_acpm_get_by_node(dev, dev->parent->of_node);
+	if (IS_ERR(acpm))
+		return dev_err_probe(dev, PTR_ERR(acpm), "failed to get acpm\n");
+
+	irq = platform_get_irq(pdev, 0);
+	if (irq < 0)
+		return irq;
+
+	shared_ctx = devm_kzalloc(dev, sizeof(*shared_ctx), GFP_KERNEL);
+	if (!shared_ctx)
+		return -ENOMEM;
+
+	shared_ctx->acpm = acpm;
+	shared_ctx->acpm_chan_id = pdata->acpm_chan_id;
+	shared_ctx->speedy_channel = pdata->speedy_channel;
+
+	regmap_common = sec_pmic_acpm_regmap_init(dev, shared_ctx, SEC_PMIC_ACPM_ACCESSTYPE_COMMON,
+						  pdata->regmap_cfg_common, false);
+	if (IS_ERR(regmap_common))
+		return PTR_ERR(regmap_common);
+
+	/* Mask all interrupts from 'common' block, until successful init */
+	ret = regmap_write(regmap_common, S2MPG10_COMMON_INT_MASK, S2MPG10_COMMON_INT_SRC);
+	if (ret)
+		return dev_err_probe(dev, ret, "failed to mask common block interrupts\n");
+
+	regmap_pmic = sec_pmic_acpm_regmap_init(dev, shared_ctx, SEC_PMIC_ACPM_ACCESSTYPE_PMIC,
+						pdata->regmap_cfg_pmic, false);
+	if (IS_ERR(regmap_pmic))
+		return PTR_ERR(regmap_pmic);
+
+	regmap = sec_pmic_acpm_regmap_init(dev, shared_ctx, SEC_PMIC_ACPM_ACCESSTYPE_RTC,
+					   pdata->regmap_cfg_rtc, true);
+	if (IS_ERR(regmap))
+		return PTR_ERR(regmap);
+
+	regmap = sec_pmic_acpm_regmap_init(dev, shared_ctx, SEC_PMIC_ACPM_ACCESSTYPE_METER,
+					   pdata->regmap_cfg_meter, true);
+	if (IS_ERR(regmap))
+		return PTR_ERR(regmap);
+
+	ret = sec_pmic_probe(dev, pdata->device_type, irq, regmap_pmic, NULL);
+	if (ret)
+		return ret;
+
+	if (device_property_read_bool(dev, "wakeup-source"))
+		devm_device_init_wakeup(dev);
+
+	/* Unmask PMIC interrupt from 'common' block, now that everything is in place. */
+	ret = regmap_clear_bits(regmap_common, S2MPG10_COMMON_INT_MASK,
+				S2MPG10_COMMON_INT_SRC_PMIC);
+	if (ret)
+		return dev_err_probe(dev, ret, "failed to unmask PMIC interrupt\n");
+
+	/* Mask all interrupts from 'common' block on shutdown */
+	ret = devm_add_action_or_reset(dev, sec_pmic_acpm_mask_common_irqs, regmap_common);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+static void sec_pmic_acpm_shutdown(struct platform_device *pdev)
+{
+	sec_pmic_shutdown(&pdev->dev);
+}
+
+static const struct sec_pmic_acpm_platform_data s2mpg10_data = {
+	.device_type = S2MPG10,
+	.acpm_chan_id = 2,
+	.speedy_channel = 0,
+	.regmap_cfg_common = &s2mpg10_regmap_config_common,
+	.regmap_cfg_pmic = &s2mpg10_regmap_config_pmic,
+	.regmap_cfg_rtc = &s2mpg10_regmap_config_rtc,
+	.regmap_cfg_meter = &s2mpg10_regmap_config_meter,
+};
+
+static const struct of_device_id sec_pmic_acpm_of_match[] = {
+	{ .compatible = "samsung,s2mpg10-pmic", .data = &s2mpg10_data, },
+	{ },
+};
+MODULE_DEVICE_TABLE(of, sec_pmic_acpm_of_match);
+
+static struct platform_driver sec_pmic_acpm_driver = {
+	.driver = {
+		.name = "sec-pmic-acpm",
+		.pm = pm_sleep_ptr(&sec_pmic_pm_ops),
+		.of_match_table = sec_pmic_acpm_of_match,
+	},
+	.probe = sec_pmic_acpm_probe,
+	.shutdown = sec_pmic_acpm_shutdown,
+};
+module_platform_driver(sec_pmic_acpm_driver);
+
+MODULE_AUTHOR("André Draszik <andre.draszik@linaro.org>");
+MODULE_DESCRIPTION("ACPM driver for the Samsung S2MPG1x");
+MODULE_LICENSE("GPL");
diff --git a/drivers/mfd/sec-core.c b/drivers/mfd/sec-core.c
index bb664e052bf5198f2fc83a86bd6e1e72364fb8df..c4b7abe511090d8f5ff2eb501f325cc8173b9bf5 100644
--- a/drivers/mfd/sec-core.c
+++ b/drivers/mfd/sec-core.c
@@ -36,6 +36,14 @@ static const struct mfd_cell s2dos05_devs[] = {
 	{ .name = "s2dos05-regulator", },
 };
 
+static const struct mfd_cell s2mpg10_devs[] = {
+	MFD_CELL_NAME("s2mpg10-meter"),
+	MFD_CELL_NAME("s2mpg10-regulator"),
+	MFD_CELL_NAME("s2mpg10-rtc"),
+	MFD_CELL_OF("s2mpg10-clk", NULL, NULL, 0, 0, "samsung,s2mpg10-clk"),
+	MFD_CELL_OF("s2mpg10-gpio", NULL, NULL, 0, 0, "samsung,s2mpg10-gpio"),
+};
+
 static const struct mfd_cell s2mps11_devs[] = {
 	{ .name = "s2mps11-regulator", },
 	{ .name = "s2mps14-rtc", },
@@ -90,6 +98,10 @@ static void sec_pmic_dump_rev(struct sec_pmic_dev *sec_pmic)
 {
 	unsigned int val;
 
+	/* For s2mpg1x, the revision is in a different regmap */
+	if (sec_pmic->device_type == S2MPG10)
+		return;
+
 	/* For each device type, the REG_ID is always the first register */
 	if (!regmap_read(sec_pmic->regmap_pmic, S2MPS11_REG_ID, &val))
 		dev_dbg(sec_pmic->dev, "Revision: 0x%x\n", val);
@@ -188,6 +200,10 @@ int sec_pmic_probe(struct device *dev, unsigned long device_type,
 		sec_devs = s2mpa01_devs;
 		num_sec_devs = ARRAY_SIZE(s2mpa01_devs);
 		break;
+	case S2MPG10:
+		sec_devs = s2mpg10_devs;
+		num_sec_devs = ARRAY_SIZE(s2mpg10_devs);
+		break;
 	case S2MPS11X:
 		sec_devs = s2mps11_devs;
 		num_sec_devs = ARRAY_SIZE(s2mps11_devs);
diff --git a/drivers/mfd/sec-irq.c b/drivers/mfd/sec-irq.c
index 4d49bb42bd0d109263f485c8b58e88cdd8d598d9..e9beaa2a53fb42120eeb465a7c19acb4af6a0e59 100644
--- a/drivers/mfd/sec-irq.c
+++ b/drivers/mfd/sec-irq.c
@@ -11,6 +11,7 @@
 #include <linux/irq.h>
 #include <linux/mfd/samsung/core.h>
 #include <linux/mfd/samsung/irq.h>
+#include <linux/mfd/samsung/s2mpg10.h>
 #include <linux/mfd/samsung/s2mps11.h>
 #include <linux/mfd/samsung/s2mps14.h>
 #include <linux/mfd/samsung/s2mpu02.h>
@@ -20,6 +21,60 @@
 #include <linux/regmap.h>
 #include "sec-core.h"
 
+static const struct regmap_irq s2mpg10_irqs[] = {
+	REGMAP_IRQ_REG(S2MPG10_IRQ_PWRONF, 0, S2MPG10_IRQ_PWRONF_MASK),
+	REGMAP_IRQ_REG(S2MPG10_IRQ_PWRONR, 0, S2MPG10_IRQ_PWRONR_MASK),
+	REGMAP_IRQ_REG(S2MPG10_IRQ_JIGONBF, 0, S2MPG10_IRQ_JIGONBF_MASK),
+	REGMAP_IRQ_REG(S2MPG10_IRQ_JIGONBR, 0, S2MPG10_IRQ_JIGONBR_MASK),
+	REGMAP_IRQ_REG(S2MPG10_IRQ_ACOKBF, 0, S2MPG10_IRQ_ACOKBF_MASK),
+	REGMAP_IRQ_REG(S2MPG10_IRQ_ACOKBR, 0, S2MPG10_IRQ_ACOKBR_MASK),
+	REGMAP_IRQ_REG(S2MPG10_IRQ_PWRON1S, 0, S2MPG10_IRQ_PWRON1S_MASK),
+	REGMAP_IRQ_REG(S2MPG10_IRQ_MRB, 0, S2MPG10_IRQ_MRB_MASK),
+
+	REGMAP_IRQ_REG(S2MPG10_IRQ_RTC60S, 1, S2MPG10_IRQ_RTC60S_MASK),
+	REGMAP_IRQ_REG(S2MPG10_IRQ_RTCA1, 1, S2MPG10_IRQ_RTCA1_MASK),
+	REGMAP_IRQ_REG(S2MPG10_IRQ_RTCA0, 1, S2MPG10_IRQ_RTCA0_MASK),
+	REGMAP_IRQ_REG(S2MPG10_IRQ_RTC1S, 1, S2MPG10_IRQ_RTC1S_MASK),
+	REGMAP_IRQ_REG(S2MPG10_IRQ_WTSR_COLDRST, 1, S2MPG10_IRQ_WTSR_COLDRST_MASK),
+	REGMAP_IRQ_REG(S2MPG10_IRQ_WTSR, 1, S2MPG10_IRQ_WTSR_MASK),
+	REGMAP_IRQ_REG(S2MPG10_IRQ_WRST, 1, S2MPG10_IRQ_WRST_MASK),
+	REGMAP_IRQ_REG(S2MPG10_IRQ_SMPL, 1, S2MPG10_IRQ_SMPL_MASK),
+
+	REGMAP_IRQ_REG(S2MPG10_IRQ_120C, 2, S2MPG10_IRQ_INT120C_MASK),
+	REGMAP_IRQ_REG(S2MPG10_IRQ_140C, 2, S2MPG10_IRQ_INT140C_MASK),
+	REGMAP_IRQ_REG(S2MPG10_IRQ_TSD, 2, S2MPG10_IRQ_TSD_MASK),
+	REGMAP_IRQ_REG(S2MPG10_IRQ_PIF_TIMEOUT1, 2, S2MPG10_IRQ_PIF_TIMEOUT1_MASK),
+	REGMAP_IRQ_REG(S2MPG10_IRQ_PIF_TIMEOUT2, 2, S2MPG10_IRQ_PIF_TIMEOUT2_MASK),
+	REGMAP_IRQ_REG(S2MPG10_IRQ_SPD_PARITY_ERR, 2, S2MPG10_IRQ_SPD_PARITY_ERR_MASK),
+	REGMAP_IRQ_REG(S2MPG10_IRQ_SPD_ABNORMAL_STOP, 2, S2MPG10_IRQ_SPD_ABNORMAL_STOP_MASK),
+	REGMAP_IRQ_REG(S2MPG10_IRQ_PMETER_OVERF, 2, S2MPG10_IRQ_PMETER_OVERF_MASK),
+
+	REGMAP_IRQ_REG(S2MPG10_IRQ_OCP_B1M, 3, S2MPG10_IRQ_OCP_B1M_MASK),
+	REGMAP_IRQ_REG(S2MPG10_IRQ_OCP_B2M, 3, S2MPG10_IRQ_OCP_B2M_MASK),
+	REGMAP_IRQ_REG(S2MPG10_IRQ_OCP_B3M, 3, S2MPG10_IRQ_OCP_B3M_MASK),
+	REGMAP_IRQ_REG(S2MPG10_IRQ_OCP_B4M, 3, S2MPG10_IRQ_OCP_B4M_MASK),
+	REGMAP_IRQ_REG(S2MPG10_IRQ_OCP_B5M, 3, S2MPG10_IRQ_OCP_B5M_MASK),
+	REGMAP_IRQ_REG(S2MPG10_IRQ_OCP_B6M, 3, S2MPG10_IRQ_OCP_B6M_MASK),
+	REGMAP_IRQ_REG(S2MPG10_IRQ_OCP_B7M, 3, S2MPG10_IRQ_OCP_B7M_MASK),
+	REGMAP_IRQ_REG(S2MPG10_IRQ_OCP_B8M, 3, S2MPG10_IRQ_OCP_B8M_MASK),
+
+	REGMAP_IRQ_REG(S2MPG10_IRQ_OCP_B9M, 4, S2MPG10_IRQ_OCP_B9M_MASK),
+	REGMAP_IRQ_REG(S2MPG10_IRQ_OCP_B10M, 4, S2MPG10_IRQ_OCP_B10M_MASK),
+	REGMAP_IRQ_REG(S2MPG10_IRQ_WLWP_ACC, 4, S2MPG10_IRQ_WLWP_ACC_MASK),
+	REGMAP_IRQ_REG(S2MPG10_IRQ_SMPL_TIMEOUT, 4, S2MPG10_IRQ_SMPL_TIMEOUT_MASK),
+	REGMAP_IRQ_REG(S2MPG10_IRQ_WTSR_TIMEOUT, 4, S2MPG10_IRQ_WTSR_TIMEOUT_MASK),
+	REGMAP_IRQ_REG(S2MPG10_IRQ_SPD_SRP_PKT_RST, 4, S2MPG10_IRQ_SPD_SRP_PKT_RST_MASK),
+
+	REGMAP_IRQ_REG(S2MPG10_IRQ_PWR_WARN_CH0, 5, S2MPG10_IRQ_PWR_WARN_CH0_MASK),
+	REGMAP_IRQ_REG(S2MPG10_IRQ_PWR_WARN_CH1, 5, S2MPG10_IRQ_PWR_WARN_CH1_MASK),
+	REGMAP_IRQ_REG(S2MPG10_IRQ_PWR_WARN_CH2, 5, S2MPG10_IRQ_PWR_WARN_CH2_MASK),
+	REGMAP_IRQ_REG(S2MPG10_IRQ_PWR_WARN_CH3, 5, S2MPG10_IRQ_PWR_WARN_CH3_MASK),
+	REGMAP_IRQ_REG(S2MPG10_IRQ_PWR_WARN_CH4, 5, S2MPG10_IRQ_PWR_WARN_CH4_MASK),
+	REGMAP_IRQ_REG(S2MPG10_IRQ_PWR_WARN_CH5, 5, S2MPG10_IRQ_PWR_WARN_CH5_MASK),
+	REGMAP_IRQ_REG(S2MPG10_IRQ_PWR_WARN_CH6, 5, S2MPG10_IRQ_PWR_WARN_CH6_MASK),
+	REGMAP_IRQ_REG(S2MPG10_IRQ_PWR_WARN_CH7, 5, S2MPG10_IRQ_PWR_WARN_CH7_MASK),
+};
+
 static const struct regmap_irq s2mps11_irqs[] = {
 	[S2MPS11_IRQ_PWRONF] = {
 		.reg_offset = 0,
@@ -320,6 +375,16 @@ static const struct regmap_irq s5m8767_irqs[] = {
 	},
 };
 
+/* All S2MPG10 interrupt sources are read-only and don't require clearing */
+static const struct regmap_irq_chip s2mpg10_irq_chip = {
+	.name = "s2mpg10",
+	.irqs = s2mpg10_irqs,
+	.num_irqs = ARRAY_SIZE(s2mpg10_irqs),
+	.num_regs = 6,
+	.status_base = S2MPG10_PMIC_INT1,
+	.mask_base = S2MPG10_PMIC_INT1M,
+};
+
 static const struct regmap_irq_chip s2mps11_irq_chip = {
 	.name = "s2mps11",
 	.irqs = s2mps11_irqs,
@@ -402,6 +467,9 @@ int sec_irq_init(struct sec_pmic_dev *sec_pmic)
 	case S2MPA01:
 		sec_irq_chip = &s2mps14_irq_chip;
 		break;
+	case S2MPG10:
+		sec_irq_chip = &s2mpg10_irq_chip;
+		break;
 	case S2MPS11X:
 		sec_irq_chip = &s2mps11_irq_chip;
 		break;
diff --git a/include/linux/mfd/samsung/core.h b/include/linux/mfd/samsung/core.h
index 8a4e660854bbc955b812b4d61d4a52a0fc2f2899..c1102324172a9b6bd6072b5929a4866d6c9653fa 100644
--- a/include/linux/mfd/samsung/core.h
+++ b/include/linux/mfd/samsung/core.h
@@ -39,6 +39,7 @@ enum sec_device_type {
 	S5M8767X,
 	S2DOS05,
 	S2MPA01,
+	S2MPG10,
 	S2MPS11X,
 	S2MPS13X,
 	S2MPS14X,
diff --git a/include/linux/mfd/samsung/irq.h b/include/linux/mfd/samsung/irq.h
index 978f7af66f74842c4f8dd62c0f58a7a45aba7c34..b4805cbd949bd605004bd88cf361109d1cbbc3bf 100644
--- a/include/linux/mfd/samsung/irq.h
+++ b/include/linux/mfd/samsung/irq.h
@@ -57,6 +57,109 @@ enum s2mpa01_irq {
 #define S2MPA01_IRQ_B24_TSD_MASK	(1 << 4)
 #define S2MPA01_IRQ_B35_TSD_MASK	(1 << 5)
 
+enum s2mpg10_irq {
+	/* PMIC */
+	S2MPG10_IRQ_PWRONF,
+	S2MPG10_IRQ_PWRONR,
+	S2MPG10_IRQ_JIGONBF,
+	S2MPG10_IRQ_JIGONBR,
+	S2MPG10_IRQ_ACOKBF,
+	S2MPG10_IRQ_ACOKBR,
+	S2MPG10_IRQ_PWRON1S,
+	S2MPG10_IRQ_MRB,
+#define S2MPG10_IRQ_PWRONF_MASK		BIT(0)
+#define S2MPG10_IRQ_PWRONR_MASK		BIT(1)
+#define S2MPG10_IRQ_JIGONBF_MASK	BIT(2)
+#define S2MPG10_IRQ_JIGONBR_MASK	BIT(3)
+#define S2MPG10_IRQ_ACOKBF_MASK		BIT(4)
+#define S2MPG10_IRQ_ACOKBR_MASK		BIT(5)
+#define S2MPG10_IRQ_PWRON1S_MASK	BIT(6)
+#define S2MPG10_IRQ_MRB_MASK		BIT(7)
+
+	S2MPG10_IRQ_RTC60S,
+	S2MPG10_IRQ_RTCA1,
+	S2MPG10_IRQ_RTCA0,
+	S2MPG10_IRQ_RTC1S,
+	S2MPG10_IRQ_WTSR_COLDRST,
+	S2MPG10_IRQ_WTSR,
+	S2MPG10_IRQ_WRST,
+	S2MPG10_IRQ_SMPL,
+#define S2MPG10_IRQ_RTC60S_MASK		BIT(0)
+#define S2MPG10_IRQ_RTCA1_MASK		BIT(1)
+#define S2MPG10_IRQ_RTCA0_MASK		BIT(2)
+#define S2MPG10_IRQ_RTC1S_MASK		BIT(3)
+#define S2MPG10_IRQ_WTSR_COLDRST_MASK	BIT(4)
+#define S2MPG10_IRQ_WTSR_MASK		BIT(5)
+#define S2MPG10_IRQ_WRST_MASK		BIT(6)
+#define S2MPG10_IRQ_SMPL_MASK		BIT(7)
+
+	S2MPG10_IRQ_120C,
+	S2MPG10_IRQ_140C,
+	S2MPG10_IRQ_TSD,
+	S2MPG10_IRQ_PIF_TIMEOUT1,
+	S2MPG10_IRQ_PIF_TIMEOUT2,
+	S2MPG10_IRQ_SPD_PARITY_ERR,
+	S2MPG10_IRQ_SPD_ABNORMAL_STOP,
+	S2MPG10_IRQ_PMETER_OVERF,
+#define S2MPG10_IRQ_INT120C_MASK		BIT(0)
+#define S2MPG10_IRQ_INT140C_MASK		BIT(1)
+#define S2MPG10_IRQ_TSD_MASK			BIT(2)
+#define S2MPG10_IRQ_PIF_TIMEOUT1_MASK		BIT(3)
+#define S2MPG10_IRQ_PIF_TIMEOUT2_MASK		BIT(4)
+#define S2MPG10_IRQ_SPD_PARITY_ERR_MASK		BIT(5)
+#define S2MPG10_IRQ_SPD_ABNORMAL_STOP_MASK	BIT(6)
+#define S2MPG10_IRQ_PMETER_OVERF_MASK		BIT(7)
+
+	S2MPG10_IRQ_OCP_B1M,
+	S2MPG10_IRQ_OCP_B2M,
+	S2MPG10_IRQ_OCP_B3M,
+	S2MPG10_IRQ_OCP_B4M,
+	S2MPG10_IRQ_OCP_B5M,
+	S2MPG10_IRQ_OCP_B6M,
+	S2MPG10_IRQ_OCP_B7M,
+	S2MPG10_IRQ_OCP_B8M,
+#define S2MPG10_IRQ_OCP_B1M_MASK	BIT(0)
+#define S2MPG10_IRQ_OCP_B2M_MASK	BIT(1)
+#define S2MPG10_IRQ_OCP_B3M_MASK	BIT(2)
+#define S2MPG10_IRQ_OCP_B4M_MASK	BIT(3)
+#define S2MPG10_IRQ_OCP_B5M_MASK	BIT(4)
+#define S2MPG10_IRQ_OCP_B6M_MASK	BIT(5)
+#define S2MPG10_IRQ_OCP_B7M_MASK	BIT(6)
+#define S2MPG10_IRQ_OCP_B8M_MASK	BIT(7)
+
+	S2MPG10_IRQ_OCP_B9M,
+	S2MPG10_IRQ_OCP_B10M,
+	S2MPG10_IRQ_WLWP_ACC,
+	S2MPG10_IRQ_SMPL_TIMEOUT,
+	S2MPG10_IRQ_WTSR_TIMEOUT,
+	S2MPG10_IRQ_SPD_SRP_PKT_RST,
+#define S2MPG10_IRQ_OCP_B9M_MASK		BIT(0)
+#define S2MPG10_IRQ_OCP_B10M_MASK		BIT(1)
+#define S2MPG10_IRQ_WLWP_ACC_MASK		BIT(2)
+#define S2MPG10_IRQ_SMPL_TIMEOUT_MASK		BIT(5)
+#define S2MPG10_IRQ_WTSR_TIMEOUT_MASK		BIT(6)
+#define S2MPG10_IRQ_SPD_SRP_PKT_RST_MASK	BIT(7)
+
+	S2MPG10_IRQ_PWR_WARN_CH0,
+	S2MPG10_IRQ_PWR_WARN_CH1,
+	S2MPG10_IRQ_PWR_WARN_CH2,
+	S2MPG10_IRQ_PWR_WARN_CH3,
+	S2MPG10_IRQ_PWR_WARN_CH4,
+	S2MPG10_IRQ_PWR_WARN_CH5,
+	S2MPG10_IRQ_PWR_WARN_CH6,
+	S2MPG10_IRQ_PWR_WARN_CH7,
+#define S2MPG10_IRQ_PWR_WARN_CH0_MASK	BIT(0)
+#define S2MPG10_IRQ_PWR_WARN_CH1_MASK	BIT(1)
+#define S2MPG10_IRQ_PWR_WARN_CH2_MASK	BIT(2)
+#define S2MPG10_IRQ_PWR_WARN_CH3_MASK	BIT(3)
+#define S2MPG10_IRQ_PWR_WARN_CH4_MASK	BIT(4)
+#define S2MPG10_IRQ_PWR_WARN_CH5_MASK	BIT(5)
+#define S2MPG10_IRQ_PWR_WARN_CH6_MASK	BIT(6)
+#define S2MPG10_IRQ_PWR_WARN_CH7_MASK	BIT(7)
+
+	S2MPG10_IRQ_NR,
+};
+
 enum s2mps11_irq {
 	S2MPS11_IRQ_PWRONF,
 	S2MPS11_IRQ_PWRONR,
diff --git a/include/linux/mfd/samsung/rtc.h b/include/linux/mfd/samsung/rtc.h
index 0204decfc9aacbf4bc93d98a256f1d956bbcd19c..51c4239a1fa6f28155711a0756b0e071b010d848 100644
--- a/include/linux/mfd/samsung/rtc.h
+++ b/include/linux/mfd/samsung/rtc.h
@@ -72,6 +72,37 @@ enum s2mps_rtc_reg {
 	S2MPS_RTC_REG_MAX,
 };
 
+enum s2mpg10_rtc_reg {
+	S2MPG10_RTC_CTRL,
+	S2MPG10_RTC_UPDATE,
+	S2MPG10_RTC_SMPL,
+	S2MPG10_RTC_WTSR,
+	S2MPG10_RTC_CAP_SEL,
+	S2MPG10_RTC_MSEC,
+	S2MPG10_RTC_SEC,
+	S2MPG10_RTC_MIN,
+	S2MPG10_RTC_HOUR,
+	S2MPG10_RTC_WEEK,
+	S2MPG10_RTC_DAY,
+	S2MPG10_RTC_MON,
+	S2MPG10_RTC_YEAR,
+	S2MPG10_RTC_A0SEC,
+	S2MPG10_RTC_A0MIN,
+	S2MPG10_RTC_A0HOUR,
+	S2MPG10_RTC_A0WEEK,
+	S2MPG10_RTC_A0DAY,
+	S2MPG10_RTC_A0MON,
+	S2MPG10_RTC_A0YEAR,
+	S2MPG10_RTC_A1SEC,
+	S2MPG10_RTC_A1MIN,
+	S2MPG10_RTC_A1HOUR,
+	S2MPG10_RTC_A1WEEK,
+	S2MPG10_RTC_A1DAY,
+	S2MPG10_RTC_A1MON,
+	S2MPG10_RTC_A1YEAR,
+	S2MPG10_RTC_OSC_CTRL,
+};
+
 #define RTC_I2C_ADDR		(0x0C >> 1)
 
 #define HOUR_12			(1 << 7)
@@ -124,10 +155,16 @@ enum s2mps_rtc_reg {
 #define ALARM_ENABLE_SHIFT	7
 #define ALARM_ENABLE_MASK	(1 << ALARM_ENABLE_SHIFT)
 
+/* WTSR & SMPL registers */
 #define SMPL_ENABLE_SHIFT	7
 #define SMPL_ENABLE_MASK	(1 << SMPL_ENABLE_SHIFT)
 
 #define WTSR_ENABLE_SHIFT	6
 #define WTSR_ENABLE_MASK	(1 << WTSR_ENABLE_SHIFT)
 
+#define S2MPG10_WTSR_COLDTIMER	GENMASK(6, 5)
+#define S2MPG10_WTSR_COLDRST	BIT(4)
+#define S2MPG10_WTSR_WTSRT	GENMASK(3, 1)
+#define S2MPG10_WTSR_WTSR_EN	BIT(0)
+
 #endif /*  __LINUX_MFD_SEC_RTC_H */
diff --git a/include/linux/mfd/samsung/s2mpg10.h b/include/linux/mfd/samsung/s2mpg10.h
new file mode 100644
index 0000000000000000000000000000000000000000..9f5919b89a3c286bf1cd6b3ef0e74bc993bff01a
--- /dev/null
+++ b/include/linux/mfd/samsung/s2mpg10.h
@@ -0,0 +1,454 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
+ * Copyright 2015 Samsung Electronics
+ * Copyright 2020 Google Inc
+ * Copyright 2025 Linaro Ltd.
+ */
+
+#ifndef __LINUX_MFD_S2MPG10_H
+#define __LINUX_MFD_S2MPG10_H
+
+/* Common registers (type 0x000) */
+enum s2mpg10_common_reg {
+	S2MPG10_COMMON_CHIPID,
+	S2MPG10_COMMON_INT,
+	S2MPG10_COMMON_INT_MASK,
+	S2MPG10_COMMON_SPD_CTRL1 = 0x0a,
+	S2MPG10_COMMON_SPD_CTRL2,
+	S2MPG10_COMMON_SPD_CTRL3,
+	S2MPG10_COMMON_MON1SEL = 0x1a,
+	S2MPG10_COMMON_MON2SEL,
+	S2MPG10_COMMON_MONR,
+	S2MPG10_COMMON_DEBUG_CTRL1,
+	S2MPG10_COMMON_DEBUG_CTRL2,
+	S2MPG10_COMMON_DEBUG_CTRL3,
+	S2MPG10_COMMON_DEBUG_CTRL4,
+	S2MPG10_COMMON_DEBUG_CTRL5,
+	S2MPG10_COMMON_DEBUG_CTRL6,
+	S2MPG10_COMMON_DEBUG_CTRL7,
+	S2MPG10_COMMON_DEBUG_CTRL8,
+	S2MPG10_COMMON_TEST_MODE1,
+	S2MPG10_COMMON_TEST_MODE2,
+	S2MPG10_COMMON_SPD_DEBUG1,
+	S2MPG10_COMMON_SPD_DEBUG2,
+	S2MPG10_COMMON_SPD_DEBUG3,
+	S2MPG10_COMMON_SPD_DEBUG4,
+};
+
+/* For S2MPG10_COMMON_INT and S2MPG10_COMMON_INT_MASK */
+#define S2MPG10_COMMON_INT_SRC       GENMASK(7, 0)
+#define S2MPG10_COMMON_INT_SRC_PMIC  BIT(0)
+
+/* PMIC registers (type 0x100) */
+enum s2mpg10_pmic_reg {
+	S2MPG10_PMIC_INT1,
+	S2MPG10_PMIC_INT2,
+	S2MPG10_PMIC_INT3,
+	S2MPG10_PMIC_INT4,
+	S2MPG10_PMIC_INT5,
+	S2MPG10_PMIC_INT6,
+	S2MPG10_PMIC_INT1M,
+	S2MPG10_PMIC_INT2M,
+	S2MPG10_PMIC_INT3M,
+	S2MPG10_PMIC_INT4M,
+	S2MPG10_PMIC_INT5M,
+	S2MPG10_PMIC_INT6M,
+	S2MPG10_PMIC_STATUS1,
+	S2MPG10_PMIC_STATUS2,
+	S2MPG10_PMIC_PWRONSRC,
+	S2MPG10_PMIC_OFFSRC,
+	S2MPG10_PMIC_BU_CHG,
+	S2MPG10_PMIC_RTCBUF,
+	S2MPG10_PMIC_COMMON_CTRL1,
+	S2MPG10_PMIC_COMMON_CTRL2,
+	S2MPG10_PMIC_COMMON_CTRL3,
+	S2MPG10_PMIC_COMMON_CTRL4,
+	S2MPG10_PMIC_SMPL_WARN_CTRL,
+	S2MPG10_PMIC_MIMICKING_CTRL,
+	S2MPG10_PMIC_B1M_CTRL,
+	S2MPG10_PMIC_B1M_OUT1,
+	S2MPG10_PMIC_B1M_OUT2,
+	S2MPG10_PMIC_B2M_CTRL,
+	S2MPG10_PMIC_B2M_OUT1,
+	S2MPG10_PMIC_B2M_OUT2,
+	S2MPG10_PMIC_B3M_CTRL,
+	S2MPG10_PMIC_B3M_OUT1,
+	S2MPG10_PMIC_B3M_OUT2,
+	S2MPG10_PMIC_B4M_CTRL,
+	S2MPG10_PMIC_B4M_OUT1,
+	S2MPG10_PMIC_B4M_OUT2,
+	S2MPG10_PMIC_B5M_CTRL,
+	S2MPG10_PMIC_B5M_OUT1,
+	S2MPG10_PMIC_B5M_OUT2,
+	S2MPG10_PMIC_B6M_CTRL,
+	S2MPG10_PMIC_B6M_OUT1,
+	S2MPG10_PMIC_B6M_OUT2,
+	S2MPG10_PMIC_B7M_CTRL,
+	S2MPG10_PMIC_B7M_OUT1,
+	S2MPG10_PMIC_B7M_OUT2,
+	S2MPG10_PMIC_B8M_CTRL,
+	S2MPG10_PMIC_B8M_OUT1,
+	S2MPG10_PMIC_B8M_OUT2,
+	S2MPG10_PMIC_B9M_CTRL,
+	S2MPG10_PMIC_B9M_OUT1,
+	S2MPG10_PMIC_B9M_OUT2,
+	S2MPG10_PMIC_B10M_CTRL,
+	S2MPG10_PMIC_B10M_OUT1,
+	S2MPG10_PMIC_B10M_OUT2,
+	S2MPG10_PMIC_BUCK1M_USONIC,
+	S2MPG10_PMIC_BUCK2M_USONIC,
+	S2MPG10_PMIC_BUCK3M_USONIC,
+	S2MPG10_PMIC_BUCK4M_USONIC,
+	S2MPG10_PMIC_BUCK5M_USONIC,
+	S2MPG10_PMIC_BUCK6M_USONIC,
+	S2MPG10_PMIC_BUCK7M_USONIC,
+	S2MPG10_PMIC_BUCK8M_USONIC,
+	S2MPG10_PMIC_BUCK9M_USONIC,
+	S2MPG10_PMIC_BUCK10M_USONIC,
+	S2MPG10_PMIC_L1M_CTRL,
+	S2MPG10_PMIC_L2M_CTRL,
+	S2MPG10_PMIC_L3M_CTRL,
+	S2MPG10_PMIC_L4M_CTRL,
+	S2MPG10_PMIC_L5M_CTRL,
+	S2MPG10_PMIC_L6M_CTRL,
+	S2MPG10_PMIC_L7M_CTRL,
+	S2MPG10_PMIC_L8M_CTRL,
+	S2MPG10_PMIC_L9M_CTRL,
+	S2MPG10_PMIC_L10M_CTRL,
+	S2MPG10_PMIC_L11M_CTRL1,
+	S2MPG10_PMIC_L11M_CTRL2,
+	S2MPG10_PMIC_L12M_CTRL1,
+	S2MPG10_PMIC_L12M_CTRL2,
+	S2MPG10_PMIC_L13M_CTRL1,
+	S2MPG10_PMIC_L13M_CTRL2,
+	S2MPG10_PMIC_L14M_CTRL,
+	S2MPG10_PMIC_L15M_CTRL1,
+	S2MPG10_PMIC_L15M_CTRL2,
+	S2MPG10_PMIC_L16M_CTRL,
+	S2MPG10_PMIC_L17M_CTRL,
+	S2MPG10_PMIC_L18M_CTRL,
+	S2MPG10_PMIC_L19M_CTRL,
+	S2MPG10_PMIC_L20M_CTRL,
+	S2MPG10_PMIC_L21M_CTRL,
+	S2MPG10_PMIC_L22M_CTRL,
+	S2MPG10_PMIC_L23M_CTRL,
+	S2MPG10_PMIC_L24M_CTRL,
+	S2MPG10_PMIC_L25M_CTRL,
+	S2MPG10_PMIC_L26M_CTRL,
+	S2MPG10_PMIC_L27M_CTRL,
+	S2MPG10_PMIC_L28M_CTRL,
+	S2MPG10_PMIC_L29M_CTRL,
+	S2MPG10_PMIC_L30M_CTRL,
+	S2MPG10_PMIC_L31M_CTRL,
+	S2MPG10_PMIC_LDO_CTRL1,
+	S2MPG10_PMIC_LDO_CTRL2,
+	S2MPG10_PMIC_LDO_DSCH1,
+	S2MPG10_PMIC_LDO_DSCH2,
+	S2MPG10_PMIC_LDO_DSCH3,
+	S2MPG10_PMIC_LDO_DSCH4,
+	S2MPG10_PMIC_LDO_BUCK7M_HLIMIT,
+	S2MPG10_PMIC_LDO_BUCK7M_LLIMIT,
+	S2MPG10_PMIC_LDO_LDO21M_HLIMIT,
+	S2MPG10_PMIC_LDO_LDO21M_LLIMIT,
+	S2MPG10_PMIC_LDO_LDO11M_HLIMIT,
+	S2MPG10_PMIC_DVS_RAMP1,
+	S2MPG10_PMIC_DVS_RAMP2,
+	S2MPG10_PMIC_DVS_RAMP3,
+	S2MPG10_PMIC_DVS_RAMP4,
+	S2MPG10_PMIC_DVS_RAMP5,
+	S2MPG10_PMIC_DVS_RAMP6,
+	S2MPG10_PMIC_DVS_SYNC_CTRL1,
+	S2MPG10_PMIC_DVS_SYNC_CTRL2,
+	S2MPG10_PMIC_DVS_SYNC_CTRL3,
+	S2MPG10_PMIC_DVS_SYNC_CTRL4,
+	S2MPG10_PMIC_DVS_SYNC_CTRL5,
+	S2MPG10_PMIC_DVS_SYNC_CTRL6,
+	S2MPG10_PMIC_OFF_CTRL1,
+	S2MPG10_PMIC_OFF_CTRL2,
+	S2MPG10_PMIC_OFF_CTRL3,
+	S2MPG10_PMIC_OFF_CTRL4,
+	S2MPG10_PMIC_SEQ_CTRL1,
+	S2MPG10_PMIC_SEQ_CTRL2,
+	S2MPG10_PMIC_SEQ_CTRL3,
+	S2MPG10_PMIC_SEQ_CTRL4,
+	S2MPG10_PMIC_SEQ_CTRL5,
+	S2MPG10_PMIC_SEQ_CTRL6,
+	S2MPG10_PMIC_SEQ_CTRL7,
+	S2MPG10_PMIC_SEQ_CTRL8,
+	S2MPG10_PMIC_SEQ_CTRL9,
+	S2MPG10_PMIC_SEQ_CTRL10,
+	S2MPG10_PMIC_SEQ_CTRL11,
+	S2MPG10_PMIC_SEQ_CTRL12,
+	S2MPG10_PMIC_SEQ_CTRL13,
+	S2MPG10_PMIC_SEQ_CTRL14,
+	S2MPG10_PMIC_SEQ_CTRL15,
+	S2MPG10_PMIC_SEQ_CTRL16,
+	S2MPG10_PMIC_SEQ_CTRL17,
+	S2MPG10_PMIC_SEQ_CTRL18,
+	S2MPG10_PMIC_SEQ_CTRL19,
+	S2MPG10_PMIC_SEQ_CTRL20,
+	S2MPG10_PMIC_SEQ_CTRL21,
+	S2MPG10_PMIC_SEQ_CTRL22,
+	S2MPG10_PMIC_SEQ_CTRL23,
+	S2MPG10_PMIC_SEQ_CTRL24,
+	S2MPG10_PMIC_SEQ_CTRL25,
+	S2MPG10_PMIC_SEQ_CTRL26,
+	S2MPG10_PMIC_SEQ_CTRL27,
+	S2MPG10_PMIC_SEQ_CTRL28,
+	S2MPG10_PMIC_SEQ_CTRL29,
+	S2MPG10_PMIC_SEQ_CTRL30,
+	S2MPG10_PMIC_SEQ_CTRL31,
+	S2MPG10_PMIC_SEQ_CTRL32,
+	S2MPG10_PMIC_SEQ_CTRL33,
+	S2MPG10_PMIC_SEQ_CTRL34,
+	S2MPG10_PMIC_SEQ_CTRL35,
+	S2MPG10_PMIC_OFF_SEQ_CTRL1,
+	S2MPG10_PMIC_OFF_SEQ_CTRL2,
+	S2MPG10_PMIC_OFF_SEQ_CTRL3,
+	S2MPG10_PMIC_OFF_SEQ_CTRL4,
+	S2MPG10_PMIC_OFF_SEQ_CTRL5,
+	S2MPG10_PMIC_OFF_SEQ_CTRL6,
+	S2MPG10_PMIC_OFF_SEQ_CTRL7,
+	S2MPG10_PMIC_OFF_SEQ_CTRL8,
+	S2MPG10_PMIC_OFF_SEQ_CTRL9,
+	S2MPG10_PMIC_OFF_SEQ_CTRL10,
+	S2MPG10_PMIC_OFF_SEQ_CTRL11,
+	S2MPG10_PMIC_OFF_SEQ_CTRL12,
+	S2MPG10_PMIC_OFF_SEQ_CTRL13,
+	S2MPG10_PMIC_OFF_SEQ_CTRL14,
+	S2MPG10_PMIC_OFF_SEQ_CTRL15,
+	S2MPG10_PMIC_OFF_SEQ_CTRL16,
+	S2MPG10_PMIC_OFF_SEQ_CTRL17,
+	S2MPG10_PMIC_OFF_SEQ_CTRL18,
+	S2MPG10_PMIC_PCTRLSEL1,
+	S2MPG10_PMIC_PCTRLSEL2,
+	S2MPG10_PMIC_PCTRLSEL3,
+	S2MPG10_PMIC_PCTRLSEL4,
+	S2MPG10_PMIC_PCTRLSEL5,
+	S2MPG10_PMIC_PCTRLSEL6,
+	S2MPG10_PMIC_PCTRLSEL7,
+	S2MPG10_PMIC_PCTRLSEL8,
+	S2MPG10_PMIC_PCTRLSEL9,
+	S2MPG10_PMIC_PCTRLSEL10,
+	S2MPG10_PMIC_PCTRLSEL11,
+	S2MPG10_PMIC_PCTRLSEL12,
+	S2MPG10_PMIC_PCTRLSEL13,
+	S2MPG10_PMIC_DCTRLSEL1,
+	S2MPG10_PMIC_DCTRLSEL2,
+	S2MPG10_PMIC_DCTRLSEL3,
+	S2MPG10_PMIC_DCTRLSEL4,
+	S2MPG10_PMIC_DCTRLSEL5,
+	S2MPG10_PMIC_DCTRLSEL6,
+	S2MPG10_PMIC_DCTRLSEL7,
+	S2MPG10_PMIC_GPIO_CTRL1,
+	S2MPG10_PMIC_GPIO_CTRL2,
+	S2MPG10_PMIC_GPIO_CTRL3,
+	S2MPG10_PMIC_GPIO_CTRL4,
+	S2MPG10_PMIC_GPIO_CTRL5,
+	S2MPG10_PMIC_GPIO_CTRL6,
+	S2MPG10_PMIC_GPIO_CTRL7,
+	S2MPG10_PMIC_B2M_OCP_WARN,
+	S2MPG10_PMIC_B2M_OCP_WARN_X,
+	S2MPG10_PMIC_B2M_OCP_WARN_Y,
+	S2MPG10_PMIC_B2M_OCP_WARN_Z,
+	S2MPG10_PMIC_B3M_OCP_WARN,
+	S2MPG10_PMIC_B3M_OCP_WARN_X,
+	S2MPG10_PMIC_B3M_OCP_WARN_Y,
+	S2MPG10_PMIC_B3M_OCP_WARN_Z,
+	S2MPG10_PMIC_B10M_OCP_WARN,
+	S2MPG10_PMIC_B10M_OCP_WARN_X,
+	S2MPG10_PMIC_B10M_OCP_WARN_Y,
+	S2MPG10_PMIC_B10M_OCP_WARN_Z,
+	S2MPG10_PMIC_B2M_SOFT_OCP_WARN,
+	S2MPG10_PMIC_B2M_SOFT_OCP_WARN_X,
+	S2MPG10_PMIC_B2M_SOFT_OCP_WARN_Y,
+	S2MPG10_PMIC_B2M_SOFT_OCP_WARN_Z,
+	S2MPG10_PMIC_B3M_SOFT_OCP_WARN,
+	S2MPG10_PMIC_B3M_SOFT_OCP_WARN_X,
+	S2MPG10_PMIC_B3M_SOFT_OCP_WARN_Y,
+	S2MPG10_PMIC_B3M_SOFT_OCP_WARN_Z,
+	S2MPG10_PMIC_B10M_SOFT_OCP_WARN,
+	S2MPG10_PMIC_B10M_SOFT_OCP_WARN_X,
+	S2MPG10_PMIC_B10M_SOFT_OCP_WARN_Y,
+	S2MPG10_PMIC_B10M_SOFT_OCP_WARN_Z,
+	S2MPG10_PMIC_BUCK_OCP_EN1,
+	S2MPG10_PMIC_BUCK_OCP_EN2,
+	S2MPG10_PMIC_BUCK_OCP_PD_EN1,
+	S2MPG10_PMIC_BUCK_OCP_PD_EN2,
+	S2MPG10_PMIC_BUCK_OCP_CTRL1,
+	S2MPG10_PMIC_BUCK_OCP_CTRL2,
+	S2MPG10_PMIC_BUCK_OCP_CTRL3,
+	S2MPG10_PMIC_BUCK_OCP_CTRL4,
+	S2MPG10_PMIC_BUCK_OCP_CTRL5,
+	S2MPG10_PMIC_PIF_CTRL,
+	S2MPG10_PMIC_BUCK_HR_MODE1,
+	S2MPG10_PMIC_BUCK_HR_MODE2,
+	S2MPG10_PMIC_FAULTOUT_CTRL,
+	S2MPG10_PMIC_LDO_SENSE1,
+	S2MPG10_PMIC_LDO_SENSE2,
+	S2MPG10_PMIC_LDO_SENSE3,
+	S2MPG10_PMIC_LDO_SENSE4,
+};
+
+/* Meter registers (type 0xa00) */
+enum s2mpg10_meter_reg {
+	S2MPG10_METER_CTRL1,
+	S2MPG10_METER_CTRL2,
+	S2MPG10_METER_CTRL3,
+	S2MPG10_METER_CTRL4,
+	S2MPG10_METER_BUCKEN1,
+	S2MPG10_METER_BUCKEN2,
+	S2MPG10_METER_MUXSEL0,
+	S2MPG10_METER_MUXSEL1,
+	S2MPG10_METER_MUXSEL2,
+	S2MPG10_METER_MUXSEL3,
+	S2MPG10_METER_MUXSEL4,
+	S2MPG10_METER_MUXSEL5,
+	S2MPG10_METER_MUXSEL6,
+	S2MPG10_METER_MUXSEL7,
+	S2MPG10_METER_LPF_C0_0,
+	S2MPG10_METER_LPF_C0_1,
+	S2MPG10_METER_LPF_C0_2,
+	S2MPG10_METER_LPF_C0_3,
+	S2MPG10_METER_LPF_C0_4,
+	S2MPG10_METER_LPF_C0_5,
+	S2MPG10_METER_LPF_C0_6,
+	S2MPG10_METER_LPF_C0_7,
+	S2MPG10_METER_PWR_WARN0,
+	S2MPG10_METER_PWR_WARN1,
+	S2MPG10_METER_PWR_WARN2,
+	S2MPG10_METER_PWR_WARN3,
+	S2MPG10_METER_PWR_WARN4,
+	S2MPG10_METER_PWR_WARN5,
+	S2MPG10_METER_PWR_WARN6,
+	S2MPG10_METER_PWR_WARN7,
+	S2MPG10_METER_PWR_HYS1,
+	S2MPG10_METER_PWR_HYS2,
+	S2MPG10_METER_PWR_HYS3,
+	S2MPG10_METER_PWR_HYS4,
+	S2MPG10_METER_ACC_DATA_CH0_1 = 0x40,
+	S2MPG10_METER_ACC_DATA_CH0_2,
+	S2MPG10_METER_ACC_DATA_CH0_3,
+	S2MPG10_METER_ACC_DATA_CH0_4,
+	S2MPG10_METER_ACC_DATA_CH0_5,
+	S2MPG10_METER_ACC_DATA_CH0_6,
+	S2MPG10_METER_ACC_DATA_CH1_1,
+	S2MPG10_METER_ACC_DATA_CH1_2,
+	S2MPG10_METER_ACC_DATA_CH1_3,
+	S2MPG10_METER_ACC_DATA_CH1_4,
+	S2MPG10_METER_ACC_DATA_CH1_5,
+	S2MPG10_METER_ACC_DATA_CH1_6,
+	S2MPG10_METER_ACC_DATA_CH2_1,
+	S2MPG10_METER_ACC_DATA_CH2_2,
+	S2MPG10_METER_ACC_DATA_CH2_3,
+	S2MPG10_METER_ACC_DATA_CH2_4,
+	S2MPG10_METER_ACC_DATA_CH2_5,
+	S2MPG10_METER_ACC_DATA_CH2_6,
+	S2MPG10_METER_ACC_DATA_CH3_1,
+	S2MPG10_METER_ACC_DATA_CH3_2,
+	S2MPG10_METER_ACC_DATA_CH3_3,
+	S2MPG10_METER_ACC_DATA_CH3_4,
+	S2MPG10_METER_ACC_DATA_CH3_5,
+	S2MPG10_METER_ACC_DATA_CH3_6,
+	S2MPG10_METER_ACC_DATA_CH4_1,
+	S2MPG10_METER_ACC_DATA_CH4_2,
+	S2MPG10_METER_ACC_DATA_CH4_3,
+	S2MPG10_METER_ACC_DATA_CH4_4,
+	S2MPG10_METER_ACC_DATA_CH4_5,
+	S2MPG10_METER_ACC_DATA_CH4_6,
+	S2MPG10_METER_ACC_DATA_CH5_1,
+	S2MPG10_METER_ACC_DATA_CH5_2,
+	S2MPG10_METER_ACC_DATA_CH5_3,
+	S2MPG10_METER_ACC_DATA_CH5_4,
+	S2MPG10_METER_ACC_DATA_CH5_5,
+	S2MPG10_METER_ACC_DATA_CH5_6,
+	S2MPG10_METER_ACC_DATA_CH6_1,
+	S2MPG10_METER_ACC_DATA_CH6_2,
+	S2MPG10_METER_ACC_DATA_CH6_3,
+	S2MPG10_METER_ACC_DATA_CH6_4,
+	S2MPG10_METER_ACC_DATA_CH6_5,
+	S2MPG10_METER_ACC_DATA_CH6_6,
+	S2MPG10_METER_ACC_DATA_CH7_1,
+	S2MPG10_METER_ACC_DATA_CH7_2,
+	S2MPG10_METER_ACC_DATA_CH7_3,
+	S2MPG10_METER_ACC_DATA_CH7_4,
+	S2MPG10_METER_ACC_DATA_CH7_5,
+	S2MPG10_METER_ACC_DATA_CH7_6,
+	S2MPG10_METER_ACC_COUNT_1,
+	S2MPG10_METER_ACC_COUNT_2,
+	S2MPG10_METER_ACC_COUNT_3,
+	S2MPG10_METER_LPF_DATA_CH0_1,
+	S2MPG10_METER_LPF_DATA_CH0_2,
+	S2MPG10_METER_LPF_DATA_CH0_3,
+	S2MPG10_METER_LPF_DATA_CH1_1,
+	S2MPG10_METER_LPF_DATA_CH1_2,
+	S2MPG10_METER_LPF_DATA_CH1_3,
+	S2MPG10_METER_LPF_DATA_CH2_1,
+	S2MPG10_METER_LPF_DATA_CH2_2,
+	S2MPG10_METER_LPF_DATA_CH2_3,
+	S2MPG10_METER_LPF_DATA_CH3_1,
+	S2MPG10_METER_LPF_DATA_CH3_2,
+	S2MPG10_METER_LPF_DATA_CH3_3,
+	S2MPG10_METER_LPF_DATA_CH4_1,
+	S2MPG10_METER_LPF_DATA_CH4_2,
+	S2MPG10_METER_LPF_DATA_CH4_3,
+	S2MPG10_METER_LPF_DATA_CH5_1,
+	S2MPG10_METER_LPF_DATA_CH5_2,
+	S2MPG10_METER_LPF_DATA_CH5_3,
+	S2MPG10_METER_LPF_DATA_CH6_1,
+	S2MPG10_METER_LPF_DATA_CH6_2,
+	S2MPG10_METER_LPF_DATA_CH6_3,
+	S2MPG10_METER_LPF_DATA_CH7_1,
+	S2MPG10_METER_LPF_DATA_CH7_2,
+	S2MPG10_METER_LPF_DATA_CH7_3,
+	S2MPG10_METER_DSM_TRIM_OFFSET = 0xee,
+	S2MPG10_METER_BUCK_METER_TRIM3 = 0xf1,
+};
+
+/* S2MPG10 regulator IDs */
+enum s2mpg10_regulators {
+	S2MPG10_LDO1,
+	S2MPG10_LDO2,
+	S2MPG10_LDO3,
+	S2MPG10_LDO4,
+	S2MPG10_LDO5,
+	S2MPG10_LDO6,
+	S2MPG10_LDO7,
+	S2MPG10_LDO8,
+	S2MPG10_LDO9,
+	S2MPG10_LDO10,
+	S2MPG10_LDO11,
+	S2MPG10_LDO12,
+	S2MPG10_LDO13,
+	S2MPG10_LDO14,
+	S2MPG10_LDO15,
+	S2MPG10_LDO16,
+	S2MPG10_LDO17,
+	S2MPG10_LDO18,
+	S2MPG10_LDO19,
+	S2MPG10_LDO20,
+	S2MPG10_LDO21,
+	S2MPG10_LDO22,
+	S2MPG10_LDO23,
+	S2MPG10_LDO24,
+	S2MPG10_LDO25,
+	S2MPG10_LDO26,
+	S2MPG10_LDO27,
+	S2MPG10_LDO28,
+	S2MPG10_LDO29,
+	S2MPG10_LDO30,
+	S2MPG10_LDO31,
+	S2MPG10_BUCK1,
+	S2MPG10_BUCK2,
+	S2MPG10_BUCK3,
+	S2MPG10_BUCK4,
+	S2MPG10_BUCK5,
+	S2MPG10_BUCK6,
+	S2MPG10_BUCK7,
+	S2MPG10_BUCK8,
+	S2MPG10_BUCK9,
+	S2MPG10_BUCK10,
+	S2MPG10_REGULATOR_MAX,
+};
+
+#endif /* __LINUX_MFD_S2MPG10_H */

-- 
2.49.0.604.gff1f9ca942-goog


