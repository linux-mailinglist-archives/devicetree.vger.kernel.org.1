Return-Path: <devicetree+bounces-237251-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 69B94C4EE2A
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 16:57:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C94621885EAB
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 15:57:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5949636B07B;
	Tue, 11 Nov 2025 15:56:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EKP82GkX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A53E36B049
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 15:56:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762876595; cv=none; b=sZAREOEF6YJ2wL8o0OCoPUZYeRjC8Uc1hkMA75TDX6bx3URbn3DIt+JQmBJI/7YDKLg95hYjcgQrcUIyrrINj4OmwWbs/F+bEr7S813sk5fuoJyaL5l1eoipAFPp6Xz//CsYGtiGd99idWbXzlD+7SS+YGKrijUW7b/LccqZdOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762876595; c=relaxed/simple;
	bh=0uIR8Qg8yt3OmnrdjUH1eJLhte55yFIneXSQYFVOiCY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ILObYI+yMAbx7/tEfiDYUqJ+doTimhjZ6iBC5CCI06reg3kxlHWhMRlB2b0A7hVq18oA9J5HZh0DriWnj5vr1YEm5osaBc/fWtXZ36bW8NtN9grWkVAHija9FGJtCAlK/sNVOmhWUjnTSRz1XBg2WY2ntUVPNq8tKmj/jPCHR3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EKP82GkX; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-42b387483bbso1940672f8f.1
        for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 07:56:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762876591; x=1763481391; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=q/ctzYR0cJkPKD2JP2ySHJQqhhHfUgTf2W4E572ADBk=;
        b=EKP82GkXTbZwWCV/rHmG48pevIc5d0G+zmFArx7n+FTUuBciOA8nPVGe+GT4Y3H/RB
         /t+m7ri11+4B077LABWvMpXifLP0GvfwMuk0fcQAvAoy2v9JT6aiKGTt4v14/nTgEgD4
         x40u6m5etb/Yk+fC1b4gWTbkvRlHgWWona+0tuvVff52G/r+ynniPb2+iRpQ7XjCeuYL
         mjPzXQy0WXGU6Es/XmC0P41NzspevHMGnCFE2GY4qF3J3LgmeYa9gWRhaaZEXoSeEMNE
         Vnfkj/52WWnCPsBmhG7OWER3mZF4ht9Sa85175pXBEhB47DVv4bX68Z3KIXx7SA40vbE
         3QYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762876591; x=1763481391;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=q/ctzYR0cJkPKD2JP2ySHJQqhhHfUgTf2W4E572ADBk=;
        b=Utu65lE8uA9wUDqbtM5MBL4gC87xj0WNyAoYP9rpSMTAdFnwADrLzZUM5OH+jSgVd3
         R7+1cLXNEkWOZtWLzYc8WY1RGHOKWVhexdoaiCLUAssCUJmgKnPVVB7OEXLWAiGVnSBB
         IsNrddL2/FgnOEHywol0sWsroYNkuf3sMsEBUAus9L6QCXqYhe62+Mfi1EnJKnRdXhjC
         1AitGh2XoJrsDsFjU7AZfC/R2Hd87ee+PVw0chpcYuabsgI7X7PBcv/bXbIwqATZ5FO4
         n9UhWDxlF7mNN3YCdFgOhEw/DXkeO5AKamqhqCJ4GvzWTK6OCure8baqDHdYf9EiNn4H
         0L8Q==
X-Forwarded-Encrypted: i=1; AJvYcCWJpcBqelyLGKCOmMj3CkJi8icSVKt58+Y/MYKKrnbIHJ4RaRv9DPgSBq8mZ3WXfrLDydqS8WDjNGjZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0JoEBcHmlfk28dQkejyJf/8J5fH1fYiNqaL4XayNSPT5X1LOO
	MXsHdwieSDq7OpEoAFIydApa7BkqGG+GoF6lq5ReUtOHCyRQt3bcshRt
X-Gm-Gg: ASbGncs1aADcVL9qE3RlCh7ZpZrIycfkOqYDje+1MwE8tKw1VSXXW3xBaWfaMlaM6V4
	Nv6S+ujWD8zj44uSda2ZhVSkbAg1hYATaZdYJP6ZFZYWB8KNrsyNvLEJ+iJvOgSfc/821UwjC5b
	2Nv6PnkDuaO5yUpJYvKDbnboFvsLFsEL1crUdZ6MSTuTrcegh9n9dJgAEJlYlaBIPGzlu+a9NMG
	j/+OhwjQS6fsc4k2nWonb3W0jWlCawtaYnAhz3YL9AbNMiFEi3Un/be8phgES4Isq0pehPrSiqZ
	q8RinuuxpdIlEP7VdVYIXjFCCNLlR8RFBegAnH3x370LVXIykUyyUL/kBz8cRNbeZW4JTedI9lH
	OoGlD5qeHdMp+/pE6VxZ5kZD+P9hqgeQopRxB6/WsSKkKTiCc8ehPdd6YbJlGRJi/EsSAlEh45p
	vbp5wIQN5llFdnBYE1UPXNqr9lQDYoraT7m80gFIlG
X-Google-Smtp-Source: AGHT+IHPgPMcB7v6a4L7yptAsuJpFLsTU4O6Av6t6XnKpwFFXbhHQkv8GRIFMxbCrfV9lZZtByQ1mA==
X-Received: by 2002:a05:6000:4024:b0:42b:3ab7:b8a8 with SMTP id ffacd0b85a97d-42b3ab7bb63mr7741899f8f.17.1762876591357;
        Tue, 11 Nov 2025 07:56:31 -0800 (PST)
Received: from Ansuel-XPS24 (93-34-90-37.ip49.fastwebnet.it. [93.34.90.37])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-42abe63e13csm28676766f8f.19.2025.11.11.07.56.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Nov 2025 07:56:30 -0800 (PST)
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
Subject: [PATCH v4 1/5] clk: en7523: convert driver to regmap API
Date: Tue, 11 Nov 2025 16:56:17 +0100
Message-ID: <20251111155623.9024-2-ansuelsmth@gmail.com>
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

Convert driver to regmap API, in preparation for support of Airoha
AN7523 as the SCU will be an MFD and the regmap will be provided in the
parent node.

Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
---
 drivers/clk/clk-en7523.c | 137 ++++++++++++++++++++++-----------------
 1 file changed, 76 insertions(+), 61 deletions(-)

diff --git a/drivers/clk/clk-en7523.c b/drivers/clk/clk-en7523.c
index 15bbdeb60b8e..314e7450313f 100644
--- a/drivers/clk/clk-en7523.c
+++ b/drivers/clk/clk-en7523.c
@@ -1,5 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0-only
 
+#include <linux/bitfield.h>
 #include <linux/delay.h>
 #include <linux/clk-provider.h>
 #include <linux/io.h>
@@ -34,6 +35,7 @@
 #define   REG_RESET_CONTROL_PCIE2	BIT(26)
 /* EN7581 */
 #define REG_NP_SCU_PCIC			0x88
+#define REG_PCIE_CTRL			GENMASK(7, 0)
 #define REG_NP_SCU_SSTR			0x9c
 #define REG_PCIE_XSI0_SEL_MASK		GENMASK(14, 13)
 #define REG_PCIE_XSI1_SEL_MASK		GENMASK(12, 11)
@@ -63,14 +65,14 @@ struct en_clk_desc {
 };
 
 struct en_clk_gate {
-	void __iomem *base;
+	struct regmap *map;
 	struct clk_hw hw;
 };
 
 struct en_rst_data {
 	const u16 *bank_ofs;
 	const u16 *idx_map;
-	void __iomem *base;
+	struct regmap *map;
 	struct reset_controller_dev rcdev;
 };
 
@@ -388,44 +390,44 @@ static u32 en7523_get_div(const struct en_clk_desc *desc, u32 val)
 static int en7523_pci_is_enabled(struct clk_hw *hw)
 {
 	struct en_clk_gate *cg = container_of(hw, struct en_clk_gate, hw);
+	u32 val;
 
-	return !!(readl(cg->base + REG_PCI_CONTROL) & REG_PCI_CONTROL_REFCLK_EN1);
+	regmap_read(cg->map, REG_PCI_CONTROL, &val);
+	return !!(val & REG_PCI_CONTROL_REFCLK_EN1);
 }
 
 static int en7523_pci_prepare(struct clk_hw *hw)
 {
 	struct en_clk_gate *cg = container_of(hw, struct en_clk_gate, hw);
-	void __iomem *np_base = cg->base;
-	u32 val, mask;
+	struct regmap *map = cg->map;
+	u32 mask;
 
 	/* Need to pull device low before reset */
-	val = readl(np_base + REG_PCI_CONTROL);
-	val &= ~(REG_PCI_CONTROL_PERSTOUT1 | REG_PCI_CONTROL_PERSTOUT);
-	writel(val, np_base + REG_PCI_CONTROL);
+	regmap_clear_bits(map, REG_PCI_CONTROL,
+			  REG_PCI_CONTROL_PERSTOUT1 |
+			  REG_PCI_CONTROL_PERSTOUT);
 	usleep_range(1000, 2000);
 
 	/* Enable PCIe port 1 */
-	val |= REG_PCI_CONTROL_REFCLK_EN1;
-	writel(val, np_base + REG_PCI_CONTROL);
+	regmap_set_bits(map, REG_PCI_CONTROL,
+			REG_PCI_CONTROL_REFCLK_EN1);
 	usleep_range(1000, 2000);
 
 	/* Reset to default */
-	val = readl(np_base + REG_RESET_CONTROL1);
 	mask = REG_RESET_CONTROL_PCIE1 | REG_RESET_CONTROL_PCIE2 |
 	       REG_RESET_CONTROL_PCIEHB;
-	writel(val & ~mask, np_base + REG_RESET_CONTROL1);
+	regmap_clear_bits(map, REG_RESET_CONTROL1, mask);
 	usleep_range(1000, 2000);
-	writel(val | mask, np_base + REG_RESET_CONTROL1);
+	regmap_set_bits(map, REG_RESET_CONTROL1, mask);
 	msleep(100);
-	writel(val & ~mask, np_base + REG_RESET_CONTROL1);
+	regmap_clear_bits(map, REG_RESET_CONTROL1, mask);
 	usleep_range(5000, 10000);
 
 	/* Release device */
 	mask = REG_PCI_CONTROL_PERSTOUT1 | REG_PCI_CONTROL_PERSTOUT;
-	val = readl(np_base + REG_PCI_CONTROL);
-	writel(val & ~mask, np_base + REG_PCI_CONTROL);
+	regmap_clear_bits(map, REG_PCI_CONTROL, mask);
 	usleep_range(1000, 2000);
-	writel(val | mask, np_base + REG_PCI_CONTROL);
+	regmap_set_bits(map, REG_PCI_CONTROL, mask);
 	msleep(250);
 
 	return 0;
@@ -434,16 +436,13 @@ static int en7523_pci_prepare(struct clk_hw *hw)
 static void en7523_pci_unprepare(struct clk_hw *hw)
 {
 	struct en_clk_gate *cg = container_of(hw, struct en_clk_gate, hw);
-	void __iomem *np_base = cg->base;
-	u32 val;
+	struct regmap *map = cg->map;
 
-	val = readl(np_base + REG_PCI_CONTROL);
-	val &= ~REG_PCI_CONTROL_REFCLK_EN1;
-	writel(val, np_base + REG_PCI_CONTROL);
+	regmap_clear_bits(map, REG_PCI_CONTROL, REG_PCI_CONTROL_REFCLK_EN1);
 }
 
 static struct clk_hw *en7523_register_pcie_clk(struct device *dev,
-					       void __iomem *np_base)
+					       struct regmap *clk_map)
 {
 	const struct en_clk_soc_data *soc_data = device_get_match_data(dev);
 	struct clk_init_data init = {
@@ -456,7 +455,7 @@ static struct clk_hw *en7523_register_pcie_clk(struct device *dev,
 	if (!cg)
 		return NULL;
 
-	cg->base = np_base;
+	cg->map = clk_map;
 	cg->hw.init = &init;
 
 	if (init.ops->unprepare)
@@ -474,21 +473,20 @@ static int en7581_pci_is_enabled(struct clk_hw *hw)
 	u32 val, mask;
 
 	mask = REG_PCI_CONTROL_REFCLK_EN0 | REG_PCI_CONTROL_REFCLK_EN1;
-	val = readl(cg->base + REG_PCI_CONTROL);
+	regmap_read(cg->map, REG_PCI_CONTROL, &val);
 	return (val & mask) == mask;
 }
 
 static int en7581_pci_enable(struct clk_hw *hw)
 {
 	struct en_clk_gate *cg = container_of(hw, struct en_clk_gate, hw);
-	void __iomem *np_base = cg->base;
-	u32 val, mask;
+	struct regmap *map = cg->map;
+	u32 mask;
 
 	mask = REG_PCI_CONTROL_REFCLK_EN0 | REG_PCI_CONTROL_REFCLK_EN1 |
 	       REG_PCI_CONTROL_PERSTOUT1 | REG_PCI_CONTROL_PERSTOUT2 |
 	       REG_PCI_CONTROL_PERSTOUT;
-	val = readl(np_base + REG_PCI_CONTROL);
-	writel(val | mask, np_base + REG_PCI_CONTROL);
+	regmap_set_bits(map, REG_PCI_CONTROL, mask);
 
 	return 0;
 }
@@ -496,19 +494,18 @@ static int en7581_pci_enable(struct clk_hw *hw)
 static void en7581_pci_disable(struct clk_hw *hw)
 {
 	struct en_clk_gate *cg = container_of(hw, struct en_clk_gate, hw);
-	void __iomem *np_base = cg->base;
-	u32 val, mask;
+	struct regmap *map = cg->map;
+	u32 mask;
 
 	mask = REG_PCI_CONTROL_REFCLK_EN0 | REG_PCI_CONTROL_REFCLK_EN1 |
 	       REG_PCI_CONTROL_PERSTOUT1 | REG_PCI_CONTROL_PERSTOUT2 |
 	       REG_PCI_CONTROL_PERSTOUT;
-	val = readl(np_base + REG_PCI_CONTROL);
-	writel(val & ~mask, np_base + REG_PCI_CONTROL);
+	regmap_clear_bits(map, REG_PCI_CONTROL, mask);
 	usleep_range(1000, 2000);
 }
 
 static void en7523_register_clocks(struct device *dev, struct clk_hw_onecell_data *clk_data,
-				   void __iomem *base, void __iomem *np_base)
+				   struct regmap *map, struct regmap *clk_map)
 {
 	struct clk_hw *hw;
 	u32 rate;
@@ -517,10 +514,12 @@ static void en7523_register_clocks(struct device *dev, struct clk_hw_onecell_dat
 	for (i = 0; i < ARRAY_SIZE(en7523_base_clks); i++) {
 		const struct en_clk_desc *desc = &en7523_base_clks[i];
 		u32 reg = desc->div_reg ? desc->div_reg : desc->base_reg;
-		u32 val = readl(base + desc->base_reg);
+		u32 val;
+
+		regmap_read(map, desc->base_reg, &val);
 
 		rate = en7523_get_base_rate(desc, val);
-		val = readl(base + reg);
+		regmap_read(map, reg, &val);
 		rate /= en7523_get_div(desc, val);
 
 		hw = clk_hw_register_fixed_rate(dev, desc->name, NULL, 0, rate);
@@ -533,30 +532,47 @@ static void en7523_register_clocks(struct device *dev, struct clk_hw_onecell_dat
 		clk_data->hws[desc->id] = hw;
 	}
 
-	hw = en7523_register_pcie_clk(dev, np_base);
+	hw = en7523_register_pcie_clk(dev, clk_map);
 	clk_data->hws[EN7523_CLK_PCIE] = hw;
 }
 
+static const struct regmap_config en7523_clk_regmap_config = {
+	.reg_bits = 32,
+	.val_bits = 32,
+	.reg_stride = 4,
+};
+
 static int en7523_clk_hw_init(struct platform_device *pdev,
 			      struct clk_hw_onecell_data *clk_data)
 {
 	void __iomem *base, *np_base;
+	struct regmap *map, *clk_map;
 
 	base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(base))
 		return PTR_ERR(base);
 
+	map = devm_regmap_init_mmio(&pdev->dev, base,
+				    &en7523_clk_regmap_config);
+	if (IS_ERR(map))
+		return PTR_ERR(map);
+
 	np_base = devm_platform_ioremap_resource(pdev, 1);
 	if (IS_ERR(np_base))
 		return PTR_ERR(np_base);
 
-	en7523_register_clocks(&pdev->dev, clk_data, base, np_base);
+	clk_map = devm_regmap_init_mmio(&pdev->dev, np_base,
+					&en7523_clk_regmap_config);
+	if (IS_ERR(clk_map))
+		return PTR_ERR(clk_map);
+
+	en7523_register_clocks(&pdev->dev, clk_data, map, clk_map);
 
 	return 0;
 }
 
 static void en7581_register_clocks(struct device *dev, struct clk_hw_onecell_data *clk_data,
-				   struct regmap *map, void __iomem *base)
+				   struct regmap *map, struct regmap *clk_map)
 {
 	struct clk_hw *hw;
 	u32 rate;
@@ -593,7 +609,7 @@ static void en7581_register_clocks(struct device *dev, struct clk_hw_onecell_dat
 		clk_data->hws[desc->id] = hw;
 	}
 
-	hw = en7523_register_pcie_clk(dev, base);
+	hw = en7523_register_pcie_clk(dev, clk_map);
 	clk_data->hws[EN7523_CLK_PCIE] = hw;
 }
 
@@ -601,15 +617,10 @@ static int en7523_reset_update(struct reset_controller_dev *rcdev,
 			       unsigned long id, bool assert)
 {
 	struct en_rst_data *rst_data = container_of(rcdev, struct en_rst_data, rcdev);
-	void __iomem *addr = rst_data->base + rst_data->bank_ofs[id / RST_NR_PER_BANK];
-	u32 val;
+	u32 addr = rst_data->bank_ofs[id / RST_NR_PER_BANK];
 
-	val = readl(addr);
-	if (assert)
-		val |= BIT(id % RST_NR_PER_BANK);
-	else
-		val &= ~BIT(id % RST_NR_PER_BANK);
-	writel(val, addr);
+	regmap_update_bits(rst_data->map, addr, BIT(id % RST_NR_PER_BANK),
+			   assert ? BIT(id % RST_NR_PER_BANK) : 0);
 
 	return 0;
 }
@@ -630,9 +641,11 @@ static int en7523_reset_status(struct reset_controller_dev *rcdev,
 			       unsigned long id)
 {
 	struct en_rst_data *rst_data = container_of(rcdev, struct en_rst_data, rcdev);
-	void __iomem *addr = rst_data->base + rst_data->bank_ofs[id / RST_NR_PER_BANK];
+	u32 addr = rst_data->bank_ofs[id / RST_NR_PER_BANK];
+	u32 val;
 
-	return !!(readl(addr) & BIT(id % RST_NR_PER_BANK));
+	regmap_read(rst_data->map, addr, &val);
+	return !!(val & BIT(id % RST_NR_PER_BANK));
 }
 
 static int en7523_reset_xlate(struct reset_controller_dev *rcdev,
@@ -652,7 +665,7 @@ static const struct reset_control_ops en7581_reset_ops = {
 	.status = en7523_reset_status,
 };
 
-static int en7581_reset_register(struct device *dev, void __iomem *base)
+static int en7581_reset_register(struct device *dev, struct regmap *map)
 {
 	struct en_rst_data *rst_data;
 
@@ -662,7 +675,7 @@ static int en7581_reset_register(struct device *dev, void __iomem *base)
 
 	rst_data->bank_ofs = en7581_rst_ofs;
 	rst_data->idx_map = en7581_rst_map;
-	rst_data->base = base;
+	rst_data->map = map;
 
 	rst_data->rcdev.nr_resets = ARRAY_SIZE(en7581_rst_map);
 	rst_data->rcdev.of_xlate = en7523_reset_xlate;
@@ -678,9 +691,8 @@ static int en7581_reset_register(struct device *dev, void __iomem *base)
 static int en7581_clk_hw_init(struct platform_device *pdev,
 			      struct clk_hw_onecell_data *clk_data)
 {
-	struct regmap *map;
+	struct regmap *map, *clk_map;
 	void __iomem *base;
-	u32 val;
 
 	map = syscon_regmap_lookup_by_compatible("airoha,en7581-chip-scu");
 	if (IS_ERR(map))
@@ -690,15 +702,18 @@ static int en7581_clk_hw_init(struct platform_device *pdev,
 	if (IS_ERR(base))
 		return PTR_ERR(base);
 
-	en7581_register_clocks(&pdev->dev, clk_data, map, base);
+	clk_map = devm_regmap_init_mmio(&pdev->dev, base, &en7523_clk_regmap_config);
+	if (IS_ERR(clk_map))
+		return PTR_ERR(clk_map);
+
+	en7581_register_clocks(&pdev->dev, clk_data, map, clk_map);
 
-	val = readl(base + REG_NP_SCU_SSTR);
-	val &= ~(REG_PCIE_XSI0_SEL_MASK | REG_PCIE_XSI1_SEL_MASK);
-	writel(val, base + REG_NP_SCU_SSTR);
-	val = readl(base + REG_NP_SCU_PCIC);
-	writel(val | 3, base + REG_NP_SCU_PCIC);
+	regmap_clear_bits(clk_map, REG_NP_SCU_SSTR,
+			  REG_PCIE_XSI0_SEL_MASK | REG_PCIE_XSI1_SEL_MASK);
+	regmap_update_bits(clk_map, REG_NP_SCU_PCIC, REG_PCIE_CTRL,
+			   FIELD_PREP(REG_PCIE_CTRL, 3));
 
-	return en7581_reset_register(&pdev->dev, base);
+	return en7581_reset_register(&pdev->dev, clk_map);
 }
 
 static int en7523_clk_probe(struct platform_device *pdev)
-- 
2.51.0


