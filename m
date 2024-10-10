Return-Path: <devicetree+bounces-109811-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A8449980A2
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2024 10:48:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3B4D91C277DD
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2024 08:48:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ADEF51E9077;
	Thu, 10 Oct 2024 08:30:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.loongson.cn (mail.loongson.cn [114.242.206.163])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE44C1E8847;
	Thu, 10 Oct 2024 08:30:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=114.242.206.163
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728549056; cv=none; b=sYUem5a2g88FJCSAB+uSu8tv/rCQ1h3Qx4xfKpcW6/+wljVslKLTMrQnL5S0S+Xkv9FlaAgT6yowq1/JdaFMkejY9jqbl3jC0dA+r62NN1R0lFgYSlXvUrvYurzwqYH583BBr+XVy0uedHl2Cjinfgj2QV53eB/86gV3c1f/gq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728549056; c=relaxed/simple;
	bh=b0syi/nlZTk1+i6vQ3OGf8CgwCqk30ZwvKzC15VXTQw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Er+y0t82VChj3k2/ET3le8AbBCZthyenB0KHhNIJlEFcfubzDC8tdGWjYYFIoGNzn5fzcB/bSH5rr3RpT6cCDK/zdw75TK0WVkcviijSds/tUkwPNXn4+yz3rh28sct2XSDPo2ByU37gZ/iICEbYxb7XWp0kKScZBCxcotqgS34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=loongson.cn; spf=pass smtp.mailfrom=loongson.cn; arc=none smtp.client-ip=114.242.206.163
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=loongson.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=loongson.cn
Received: from loongson.cn (unknown [223.64.68.38])
	by gateway (Coremail) with SMTP id _____8BxqrG2kAdnKvcRAA--.25682S3;
	Thu, 10 Oct 2024 16:30:46 +0800 (CST)
Received: from localhost.localdomain (unknown [223.64.68.38])
	by front1 (Coremail) with SMTP id qMiowMBxHeSukAdnjDciAA--.42807S4;
	Thu, 10 Oct 2024 16:30:43 +0800 (CST)
From: Binbin Zhou <zhoubinbin@loongson.cn>
To: Binbin Zhou <zhoubb.aaron@gmail.com>,
	Huacai Chen <chenhuacai@loongson.cn>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <ukleinek@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Juxin Gao <gaojuxin@loongson.cn>
Cc: Huacai Chen <chenhuacai@kernel.org>,
	linux-pwm@vger.kernel.org,
	devicetree@vger.kernel.org,
	Xuerui Wang <kernel@xen0n.name>,
	loongarch@lists.linux.dev,
	Binbin Zhou <zhoubinbin@loongson.cn>
Subject: [PATCH v6 2/2] pwm: Add Loongson PWM controller support
Date: Thu, 10 Oct 2024 16:30:26 +0800
Message-ID: <aab9b84ca3ea7e37cc42ad1622724e8198b5b0ea.1728463622.git.zhoubinbin@loongson.cn>
X-Mailer: git-send-email 2.43.5
In-Reply-To: <cover.1728463622.git.zhoubinbin@loongson.cn>
References: <cover.1728463622.git.zhoubinbin@loongson.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:qMiowMBxHeSukAdnjDciAA--.42807S4
X-CM-SenderInfo: p2kr3uplqex0o6or00hjvr0hdfq/
X-Coremail-Antispam: 1Uk129KBj93XoW3ZF4Uur4xCw1rJryfKFWkXwc_yoWkZryrpF
	95A34YgryayrWjkws8ZFZ5urn8Z34fZasrJFWfCw1Uur9rtw18Zw1kKF97Gw42yr1kGr1I
	vFWrCrWrCF4DGFbCm3ZEXasCq-sJn29KB7ZKAUJUUUUr529EdanIXcx71UUUUU7KY7ZEXa
	sCq-sGcSsGvfJ3Ic02F40EFcxC0VAKzVAqx4xG6I80ebIjqfuFe4nvWSU5nxnvy29KBjDU
	0xBIdaVrnRJUUUBIb4IE77IF4wAFF20E14v26r1j6r4UM7CY07I20VC2zVCF04k26cxKx2
	IYs7xG6rWj6s0DM7CIcVAFz4kK6r1Y6r17M28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48v
	e4kI8wA2z4x0Y4vE2Ix0cI8IcVAFwI0_Gr0_Xr1l84ACjcxK6xIIjxv20xvEc7CjxVAFwI
	0_Gr0_Cr1l84ACjcxK6I8E87Iv67AKxVW8Jr0_Cr1UM28EF7xvwVC2z280aVCY1x0267AK
	xVW8Jr0_Cr1UM2kKe7AKxVWUXVWUAwAS0I0E0xvYzxvE52x082IY62kv0487Mc804VCY07
	AIYIkI8VC2zVCFFI0UMc02F40EFcxC0VAKzVAqx4xG6I80ewAv7VC0I7IYx2IY67AKxVWU
	tVWrXwAv7VC2z280aVAFwI0_Gr0_Cr1lOx8S6xCaFVCjc4AY6r1j6r4UM4x0Y48IcxkI7V
	AKI48JMxkF7I0En4kS14v26r126r1DMxAIw28IcxkI7VAKI48JMxC20s026xCaFVCjc4AY
	6r1j6r4UMxCIbckI1I0E14v26r1Y6r17MI8I3I0E5I8CrVAFwI0_Jr0_Jr4lx2IqxVCjr7
	xvwVAFwI0_JrI_JrWlx4CE17CEb7AF67AKxVWUtVW8ZwCIc40Y0x0EwIxGrwCI42IY6xII
	jxv20xvE14v26r4j6ryUMIIF0xvE2Ix0cI8IcVCY1x0267AKxVW8JVWxJwCI42IY6xAIw2
	0EY4v20xvaj40_Jr0_JF4lIxAIcVC2z280aVAFwI0_Gr0_Cr1lIxAIcVC2z280aVCY1x02
	67AKxVW8JVW8JrUvcSsGvfC2KfnxnUUI43ZEXa7IU0epB3UUUUU==

This commit adds a generic PWM framework driver for the PWM controller
found on Loongson family chips.

Co-developed-by: Juxin Gao <gaojuxin@loongson.cn>
Signed-off-by: Juxin Gao <gaojuxin@loongson.cn>
Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
Acked-by: Huacai Chen <chenhuacai@loongson.cn>
---
 MAINTAINERS                |   1 +
 drivers/pwm/Kconfig        |  12 ++
 drivers/pwm/Makefile       |   1 +
 drivers/pwm/pwm-loongson.c | 287 +++++++++++++++++++++++++++++++++++++
 4 files changed, 301 insertions(+)
 create mode 100644 drivers/pwm/pwm-loongson.c

diff --git a/MAINTAINERS b/MAINTAINERS
index 18d2c65c744f..9d033799c6ec 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -13388,6 +13388,7 @@ M:	Binbin Zhou <zhoubinbin@loongson.cn>
 L:	linux-pwm@vger.kernel.org
 S:	Maintained
 F:	Documentation/devicetree/bindings/pwm/loongson,ls7a-pwm.yaml
+F:	drivers/pwm/pwm-loongson.c
 
 LOONGSON-2 SOC SERIES CLOCK DRIVER
 M:	Yinbo Zhu <zhuyinbo@loongson.cn>
diff --git a/drivers/pwm/Kconfig b/drivers/pwm/Kconfig
index 0915c1e7df16..ef02a44d83a7 100644
--- a/drivers/pwm/Kconfig
+++ b/drivers/pwm/Kconfig
@@ -351,6 +351,18 @@ config PWM_KEEMBAY
 	  To compile this driver as a module, choose M here: the module
 	  will be called pwm-keembay.
 
+config PWM_LOONGSON
+	tristate "Loongson PWM support"
+	depends on MACH_LOONGSON64 || COMPILE_TEST
+	depends on COMMON_CLK
+	help
+	  Generic PWM framework driver for Loongson family.
+	  It can be found on Loongson-2K series cpus and Loongson LS7A
+	  bridge chips.
+
+	  To compile this driver as a module, choose M here: the module
+	  will be called pwm-loongson.
+
 config PWM_LP3943
 	tristate "TI/National Semiconductor LP3943 PWM support"
 	depends on MFD_LP3943
diff --git a/drivers/pwm/Makefile b/drivers/pwm/Makefile
index 9081e0c0e9e0..7c18c9be419f 100644
--- a/drivers/pwm/Makefile
+++ b/drivers/pwm/Makefile
@@ -30,6 +30,7 @@ obj-$(CONFIG_PWM_INTEL_LGM)	+= pwm-intel-lgm.o
 obj-$(CONFIG_PWM_IQS620A)	+= pwm-iqs620a.o
 obj-$(CONFIG_PWM_JZ4740)	+= pwm-jz4740.o
 obj-$(CONFIG_PWM_KEEMBAY)	+= pwm-keembay.o
+obj-$(CONFIG_PWM_LOONGSON)	+= pwm-loongson.o
 obj-$(CONFIG_PWM_LP3943)	+= pwm-lp3943.o
 obj-$(CONFIG_PWM_LPC18XX_SCT)	+= pwm-lpc18xx-sct.o
 obj-$(CONFIG_PWM_LPC32XX)	+= pwm-lpc32xx.o
diff --git a/drivers/pwm/pwm-loongson.c b/drivers/pwm/pwm-loongson.c
new file mode 100644
index 000000000000..cdd320ed3060
--- /dev/null
+++ b/drivers/pwm/pwm-loongson.c
@@ -0,0 +1,287 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2017-2024 Loongson Technology Corporation Limited.
+ *
+ * Loongson PWM driver
+ *
+ * For Loongson's PWM IP block documentation please refer Chapter 11 of
+ * Reference Manual: https://loongson.github.io/LoongArch-Documentation/Loongson-7A1000-usermanual-EN.pdf
+ *
+ * Author: Juxin Gao <gaojuxin@loongson.cn>
+ * Further cleanup and restructuring by:
+ *         Binbin Zhou <zhoubinbin@loongson.cn>
+ *
+ * Limitations:
+ * - The buffer register value should be written before the CTRL register.
+ * - When disabled the output is driven to 0 independent of the configured
+ *   polarity.
+ */
+
+#include <linux/acpi.h>
+#include <linux/clk.h>
+#include <linux/device.h>
+#include <linux/init.h>
+#include <linux/io.h>
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/platform_device.h>
+#include <linux/pwm.h>
+#include <linux/units.h>
+
+/* Loongson PWM registers */
+#define LOONGSON_PWM_REG_DUTY		0x4 /* Low Pulse Buffer Register */
+#define LOONGSON_PWM_REG_PERIOD		0x8 /* Pulse Period Buffer Register */
+#define LOONGSON_PWM_REG_CTRL		0xc /* Control Register */
+
+/* Control register bits */
+#define LOONGSON_PWM_CTRL_EN		BIT(0)  /* Counter Enable Bit */
+#define LOONGSON_PWM_CTRL_OE		BIT(3)  /* Pulse Output Enable Control Bit, Valid Low */
+#define LOONGSON_PWM_CTRL_SINGLE	BIT(4)  /* Single Pulse Control Bit */
+#define LOONGSON_PWM_CTRL_INTE		BIT(5)  /* Interrupt Enable Bit */
+#define LOONGSON_PWM_CTRL_INT		BIT(6)  /* Interrupt Bit */
+#define LOONGSON_PWM_CTRL_RST		BIT(7)  /* Counter Reset Bit */
+#define LOONGSON_PWM_CTRL_CAPTE		BIT(8)  /* Measurement Pulse Enable Bit */
+#define LOONGSON_PWM_CTRL_INVERT	BIT(9)  /* Output flip-flop Enable Bit */
+#define LOONGSON_PWM_CTRL_DZONE		BIT(10) /* Anti-dead Zone Enable Bit */
+
+#define LOONGSON_PWM_FREQ_STD		(50 * HZ_PER_KHZ)
+
+struct pwm_loongson_suspend_store {
+	u32 ctrl;
+	u32 duty;
+	u32 period;
+};
+
+struct pwm_loongson_ddata {
+	struct clk *clk;
+	void __iomem *base;
+	u64 clk_rate;
+	struct pwm_loongson_suspend_store lss;
+};
+
+static inline struct pwm_loongson_ddata *to_pwm_loongson_ddata(struct pwm_chip *chip)
+{
+	return pwmchip_get_drvdata(chip);
+}
+
+static inline u32 pwm_loongson_readl(struct pwm_loongson_ddata *ddata, u32 offset)
+{
+	return readl(ddata->base + offset);
+}
+
+static inline void pwm_loongson_writel(struct pwm_loongson_ddata *ddata,
+				       u32 val, u32 offset)
+{
+	writel(val, ddata->base + offset);
+}
+
+static int pwm_loongson_set_polarity(struct pwm_chip *chip, struct pwm_device *pwm,
+				     enum pwm_polarity polarity)
+{
+	u16 val;
+	struct pwm_loongson_ddata *ddata = to_pwm_loongson_ddata(chip);
+
+	val = pwm_loongson_readl(ddata, LOONGSON_PWM_REG_CTRL);
+
+	if (polarity == PWM_POLARITY_INVERSED)
+		/* Duty cycle defines LOW period of PWM */
+		val |= LOONGSON_PWM_CTRL_INVERT;
+	else
+		/* Duty cycle defines HIGH period of PWM */
+		val &= ~LOONGSON_PWM_CTRL_INVERT;
+
+	pwm_loongson_writel(ddata, val, LOONGSON_PWM_REG_CTRL);
+
+	return 0;
+}
+
+static void pwm_loongson_disable(struct pwm_chip *chip, struct pwm_device *pwm)
+{
+	u32 val;
+	struct pwm_loongson_ddata *ddata = to_pwm_loongson_ddata(chip);
+
+	val = pwm_loongson_readl(ddata, LOONGSON_PWM_REG_CTRL);
+	val &= ~LOONGSON_PWM_CTRL_EN;
+	pwm_loongson_writel(ddata, val, LOONGSON_PWM_REG_CTRL);
+}
+
+static int pwm_loongson_enable(struct pwm_chip *chip, struct pwm_device *pwm)
+{
+	u32 val;
+	struct pwm_loongson_ddata *ddata = to_pwm_loongson_ddata(chip);
+
+	val = pwm_loongson_readl(ddata, LOONGSON_PWM_REG_CTRL);
+	val |= LOONGSON_PWM_CTRL_EN;
+	pwm_loongson_writel(ddata, val, LOONGSON_PWM_REG_CTRL);
+
+	return 0;
+}
+
+static int pwm_loongson_config(struct pwm_chip *chip, struct pwm_device *pwm,
+			       u64 duty_ns, u64 period_ns)
+{
+	u32 duty, period;
+	struct pwm_loongson_ddata *ddata = to_pwm_loongson_ddata(chip);
+
+	/* duty = duty_ns * ddata->clk_rate / NSEC_PER_SEC */
+	duty = mul_u64_u64_div_u64(duty_ns, ddata->clk_rate, NSEC_PER_SEC);
+	pwm_loongson_writel(ddata, duty, LOONGSON_PWM_REG_DUTY);
+
+	/* period = period_ns * ddata->clk_rate / NSEC_PER_SEC */
+	period = mul_u64_u64_div_u64(period_ns, ddata->clk_rate, NSEC_PER_SEC);
+	pwm_loongson_writel(ddata, period, LOONGSON_PWM_REG_PERIOD);
+
+	return 0;
+}
+
+static int pwm_loongson_apply(struct pwm_chip *chip, struct pwm_device *pwm,
+			      const struct pwm_state *state)
+{
+	int ret;
+	u64 period, duty_cycle;
+	bool enabled = pwm->state.enabled;
+
+	if (!state->enabled) {
+		if (enabled)
+			pwm_loongson_disable(chip, pwm);
+		return 0;
+	}
+
+	ret = pwm_loongson_set_polarity(chip, pwm, state->polarity);
+	if (ret)
+		return ret;
+
+	period = min(state->period, NANOHZ_PER_HZ);
+	duty_cycle = min(state->duty_cycle, NANOHZ_PER_HZ);
+
+	ret = pwm_loongson_config(chip, pwm, duty_cycle, period);
+	if (ret)
+		return ret;
+
+	if (!enabled && state->enabled)
+		ret = pwm_loongson_enable(chip, pwm);
+
+	return ret;
+}
+
+static int pwm_loongson_get_state(struct pwm_chip *chip, struct pwm_device *pwm,
+				  struct pwm_state *state)
+{
+	u32 duty, period, ctrl;
+	struct pwm_loongson_ddata *ddata = to_pwm_loongson_ddata(chip);
+
+	duty = pwm_loongson_readl(ddata, LOONGSON_PWM_REG_DUTY);
+	period = pwm_loongson_readl(ddata, LOONGSON_PWM_REG_PERIOD);
+	ctrl = pwm_loongson_readl(ddata, LOONGSON_PWM_REG_CTRL);
+
+	/* duty & period have a max of 2^32, so we can't overflow */
+	state->duty_cycle = DIV64_U64_ROUND_UP((u64)duty * NSEC_PER_SEC, ddata->clk_rate);
+	state->period = DIV64_U64_ROUND_UP((u64)period * NSEC_PER_SEC, ddata->clk_rate);
+	state->polarity = (ctrl & LOONGSON_PWM_CTRL_INVERT) ? PWM_POLARITY_INVERSED :
+			  PWM_POLARITY_NORMAL;
+	state->enabled = (ctrl & LOONGSON_PWM_CTRL_EN) ? true : false;
+
+	return 0;
+}
+
+static const struct pwm_ops pwm_loongson_ops = {
+	.apply = pwm_loongson_apply,
+	.get_state = pwm_loongson_get_state,
+};
+
+static int pwm_loongson_probe(struct platform_device *pdev)
+{
+	int ret;
+	struct pwm_chip *chip;
+	struct pwm_loongson_ddata *ddata;
+	struct device *dev = &pdev->dev;
+
+	chip = devm_pwmchip_alloc(dev, 1, sizeof(*ddata));
+	if (IS_ERR(chip))
+		return PTR_ERR(chip);
+	ddata = to_pwm_loongson_ddata(chip);
+
+	ddata->base = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(ddata->base))
+		return PTR_ERR(ddata->base);
+
+	if (!has_acpi_companion(dev)) {
+		ddata->clk = devm_clk_get_enabled(dev, NULL);
+		if (IS_ERR(ddata->clk))
+			return dev_err_probe(dev, PTR_ERR(ddata->clk),
+					     "failed to get pwm clock\n");
+		ddata->clk_rate = clk_get_rate(ddata->clk);
+	} else {
+		ddata->clk_rate = LOONGSON_PWM_FREQ_STD;
+	}
+
+	chip->ops = &pwm_loongson_ops;
+	dev_set_drvdata(dev, chip);
+
+	ret = devm_pwmchip_add(dev, chip);
+	if (ret < 0)
+		return dev_err_probe(dev, ret, "failed to add PWM chip\n");
+
+	return 0;
+}
+
+static int pwm_loongson_suspend(struct device *dev)
+{
+	struct pwm_chip *chip = dev_get_drvdata(dev);
+	struct pwm_loongson_ddata *ddata = to_pwm_loongson_ddata(chip);
+
+	ddata->lss.ctrl = pwm_loongson_readl(ddata, LOONGSON_PWM_REG_CTRL);
+	ddata->lss.duty = pwm_loongson_readl(ddata, LOONGSON_PWM_REG_DUTY);
+	ddata->lss.period = pwm_loongson_readl(ddata, LOONGSON_PWM_REG_PERIOD);
+
+	clk_disable_unprepare(ddata->clk);
+
+	return 0;
+}
+
+static int pwm_loongson_resume(struct device *dev)
+{
+	int ret;
+	struct pwm_chip *chip = dev_get_drvdata(dev);
+	struct pwm_loongson_ddata *ddata = to_pwm_loongson_ddata(chip);
+
+	ret = clk_prepare_enable(ddata->clk);
+	if (ret)
+		return ret;
+
+	pwm_loongson_writel(ddata, ddata->lss.ctrl, LOONGSON_PWM_REG_CTRL);
+	pwm_loongson_writel(ddata, ddata->lss.duty, LOONGSON_PWM_REG_DUTY);
+	pwm_loongson_writel(ddata, ddata->lss.period, LOONGSON_PWM_REG_PERIOD);
+
+	return 0;
+}
+
+static DEFINE_SIMPLE_DEV_PM_OPS(pwm_loongson_pm_ops, pwm_loongson_suspend,
+				pwm_loongson_resume);
+
+static const struct of_device_id pwm_loongson_of_ids[] = {
+	{ .compatible = "loongson,ls7a-pwm" },
+	{ /* sentinel */ },
+};
+MODULE_DEVICE_TABLE(of, pwm_loongson_of_ids);
+
+static const struct acpi_device_id pwm_loongson_acpi_ids[] = {
+	{ "LOON0006" },
+	{ }
+};
+MODULE_DEVICE_TABLE(acpi, pwm_loongson_acpi_ids);
+
+static struct platform_driver pwm_loongson_driver = {
+	.probe = pwm_loongson_probe,
+	.driver = {
+		.name = "loongson-pwm",
+		.pm = pm_ptr(&pwm_loongson_pm_ops),
+		.of_match_table = pwm_loongson_of_ids,
+		.acpi_match_table = pwm_loongson_acpi_ids,
+	},
+};
+module_platform_driver(pwm_loongson_driver);
+
+MODULE_DESCRIPTION("Loongson PWM driver");
+MODULE_AUTHOR("Loongson Technology Corporation Limited.");
+MODULE_LICENSE("GPL");
-- 
2.43.5


