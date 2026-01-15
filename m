Return-Path: <devicetree+bounces-255804-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C068D2950B
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 00:44:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B710530A9F70
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 23:42:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6045D332901;
	Thu, 15 Jan 2026 23:42:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="PiqemR/Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com [209.85.128.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4E4D331209
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 23:42:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768520577; cv=none; b=tqDabCs8+iOIHGnu5Z/pXoSP5zaDnulYGt1Ripsx0GNpX+A0YlI03DzJQk3UYTkO3cD6NusJeni4xbGLGhMBCQsgEpKq8f2v9euBZ/75mCdn00FstTo1pxfuXmD8AIS8lz34CvH17tJs4+YHdJuKfnGHH8zxonp5yMZGCYpMUiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768520577; c=relaxed/simple;
	bh=qcaaZANCOEyqZ0KFVkNT48fIf3U6ZGNHU51PyrXz1GA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=i6fX11/DpaXrZ3DadyPyBAOij5Gsr5GHN60BbbzID0ylpLN9yeuLn3xemaDRs4g/tWMSQKV9t1blcwFvJrYn3f+zsTArFqoH0cAGsktwcRW7g92dMhoQkY8jlw/SC7P5qou9POvDkPV9w8zeHjmnU5jNTl+mdJSQgBYF6axYDew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=PiqemR/Z; arc=none smtp.client-ip=209.85.128.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-792815157f3so15543927b3.1
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 15:42:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1768520572; x=1769125372; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YuXosatL7jUspS52kKMFA09e6GoDFcrqO+bX2qZbTEM=;
        b=PiqemR/Z3CQgL9AoZBmnoOLSN8JoNuKLheviRkzkPdslJMJoUZVu09XQtUleD5MtJB
         6d9Rv+k1pd6i3xO58KhZMEhVeTG9cRqCfE8iFc/B6RSLWgRZNmtaaB6eRJYQM+gZXcNr
         OpswYjgJkHSZgStB+2qptpDqpk3Ts+syBVfKDfDDLALWFHT7O7+fYcoeMXxAFQvhjq1F
         YEFRvycHJV2JX+UxHMwCLjm3eYRW3vAq3NHPT/9BAexW9JcZPYv39hcr1HWAL5eUS3KR
         aBzy5zAxKFrjs3fPa0/M7Yg6u/gH5A7UT4p8hnGbtvWY7s/GogwHcditiFiZOysxr/Hl
         Gufg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768520572; x=1769125372;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=YuXosatL7jUspS52kKMFA09e6GoDFcrqO+bX2qZbTEM=;
        b=iz/YCWitKyOLWRq6chmlSYqx0ZtcpeNdUMTM1SZ1s2UmV55/Rk9wQ0p00ZnggHnLKY
         BJL+D1sUS9Sv7vQX8ORNM/RwtBgKoBFd4T5ySXHOy+Uny5cXjbhDkUnzYUiFaYkPO2V9
         xy2RZi/mnr5xt7JAqVkLo6Oi59Tsrdzp9YV5XKsLZgRYzQRaITO+VYRfMagzIpS5dYKs
         MpMdjicz4CGeSAAOk1MNse3Pr50712Iu6fvTT5qFSHcg3XhaXla5CGjatPBD9qn3aYcc
         0AotHuvsv5m4Z4lztE3eYuFkFjKPT9wpA/BUTYVgj/mrsT29qJI8lxc2BRc8ZdVDSLUO
         aZcw==
X-Forwarded-Encrypted: i=1; AJvYcCUNlbBmHCd+b24RawRFPuu9hnPd68iFPXXZLy1RZKWU5GNdKldU1cv63/FC923i1jii7owQPGbNHv4D@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3Xk2+IUC/7oJwQOruhq2tQLX4bCIasX6PqB+IErv/aldRINXT
	GCab0x0SXutz42RU2EVHxfx1JxcuELbRFql5hBuw2kfbRzSeecTTUfYIhSgD++Qu6Sk=
X-Gm-Gg: AY/fxX7VBOaksmBuKATHZRfe9O0hskyJYKe+9h6OtrMn+Zg0xUZwAX8bsqZX9vrFFYM
	KvU4ElUHgCA0ADtZ2+rguuOrPi6ObJIs+CmL767hCipVd7X8CCsqSC4V8k4s1USpNc+QODICakA
	jLBjAXy+dNxIcvLgwzjgPXAmNqZKLc7HVktYABdN12SzMyubV/M17vo4gtJ8u+XP+cjDMTKaIQm
	3rz27W9fk0c46zlT0F04c5CGaSBEcZQR51eVn3jjzGLOaxN1iBCP+rG1hmd9NVfcgNin+enIpbA
	snq783w/+urM7xqATtxJux4B2LXUCFZ1EAgIB3KSCrXT3xFITvbR99Nn9wQIgFfIXOV/l4mC9Hb
	/D75bfoAH2SarNAsoV0fUNlxdKqYPVxMPEaHHAZZxqQt4pVUS1l2cCari9M3fzSo8iMoJOLNvez
	Gh9J9k2VSE7ylkfY6u1aqDL3lm0c1LtbHoThQfGesloUfkRUthjBbICkAYuK+z51fZ9ssQkfo=
X-Received: by 2002:a05:690c:e3e9:b0:792:7374:7ff4 with SMTP id 00721157ae682-793c66ac5e1mr8413757b3.11.1768520571893;
        Thu, 15 Jan 2026 15:42:51 -0800 (PST)
Received: from [192.168.5.15] ([68.95.197.245])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-793c66c72aesm3027117b3.11.2026.01.15.15.42.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jan 2026 15:42:51 -0800 (PST)
From: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>
Date: Thu, 15 Jan 2026 17:42:06 -0600
Subject: [PATCH 7/8] reset: tenstorrent: Add reset controller for Atlantis
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260115-atlantis-clocks-v1-7-7356e671f28b@oss.tenstorrent.com>
References: <20260115-atlantis-clocks-v1-0-7356e671f28b@oss.tenstorrent.com>
In-Reply-To: <20260115-atlantis-clocks-v1-0-7356e671f28b@oss.tenstorrent.com>
To: Drew Fustini <dfustini@oss.tenstorrent.com>, 
 Joel Stanley <jms@oss.tenstorrent.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, 
 Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, joel@jms.id.au, 
 fustini@kernel.org, mpe@kernel.org, mpe@oss.tenstorrent.com, 
 npiggin@oss.tenstorrent.com, agross@kernel.org, agross@oss.tenstorrent.com
X-Mailer: b4 0.14.3

Implement reset controller as an auxiliary device of the clock
controller, sharing the same regmap interface. This version of the
driver covers resets from the RCPU syscon.

Signed-off-by: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>
---
 MAINTAINERS                                |   1 +
 drivers/reset/Kconfig                      |  11 ++
 drivers/reset/Makefile                     |   1 +
 drivers/reset/reset-tenstorrent-atlantis.c | 164 +++++++++++++++++++++++++++++
 4 files changed, 177 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 93d941d2886b..31c3e5bcb32d 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -22538,6 +22538,7 @@ F:	Documentation/devicetree/bindings/riscv/tenstorrent.yaml
 F:	Documentation/devicetree/bindings/soc/tenstorrent/tenstorrent,atlantis-syscon.yaml
 F:	arch/riscv/boot/dts/tenstorrent/
 F:	drivers/clk/tenstorrent/
+F:	drivers/reset/reset-tenstorrent-atlantis.c
 F:	include/dt-bindings/clock/tenstorrent,atlantis-syscon.h
 F:	include/soc/tenstorrent/
 
diff --git a/drivers/reset/Kconfig b/drivers/reset/Kconfig
index 6e5d6deffa7d..cade77717492 100644
--- a/drivers/reset/Kconfig
+++ b/drivers/reset/Kconfig
@@ -324,6 +324,17 @@ config RESET_SUNXI
 	help
 	  This enables the reset driver for Allwinner SoCs.
 
+config RESET_TENSTORRENT_ATLANTIS
+	tristate "Tenstorrent atlantis reset driver"
+	depends on ARCH_TENSTORRENT || COMPILE_TEST
+	select AUXILIARY_BUS
+	default ARCH_TENSTORRENT
+	help
+	  This enables the driver for the reset controller
+	  present in the Tenstorrent Atlantis SoC.
+	  Enable this option to be able to use hardware
+	  resets on Atalantis based systems.
+
 config RESET_TH1520
 	tristate "T-HEAD TH1520 reset controller"
 	depends on ARCH_THEAD || COMPILE_TEST
diff --git a/drivers/reset/Makefile b/drivers/reset/Makefile
index 9c3e484dfd81..a31959da0a88 100644
--- a/drivers/reset/Makefile
+++ b/drivers/reset/Makefile
@@ -41,6 +41,7 @@ obj-$(CONFIG_RESET_SOCFPGA) += reset-socfpga.o
 obj-$(CONFIG_RESET_SPACEMIT) += reset-spacemit.o
 obj-$(CONFIG_RESET_SUNPLUS) += reset-sunplus.o
 obj-$(CONFIG_RESET_SUNXI) += reset-sunxi.o
+obj-$(CONFIG_RESET_TENSTORRENT_ATLANTIS) += reset-tenstorrent-atlantis.o
 obj-$(CONFIG_RESET_TH1520) += reset-th1520.o
 obj-$(CONFIG_RESET_TI_SCI) += reset-ti-sci.o
 obj-$(CONFIG_RESET_TI_SYSCON) += reset-ti-syscon.o
diff --git a/drivers/reset/reset-tenstorrent-atlantis.c b/drivers/reset/reset-tenstorrent-atlantis.c
new file mode 100644
index 000000000000..b1e934a5b054
--- /dev/null
+++ b/drivers/reset/reset-tenstorrent-atlantis.c
@@ -0,0 +1,164 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2026 Tenstorrent
+ */
+
+#include <linux/auxiliary_bus.h>
+#include <linux/device.h>
+#include <linux/io.h>
+#include <linux/of.h>
+#include <linux/module.h>
+#include <linux/reset-controller.h>
+#include <linux/regmap.h>
+
+#include <soc/tenstorrent/atlantis-syscon.h>
+#include <dt-bindings/clock/tenstorrent,atlantis-syscon.h>
+
+struct atlantis_reset_data {
+	u8 bit;
+	u16 reg;
+	bool active_low;
+};
+
+struct atlantis_reset_controller_data {
+	const struct atlantis_reset_data *reset_data;
+	size_t count;
+};
+
+struct atlantis_reset_controller {
+	struct reset_controller_dev rcdev;
+	const struct atlantis_reset_controller_data *data;
+	struct regmap *regmap;
+};
+
+#define to_atlantis_reset_controller(_rcdev) \
+	container_of((_rcdev), struct atlantis_reset_controller, rcdev)
+
+#define RESET_DATA(_reg, _bit, _active_low)                          \
+	{                                                            \
+		.bit = _bit, .reg = _reg, .active_low = _active_low, \
+	}
+
+static const struct atlantis_reset_data atlantis_rcpu_resets[] = {
+	[RST_SMNDMA0] = RESET_DATA(RCPU_BLK_RST_REG, 0, true),
+	[RST_SMNDMA1] = RESET_DATA(RCPU_BLK_RST_REG, 1, true),
+	[RST_WDT0] = RESET_DATA(RCPU_BLK_RST_REG, 2, true),
+	[RST_WDT1] = RESET_DATA(RCPU_BLK_RST_REG, 3, true),
+	[RST_TMR] = RESET_DATA(RCPU_BLK_RST_REG, 4, true),
+	[RST_PVTC] = RESET_DATA(RCPU_BLK_RST_REG, 12, true),
+	[RST_PMU] = RESET_DATA(RCPU_BLK_RST_REG, 13, true),
+	[RST_MAILBOX] = RESET_DATA(RCPU_BLK_RST_REG, 14, true),
+	[RST_SPACC] = RESET_DATA(RCPU_BLK_RST_REG, 26, true),
+	[RST_OTP] = RESET_DATA(RCPU_BLK_RST_REG, 28, true),
+	[RST_TRNG] = RESET_DATA(RCPU_BLK_RST_REG, 29, true),
+	[RST_CRC] = RESET_DATA(RCPU_BLK_RST_REG, 30, true),
+
+	[RST_QSPI] = RESET_DATA(LSIO_BLK_RST_REG, 0, true),
+	[RST_I2C0] = RESET_DATA(LSIO_BLK_RST_REG, 1, true),
+	[RST_I2C1] = RESET_DATA(LSIO_BLK_RST_REG, 2, true),
+	[RST_I2C2] = RESET_DATA(LSIO_BLK_RST_REG, 3, true),
+	[RST_I2C3] = RESET_DATA(LSIO_BLK_RST_REG, 4, true),
+	[RST_I2C4] = RESET_DATA(LSIO_BLK_RST_REG, 5, true),
+	[RST_UART0] = RESET_DATA(LSIO_BLK_RST_REG, 6, true),
+	[RST_UART1] = RESET_DATA(LSIO_BLK_RST_REG, 7, true),
+	[RST_UART2] = RESET_DATA(LSIO_BLK_RST_REG, 8, true),
+	[RST_UART3] = RESET_DATA(LSIO_BLK_RST_REG, 9, true),
+	[RST_UART4] = RESET_DATA(LSIO_BLK_RST_REG, 10, true),
+	[RST_SPI0] = RESET_DATA(LSIO_BLK_RST_REG, 11, true),
+	[RST_SPI1] = RESET_DATA(LSIO_BLK_RST_REG, 12, true),
+	[RST_SPI2] = RESET_DATA(LSIO_BLK_RST_REG, 13, true),
+	[RST_SPI3] = RESET_DATA(LSIO_BLK_RST_REG, 14, true),
+	[RST_GPIO] = RESET_DATA(LSIO_BLK_RST_REG, 15, true),
+	[RST_CAN0] = RESET_DATA(LSIO_BLK_RST_REG, 17, true),
+	[RST_CAN1] = RESET_DATA(LSIO_BLK_RST_REG, 18, true),
+	[RST_I2S0] = RESET_DATA(LSIO_BLK_RST_REG, 19, true),
+	[RST_I2S1] = RESET_DATA(LSIO_BLK_RST_REG, 20, true),
+
+};
+
+static const struct atlantis_reset_controller_data atlantis_rcpu_reset_data = {
+	.reset_data = atlantis_rcpu_resets,
+	.count = ARRAY_SIZE(atlantis_rcpu_resets),
+};
+
+static int atlantis_reset_update(struct reset_controller_dev *rcdev,
+				 unsigned long id, bool assert)
+{
+	unsigned int val;
+	struct atlantis_reset_controller *rst =
+		to_atlantis_reset_controller(rcdev);
+	const struct atlantis_reset_data *data = &rst->data->reset_data[id];
+	unsigned int mask = BIT(data->bit);
+	struct regmap *regmap = rst->regmap;
+
+	if (data->active_low ^ assert)
+		val = mask;
+	else
+		val = ~mask;
+
+	return regmap_update_bits(regmap, data->reg, mask, val);
+}
+
+static int atlantis_reset_assert(struct reset_controller_dev *rcdev,
+				 unsigned long id)
+{
+	return atlantis_reset_update(rcdev, id, true);
+}
+
+static int atlantis_reset_deassert(struct reset_controller_dev *rcdev,
+				   unsigned long id)
+{
+	return atlantis_reset_update(rcdev, id, false);
+}
+
+static const struct reset_control_ops atlantis_reset_control_ops = {
+	.assert = atlantis_reset_assert,
+	.deassert = atlantis_reset_deassert,
+};
+
+static int
+atlantis_reset_controller_register(struct device *dev,
+				   struct atlantis_reset_controller *controller)
+{
+	struct reset_controller_dev *rcdev = &controller->rcdev;
+
+	rcdev->ops = &atlantis_reset_control_ops;
+	rcdev->owner = THIS_MODULE;
+	rcdev->of_node = dev->of_node;
+	rcdev->nr_resets = controller->data->count;
+
+	return devm_reset_controller_register(dev, &controller->rcdev);
+}
+static int atlantis_reset_probe(struct auxiliary_device *adev,
+				const struct auxiliary_device_id *id)
+{
+	struct atlantis_ccu_adev *rdev = to_atlantis_ccu_adev(adev);
+	struct atlantis_reset_controller *controller;
+	struct device *dev = &adev->dev;
+
+	controller = devm_kzalloc(dev, sizeof(*controller), GFP_KERNEL);
+	if (!controller)
+		return -ENOMEM;
+	controller->data =
+		(const struct atlantis_reset_controller_data *)id->driver_data;
+	controller->regmap = rdev->regmap;
+
+	return atlantis_reset_controller_register(dev, controller);
+}
+
+static const struct auxiliary_device_id atlantis_reset_ids[] = {
+	{ .name = "atlantis_ccu.rcpu-reset",
+	  .driver_data = (kernel_ulong_t)&atlantis_rcpu_reset_data },
+	{},
+};
+MODULE_DEVICE_TABLE(auxiliary, atlantis_reset_ids);
+
+static struct auxiliary_driver atlantis_reset_driver = {
+	.probe = atlantis_reset_probe,
+	.id_table = atlantis_reset_ids,
+};
+module_auxiliary_driver(atlantis_reset_driver);
+
+MODULE_AUTHOR("Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>");
+MODULE_DESCRIPTION("Atlantis reset controller driver");
+MODULE_LICENSE("GPL");

-- 
2.43.0


