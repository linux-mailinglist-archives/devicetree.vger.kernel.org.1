Return-Path: <devicetree+bounces-191768-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B0A43AF05D9
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 23:42:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 581DF483A50
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 21:41:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1123C309DA7;
	Tue,  1 Jul 2025 21:39:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="f9Hl3fao"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com [209.85.210.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A328F3093AC
	for <devicetree@vger.kernel.org>; Tue,  1 Jul 2025 21:39:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751405984; cv=none; b=caTXGo3rz6nx/lmj+6twIKIUJ/jm6OjDsFkwBO+cfnYWFiaBKRrdeK5YWKgCUeH3fn8yI/vhxCk8BbodSXBFxj3G69wCjvLzHND4mret6uNnHeiZnktJuyGqMOybjZqqXpLeBeav5RawvXECatvs79Sf4eAFinTOl1bj13ly+Iw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751405984; c=relaxed/simple;
	bh=ODK9s/KesQY1q9pgllRcE+1udpiAQ4WyUQ8s8zoiSYI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=fxgEUi8v/HzYwxhZAN7+L+iMq891VCIkbG/J4cL3ICwJztbxqkFHdm2LJ4pLMuFkPEQmjU7kJ/hrWWWiThFflb9ujzUbOeg61gMx4wN/oj6uTHCspMJjvQ/McwKG16Rw06lJUu5euzoXjWLdPlLijnc3W6n0RxAEANUnU0FWVCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=f9Hl3fao; arc=none smtp.client-ip=209.85.210.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f53.google.com with SMTP id 46e09a7af769-73a45bb28f1so3770501a34.1
        for <devicetree@vger.kernel.org>; Tue, 01 Jul 2025 14:39:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1751405982; x=1752010782; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KXbJNHObp0yLymcgJegYRlIqp8GCgqIbPNCpluvKCfU=;
        b=f9Hl3faoRtW6GfuiVCazIXVefkfvJdhdxmYRplxpftehz9Z96KNha6zCApCzSY9NZ5
         ut8Vs5GtKLdKeHXA7SXB1evYPAb07KQR4Lq0/c2acW1/6+R3SO/alA3gZoqmpErfPUuK
         JMdrUUr3MSzEmnxqNnr04XeNpn4YbjuWmzI/E+plU60TIOr1YincQaL5hHr1KS5Mrk/0
         r9qnau1sSpE6sF9nxOD2xJ5Ztm4bReR5CQi75pDf4N+BDSStIoKBJDc6nJfIFimvYEVo
         a6mxyJAnEFeTW1spcpJ8cqe/oy7+xI6CVIVpuzA242yYhg0Fjsn4pkKvDEok4Ils+jgd
         RWGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751405982; x=1752010782;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KXbJNHObp0yLymcgJegYRlIqp8GCgqIbPNCpluvKCfU=;
        b=bq49mNEGXqSDZbXmPMU7X7BNM+ZCeR2f9KrDXtZkj4b1xhRoQMdyBFj7ceQOrQB2iw
         HJrUn+BFA7YcC8jxjHNo3u9+8uaPJRUYtjQ7L22NwzaHoRJ8IQ5JHu6jTcjgsoaiUFS2
         wpNxXbrx2aWXNXEqY2+1vvEOTp6zQ0qPVXjLf7f2LW4lbnAeO4rBGe8Ud7TLBHERoKjq
         PbFXJIMmp94HUMHWbHDjIl/IfeacXTsHwW2ffI+sG03r/a7osgOycnrw6CjuSjmypUKb
         2CZecCryTvcBhM/lBUzEGCHHtgP2NPDC8aj3h2szZBhaff9TRB7jAWfRx8E3IangagJS
         BkQw==
X-Forwarded-Encrypted: i=1; AJvYcCVrin2o+WIkryt7T3JpNPM4M+zJ44Vxgxyvjw3GA7o4ebyoHQgrD4OLZcb/TdxNIPaWWIDXPgVEbayH@vger.kernel.org
X-Gm-Message-State: AOJu0YymmcqOB0T4kZouJBw64fQz9KR0eRoXVHOFJWVcDZscEbiC2pGs
	FMK8TMBc4ldRgLCr6hEWxhP8/dX0bhdzkp0P1IjLUnm6p5sMoLMpdwK4tskTt9HgEWs=
X-Gm-Gg: ASbGncuW6GyqHMkufNlqsbdIaD62Pp35/gG9UOrq8/j4AmalZYfYzwXDXELfRKL3iT2
	0GElbrKkry8cUwrLsb8lt0QfeaWpZd9wja9NX8r+x5+76HvEIr0zXoB77vd3pOWQaLDMdTyCR8F
	G8e2fIrS1OCNxZ20KE7oEYfJVg8JbLrw9SwsB75/8QmJFQV8yPYHhAthaAkq+flkgu2IupUa2JZ
	YV0T+gBI47M5fyrlJgTa+XHjCeySW/B3Re9lBC0JqK1cd9IpfCw6xVoJh6oaCFbvy3nUGE8wE0r
	2LO65bSXoQaZ7oYqK671jkDYISFsFyD2nO2SlDq7QogbYNmc/f04F2bDPK/bNh4BlLm+
X-Google-Smtp-Source: AGHT+IFSICywf5bWBOPamju0WA7wIyhluWkzttRu9z5id5CRQeysZo2qvdLXqEZmvJHwm6ndE3fOkA==
X-Received: by 2002:a05:6808:4f1f:b0:406:69b5:36da with SMTP id 5614622812f47-40b8aabd9f3mr157850b6e.16.1751405981676;
        Tue, 01 Jul 2025 14:39:41 -0700 (PDT)
Received: from [127.0.1.1] ([2600:8803:e7e4:1d00:70a7:ca49:a250:f1d5])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-40b3243deeesm2288335b6e.48.2025.07.01.14.39.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Jul 2025 14:39:41 -0700 (PDT)
From: David Lechner <dlechner@baylibre.com>
Date: Tue, 01 Jul 2025 16:37:58 -0500
Subject: [PATCH v3 10/12] spi: offload trigger: add ADI Util Sigma-Delta
 SPI driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250701-iio-adc-ad7173-add-spi-offload-support-v3-10-42abb83e3dac@baylibre.com>
References: <20250701-iio-adc-ad7173-add-spi-offload-support-v3-0-42abb83e3dac@baylibre.com>
In-Reply-To: <20250701-iio-adc-ad7173-add-spi-offload-support-v3-0-42abb83e3dac@baylibre.com>
To: Michael Hennerich <Michael.Hennerich@analog.com>, 
 Jonathan Cameron <jic23@kernel.org>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Mark Brown <broonie@kernel.org>
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-spi@vger.kernel.org, 
 David Lechner <dlechner@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=4356; i=dlechner@baylibre.com;
 h=from:subject:message-id; bh=ODK9s/KesQY1q9pgllRcE+1udpiAQ4WyUQ8s8zoiSYI=;
 b=owEBbQGS/pANAwAKAcLMIAH/AY/AAcsmYgBoZFV9xeYLLeB0HZi/XyTdaJ2M2m8jxczPEsMWe
 2lsSTjigEiJATMEAAEKAB0WIQTsGNmeYg6D1pzYaJjCzCAB/wGPwAUCaGRVfQAKCRDCzCAB/wGP
 wJv9CACborVMse/liFlC7Ut9b03+zhxm0nqzlgwfdEp+Q9qYaXvEGHwNlKfRENLS6CiW0+kLx49
 YijGeDsUs3DUguHEFD1FhN8ntHvckuv4BNtPGtdcalA54FXimf588P4wOkVz2mUnVOv8IUJBUr3
 JtJ7ZVXIcsa5RSOBAY2A2C23/GBHgayDKQ7KaW1Z4S6KPC3fvPGDksmTI/oq72DYJIMWbYDHMg5
 x+Xi7rUxoLgzTV7bQKmwxIWhLwg76FKXwXm7nD4xaYb/QBGyPUpSb+IJOjVZDowdzmt/9jTpA/m
 uq8wAB+x/dT0LbzZnQsQvYyqAK7FUnkS1te3Iyrij1V8AgIZ
X-Developer-Key: i=dlechner@baylibre.com; a=openpgp;
 fpr=8A73D82A6A1F509907F373881F8AF88C82F77C03

Add a new driver for the ADI Util Sigma-Delta SPI FPGA IP core.

This is used to trigger a SPI offload based on a RDY signal from an ADC
while masking out other signals on the same line.

Signed-off-by: David Lechner <dlechner@baylibre.com>
---
 MAINTAINERS                                        |  2 +-
 drivers/spi/Kconfig                                |  5 ++
 drivers/spi/Makefile                               |  1 +
 .../spi/spi-offload-trigger-adi-util-sigma-delta.c | 62 ++++++++++++++++++++++
 4 files changed, 69 insertions(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 60ba572be7f5b48c0ab1d0d9724e19e335e8761b..4ed4977deb6ddc545be39b5c1d5e9959e9fe64cf 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -23357,7 +23357,7 @@ F:	include/linux/mtd/spi-nor.h
 
 SPI OFFLOAD
 R:	David Lechner <dlechner@baylibre.com>
-F:	drivers/spi/spi-offload-trigger-pwm.c
+F:	drivers/spi/spi-offload-trigger-*.c
 F:	drivers/spi/spi-offload.c
 F:	include/linux/spi/offload/
 K:	spi_offload
diff --git a/drivers/spi/Kconfig b/drivers/spi/Kconfig
index c51da3fc3604977b05388687e5e64a58370186c4..e69f060d3875c168a2dc701a372e47b8ffd33268 100644
--- a/drivers/spi/Kconfig
+++ b/drivers/spi/Kconfig
@@ -1355,6 +1355,11 @@ if SPI_OFFLOAD
 
 comment "SPI Offload triggers"
 
+config SPI_OFFLOAD_TRIGGER_ADI_UTIL_SD
+	tristate "SPI offload trigger using ADI sigma-delta utility"
+	help
+	  SPI offload trigger from ADI sigma-delta utility FPGA IP block.
+
 config SPI_OFFLOAD_TRIGGER_PWM
 	tristate "SPI offload trigger using PWM"
 	depends on PWM
diff --git a/drivers/spi/Makefile b/drivers/spi/Makefile
index 4ea89f6fc531625060255ecff237470927e1f041..51f9f16ed734424ff10672a04f2ec166dc637e0b 100644
--- a/drivers/spi/Makefile
+++ b/drivers/spi/Makefile
@@ -170,3 +170,4 @@ obj-$(CONFIG_SPI_SLAVE_SYSTEM_CONTROL)	+= spi-slave-system-control.o
 
 # SPI offload triggers
 obj-$(CONFIG_SPI_OFFLOAD_TRIGGER_PWM)	+= spi-offload-trigger-pwm.o
+obj-$(CONFIG_SPI_OFFLOAD_TRIGGER_ADI_UTIL_SD) += spi-offload-trigger-adi-util-sigma-delta.o
diff --git a/drivers/spi/spi-offload-trigger-adi-util-sigma-delta.c b/drivers/spi/spi-offload-trigger-adi-util-sigma-delta.c
new file mode 100644
index 0000000000000000000000000000000000000000..8468c773713a3d203b2e668f340ee3f477b8fb6c
--- /dev/null
+++ b/drivers/spi/spi-offload-trigger-adi-util-sigma-delta.c
@@ -0,0 +1,62 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2025 Analog Devices Inc.
+ * Copyright (C) 2025 BayLibre, SAS
+ */
+
+#include <linux/clk.h>
+#include <linux/dev_printk.h>
+#include <linux/err.h>
+#include <linux/mod_devicetable.h>
+#include <linux/module.h>
+#include <linux/platform_device.h>
+#include <linux/property.h>
+#include <linux/spi/offload/provider.h>
+#include <linux/spi/offload/types.h>
+#include <linux/types.h>
+
+static bool adi_util_sigma_delta_match(struct spi_offload_trigger *trigger,
+				       enum spi_offload_trigger_type type,
+				       u64 *args, u32 nargs)
+{
+	return type == SPI_OFFLOAD_TRIGGER_DATA_READY && nargs == 0;
+}
+
+static const struct spi_offload_trigger_ops adi_util_sigma_delta_ops = {
+	.match = adi_util_sigma_delta_match,
+};
+
+static int adi_util_sigma_delta_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct spi_offload_trigger_info info = {
+		.fwnode = dev_fwnode(dev),
+		.ops = &adi_util_sigma_delta_ops,
+	};
+	struct clk *clk;
+
+	clk = devm_clk_get_enabled(dev, NULL);
+	if (IS_ERR(clk))
+		return dev_err_probe(dev, PTR_ERR(clk), "Failed to get clock\n");
+
+	return devm_spi_offload_trigger_register(dev, &info);
+}
+
+static const struct of_device_id adi_util_sigma_delta_of_match_table[] = {
+	{ .compatible = "adi,util-sigma-delta-spi", },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, adi_util_sigma_delta_of_match_table);
+
+static struct platform_driver adi_util_sigma_delta_driver = {
+	.probe  = adi_util_sigma_delta_probe,
+	.driver = {
+		.name = "adi-util-sigma-delta-spi",
+		.of_match_table = adi_util_sigma_delta_of_match_table,
+	},
+};
+module_platform_driver(adi_util_sigma_delta_driver);
+
+MODULE_AUTHOR("David Lechner <dlechner@baylibre.com>");
+MODULE_DESCRIPTION("ADI Sigma-Delta SPI offload trigger utility driver");
+MODULE_LICENSE("GPL");

-- 
2.43.0


