Return-Path: <devicetree+bounces-10332-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C0EC7D0D6E
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 12:38:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E58382824A1
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 10:37:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85ECD10A1A;
	Fri, 20 Oct 2023 10:37:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48D34179BC
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 10:37:50 +0000 (UTC)
Received: from ex01.ufhost.com (ex01.ufhost.com [61.152.239.75])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 286EBD46;
	Fri, 20 Oct 2023 03:37:47 -0700 (PDT)
Received: from EXMBX165.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX165", Issuer "EXMBX165" (not verified))
	by ex01.ufhost.com (Postfix) with ESMTP id 6BC9D24E346;
	Fri, 20 Oct 2023 18:37:45 +0800 (CST)
Received: from EXMBX168.cuchost.com (172.16.6.78) by EXMBX165.cuchost.com
 (172.16.6.75) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Fri, 20 Oct
 2023 18:37:45 +0800
Received: from williamqiu-virtual-machine.starfivetech.com (171.223.208.138)
 by EXMBX168.cuchost.com (172.16.6.78) with Microsoft SMTP Server (TLS) id
 15.0.1497.42; Fri, 20 Oct 2023 18:37:44 +0800
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
Subject: [PATCH v6 2/4] pwm: opencores: Add PWM driver support
Date: Fri, 20 Oct 2023 18:37:39 +0800
Message-ID: <20231020103741.557735-3-william.qiu@starfivetech.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231020103741.557735-1-william.qiu@starfivetech.com>
References: <20231020103741.557735-1-william.qiu@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [171.223.208.138]
X-ClientProxiedBy: EXCAS064.cuchost.com (172.16.6.24) To EXMBX168.cuchost.com
 (172.16.6.78)
X-YovoleRuleAgent: yovoleflag
Content-Transfer-Encoding: quoted-printable

Add Pulse Width Modulation driver support for OpenCores.

Co-developed-by: Hal Feng <hal.feng@starfivetech.com>
Signed-off-by: Hal Feng <hal.feng@starfivetech.com>
Signed-off-by: William Qiu <william.qiu@starfivetech.com>
---
 MAINTAINERS              |   7 ++
 drivers/pwm/Kconfig      |  11 ++
 drivers/pwm/Makefile     |   1 +
 drivers/pwm/pwm-ocores.c | 211 +++++++++++++++++++++++++++++++++++++++
 4 files changed, 230 insertions(+)
 create mode 100644 drivers/pwm/pwm-ocores.c

diff --git a/MAINTAINERS b/MAINTAINERS
index 6c4cce45a09d..321af8fa7aad 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -16003,6 +16003,13 @@ F:	Documentation/i2c/busses/i2c-ocores.rst
 F:	drivers/i2c/busses/i2c-ocores.c
 F:	include/linux/platform_data/i2c-ocores.h

+OPENCORES PWM DRIVER
+M:	William Qiu <william.qiu@starfivetech.com>
+M:	Hal Feng <hal.feng@starfivetech.com>
+S:	Supported
+F:	Documentation/devicetree/bindings/pwm/opencores,pwm-ocores.yaml
+F:	drivers/pwm/pwm-ocores.c
+
 OPENRISC ARCHITECTURE
 M:	Jonas Bonn <jonas@southpole.se>
 M:	Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>
diff --git a/drivers/pwm/Kconfig b/drivers/pwm/Kconfig
index 8ebcddf91f7b..cbfbf227d957 100644
--- a/drivers/pwm/Kconfig
+++ b/drivers/pwm/Kconfig
@@ -434,6 +434,17 @@ config PWM_NTXEC
 	  controller found in certain e-book readers designed by the original
 	  design manufacturer Netronix.

+config PWM_OCORES
+	tristate "Opencores PWM support"
+	depends on HAS_IOMEM && OF
+	depends on COMMON_CLK && RESET_CONTROLLER
+	help
+	  If you say yes to this option, support will be included for the
+	  OpenCores PWM. For details see https://opencores.org/projects/ptc.
+
+	  To compile this driver as a module, choose M here: the module
+	  will be called pwm-ocores.
+
 config PWM_OMAP_DMTIMER
 	tristate "OMAP Dual-Mode Timer PWM support"
 	depends on OF
diff --git a/drivers/pwm/Makefile b/drivers/pwm/Makefile
index c822389c2a24..542b98202153 100644
--- a/drivers/pwm/Makefile
+++ b/drivers/pwm/Makefile
@@ -39,6 +39,7 @@ obj-$(CONFIG_PWM_MICROCHIP_CORE)	+=3D pwm-microchip-cor=
e.o
 obj-$(CONFIG_PWM_MTK_DISP)	+=3D pwm-mtk-disp.o
 obj-$(CONFIG_PWM_MXS)		+=3D pwm-mxs.o
 obj-$(CONFIG_PWM_NTXEC)		+=3D pwm-ntxec.o
+obj-$(CONFIG_PWM_OCORES)	+=3D pwm-ocores.o
 obj-$(CONFIG_PWM_OMAP_DMTIMER)	+=3D pwm-omap-dmtimer.o
 obj-$(CONFIG_PWM_PCA9685)	+=3D pwm-pca9685.o
 obj-$(CONFIG_PWM_PXA)		+=3D pwm-pxa.o
diff --git a/drivers/pwm/pwm-ocores.c b/drivers/pwm/pwm-ocores.c
new file mode 100644
index 000000000000..7a510de4e063
--- /dev/null
+++ b/drivers/pwm/pwm-ocores.c
@@ -0,0 +1,211 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * OpenCores PWM Driver
+ *
+ * https://opencores.org/projects/ptc
+ *
+ * Copyright (C) 2018-2023 StarFive Technology Co., Ltd.
+ */
+
+#include <linux/clk.h>
+#include <linux/io.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/of_device.h>
+#include <linux/platform_device.h>
+#include <linux/pwm.h>
+#include <linux/reset.h>
+#include <linux/slab.h>
+
+#define REG_OCPWM_CNTR(base)	((base))
+#define REG_OCPWM_HRC(base)	((base) + 0x4)
+#define REG_OCPWM_LRC(base)	((base) + 0x8)
+#define REG_OCPWM_CTRL(base)	((base) + 0xC)
+
+/* OCPWM_CTRL register bits*/
+#define OCPWM_EN      BIT(0)
+#define OCPWM_ECLK    BIT(1)
+#define OCPWM_NEC     BIT(2)
+#define OCPWM_OE      BIT(3)
+#define OCPWM_SIGNLE  BIT(4)
+#define OCPWM_INTE    BIT(5)
+#define OCPWM_INT     BIT(6)
+#define OCPWM_CNTRRST BIT(7)
+#define OCPWM_CAPTE   BIT(8)
+
+struct ocores_pwm_device {
+	struct pwm_chip chip;
+	struct clk *clk;
+	struct reset_control *rst;
+	const struct ocores_pwm_data *data;
+	void __iomem *regs;
+	u32 clk_rate; /* PWM APB clock frequency */
+};
+
+struct ocores_pwm_data {
+	void __iomem *(*get_ch_base)(void __iomem *base, unsigned int channel);
+};
+
+static inline struct ocores_pwm_device *
+chip_to_ocores(struct pwm_chip *chip)
+
+{
+	return container_of(chip, struct ocores_pwm_device, chip);
+}
+
+void __iomem *starfive_jh71x0_get_ch_base(void __iomem *base,
+					  unsigned int channel)
+{
+	return base + (channel > 3 ? channel % 4 * 0x10 + (1 << 15) : channel *=
 0x10);
+}
+
+static int ocores_pwm_get_state(struct pwm_chip *chip,
+				struct pwm_device *dev,
+				struct pwm_state *state)
+{
+	struct ocores_pwm_device *pwm =3D chip_to_ocores(chip);
+	void __iomem *base =3D pwm->data->get_ch_base ?
+			     pwm->data->get_ch_base(pwm->regs, dev->hwpwm) : pwm->regs;
+	u32 period_data, duty_data, ctrl_data;
+
+	period_data =3D readl(REG_OCPWM_LRC(base));
+	duty_data =3D readl(REG_OCPWM_HRC(base));
+	ctrl_data =3D readl(REG_OCPWM_CTRL(base));
+
+	state->period =3D DIV_ROUND_CLOSEST_ULL((u64)period_data * NSEC_PER_SEC=
, pwm->clk_rate);
+	state->duty_cycle =3D DIV_ROUND_CLOSEST_ULL((u64)duty_data * NSEC_PER_S=
EC, pwm->clk_rate);
+	state->polarity =3D PWM_POLARITY_INVERSED;
+	state->enabled =3D (ctrl_data & OCPWM_EN) ? true : false;
+
+	return 0;
+}
+
+static int ocores_pwm_apply(struct pwm_chip *chip,
+			    struct pwm_device *dev,
+			    const struct pwm_state *state)
+{
+	struct ocores_pwm_device *pwm =3D chip_to_ocores(chip);
+	void __iomem *base =3D pwm->data->get_ch_base ?
+			     pwm->data->get_ch_base(pwm->regs, dev->hwpwm) : pwm->regs;
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
+	writel(period_data, REG_OCPWM_LRC(base));
+	writel(duty_data, REG_OCPWM_HRC(base));
+	writel(0,  REG_OCPWM_CNTR(base));
+
+	ctrl_data =3D readl(REG_OCPWM_CTRL(base));
+	if (state->enabled)
+		writel(ctrl_data | OCPWM_EN | OCPWM_OE, REG_OCPWM_CTRL(base));
+	else
+		writel(ctrl_data & ~(OCPWM_EN | OCPWM_OE), REG_OCPWM_CTRL(base));
+
+	return 0;
+}
+
+static const struct pwm_ops ocores_pwm_ops =3D {
+	.get_state	=3D ocores_pwm_get_state,
+	.apply		=3D ocores_pwm_apply,
+	.owner		=3D THIS_MODULE,
+};
+
+static const struct ocores_pwm_data jh71x0_pwm_data =3D {
+	.get_ch_base =3D starfive_jh71x0_get_ch_base,
+};
+
+static const struct of_device_id ocores_pwm_of_match[] =3D {
+	{ .compatible =3D "opencores,pwm-ocores" },
+	{ .compatible =3D "starfive,jh71x0-pwm", .data =3D &jh71x0_pwm_data},
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, ocores_pwm_of_match);
+
+static int ocores_pwm_probe(struct platform_device *pdev)
+{
+	const struct of_device_id *id;
+	struct device *dev =3D &pdev->dev;
+	struct ocores_pwm_device *pwm;
+	struct pwm_chip *chip;
+	int ret;
+
+	id =3D of_match_device(ocores_pwm_of_match, dev);
+	if (!id)
+		return -EINVAL;
+
+	pwm =3D devm_kzalloc(dev, sizeof(*pwm), GFP_KERNEL);
+	if (!pwm)
+		return -ENOMEM;
+
+	pwm->data =3D id->data;
+	chip =3D &pwm->chip;
+	chip->dev =3D dev;
+	chip->ops =3D &ocores_pwm_ops;
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
+	pwm->rst =3D devm_reset_control_get_optional_exclusive(dev, NULL);
+	reset_control_deassert(pwm->rst);
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
+static int ocores_pwm_remove(struct platform_device *dev)
+{
+	struct ocores_pwm_device *pwm =3D platform_get_drvdata(dev);
+
+	reset_control_assert(pwm->rst);
+	clk_disable_unprepare(pwm->clk);
+
+	return 0;
+}
+
+static struct platform_driver ocores_pwm_driver =3D {
+	.probe =3D ocores_pwm_probe,
+	.remove =3D ocores_pwm_remove,
+	.driver =3D {
+		.name =3D "ocores-pwm",
+		.of_match_table =3D ocores_pwm_of_match,
+	},
+};
+module_platform_driver(ocores_pwm_driver);
+
+MODULE_AUTHOR("Jieqin Chen");
+MODULE_AUTHOR("Hal Feng <hal.feng@starfivetech.com>");
+MODULE_DESCRIPTION("OpenCores PWM PTC driver");
+MODULE_LICENSE("GPL");
--
2.34.1


