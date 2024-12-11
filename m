Return-Path: <devicetree+bounces-129994-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 39CE69ED79E
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 21:55:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CF45228340A
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 20:55:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C89F822A7E0;
	Wed, 11 Dec 2024 20:55:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="rArKFDB9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com [209.85.210.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A91D1229688
	for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 20:55:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733950506; cv=none; b=U6Km+x0zKcC9uV48Th1NJvoqWC3H7rUSLy/xGZRMKZ37p2b/4BhYh0Fa+wM+8S0Gp06IKpWxN6W5hSbKFeo0o6j87o/cuL8sZpM3PyeUQB9zh/UByqEnu2M1raoswbTQFuVNvzG/R2ssCPgkx9eVOUY3MtB12f+t5FyeCnziD3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733950506; c=relaxed/simple;
	bh=0s3uXElW/MXHx9gPkJZUX8kahROScB4pX/58UKwwvgY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=YO1UwUm1IAZGgSxLuvzkkf4ecNt6LsSPQLVdQs08qJVjERkMbfel+pjzdcIHz3jfDKOz3Z3V1rMGgFtqr239DuUW/SoKre/vswER3VD5J24k1nbMoF1S0lrszv9aihcacz3ytxwngoY8xCh8V9aaImmwWZj2KJUfwWDal5LpXLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=rArKFDB9; arc=none smtp.client-ip=209.85.210.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f53.google.com with SMTP id 46e09a7af769-71e10e6a1ceso512037a34.0
        for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 12:55:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1733950502; x=1734555302; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9eFuYr0ITKcc+ZyJTuA5Wo0COKM7oNjXQWWTXcl7Plc=;
        b=rArKFDB9n0/cYmjbToPjAus1POO4uaTvFVUjyARK9/ZW74nDcapQ8tzjB3Xb1HbeL8
         WlIJ8/qTO2zFZc6gx5RvH8CiIYQlYP5Gm/79GSJvTN9vJQaMbRZo+hqjCzg4ZUs7fx34
         ApEi4kBiSwFBTj0NlPRTK+KjK88vo1t3+Eqqh9FO0BA5KsgjtxOdTn8WXFt/+aiCtz93
         trW+HERGk74Shdj4GNtUik932ba8c2Q8uQOvYqZnuxQCB/ajcHYt4PHu3FUIT8MBC5oO
         MZ1WFTq9B3gcJn22QtHLr8RLmVJVeyXg1WwObKA6QPX2ESLs+UrFiNAUQKRg/PO+tqF9
         k6uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733950502; x=1734555302;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9eFuYr0ITKcc+ZyJTuA5Wo0COKM7oNjXQWWTXcl7Plc=;
        b=jBYLpuNba8jPiUkBlsJgiC1XcsvBKbzGmPYAapNTALIgg04HSjM+my3PdGJT/cr9kJ
         TRgM55koSGqb77kscgQG2uFOLFLrygs5eHQZBocBxdNHCvzP2BZuVJDdeFXzdNdnx0FX
         oaIvuor901Yz1kPdhDvGc/Xh+oB/Ohy3hNJH14UmtmWNlMU+cQZHaMYIaPj7saeaAPg5
         kFLW8pv9gwFxdAntY+ta9Xi5q5bIMJs1MLW4/jnY4sZdOspX8Je7CP0YsjfM0WXCMIZ6
         ouAJgKSujnH23iL0MBMsw7M+KLZgdJex6TY/vF8bYX0fNlBLH8ORxjHs5xp8BEeUVK6B
         tOzQ==
X-Forwarded-Encrypted: i=1; AJvYcCX+UInoPvzHszAklOKNAfwK+tFq87Y+YE/Zy18coObccyLGc0wbSGPzpOwAogVGEroAaOjfqIEldsIq@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/wPp2cBGBJDeYBaYRu/V2/4N9vC9CbTnadxPqDMAKVNvDZWz7
	k4zuNZWMjRMFpa/XFC3G/wb08amosI5GVcBrBaIpjxtZxMRilkEVXLZ3D2G8F6U=
X-Gm-Gg: ASbGncveyYMddvJ7W22H/0r+cIAfQvSbTlTo/LqX7h1Xj0Q2UV+91b3maBUEf+EnRMQ
	BRQFGTDh0z2t+hTELRMz/p2ly732ekrLBg4+T3NDmVjT8B1NxBULbTkO5BmLK4AZgnOCdACYxJ4
	gej4nA2/EbkgUR8d8/uOqgwUPr5pBUTrum4xAVQcSWy+hGz5ueLlwltdsrGCqMzKkNSqHBRrrIJ
	XzNhPuNzO3AJMz9uiDXM+WoRFFbuRCWzBJfL4Y1g34SkVNeLzbHrGJd9lhp6E8WMze0Z1VWLjbf
	qTbPCIPBAA==
X-Google-Smtp-Source: AGHT+IFrMvCcBU2/tnj0JqI89gqVYkibzLiks/VY40aEBobSpwIfrcv4p6KTBMh189bA84tnKGlJwQ==
X-Received: by 2002:a05:6830:3695:b0:71e:155:9bf with SMTP id 46e09a7af769-71e29c95d48mr725709a34.25.1733950502664;
        Wed, 11 Dec 2024 12:55:02 -0800 (PST)
Received: from [127.0.1.1] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-71def651fb2sm1888288a34.27.2024.12.11.12.54.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Dec 2024 12:55:01 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Date: Wed, 11 Dec 2024 14:54:41 -0600
Subject: [PATCH v6 04/17] spi: offload-trigger: add PWM trigger driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241211-dlech-mainline-spi-engine-offload-2-v6-4-88ee574d5d03@baylibre.com>
References: <20241211-dlech-mainline-spi-engine-offload-2-v6-0-88ee574d5d03@baylibre.com>
In-Reply-To: <20241211-dlech-mainline-spi-engine-offload-2-v6-0-88ee574d5d03@baylibre.com>
To: Mark Brown <broonie@kernel.org>, Jonathan Cameron <jic23@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>
Cc: =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@kernel.org>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 Lars-Peter Clausen <lars@metafoo.de>, David Jander <david@protonic.nl>, 
 Martin Sperl <kernel@martin.sperl.org>, linux-spi@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-iio@vger.kernel.org, linux-pwm@vger.kernel.org, 
 Jonathan Cameron <Jonathan.Cameron@huawei.com>, 
 David Lechner <dlechner@baylibre.com>
X-Mailer: b4 0.14.2

Add a new driver for a generic PWM trigger for SPI offloads.

Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
Signed-off-by: David Lechner <dlechner@baylibre.com>
---

v6 changes:
* Use dev instead of &pdev->dev
* Swap order of "pwm" and "trigger" in name to follow "pwm-clock"
  precedent.

v5 changes:
* Updated to accommodate changes in other patches in this series.
* Add MAINTAINERS entry.

v4 changes: new patch in v4
---
 MAINTAINERS                           |   1 +
 drivers/spi/Kconfig                   |  12 +++
 drivers/spi/Makefile                  |   3 +
 drivers/spi/spi-offload-trigger-pwm.c | 162 ++++++++++++++++++++++++++++++++++
 4 files changed, 178 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index b2aa6f37743e48353c60e5973ea8126590c7f6d5..d8d72da5ac4bcab817a515774eb8db37a7e94f25 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -22131,6 +22131,7 @@ F:	include/linux/mtd/spi-nor.h
 
 SPI OFFLOAD
 R:	David Lechner <dlechner@baylibre.com>
+F:	drivers/spi/spi-offload-trigger-pwm.c
 F:	drivers/spi/spi-offload.c
 F:	include/linux/spi/spi-offload.h
 K:	spi_offload
diff --git a/drivers/spi/Kconfig b/drivers/spi/Kconfig
index 02064a4e292815ec0213e2e446b4f90ed8855a52..2cfc14be869790f5226130428bb7cb40aadfb031 100644
--- a/drivers/spi/Kconfig
+++ b/drivers/spi/Kconfig
@@ -1320,4 +1320,16 @@ endif # SPI_SLAVE
 config SPI_DYNAMIC
 	def_bool ACPI || OF_DYNAMIC || SPI_SLAVE
 
+if SPI_OFFLOAD
+
+comment "SPI Offload triggers"
+
+config SPI_OFFLOAD_TRIGGER_PWM
+	tristate "SPI offload trigger using PWM"
+	depends on PWM
+	help
+	  Generic SPI offload trigger implemented using PWM output.
+
+endif # SPI_OFFLOAD
+
 endif # SPI
diff --git a/drivers/spi/Makefile b/drivers/spi/Makefile
index bb5fc20df21332232533c2e70c0cc230f6bcf27f..0068d170bc99c750c13376c4013991d927bbac63 100644
--- a/drivers/spi/Makefile
+++ b/drivers/spi/Makefile
@@ -164,3 +164,6 @@ obj-$(CONFIG_SPI_AMD)			+= spi-amd.o
 # SPI slave protocol handlers
 obj-$(CONFIG_SPI_SLAVE_TIME)		+= spi-slave-time.o
 obj-$(CONFIG_SPI_SLAVE_SYSTEM_CONTROL)	+= spi-slave-system-control.o
+
+# SPI offload triggers
+obj-$(CONFIG_SPI_OFFLOAD_TRIGGER_PWM)	+= spi-offload-trigger-pwm.o
diff --git a/drivers/spi/spi-offload-trigger-pwm.c b/drivers/spi/spi-offload-trigger-pwm.c
new file mode 100644
index 0000000000000000000000000000000000000000..b26d4437c589052709a8206f8314ffd08355870e
--- /dev/null
+++ b/drivers/spi/spi-offload-trigger-pwm.c
@@ -0,0 +1,162 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2024 Analog Devices Inc.
+ * Copyright (C) 2024 BayLibre, SAS
+ *
+ * Generic PWM trigger for SPI offload.
+ */
+
+#include <linux/platform_device.h>
+#include <linux/pwm.h>
+#include <linux/mod_devicetable.h>
+#include <linux/spi/offload/provider.h>
+#include <linux/types.h>
+
+struct spi_offload_trigger_pwm_state {
+	struct device *dev;
+	struct pwm_device *pwm;
+};
+
+static bool spi_offload_trigger_pwm_match(struct spi_offload_trigger *trigger,
+					  enum spi_offload_trigger_type type,
+					  u64 *args, u32 nargs)
+{
+	if (nargs)
+		return false;
+
+	return type == SPI_OFFLOAD_TRIGGER_PERIODIC;
+}
+
+static int spi_offload_trigger_pwm_validate(struct spi_offload_trigger *trigger,
+					    struct spi_offload_trigger_config *config)
+{
+	struct spi_offload_trigger_pwm_state *st = spi_offload_trigger_get_priv(trigger);
+	struct spi_offload_trigger_periodic *periodic = &config->periodic;
+	struct pwm_waveform wf = { };
+	int ret;
+
+	if (config->type != SPI_OFFLOAD_TRIGGER_PERIODIC)
+		return -EINVAL;
+
+	if (!periodic->frequency_hz)
+		return -EINVAL;
+
+	wf.period_length_ns = DIV_ROUND_UP_ULL(NSEC_PER_SEC, periodic->frequency_hz);
+	/* REVISIT: 50% duty-cycle for now - may add config parameter later */
+	wf.duty_length_ns = wf.period_length_ns / 2;
+
+	ret = pwm_round_waveform_might_sleep(st->pwm, &wf);
+	if (ret < 0)
+		return ret;
+
+	periodic->frequency_hz = DIV_ROUND_UP_ULL(NSEC_PER_SEC, wf.period_length_ns);
+
+	return 0;
+}
+
+static int spi_offload_trigger_pwm_enable(struct spi_offload_trigger *trigger,
+					  struct spi_offload_trigger_config *config)
+{
+	struct spi_offload_trigger_pwm_state *st = spi_offload_trigger_get_priv(trigger);
+	struct spi_offload_trigger_periodic *periodic = &config->periodic;
+	struct pwm_waveform wf = { };
+
+	if (config->type != SPI_OFFLOAD_TRIGGER_PERIODIC)
+		return -EINVAL;
+
+	if (!periodic->frequency_hz)
+		return -EINVAL;
+
+	wf.period_length_ns = DIV_ROUND_UP_ULL(NSEC_PER_SEC, periodic->frequency_hz);
+	/* REVISIT: 50% duty-cycle for now - may add config parameter later */
+	wf.duty_length_ns = wf.period_length_ns / 2;
+
+	return pwm_set_waveform_might_sleep(st->pwm, &wf, false);
+}
+
+static void spi_offload_trigger_pwm_disable(struct spi_offload_trigger *trigger)
+{
+	struct spi_offload_trigger_pwm_state *st = spi_offload_trigger_get_priv(trigger);
+	struct pwm_waveform wf;
+	int ret;
+
+	ret = pwm_get_waveform_might_sleep(st->pwm, &wf);
+	if (ret < 0) {
+		dev_err(st->dev, "failed to get waveform: %d\n", ret);
+		return;
+	}
+
+	wf.duty_length_ns = 0;
+
+	ret = pwm_set_waveform_might_sleep(st->pwm, &wf, false);
+	if (ret < 0)
+		dev_err(st->dev, "failed to disable PWM: %d\n", ret);
+}
+
+static const struct spi_offload_trigger_ops spi_offload_trigger_pwm_ops = {
+	.match = spi_offload_trigger_pwm_match,
+	.validate = spi_offload_trigger_pwm_validate,
+	.enable = spi_offload_trigger_pwm_enable,
+	.disable = spi_offload_trigger_pwm_disable,
+};
+
+static void spi_offload_trigger_pwm_release(void *data)
+{
+	pwm_disable(data);
+}
+
+static int spi_offload_trigger_pwm_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct spi_offload_trigger_info info = {
+		.fwnode = dev_fwnode(dev),
+		.ops = &spi_offload_trigger_pwm_ops,
+	};
+	struct spi_offload_trigger_pwm_state *st;
+	struct pwm_state state;
+	int ret;
+
+	st = devm_kzalloc(dev, sizeof(*st), GFP_KERNEL);
+	if (!st)
+		return -ENOMEM;
+
+	info.priv = st;
+	st->dev = dev;
+
+	st->pwm = devm_pwm_get(dev, NULL);
+	if (IS_ERR(st->pwm))
+		return dev_err_probe(dev, PTR_ERR(st->pwm), "failed to get PWM\n");
+
+	/* init with duty_cycle = 0, output enabled to ensure trigger off */
+	pwm_init_state(st->pwm, &state);
+	state.enabled = true;
+
+	ret = pwm_apply_might_sleep(st->pwm, &state);
+	if (ret < 0)
+		return dev_err_probe(dev, ret, "failed to apply PWM state\n");
+
+	ret = devm_add_action_or_reset(dev, spi_offload_trigger_pwm_release, st->pwm);
+	if (ret)
+		return ret;
+
+	return devm_spi_offload_trigger_register(dev, &info);
+}
+
+static const struct of_device_id spi_offload_trigger_pwm_of_match_table[] = {
+	{ .compatible = "pwm-trigger" },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, spi_offload_trigger_pwm_of_match_table);
+
+static struct platform_driver spi_offload_trigger_pwm_driver = {
+	.driver = {
+		.name = "pwm-trigger",
+		.of_match_table = spi_offload_trigger_pwm_of_match_table,
+	},
+	.probe = spi_offload_trigger_pwm_probe,
+};
+module_platform_driver(spi_offload_trigger_pwm_driver);
+
+MODULE_AUTHOR("David Lechner <dlechner@baylibre.com>");
+MODULE_DESCRIPTION("Generic PWM trigger");
+MODULE_LICENSE("GPL");

-- 
2.43.0


