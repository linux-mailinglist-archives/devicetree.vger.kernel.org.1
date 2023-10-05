Return-Path: <devicetree+bounces-6085-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 669727B9D47
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 15:17:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id CCB9E1F22A44
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 13:17:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D52B1B275;
	Thu,  5 Oct 2023 13:17:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SN3M68fT"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1DD81A280
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 13:17:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2C6F4C4AF5D;
	Thu,  5 Oct 2023 13:17:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696511864;
	bh=zJHDnHWdgIbRM4Y1eO5Uc5GD/FiVY6eNJTs31x3OKu0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=SN3M68fTBcN/+fgiT5mi5gxto21HPEE/ZmqljY2sx00hRsPp/RTlUDy69/4QX5fDt
	 +wOSSrz65JQAibM9qUqbAvU5wra5ySEb27H4fLT9KAQzDtUaYwTMR4AyDslFwpmme1
	 KyQNyevOhkIhYQjcpObKVUgTLuhEAfasbCCphb3/MTSPnKSBg9r/m39HHo5aAp4vae
	 tHDiPOG1l/mN4buIb9pQbf6brCwVvIYyobLG33I2Xc/M65qwe89S198eSeyqaDvCov
	 Z7tvwvY1rOrT82cYX3bcRnzxT6VE4KCtkCswe2tKIU/DaW0u76xFZk2RBmtFUxnBEs
	 iRWNqPNGQZHXA==
From: Jisheng Zhang <jszhang@kernel.org>
To: Thierry Reding <thierry.reding@gmail.com>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Guo Ren <guoren@kernel.org>,
	Fu Wei <wefu@redhat.com>
Cc: linux-pwm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: [PATCH v3 2/2] pwm: add T-HEAD PWM driver
Date: Thu,  5 Oct 2023 21:05:19 +0800
Message-Id: <20231005130519.3864-3-jszhang@kernel.org>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20231005130519.3864-1-jszhang@kernel.org>
References: <20231005130519.3864-1-jszhang@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

T-HEAD SoCs such as the TH1520 contain a PWM controller used
to control the LCD backlight, fan and so on. Add driver for it.

Signed-off-by: Jisheng Zhang <jszhang@kernel.org>
---
 drivers/pwm/Kconfig     |  11 ++
 drivers/pwm/Makefile    |   1 +
 drivers/pwm/pwm-thead.c | 270 ++++++++++++++++++++++++++++++++++++++++
 3 files changed, 282 insertions(+)
 create mode 100644 drivers/pwm/pwm-thead.c

diff --git a/drivers/pwm/Kconfig b/drivers/pwm/Kconfig
index 8ebcddf91f7b..428fa365a19a 100644
--- a/drivers/pwm/Kconfig
+++ b/drivers/pwm/Kconfig
@@ -637,6 +637,17 @@ config PWM_TEGRA
 	  To compile this driver as a module, choose M here: the module
 	  will be called pwm-tegra.
 
+config PWM_THEAD
+	tristate "T-HEAD PWM support"
+	depends on ARCH_THEAD || COMPILE_TEST
+	depends on HAS_IOMEM
+	help
+	  Generic PWM framework driver for the PWFM controller found on THEAD
+	  SoCs.
+
+	  To compile this driver as a module, choose M here: the module
+	  will be called pwm-thead.
+
 config PWM_TIECAP
 	tristate "ECAP PWM support"
 	depends on ARCH_OMAP2PLUS || ARCH_DAVINCI_DA8XX || ARCH_KEYSTONE || ARCH_K3 || COMPILE_TEST
diff --git a/drivers/pwm/Makefile b/drivers/pwm/Makefile
index c822389c2a24..4c317e6316e8 100644
--- a/drivers/pwm/Makefile
+++ b/drivers/pwm/Makefile
@@ -59,6 +59,7 @@ obj-$(CONFIG_PWM_STMPE)		+= pwm-stmpe.o
 obj-$(CONFIG_PWM_SUN4I)		+= pwm-sun4i.o
 obj-$(CONFIG_PWM_SUNPLUS)	+= pwm-sunplus.o
 obj-$(CONFIG_PWM_TEGRA)		+= pwm-tegra.o
+obj-$(CONFIG_PWM_THEAD)		+= pwm-thead.o
 obj-$(CONFIG_PWM_TIECAP)	+= pwm-tiecap.o
 obj-$(CONFIG_PWM_TIEHRPWM)	+= pwm-tiehrpwm.o
 obj-$(CONFIG_PWM_TWL)		+= pwm-twl.o
diff --git a/drivers/pwm/pwm-thead.c b/drivers/pwm/pwm-thead.c
new file mode 100644
index 000000000000..3b9ffddfe33d
--- /dev/null
+++ b/drivers/pwm/pwm-thead.c
@@ -0,0 +1,270 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * T-HEAD PWM driver
+ *
+ * Copyright (C) 2021 Alibaba Group Holding Limited.
+ * Copyright (C) 2023 Jisheng Zhang <jszhang@kernel.org>
+ *
+ * Limitations:
+ * - The THEAD_PWM_CTRL_START bit is only effective when 0 -> 1, which is used
+ *   to start the channel, 1 -> 0 doesn't change anything. so 0 % duty cycle
+ *   is used to "disable" the channel.
+ * - The THEAD_PWM_CTRL_START bit is automatically cleared once PWM channel is
+ *   started.
+ * - The THEAD_PWM_CFG_UPDATE atomically updates and only updates period and duty.
+ * - To update period and duty, THEAD_PWM_CFG_UPDATE needs to go through 0 -> 1
+ *   step, I.E if THEAD_PWM_CFG_UPDATE is already 1, it's necessary to clear it
+ *   to 0 beforehand.
+ * - Polarity can only be changed if never started before.
+ */
+
+#include <linux/bitfield.h>
+#include <linux/clk.h>
+#include <linux/err.h>
+#include <linux/io.h>
+#include <linux/kernel.h>
+#include <linux/mod_devicetable.h>
+#include <linux/module.h>
+#include <linux/platform_device.h>
+#include <linux/pm_runtime.h>
+#include <linux/pwm.h>
+#include <linux/slab.h>
+
+#define THEAD_PWM_MAX_NUM		6
+#define THEAD_PWM_MAX_PERIOD		GENMASK(31, 0)
+#define THEAD_PWM_MAX_DUTY		GENMASK(31, 0)
+
+#define THEAD_PWM_CHN_BASE(n)		((n) * 0x20)
+#define THEAD_PWM_CTRL(n)		(THEAD_PWM_CHN_BASE(n) + 0x00)
+#define  THEAD_PWM_CTRL_START		BIT(0)
+#define  THEAD_PWM_CTRL_SOFT_RST		BIT(1)
+#define  THEAD_PWM_CTRL_CFG_UPDATE	BIT(2)
+#define  THEAD_PWM_CTRL_INTEN		BIT(3)
+#define  THEAD_PWM_CTRL_MODE		GENMASK(5, 4)
+#define  THEAD_PWM_CTRL_MODE_CONTINUOUS	FIELD_PREP(THEAD_PWM_CTRL_MODE, 2)
+#define  THEAD_PWM_CTRL_EVTRIG		GENMASK(7, 6)
+#define  THEAD_PWM_CTRL_FPOUT		BIT(8)
+#define  THEAD_PWM_CTRL_INFACTOUT	BIT(9)
+#define THEAD_PWM_RPT(n)		(THEAD_PWM_CHN_BASE(n) + 0x04)
+#define THEAD_PWM_PER(n)		(THEAD_PWM_CHN_BASE(n) + 0x08)
+#define THEAD_PWM_FP(n)			(THEAD_PWM_CHN_BASE(n) + 0x0c)
+#define THEAD_PWM_STATUS(n)		(THEAD_PWM_CHN_BASE(n) + 0x10)
+#define  THEAD_PWM_STATUS_CYCLE		GENMASK(7, 0)
+
+struct thead_pwm_chip {
+	struct pwm_chip chip;
+	void __iomem *mmio_base;
+	struct clk *clk;
+	u8 channel_ever_started;
+};
+
+static inline struct thead_pwm_chip *thead_pwm_from_chip(struct pwm_chip *chip)
+{
+	return container_of(chip, struct thead_pwm_chip, chip);
+}
+
+static int thead_pwm_apply(struct pwm_chip *chip, struct pwm_device *pwm,
+			   const struct pwm_state *state)
+{
+	struct thead_pwm_chip *priv = thead_pwm_from_chip(chip);
+	u32 val = THEAD_PWM_CTRL_INFACTOUT | THEAD_PWM_CTRL_FPOUT | THEAD_PWM_CTRL_MODE_CONTINUOUS;
+	u64 period_cycle, duty_cycle, rate;
+	int ret;
+
+	/* if ever started, can't change the polarity */
+	if ((priv->channel_ever_started & (1 << pwm->hwpwm)) &&
+	    state->polarity != pwm->state.polarity)
+		return -EINVAL;
+
+	if (!state->enabled) {
+		if (pwm->state.enabled) {
+			val = readl(priv->mmio_base + THEAD_PWM_CTRL(pwm->hwpwm));
+			val &= ~THEAD_PWM_CTRL_CFG_UPDATE;
+			writel(val, priv->mmio_base + THEAD_PWM_CTRL(pwm->hwpwm));
+
+			writel(0, priv->mmio_base + THEAD_PWM_FP(pwm->hwpwm));
+
+			val |= THEAD_PWM_CTRL_CFG_UPDATE;
+			writel(val, priv->mmio_base + THEAD_PWM_CTRL(pwm->hwpwm));
+			pm_runtime_put_sync(chip->dev);
+		}
+		return 0;
+	}
+
+	if (!pwm->state.enabled) {
+		ret = pm_runtime_resume_and_get(chip->dev);
+		if (ret < 0)
+			return ret;
+	}
+
+	if (state->polarity == PWM_POLARITY_INVERSED)
+		val &= ~THEAD_PWM_CTRL_FPOUT;
+
+	writel(val, priv->mmio_base + THEAD_PWM_CTRL(pwm->hwpwm));
+
+	rate = clk_get_rate(priv->clk);
+	/*
+	 * The following calculations might overflow if clk is bigger
+	 * than 1 GHz. In practise it's 24MHz, so this limitation
+	 * is only theoretic.
+	 */
+	if (rate > NSEC_PER_SEC)
+		return -EINVAL;
+
+	period_cycle = mul_u64_u64_div_u64(rate, state->period, NSEC_PER_SEC);
+	if (period_cycle > THEAD_PWM_MAX_PERIOD)
+		period_cycle = THEAD_PWM_MAX_PERIOD;
+	/*
+	 * With limitation above we have period_cycle <= THEAD_PWM_MAX_PERIOD,
+	 * so this cannot overflow.
+	 */
+	writel(period_cycle, priv->mmio_base + THEAD_PWM_PER(pwm->hwpwm));
+
+	duty_cycle = mul_u64_u64_div_u64(rate, state->duty_cycle, NSEC_PER_SEC);
+	if (duty_cycle > THEAD_PWM_MAX_DUTY)
+		duty_cycle = THEAD_PWM_MAX_DUTY;
+	/*
+	 * With limitation above we have duty_cycle <= THEAD_PWM_MAX_DUTY,
+	 * so this cannot overflow.
+	 */
+	writel(duty_cycle, priv->mmio_base + THEAD_PWM_FP(pwm->hwpwm));
+
+	val |= THEAD_PWM_CTRL_CFG_UPDATE;
+	writel(val, priv->mmio_base + THEAD_PWM_CTRL(pwm->hwpwm));
+
+	if (!pwm->state.enabled) {
+		val |= THEAD_PWM_CTRL_START;
+		writel(val, priv->mmio_base + THEAD_PWM_CTRL(pwm->hwpwm));
+		priv->channel_ever_started |= 1 << pwm->hwpwm;
+	}
+
+	return 0;
+}
+
+static int thead_pwm_get_state(struct pwm_chip *chip, struct pwm_device *pwm,
+			       struct pwm_state *state)
+{
+	struct thead_pwm_chip *priv = thead_pwm_from_chip(chip);
+	u64 rate = clk_get_rate(priv->clk);
+	u32 val;
+	int ret;
+
+	ret = pm_runtime_resume_and_get(chip->dev);
+	if (ret < 0)
+		return ret;
+
+	val = readl(priv->mmio_base + THEAD_PWM_CTRL(pwm->hwpwm));
+	if (val & THEAD_PWM_CTRL_FPOUT)
+		state->polarity = PWM_POLARITY_NORMAL;
+	else
+		state->polarity = PWM_POLARITY_INVERSED;
+
+	val = readl(priv->mmio_base + THEAD_PWM_PER(pwm->hwpwm));
+	/*
+	 * val 32 bits, multiply NSEC_PER_SEC, won't overflow.
+	 */
+	state->period = DIV64_U64_ROUND_UP((u64)val * NSEC_PER_SEC, rate);
+
+	val = readl(priv->mmio_base + THEAD_PWM_FP(pwm->hwpwm));
+	state->enabled = !!val;
+	/*
+	 * val 32 bits, multiply NSEC_PER_SEC, won't overflow.
+	 */
+	state->duty_cycle = DIV64_U64_ROUND_UP((u64)val * NSEC_PER_SEC, rate);
+
+	pm_runtime_put_sync(chip->dev);
+
+	return 0;
+}
+
+static const struct pwm_ops thead_pwm_ops = {
+	.apply = thead_pwm_apply,
+	.get_state = thead_pwm_get_state,
+	.owner = THIS_MODULE,
+};
+
+static int __maybe_unused thead_pwm_runtime_suspend(struct device *dev)
+{
+	struct thead_pwm_chip *priv = dev_get_drvdata(dev);
+
+	clk_disable_unprepare(priv->clk);
+
+	return 0;
+}
+
+static int __maybe_unused thead_pwm_runtime_resume(struct device *dev)
+{
+	struct thead_pwm_chip *priv = dev_get_drvdata(dev);
+	int ret;
+
+	ret = clk_prepare_enable(priv->clk);
+	if (ret)
+		dev_err(dev, "failed to enable pwm clock(%pe)\n", ERR_PTR(ret));
+
+	return ret;
+}
+
+static int thead_pwm_probe(struct platform_device *pdev)
+{
+	struct thead_pwm_chip *priv;
+	int ret, i;
+	u32 val;
+
+	priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
+	if (!priv)
+		return -ENOMEM;
+
+	platform_set_drvdata(pdev, priv);
+
+	priv->mmio_base = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(priv->mmio_base))
+		return PTR_ERR(priv->mmio_base);
+
+	priv->clk = devm_clk_get_enabled(&pdev->dev, NULL);
+	if (IS_ERR(priv->clk))
+		return PTR_ERR(priv->clk);
+
+	priv->chip.ops = &thead_pwm_ops;
+	priv->chip.dev = &pdev->dev;
+	priv->chip.npwm = THEAD_PWM_MAX_NUM;
+
+	/* check whether PWM is ever started or not */
+	for (i = 0; i < priv->chip.npwm; i++) {
+		val = readl(priv->mmio_base + THEAD_PWM_FP(i));
+		if (val)
+			priv->channel_ever_started |= 1 << i;
+	}
+
+	ret = devm_pwmchip_add(&pdev->dev, &priv->chip);
+	if (ret)
+		return ret;
+
+	devm_pm_runtime_enable(&pdev->dev);
+
+	return 0;
+}
+
+static const struct of_device_id thead_pwm_dt_ids[] = {
+	{.compatible = "thead,th1520-pwm",},
+	{/* sentinel */}
+};
+MODULE_DEVICE_TABLE(of, thead_pwm_dt_ids);
+
+static const struct dev_pm_ops thead_pwm_pm_ops = {
+	SET_RUNTIME_PM_OPS(thead_pwm_runtime_suspend, thead_pwm_runtime_resume, NULL)
+};
+
+static struct platform_driver thead_pwm_driver = {
+	.driver = {
+		.name = "thead-pwm",
+		.of_match_table = thead_pwm_dt_ids,
+		.pm = &thead_pwm_pm_ops,
+	},
+	.probe = thead_pwm_probe,
+};
+module_platform_driver(thead_pwm_driver);
+
+MODULE_AUTHOR("Wei Liu <lw312886@linux.alibaba.com>");
+MODULE_AUTHOR("Jisheng Zhang <jszhang@kernel.org>");
+MODULE_DESCRIPTION("T-HEAD pwm driver");
+MODULE_LICENSE("GPL v2");
-- 
2.40.1


