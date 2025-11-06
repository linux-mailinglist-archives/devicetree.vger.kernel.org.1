Return-Path: <devicetree+bounces-235836-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AA0AEC3D4DC
	for <lists+devicetree@lfdr.de>; Thu, 06 Nov 2025 20:59:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 26880188C349
	for <lists+devicetree@lfdr.de>; Thu,  6 Nov 2025 20:00:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC370354AC8;
	Thu,  6 Nov 2025 19:59:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JHCDdm+V"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 832E533EB0B
	for <devicetree@vger.kernel.org>; Thu,  6 Nov 2025 19:59:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762459187; cv=none; b=nR/dDrj8JQk71v+46B7uIxGJdoaQZhMYIbzzUmnkrD6dj7D5z5WT00SGloZNhyAlV2JjMcP5eTDZLWjypGckYHcOmP5pciLq72KUSWxvrV31PQt+dV8Vu6ZB3hJSeBoaCLrp66LpxVW9Myq+qJQEQwSf3oKj2QaRlfr0eegZPc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762459187; c=relaxed/simple;
	bh=0uIR8Qg8yt3OmnrdjUH1eJLhte55yFIneXSQYFVOiCY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=gdDeKzzzubYeVPqsF/P24xITv+GKz96isNReko+hcgfNgJZooSjpMA9fSaO3d6F5HLH+edwpo5LEpEWTOUxbwPkI9c79K+4UoC8T7nuoAHxraB+pNsSd27eB4MHixmdL846Mz4/yA31PZTRfsp1OvCuy0oKR7YTUCpIYxC2YNa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JHCDdm+V; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-429b72691b4so3837f8f.3
        for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 11:59:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762459184; x=1763063984; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=q/ctzYR0cJkPKD2JP2ySHJQqhhHfUgTf2W4E572ADBk=;
        b=JHCDdm+VaiftJZM7n18t+x4WQtVK6ko/if31MhJUeDylwpBq3XyfTR955vhW4mU6Hk
         oowLEM/QwI4pTAwBvJWOHtjZEPMf/fg/94JX37uHBexYleIyskAMfQ4yiSGf+RjGkusY
         DQNWCQ7AI8mD1M+eskUhsNkA5slt4hhOhUkg8DI0n7djSMUT+ghN5ZfNBN/7AQuZxApH
         HBhXdrArXdbhTVA6sDiA8CbF9bJiYVMqSIPwg1sgjpMM9nmycKnKdBjlAPMi0BVycqb2
         oqMEAYVfdEwKqWetEXZrJopiQnC+uQkmYICptjuVOf21gHfCBOTaPWtfgZUdGPJzk4wS
         9UjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762459184; x=1763063984;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=q/ctzYR0cJkPKD2JP2ySHJQqhhHfUgTf2W4E572ADBk=;
        b=LqJTZtqTVHZrcjqKOArLMPdEDTR5NVn3Vta280AP6b30z5+3Tpti23+oqaFeyZwCpS
         v/6/+xgMiwQ9SJ2G8e3HpagdAJs3S0UxlmdZtpPybJwyvSEd919VeK4NRUHc6NSGTXTi
         UyHiY6aINP6kztJ3DDUQnVWPjJPenTA+0h9WNzMcLRlPyrCv8kZjZhoLFGoxgo6P3R26
         VYthMwvggrz8RldmM18Z0xllN+tHBiGLMRHPtrap2hYkP6H6Hedc7x412xaYgzPFaRKl
         h3xlPBYmVXupx30RPfG5XHlUG0ym4JgoCnV+Ee3ynU60nJKy2+jqp1e5jaoBNphZxgwR
         g15w==
X-Forwarded-Encrypted: i=1; AJvYcCUDtVaL+hT48Vxn1mSgiKEV5P3+3aT2GPZukm3O/r6NB0IFXEyec2p93A/ynnXuAInnPdnk/SELgf0f@vger.kernel.org
X-Gm-Message-State: AOJu0YzS1+GLvLlh/Zzlrpt01POCMYu5Wq4g7sVg10JlkmAi4upJ4ix4
	18hqvWWBENv6F7ecpBIAXJ7KyEyYyPJt1/jTnUKjTQF6zOyzSKwD2/Gk
X-Gm-Gg: ASbGnctEvIxmSIXeBtLQeQxaKh+azgcE6Rwi15eNKrgc68HFtf9ah+CQzn2Uz/pUMgt
	M5TCrhsfP3613ssauXIgGHkwpmazmcbTjJKBMbw4UKJRwxx1jrqzHXMPd2nDbHAOX0vDgfBKvuP
	Na4KSOeUrYbhASp3tGwDcSS2mzb4IG7qyohsQ2FalWXQLvQCTgNQDHjU3NhrgG5AgXdcL4PRPIv
	DJXn4+7lwpFKsAIUpW/jLovW7iZbmyzdrRPOsKE7joDzDOh49FdTjpTgr9FDe/2VcAc66hCdTQK
	yN+SFT3gn17imuAH89/oBY/0uUqwKef/d0hFtWi2wFGKlhVpvHR1IP0Nm99TcK6ggzX8/5/gwLU
	SgW/ByPwxr0nxIW3BUIWV/dI25J4ZwzwbAXzps8DfER+lXdWl/83KrwAhrCJRBCabdBa7hIb23e
	VJtUEcCxolTMgR8g0Ozy89CT5+pfDYtw==
X-Google-Smtp-Source: AGHT+IGQDx7RvvjrjkDSZGpRYT8YPQC4M9SiZCedTbsw4bmTNh1TUkV57bJnfaRioQ2iiFwpXZh41w==
X-Received: by 2002:a05:6000:2dc3:b0:429:d3e9:667 with SMTP id ffacd0b85a97d-42ae588195emr365883f8f.18.1762459183629;
        Thu, 06 Nov 2025 11:59:43 -0800 (PST)
Received: from Ansuel-XPS24 (93-34-90-37.ip49.fastwebnet.it. [93.34.90.37])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-42abe62bfa0sm990037f8f.5.2025.11.06.11.59.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Nov 2025 11:59:42 -0800 (PST)
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
Subject: [PATCH v3 1/5] clk: en7523: convert driver to regmap API
Date: Thu,  6 Nov 2025 20:59:28 +0100
Message-ID: <20251106195935.1767696-2-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251106195935.1767696-1-ansuelsmth@gmail.com>
References: <20251106195935.1767696-1-ansuelsmth@gmail.com>
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


