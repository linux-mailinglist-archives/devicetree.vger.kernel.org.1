Return-Path: <devicetree+bounces-85473-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B2269302BA
	for <lists+devicetree@lfdr.de>; Sat, 13 Jul 2024 02:38:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F20BB2827C5
	for <lists+devicetree@lfdr.de>; Sat, 13 Jul 2024 00:38:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C03372581;
	Sat, 13 Jul 2024 00:38:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from pidgin.makrotopia.org (pidgin.makrotopia.org [185.142.180.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A8D038C;
	Sat, 13 Jul 2024 00:38:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.142.180.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720831082; cv=none; b=n98xCQ+i9Dc2xv1FAoDtWcxiTRt5Hvm8bI8+q9F/jtLacgIPaPue47SE6DhajpqXsUQ4VSamDjTOXaoAK2KoQ6yjxtDqPm7hVzVm3d260l6dOLdhxkKISzGxg4fCrcD7XH7gHEMt6kGlMet4i6BJZv2XMPxLsLUSOk4ohz/xOhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720831082; c=relaxed/simple;
	bh=ihhpntDdkc7qIotp9eaJ5wOHsmuflRIaqUaBfQPK008=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=s4sHdXrsoHdZgX5Su45JlLDLcg90K+W95Hhn5F4rD9fj/sKt9WoW5JXO33wuHoMgXHM3Q13wmusDpEdmfM3OW5uVUoiuKs4CJWLx9CSOb0SiiMMCdOU0mJyDaPP5/kDKFCijkHb2IZSobTnC1spuG4/yAOTkiYCoexQ1egTEJeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=makrotopia.org; spf=pass smtp.mailfrom=makrotopia.org; arc=none smtp.client-ip=185.142.180.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=makrotopia.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=makrotopia.org
Received: from local
	by pidgin.makrotopia.org with esmtpsa (TLS1.3:TLS_AES_256_GCM_SHA384:256)
	 (Exim 4.97.1)
	(envelope-from <daniel@makrotopia.org>)
	id 1sSQlo-000000005cT-26cu;
	Sat, 13 Jul 2024 00:37:48 +0000
Date: Sat, 13 Jul 2024 01:37:45 +0100
From: Daniel Golle <daniel@makrotopia.org>
To: Daniel Golle <daniel@makrotopia.org>,
	Aurelien Jarno <aurelien@aurel32.net>,
	Olivia Mackall <olivia@selenic.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Dragan Simic <dsimic@manjaro.org>,
	Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <ukleinek@debian.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Martin Kaiser <martin@kaiser.cx>, Ard Biesheuvel <ardb@kernel.org>,
	linux-crypto@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v6 2/3] hwrng: add hwrng driver for Rockchip RK3568 SoC
Message-ID: <b5036408088f2a448b303d6bc6f6f3cc52702dc5.1720830725.git.daniel@makrotopia.org>
References: <cover.1720830725.git.daniel@makrotopia.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1720830725.git.daniel@makrotopia.org>

From: Aurelien Jarno <aurelien@aurel32.net>

Rockchip SoCs used to have a random number generator as part of their
crypto device, and support for it has to be added to the corresponding
driver. However newer Rockchip SoCs like the RK3568 have an independent
True Random Number Generator device. This patch adds a driver for it,
greatly inspired from the downstream driver.

The TRNG device does not seem to have a signal conditionner and the FIPS
140-2 test returns a lot of failures. They can be reduced by increasing
RK_RNG_SAMPLE_CNT, in a tradeoff between quality and speed. This value
has been adjusted to get ~90% of successes and the quality value has
been set accordingly.

Signed-off-by: Aurelien Jarno <aurelien@aurel32.net>
[daniel@makrotpia.org: code style fixes]
Signed-off-by: Daniel Golle <daniel@makrotopia.org>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 MAINTAINERS                           |   1 +
 drivers/char/hw_random/Kconfig        |  14 ++
 drivers/char/hw_random/Makefile       |   1 +
 drivers/char/hw_random/rockchip-rng.c | 220 ++++++++++++++++++++++++++
 4 files changed, 236 insertions(+)
 create mode 100644 drivers/char/hw_random/rockchip-rng.c

diff --git a/MAINTAINERS b/MAINTAINERS
index 7b2b8b1f526c..2745cfe56774 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -19698,6 +19698,7 @@ M:	Daniel Golle <daniel@makrotopia.org>
 M:	Aurelien Jarno <aurelien@aurel32.net>
 S:	Maintained
 F:	Documentation/devicetree/bindings/rng/rockchip,rk3568-rng.yaml
+F:	drivers/char/hw_random/rockchip-rng.c
 
 ROCKCHIP RASTER 2D GRAPHIC ACCELERATION UNIT DRIVER
 M:	Jacob Chen <jacob-chen@iotwrt.com>
diff --git a/drivers/char/hw_random/Kconfig b/drivers/char/hw_random/Kconfig
index 442c40efb200..2b62cd08f91a 100644
--- a/drivers/char/hw_random/Kconfig
+++ b/drivers/char/hw_random/Kconfig
@@ -573,6 +573,20 @@ config HW_RANDOM_JH7110
 	  To compile this driver as a module, choose M here.
 	  The module will be called jh7110-trng.
 
+config HW_RANDOM_ROCKCHIP
+	tristate "Rockchip True Random Number Generator"
+	depends on HW_RANDOM && (ARCH_ROCKCHIP || COMPILE_TEST)
+	depends on HAS_IOMEM
+	default HW_RANDOM
+	help
+	  This driver provides kernel-side support for the True Random Number
+	  Generator hardware found on some Rockchip SoC like RK3566 or RK3568.
+
+	  To compile this driver as a module, choose M here: the
+	  module will be called rockchip-rng.
+
+	  If unsure, say Y.
+
 endif # HW_RANDOM
 
 config UML_RANDOM
diff --git a/drivers/char/hw_random/Makefile b/drivers/char/hw_random/Makefile
index 32549a1186dc..01f012eab440 100644
--- a/drivers/char/hw_random/Makefile
+++ b/drivers/char/hw_random/Makefile
@@ -48,4 +48,5 @@ obj-$(CONFIG_HW_RANDOM_XIPHERA) += xiphera-trng.o
 obj-$(CONFIG_HW_RANDOM_ARM_SMCCC_TRNG) += arm_smccc_trng.o
 obj-$(CONFIG_HW_RANDOM_CN10K) += cn10k-rng.o
 obj-$(CONFIG_HW_RANDOM_POLARFIRE_SOC) += mpfs-rng.o
+obj-$(CONFIG_HW_RANDOM_ROCKCHIP) += rockchip-rng.o
 obj-$(CONFIG_HW_RANDOM_JH7110) += jh7110-trng.o
diff --git a/drivers/char/hw_random/rockchip-rng.c b/drivers/char/hw_random/rockchip-rng.c
new file mode 100644
index 000000000000..7e45e9880e3a
--- /dev/null
+++ b/drivers/char/hw_random/rockchip-rng.c
@@ -0,0 +1,220 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * rockchip-rng.c True Random Number Generator driver for Rockchip RK3568 SoC
+ *
+ * Copyright (c) 2018, Fuzhou Rockchip Electronics Co., Ltd.
+ * Copyright (c) 2022, Aurelien Jarno
+ * Authors:
+ *  Lin Jinhan <troy.lin@rock-chips.com>
+ *  Aurelien Jarno <aurelien@aurel32.net>
+ */
+#include <linux/clk.h>
+#include <linux/hw_random.h>
+#include <linux/io.h>
+#include <linux/iopoll.h>
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/platform_device.h>
+#include <linux/pm_runtime.h>
+#include <linux/reset.h>
+#include <linux/slab.h>
+
+#define RK_RNG_AUTOSUSPEND_DELAY	100
+#define RK_RNG_MAX_BYTE			32
+#define RK_RNG_POLL_PERIOD_US		100
+#define RK_RNG_POLL_TIMEOUT_US		10000
+
+/*
+ * TRNG collects osc ring output bit every RK_RNG_SAMPLE_CNT time. The value is
+ * a tradeoff between speed and quality and has been adjusted to get a quality
+ * of ~900 (~90% of FIPS 140-2 successes).
+ */
+#define RK_RNG_SAMPLE_CNT		1000
+
+/* TRNG registers from RK3568 TRM-Part2, section 5.4.1 */
+#define TRNG_RST_CTL			0x0004
+#define TRNG_RNG_CTL			0x0400
+#define TRNG_RNG_CTL_LEN_64_BIT		(0x00 << 4)
+#define TRNG_RNG_CTL_LEN_128_BIT	(0x01 << 4)
+#define TRNG_RNG_CTL_LEN_192_BIT	(0x02 << 4)
+#define TRNG_RNG_CTL_LEN_256_BIT	(0x03 << 4)
+#define TRNG_RNG_CTL_OSC_RING_SPEED_0	(0x00 << 2)
+#define TRNG_RNG_CTL_OSC_RING_SPEED_1	(0x01 << 2)
+#define TRNG_RNG_CTL_OSC_RING_SPEED_2	(0x02 << 2)
+#define TRNG_RNG_CTL_OSC_RING_SPEED_3	(0x03 << 2)
+#define TRNG_RNG_CTL_ENABLE		BIT(1)
+#define TRNG_RNG_CTL_START		BIT(0)
+#define TRNG_RNG_SAMPLE_CNT		0x0404
+#define TRNG_RNG_DOUT			0x0410
+
+struct rk_rng {
+	struct hwrng rng;
+	void __iomem *base;
+	struct reset_control *rst;
+	int clk_num;
+	struct clk_bulk_data *clk_bulks;
+};
+
+static int rk_rng_init(struct hwrng *rng)
+{
+	struct rk_rng *rk_rng = container_of(rng, struct rk_rng, rng);
+	int ret;
+
+	/* start clocks */
+	ret = clk_bulk_prepare_enable(rk_rng->clk_num, rk_rng->clk_bulks);
+	if (ret < 0) {
+		dev_err((struct device *) rk_rng->rng.priv,
+			"Failed to enable clks %d\n", ret);
+		return ret;
+	}
+
+	/* set the sample period */
+	writel(RK_RNG_SAMPLE_CNT, rk_rng->base + TRNG_RNG_SAMPLE_CNT);
+
+	/* set osc ring speed and enable it */
+	writel(TRNG_RNG_CTL_LEN_256_BIT |
+	       TRNG_RNG_CTL_OSC_RING_SPEED_0 |
+	       TRNG_RNG_CTL_ENABLE,
+	       rk_rng->base + TRNG_RNG_CTL);
+
+	return 0;
+}
+
+static void rk_rng_cleanup(struct hwrng *rng)
+{
+	struct rk_rng *rk_rng = container_of(rng, struct rk_rng, rng);
+
+	/* stop TRNG */
+	writel(0, rk_rng->base + TRNG_RNG_CTL);
+
+	/* stop clocks */
+	clk_bulk_disable_unprepare(rk_rng->clk_num, rk_rng->clk_bulks);
+}
+
+static int rk_rng_read(struct hwrng *rng, void *buf, size_t max, bool wait)
+{
+	struct rk_rng *rk_rng = container_of(rng, struct rk_rng, rng);
+	size_t to_read = min_t(size_t, max, RK_RNG_MAX_BYTE);
+	u32 reg;
+	int ret = 0;
+
+	ret = pm_runtime_resume_and_get((struct device *) rk_rng->rng.priv);
+	if (ret < 0)
+		return ret;
+
+	/* Start collecting random data */
+	writel(TRNG_RNG_CTL_START, rk_rng->base + TRNG_RNG_CTL);
+
+	ret = readl_poll_timeout(rk_rng->base + TRNG_RNG_CTL, reg,
+				 !(reg & TRNG_RNG_CTL_START),
+				 RK_RNG_POLL_PERIOD_US,
+				 RK_RNG_POLL_TIMEOUT_US);
+	if (ret < 0)
+		goto out;
+
+	/* Read random data stored in the registers */
+	memcpy_fromio(buf, rk_rng->base + TRNG_RNG_DOUT, to_read);
+out:
+	pm_runtime_mark_last_busy((struct device *) rk_rng->rng.priv);
+	pm_runtime_put_sync_autosuspend((struct device *) rk_rng->rng.priv);
+
+	return (ret < 0) ? ret : to_read;
+}
+
+static int rk_rng_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct rk_rng *rk_rng;
+	int ret;
+
+	rk_rng = devm_kzalloc(dev, sizeof(*rk_rng), GFP_KERNEL);
+	if (!rk_rng)
+		return -ENOMEM;
+
+	rk_rng->base = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(rk_rng->base))
+		return PTR_ERR(rk_rng->base);
+
+	rk_rng->clk_num = devm_clk_bulk_get_all(dev, &rk_rng->clk_bulks);
+	if (rk_rng->clk_num < 0)
+		return dev_err_probe(dev, rk_rng->clk_num,
+				     "Failed to get clks property\n");
+
+	rk_rng->rst = devm_reset_control_array_get_exclusive(&pdev->dev);
+	if (IS_ERR(rk_rng->rst))
+		return dev_err_probe(dev, PTR_ERR(rk_rng->rst),
+				     "Failed to get reset property\n");
+
+	reset_control_assert(rk_rng->rst);
+	udelay(2);
+	reset_control_deassert(rk_rng->rst);
+
+	platform_set_drvdata(pdev, rk_rng);
+
+	rk_rng->rng.name = dev_driver_string(dev);
+	if (!IS_ENABLED(CONFIG_PM)) {
+		rk_rng->rng.init = rk_rng_init;
+		rk_rng->rng.cleanup = rk_rng_cleanup;
+	}
+	rk_rng->rng.read = rk_rng_read;
+	rk_rng->rng.priv = (unsigned long) dev;
+	rk_rng->rng.quality = 900;
+
+	pm_runtime_set_autosuspend_delay(dev, RK_RNG_AUTOSUSPEND_DELAY);
+	pm_runtime_use_autosuspend(dev);
+	devm_pm_runtime_enable(dev);
+
+	ret = devm_hwrng_register(dev, &rk_rng->rng);
+	if (ret)
+		return dev_err_probe(&pdev->dev, ret, "Failed to register Rockchip hwrng\n");
+
+	return 0;
+}
+
+static int __maybe_unused rk_rng_runtime_suspend(struct device *dev)
+{
+	struct rk_rng *rk_rng = dev_get_drvdata(dev);
+
+	rk_rng_cleanup(&rk_rng->rng);
+
+	return 0;
+}
+
+static int __maybe_unused rk_rng_runtime_resume(struct device *dev)
+{
+	struct rk_rng *rk_rng = dev_get_drvdata(dev);
+
+	return rk_rng_init(&rk_rng->rng);
+}
+
+static const struct dev_pm_ops rk_rng_pm_ops = {
+	SET_RUNTIME_PM_OPS(rk_rng_runtime_suspend,
+				rk_rng_runtime_resume, NULL)
+	SET_SYSTEM_SLEEP_PM_OPS(pm_runtime_force_suspend,
+				pm_runtime_force_resume)
+};
+
+static const struct of_device_id rk_rng_dt_match[] = {
+	{ .compatible = "rockchip,rk3568-rng", },
+	{ /* sentinel */ },
+};
+
+MODULE_DEVICE_TABLE(of, rk_rng_dt_match);
+
+static struct platform_driver rk_rng_driver = {
+	.driver	= {
+		.name	= "rockchip-rng",
+		.pm	= &rk_rng_pm_ops,
+		.of_match_table = rk_rng_dt_match,
+	},
+	.probe	= rk_rng_probe,
+};
+
+module_platform_driver(rk_rng_driver);
+
+MODULE_DESCRIPTION("Rockchip RK3568 True Random Number Generator driver");
+MODULE_AUTHOR("Lin Jinhan <troy.lin@rock-chips.com>");
+MODULE_AUTHOR("Aurelien Jarno <aurelien@aurel32.net>");
+MODULE_AUTHOR("Daniel Golle <daniel@makrotopia.org>");
+MODULE_LICENSE("GPL");
-- 
2.45.2

