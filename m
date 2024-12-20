Return-Path: <devicetree+bounces-133107-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D76DF9F93C5
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 14:58:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 615F918861DE
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 13:54:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45CF521B18B;
	Fri, 20 Dec 2024 13:50:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Yq8/mABM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2B4721A431
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 13:50:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734702607; cv=none; b=FHyvRbbHcDlnpEWJ1HdNeHp9LRqpVBZj0XA6P/TmKPVzEfR+CZFtHk/Xzcir01Gn6laHW3+ilFyIaa9bKtJZRlf3+HcIt9I5Ev/dzP3LvROuYYO0fimJw9YjJeFTk5VFXscmQipcLx4snEAbdvlusP/ovhunHH1A4RIZT6aq9uI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734702607; c=relaxed/simple;
	bh=8V4hRjvTjS/OPHho+b5gFECG0twWFwovkcgrCiubsOw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=YzDr2hyobBQVF3fV4euCfSUE0+e/kxtdgdXO7jruxs55UjdrD5LaqELFfd6etxu3zuVdvgHk3zE884wpAQDyCzYkfie+ilPjzpo33j2aL4S/WczJJd3LSFCqUKBr6IDkZIknNy9xkBnO4/Ybz+KY+BPH/ydEG1MbVonqaCzSFpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Yq8/mABM; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-3862d16b4f5so1333296f8f.0
        for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 05:50:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734702603; x=1735307403; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QmwzVQdSamTI4Mm25hbiGBJIk1Q/esKMsBlmHYpUYHM=;
        b=Yq8/mABM8ooWWfsYifETiI6KwVyj1jfnKNHU+K8PEUjgBr4dq+KkEmVxjaukZ+s0qK
         eiyULWMQLYmSH3vZ3bNqRCSQ72E0S8t9W75vcTk78qUzU3x/ZcfYQtqQT0kTXB90KEN1
         LByxtODLM/09CrhlhMCjiw/X6+GqKD7J252EC75U5AWl+g2wG/btuf0A9B7fVVQn1puk
         J9ZShUlU4zmdTEwntTBE9FM5PVsmGRgXNRhzY8n1U/kh5XTHSdSXCTZO7hOw4AX1sFZM
         1lD2CL2b9bPA/Lff05abUvCAo/zLoAfj6DVZ0gxbd/DipQQyLNQ7haoZQ8Jb7zbJOAkI
         h24g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734702603; x=1735307403;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QmwzVQdSamTI4Mm25hbiGBJIk1Q/esKMsBlmHYpUYHM=;
        b=VKOlMFAdWnIcKsAjHogf0B4YHdgoOlh1iEK3esgLzNeBAY3HxvWNXOxWvu8LXczOjq
         YjI25ohN2OIaPmRDN5tiFVPNzvrxpdpi5+GASFHQJG2+5oHP5OgPc2a9/ioXdgUM39Lx
         gyUON3KpV7CV1+rcPSwYAmON0zoRzNLHmcUc1jQkKP82yPKTYiun+GTvk+Rzd3SE7Yaa
         qfYCnRhTmsvEDQFE9SwlDo3HQ2+x01ZNmul+jikHorDRYlFBLUjj3eexl7OMVMF9fH/P
         AAo6Wer06u7vdKxNs5E/aDncqesEloFUdbxafx8sZPAUgupu0hwXvtPd1pAAcE436J4K
         ME+A==
X-Forwarded-Encrypted: i=1; AJvYcCUFnQQVw5E2nOW3szuwdg1h+HgOR2Fx3M03uBeuRCAir5afQ9jCv4YP0O1YJmTV0E9md9zKoDdeUb/l@vger.kernel.org
X-Gm-Message-State: AOJu0YzsKQsiPRq4x6rW/ybH3hdNZxSFCdclauInmpHyZJ1sjiqvBa8q
	Erk4bGyDdqzsCjGGUGaNZcRbIXH+eqLZUGBXBxTrc41gTfuhhWjTnkqs33qtVNw=
X-Gm-Gg: ASbGncvgEJ5P7E/pHa7MkE3kn1W+cI+DwRsn8GbGGd0rGhhuHTRzkveli+z/Zgl2L90
	c4CmNKGTYt5k/UmD9JBF+Vks/5cULGOla2hkBvI4IZq/NjZqq2JrwfozX7RjtknrtWXw8OOLwLG
	aPNz6ALwy6yFTwpigJfZ7G8v6kOZliEX/g8b3eJkJiUsW5w4ZeXP7jNI0rc/y/k6VSKlsFfHn40
	ZQw9QD5By13lWfH0cXKYa7s/2Rwz+ggwtsLWHOSI2UVvhkeBilrSkXWKs4v7veIBAXm8+6eocyx
	QShfv3hw8v0bfHXoVfycZ8F8+QH3FFd/jjBd
X-Google-Smtp-Source: AGHT+IG4yktd0Nvj4jp85019vCB0iMT9S1j+gDh88vOL8Wge+kTTESou7askbSNFyaZ7Gt6ZtnOLAg==
X-Received: by 2002:a05:6000:1acd:b0:386:3c2f:a3e7 with SMTP id ffacd0b85a97d-38a1a1f7298mr6356413f8f.3.1734702603348;
        Fri, 20 Dec 2024 05:50:03 -0800 (PST)
Received: from ta2.c.googlers.com (130.173.34.34.bc.googleusercontent.com. [34.34.173.130])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a1c832e74sm4044313f8f.30.2024.12.20.05.50.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Dec 2024 05:50:02 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Fri, 20 Dec 2024 13:49:59 +0000
Subject: [PATCH v6 4/5] mailbox: add Samsung Exynos driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241220-acpm-v4-upstream-mbox-v6-4-a6942806e52a@linaro.org>
References: <20241220-acpm-v4-upstream-mbox-v6-0-a6942806e52a@linaro.org>
In-Reply-To: <20241220-acpm-v4-upstream-mbox-v6-0-a6942806e52a@linaro.org>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1734702598; l=7455;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=8V4hRjvTjS/OPHho+b5gFECG0twWFwovkcgrCiubsOw=;
 b=aFSKkY8CH0jktsAVfeCjhnjjDoAFx4ULnLvakRK6H6Z+77IEJyqtRBaxSWah93ELQ7I8E4wWw
 nM/5nv7SeA+A0J15n+UpbuzK9zJ4psVXCTpXcGxYoVWX9ALZbNSHk2w
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

The Samsung Exynos mailbox controller, used on Google GS101 SoC, has 16
flag bits for hardware interrupt generation and a shared register for
passing mailbox messages. When the controller is used by the
ACPM protocol the shared register is ignored and the mailbox controller
acts as a doorbell. The controller just raises the interrupt to APM
after the ACPM protocol has written the message to SRAM.

Add support for the Samsung Exynos mailbox controller.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 drivers/mailbox/Kconfig          |  11 +++
 drivers/mailbox/Makefile         |   2 +
 drivers/mailbox/exynos-mailbox.c | 174 +++++++++++++++++++++++++++++++++++++++
 3 files changed, 187 insertions(+)

diff --git a/drivers/mailbox/Kconfig b/drivers/mailbox/Kconfig
index 8ecba7fb999e..44b808c4d97f 100644
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
+	  When the controller is used by the ACPM protocol the shared register
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
index 000000000000..07bbc6b442ef
--- /dev/null
+++ b/drivers/mailbox/exynos-mailbox.c
@@ -0,0 +1,174 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright 2020 Samsung Electronics Co., Ltd.
+ * Copyright 2020 Google LLC.
+ * Copyright 2024 Linaro Ltd.
+ */
+
+#include <dt-bindings/mailbox/google,gs101.h>
+#include <linux/bitops.h>
+#include <linux/bits.h>
+#include <linux/clk.h>
+#include <linux/io.h>
+#include <linux/mailbox_controller.h>
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
+enum {
+	EXYNOS_MBOX_CELL_ID,
+	EXYNOS_MBOX_CELL_TYPE,
+	EXYNOS_MBOX_CELLS
+};
+
+#define EXYNOS_MBOX_CELL_TYPE_COUNT	2
+
+/**
+ * struct exynos_mbox - driver's private data.
+ * @regs:	mailbox registers base address.
+ * @mbox:	pointer to the mailbox controller.
+ * @dev:	pointer to the mailbox device.
+ * @pclk:	pointer to the mailbox peripheral clock.
+ */
+struct exynos_mbox {
+	void __iomem *regs;
+	struct mbox_controller *mbox;
+	struct device *dev;
+	struct clk *pclk;
+};
+
+static inline int exynos_mbox_chan_index(struct mbox_chan *chan)
+{
+	return chan - chan->mbox->chans;
+}
+
+static int exynos_mbox_send_data(struct mbox_chan *chan, void *data)
+{
+	struct exynos_mbox *exynos_mbox = dev_get_drvdata(chan->mbox->dev);
+	int index = exynos_mbox_chan_index(chan);
+
+	writel(BIT(index), exynos_mbox->regs + EXYNOS_MBOX_INTGR1);
+
+	return 0;
+}
+
+static const struct mbox_chan_ops exynos_mbox_chan_ops = {
+	.send_data = exynos_mbox_send_data,
+};
+
+static struct mbox_chan *exynos_mbox_xlate(struct mbox_controller *mbox,
+					   const struct mbox_xlate_args *sp)
+{
+	u32 id, type;
+
+	if (sp->args_count != EXYNOS_MBOX_CELLS) {
+		dev_err(mbox->dev, "Invalid argument count %d\n",
+			sp->args_count);
+		return ERR_PTR(-EINVAL);
+	}
+
+	id = sp->args[EXYNOS_MBOX_CELL_ID];
+	if (id >= mbox->num_chans) {
+		dev_err(mbox->dev, "Invalid channel ID %d\n", id);
+		return ERR_PTR(-EINVAL);
+	}
+
+	type = sp->args[EXYNOS_MBOX_CELL_TYPE];
+	if (type >= EXYNOS_MBOX_CELL_TYPE_COUNT) {
+		dev_err(mbox->dev, "Invalid channel type %d\n", type);
+		return ERR_PTR(-EINVAL);
+	}
+
+	if (type == DATA) {
+		dev_err(mbox->dev, "DATA channel type [%d] not supported\n",
+			type);
+		return ERR_PTR(-EINVAL);
+	};
+
+	return &mbox->chans[id];
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
+	mbox->xlate = exynos_mbox_xlate;
+
+	for (i = 0; i < EXYNOS_MBOX_CHAN_COUNT; i++)
+		chans[i].mbox = mbox;
+
+	exynos_mbox->dev = dev;
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

-- 
2.47.1.613.gc27f4b7a9f-goog


