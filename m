Return-Path: <devicetree+bounces-72080-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 496DF8FAC9D
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 09:54:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CA73B1F21B09
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 07:54:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E17D1422A1;
	Tue,  4 Jun 2024 07:54:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QCHlwLa0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEA611411FD;
	Tue,  4 Jun 2024 07:54:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717487671; cv=none; b=iaFwIEORO6N6h8OdZDrdoy/pSvTJiNHQtKgvlZw/poofZmlT8z+lDFKN5T6UWfzEjzO8kzkmJ2s/f8fZFQc/F5yWNzX/Yc+3ysR0kClU5Q9/YlTf2MVQ6dwIb4T88P5kZ+5vcAS7mj3RWIH20hJ8mRSUjjGTaZqSMlVHTw8V2oA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717487671; c=relaxed/simple;
	bh=HbqTtoVLC+A0boXGEaAbAoejeuT+J7kYV/q8BnUXUQI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gpYYEvImLUbgh9XCTWnoy/QtDz1efVG21Wbq5BUdgoBNgzHCMiY6/999XApcFbr/KKZ3rsDwJ19lBcrzppPbVTPV7uydpLTY/0KcmQhEoEwzSbdrl4z9V6tIBMc74H/ctzZBpT3NY2SwCBjnXMdDz5z/6E4gC8i3SlbPO2Uop98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QCHlwLa0; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-52b88335dd7so5004073e87.1;
        Tue, 04 Jun 2024 00:54:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717487666; x=1718092466; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=JyUEGfwNIlgcpiL6KOfpy0N+0ntPCCub6Y5dPFU3FaY=;
        b=QCHlwLa0NghCUb86ge+e5EDlQUQEvZAxxRhaRClmKP/GD5X6qz7oCXYdwKJvhO4MPe
         jEVVl8rmBhHCY1K6yw9mZhMN3zInpcoQ+cx7vTA11PI2mUy+mp9jVKEtAJ8Ijl8nEhOQ
         Y8WHZqhTe8DxwBxUHZCWYJZ4ZOGrhOl8NjhHhxzEnEoVwHr/1VMxKU8KHrLEOBgzzx2n
         UCmuEJHkqN35h+yvbIZVufW2hz96mvtAj5d/NyXWUzORP8qvssbnN0pWfvm0I5hoXk1l
         GwGwa4IJs6DEKiH0xa637QvkyPK9Bfl4MK4B94B5SbSd0hk20uagmZuxK0MvdkrzqoAi
         pWtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717487666; x=1718092466;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JyUEGfwNIlgcpiL6KOfpy0N+0ntPCCub6Y5dPFU3FaY=;
        b=unzCqgq8hgAm1GYouoiKhRk1Np2NofQqi0DE0/4+8J948npu3IkVAWNaIlZghoQvc3
         tPnqtQGoV6JM/B2/6/go535LiBzi6E8cXDIhzpzBD818xWDOsnsESMckhwpXMsiebCWZ
         1YcJwZukFIIkW77XXlvnsMm3dBpvPtcMm4edaOIp0BxRTB7iAOASP8n0nyVvcD7KRx/h
         yOac0L3GRCZUaM/Z7h77V96TzMNh7LTyFtLiDJjBVovOaRsokWOtQMi3ilCnouXzspB8
         UGm5CKkQJP0Lm1J7bCmUXpoS8r1I4qCh7zzvXPbOcFQcwxvQDC/uGwQ6hMWMJZA8m2e5
         JNHg==
X-Forwarded-Encrypted: i=1; AJvYcCVrXn4Z/CHQxyjXFissYXbOYdsuJoXX2I3jn/X7WlMOQ6TLv1QvmmjPxZXqwBE5KbrSKEfYWM5jDIDixkz4Kbp/7y9QrKYRsG3Mpoaht3HkKYBlXpka70WI/XuSJ5ZVBxC2c/tDVKYr8SYEuFXLg4XFwwYrB6oPk4Ri9e0jYH2dQgi7Q7T6jD4Y
X-Gm-Message-State: AOJu0Yx8HcqU8WcKs6pSzkBdy85bPuJii9VjSG5BdML7P3iBPyd/ahpR
	yeuxkOmfURIWM5EBSfuQ3Pt27eVEh3pfvaTRiU3IwEYFwa8ONH0/
X-Google-Smtp-Source: AGHT+IFpUMZlU6Ii2ldx0A0UBfq9XW0giFfAasE+mEDNxBnFjrtYTyrU3KltDVMK5YrdafJPl20aag==
X-Received: by 2002:a05:6512:2144:b0:52b:79d6:5c28 with SMTP id 2adb3069b0e04-52b896bfc36mr6901384e87.52.1717487665416;
        Tue, 04 Jun 2024 00:54:25 -0700 (PDT)
Received: from fedora ([213.255.186.46])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52b84d3ebc4sm1455977e87.66.2024.06.04.00.54.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Jun 2024 00:54:24 -0700 (PDT)
Date: Tue, 4 Jun 2024 10:54:20 +0300
From: Matti Vaittinen <mazziesaccount@gmail.com>
To: Matti Vaittinen <mazziesaccount@gmail.com>,
	Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Matti Vaittinen <mazziesaccount@gmail.com>,
	Wim Van Sebroeck <wim@linux-watchdog.org>,
	Guenter Roeck <linux@roeck-us.net>,
	Thomas Gleixner <tglx@linutronix.de>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-watchdog@vger.kernel.org
Subject: [PATCH v3 03/10] mfd: support ROHM BD96801 PMIC core
Message-ID: <97cd372d4502597bf051f0ff52f718eab9b186aa.1717486682.git.mazziesaccount@gmail.com>
References: <cover.1717486682.git.mazziesaccount@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="FQ8I7YaVdskqebyO"
Content-Disposition: inline
In-Reply-To: <cover.1717486682.git.mazziesaccount@gmail.com>


--FQ8I7YaVdskqebyO
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

The ROHM BD96801 PMIC is highly customizable automotive grade PMIC
which integrates regulator and watchdog funtionalities.

Provide INTB IRQ and register accesses for regulator/watchdog drivers.

Signed-off-by: Matti Vaittinen <mazziesaccount@gmail.com>

---
Changelog:
v2 =3D>:
- No changes

v1 =3D> v2:
- Drop unused enum
- Improve error prints
- improve comments

 RFCv2 =3D> v1:
- drop ERRB interrupts (for now)
- bd96801: Unlock registers in core driver

Changelog: RFCv1 =3D> RFCv2
- Work-around the IRQ domain name conflict
- Add watchdog IRQ
- Various styling fixes based on review by Lee
---
 drivers/mfd/Kconfig              |  13 ++
 drivers/mfd/Makefile             |   1 +
 drivers/mfd/rohm-bd96801.c       | 273 +++++++++++++++++++++++++++++++
 include/linux/mfd/rohm-bd96801.h | 215 ++++++++++++++++++++++++
 include/linux/mfd/rohm-generic.h |   1 +
 5 files changed, 503 insertions(+)
 create mode 100644 drivers/mfd/rohm-bd96801.c
 create mode 100644 include/linux/mfd/rohm-bd96801.h

diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
index 266b4f54af60..68cc7af9ef97 100644
--- a/drivers/mfd/Kconfig
+++ b/drivers/mfd/Kconfig
@@ -2089,6 +2089,19 @@ config MFD_ROHM_BD957XMUF
 	  BD9573MUF Power Management ICs. BD9576 and BD9573 are primarily
 	  designed to be used to power R-Car series processors.
=20
+config MFD_ROHM_BD96801
+	tristate "ROHM BD96801 Power Management IC"
+	depends on I2C=3Dy
+	depends on OF
+	select REGMAP_I2C
+	select REGMAP_IRQ
+	select MFD_CORE
+	help
+	  Select this option to get support for the ROHM BD96801 Power
+	  Management IC. The ROHM BD96801 is a highly scalable Power Management
+	  IC for industrial and automotive use. The BD96801 can be used as a
+	  master PMIC in a chained PMIC solution with suitable companion PMICs.
+
 config MFD_STM32_LPTIMER
 	tristate "Support for STM32 Low-Power Timer"
 	depends on (ARCH_STM32 && OF) || COMPILE_TEST
diff --git a/drivers/mfd/Makefile b/drivers/mfd/Makefile
index c66f07edcd0e..e792892d4a8b 100644
--- a/drivers/mfd/Makefile
+++ b/drivers/mfd/Makefile
@@ -264,6 +264,7 @@ obj-$(CONFIG_RAVE_SP_CORE)	+=3D rave-sp.o
 obj-$(CONFIG_MFD_ROHM_BD71828)	+=3D rohm-bd71828.o
 obj-$(CONFIG_MFD_ROHM_BD718XX)	+=3D rohm-bd718x7.o
 obj-$(CONFIG_MFD_ROHM_BD957XMUF)	+=3D rohm-bd9576.o
+obj-$(CONFIG_MFD_ROHM_BD96801)	+=3D rohm-bd96801.o
 obj-$(CONFIG_MFD_STMFX) 	+=3D stmfx.o
 obj-$(CONFIG_MFD_KHADAS_MCU) 	+=3D khadas-mcu.o
 obj-$(CONFIG_MFD_ACER_A500_EC)	+=3D acer-ec-a500.o
diff --git a/drivers/mfd/rohm-bd96801.c b/drivers/mfd/rohm-bd96801.c
new file mode 100644
index 000000000000..1c2a9591be7b
--- /dev/null
+++ b/drivers/mfd/rohm-bd96801.c
@@ -0,0 +1,273 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (C) 2024 ROHM Semiconductors
+ *
+ * ROHM BD96801 PMIC driver
+ *
+ * This version of the "BD86801 scalable PMIC"'s driver supports only very
+ * basic set of the PMIC features. Most notably, there is no support for
+ * the ERRB interrupt and the configurations which should be done when the
+ * PMIC is in STBY mode.
+ *
+ * Supporting the ERRB interrupt would require dropping the regmap-IRQ
+ * usage or working around (or accepting a presense of) a naming conflict
+ * in debugFS IRQs.
+ *
+ * Being able to reliably do the configurations like changing the
+ * regulator safety limits (like limits for the over/under -voltages, over
+ * current, thermal protection) would require the configuring driver to be
+ * synchronized with entity causing the PMIC state transitions. Eg, one
+ * should be able to ensure the PMIC is in STBY state when the
+ * configurations are applied to the hardware. How and when the PMIC state
+ * transitions are to be done is likely to be very system specific, as will
+ * be the need to configure these safety limits. Hence it's not simple to
+ * come up with a generic solution.
+ *
+ * Users who require the ERRB handling and STBY state configurations can
+ * have a look at the original RFC:
+ * https://lore.kernel.org/all/cover.1712920132.git.mazziesaccount@gmail.c=
om/
+ * which implements a workaround to debugFS naming conflict and some of
+ * the safety limit configurations - but leaves the state change handling
+ * and synchronization to be implemented.
+ *
+ * It would be great to hear (and receive a patch!) if you implement the
+ * STBY configuration support or a proper fix to the debugFS naming
+ * conflict in your downstream driver ;)
+ */
+
+#include <linux/i2c.h>
+#include <linux/interrupt.h>
+#include <linux/mfd/core.h>
+#include <linux/module.h>
+#include <linux/property.h>
+#include <linux/regmap.h>
+#include <linux/types.h>
+
+#include <linux/mfd/rohm-bd96801.h>
+#include <linux/mfd/rohm-generic.h>
+static const struct resource regulator_intb_irqs[] =3D {
+	DEFINE_RES_IRQ_NAMED(BD96801_TW_STAT, "bd96801-core-thermal"),
+
+	DEFINE_RES_IRQ_NAMED(BD96801_BUCK1_OCPH_STAT, "bd96801-buck1-overcurr-h"),
+	DEFINE_RES_IRQ_NAMED(BD96801_BUCK1_OCPL_STAT, "bd96801-buck1-overcurr-l"),
+	DEFINE_RES_IRQ_NAMED(BD96801_BUCK1_OCPN_STAT, "bd96801-buck1-overcurr-n"),
+	DEFINE_RES_IRQ_NAMED(BD96801_BUCK1_OVD_STAT, "bd96801-buck1-overvolt"),
+	DEFINE_RES_IRQ_NAMED(BD96801_BUCK1_UVD_STAT, "bd96801-buck1-undervolt"),
+	DEFINE_RES_IRQ_NAMED(BD96801_BUCK1_TW_CH_STAT, "bd96801-buck1-thermal"),
+
+	DEFINE_RES_IRQ_NAMED(BD96801_BUCK2_OCPH_STAT, "bd96801-buck2-overcurr-h"),
+	DEFINE_RES_IRQ_NAMED(BD96801_BUCK2_OCPL_STAT, "bd96801-buck2-overcurr-l"),
+	DEFINE_RES_IRQ_NAMED(BD96801_BUCK2_OCPN_STAT, "bd96801-buck2-overcurr-n"),
+	DEFINE_RES_IRQ_NAMED(BD96801_BUCK2_OVD_STAT, "bd96801-buck2-overvolt"),
+	DEFINE_RES_IRQ_NAMED(BD96801_BUCK2_UVD_STAT, "bd96801-buck2-undervolt"),
+	DEFINE_RES_IRQ_NAMED(BD96801_BUCK2_TW_CH_STAT, "bd96801-buck2-thermal"),
+
+	DEFINE_RES_IRQ_NAMED(BD96801_BUCK3_OCPH_STAT, "bd96801-buck3-overcurr-h"),
+	DEFINE_RES_IRQ_NAMED(BD96801_BUCK3_OCPL_STAT, "bd96801-buck3-overcurr-l"),
+	DEFINE_RES_IRQ_NAMED(BD96801_BUCK3_OCPN_STAT, "bd96801-buck3-overcurr-n"),
+	DEFINE_RES_IRQ_NAMED(BD96801_BUCK3_OVD_STAT, "bd96801-buck3-overvolt"),
+	DEFINE_RES_IRQ_NAMED(BD96801_BUCK3_UVD_STAT, "bd96801-buck3-undervolt"),
+	DEFINE_RES_IRQ_NAMED(BD96801_BUCK3_TW_CH_STAT, "bd96801-buck3-thermal"),
+
+	DEFINE_RES_IRQ_NAMED(BD96801_BUCK4_OCPH_STAT, "bd96801-buck4-overcurr-h"),
+	DEFINE_RES_IRQ_NAMED(BD96801_BUCK4_OCPL_STAT, "bd96801-buck4-overcurr-l"),
+	DEFINE_RES_IRQ_NAMED(BD96801_BUCK4_OCPN_STAT, "bd96801-buck4-overcurr-n"),
+	DEFINE_RES_IRQ_NAMED(BD96801_BUCK4_OVD_STAT, "bd96801-buck4-overvolt"),
+	DEFINE_RES_IRQ_NAMED(BD96801_BUCK4_UVD_STAT, "bd96801-buck4-undervolt"),
+	DEFINE_RES_IRQ_NAMED(BD96801_BUCK4_TW_CH_STAT, "bd96801-buck4-thermal"),
+
+	DEFINE_RES_IRQ_NAMED(BD96801_LDO5_OCPH_STAT, "bd96801-ldo5-overcurr"),
+	DEFINE_RES_IRQ_NAMED(BD96801_LDO5_OVD_STAT, "bd96801-ldo5-overvolt"),
+	DEFINE_RES_IRQ_NAMED(BD96801_LDO5_UVD_STAT, "bd96801-ldo5-undervolt"),
+
+	DEFINE_RES_IRQ_NAMED(BD96801_LDO6_OCPH_STAT, "bd96801-ldo6-overcurr"),
+	DEFINE_RES_IRQ_NAMED(BD96801_LDO6_OVD_STAT, "bd96801-ldo6-overvolt"),
+	DEFINE_RES_IRQ_NAMED(BD96801_LDO6_UVD_STAT, "bd96801-ldo6-undervolt"),
+
+	DEFINE_RES_IRQ_NAMED(BD96801_LDO7_OCPH_STAT, "bd96801-ldo7-overcurr"),
+	DEFINE_RES_IRQ_NAMED(BD96801_LDO7_OVD_STAT, "bd96801-ldo7-overvolt"),
+	DEFINE_RES_IRQ_NAMED(BD96801_LDO7_UVD_STAT, "bd96801-ldo7-undervolt"),
+};
+
+static const struct resource wdg_intb_irqs[] =3D {
+	DEFINE_RES_IRQ_NAMED(BD96801_WDT_ERR_STAT, "bd96801-wdg"),
+};
+
+static struct mfd_cell bd96801_mfd_cells[] =3D {
+	{
+		.name =3D "bd96801-wdt",
+		.resources =3D wdg_intb_irqs,
+		.num_resources =3D ARRAY_SIZE(wdg_intb_irqs),
+	}, {
+		.name =3D "bd96801-pmic",
+		.resources =3D regulator_intb_irqs,
+		.num_resources =3D ARRAY_SIZE(regulator_intb_irqs),
+	},
+};
+
+static const struct regmap_range bd96801_volatile_ranges[] =3D {
+	/* Status registers */
+	regmap_reg_range(BD96801_REG_WD_FEED, BD96801_REG_WD_FAILCOUNT),
+	regmap_reg_range(BD96801_REG_WD_ASK, BD96801_REG_WD_ASK),
+	regmap_reg_range(BD96801_REG_WD_STATUS, BD96801_REG_WD_STATUS),
+	regmap_reg_range(BD96801_REG_PMIC_STATE, BD96801_REG_INT_LDO7_INTB),
+	/* Registers which do not update value unless PMIC is in STBY */
+	regmap_reg_range(BD96801_REG_SSCG_CTRL, BD96801_REG_SHD_INTB),
+	regmap_reg_range(BD96801_REG_BUCK_OVP, BD96801_REG_BOOT_OVERTIME),
+	/*
+	 * LDO control registers have single bit (LDO MODE) which does not
+	 * change when we write it unless PMIC is in STBY. It's safer to not
+	 * cache it.
+	 */
+	regmap_reg_range(BD96801_LDO5_VOL_LVL_REG, BD96801_LDO7_VOL_LVL_REG),
+};
+
+static const struct regmap_access_table volatile_regs =3D {
+	.yes_ranges =3D bd96801_volatile_ranges,
+	.n_yes_ranges =3D ARRAY_SIZE(bd96801_volatile_ranges),
+};
+
+static const struct regmap_irq bd96801_intb_irqs[] =3D {
+	/* STATUS SYSTEM INTB */
+	REGMAP_IRQ_REG(BD96801_TW_STAT, 0, BD96801_TW_STAT_MASK),
+	REGMAP_IRQ_REG(BD96801_WDT_ERR_STAT, 0, BD96801_WDT_ERR_STAT_MASK),
+	REGMAP_IRQ_REG(BD96801_I2C_ERR_STAT, 0, BD96801_I2C_ERR_STAT_MASK),
+	REGMAP_IRQ_REG(BD96801_CHIP_IF_ERR_STAT, 0, BD96801_CHIP_IF_ERR_STAT_MASK=
),
+	/* STATUS BUCK1 INTB */
+	REGMAP_IRQ_REG(BD96801_BUCK1_OCPH_STAT, 1, BD96801_BUCK_OCPH_STAT_MASK),
+	REGMAP_IRQ_REG(BD96801_BUCK1_OCPL_STAT, 1, BD96801_BUCK_OCPL_STAT_MASK),
+	REGMAP_IRQ_REG(BD96801_BUCK1_OCPN_STAT, 1, BD96801_BUCK_OCPN_STAT_MASK),
+	REGMAP_IRQ_REG(BD96801_BUCK1_OVD_STAT, 1, BD96801_BUCK_OVD_STAT_MASK),
+	REGMAP_IRQ_REG(BD96801_BUCK1_UVD_STAT, 1, BD96801_BUCK_UVD_STAT_MASK),
+	REGMAP_IRQ_REG(BD96801_BUCK1_TW_CH_STAT, 1, BD96801_BUCK_TW_CH_STAT_MASK),
+	/* BUCK 2 INTB */
+	REGMAP_IRQ_REG(BD96801_BUCK2_OCPH_STAT, 2, BD96801_BUCK_OCPH_STAT_MASK),
+	REGMAP_IRQ_REG(BD96801_BUCK2_OCPL_STAT, 2, BD96801_BUCK_OCPL_STAT_MASK),
+	REGMAP_IRQ_REG(BD96801_BUCK2_OCPN_STAT, 2, BD96801_BUCK_OCPN_STAT_MASK),
+	REGMAP_IRQ_REG(BD96801_BUCK2_OVD_STAT, 2, BD96801_BUCK_OVD_STAT_MASK),
+	REGMAP_IRQ_REG(BD96801_BUCK2_UVD_STAT, 2, BD96801_BUCK_UVD_STAT_MASK),
+	REGMAP_IRQ_REG(BD96801_BUCK2_TW_CH_STAT, 2, BD96801_BUCK_TW_CH_STAT_MASK),
+	/* BUCK 3 INTB */
+	REGMAP_IRQ_REG(BD96801_BUCK3_OCPH_STAT, 3, BD96801_BUCK_OCPH_STAT_MASK),
+	REGMAP_IRQ_REG(BD96801_BUCK3_OCPL_STAT, 3, BD96801_BUCK_OCPL_STAT_MASK),
+	REGMAP_IRQ_REG(BD96801_BUCK3_OCPN_STAT, 3, BD96801_BUCK_OCPN_STAT_MASK),
+	REGMAP_IRQ_REG(BD96801_BUCK3_OVD_STAT, 3, BD96801_BUCK_OVD_STAT_MASK),
+	REGMAP_IRQ_REG(BD96801_BUCK3_UVD_STAT, 3, BD96801_BUCK_UVD_STAT_MASK),
+	REGMAP_IRQ_REG(BD96801_BUCK3_TW_CH_STAT, 3, BD96801_BUCK_TW_CH_STAT_MASK),
+	/* BUCK 4 INTB */
+	REGMAP_IRQ_REG(BD96801_BUCK4_OCPH_STAT, 4, BD96801_BUCK_OCPH_STAT_MASK),
+	REGMAP_IRQ_REG(BD96801_BUCK4_OCPL_STAT, 4, BD96801_BUCK_OCPL_STAT_MASK),
+	REGMAP_IRQ_REG(BD96801_BUCK4_OCPN_STAT, 4, BD96801_BUCK_OCPN_STAT_MASK),
+	REGMAP_IRQ_REG(BD96801_BUCK4_OVD_STAT, 4, BD96801_BUCK_OVD_STAT_MASK),
+	REGMAP_IRQ_REG(BD96801_BUCK4_UVD_STAT, 4, BD96801_BUCK_UVD_STAT_MASK),
+	REGMAP_IRQ_REG(BD96801_BUCK4_TW_CH_STAT, 4, BD96801_BUCK_TW_CH_STAT_MASK),
+	/* LDO5 INTB */
+	REGMAP_IRQ_REG(BD96801_LDO5_OCPH_STAT, 5, BD96801_LDO_OCPH_STAT_MASK),
+	REGMAP_IRQ_REG(BD96801_LDO5_OVD_STAT, 5, BD96801_LDO_OVD_STAT_MASK),
+	REGMAP_IRQ_REG(BD96801_LDO5_UVD_STAT, 5, BD96801_LDO_UVD_STAT_MASK),
+	/* LDO6 INTB */
+	REGMAP_IRQ_REG(BD96801_LDO6_OCPH_STAT, 6, BD96801_LDO_OCPH_STAT_MASK),
+	REGMAP_IRQ_REG(BD96801_LDO6_OVD_STAT, 6, BD96801_LDO_OVD_STAT_MASK),
+	REGMAP_IRQ_REG(BD96801_LDO6_UVD_STAT, 6, BD96801_LDO_UVD_STAT_MASK),
+	/* LDO7 INTB */
+	REGMAP_IRQ_REG(BD96801_LDO7_OCPH_STAT, 7, BD96801_LDO_OCPH_STAT_MASK),
+	REGMAP_IRQ_REG(BD96801_LDO7_OVD_STAT, 7, BD96801_LDO_OVD_STAT_MASK),
+	REGMAP_IRQ_REG(BD96801_LDO7_UVD_STAT, 7, BD96801_LDO_UVD_STAT_MASK),
+};
+
+static struct regmap_irq_chip bd96801_irq_chip_intb =3D {
+	.name =3D "bd96801-irq-intb",
+	.main_status =3D BD96801_REG_INT_MAIN,
+	.num_main_regs =3D 1,
+	.irqs =3D &bd96801_intb_irqs[0],
+	.num_irqs =3D ARRAY_SIZE(bd96801_intb_irqs),
+	.status_base =3D BD96801_REG_INT_SYS_INTB,
+	.mask_base =3D BD96801_REG_MASK_SYS_INTB,
+	.ack_base =3D BD96801_REG_INT_SYS_INTB,
+	.init_ack_masked =3D true,
+	.num_regs =3D 8,
+	.irq_reg_stride =3D 1,
+};
+
+static const struct regmap_config bd96801_regmap_config =3D {
+	.reg_bits =3D 8,
+	.val_bits =3D 8,
+	.volatile_table =3D &volatile_regs,
+	.cache_type =3D REGCACHE_RBTREE,
+};
+
+static int bd96801_i2c_probe(struct i2c_client *i2c)
+{
+	struct regmap_irq_chip_data *intb_irq_data;
+	const struct fwnode_handle *fwnode;
+	struct irq_domain *intb_domain;
+	struct regmap *regmap;
+	int ret, intb_irq;
+
+	fwnode =3D dev_fwnode(&i2c->dev);
+	if (!fwnode)
+		return dev_err_probe(&i2c->dev, -EINVAL, "Failed to find fwnode\n");
+
+	intb_irq =3D fwnode_irq_get_byname(fwnode, "intb");
+	if (intb_irq < 0)
+		return dev_err_probe(&i2c->dev, intb_irq, "INTB IRQ not configured\n");
+
+	regmap =3D devm_regmap_init_i2c(i2c, &bd96801_regmap_config);
+	if (IS_ERR(regmap))
+		return dev_err_probe(&i2c->dev, PTR_ERR(regmap),
+				    "Regmap initialization failed\n");
+
+	ret =3D regmap_write(regmap, BD96801_LOCK_REG, BD96801_UNLOCK);
+	if (ret)
+		return dev_err_probe(&i2c->dev, ret, "Failed to unlock PMIC\n");
+
+	ret =3D devm_regmap_add_irq_chip(&i2c->dev, regmap, intb_irq,
+				       IRQF_ONESHOT, 0, &bd96801_irq_chip_intb,
+				       &intb_irq_data);
+	if (ret)
+		return dev_err_probe(&i2c->dev, ret, "Failed to add INTB IRQ chip\n");
+
+	intb_domain =3D regmap_irq_get_domain(intb_irq_data);
+
+	ret =3D devm_mfd_add_devices(&i2c->dev, PLATFORM_DEVID_AUTO,
+				   bd96801_mfd_cells,
+				   ARRAY_SIZE(bd96801_mfd_cells), NULL, 0,
+				   intb_domain);
+
+	if (ret)
+		dev_err(&i2c->dev, "Failed to create subdevices\n");
+
+	return ret;
+}
+
+static const struct of_device_id bd96801_of_match[] =3D {
+	{ .compatible =3D "rohm,bd96801",	},
+	{ }
+};
+MODULE_DEVICE_TABLE(of, bd96801_of_match);
+
+static struct i2c_driver bd96801_i2c_driver =3D {
+	.driver =3D {
+		.name =3D "rohm-bd96801",
+		.of_match_table =3D bd96801_of_match,
+	},
+	.probe =3D bd96801_i2c_probe,
+};
+
+static int __init bd96801_i2c_init(void)
+{
+	return i2c_add_driver(&bd96801_i2c_driver);
+}
+
+/* Initialise early so consumer devices can complete system boot */
+subsys_initcall(bd96801_i2c_init);
+
+static void __exit bd96801_i2c_exit(void)
+{
+	i2c_del_driver(&bd96801_i2c_driver);
+}
+module_exit(bd96801_i2c_exit);
+
+MODULE_AUTHOR("Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>");
+MODULE_DESCRIPTION("ROHM BD96801 Power Management IC driver");
+MODULE_LICENSE("GPL");
diff --git a/include/linux/mfd/rohm-bd96801.h b/include/linux/mfd/rohm-bd96=
801.h
new file mode 100644
index 000000000000..e2d9e10b6364
--- /dev/null
+++ b/include/linux/mfd/rohm-bd96801.h
@@ -0,0 +1,215 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/* Copyright (C) 2024 ROHM Semiconductors */
+
+#ifndef __MFD_BD96801_H__
+#define __MFD_BD96801_H__
+
+#define BD96801_REG_SSCG_CTRL		0x09
+#define BD96801_REG_SHD_INTB            0x20
+#define BD96801_LDO5_VOL_LVL_REG	0x2c
+#define BD96801_LDO6_VOL_LVL_REG	0x2d
+#define BD96801_LDO7_VOL_LVL_REG	0x2e
+#define BD96801_REG_BUCK_OVP		0x30
+#define BD96801_REG_BUCK_OVD		0x35
+#define BD96801_REG_LDO_OVP		0x31
+#define BD96801_REG_LDO_OVD		0x36
+#define BD96801_REG_BOOT_OVERTIME	0x3a
+#define BD96801_REG_WD_TMO		0x40
+#define BD96801_REG_WD_CONF		0x41
+#define BD96801_REG_WD_FEED		0x42
+#define BD96801_REG_WD_FAILCOUNT	0x43
+#define BD96801_REG_WD_ASK		0x46
+#define BD96801_REG_WD_STATUS		0x4a
+#define BD96801_REG_PMIC_STATE		0x4f
+#define BD96801_REG_EXT_STATE		0x50
+
+#define BD96801_STATE_STBY		0x09
+
+#define BD96801_LOCK_REG		0x04
+#define BD96801_UNLOCK			0x9d
+#define BD96801_LOCK			0x00
+
+/* IRQ register area */
+#define BD96801_REG_INT_MAIN		0x51
+
+/*
+ * The BD96801 has two physical IRQ lines, INTB and ERRB.
+ *
+ * The 'main status register' is located at 0x51.
+ * The ERRB status registers are located at 0x52 ... 0x5B
+ * INTB status registers are at range 0x5c ... 0x63
+ */
+#define BD96801_REG_INT_SYS_ERRB1	0x52
+#define BD96801_REG_INT_SYS_INTB	0x5c
+#define BD96801_REG_INT_LDO7_INTB	0x63
+
+/* MASK registers */
+#define BD96801_REG_MASK_SYS_INTB	0x73
+#define BD96801_REG_MASK_SYS_ERRB	0x69
+
+#define BD96801_MAX_REGISTER		0x7a
+
+#define BD96801_OTP_ERR_MASK		BIT(0)
+#define BD96801_DBIST_ERR_MASK		BIT(1)
+#define BD96801_EEP_ERR_MASK		BIT(2)
+#define BD96801_ABIST_ERR_MASK		BIT(3)
+#define BD96801_PRSTB_ERR_MASK		BIT(4)
+#define BD96801_DRMOS1_ERR_MASK		BIT(5)
+#define BD96801_DRMOS2_ERR_MASK		BIT(6)
+#define BD96801_SLAVE_ERR_MASK		BIT(7)
+#define BD96801_VREF_ERR_MASK		BIT(0)
+#define BD96801_TSD_ERR_MASK		BIT(1)
+#define BD96801_UVLO_ERR_MASK		BIT(2)
+#define BD96801_OVLO_ERR_MASK		BIT(3)
+#define BD96801_OSC_ERR_MASK		BIT(4)
+#define BD96801_PON_ERR_MASK		BIT(5)
+#define BD96801_POFF_ERR_MASK		BIT(6)
+#define BD96801_CMD_SHDN_ERR_MASK	BIT(7)
+#define BD96801_INT_PRSTB_WDT_ERR_MASK	BIT(0)
+#define BD96801_INT_CHIP_IF_ERR_MASK	BIT(3)
+#define BD96801_INT_SHDN_ERR_MASK	BIT(7)
+#define BD96801_OUT_PVIN_ERR_MASK	BIT(0)
+#define BD96801_OUT_OVP_ERR_MASK	BIT(1)
+#define BD96801_OUT_UVP_ERR_MASK	BIT(2)
+#define BD96801_OUT_SHDN_ERR_MASK	BIT(7)
+
+/* ERRB IRQs */
+enum {
+	/* Reg 0x52, 0x53, 0x54 - ERRB system IRQs */
+	BD96801_OTP_ERR_STAT,
+	BD96801_DBIST_ERR_STAT,
+	BD96801_EEP_ERR_STAT,
+	BD96801_ABIST_ERR_STAT,
+	BD96801_PRSTB_ERR_STAT,
+	BD96801_DRMOS1_ERR_STAT,
+	BD96801_DRMOS2_ERR_STAT,
+	BD96801_SLAVE_ERR_STAT,
+	BD96801_VREF_ERR_STAT,
+	BD96801_TSD_ERR_STAT,
+	BD96801_UVLO_ERR_STAT,
+	BD96801_OVLO_ERR_STAT,
+	BD96801_OSC_ERR_STAT,
+	BD96801_PON_ERR_STAT,
+	BD96801_POFF_ERR_STAT,
+	BD96801_CMD_SHDN_ERR_STAT,
+	BD96801_INT_PRSTB_WDT_ERR,
+	BD96801_INT_CHIP_IF_ERR,
+	BD96801_INT_SHDN_ERR_STAT,
+
+	/* Reg 0x55 BUCK1 ERR IRQs */
+	BD96801_BUCK1_PVIN_ERR_STAT,
+	BD96801_BUCK1_OVP_ERR_STAT,
+	BD96801_BUCK1_UVP_ERR_STAT,
+	BD96801_BUCK1_SHDN_ERR_STAT,
+
+	/* Reg 0x56 BUCK2 ERR IRQs */
+	BD96801_BUCK2_PVIN_ERR_STAT,
+	BD96801_BUCK2_OVP_ERR_STAT,
+	BD96801_BUCK2_UVP_ERR_STAT,
+	BD96801_BUCK2_SHDN_ERR_STAT,
+
+	/* Reg 0x57 BUCK3 ERR IRQs */
+	BD96801_BUCK3_PVIN_ERR_STAT,
+	BD96801_BUCK3_OVP_ERR_STAT,
+	BD96801_BUCK3_UVP_ERR_STAT,
+	BD96801_BUCK3_SHDN_ERR_STAT,
+
+	/* Reg 0x58 BUCK4 ERR IRQs */
+	BD96801_BUCK4_PVIN_ERR_STAT,
+	BD96801_BUCK4_OVP_ERR_STAT,
+	BD96801_BUCK4_UVP_ERR_STAT,
+	BD96801_BUCK4_SHDN_ERR_STAT,
+
+	/* Reg 0x59 LDO5 ERR IRQs */
+	BD96801_LDO5_PVIN_ERR_STAT,
+	BD96801_LDO5_OVP_ERR_STAT,
+	BD96801_LDO5_UVP_ERR_STAT,
+	BD96801_LDO5_SHDN_ERR_STAT,
+
+	/* Reg 0x5a LDO6 ERR IRQs */
+	BD96801_LDO6_PVIN_ERR_STAT,
+	BD96801_LDO6_OVP_ERR_STAT,
+	BD96801_LDO6_UVP_ERR_STAT,
+	BD96801_LDO6_SHDN_ERR_STAT,
+
+	/* Reg 0x5b LDO7 ERR IRQs */
+	BD96801_LDO7_PVIN_ERR_STAT,
+	BD96801_LDO7_OVP_ERR_STAT,
+	BD96801_LDO7_UVP_ERR_STAT,
+	BD96801_LDO7_SHDN_ERR_STAT,
+};
+
+/* INTB IRQs */
+enum {
+	/* Reg 0x5c (System INTB) */
+	BD96801_TW_STAT,
+	BD96801_WDT_ERR_STAT,
+	BD96801_I2C_ERR_STAT,
+	BD96801_CHIP_IF_ERR_STAT,
+
+	/* Reg 0x5d (BUCK1 INTB) */
+	BD96801_BUCK1_OCPH_STAT,
+	BD96801_BUCK1_OCPL_STAT,
+	BD96801_BUCK1_OCPN_STAT,
+	BD96801_BUCK1_OVD_STAT,
+	BD96801_BUCK1_UVD_STAT,
+	BD96801_BUCK1_TW_CH_STAT,
+
+	/* Reg 0x5e (BUCK2 INTB) */
+	BD96801_BUCK2_OCPH_STAT,
+	BD96801_BUCK2_OCPL_STAT,
+	BD96801_BUCK2_OCPN_STAT,
+	BD96801_BUCK2_OVD_STAT,
+	BD96801_BUCK2_UVD_STAT,
+	BD96801_BUCK2_TW_CH_STAT,
+
+	/* Reg 0x5f (BUCK3 INTB)*/
+	BD96801_BUCK3_OCPH_STAT,
+	BD96801_BUCK3_OCPL_STAT,
+	BD96801_BUCK3_OCPN_STAT,
+	BD96801_BUCK3_OVD_STAT,
+	BD96801_BUCK3_UVD_STAT,
+	BD96801_BUCK3_TW_CH_STAT,
+
+	/* Reg 0x60 (BUCK4 INTB)*/
+	BD96801_BUCK4_OCPH_STAT,
+	BD96801_BUCK4_OCPL_STAT,
+	BD96801_BUCK4_OCPN_STAT,
+	BD96801_BUCK4_OVD_STAT,
+	BD96801_BUCK4_UVD_STAT,
+	BD96801_BUCK4_TW_CH_STAT,
+
+	/* Reg 0x61 (LDO5 INTB) */
+	BD96801_LDO5_OCPH_STAT, /* bit [0] */
+	BD96801_LDO5_OVD_STAT,	/* bit [3] */
+	BD96801_LDO5_UVD_STAT,  /* bit [4] */
+
+	/* Reg 0x62 (LDO6 INTB) */
+	BD96801_LDO6_OCPH_STAT, /* bit [0] */
+	BD96801_LDO6_OVD_STAT,	/* bit [3] */
+	BD96801_LDO6_UVD_STAT,  /* bit [4] */
+
+	/* Reg 0x63 (LDO7 INTB) */
+	BD96801_LDO7_OCPH_STAT, /* bit [0] */
+	BD96801_LDO7_OVD_STAT,	/* bit [3] */
+	BD96801_LDO7_UVD_STAT,  /* bit [4] */
+};
+
+/* IRQ MASKs */
+#define BD96801_TW_STAT_MASK		BIT(0)
+#define BD96801_WDT_ERR_STAT_MASK	BIT(1)
+#define BD96801_I2C_ERR_STAT_MASK	BIT(2)
+#define BD96801_CHIP_IF_ERR_STAT_MASK	BIT(3)
+
+#define BD96801_BUCK_OCPH_STAT_MASK	BIT(0)
+#define BD96801_BUCK_OCPL_STAT_MASK	BIT(1)
+#define BD96801_BUCK_OCPN_STAT_MASK	BIT(2)
+#define BD96801_BUCK_OVD_STAT_MASK	BIT(3)
+#define BD96801_BUCK_UVD_STAT_MASK	BIT(4)
+#define BD96801_BUCK_TW_CH_STAT_MASK	BIT(5)
+
+#define BD96801_LDO_OCPH_STAT_MASK	BIT(0)
+#define BD96801_LDO_OVD_STAT_MASK	BIT(3)
+#define BD96801_LDO_UVD_STAT_MASK	BIT(4)
+
+#endif
diff --git a/include/linux/mfd/rohm-generic.h b/include/linux/mfd/rohm-gene=
ric.h
index 4eeb22876bad..e7d4e6afe388 100644
--- a/include/linux/mfd/rohm-generic.h
+++ b/include/linux/mfd/rohm-generic.h
@@ -16,6 +16,7 @@ enum rohm_chip_type {
 	ROHM_CHIP_TYPE_BD71828,
 	ROHM_CHIP_TYPE_BD71837,
 	ROHM_CHIP_TYPE_BD71847,
+	ROHM_CHIP_TYPE_BD96801,
 	ROHM_CHIP_TYPE_AMOUNT
 };
=20
--=20
2.45.1


--=20
Matti Vaittinen, Linux device drivers
ROHM Semiconductors, Finland SWDC
Kiviharjunlenkki 1E
90220 OULU
FINLAND

~~~ "I don't think so," said Rene Descartes. Just then he vanished ~~~
Simon says - in Latin please.
~~~ "non cogito me" dixit Rene Descarte, deinde evanescavit ~~~
Thanks to Simon Glass for the translation =3D]=20

--FQ8I7YaVdskqebyO
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEIx+f8wZb28fLKEhTeFA3/03aocUFAmZeyCwACgkQeFA3/03a
ocUH0gf/WNGEA/HFQi2soOe+xHe9JhJqbW7RtdctswonvaHjhKBvQ7YQ91pbB2RU
LnI4DlOKCG8WeX02RgsWe1llQ58rZx6jXfRqAqqDBjJyaYjTEagwtJNeh3KMZO+X
c69deMG6SOKRd5CQa2M3r/tGVauDgrO0jzzRzoPJXKFS+9XtAqngL1+cAQzBRkJS
2K4LG/GW8jo4oabSlnV9YWk4qdW7H1v6squtJ74Yp/zHAhwYnBECceXpGwcdQleP
3E0yfb5DkuBB8v6lvMuCIgCjgnbS1t6MxoWdfum9dShA7OopoHDrRVBMHbt8ah/d
QX4iHnwF/FOrxA+3HM4/Txip2fcB7A==
=ztkS
-----END PGP SIGNATURE-----

--FQ8I7YaVdskqebyO--

