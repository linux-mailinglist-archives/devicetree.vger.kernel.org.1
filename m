Return-Path: <devicetree+bounces-92049-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D13794BA5D
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2024 12:01:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2C4451F2297A
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2024 10:01:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 640B318B490;
	Thu,  8 Aug 2024 10:00:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="CE79LiOe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A5F818B472
	for <devicetree@vger.kernel.org>; Thu,  8 Aug 2024 10:00:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723111205; cv=none; b=pWkaIuJnNnD7B0iN22ijD1y5uM/amJuSooqj5PHN+1PaS8077OZVecEfhj8fivIepqqEnjs4pSQAYujPWz61zI9ghTZms58wG0aAAxx3XW3uXx0ccmOpATmdIL/j8jkS5zmFKoZrVPzg62YUIsSWunSLxcgNLCEw92Etb2iVbME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723111205; c=relaxed/simple;
	bh=KrrCRbhQREYKe5Xaaft5bhjYQwckG15dKwXrCeDx3eA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=BicP4mkIlRWp5JTR8atwKJvxl2BqyuoSbc6TvJk2LFL5JcvLd0EgnDU+sBnB3BGUsWRNYycNcBxud+VDk0QdEYIpUqEVHP/B1FN0m/9uJDDMRnfBW+5HfkAuX7lHZR8S3bhjAi7BSSzVssubAa4kqNV+v6CpCituXcSnG8awwDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=CE79LiOe; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-1fc49c0aaffso7232795ad.3
        for <devicetree@vger.kernel.org>; Thu, 08 Aug 2024 03:00:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1723111202; x=1723716002; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IrJXguIlB/7qdbaZON+hnRiNa98pqQA+T1VHHt60EcI=;
        b=CE79LiOedI5tPOrUnj1H6tonnbL9+ynlUviMqfLM8aRPOlsRMJvjJBiuLTDsiQiz54
         PAfC/M83gk89ZypEDtGYDtutn47tU/w/l6fpeUKQGYD8kCY/YWicY9w7/mMASYF1Oqwf
         kq4lBv7P8LWWYTJPTPAnhwB1cOJqap0yzZFjQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723111202; x=1723716002;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IrJXguIlB/7qdbaZON+hnRiNa98pqQA+T1VHHt60EcI=;
        b=dnwMYMhJynbIIKhN6nhHgSYri2QbAKCqLmZgJm5nEWh84obuaWsQVYNgDzOMoEJHdp
         IyWMcn2V5ym/Kl605tDaxGzF6G6Ufi08N3wZ/1Xys+5i5yFIyYX+rD8snMwVg23tOgb9
         lM3TtYdaIt2NkXBaZmXQaaDa5LEYDtpuzMG4DgrOKBUrstGDAAkpHKM6K5LgYvN6JZKg
         Y41Anh/h6+CuMf81/DYoaGgMoa/nSkhJPPLM9u3+48TM89r6z8oPm4yzCGsPNDs8Jzxs
         /xANtnAhPTu1lM6TKr92/PJ+aqcJCPllGjr8DXy8ojblUV6F89mu0rMvPywS5LhiDee9
         tFig==
X-Forwarded-Encrypted: i=1; AJvYcCVbvQAGJnH6HcOl11kmKT8di58+T72cU3ekbKMhBmvLmDPKY53PFeSLHwRCzbSiseX+f2An9RlrC2tn@vger.kernel.org
X-Gm-Message-State: AOJu0YzRxZkMGaCmCJ5OxBweIIwvj1X83gam8RdZHVuCkQNnucZzOUXV
	waOm+PkkLxJYmGytxnR6nEex9Ta8Nv0IypcGM4Qo6+uVl86gDDL4gTtF4T32hA==
X-Google-Smtp-Source: AGHT+IHGkeRBSVxrUTgdzlEanlCyL8c8BBRuZLzJUruiS+q3sQlgMYribQJMMsB438TZAjNNOrIc3A==
X-Received: by 2002:a17:903:2406:b0:1fd:9105:7dd3 with SMTP id d9443c01a7336-20095311b9emr13251665ad.64.1723111201671;
        Thu, 08 Aug 2024 03:00:01 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:8b53:87e6:914:a00d])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1ff59297707sm120784985ad.254.2024.08.08.02.59.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Aug 2024 03:00:01 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Rob Herring <robh@kernel.org>,
	Saravana Kannan <saravanak@google.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Wolfram Sang <wsa@kernel.org>,
	Benson Leung <bleung@chromium.org>,
	Tzung-Bi Shih <tzungbi@kernel.org>,
	Mark Brown <broonie@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	chrome-platform@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Douglas Anderson <dianders@chromium.org>,
	Johan Hovold <johan@kernel.org>,
	Jiri Kosina <jikos@kernel.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	linux-i2c@vger.kernel.org
Subject: [PATCH v4 5/6] platform/chrome: Introduce device tree hardware prober
Date: Thu,  8 Aug 2024 17:59:28 +0800
Message-ID: <20240808095931.2649657-6-wenst@chromium.org>
X-Mailer: git-send-email 2.46.0.rc2.264.g509ed76dc8-goog
In-Reply-To: <20240808095931.2649657-1-wenst@chromium.org>
References: <20240808095931.2649657-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Some devices are designed and manufactured with some components having
multiple drop-in replacement options. These components are often
connected to the mainboard via ribbon cables, having the same signals
and pin assignments across all options. These may include the display
panel and touchscreen on laptops and tablets, and the trackpad on
laptops. Sometimes which component option is used in a particular device
can be detected by some firmware provided identifier, other times that
information is not available, and the kernel has to try to probe each
device.

This change attempts to make the "probe each device" case cleaner. The
current approach is to have all options added and enabled in the device
tree. The kernel would then bind each device and run each driver's probe
function. This works, but has been broken before due to the introduction
of asynchronous probing, causing multiple instances requesting "shared"
resources, such as pinmuxes, GPIO pins, interrupt lines, at the same
time, with only one instance succeeding. Work arounds for these include
moving the pinmux to the parent I2C controller, using GPIO hogs or
pinmux settings to keep the GPIO pins in some fixed configuration, and
requesting the interrupt line very late. Such configurations can be seen
on the MT8183 Krane Chromebook tablets, and the Qualcomm sc8280xp-based
Lenovo Thinkpad 13S.

Instead of this delicate dance between drivers and device tree quirks,
this change introduces a simple I2C component prober. For any given
class of devices on the same I2C bus, it will go through all of them,
doing a simple I2C read transfer and see which one of them responds.
It will then enable the device that responds.

This requires some minor modifications in the existing device tree.
The status for all the device nodes for the component options must be
set to "failed-needs-probe". This makes it clear that some mechanism is
needed to enable one of them, and also prevents the prober and device
drivers running at the same time.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
Changes since v3:
- Include linux/init.h
- Rewrite for loop in driver probe function as suggested by Andy
- Make prober driver buildable as module
- Ignore prober errors other than probe deferral

Changes since v2:
- Addressed Rob's comments
  - Move remaining driver code to drivers/platform/chrome/
  - Depend on rather than select CONFIG_I2C
  - Copy machine check to driver init function
- Addressed Andy's comments
  - Explicitly mention "device tree" or OF in driver name, description
    and Kconfig symbol
  - Drop filename from inside the file
  - Switch to passing "struct device *" to shorten lines
  - Move "ret = 0" to just before for_each_child_of_node(i2c_node, node)
  - Make loop variable size_t (instead of unsigned int as Andy asked)
  - Use PLATFORM_DEVID_NONE instead of raw -1
  - Use standard goto error path pattern in hw_prober_driver_init()

- Changes since v1:
  - New patch
---
 drivers/platform/chrome/Kconfig               |  11 ++
 drivers/platform/chrome/Makefile              |   1 +
 .../platform/chrome/chromeos_of_hw_prober.c   | 107 ++++++++++++++++++
 3 files changed, 119 insertions(+)
 create mode 100644 drivers/platform/chrome/chromeos_of_hw_prober.c

diff --git a/drivers/platform/chrome/Kconfig b/drivers/platform/chrome/Kconfig
index 7dbeb786352a..acc740bd8bd9 100644
--- a/drivers/platform/chrome/Kconfig
+++ b/drivers/platform/chrome/Kconfig
@@ -61,6 +61,17 @@ config CHROMEOS_TBMC
 	  To compile this driver as a module, choose M here: the
 	  module will be called chromeos_tbmc.
 
+config CHROMEOS_OF_HW_PROBER
+	tristate "ChromeOS Device Tree Hardware Prober"
+	depends on OF
+	depends on I2C || !I2C # cannot be built-in for modular I2C
+	select OF_DYNAMIC
+	default OF
+	help
+	  This option enables the device tree hardware prober for ChromeOS
+	  devices. The driver will probe the correct component variant in
+	  devices that have multiple drop-in options for one component.
+
 config CROS_EC
 	tristate "ChromeOS Embedded Controller"
 	select CROS_EC_PROTO
diff --git a/drivers/platform/chrome/Makefile b/drivers/platform/chrome/Makefile
index 2dcc6ccc2302..21a9d5047053 100644
--- a/drivers/platform/chrome/Makefile
+++ b/drivers/platform/chrome/Makefile
@@ -8,6 +8,7 @@ obj-$(CONFIG_CHROMEOS_ACPI)		+= chromeos_acpi.o
 obj-$(CONFIG_CHROMEOS_LAPTOP)		+= chromeos_laptop.o
 obj-$(CONFIG_CHROMEOS_PRIVACY_SCREEN)	+= chromeos_privacy_screen.o
 obj-$(CONFIG_CHROMEOS_PSTORE)		+= chromeos_pstore.o
+obj-$(CONFIG_CHROMEOS_OF_HW_PROBER)	+= chromeos_of_hw_prober.o
 obj-$(CONFIG_CHROMEOS_TBMC)		+= chromeos_tbmc.o
 obj-$(CONFIG_CROS_EC)			+= cros_ec.o
 obj-$(CONFIG_CROS_EC_I2C)		+= cros_ec_i2c.o
diff --git a/drivers/platform/chrome/chromeos_of_hw_prober.c b/drivers/platform/chrome/chromeos_of_hw_prober.c
new file mode 100644
index 000000000000..03bde52f9092
--- /dev/null
+++ b/drivers/platform/chrome/chromeos_of_hw_prober.c
@@ -0,0 +1,107 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * ChromeOS Device Tree Hardware Prober
+ *
+ * Copyright (c) 2023 Google LLC
+ */
+
+#include <linux/array_size.h>
+#include <linux/i2c.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/platform_device.h>
+
+#define DRV_NAME	"chromeos_of_hw_prober"
+
+/**
+ * struct hw_prober_entry - Holds an entry for the hardware prober
+ *
+ * @compatible:	compatible string to match against the machine
+ * @prober:	prober function to call when machine matches
+ * @data:	extra data for the prober function
+ */
+struct hw_prober_entry {
+	const char *compatible;
+	int (*prober)(struct device *dev, const void *data);
+	const void *data;
+};
+
+static int chromeos_i2c_component_prober(struct device *dev, const void *data)
+{
+	const char *type = data;
+
+	return i2c_of_probe_component(dev, type);
+}
+
+static const struct hw_prober_entry hw_prober_platforms[] = {
+	{ .compatible = "google,hana", .prober = chromeos_i2c_component_prober, .data = "touchscreen" },
+	{ .compatible = "google,hana", .prober = chromeos_i2c_component_prober, .data = "trackpad" },
+};
+
+static int chromeos_of_hw_prober_probe(struct platform_device *pdev)
+{
+	for (size_t i = 0; i < ARRAY_SIZE(hw_prober_platforms); i++) {
+		if (!of_machine_is_compatible(hw_prober_platforms[i].compatible))
+			continue;
+
+		int ret;
+
+		ret = hw_prober_platforms[i].prober(&pdev->dev, hw_prober_platforms[i].data);
+		/* Ignore unrecoverable errors and keep going through other probers */
+		if (ret == -EPROBE_DEFER)
+			return ret;
+	}
+
+	return 0;
+}
+
+static struct platform_driver chromeos_of_hw_prober_driver = {
+	.probe	= chromeos_of_hw_prober_probe,
+	.driver	= {
+		.name = DRV_NAME,
+	},
+};
+
+static struct platform_device *chromeos_of_hw_prober_pdev;
+
+static int chromeos_of_hw_prober_driver_init(void)
+{
+	size_t i;
+	int ret;
+
+	for (i = 0; i < ARRAY_SIZE(hw_prober_platforms); i++)
+		if (of_machine_is_compatible(hw_prober_platforms[i].compatible))
+			break;
+	if (i == ARRAY_SIZE(hw_prober_platforms))
+		return 0;
+
+	ret = platform_driver_register(&chromeos_of_hw_prober_driver);
+	if (ret)
+		return ret;
+
+	chromeos_of_hw_prober_pdev =
+			platform_device_register_simple(DRV_NAME, PLATFORM_DEVID_NONE, NULL, 0);
+	if (IS_ERR(chromeos_of_hw_prober_pdev))
+		goto err;
+
+	return 0;
+
+err:
+	platform_driver_unregister(&chromeos_of_hw_prober_driver);
+
+	return PTR_ERR(chromeos_of_hw_prober_pdev);
+}
+module_init(chromeos_of_hw_prober_driver_init);
+
+static void chromeos_of_hw_prober_driver_exit(void)
+{
+	if (!chromeos_of_hw_prober_pdev)
+		return;
+
+	platform_device_unregister(chromeos_of_hw_prober_pdev);
+	platform_driver_unregister(&chromeos_of_hw_prober_driver);
+}
+module_exit(chromeos_of_hw_prober_driver_exit);
+
+MODULE_LICENSE("GPL");
+MODULE_DESCRIPTION("ChromeOS device tree hardware prober");
-- 
2.46.0.rc2.264.g509ed76dc8-goog


