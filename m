Return-Path: <devicetree+bounces-2458-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EE4247AADE2
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 11:29:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id A0897282729
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 09:29:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7096D1DDEA;
	Fri, 22 Sep 2023 09:29:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77EB01DDC6
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 09:29:02 +0000 (UTC)
Received: from ex01.ufhost.com (ex01.ufhost.com [61.152.239.75])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A9BF31BC;
	Fri, 22 Sep 2023 02:28:59 -0700 (PDT)
Received: from EXMBX165.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX165", Issuer "EXMBX165" (not verified))
	by ex01.ufhost.com (Postfix) with ESMTP id E518624E2A1;
	Fri, 22 Sep 2023 17:28:51 +0800 (CST)
Received: from EXMBX168.cuchost.com (172.16.6.78) by EXMBX165.cuchost.com
 (172.16.6.75) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Fri, 22 Sep
 2023 17:28:52 +0800
Received: from williamqiu-virtual-machine.starfivetech.com (171.223.208.138)
 by EXMBX168.cuchost.com (172.16.6.78) with Microsoft SMTP Server (TLS) id
 15.0.1497.42; Fri, 22 Sep 2023 17:28:50 +0800
From: William Qiu <william.qiu@starfivetech.com>
To: <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-riscv@lists.infradead.org>, <linux-pwm@vger.kernel.org>
CC: Emil Renner Berthing <kernel@esmil.dk>, Rob Herring <robh+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>, Philipp Zabel
	<p.zabel@pengutronix.de>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>, "Hal
 Feng" <hal.feng@starfivetech.com>, Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
	William Qiu <william.qiu@starfivetech.com>
Subject: [PATCH v5 2/4] pwm: starfive: Add PWM driver support
Date: Fri, 22 Sep 2023 17:28:46 +0800
Message-ID: <20230922092848.72664-3-william.qiu@starfivetech.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230922092848.72664-1-william.qiu@starfivetech.com>
References: <20230922092848.72664-1-william.qiu@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [171.223.208.138]
X-ClientProxiedBy: EXCAS061.cuchost.com (172.16.6.21) To EXMBX168.cuchost.com
 (172.16.6.78)
X-YovoleRuleAgent: yovoleflag
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add Pulse Width Modulation driver support for StarFive
JH7100 and JH7110 SoC.

Co-developed-by: Hal Feng <hal.feng@starfivetech.com>
Signed-off-by: Hal Feng <hal.feng@starfivetech.com>
Signed-off-by: William Qiu <william.qiu@starfivetech.com>
---
 MAINTAINERS                |   7 ++
 drivers/pwm/Kconfig        |   9 ++
 drivers/pwm/Makefile       |   1 +
 drivers/pwm/pwm-starfive.c | 190 +++++++++++++++++++++++++++++++++++++
 4 files changed, 207 insertions(+)
 create mode 100644 drivers/pwm/pwm-starfive.c

diff --git a/MAINTAINERS b/MAINTAINERS
index bf0f54c24f81..bc2155bd2712 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -20495,6 +20495,13 @@ F:	drivers/pinctrl/starfive/pinctrl-starfive-jh7=
1*
 F:	include/dt-bindings/pinctrl/pinctrl-starfive-jh7100.h
 F:	include/dt-bindings/pinctrl/starfive,jh7110-pinctrl.h
=20
+STARFIVE JH71X0 PWM DRIVERS
+M:	William Qiu <william.qiu@starfivetech.com>
+M:	Hal Feng <hal.feng@starfivetech.com>
+S:	Supported
+F:	Documentation/devicetree/bindings/pwm/starfive,jh7100-pwm.yaml
+F:	drivers/pwm/pwm-starfive-ptc.c
+
 STARFIVE JH71X0 RESET CONTROLLER DRIVERS
 M:	Emil Renner Berthing <kernel@esmil.dk>
 M:	Hal Feng <hal.feng@starfivetech.com>
diff --git a/drivers/pwm/Kconfig b/drivers/pwm/Kconfig
index 8ebcddf91f7b..e2ee0169f6e4 100644
--- a/drivers/pwm/Kconfig
+++ b/drivers/pwm/Kconfig
@@ -569,6 +569,15 @@ config PWM_SPRD
 	  To compile this driver as a module, choose M here: the module
 	  will be called pwm-sprd.
=20
+config PWM_STARFIVE
+	tristate "StarFive PWM support"
+	depends on ARCH_STARFIVE || COMPILE_TEST
+	help
+	  Generic PWM framework driver for StarFive SoCs.
+
+	  To compile this driver as a module, choose M here: the module
+	  will be called pwm-starfive.
+
 config PWM_STI
 	tristate "STiH4xx PWM support"
 	depends on ARCH_STI || COMPILE_TEST
diff --git a/drivers/pwm/Makefile b/drivers/pwm/Makefile
index c822389c2a24..93b954376873 100644
--- a/drivers/pwm/Makefile
+++ b/drivers/pwm/Makefile
@@ -52,6 +52,7 @@ obj-$(CONFIG_PWM_SIFIVE)	+=3D pwm-sifive.o
 obj-$(CONFIG_PWM_SL28CPLD)	+=3D pwm-sl28cpld.o
 obj-$(CONFIG_PWM_SPEAR)		+=3D pwm-spear.o
 obj-$(CONFIG_PWM_SPRD)		+=3D pwm-sprd.o
+obj-$(CONFIG_PWM_STARFIVE)	+=3D pwm-starfive.o
 obj-$(CONFIG_PWM_STI)		+=3D pwm-sti.o
 obj-$(CONFIG_PWM_STM32)		+=3D pwm-stm32.o
 obj-$(CONFIG_PWM_STM32_LP)	+=3D pwm-stm32-lp.o
diff --git a/drivers/pwm/pwm-starfive.c b/drivers/pwm/pwm-starfive.c
new file mode 100644
index 000000000000..d390349fc95d
--- /dev/null
+++ b/drivers/pwm/pwm-starfive.c
@@ -0,0 +1,190 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * PWM driver for the StarFive JH71x0 SoC
+ *
+ * Copyright (C) 2018-2023 StarFive Technology Co., Ltd.
+ */
+
+#include <linux/clk.h>
+#include <linux/io.h>
+#include <linux/module.h>
+#include <linux/platform_device.h>
+#include <linux/pwm.h>
+#include <linux/reset.h>
+#include <linux/slab.h>
+
+/* Access PTC register (CNTR, HRC, LRC and CTRL) */
+#define REG_PTC_BASE_ADDR_SUB(base, N)	((base) + (((N) > 3) ? \
+					(((N) % 4) * 0x10 + (1 << 15)) : ((N) * 0x10)))
+#define REG_PTC_RPTC_CNTR(base, N)	(REG_PTC_BASE_ADDR_SUB(base, N))
+#define REG_PTC_RPTC_HRC(base, N)	(REG_PTC_BASE_ADDR_SUB(base, N) + 0x4)
+#define REG_PTC_RPTC_LRC(base, N)	(REG_PTC_BASE_ADDR_SUB(base, N) + 0x8)
+#define REG_PTC_RPTC_CTRL(base, N)	(REG_PTC_BASE_ADDR_SUB(base, N) + 0xC=
)
+
+/* PTC_RPTC_CTRL register bits*/
+#define PTC_EN      BIT(0)
+#define PTC_ECLK    BIT(1)
+#define PTC_NEC     BIT(2)
+#define PTC_OE      BIT(3)
+#define PTC_SIGNLE  BIT(4)
+#define PTC_INTE    BIT(5)
+#define PTC_INT     BIT(6)
+#define PTC_CNTRRST BIT(7)
+#define PTC_CAPTE   BIT(8)
+
+struct starfive_pwm_ptc_device {
+	struct pwm_chip chip;
+	struct clk *clk;
+	struct reset_control *rst;
+	void __iomem *regs;
+	u32 clk_rate; /* PWM APB clock frequency */
+};
+
+static inline struct starfive_pwm_ptc_device *
+chip_to_starfive_ptc(struct pwm_chip *chip)
+
+{
+	return container_of(chip, struct starfive_pwm_ptc_device, chip);
+}
+
+static int starfive_pwm_ptc_get_state(struct pwm_chip *chip,
+				      struct pwm_device *dev,
+				      struct pwm_state *state)
+{
+	struct starfive_pwm_ptc_device *pwm =3D chip_to_starfive_ptc(chip);
+	u32 period_data, duty_data, ctrl_data;
+
+	period_data =3D readl(REG_PTC_RPTC_LRC(pwm->regs, dev->hwpwm));
+	duty_data =3D readl(REG_PTC_RPTC_HRC(pwm->regs, dev->hwpwm));
+	ctrl_data =3D readl(REG_PTC_RPTC_CTRL(pwm->regs, dev->hwpwm));
+
+	state->period =3D DIV_ROUND_CLOSEST_ULL((u64)period_data * NSEC_PER_SEC=
, pwm->clk_rate);
+	state->duty_cycle =3D DIV_ROUND_CLOSEST_ULL((u64)duty_data * NSEC_PER_S=
EC, pwm->clk_rate);
+	state->polarity =3D PWM_POLARITY_INVERSED;
+	state->enabled =3D (ctrl_data & PTC_EN) ? true : false;
+
+	return 0;
+}
+
+static int starfive_pwm_ptc_apply(struct pwm_chip *chip,
+				  struct pwm_device *dev,
+				  const struct pwm_state *state)
+{
+	struct starfive_pwm_ptc_device *pwm =3D chip_to_starfive_ptc(chip);
+	u32 period_data, duty_data, ctrl_data =3D 0;
+
+	if (state->polarity !=3D PWM_POLARITY_INVERSED)
+		return -EINVAL;
+
+	period_data =3D DIV_ROUND_CLOSEST_ULL(state->period * pwm->clk_rate,
+					    NSEC_PER_SEC);
+	duty_data =3D DIV_ROUND_CLOSEST_ULL(state->duty_cycle * pwm->clk_rate,
+					  NSEC_PER_SEC);
+
+	writel(period_data, REG_PTC_RPTC_LRC(pwm->regs, dev->hwpwm));
+	writel(duty_data, REG_PTC_RPTC_HRC(pwm->regs, dev->hwpwm));
+	writel(0,  REG_PTC_RPTC_CNTR(pwm->regs, dev->hwpwm));
+
+	ctrl_data =3D readl(REG_PTC_RPTC_CTRL(pwm->regs, dev->hwpwm));
+	if (state->enabled)
+		writel(ctrl_data | PTC_EN | PTC_OE, REG_PTC_RPTC_CTRL(pwm->regs, dev->=
hwpwm));
+	else
+		writel(ctrl_data & ~(PTC_EN | PTC_OE), REG_PTC_RPTC_CTRL(pwm->regs, de=
v->hwpwm));
+
+	return 0;
+}
+
+static const struct pwm_ops starfive_pwm_ptc_ops =3D {
+	.get_state	=3D starfive_pwm_ptc_get_state,
+	.apply		=3D starfive_pwm_ptc_apply,
+	.owner		=3D THIS_MODULE,
+};
+
+static int starfive_pwm_ptc_probe(struct platform_device *pdev)
+{
+	struct device *dev =3D &pdev->dev;
+	struct starfive_pwm_ptc_device *pwm;
+	struct pwm_chip *chip;
+	int ret;
+
+	pwm =3D devm_kzalloc(dev, sizeof(*pwm), GFP_KERNEL);
+	if (!pwm)
+		return -ENOMEM;
+
+	chip =3D &pwm->chip;
+	chip->dev =3D dev;
+	chip->ops =3D &starfive_pwm_ptc_ops;
+	chip->npwm =3D 8;
+	chip->of_pwm_n_cells =3D 3;
+
+	pwm->regs =3D devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(pwm->regs))
+		return dev_err_probe(dev, PTR_ERR(pwm->regs),
+				     "Unable to map IO resources\n");
+
+	pwm->clk =3D devm_clk_get_enabled(dev, NULL);
+	if (IS_ERR(pwm->clk))
+		return dev_err_probe(dev, PTR_ERR(pwm->clk),
+				     "Unable to get pwm's clock\n");
+
+	pwm->rst =3D devm_reset_control_get_exclusive(dev, NULL);
+	if (IS_ERR(pwm->rst))
+		return dev_err_probe(dev, PTR_ERR(pwm->rst),
+				     "Unable to get pwm's reset\n");
+
+	ret =3D reset_control_deassert(pwm->rst);
+	if (ret) {
+		dev_err(dev, "Failed to enable clock for pwm: %d\n", ret);
+		return ret;
+	}
+
+	pwm->clk_rate =3D clk_get_rate(pwm->clk);
+	if (pwm->clk_rate <=3D 0) {
+		dev_warn(dev, "Failed to get APB clock rate\n");
+		return -EINVAL;
+	}
+
+	ret =3D devm_pwmchip_add(dev, chip);
+	if (ret < 0) {
+		dev_err(dev, "Cannot register PTC: %d\n", ret);
+		clk_disable_unprepare(pwm->clk);
+		reset_control_assert(pwm->rst);
+		return ret;
+	}
+
+	platform_set_drvdata(pdev, pwm);
+
+	return 0;
+}
+
+static int starfive_pwm_ptc_remove(struct platform_device *dev)
+{
+	struct starfive_pwm_ptc_device *pwm =3D platform_get_drvdata(dev);
+
+	reset_control_assert(pwm->rst);
+	clk_disable_unprepare(pwm->clk);
+
+	return 0;
+}
+
+static const struct of_device_id starfive_pwm_ptc_of_match[] =3D {
+	{ .compatible =3D "starfive,jh7100-pwm" },
+	{ .compatible =3D "starfive,jh7110-pwm" },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, starfive_pwm_ptc_of_match);
+
+static struct platform_driver starfive_pwm_ptc_driver =3D {
+	.probe =3D starfive_pwm_ptc_probe,
+	.remove =3D starfive_pwm_ptc_remove,
+	.driver =3D {
+		.name =3D "pwm-starfive-ptc",
+		.of_match_table =3D starfive_pwm_ptc_of_match,
+	},
+};
+module_platform_driver(starfive_pwm_ptc_driver);
+
+MODULE_AUTHOR("Jieqin Chen");
+MODULE_AUTHOR("Hal Feng <hal.feng@starfivetech.com>");
+MODULE_DESCRIPTION("StarFive PWM PTC driver");
+MODULE_LICENSE("GPL");
--=20
2.34.1


