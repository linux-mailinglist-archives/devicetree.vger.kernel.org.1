Return-Path: <devicetree+bounces-51817-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A1D6C880965
	for <lists+devicetree@lfdr.de>; Wed, 20 Mar 2024 03:06:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 58FE7285237
	for <lists+devicetree@lfdr.de>; Wed, 20 Mar 2024 02:06:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2294AD2F5;
	Wed, 20 Mar 2024 02:05:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VeMfMQhy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06DE779F9
	for <devicetree@vger.kernel.org>; Wed, 20 Mar 2024 02:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710900357; cv=none; b=dRWQniwc6UPY50bCbUUfeKuSeNpy09UpgSZXLKa8giWTlDnl+YfoOTZzMbfdXKkcnFeuN/z1V0obA0GoWU6Ug9oVaPgfl8fTCpnavTsZjJpez3SBpDrL8caxx++PmqbPLFkgGmWf+DfNOhMdkoFc/Zwk1+tmIAXBTRHlq/HTzmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710900357; c=relaxed/simple;
	bh=vaa+2ijoVtcb7E9zbnqicdNU3+R9K/2vv81NGhoGNJQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=aejisIeGtXJTwcez1opQ55Fpj5j5NfM0ZuZAljFA4h7vwxRwiefjttMFjYqJWQ/jTrhTocDAAMYu+fh0i7rGxPxfqfgTWGX3xgmeRiB/NeByIwgE60BhllAgO1k2sjVq1zeBrgnq1cystydmp+xDaXn6BfHwK9DxYszM1hkp4zI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VeMfMQhy; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-41409fd8b6eso36598835e9.2
        for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 19:05:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710900353; x=1711505153; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8onlL6eaVMOKsrmQglnPXgtQA9k3jRb7PbaPmYQjRaA=;
        b=VeMfMQhyd1flff19ahd//yu2uFX5lOoIBkB3kbvVDYBqagSSdFXYj/v1gdrPiZfloG
         FD2u3PfLTlkBaDb0FBaA722yjgfB9ENmAK+6vZo7I27GP4/T5kp8UqV9qqJlzWy+mWn4
         AKtvNVlTtL6t2XDhHXUmZjwwVkvvD9jfjGF9lozY/GegaztbztDYg2sLOMleUrJvIEyr
         3r20lpldv/XgARSDDIP5E5E8a6ZPBskZ1YxBPS95abD60ERKvtFc2zYt2JOxu/XSgCpO
         OohigjPAGGYBawXB1mOAFDUc87Gtnqzf0+ME2LI/Ig2zY5RL6uQMv8N/SIB4C7W+pd1b
         OOEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710900353; x=1711505153;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8onlL6eaVMOKsrmQglnPXgtQA9k3jRb7PbaPmYQjRaA=;
        b=VbbpJRc79HFss9VPVMxikQ77cNHXMQOH5fgmcjDy21brEtZ34ap+J4BDyZmXWBAP6u
         LVaY4NXEtAO+s2rGKZPA8J2PGXfOhO/VH1y7LzLL1fh2za+1la2jN9igjzcgXQOet16q
         Z9HtRzhfpld88RIM4hC0uYAolDnIca2KujgmeVSDdMzKsR29RmIqS6YR1mglnluxl36A
         hydGk+PuOjBjXdZyURFKyz/Pg85rOTW+3Vu2Xhndc7Xa36X26CZPYZb6E4z1mmdOBcKn
         bOg4krLLKDqiLLTOjuSUAfiSP/rc18hg1vFCZrKozAoFu1E3wkL1BbX76t7YdHwdTcwU
         Ipfg==
X-Forwarded-Encrypted: i=1; AJvYcCXgTMFPBCD5nF5F09wuPk3Y48Zxq+fD13YWKiMqM4XG12FsYZdus8z5xOadLfZqJZjn2aZqM1pFaeemyA/d5Uvmc9NvAsCJz4+3Hg==
X-Gm-Message-State: AOJu0Yxsr3poPyf+vgTOxVZSYkkxvcYrLs2GQg1jjB1OfPWgRA4TIJX2
	rhMGhO2O9DMevRZTMDKgA63rXceYEKcC0w2RrzUJLfUT3kfUwE8PtvgIjACc7NA=
X-Google-Smtp-Source: AGHT+IE68IgbQV2m5xaeAAIsPInh5pDFP6u6jfPE18/dwJApj36Y7blQSDKqq5/s9aU2fs3UkSbn8Q==
X-Received: by 2002:adf:f292:0:b0:33d:1eea:4346 with SMTP id k18-20020adff292000000b0033d1eea4346mr10012461wro.37.1710900353298;
        Tue, 19 Mar 2024 19:05:53 -0700 (PDT)
Received: from localhost.localdomain ([2a02:c7c:7213:c700:e992:6869:474c:a63f])
        by smtp.gmail.com with ESMTPSA id u14-20020a056000038e00b0033e34c53354sm9209295wrf.56.2024.03.19.19.05.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Mar 2024 19:05:52 -0700 (PDT)
From: Alexey Klimov <alexey.klimov@linaro.org>
To: sre@kernel.org,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	peter.griffin@linaro.org,
	robh+dt@kernel.org
Cc: conor+dt@kernel.org,
	linux-samsung-soc@vger.kernel.org,
	semen.protsenko@linaro.org,
	linux-kernel@vger.kernel.org,
	klimov.linux@gmail.com,
	kernel-team@android.com,
	tudor.ambarus@linaro.org,
	andre.draszik@linaro.org,
	saravanak@google.com,
	willmcvicker@google.com,
	alexey.klimov@linaro.org,
	alim.akhtar@samsung.com,
	linux-arm-kernel@lists.infradead.org,
	elder@linaro.org
Subject: [PATCH 3/3] power: reset: add new gs101-poweroff driver
Date: Wed, 20 Mar 2024 02:05:49 +0000
Message-ID: <20240320020549.71810-3-alexey.klimov@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240320020549.71810-1-alexey.klimov@linaro.org>
References: <20240320020549.71810-1-alexey.klimov@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The driver allows switching off the Google gs101 SoC (Pixel6 family of
mobile phones). The syscon-poweroff cannot be used since gs101 requires
smc-based regmap i.e. a write to PMU register done from EL3 is required.
Additionally the power off write should be performed when power button
is not pressed.

When USB charging cable is connected then this leads to a reboot of
a device initiated by bootloader/firmware.

Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
---
 drivers/power/reset/Kconfig          |   7 ++
 drivers/power/reset/Makefile         |   1 +
 drivers/power/reset/gs101-poweroff.c | 157 +++++++++++++++++++++++++++
 3 files changed, 165 insertions(+)
 create mode 100644 drivers/power/reset/gs101-poweroff.c

diff --git a/drivers/power/reset/Kconfig b/drivers/power/reset/Kconfig
index fece990af4a7..e7323b3b4a61 100644
--- a/drivers/power/reset/Kconfig
+++ b/drivers/power/reset/Kconfig
@@ -100,6 +100,13 @@ config POWER_RESET_GPIO_RESTART
 	  If your board needs a GPIO high/low to restart, say Y and
 	  create a binding in your devicetree.
 
+config POWER_RESET_GS101_POWEROFF
+	tristate "GS101 power-off driver"
+	depends on ARCH_EXYNOS || COMPILE_TEST
+	help
+	  This driver supports turning off the Google Tensor Pixel6 GS101 phones.
+	  Select this if you're building a kernel with Google Tensor SoC support.
+
 config POWER_RESET_HISI
 	bool "Hisilicon power-off driver"
 	depends on ARCH_HISI
diff --git a/drivers/power/reset/Makefile b/drivers/power/reset/Makefile
index a95d1bd275d1..7065b7e4ce77 100644
--- a/drivers/power/reset/Makefile
+++ b/drivers/power/reset/Makefile
@@ -10,6 +10,7 @@ obj-$(CONFIG_POWER_RESET_BRCMSTB) += brcmstb-reboot.o
 obj-$(CONFIG_POWER_RESET_GEMINI_POWEROFF) += gemini-poweroff.o
 obj-$(CONFIG_POWER_RESET_GPIO) += gpio-poweroff.o
 obj-$(CONFIG_POWER_RESET_GPIO_RESTART) += gpio-restart.o
+obj-$(CONFIG_POWER_RESET_GS101_POWEROFF) += gs101-poweroff.o
 obj-$(CONFIG_POWER_RESET_HISI) += hisi-reboot.o
 obj-$(CONFIG_POWER_RESET_LINKSTATION) += linkstation-poweroff.o
 obj-$(CONFIG_POWER_RESET_MSM) += msm-poweroff.o
diff --git a/drivers/power/reset/gs101-poweroff.c b/drivers/power/reset/gs101-poweroff.c
new file mode 100644
index 000000000000..2be903de16a1
--- /dev/null
+++ b/drivers/power/reset/gs101-poweroff.c
@@ -0,0 +1,157 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * GS101 Poweroff Driver
+ *
+ * Copyright (c) 2024, Linaro Ltd.
+ * Author: Alexey Klimov <alexey.klimov@linaro.org>
+ */
+
+#include <linux/delay.h>
+#include <linux/devm-helpers.h>
+#include <linux/input.h>
+#include <linux/io.h>
+#include <linux/keyboard.h>
+#include <linux/of.h>
+#include <linux/platform_device.h>
+#include <linux/regmap.h>
+#include <linux/soc/samsung/exynos-pmu.h>
+
+#define shwork_to_poweroff(x)		\
+	container_of(x, struct gs101_poweroff, shutdown_work)
+
+#define keyboard_nb_to_poweroff(x)	\
+	container_of(x, struct gs101_poweroff, keyboard_nb)
+
+struct gs101_poweroff {
+	struct notifier_block keyboard_nb;
+	bool power_key_pressed;
+	struct work_struct shutdown_work;
+	struct regmap *map;
+	u32 offset;
+	u32 mask;
+};
+
+static struct gs101_poweroff *gs101_poweroff_ctx;
+
+static void gs101_shutdown_work_fn(struct work_struct *work)
+{
+	struct gs101_poweroff *gs101 = shwork_to_poweroff(work);
+
+	while (1) {
+		/* wait for power button release */
+		if (!gs101->power_key_pressed) {
+			/* Issue the poweroff */
+			regmap_update_bits(gs101->map,
+					   gs101->offset,
+					   gs101->mask, 0);
+		} else {
+			/*
+			 * if power button is not released,
+			 * wait and check TA again
+			 */
+			pr_info("power key is not released.\n");
+		}
+		mdelay(1000);
+	}
+}
+
+static int gs101_keyboard_notifier_call(struct notifier_block *nb,
+					unsigned long code, void *_param)
+{
+	struct keyboard_notifier_param *param = _param;
+
+	if (param->value == KEY_POWER) {
+		struct gs101_poweroff *gs101 = keyboard_nb_to_poweroff(nb);
+
+		gs101->power_key_pressed = param->down;
+	}
+
+	return NOTIFY_OK;
+}
+
+static void gs101_poweroff(void)
+{
+	schedule_work(&gs101_poweroff_ctx->shutdown_work);
+}
+
+static int gs101_poweroff_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct gs101_poweroff *gs101;
+	int ret;
+
+	gs101 = devm_kzalloc(dev, sizeof(*gs101), GFP_KERNEL);
+	if (!gs101)
+		return -ENOMEM;
+
+	gs101->map = exynos_get_pmu_regmap_by_phandle(dev->of_node,
+						      "samsung,syscon-phandle");
+	if (IS_ERR(gs101->map))
+		return PTR_ERR(gs101->map);
+
+	if (of_property_read_u32(dev->of_node, "offset", &gs101->offset)) {
+		dev_err(dev, "unable to read 'offset' from DT\n");
+		return -EINVAL;
+	}
+
+	if (of_property_read_u32(dev->of_node, "mask", &gs101->mask)) {
+		dev_err(dev, "unable to read 'mask' from DT\n");
+		return -EINVAL;
+	}
+
+	gs101->keyboard_nb.notifier_call = gs101_keyboard_notifier_call;
+	ret = register_keyboard_notifier(&gs101->keyboard_nb);
+	if (ret) {
+		dev_err(dev, "failed to register keyboard notifier: %i\n", ret);
+		return ret;
+	}
+
+	ret = devm_work_autocancel(dev, &gs101->shutdown_work,
+				   gs101_shutdown_work_fn);
+	if (ret) {
+		dev_err(dev, "failed to register gs101 shutdown_work: %i\n", ret);
+		unregister_keyboard_notifier(&gs101->keyboard_nb);
+		return ret;
+	}
+
+	gs101_poweroff_ctx = gs101;
+	platform_set_drvdata(pdev, gs101);
+
+	/*
+	 * At this point there is a chance that psci_sys_poweroff already
+	 * registered as pm_power_off hook but unfortunately it cannot power
+	 * off the gs101 SoC hence we are rewriting it here just as is.
+	 */
+	pm_power_off = gs101_poweroff;
+
+	return 0;
+}
+
+static void gs101_poweroff_remove(struct platform_device *pdev)
+{
+	struct gs101_poweroff *gs101 = platform_get_drvdata(pdev);
+
+	if (pm_power_off == gs101_poweroff)
+		pm_power_off = NULL;
+
+	unregister_keyboard_notifier(&gs101->keyboard_nb);
+}
+
+static const struct of_device_id gs101_poweroff_of_match[] = {
+	{ .compatible = "google,gs101-poweroff" },
+	{}
+};
+
+static struct platform_driver gs101_poweroff_driver = {
+	.probe = gs101_poweroff_probe,
+	.remove_new = gs101_poweroff_remove,
+	.driver = {
+		.name = "gs101-poweroff",
+		.of_match_table = gs101_poweroff_of_match,
+	},
+};
+
+module_platform_driver(gs101_poweroff_driver);
+MODULE_AUTHOR("Alexey Klimov <alexey.klimov@linaro.org>");
+MODULE_DESCRIPTION("Google GS101 poweroff driver");
+MODULE_LICENSE("GPL v2");
-- 
2.43.0


