Return-Path: <devicetree+bounces-138811-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 23CAFA125C9
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 15:18:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 796177A288C
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 14:18:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AAF3C1304B0;
	Wed, 15 Jan 2025 14:18:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ua4n3gYZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AD3170821
	for <devicetree@vger.kernel.org>; Wed, 15 Jan 2025 14:18:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736950710; cv=none; b=hMGxnhdKheho8zVhgj2oDDFnVf9nO/ahIKodY6Ka00yPHWXbIrgjUU2Hs5ndV7QFXrGbxJv/JpJz2K0BaD6wWbwBOZUq8QSUXUp8xoQpQZ8mriZznnp/ETwp7xsb1WQ2r+JbzopEdnHy+y+OCZuDL0HBNWRcQK4voXzSY4/mYTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736950710; c=relaxed/simple;
	bh=54rcKj9lVqynvDHoAB93O0GA2dHiK/RJvdcG+eLmwxo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=boefu6lcnHl0CxxKw/QCReUHf2mFrE1Jd8TYO5wOh9qsS3jWHpJ9g45aUxlZZLVIROpVwsxDWzSOxdUji4XxRLjJkRftCUrMNjVWZUXPzFfSxhsfX028Wzv6THnB3CurfeGRgyYizFNZ2xNGh7z4aQyqCt17tiC0476Uyj7vWto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ua4n3gYZ; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-43624b2d453so71503605e9.2
        for <devicetree@vger.kernel.org>; Wed, 15 Jan 2025 06:18:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736950707; x=1737555507; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iqTDMxF2Bi5tKfL7NusZBTtzFs4bkL2OJHJKxHApeCQ=;
        b=ua4n3gYZ4+E3/fVIYFv3KzUngk6b0bLSZtR8QwdlEkWukOiTLbC35yKZR4uyyAbIrB
         Qsy3gY8juqJ1oPPNvuds3OK8oebkXQ/hEa3PMfcTu72venGOCYi2Nw/qIGEI91W/MuGm
         EaB0Evep0AYg+f2ZnM5khq7LnmHHCMIVp8uSxVtoMw2iZR8IdoK6i9FWUSf81HybVH/E
         H9srIA7SU8DPjc4mKLbiRQrD+2EfiBP+Q+dHo2vv9UyRUbTlqeiTMaB37LXYePal3A2M
         PwbSviFhzYTaj7qPB1kKmm9ue5h1UyS7vOmcxPMpbVLkoWpoEWyWsHv0F2SdHLnmvymz
         Y6BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736950707; x=1737555507;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iqTDMxF2Bi5tKfL7NusZBTtzFs4bkL2OJHJKxHApeCQ=;
        b=u7jnLjh4oGM5ZcQZpQd8eVxLNG3teypS19VR5D4aMbE05nlX1kwITu62av7PFsCqah
         b315qwGsf2qfk3HkZLxzUcfIK2sWitfevh8cy7IMQtBCtaNkH0qaR5N1RY4+6dOrjh7L
         e+1x1wNzaKegf4IHoOuhHxRjmn0fozkC/K/CjKU6rLMoTMSmH+ndXtQv/FX9ZMKY2TIn
         BZb1MvdKd8Vsj/ShpLdYzKY3xTbnkYoMG9Zpl7x72+5FIx2FYfPK7OazEyzlu99wA2PJ
         Q9MG+igphkXm7iSlifKictu+a4K5rLHKSW8DUmuMX/YSj9NwQNabMbCZ7xcBRM386xD0
         vsAA==
X-Forwarded-Encrypted: i=1; AJvYcCXr/7dUak8/rsIiy4b+wcnaPtwPKCEceEttjSJOqpFCKe+Fma0ED7nuQ8P8zUR6ari7cY+TTpya8N4P@vger.kernel.org
X-Gm-Message-State: AOJu0YwytdspRFrLhkuaFAwPZp9FAyCqKtppvUWB1TlveYCrTFG45Ikm
	w7RwmKI+yDe64fKjdCtKFXX9ZJbo7v2gVs9V8rRkGzqGCovP4of1KDXfIVKcqBs=
X-Gm-Gg: ASbGnct09MapOIJh3Cj5VY8asqltQht9STLG2sZkNjFTzQI0iRt4U8MaaKtHUGvMkyT
	G6NXUg2kZs1CUfSTGdR0K5tTS5q55w2K+L6GIx3qZOEQDC1RXpoF1c+44kXgrNNh1XjeUSpWj58
	dMN9aXR7W6Exl5kCPg8x9x3Ve/Jfdp/4WKwV2GEtKPJBfQkV5gkzothDWJDwhvN9uBhCci5s9+I
	FVuyueXfwZtMonmdGf3/5XFH2WM58vWKUymnLm9XiLm+wjlQ77HAC5LTV8Q2d77hbI+vASinMc2
	viyUB3lISzmmcrvhufo1Q35waG196/1VaL35
X-Google-Smtp-Source: AGHT+IFlCE8wPP7lYQHg79ExVGmCV8YprP+GoGNJM/p+F4niowonW9iaUj/pyU6lDxFlG47Jc2IYvw==
X-Received: by 2002:a05:600c:a09:b0:434:f753:6012 with SMTP id 5b1f17b1804b1-436e26aa593mr299127725e9.17.1736950706659;
        Wed, 15 Jan 2025 06:18:26 -0800 (PST)
Received: from ta2.c.googlers.com (169.178.77.34.bc.googleusercontent.com. [34.77.178.169])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-437c74d8e06sm25184555e9.31.2025.01.15.06.18.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jan 2025 06:18:25 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Wed, 15 Jan 2025 14:18:15 +0000
Subject: [PATCH v7 2/3] mailbox: add Samsung Exynos driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250115-acpm-v4-upstream-mbox-v7-2-948e09fcb5f2@linaro.org>
References: <20250115-acpm-v4-upstream-mbox-v7-0-948e09fcb5f2@linaro.org>
In-Reply-To: <20250115-acpm-v4-upstream-mbox-v7-0-948e09fcb5f2@linaro.org>
To: Jassi Brar <jassisinghbrar@gmail.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>
Cc: linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 andre.draszik@linaro.org, peter.griffin@linaro.org, kernel-team@android.com, 
 willmcvicker@google.com, daniel.lezcano@linaro.org, 
 vincent.guittot@linaro.org, ulf.hansson@linaro.org, arnd@arndb.de, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1736950703; l=7962;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=54rcKj9lVqynvDHoAB93O0GA2dHiK/RJvdcG+eLmwxo=;
 b=hTTD0CNBqBpYICt309+40KPDtZJjYhX4xZH4I0kVrggHFdVEizeVD/DhbRVO2BqsTlNplMN3E
 9aQjpqiB65LC8Fed/ZBme9jSsZO5u2GoaZJdduEk61A1UdSK6C6rYMa
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

The Samsung Exynos mailbox controller, used on Google GS101 SoC, has 16
flag bits for hardware interrupt generation and a shared register for
passing mailbox messages. When the controller is used by the
ACPM interface the shared register is ignored and the mailbox controller
acts as a doorbell. The controller just raises the interrupt to APM
after the ACPM interface has written the message to SRAM.

Add support for the Samsung Exynos mailbox controller.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 drivers/mailbox/Kconfig                |  11 +++
 drivers/mailbox/Makefile               |   2 +
 drivers/mailbox/exynos-mailbox.c       | 157 +++++++++++++++++++++++++++++++++
 include/linux/mailbox/exynos-message.h |  19 ++++
 4 files changed, 189 insertions(+)

diff --git a/drivers/mailbox/Kconfig b/drivers/mailbox/Kconfig
index 8ecba7fb999e..3d2adece9ded 100644
--- a/drivers/mailbox/Kconfig
+++ b/drivers/mailbox/Kconfig
@@ -36,6 +36,17 @@ config ARM_MHU_V3
 	  that provides different means of transports: supported extensions
 	  will be discovered and possibly managed at probe-time.
 
+config EXYNOS_MBOX
+	tristate "Exynos Mailbox"
+	depends on ARCH_EXYNOS || COMPILE_TEST
+	help
+	  Say Y here if you want to build the Samsung Exynos Mailbox controller
+	  driver. The controller has 16 flag bits for hardware interrupt
+	  generation and a shared register for passing mailbox messages.
+	  When the controller is used by the ACPM interface the shared register
+	  is ignored and the mailbox controller acts as a doorbell that raises
+	  the interrupt to the ACPM firmware.
+
 config IMX_MBOX
 	tristate "i.MX Mailbox"
 	depends on ARCH_MXC || COMPILE_TEST
diff --git a/drivers/mailbox/Makefile b/drivers/mailbox/Makefile
index 5f4f5b0ce2cc..86192b5c7c32 100644
--- a/drivers/mailbox/Makefile
+++ b/drivers/mailbox/Makefile
@@ -11,6 +11,8 @@ obj-$(CONFIG_ARM_MHU_V2)	+= arm_mhuv2.o
 
 obj-$(CONFIG_ARM_MHU_V3)	+= arm_mhuv3.o
 
+obj-$(CONFIG_EXYNOS_MBOX)	+= exynos-mailbox.o
+
 obj-$(CONFIG_IMX_MBOX)	+= imx-mailbox.o
 
 obj-$(CONFIG_ARMADA_37XX_RWTM_MBOX)	+= armada-37xx-rwtm-mailbox.o
diff --git a/drivers/mailbox/exynos-mailbox.c b/drivers/mailbox/exynos-mailbox.c
new file mode 100644
index 000000000000..20049f0ec5ff
--- /dev/null
+++ b/drivers/mailbox/exynos-mailbox.c
@@ -0,0 +1,157 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright 2020 Samsung Electronics Co., Ltd.
+ * Copyright 2020 Google LLC.
+ * Copyright 2024 Linaro Ltd.
+ */
+
+#include <linux/bitops.h>
+#include <linux/bits.h>
+#include <linux/clk.h>
+#include <linux/io.h>
+#include <linux/mailbox_controller.h>
+#include <linux/mailbox/exynos-message.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/platform_device.h>
+#include <linux/slab.h>
+
+#define EXYNOS_MBOX_MCUCTRL		0x0	/* Mailbox Control Register */
+#define EXYNOS_MBOX_INTCR0		0x24	/* Interrupt Clear Register 0 */
+#define EXYNOS_MBOX_INTMR0		0x28	/* Interrupt Mask Register 0 */
+#define EXYNOS_MBOX_INTSR0		0x2c	/* Interrupt Status Register 0 */
+#define EXYNOS_MBOX_INTMSR0		0x30	/* Interrupt Mask Status Register 0 */
+#define EXYNOS_MBOX_INTGR1		0x40	/* Interrupt Generation Register 1 */
+#define EXYNOS_MBOX_INTMR1		0x48	/* Interrupt Mask Register 1 */
+#define EXYNOS_MBOX_INTSR1		0x4c	/* Interrupt Status Register 1 */
+#define EXYNOS_MBOX_INTMSR1		0x50	/* Interrupt Mask Status Register 1 */
+
+#define EXYNOS_MBOX_INTMR0_MASK		GENMASK(15, 0)
+#define EXYNOS_MBOX_INTGR1_MASK		GENMASK(15, 0)
+
+#define EXYNOS_MBOX_CHAN_COUNT		HWEIGHT32(EXYNOS_MBOX_INTGR1_MASK)
+
+/**
+ * struct exynos_mbox - driver's private data.
+ * @regs:	mailbox registers base address.
+ * @mbox:	pointer to the mailbox controller.
+ * @pclk:	pointer to the mailbox peripheral clock.
+ */
+struct exynos_mbox {
+	void __iomem *regs;
+	struct mbox_controller *mbox;
+	struct clk *pclk;
+};
+
+static int exynos_mbox_send_data(struct mbox_chan *chan, void *data)
+{
+	struct device *dev = chan->mbox->dev;
+	struct exynos_mbox *exynos_mbox = dev_get_drvdata(dev);
+	struct exynos_mbox_msg *msg = data;
+
+	if (msg->chan_id >= exynos_mbox->mbox->num_chans) {
+		dev_err(dev, "Invalid channel ID %d\n", msg->chan_id);
+		return -EINVAL;
+	}
+
+	if (msg->chan_type != EXYNOS_MBOX_CHAN_TYPE_DOORBELL) {
+		dev_err(dev, "Unsupported channel type [%d]\n", msg->chan_type);
+		return -EINVAL;
+	};
+
+	writel(BIT(msg->chan_id), exynos_mbox->regs + EXYNOS_MBOX_INTGR1);
+
+	return 0;
+}
+
+static const struct mbox_chan_ops exynos_mbox_chan_ops = {
+	.send_data = exynos_mbox_send_data,
+};
+
+static struct mbox_chan *exynos_mbox_of_xlate(struct mbox_controller *mbox,
+					      const struct of_phandle_args *sp)
+{
+	int i;
+
+	if (sp->args_count != 0)
+		return ERR_PTR(-EINVAL);
+
+	/*
+	 * Return the first available channel. When we don't pass the
+	 * channel ID from device tree, each channel populated by the driver is
+	 * just a software construct or a virtual channel. We use 'void *data'
+	 * in send_data() to pass the channel identifiers.
+	 */
+	for (i = 0; i < mbox->num_chans; i++)
+		if (mbox->chans[i].cl == NULL)
+			return &mbox->chans[i];
+	return ERR_PTR(-EINVAL);
+}
+
+static const struct of_device_id exynos_mbox_match[] = {
+	{ .compatible = "google,gs101-mbox" },
+	{},
+};
+MODULE_DEVICE_TABLE(of, exynos_mbox_match);
+
+static int exynos_mbox_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct exynos_mbox *exynos_mbox;
+	struct mbox_controller *mbox;
+	struct mbox_chan *chans;
+	int i;
+
+	exynos_mbox = devm_kzalloc(dev, sizeof(*exynos_mbox), GFP_KERNEL);
+	if (!exynos_mbox)
+		return -ENOMEM;
+
+	mbox = devm_kzalloc(dev, sizeof(*mbox), GFP_KERNEL);
+	if (!mbox)
+		return -ENOMEM;
+
+	chans = devm_kcalloc(dev, EXYNOS_MBOX_CHAN_COUNT, sizeof(*chans),
+			     GFP_KERNEL);
+	if (!chans)
+		return -ENOMEM;
+
+	exynos_mbox->regs = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(exynos_mbox->regs))
+		return PTR_ERR(exynos_mbox->regs);
+
+	exynos_mbox->pclk = devm_clk_get_enabled(dev, "pclk");
+	if (IS_ERR(exynos_mbox->pclk))
+		return dev_err_probe(dev, PTR_ERR(exynos_mbox->pclk),
+				     "Failed to enable clock.\n");
+
+	mbox->num_chans = EXYNOS_MBOX_CHAN_COUNT;
+	mbox->chans = chans;
+	mbox->dev = dev;
+	mbox->ops = &exynos_mbox_chan_ops;
+	mbox->of_xlate = exynos_mbox_of_xlate;
+
+	for (i = 0; i < EXYNOS_MBOX_CHAN_COUNT; i++)
+		chans[i].mbox = mbox;
+
+	exynos_mbox->mbox = mbox;
+
+	platform_set_drvdata(pdev, exynos_mbox);
+
+	/* Mask out all interrupts. We support just polling channels for now. */
+	writel(EXYNOS_MBOX_INTMR0_MASK, exynos_mbox->regs + EXYNOS_MBOX_INTMR0);
+
+	return devm_mbox_controller_register(dev, mbox);
+}
+
+static struct platform_driver exynos_mbox_driver = {
+	.probe	= exynos_mbox_probe,
+	.driver	= {
+		.name = "exynos-acpm-mbox",
+		.of_match_table	= exynos_mbox_match,
+	},
+};
+module_platform_driver(exynos_mbox_driver);
+
+MODULE_AUTHOR("Tudor Ambarus <tudor.ambarus@linaro.org>");
+MODULE_DESCRIPTION("Samsung Exynos mailbox driver");
+MODULE_LICENSE("GPL");
diff --git a/include/linux/mailbox/exynos-message.h b/include/linux/mailbox/exynos-message.h
new file mode 100644
index 000000000000..5a9ed5ce2046
--- /dev/null
+++ b/include/linux/mailbox/exynos-message.h
@@ -0,0 +1,19 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Exynos mailbox message.
+ *
+ * Copyright 2024 Linaro Ltd.
+ */
+
+#ifndef _LINUX_EXYNOS_MESSAGE_H_
+#define _LINUX_EXYNOS_MESSAGE_H_
+
+#define EXYNOS_MBOX_CHAN_TYPE_DOORBELL		0
+#define EXYNOS_MBOX_CHAN_TYPE_DATA		1
+
+struct exynos_mbox_msg {
+	unsigned int chan_id;
+	unsigned int chan_type;
+};
+
+#endif /* _LINUX_EXYNOS_MESSAGE_H_ */

-- 
2.48.0.rc2.279.g1de40edade-goog


