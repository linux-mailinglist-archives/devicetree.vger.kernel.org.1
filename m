Return-Path: <devicetree+bounces-277341-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8HKpJY7Kumm6bwIAu9opvQ
	(envelope-from <devicetree+bounces-277341-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 16:53:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 07CF82BEBBF
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 16:53:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 70726330F18D
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 15:29:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E50ED3E122B;
	Wed, 18 Mar 2026 15:28:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zttRsLUH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2F493E51D5
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 15:28:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773847691; cv=none; b=Cmjc3rpQJzeTEUOCmBpEBf1vjB07msgrixjkT9dMcYP2ixRa/nloJmD7VLjO2uTTSVwBEsU5/TnQOkyQl4ZqubVmuReogRvDu9AUvy1ldUUykNobhmGiTrCj4tD/4nBajqiua8zWbsA9O5M26Rt/oa6e9iF+zZHyyyN3K1SXsv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773847691; c=relaxed/simple;
	bh=UkTCfc6XZM2Ar1gydVKi5SOEwg4Ph7SOC1EYcnOcfC4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Vb/KIWsk6AzaWL78600DmwAYKnsTC/px784qPBE6JWTFSJO0a9clZy0qpOMvtgBZSqHdPsD8uNAEWgkwKnb8+nx4fepHU6fQJTxGgq9uFAR0D4GdQljvAM0TzrgjrgGnPrl0cPYet54xmdCm9LWxDINbFy0lZQtTkMtEwPXyGS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zttRsLUH; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-b941762394aso909027966b.1
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 08:28:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773847684; x=1774452484; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cLahL8mmAQrPbIGTcTRAY4s4CIuPNd3v6Qz0S44aYi4=;
        b=zttRsLUH3tXyV2A5jd/Pl9ynVZ+cY7dd1FefnrmywgllXYqyRp2CCDCNXg/ddhQ1jr
         h3axC8miEzCn0uPaoAt7kfGrUppvHBDGzF78/X+5Iyd3R3RDWPWoWvgL3jQ4tx/eYrSl
         /3IInzOygclkCsgw9wVHqSAlZS6MPnr5fNdxnuq4VU6XWztuG0JJrc7Xj9ZlQFfYFlcb
         C+9c9VXbtjhLcmzWxzpB7+Mgk8P/ceSLTPkjiKq1oE8HZd7aZwHVWIvbBljpdJUATl72
         iAAHpVxMop6ThxQHYgbNLAxNryl8a0zqhqBka6qiBU64wo1RUHUdXujh5f2sDLl5sTmw
         oJdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773847684; x=1774452484;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=cLahL8mmAQrPbIGTcTRAY4s4CIuPNd3v6Qz0S44aYi4=;
        b=DwZlTf1GgTT47sNkXNkvjrWqhqxO6HLCLKLiMf2hdXQatP5xhMLHh5RM6WXcQOfDNd
         JvPTLHqCllGL6Kb5mMy2gdtpugjz2aIq89kY2rQzo7+mFFIR8NXUKVDADb4NVW1op16p
         JzId4YmaI0ErjOtQkKOh6awbWpyY2drfiIAaRsmBNBS7d3PB81eSb0kw5wKysXX+Ctbp
         72iQx9QhH44EUVe1Pfd6f/VFr6wJKhD8gkhCESW1yOkZIYbqhobOa2vCC7H87ZQLYp0D
         S24c0BLrAIkojSv6Lf2Ag+46jL7joxb5k2j0I85kOZjMpyeR/TXGJUiSlrB1iLzBa9mH
         LOZA==
X-Forwarded-Encrypted: i=1; AJvYcCVZK/diEXIUAzCqSdpcxiLTwtt3aR/Y7tKRaX3q6XFFh2txh98GFakT6AjZs3qipxDQu09GNzMIDRPS@vger.kernel.org
X-Gm-Message-State: AOJu0YzzwJUe4maFUMvA0j+jyqdRTfjiBDtkce2JSoN7MAGumM3Z/3tA
	l1g2Ld9xLzjz/Szqun5xR4JnvK/BYqKYKJ5Ez21ooNscterWk8YcDh0I085DQ5rE6dI=
X-Gm-Gg: ATEYQzwvbzLKROHuiXJCfBfz5OYw12d5Ox9MtCXpPdR0wWbFLRSpGLTGD06FUUBgIya
	b4IyFZ4m7eudpxu+61auVvfZUV2SbqwfVIy1WcEAaLZto4FSixCMguJlIWHL34D204MGRcZVzjV
	2pfkB+16L5+iR8hLuvX19qGurh4+MnCTfaZ8W86tKVIQBPESvvb+4bxb06T/RUyw+Guhsjt8mDP
	tOq8PkvM9mx3DxsDHAAqoDKIdqo+GHnds1li26p2BvGb8mELP07ratS4TiGCxf2Wvnruy/N+qfZ
	IXuiDwN6sGuEK7Ojl9l5xuMvS4TLMomazK7Jbk8MNb36ip4O+JL25WISXTODUzrgef967pFkH1H
	bUHXoFkIqZfdzD++22QzAnpNJRSjnvlvtyyWeQKHaANS1zNrsoWGTcktBaYq2/zsmczak4YjzAn
	ErBSbOXlUiXQYt7x/pTmVBfec93aaEuRGAdFfzjJ0G7rb5NBX4VxONx5EL4hEIrgGFPwnCc0dpZ
	R9bU3klf85Enzg=
X-Received: by 2002:a17:906:7f13:b0:b97:f12a:3f8c with SMTP id a640c23a62f3a-b97f493e995mr155819266b.20.1773847682553;
        Wed, 18 Mar 2026 08:28:02 -0700 (PDT)
Received: from puffmais2.c.googlers.com (221.210.91.34.bc.googleusercontent.com. [34.91.210.221])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b97f173a3e3sm226989566b.61.2026.03.18.08.28.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 08:28:02 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Wed, 18 Mar 2026 15:27:52 +0000
Subject: [PATCH v8 07/10] pmdomain: samsung: add support for
 google,gs101-pd
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260318-gs101-pd-v8-7-241523460b10@linaro.org>
References: <20260318-gs101-pd-v8-0-241523460b10@linaro.org>
In-Reply-To: <20260318-gs101-pd-v8-0-241523460b10@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Ulf Hansson <ulf.hansson@linaro.org>, Liam Girdwood <lgirdwood@gmail.com>, 
 Mark Brown <broonie@kernel.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, Juan Yescas <jyescas@google.com>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-pm@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Marek Szyprowski <m.szyprowski@samsung.com>
X-Mailer: b4 0.14.3
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277341-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,samsung.com,linaro.org,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.draszik@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:dkim,linaro.org:email,linaro.org:mid,samsung.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 07CF82BEBBF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Google gs101, direct mmio register access to the PMU registers
doesn't work and access must happen via a regmap created by the PMU
driver instead.

Add a flag to the device match data to denote this case, and obtain
the regmap using the parent node in DT if true, while keeping to use
the traditional direct mmio regmap otherwise.

Additionally, the status is just one bit on gs101.

Tested-by: Marek Szyprowski <m.szyprowski@samsung.com>
Signed-off-by: André Draszik <andre.draszik@linaro.org>

---
v8:
- Update offset calculation into parent regmap. DT's ranges property
  now properly denotes PD address space to be an offset into parent
  node. Change code to account for that and subtract parent start
  address to get the offset back.

v4:
- add 'use_parent_regmap' flag instead of going by 'syscon' compatible
  in parent, as it's not a given that the parent provides a syscon-
  compatible regmap (it actually doesn't anymore after recent changes
  on gs101)

I've still kept Marek's Tested-by from v3, as legacy Exynos code
doesn't change.

We need the offset as we use the parent's regmap.
---
 drivers/pmdomain/samsung/exynos-pm-domains.c | 74 ++++++++++++++++++++--------
 1 file changed, 54 insertions(+), 20 deletions(-)

diff --git a/drivers/pmdomain/samsung/exynos-pm-domains.c b/drivers/pmdomain/samsung/exynos-pm-domains.c
index 3aba00b9ddef..f8c0d11e9b33 100644
--- a/drivers/pmdomain/samsung/exynos-pm-domains.c
+++ b/drivers/pmdomain/samsung/exynos-pm-domains.c
@@ -12,6 +12,7 @@
 #include <linux/err.h>
 #include <linux/platform_device.h>
 #include <linux/slab.h>
+#include <linux/mfd/syscon.h>
 #include <linux/pm_domain.h>
 #include <linux/delay.h>
 #include <linux/of.h>
@@ -21,6 +22,7 @@
 struct exynos_pm_domain_config {
 	/* Value for LOCAL_PWR_CFG and STATUS fields for each domain */
 	u32 local_pwr_cfg;
+	bool use_parent_regmap;
 };
 
 /*
@@ -93,8 +95,16 @@ static const struct exynos_pm_domain_config exynos5433_cfg = {
 	.local_pwr_cfg		= 0xf,
 };
 
+static const struct exynos_pm_domain_config gs101_cfg = {
+	.local_pwr_cfg		= BIT(0),
+	.use_parent_regmap	= true,
+};
+
 static const struct of_device_id exynos_pm_domain_of_match[] = {
 	{
+		.compatible = "google,gs101-pd",
+		.data = &gs101_cfg,
+	}, {
 		.compatible = "samsung,exynos4210-pd",
 		.data = &exynos4210_cfg,
 	}, {
@@ -122,17 +132,9 @@ static int exynos_pd_probe(struct platform_device *pdev)
 	struct of_phandle_args child, parent;
 	struct exynos_pm_domain *pd;
 	struct resource *res;
-	void __iomem *base;
 	unsigned int val;
 	int on, ret;
 
-	struct regmap_config reg_config = {
-		.reg_bits = 32,
-		.val_bits = 32,
-		.reg_stride = 4,
-		.use_relaxed_mmio = true,
-	};
-
 	pm_domain_cfg = of_device_get_match_data(dev);
 	pd = devm_kzalloc(dev, sizeof(*pd), GFP_KERNEL);
 	if (!pd)
@@ -143,25 +145,57 @@ static int exynos_pd_probe(struct platform_device *pdev)
 		return -ENOMEM;
 
 	/*
-	 * The resource typically points into the address space of the PMU.
+	 * The resource typically points into the address space of the PMU and
+	 * we have to consider two cases:
+	 *   1) some implementations require a custom regmap (from PMU parent)
+	 *   2) this driver might map the same addresses as the PMU driver
 	 * Therefore, avoid using devm_platform_get_and_ioremap_resource() and
-	 * instead use platform_get_resource() and devm_ioremap() to avoid
+	 * instead use platform_get_resource() here, and below for case 1) use
+	 * syscon_node_to_regmap() while for case 2) use devm_ioremap() to avoid
 	 * conflicts due to address space overlap.
 	 */
 	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 	if (!res)
 		return dev_err_probe(dev, -ENXIO, "missing IO resources\n");
 
-	base = devm_ioremap(dev, res->start, resource_size(res));
-	if (!base)
-		return dev_err_probe(dev, -ENOMEM,
-				     "failed to ioremap PMU regs\n");
-
-	reg_config.max_register = resource_size(res) - reg_config.reg_stride;
-	pd->regmap = devm_regmap_init_mmio(dev, base, &reg_config);
-	if (IS_ERR(pd->regmap))
-		return dev_err_probe(dev, PTR_ERR(base),
-				     "failed to init regmap\n");
+	if (pm_domain_cfg->use_parent_regmap) {
+		const struct resource *pres;
+
+		pres = platform_get_resource(to_platform_device(dev->parent),
+					     IORESOURCE_MEM, 0);
+		if (!pres)
+			return dev_err_probe(dev, -ENXIO,
+					     "missing parent IO resources\n");
+
+		pd->regmap = syscon_node_to_regmap(dev->parent->of_node);
+		if (IS_ERR(pd->regmap))
+			return dev_err_probe(dev, PTR_ERR(pd->regmap),
+					     "failed to acquire PMU regmap\n");
+
+		pd->configuration_reg = res->start - pres->start;
+		pd->status_reg = res->start - pres->start;
+	} else {
+		void __iomem *base;
+
+		const struct regmap_config reg_config = {
+			.reg_bits = 32,
+			.val_bits = 32,
+			.reg_stride = 4,
+			.use_relaxed_mmio = true,
+			.max_register = (resource_size(res)
+					 - reg_config.reg_stride),
+		};
+
+		base = devm_ioremap(dev, res->start, resource_size(res));
+		if (!base)
+			return dev_err_probe(dev, -ENOMEM,
+					     "failed to ioremap PMU regs\n");
+
+		pd->regmap = devm_regmap_init_mmio(dev, base, &reg_config);
+		if (IS_ERR(pd->regmap))
+			return dev_err_probe(dev, PTR_ERR(base),
+					     "failed to init regmap\n");
+	}
 
 	pd->pd.power_off = exynos_pd_power_off;
 	pd->pd.power_on = exynos_pd_power_on;

-- 
2.53.0.851.ga537e3e6e9-goog


