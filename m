Return-Path: <devicetree+bounces-227767-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B2245BE4651
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 17:59:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1222D1A6421A
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 15:59:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C541E350D76;
	Thu, 16 Oct 2025 15:58:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eIwgT0O/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DD1834F496
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 15:58:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760630329; cv=none; b=VI32yCKc7RJCspu2DsQm605Ov6atffPq8lyqI/FOB1NeKu/8MydkuwSLlGLDqlAFaGCTRzRU78UOOkjzLcSwbdbEKKHmFkDZr0vdDGTA6iNzZzP2ejblpfjs4FfzlHZkLqussqTgS7Cw5ceJWN17ip6zcjx6l540B4Tffo/8cXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760630329; c=relaxed/simple;
	bh=nBudP7+99iBkFh3qe0ZdmQhnQbG9lraMj3SNNZddgS4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=aXnCzjzHzpmf+QiGa2OVWTnmVbw87HGdSIxyJxcNEdYrVvQzer5YcVp8uaHj8Zvu4UyukQ2U4wLrtQ60TtufDZTfuySWMg4p9z1AfkJ29CLYvKYG8jLfhQ48Q1Q+0Ogk07fS3FtWwDDBUbROJGw8zOxnTTRcJmX0huFnqsByrFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=eIwgT0O/; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-b456d2dc440so137710066b.0
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 08:58:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760630326; x=1761235126; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2sx/VxWL+zXIwDerOXQo/SlWkRBTA5eJCirxOIqSzME=;
        b=eIwgT0O/O/HgYvsar5WwyzGpzgTedaNg7vFkmfiuMi+WZxmu8AqNr6lDagvZ9aC29s
         QyvpGuRb8VAmXWwa2z/zRQSM16to99fOMb7xIqCSC2fZ81OrBNt8yRIZYxDKD2DsGdIp
         GP33Gfl8XVnFpGoyFwn5shib1URB1iYxe00SkK6F+K1YGvP6TiS5unZfPr1O0jBh/Rqt
         22xhOzrLDqR5lOcNmhY/QSm7Onc2dlscctAJJMu5fY13szShegKCw2oSmzA57WFTsjmx
         RQNWc9IG6OZmGhOsoSL5lEz3EGbtG2F3MbLgLs1Jo3J8e+xs+3eWfcgS2rZrhhXm/cJ3
         4KjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760630326; x=1761235126;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2sx/VxWL+zXIwDerOXQo/SlWkRBTA5eJCirxOIqSzME=;
        b=mQfw9ZWWhWS3dn8WZWxKpQpkQ6XUZjvD+HjLfDx7Jmj6t2k9FYfo10m7iYO/L/rczo
         L00m2+ZV3fiEkq7570IMqN9Jxe6Nt32rC19AdcANqW3YoMONIEhbYoP3o0q1cDiYYFnB
         jHJ2N7zIsuDy3JA2erDrnMD/yghcjHi+PG80Hqu/DhxEZ33s07abSKPe/fpqXie/eCfp
         gfkkNmGGfrfihCO+7mw5WQbRfkp2zJW6yebwkHqa+L2m06wYFih5t2bQ7G1Jmn6jR5MM
         cNKyZ+W+w7rl3iqVARSOQqB6Hc+jBp1n+4zgL8LiLA7jQUZtYWCzVf+KiXz9GJWojw2W
         QpkA==
X-Forwarded-Encrypted: i=1; AJvYcCUj1Tt+NTo86PLX+r6vzOjsd8DP0oELofle45mWf0D72dOYiusrjyx8zxfMMfwE7sxgNvRvhNfuttPy@vger.kernel.org
X-Gm-Message-State: AOJu0YxxWhn/fPMybuMpryxpCasw0MQByoEG4/hAIj5UyFjKbRM+4sEh
	bssXvxNfGx/sWA72+wvDCLwT6R4Bfcel7cWe2EDVRjVbqN79oHbR9WAhixn8RcNWe1A=
X-Gm-Gg: ASbGncsdtl4Zsa64LXl7+5v1KzJ3g9Agl5cK2Dk0NRWty7DFUPm2DrNxjmh8mn3bkeo
	K9SDczOSxW8cRNyHJfY97pQg5H3yqSQe6aljHs7cKKhoUJ8uJCDUF73kDOWZt+3MRAk/6dgNBuJ
	7aLaGbSFh0V5V0HhhKcxMco6txA6vUjDCJAzFV8MkAePPK4DochiuwslezgfAfUAgRpl/bR3TQg
	OXxFzPrermolCvlnbDfsKdSPOC0CKmrnQynqm3H0OsA7KRh1K27ysR9FPmASacclv+8BcDrAWUy
	nsH7a9XUgezzXDaXiQS9/E777Sl9BROndWwB1/OAAkZDstHRTUoe+TbyXizZDJYx+vL4FyxlAcI
	w6vjktPPzn/k8M25cGPPDUR6Y/kZJhcBsBQa6AQNjLUKYoU8BBYZNp7X+ArZqbyNWcEjDm7o60B
	zCrnZY+05+66/6sYKP/29tEznXgw0WrMpSD23jfflKj4GZLF5Wproeawu7e10K
X-Google-Smtp-Source: AGHT+IGK8Ey29vlNo00zlc+GOkFyC2bjHLvIDXKhESpfZnJ6rq6388SEUQEklyoTNIyqpHblnkTV0Q==
X-Received: by 2002:a17:907:2d88:b0:b40:33ec:51de with SMTP id a640c23a62f3a-b6472b60651mr49198966b.8.1760630325841;
        Thu, 16 Oct 2025 08:58:45 -0700 (PDT)
Received: from puffmais2.c.googlers.com (254.48.34.34.bc.googleusercontent.com. [34.34.48.254])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b5ccccb4811sm549021666b.56.2025.10.16.08.58.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Oct 2025 08:58:45 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Thu, 16 Oct 2025 16:58:38 +0100
Subject: [PATCH v3 05/10] pmdomain: samsung: convert to using regmap
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251016-gs101-pd-v3-5-7b30797396e7@linaro.org>
References: <20251016-gs101-pd-v3-0-7b30797396e7@linaro.org>
In-Reply-To: <20251016-gs101-pd-v3-0-7b30797396e7@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Ulf Hansson <ulf.hansson@linaro.org>, 
 Marek Szyprowski <m.szyprowski@samsung.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-pm@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2

On platforms such as Google gs101, direct mmio register access to the
PMU registers doesn't necessarily work and access must happen via a
(syscon) regmap created by the PMU driver instead.

In preparation for supporting such SoCs convert the existing mmio
accesses to using a regmap wrapper.

With this change in place, a follow-up patch can update the driver to
optionally acquire the PMU-created regmap without having to change the
rest of the code.

Signed-off-by: André Draszik <andre.draszik@linaro.org>

---
There is one checkpatch warning, relating to the non-const
regmap_config. It can not easily be made const at this stage, but a
follow-up patch allows us to make it const and the warning will go away
anyway.
---
 drivers/pmdomain/samsung/exynos-pm-domains.c | 78 ++++++++++++++++++++--------
 1 file changed, 57 insertions(+), 21 deletions(-)

diff --git a/drivers/pmdomain/samsung/exynos-pm-domains.c b/drivers/pmdomain/samsung/exynos-pm-domains.c
index f53e1bd2479807988f969774b4b7b4c5739c1aba..383126245811cb8e4dbae3b99ced3f06d3093f35 100644
--- a/drivers/pmdomain/samsung/exynos-pm-domains.c
+++ b/drivers/pmdomain/samsung/exynos-pm-domains.c
@@ -9,15 +9,14 @@
 // conjunction with runtime-pm. Support for both device-tree and non-device-tree
 // based power domain support is included.
 
-#include <linux/io.h>
 #include <linux/err.h>
 #include <linux/platform_device.h>
 #include <linux/slab.h>
 #include <linux/pm_domain.h>
 #include <linux/delay.h>
 #include <linux/of.h>
-#include <linux/of_address.h>
 #include <linux/pm_runtime.h>
+#include <linux/regmap.h>
 
 struct exynos_pm_domain_config {
 	/* Value for LOCAL_PWR_CFG and STATUS fields for each domain */
@@ -28,7 +27,7 @@ struct exynos_pm_domain_config {
  * Exynos specific wrapper around the generic power domain
  */
 struct exynos_pm_domain {
-	void __iomem *base;
+	struct regmap *regmap;
 	struct generic_pm_domain pd;
 	u32 local_pwr_cfg;
 };
@@ -36,31 +35,37 @@ struct exynos_pm_domain {
 static int exynos_pd_power(struct generic_pm_domain *domain, bool power_on)
 {
 	struct exynos_pm_domain *pd;
-	void __iomem *base;
 	u32 timeout, pwr;
-	char *op;
+	int err;
 
 	pd = container_of(domain, struct exynos_pm_domain, pd);
-	base = pd->base;
 
 	pwr = power_on ? pd->local_pwr_cfg : 0;
-	writel_relaxed(pwr, base);
+	err = regmap_write(pd->regmap, 0, pwr);
+	if (err)
+		return err;
 
 	/* Wait max 1ms */
 	timeout = 10;
-
-	while ((readl_relaxed(base + 0x4) & pd->local_pwr_cfg) != pwr) {
-		if (!timeout) {
-			op = (power_on) ? "enable" : "disable";
-			pr_err("Power domain %s %s failed\n", domain->name, op);
-			return -ETIMEDOUT;
+	while (timeout-- > 0) {
+		unsigned int val;
+
+		err = regmap_read(pd->regmap, 0x4, &val);
+		if (err || ((val & pd->local_pwr_cfg) != pwr)) {
+			cpu_relax();
+			usleep_range(80, 100);
+			continue;
 		}
-		timeout--;
-		cpu_relax();
-		usleep_range(80, 100);
+
+		return 0;
 	}
 
-	return 0;
+	if (!err)
+		err = -ETIMEDOUT;
+	pr_err("Power domain %s %sable failed: %d\n", domain->name,
+	       power_on ? "en" : "dis", err);
+
+	return err;
 }
 
 static int exynos_pd_power_on(struct generic_pm_domain *domain)
@@ -109,8 +114,18 @@ static int exynos_pd_probe(struct platform_device *pdev)
 	struct device_node *np = dev->of_node;
 	struct of_phandle_args child, parent;
 	struct exynos_pm_domain *pd;
+	struct resource *res;
+	void __iomem *base;
+	unsigned int val;
 	int on, ret;
 
+	struct regmap_config reg_config = {
+		.reg_bits = 32,
+		.val_bits = 32,
+		.reg_stride = 4,
+		.use_relaxed_mmio = true,
+	};
+
 	pm_domain_cfg = of_device_get_match_data(dev);
 	pd = devm_kzalloc(dev, sizeof(*pd), GFP_KERNEL);
 	if (!pd)
@@ -120,15 +135,36 @@ static int exynos_pd_probe(struct platform_device *pdev)
 	if (!pd->pd.name)
 		return -ENOMEM;
 
-	pd->base = of_iomap(np, 0);
-	if (!pd->base)
-		return -ENODEV;
+	/*
+	 * The resource typically points into the address space of the PMU.
+	 * Therefore, avoid using devm_platform_get_and_ioremap_resource() and
+	 * instead use platform_get_resource() and devm_ioremap() to avoid
+	 * conflicts due to address space overlap.
+	 */
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	if (!res)
+		return dev_err_probe(dev, -ENXIO, "missing IO resources");
+
+	base = devm_ioremap(dev, res->start, resource_size(res));
+	if (!base)
+		return dev_err_probe(dev, -ENOMEM,
+				     "failed to ioremap PMU registers");
+
+	reg_config.max_register = resource_size(res) - reg_config.reg_stride;
+	pd->regmap = devm_regmap_init_mmio(dev, base, &reg_config);
+	if (IS_ERR(pd->regmap))
+		return dev_err_probe(dev, PTR_ERR(base),
+				     "failed to init regmap");
 
 	pd->pd.power_off = exynos_pd_power_off;
 	pd->pd.power_on = exynos_pd_power_on;
 	pd->local_pwr_cfg = pm_domain_cfg->local_pwr_cfg;
 
-	on = readl_relaxed(pd->base + 0x4) & pd->local_pwr_cfg;
+	ret = regmap_read(pd->regmap, 0x4, &val);
+	if (ret)
+		return dev_err_probe(dev, ret, "failed to read status");
+
+	on = val & pd->local_pwr_cfg;
 
 	pm_genpd_init(&pd->pd, NULL, !on);
 	ret = of_genpd_add_provider_simple(np, &pd->pd);

-- 
2.51.0.788.g6d19910ace-goog


