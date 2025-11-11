Return-Path: <devicetree+bounces-237252-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D55E8C4EE60
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 16:59:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A2B1C3B07AC
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 15:56:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98C2B36C58E;
	Tue, 11 Nov 2025 15:56:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SY1oZ1N6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A05C36B06B
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 15:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762876596; cv=none; b=mXxvJxyEjy0u3HR28guKyK2GjjxCdVbbsPna5V7ShY9pJTXdrcRR6Slr/5raThbeNiPtcHQQTGgCotuQjqn6q95Bx7HnqKNUq+E0YyVvBUW4adcefInaUfjZzhvZgaS7LzjuuJ/YYmPmX9QGl5+P5FNX2l83Ds654VwwajcU19Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762876596; c=relaxed/simple;
	bh=XVTIKGDo9ThWVGg8qcTaNRRTvL4SJHb9lTtxpWqTLR8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=oDEpxcnUJwqVzUvqKh1VUOpYYXrVwsEp5e4TEwPYuGYhFWuV9mFLWRHdxB8uuhcXjX32gdFa9gkrOa+EBTppnyKe5ZUmFdQ3SonKOkdQR5mU1e9ptcjGgQcg29SwkFUbW/MJebGjyghNY4DeUoC1niXGoq3tUXYoldP0vOWaj5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SY1oZ1N6; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-42b3108f41fso1687757f8f.3
        for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 07:56:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762876593; x=1763481393; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pskgOVcQzGBDwVn3zzaWjuy3GbH8LGu28I4+iALHLrM=;
        b=SY1oZ1N6fAUVuuKYBYIkAaIgjOut1rWEmwS0XeF2FjfIDTBjMH019fwwgxiPMDCJlY
         k+Kg5cCezOowMoH4XcqARP6tzSlDp7W78MbLh9t0L2SkWPgAQ5yz4VDD7mP/1vqKIHFW
         8VQrFlSmW0sVAAjM6RbyCsVHZYv0XznXAsTB7FJozipH6oFVb0yqqBo7e6OO+nO5cvkb
         dIq3k5otIGg/fYJnD4Rdrivd6hHDr6LQtu8uPy4idInQLGMxCQfBMaCFLtbVQT0e/5D5
         LJHSAiL+dfu/Q2Vhf/YCy3Pbr5GSKJ9W4vaxyQZoe/upBfvV0Yx6iFnOcFeSuwvn+GsY
         i9Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762876593; x=1763481393;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=pskgOVcQzGBDwVn3zzaWjuy3GbH8LGu28I4+iALHLrM=;
        b=jTB9E+XhIhNRMciQAFPAQdAZOKMWtEITgopZqhKsfveHpLClnyqaYOtwTyMlJmbXNL
         XCp+ngTDXkmccCsTwel6r+xX62Q03oISuPlqS2Vg5WopZhkQkgSl6wb9P7497jfHzwzU
         pE/Kboc6/HBiEyb4Hn4Ph+a75gpE8l1MeXVatBEG1a7EYnRZIOOzKYSSfcHMhLK1qt0i
         ofIN+nYtJsc9FxwEoYXzYGzbGBSSkvy0EcHIp+nglrRTrG+YDA/MQLrQVcsmP7/sVMn0
         j2gSPP+tnb7oGCGyIoLXCeDs7mjgcHsOhdCJ49/8xKgx6UU6TAu1HhLbU+MspIRVkyis
         gIPA==
X-Forwarded-Encrypted: i=1; AJvYcCXYEoTex+9bcl6DTJy38LK8ZN6pmUNy1NZxzdXvOxiEus8ZNxoqbunAfRjYSuSZ8EtjIWknwYcGd3J3@vger.kernel.org
X-Gm-Message-State: AOJu0YzXkpEvc8IYhgdf+sOQ6FdBmlToalm396l1LjUVW5AHnhnWFXw8
	OASQ3hcKd4QjejPVEJ62luG2njNtZnfjTYhc5ogA9rH2zVGK78o8kbeD
X-Gm-Gg: ASbGncvIgyjYtJqTyLaXp5PAGB9YuBVgkqIo3HVWotLoewZakcMn6gfO5luMK26/lO8
	3hIx6YEKhncouJCFqdEXnrQC5cC9OLc/2NF9roap4D+DbaFic2Ha7m6we+iwJs9hRcaKb3nkxrB
	skxf4xVchH39zeqlSlpAJ//wEsE14WgG385Qjck0i6jIBc9GBnvhzBKrMIh8RpGelqjauVnNgE7
	a4Ig4M+1ecxdibyflh+0Hy75BE+EqEoMCG600B4mBGzzmbstkAtiGshPuo3GJsUcpjwb2VvrnD0
	3RmDwsT/SeV/ddgAxMTVpOfL0SUTP8fCJ6LSyrAY+BfZTKmlVp4uvongonwS5gqQwKjPonPM8Z5
	kUcW8IVdBdflqnGXlhSieFwDpp87RljX/y9WFtAnbE/mJzVtIvKw55lr5noTE/B75qD8A328HJh
	3t/0nMQ4v4jiYpbC3jwoKIVcZhXjms9NoodKhg0bfI
X-Google-Smtp-Source: AGHT+IGNg1qYMZqiG3WtGb0ldIMecp9uKwNT0ppjRrCM4YhFq4IcRBoJvBHU+lPwykx7FsAHAwE8Tw==
X-Received: by 2002:a05:6000:26ce:b0:42b:4219:269 with SMTP id ffacd0b85a97d-42b42190643mr4381837f8f.41.1762876592349;
        Tue, 11 Nov 2025 07:56:32 -0800 (PST)
Received: from Ansuel-XPS24 (93-34-90-37.ip49.fastwebnet.it. [93.34.90.37])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-42abe63e13csm28676766f8f.19.2025.11.11.07.56.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Nov 2025 07:56:31 -0800 (PST)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Felix Fietkau <nbd@nbd.name>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Christian Marangi <ansuelsmth@gmail.com>
Subject: [PATCH v4 2/5] clk: en7523: generalize register clocks function
Date: Tue, 11 Nov 2025 16:56:18 +0100
Message-ID: <20251111155623.9024-3-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251111155623.9024-1-ansuelsmth@gmail.com>
References: <20251111155623.9024-1-ansuelsmth@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Generalize register clocks function for Airoha EN7523 and EN7581 clocks
driver. The same logic is applied for both clock hence code can be
reduced and simplified by putting the base_clocks struct in the soc_data
and passing that to a generic register clocks function.

While at it rework some function to return error and use devm variant
for clk_hw_regiser.

Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
---
 drivers/clk/clk-en7523.c | 148 +++++++++++++++++----------------------
 1 file changed, 66 insertions(+), 82 deletions(-)

diff --git a/drivers/clk/clk-en7523.c b/drivers/clk/clk-en7523.c
index 314e7450313f..b040f0f0d727 100644
--- a/drivers/clk/clk-en7523.c
+++ b/drivers/clk/clk-en7523.c
@@ -78,8 +78,10 @@ struct en_rst_data {
 
 struct en_clk_soc_data {
 	u32 num_clocks;
+	const struct en_clk_desc *base_clks;
 	const struct clk_ops pcie_ops;
 	int (*hw_init)(struct platform_device *pdev,
+		       const struct en_clk_soc_data *soc_data,
 		       struct clk_hw_onecell_data *clk_data);
 };
 
@@ -450,10 +452,11 @@ static struct clk_hw *en7523_register_pcie_clk(struct device *dev,
 		.ops = &soc_data->pcie_ops,
 	};
 	struct en_clk_gate *cg;
+	int err;
 
 	cg = devm_kzalloc(dev, sizeof(*cg), GFP_KERNEL);
 	if (!cg)
-		return NULL;
+		return ERR_PTR(-ENOMEM);
 
 	cg->map = clk_map;
 	cg->hw.init = &init;
@@ -461,12 +464,62 @@ static struct clk_hw *en7523_register_pcie_clk(struct device *dev,
 	if (init.ops->unprepare)
 		init.ops->unprepare(&cg->hw);
 
-	if (clk_hw_register(dev, &cg->hw))
-		return NULL;
+	err = devm_clk_hw_register(dev, &cg->hw);
+	if (err)
+		return ERR_PTR(err);
 
 	return &cg->hw;
 }
 
+static int en75xx_register_clocks(struct device *dev,
+				  const struct en_clk_soc_data *soc_data,
+				  struct clk_hw_onecell_data *clk_data,
+				  struct regmap *map, struct regmap *clk_map)
+{
+	struct clk_hw *hw;
+	u32 rate;
+	int i;
+
+	for (i = 0; i < soc_data->num_clocks - 1; i++) {
+		const struct en_clk_desc *desc = &soc_data->base_clks[i];
+		u32 val, reg = desc->div_reg ? desc->div_reg : desc->base_reg;
+		int err;
+
+		err = regmap_read(map, desc->base_reg, &val);
+		if (err) {
+			pr_err("Failed reading fixed clk rate %s: %d\n",
+			       desc->name, err);
+			return err;
+		}
+		rate = en7523_get_base_rate(desc, val);
+
+		err = regmap_read(map, reg, &val);
+		if (err) {
+			pr_err("Failed reading fixed clk div %s: %d\n",
+			       desc->name, err);
+			return err;
+		}
+		rate /= en7523_get_div(desc, val);
+
+		hw = clk_hw_register_fixed_rate(dev, desc->name, NULL, 0, rate);
+		if (IS_ERR(hw)) {
+			pr_err("Failed to register clk %s: %ld\n",
+			       desc->name, PTR_ERR(hw));
+			return PTR_ERR(hw);
+		}
+
+		clk_data->hws[desc->id] = hw;
+	}
+
+	hw = en7523_register_pcie_clk(dev, clk_map);
+	if (IS_ERR(hw))
+		return PTR_ERR(hw);
+
+	clk_data->hws[EN7523_CLK_PCIE] = hw;
+
+	return 0;
+}
+
 static int en7581_pci_is_enabled(struct clk_hw *hw)
 {
 	struct en_clk_gate *cg = container_of(hw, struct en_clk_gate, hw);
@@ -504,38 +557,6 @@ static void en7581_pci_disable(struct clk_hw *hw)
 	usleep_range(1000, 2000);
 }
 
-static void en7523_register_clocks(struct device *dev, struct clk_hw_onecell_data *clk_data,
-				   struct regmap *map, struct regmap *clk_map)
-{
-	struct clk_hw *hw;
-	u32 rate;
-	int i;
-
-	for (i = 0; i < ARRAY_SIZE(en7523_base_clks); i++) {
-		const struct en_clk_desc *desc = &en7523_base_clks[i];
-		u32 reg = desc->div_reg ? desc->div_reg : desc->base_reg;
-		u32 val;
-
-		regmap_read(map, desc->base_reg, &val);
-
-		rate = en7523_get_base_rate(desc, val);
-		regmap_read(map, reg, &val);
-		rate /= en7523_get_div(desc, val);
-
-		hw = clk_hw_register_fixed_rate(dev, desc->name, NULL, 0, rate);
-		if (IS_ERR(hw)) {
-			pr_err("Failed to register clk %s: %ld\n",
-			       desc->name, PTR_ERR(hw));
-			continue;
-		}
-
-		clk_data->hws[desc->id] = hw;
-	}
-
-	hw = en7523_register_pcie_clk(dev, clk_map);
-	clk_data->hws[EN7523_CLK_PCIE] = hw;
-}
-
 static const struct regmap_config en7523_clk_regmap_config = {
 	.reg_bits = 32,
 	.val_bits = 32,
@@ -543,6 +564,7 @@ static const struct regmap_config en7523_clk_regmap_config = {
 };
 
 static int en7523_clk_hw_init(struct platform_device *pdev,
+			      const struct en_clk_soc_data *soc_data,
 			      struct clk_hw_onecell_data *clk_data)
 {
 	void __iomem *base, *np_base;
@@ -566,51 +588,7 @@ static int en7523_clk_hw_init(struct platform_device *pdev,
 	if (IS_ERR(clk_map))
 		return PTR_ERR(clk_map);
 
-	en7523_register_clocks(&pdev->dev, clk_data, map, clk_map);
-
-	return 0;
-}
-
-static void en7581_register_clocks(struct device *dev, struct clk_hw_onecell_data *clk_data,
-				   struct regmap *map, struct regmap *clk_map)
-{
-	struct clk_hw *hw;
-	u32 rate;
-	int i;
-
-	for (i = 0; i < ARRAY_SIZE(en7581_base_clks); i++) {
-		const struct en_clk_desc *desc = &en7581_base_clks[i];
-		u32 val, reg = desc->div_reg ? desc->div_reg : desc->base_reg;
-		int err;
-
-		err = regmap_read(map, desc->base_reg, &val);
-		if (err) {
-			pr_err("Failed reading fixed clk rate %s: %d\n",
-			       desc->name, err);
-			continue;
-		}
-		rate = en7523_get_base_rate(desc, val);
-
-		err = regmap_read(map, reg, &val);
-		if (err) {
-			pr_err("Failed reading fixed clk div %s: %d\n",
-			       desc->name, err);
-			continue;
-		}
-		rate /= en7523_get_div(desc, val);
-
-		hw = clk_hw_register_fixed_rate(dev, desc->name, NULL, 0, rate);
-		if (IS_ERR(hw)) {
-			pr_err("Failed to register clk %s: %ld\n",
-			       desc->name, PTR_ERR(hw));
-			continue;
-		}
-
-		clk_data->hws[desc->id] = hw;
-	}
-
-	hw = en7523_register_pcie_clk(dev, clk_map);
-	clk_data->hws[EN7523_CLK_PCIE] = hw;
+	return en75xx_register_clocks(&pdev->dev, soc_data, clk_data, map, clk_map);
 }
 
 static int en7523_reset_update(struct reset_controller_dev *rcdev,
@@ -689,10 +667,12 @@ static int en7581_reset_register(struct device *dev, struct regmap *map)
 }
 
 static int en7581_clk_hw_init(struct platform_device *pdev,
+			      const struct en_clk_soc_data *soc_data,
 			      struct clk_hw_onecell_data *clk_data)
 {
 	struct regmap *map, *clk_map;
 	void __iomem *base;
+	int ret;
 
 	map = syscon_regmap_lookup_by_compatible("airoha,en7581-chip-scu");
 	if (IS_ERR(map))
@@ -706,7 +686,9 @@ static int en7581_clk_hw_init(struct platform_device *pdev,
 	if (IS_ERR(clk_map))
 		return PTR_ERR(clk_map);
 
-	en7581_register_clocks(&pdev->dev, clk_data, map, clk_map);
+	ret = en75xx_register_clocks(&pdev->dev, soc_data, clk_data, map, clk_map);
+	if (ret)
+		return ret;
 
 	regmap_clear_bits(clk_map, REG_NP_SCU_SSTR,
 			  REG_PCIE_XSI0_SEL_MASK | REG_PCIE_XSI1_SEL_MASK);
@@ -732,7 +714,7 @@ static int en7523_clk_probe(struct platform_device *pdev)
 		return -ENOMEM;
 
 	clk_data->num = soc_data->num_clocks;
-	r = soc_data->hw_init(pdev, clk_data);
+	r = soc_data->hw_init(pdev, soc_data, clk_data);
 	if (r)
 		return r;
 
@@ -740,6 +722,7 @@ static int en7523_clk_probe(struct platform_device *pdev)
 }
 
 static const struct en_clk_soc_data en7523_data = {
+	.base_clks = en7523_base_clks,
 	.num_clocks = ARRAY_SIZE(en7523_base_clks) + 1,
 	.pcie_ops = {
 		.is_enabled = en7523_pci_is_enabled,
@@ -750,6 +733,7 @@ static const struct en_clk_soc_data en7523_data = {
 };
 
 static const struct en_clk_soc_data en7581_data = {
+	.base_clks = en7581_base_clks,
 	/* We increment num_clocks by 1 to account for additional PCIe clock */
 	.num_clocks = ARRAY_SIZE(en7581_base_clks) + 1,
 	.pcie_ops = {
-- 
2.51.0


