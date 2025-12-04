Return-Path: <devicetree+bounces-244448-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 643D7CA50E3
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 20:03:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 45C333140C58
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 18:59:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 106DF315D5F;
	Thu,  4 Dec 2025 18:59:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=raptorengineering.com header.i=@raptorengineering.com header.b="mxvVP2e8"
X-Original-To: devicetree@vger.kernel.org
Received: from raptorengineering.com (mail.raptorengineering.com [23.155.224.40])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03C2127AC5C;
	Thu,  4 Dec 2025 18:59:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=23.155.224.40
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764874744; cv=none; b=ELYArzDjD6/Nm94yuq3cASqMJ1euDlqU/WWlzQUjIgXIFOjMnjEs8eev0XlNUZ4mmtFORvdTjZONtEEZi5uZy8H8wh2FasG3iMN9uw6DEk9/juqVOuGamXbejeOHC+zj5phX+l7R++KEnTtEtxDzm36sAkIfA68qQs6p5pUwrI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764874744; c=relaxed/simple;
	bh=aTfK30M2MaG/tXm59gIsx8NvpDAkIEsKQInvNay59Es=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=CJW9f5+Qgd4mAJd1OV1FPermNd1o3XCBJjGuPIBbmMVTZC0SGT72Nbn3/yMI0kjoJ9QcispvwXLqb84jr0hjUh1VvRXlwu5lCRfT/UBJaHxbZVj6mDlhcy77pWZo/yVB9uNcuCRcRnx1Hc5p9GMajuhtv++UUGuOZAGnMyp2HuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=raptorengineering.com; spf=pass smtp.mailfrom=raptorengineering.com; dkim=pass (1024-bit key) header.d=raptorengineering.com header.i=@raptorengineering.com header.b=mxvVP2e8; arc=none smtp.client-ip=23.155.224.40
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=raptorengineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raptorengineering.com
Received: from localhost (localhost [127.0.0.1])
	by mail.rptsys.com (Postfix) with ESMTP id 0D1547791B3B;
	Thu,  4 Dec 2025 12:50:28 -0600 (CST)
Received: from mail.rptsys.com ([127.0.0.1])
	by localhost (vali.starlink.edu [127.0.0.1]) (amavisd-new, port 10032)
	with ESMTP id C4kT1H5-yfMa; Thu,  4 Dec 2025 12:50:26 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by mail.rptsys.com (Postfix) with ESMTP id D208D7791B3C;
	Thu,  4 Dec 2025 12:50:26 -0600 (CST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.rptsys.com D208D7791B3C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=raptorengineering.com; s=B8E824E6-0BE2-11E6-931D-288C65937AAD;
	t=1764874226; bh=a/Ryu0sTGZA7XDosX4MNg9HU2sYSGjKwZQiTLkKoGSQ=;
	h=From:To:Date:Message-Id:MIME-Version;
	b=mxvVP2e8sB2NzpVBPJ/gS7fO8OnGTXuGNotuI0xwSKBNt5IPm1BgCq9BFysz+xPgf
	 Knp0gG3LRGmK6ij0s/brlGuU8N/Fw7ZH4MNVoPojZmjgdvxSOWCH4cmwWrXiG/L6j4
	 JX7+qNvZYt9r7106G6vgYwjlMyvx6JHPftlpLGpY=
X-Virus-Scanned: amavisd-new at rptsys.com
Received: from mail.rptsys.com ([127.0.0.1])
	by localhost (vali.starlink.edu [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id 8w4188QcjB_o; Thu,  4 Dec 2025 12:50:26 -0600 (CST)
Received: from rcs-ewks-005.starlink.edu (unknown [192.168.20.42])
	by mail.rptsys.com (Postfix) with ESMTPSA id A4E7C7791AB0;
	Thu,  4 Dec 2025 12:50:26 -0600 (CST)
From: Timothy Pearson <tpearson@raptorengineering.com>
To: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org,
	robh+dt@kernel.org,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	lee@kernel.org,
	Georgy.Yakovlev@sony.com,
	sanastasio@raptorengineering.com,
	Timothy Pearson <tpearson@raptorengineering.com>
Subject: [PATCH v5 4/4] watchdog: sony-cronos-smc: Add watchdog driver for Sony Cronos SMC
Date: Thu,  4 Dec 2025 12:50:15 -0600
Message-Id: <20251204185015.1364439-5-tpearson@raptorengineering.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20251204185015.1364439-1-tpearson@raptorengineering.com>
References: <20251204185015.1364439-1-tpearson@raptorengineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

The Sony Cronos Platform Controller is a multi-purpose platform controlle=
r with
an integrated watchdog.  Add the watchdog driver for the Cronos SMC.

Signed-off-by: Timothy Pearson <tpearson@raptorengineering.com>
---
 drivers/watchdog/Kconfig           |  17 ++
 drivers/watchdog/Makefile          |   1 +
 drivers/watchdog/sony-cronos-wdt.c | 283 +++++++++++++++++++++++++++++
 3 files changed, 301 insertions(+)
 create mode 100644 drivers/watchdog/sony-cronos-wdt.c

diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
index 05008d937e40..843ee5f8d750 100644
--- a/drivers/watchdog/Kconfig
+++ b/drivers/watchdog/Kconfig
@@ -416,6 +416,23 @@ config SL28CPLD_WATCHDOG
 	  To compile this driver as a module, choose M here: the
 	  module will be called sl28cpld_wdt.
=20
+config SONY_CRONOS_WATCHDOG
+	tristate "Sony Cronos CPLD Watchdog"
+	depends on ARCH_ASPEED || COMPILE_TEST
+	depends on I2C
+	select WATCHDOG_CORE
+	help
+	  Say Y here to include support for the watchdog timer
+	  for the Sony Cronos control CPLD.
+
+	  All known Cronos systems use the ASpeed AST2600 SoC,
+	  therefore the configuration option is gated on
+	  ARCH_ASPEED selection.  If this changes, add the new
+	  SoCs to the selection list.
+
+	  To compile this driver as a module, choose M here: the
+	  module will be called sony-cronos-wdt.
+
 # ALPHA Architecture
=20
 # ARM Architecture
diff --git a/drivers/watchdog/Makefile b/drivers/watchdog/Makefile
index b680e4d3c1bc..724d5982c240 100644
--- a/drivers/watchdog/Makefile
+++ b/drivers/watchdog/Makefile
@@ -243,3 +243,4 @@ obj-$(CONFIG_MENZ069_WATCHDOG) +=3D menz69_wdt.o
 obj-$(CONFIG_RAVE_SP_WATCHDOG) +=3D rave-sp-wdt.o
 obj-$(CONFIG_STPMIC1_WATCHDOG) +=3D stpmic1_wdt.o
 obj-$(CONFIG_SL28CPLD_WATCHDOG) +=3D sl28cpld_wdt.o
+obj-$(CONFIG_SONY_CRONOS_WATCHDOG) +=3D sony-cronos-wdt.o
diff --git a/drivers/watchdog/sony-cronos-wdt.c b/drivers/watchdog/sony-c=
ronos-wdt.c
new file mode 100644
index 000000000000..650fcee28885
--- /dev/null
+++ b/drivers/watchdog/sony-cronos-wdt.c
@@ -0,0 +1,283 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Watchdog device driver for Sony Cronos SMCs
+ * Copyright (C) 2015 Dialog Semiconductor Ltd.
+ * Copyright (C) 2022-2025 Raptor Engineering, LLC
+ *
+ */
+
+#include <linux/delay.h>
+#include <linux/i2c.h>
+#include <linux/jiffies.h>
+#include <linux/kernel.h>
+#include <linux/mfd/sony-cronos.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/platform_device.h>
+#include <linux/property.h>
+#include <linux/regmap.h>
+#include <linux/slab.h>
+#include <linux/uaccess.h>
+#include <linux/watchdog.h>
+
+static const unsigned int wdt_timeout[] =3D { 10, 80 };
+static const unsigned int wdt_timeout_ctl_bits[] =3D { 0x1, 0x0 };
+#define CRONOS_TWDSCALE_DISABLE 0
+#define CRONOS_TWDSCALE_MIN 1
+#define CRONOS_TWDSCALE_MAX (ARRAY_SIZE(wdt_timeout) - 1)
+#define CRONOS_WDT_MIN_TIMEOUT wdt_timeout[CRONOS_TWDSCALE_MIN]
+#define CRONOS_WDT_MAX_TIMEOUT wdt_timeout[CRONOS_TWDSCALE_MAX]
+#define CRONOS_WDG_DEFAULT_TIMEOUT wdt_timeout[CRONOS_TWDSCALE_MAX]
+
+struct sony_cronos_watchdog {
+	struct sony_cronos_smc *hw;
+	struct watchdog_device wdtdev;
+};
+
+static unsigned int sony_cronos_wdt_read_timeout(struct sony_cronos_watc=
hdog *wdt)
+{
+	unsigned int i;
+	unsigned int val;
+
+	regmap_read(wdt->hw->regmap, CRONOS_WDT_CTL_REG, &val);
+
+	for (i =3D CRONOS_TWDSCALE_MIN; i <=3D CRONOS_TWDSCALE_MAX; i++) {
+		if (wdt_timeout_ctl_bits[i] =3D=3D (val & CRONOS_WDT_TIMEOUT_MASK))
+			return wdt_timeout[i];
+	}
+
+	dev_err(wdt->hw->dev, "Invalid configuration data present in watchdog c=
ontrol register!\n");
+	return wdt_timeout[CRONOS_WDT_MIN_TIMEOUT];
+}
+
+static unsigned int sony_cronos_wdt_timeout_to_sel(unsigned int secs)
+{
+	unsigned int i;
+
+	for (i =3D CRONOS_TWDSCALE_MIN; i <=3D CRONOS_TWDSCALE_MAX; i++) {
+		if (wdt_timeout[i] >=3D secs)
+			return wdt_timeout_ctl_bits[i];
+	}
+
+	return wdt_timeout_ctl_bits[CRONOS_TWDSCALE_MAX];
+}
+
+static int sony_cronos_reset_watchdog_timer(struct sony_cronos_watchdog =
*wdt)
+{
+	return regmap_write(wdt->hw->regmap, CRONOS_WDT_CLR_REG, CRONOS_WDT_CLR=
_VAL);
+}
+
+static int sony_cronos_wdt_update_timeout_register(struct sony_cronos_wa=
tchdog *wdt,
+						   unsigned int regval)
+{
+	int ret;
+
+	struct sony_cronos_smc *chip =3D wdt->hw;
+
+	ret =3D sony_cronos_reset_watchdog_timer(wdt);
+	if (ret) {
+		dev_err(wdt->hw->dev, "Watchdog failed to reset (err =3D %d)\n", ret);
+		goto done;
+	}
+
+	return regmap_update_bits(chip->regmap, CRONOS_WDT_CTL_REG, CRONOS_WDT_=
TIMEOUT_MASK,
+				  regval);
+
+done:
+	return ret;
+}
+
+static int sony_cronos_wdt_start(struct watchdog_device *wdd)
+{
+	struct sony_cronos_watchdog *wdt =3D watchdog_get_drvdata(wdd);
+	struct sony_cronos_smc *chip =3D wdt->hw;
+	unsigned int selector;
+	int ret;
+
+	selector =3D sony_cronos_wdt_timeout_to_sel(wdt->wdtdev.timeout);
+	ret =3D sony_cronos_wdt_update_timeout_register(wdt, selector);
+	if (ret) {
+		dev_err(wdt->hw->dev, "Watchdog prestart configuration failed (err =3D=
 %d)\n", ret);
+		goto done;
+	}
+
+	ret =3D regmap_update_bits(chip->regmap, CRONOS_WDT_CTL_REG, CRONOS_WDT=
_ENABLE_MASK, 1);
+
+	if (ret)
+		dev_err(wdt->hw->dev, "Watchdog failed to start (err =3D %d)\n", ret);
+
+done:
+	return ret;
+}
+
+static int sony_cronos_wdt_stop(struct watchdog_device *wdd)
+{
+	struct sony_cronos_watchdog *wdt =3D watchdog_get_drvdata(wdd);
+	struct sony_cronos_smc *chip =3D wdt->hw;
+	int ret;
+
+	ret =3D regmap_update_bits(chip->regmap, CRONOS_WDT_CTL_REG, CRONOS_WDT=
_ENABLE_MASK, 1);
+	if (ret)
+		dev_err(wdt->hw->dev, "Watchdog failed to stop (err =3D %d)\n", ret);
+
+	return ret;
+}
+
+static int sony_cronos_wdt_ping(struct watchdog_device *wdd)
+{
+	struct sony_cronos_watchdog *wdt =3D watchdog_get_drvdata(wdd);
+	int ret;
+
+	/*
+	 * Prevent pings from occurring late in system poweroff/reboot sequence
+	 * and possibly locking out restart handler from accessing i2c bus.
+	 */
+	if (system_state > SYSTEM_RUNNING)
+		return 0;
+
+	ret =3D sony_cronos_reset_watchdog_timer(wdt);
+	if (ret)
+		dev_err(wdt->hw->dev, "Failed to ping the watchdog (err =3D %d)\n", re=
t);
+
+	return ret;
+}
+
+static int sony_cronos_wdt_set_timeout(struct watchdog_device *wdd, unsi=
gned int timeout)
+{
+	struct sony_cronos_watchdog *wdt =3D watchdog_get_drvdata(wdd);
+	unsigned int selector;
+	int ret;
+
+	selector =3D sony_cronos_wdt_timeout_to_sel(timeout);
+	ret =3D sony_cronos_wdt_update_timeout_register(wdt, selector);
+	if (ret)
+		dev_err(wdt->hw->dev, "Failed to set watchdog timeout (err =3D %d)\n",=
 ret);
+	else
+		wdd->timeout =3D wdt_timeout[selector];
+
+	return ret;
+}
+
+static int sony_cronos_wdt_restart(struct watchdog_device *wdd, unsigned=
 long action, void *data)
+{
+	struct sony_cronos_watchdog *wdt =3D watchdog_get_drvdata(wdd);
+	struct i2c_client *client =3D to_i2c_client(wdt->hw->dev);
+	int ret;
+
+	/* Don't use regmap because it is not atomic safe */
+	ret =3D i2c_smbus_write_byte_data(client, CRONOS_WDT_CTL_REG, CRONOS_WD=
T_CTL_RESET_VAL);
+	ret =3D i2c_smbus_write_byte_data(client, CRONOS_BMC_RESET_REG, CRONOS_=
BMC_RESET_VAL);
+	if (ret < 0)
+		dev_alert(wdt->hw->dev, "Failed to shutdown (err =3D %d)\n", ret);
+
+	/* wait for reset to assert... */
+	mdelay(500);
+
+	return ret;
+}
+
+static const struct watchdog_info sony_cronos_watchdog_info =3D {
+	.options =3D WDIOF_SETTIMEOUT | WDIOF_KEEPALIVEPING,
+	.identity =3D "Sony Cronos WDT",
+};
+
+static const struct watchdog_ops sony_cronos_watchdog_ops =3D {
+	.owner =3D THIS_MODULE,
+	.start =3D sony_cronos_wdt_start,
+	.stop =3D sony_cronos_wdt_stop,
+	.ping =3D sony_cronos_wdt_ping,
+	.set_timeout =3D sony_cronos_wdt_set_timeout,
+	.restart =3D sony_cronos_wdt_restart,
+};
+
+static const struct of_device_id sony_cronos_compatible_id_table[] =3D {
+	{
+		.compatible =3D "sony,cronos-watchdog",
+	},
+	{},
+};
+
+MODULE_DEVICE_TABLE(of, sony_cronos_compatible_id_table);
+
+static int sony_cronos_wdt_probe(struct platform_device *pdev)
+{
+	struct device *dev =3D &pdev->dev;
+	unsigned int timeout;
+	struct sony_cronos_smc *chip;
+	struct sony_cronos_watchdog *wdt;
+
+	chip =3D dev_get_drvdata(dev->parent);
+	if (!chip)
+		return -EINVAL;
+
+	wdt =3D devm_kzalloc(dev, sizeof(*wdt), GFP_KERNEL);
+	if (!wdt)
+		return -ENOMEM;
+
+	wdt->hw =3D chip;
+
+	wdt->wdtdev.info =3D &sony_cronos_watchdog_info;
+	wdt->wdtdev.ops =3D &sony_cronos_watchdog_ops;
+	wdt->wdtdev.min_timeout =3D CRONOS_WDT_MIN_TIMEOUT;
+	wdt->wdtdev.max_timeout =3D CRONOS_WDT_MAX_TIMEOUT;
+	wdt->wdtdev.min_hw_heartbeat_ms =3D 0;
+	wdt->wdtdev.timeout =3D CRONOS_WDG_DEFAULT_TIMEOUT;
+	wdt->wdtdev.status =3D WATCHDOG_NOWAYOUT_INIT_STATUS;
+	wdt->wdtdev.parent =3D dev;
+
+	watchdog_set_restart_priority(&wdt->wdtdev, 128);
+
+	watchdog_set_drvdata(&wdt->wdtdev, wdt);
+	dev_set_drvdata(dev, &wdt->wdtdev);
+
+	timeout =3D sony_cronos_wdt_read_timeout(wdt);
+	if (timeout)
+		wdt->wdtdev.timeout =3D timeout;
+
+	/* Set timeout from DT value if available */
+	watchdog_init_timeout(&wdt->wdtdev, 0, dev->parent);
+
+	if (timeout) {
+		sony_cronos_wdt_set_timeout(&wdt->wdtdev, wdt->wdtdev.timeout);
+		set_bit(WDOG_HW_RUNNING, &wdt->wdtdev.status);
+	}
+
+	return devm_watchdog_register_device(dev, &wdt->wdtdev);
+}
+
+static int __maybe_unused sony_cronos_wdt_suspend(struct device *dev)
+{
+	struct watchdog_device *wdd =3D dev_get_drvdata(dev);
+
+	if (watchdog_active(wdd))
+		return sony_cronos_wdt_stop(wdd);
+
+	return 0;
+}
+
+static int __maybe_unused sony_cronos_wdt_resume(struct device *dev)
+{
+	struct watchdog_device *wdd =3D dev_get_drvdata(dev);
+
+	if (watchdog_active(wdd))
+		return sony_cronos_wdt_start(wdd);
+
+	return 0;
+}
+
+static SIMPLE_DEV_PM_OPS(sony_cronos_wdt_pm_ops, sony_cronos_wdt_suspend=
, sony_cronos_wdt_resume);
+
+static struct platform_driver sony_cronos_wdt_driver =3D {
+	.probe =3D sony_cronos_wdt_probe,
+	.driver =3D {
+		.name =3D "sony-cronos-watchdog",
+		.pm =3D &sony_cronos_wdt_pm_ops,
+		.of_match_table =3D sony_cronos_compatible_id_table,
+	},
+};
+module_platform_driver(sony_cronos_wdt_driver);
+
+MODULE_AUTHOR("Raptor Engineering, LLC <tpearson@raptorengineering.com>"=
);
+MODULE_DESCRIPTION("WDT device driver for Sony Cronos SMCs");
+MODULE_LICENSE("GPL");
+MODULE_ALIAS("platform:sony-cronos-watchdog");
--=20
2.39.5


