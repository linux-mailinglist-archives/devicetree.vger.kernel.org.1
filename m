Return-Path: <devicetree+bounces-2133-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 348757A9C32
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 21:12:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DE062282920
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 19:12:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF41E41741;
	Thu, 21 Sep 2023 17:49:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EEF847C63
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 17:49:32 +0000 (UTC)
Received: from mx07-00178001.pphosted.com (mx07-00178001.pphosted.com [185.132.182.106])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3A7CF86823;
	Thu, 21 Sep 2023 10:38:02 -0700 (PDT)
Received: from pps.filterd (m0288072.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 38L523u4030984;
	Thu, 21 Sep 2023 10:03:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding:content-type; s=
	selector1; bh=cNbDhJfganlNu9SpBlUNKaMvCAIqSTwJFs77mpVa7aw=; b=Kz
	gvfp220/TAbsN+kpiAMU7yxbzg2HgRHqvUqkqYMNI81nJO4rRP2ioBIVMOfkbawi
	7OYAUMctZfcBtq/hVyCSuG2OU5oM2btdf6Buwk8Pr40mUWQwWWYbxnc0Ju4It7G0
	kD8O4uWMJ25MYxSZfmQeMCiew6vak+rj4GqLhYKHqOVHvAH1qyvZQw9bld5VdKSB
	eFNcvz583up8IrKBIZp8hv6dKbgWzMd8+kvquyQNKnxBc161TLllqNxPmcdHMjSf
	/5LVIQb8KETRFp96o37muFYD6LkW2HFyOzk1OUwnt2wBvOnxuJVh8E4BAJODy0lO
	58Ul0FsSKALoPcT6Hc3w==
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3t51sfkb4e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 21 Sep 2023 10:03:11 +0200 (MEST)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 9D76510005C;
	Thu, 21 Sep 2023 10:03:10 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 94A1E212FB8;
	Thu, 21 Sep 2023 10:03:10 +0200 (CEST)
Received: from localhost (10.201.20.32) by SHFDAG1NODE1.st.com (10.75.129.69)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Thu, 21 Sep
 2023 10:03:10 +0200
From: Gatien Chevallier <gatien.chevallier@foss.st.com>
To: Olivia Mackall <olivia@selenic.com>,
        Herbert Xu
	<herbert@gondor.apana.org.au>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Coquelin
	<mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>
CC: Lionel Debieve <lionel.debieve@foss.st.com>,
        <linux-crypto@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        Gatien Chevallier <gatien.chevallier@foss.st.com>
Subject: [PATCH v3 3/9] hwrng: stm32 - implement STM32MP13x support
Date: Thu, 21 Sep 2023 10:02:55 +0200
Message-ID: <20230921080301.253563-4-gatien.chevallier@foss.st.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230921080301.253563-1-gatien.chevallier@foss.st.com>
References: <20230921080301.253563-1-gatien.chevallier@foss.st.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.201.20.32]
X-ClientProxiedBy: SHFCAS1NODE1.st.com (10.75.129.72) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-09-21_06,2023-09-20_01,2023-05-22_02
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

The RNG present on STM32MP13x platforms introduces a customizable
configuration and the conditional reset.

STM32 RNG configuration should best fit the requirements of the
platform. Therefore, put a platform-specific RNG configuration
field in the platform data. Default RNG configuration for STM32MP13
is the NIST certified configuration [1].

While there, fix and the RNG init sequence to support all RNG
versions.

[1] https://csrc.nist.gov/projects/cryptographic-module-validation-program/entropy-validations/certificate/53

Signed-off-by: Gatien Chevallier <gatien.chevallier@foss.st.com>
---
 drivers/char/hw_random/stm32-rng.c | 222 ++++++++++++++++++++---------
 1 file changed, 158 insertions(+), 64 deletions(-)

diff --git a/drivers/char/hw_random/stm32-rng.c b/drivers/char/hw_random/stm32-rng.c
index d64d25d0fee8..54bd5807bbac 100644
--- a/drivers/char/hw_random/stm32-rng.c
+++ b/drivers/char/hw_random/stm32-rng.c
@@ -17,22 +17,43 @@
 #include <linux/reset.h>
 #include <linux/slab.h>
 
-#define RNG_CR 0x00
-#define RNG_CR_RNGEN BIT(2)
-#define RNG_CR_CED BIT(5)
-
-#define RNG_SR 0x04
-#define RNG_SR_SEIS BIT(6)
-#define RNG_SR_CEIS BIT(5)
-#define RNG_SR_DRDY BIT(0)
-
-#define RNG_DR 0x08
+#define RNG_CR			0x00
+#define RNG_CR_RNGEN		BIT(2)
+#define RNG_CR_CED		BIT(5)
+#define RNG_CR_CONFIG1		GENMASK(11, 8)
+#define RNG_CR_NISTC		BIT(12)
+#define RNG_CR_CONFIG2		GENMASK(15, 13)
+#define RNG_CR_CONFIG3		GENMASK(25, 20)
+#define RNG_CR_CONDRST		BIT(30)
+#define RNG_CR_CONFLOCK		BIT(31)
+#define RNG_CR_ENTROPY_SRC_MASK	(RNG_CR_CONFIG1 | RNG_CR_NISTC | RNG_CR_CONFIG2 | RNG_CR_CONFIG3)
+#define RNG_CR_CONFIG_MASK	(RNG_CR_ENTROPY_SRC_MASK | RNG_CR_CED)
+
+#define RNG_SR		0x04
+#define RNG_SR_SEIS	BIT(6)
+#define RNG_SR_CEIS	BIT(5)
+#define RNG_SR_DRDY	BIT(0)
+
+#define RNG_DR			0x08
+
+#define RNG_NSCR		0x0C
+#define RNG_NSCR_MASK		GENMASK(17, 0)
+
+#define RNG_HTCR		0x10
+
+struct stm32_rng_data {
+	u32	cr;
+	u32	nscr;
+	u32	htcr;
+	bool	has_cond_reset;
+};
 
 struct stm32_rng_private {
 	struct hwrng rng;
 	void __iomem *base;
 	struct clk *clk;
 	struct reset_control *rst;
+	const struct stm32_rng_data *data;
 	bool ced;
 };
 
@@ -87,32 +108,145 @@ static int stm32_rng_init(struct hwrng *rng)
 	struct stm32_rng_private *priv =
 	    container_of(rng, struct stm32_rng_private, rng);
 	int err;
+	u32 reg;
 
 	err = clk_prepare_enable(priv->clk);
 	if (err)
 		return err;
 
-	if (priv->ced)
-		writel_relaxed(RNG_CR_RNGEN, priv->base + RNG_CR);
-	else
-		writel_relaxed(RNG_CR_RNGEN | RNG_CR_CED,
-			       priv->base + RNG_CR);
-
 	/* clear error indicators */
 	writel_relaxed(0, priv->base + RNG_SR);
 
+	reg = readl_relaxed(priv->base + RNG_CR);
+
+	/*
+	 * Keep default RNG configuration if none was specified.
+	 * 0 is an invalid value as it disables all entropy sources.
+	 */
+	if (priv->data->has_cond_reset && priv->data->cr) {
+		reg &= ~RNG_CR_CONFIG_MASK;
+		reg |= RNG_CR_CONDRST | (priv->data->cr & RNG_CR_ENTROPY_SRC_MASK);
+		if (priv->ced)
+			reg &= ~RNG_CR_CED;
+		else
+			reg |= RNG_CR_CED;
+		writel_relaxed(reg, priv->base + RNG_CR);
+
+		/* Health tests and noise control registers */
+		writel_relaxed(priv->data->htcr, priv->base + RNG_HTCR);
+		writel_relaxed(priv->data->nscr & RNG_NSCR_MASK, priv->base + RNG_NSCR);
+
+		reg &= ~RNG_CR_CONDRST;
+		reg |= RNG_CR_RNGEN;
+		writel_relaxed(reg, priv->base + RNG_CR);
+
+		err = readl_relaxed_poll_timeout_atomic(priv->base + RNG_CR, reg,
+							(!(reg & RNG_CR_CONDRST)),
+							10, 50000);
+		if (err) {
+			dev_err((struct device *)priv->rng.priv,
+				"%s: timeout %x!\n", __func__, reg);
+			return -EINVAL;
+		}
+	} else {
+		/* Handle all RNG versions by checking if conditional reset should be set */
+		if (priv->data->has_cond_reset)
+			reg |= RNG_CR_CONDRST;
+
+		if (priv->ced)
+			reg &= ~RNG_CR_CED;
+		else
+			reg |= RNG_CR_CED;
+
+		writel_relaxed(reg, priv->base + RNG_CR);
+
+		if (priv->data->has_cond_reset)
+			reg &= ~RNG_CR_CONDRST;
+
+		reg |= RNG_CR_RNGEN;
+
+		writel_relaxed(reg, priv->base + RNG_CR);
+	}
+
+	err = readl_relaxed_poll_timeout_atomic(priv->base + RNG_SR, reg,
+						reg & RNG_SR_DRDY,
+						10, 100000);
+	if (err | (reg & ~RNG_SR_DRDY)) {
+		clk_disable_unprepare(priv->clk);
+		dev_err((struct device *)priv->rng.priv,
+			"%s: timeout:%x SR: %x!\n", __func__, err, reg);
+		return -EINVAL;
+	}
+
 	return 0;
 }
 
-static void stm32_rng_cleanup(struct hwrng *rng)
+static int stm32_rng_remove(struct platform_device *ofdev)
 {
-	struct stm32_rng_private *priv =
-	    container_of(rng, struct stm32_rng_private, rng);
+	pm_runtime_disable(&ofdev->dev);
+
+	return 0;
+}
+
+#ifdef CONFIG_PM
+static int stm32_rng_runtime_suspend(struct device *dev)
+{
+	u32 reg;
+	struct stm32_rng_private *priv = dev_get_drvdata(dev);
 
-	writel_relaxed(0, priv->base + RNG_CR);
+	reg = readl_relaxed(priv->base + RNG_CR);
+	reg &= ~RNG_CR_RNGEN;
+	writel_relaxed(reg, priv->base + RNG_CR);
 	clk_disable_unprepare(priv->clk);
+
+	return 0;
 }
 
+static int stm32_rng_runtime_resume(struct device *dev)
+{
+	u32 reg;
+	struct stm32_rng_private *priv = dev_get_drvdata(dev);
+
+	clk_prepare_enable(priv->clk);
+	reg = readl_relaxed(priv->base + RNG_CR);
+	reg |= RNG_CR_RNGEN;
+	writel_relaxed(reg, priv->base + RNG_CR);
+
+	return 0;
+}
+#endif
+
+static const struct dev_pm_ops stm32_rng_pm_ops = {
+	SET_RUNTIME_PM_OPS(stm32_rng_runtime_suspend,
+			   stm32_rng_runtime_resume, NULL)
+	SET_SYSTEM_SLEEP_PM_OPS(pm_runtime_force_suspend,
+				pm_runtime_force_resume)
+};
+
+static const struct stm32_rng_data stm32mp13_rng_data = {
+	.has_cond_reset = true,
+	.cr = 0x00F00D00,
+	.nscr = 0x2B5BB,
+	.htcr = 0x969D,
+};
+
+static const struct stm32_rng_data stm32_rng_data = {
+	.has_cond_reset = false,
+};
+
+static const struct of_device_id stm32_rng_match[] = {
+	{
+		.compatible = "st,stm32mp13-rng",
+		.data = &stm32mp13_rng_data,
+	},
+	{
+		.compatible = "st,stm32-rng",
+		.data = &stm32_rng_data,
+	},
+	{},
+};
+MODULE_DEVICE_TABLE(of, stm32_rng_match);
+
 static int stm32_rng_probe(struct platform_device *ofdev)
 {
 	struct device *dev = &ofdev->dev;
@@ -141,13 +275,14 @@ static int stm32_rng_probe(struct platform_device *ofdev)
 
 	priv->ced = of_property_read_bool(np, "clock-error-detect");
 
+	priv->data = of_device_get_match_data(dev);
+	if (!priv->data)
+		return -ENODEV;
+
 	dev_set_drvdata(dev, priv);
 
 	priv->rng.name = dev_driver_string(dev);
-#ifndef CONFIG_PM
 	priv->rng.init = stm32_rng_init;
-	priv->rng.cleanup = stm32_rng_cleanup;
-#endif
 	priv->rng.read = stm32_rng_read;
 	priv->rng.priv = (unsigned long) dev;
 	priv->rng.quality = 900;
@@ -159,47 +294,6 @@ static int stm32_rng_probe(struct platform_device *ofdev)
 	return devm_hwrng_register(dev, &priv->rng);
 }
 
-static int stm32_rng_remove(struct platform_device *ofdev)
-{
-	pm_runtime_disable(&ofdev->dev);
-
-	return 0;
-}
-
-#ifdef CONFIG_PM
-static int stm32_rng_runtime_suspend(struct device *dev)
-{
-	struct stm32_rng_private *priv = dev_get_drvdata(dev);
-
-	stm32_rng_cleanup(&priv->rng);
-
-	return 0;
-}
-
-static int stm32_rng_runtime_resume(struct device *dev)
-{
-	struct stm32_rng_private *priv = dev_get_drvdata(dev);
-
-	return stm32_rng_init(&priv->rng);
-}
-#endif
-
-static const struct dev_pm_ops stm32_rng_pm_ops = {
-	SET_RUNTIME_PM_OPS(stm32_rng_runtime_suspend,
-			   stm32_rng_runtime_resume, NULL)
-	SET_SYSTEM_SLEEP_PM_OPS(pm_runtime_force_suspend,
-				pm_runtime_force_resume)
-};
-
-
-static const struct of_device_id stm32_rng_match[] = {
-	{
-		.compatible = "st,stm32-rng",
-	},
-	{},
-};
-MODULE_DEVICE_TABLE(of, stm32_rng_match);
-
 static struct platform_driver stm32_rng_driver = {
 	.driver = {
 		.name = "stm32-rng",
-- 
2.25.1


