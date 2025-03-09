Return-Path: <devicetree+bounces-155753-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EE27A580EF
	for <lists+devicetree@lfdr.de>; Sun,  9 Mar 2025 06:55:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E5C2F3AF5A1
	for <lists+devicetree@lfdr.de>; Sun,  9 Mar 2025 05:55:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1507515B102;
	Sun,  9 Mar 2025 05:54:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b="Ix/hadYl"
X-Original-To: devicetree@vger.kernel.org
Received: from layka.disroot.org (layka.disroot.org [178.21.23.139])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB84E83CC7;
	Sun,  9 Mar 2025 05:54:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.21.23.139
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741499699; cv=none; b=TXlk4kxYdZZuB1HBDnamtlp9/Z2bTrauATwiCASVPmglLlsJ6xequbZSn8B2B4gtUgtCecUShiQfePdDvYhqZcMRK8ZjgxXQmm+jrt6kNzH7RZBp3PPADEw/29lVIk6M961H29eFhkCnjwpNauw6UkjK0vu1HBpzgMNg8YO/RCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741499699; c=relaxed/simple;
	bh=bL/x2ys+EM9SZYaqL9CiNuhB4mRB/IyUdJVwcVX0rig=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=F3iGj6+obXW2mVuLLirPqfVDQfIm47P9TIF/EmUL+lyKXpREvtYoS8xihcde0LqLWUn2rYPIOxAQy5XRG9nIgv9aARmWAnEasc3IwHUVyeQErHHdQDGAulArL3aeg9N30/W2oDO0RYUTGXSYhnojk0BYbvUronIGWFWdu758qCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org; spf=pass smtp.mailfrom=disroot.org; dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b=Ix/hadYl; arc=none smtp.client-ip=178.21.23.139
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=disroot.org
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 4EF6325DB4;
	Sun,  9 Mar 2025 06:54:55 +0100 (CET)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id d0CfSGvB03gT; Sun,  9 Mar 2025 06:54:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1741499694; bh=bL/x2ys+EM9SZYaqL9CiNuhB4mRB/IyUdJVwcVX0rig=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=Ix/hadYlG9xn3S8jZCWOG6CCYQMUnJWWvSM1h+DYt9UlRnNQGQeXCWU4gh+MC3XTC
	 ajzFcYbYkjt9ILxaDZOrLIWhkggcHTYVY7m6U4rKUnviwxwoG067miUlMuC6BX9NsV
	 p9WF3PSdYRk1OZYhpUakKqOitHiNAaqiyoXB0oAIuETXmqltDApsT1yW1XvqOq0Pbo
	 tzu5Qkr6tgxXo/RlWCqMYXechHsqipHm/FS4t2WesJA//1XNdg3nhBChfi8iOd5eHW
	 2mqio5cYp6KDhhS6dxN12RZvUmRAwgkUbMxcM4jm5RLAKfAuR2Td71Lj8hmEVgcwZ5
	 /mmKjZ8KMnGEA==
From: Yao Zi <ziyao@disroot.org>
To: Ulf Hansson <ulf.hansson@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Shresth Prasad <shresthprasad7@gmail.com>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Chukun Pan <amadeus@jmu.edu.cn>
Cc: linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	Yao Zi <ziyao@disroot.org>
Subject: [PATCH v3 3/6] clk: rockchip: Support MMC clocks in GRF region
Date: Sun,  9 Mar 2025 05:53:45 +0000
Message-ID: <20250309055348.9299-4-ziyao@disroot.org>
In-Reply-To: <20250309055348.9299-1-ziyao@disroot.org>
References: <20250309055348.9299-1-ziyao@disroot.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Registers of MMC drive/sample clocks in Rockchip RV1106 and RK3528
locate in GRF regions. Adjust MMC clock code to support register
operations through regmap. Also add a helper to ease registration of GRF
clocks.

Signed-off-by: Yao Zi <ziyao@disroot.org>
---
 drivers/clk/rockchip/clk-mmc-phase.c | 24 +++++++++++++---
 drivers/clk/rockchip/clk.c           | 42 ++++++++++++++++++++++++++++
 drivers/clk/rockchip/clk.h           | 20 ++++++++++++-
 3 files changed, 81 insertions(+), 5 deletions(-)

diff --git a/drivers/clk/rockchip/clk-mmc-phase.c b/drivers/clk/rockchip/clk-mmc-phase.c
index 91012078681b..b3ed8e7523e5 100644
--- a/drivers/clk/rockchip/clk-mmc-phase.c
+++ b/drivers/clk/rockchip/clk-mmc-phase.c
@@ -9,11 +9,14 @@
 #include <linux/clk-provider.h>
 #include <linux/io.h>
 #include <linux/kernel.h>
+#include <linux/regmap.h>
 #include "clk.h"
 
 struct rockchip_mmc_clock {
 	struct clk_hw	hw;
 	void __iomem	*reg;
+	struct regmap	*grf;
+	int		grf_reg;
 	int		shift;
 	int		cached_phase;
 	struct notifier_block clk_rate_change_nb;
@@ -54,7 +57,12 @@ static int rockchip_mmc_get_phase(struct clk_hw *hw)
 	if (!rate)
 		return 0;
 
-	raw_value = readl(mmc_clock->reg) >> (mmc_clock->shift);
+	if (mmc_clock->grf)
+		regmap_read(mmc_clock->grf, mmc_clock->grf_reg, &raw_value);
+	else
+		raw_value = readl(mmc_clock->reg);
+
+	raw_value >>= mmc_clock->shift;
 
 	degrees = (raw_value & ROCKCHIP_MMC_DEGREE_MASK) * 90;
 
@@ -134,8 +142,12 @@ static int rockchip_mmc_set_phase(struct clk_hw *hw, int degrees)
 	raw_value = delay_num ? ROCKCHIP_MMC_DELAY_SEL : 0;
 	raw_value |= delay_num << ROCKCHIP_MMC_DELAYNUM_OFFSET;
 	raw_value |= nineties;
-	writel(HIWORD_UPDATE(raw_value, 0x07ff, mmc_clock->shift),
-	       mmc_clock->reg);
+	raw_value = HIWORD_UPDATE(raw_value, 0x07ff, mmc_clock->shift);
+
+	if (mmc_clock->grf)
+		regmap_write(mmc_clock->grf, mmc_clock->grf_reg, raw_value);
+	else
+		writel(raw_value, mmc_clock->reg);
 
 	pr_debug("%s->set_phase(%d) delay_nums=%u reg[0x%p]=0x%03x actual_degrees=%d\n",
 		clk_hw_get_name(hw), degrees, delay_num,
@@ -189,7 +201,9 @@ static int rockchip_mmc_clk_rate_notify(struct notifier_block *nb,
 
 struct clk *rockchip_clk_register_mmc(const char *name,
 				const char *const *parent_names, u8 num_parents,
-				void __iomem *reg, int shift)
+				void __iomem *reg,
+				struct regmap *grf, int grf_reg,
+				int shift)
 {
 	struct clk_init_data init;
 	struct rockchip_mmc_clock *mmc_clock;
@@ -208,6 +222,8 @@ struct clk *rockchip_clk_register_mmc(const char *name,
 
 	mmc_clock->hw.init = &init;
 	mmc_clock->reg = reg;
+	mmc_clock->grf = grf;
+	mmc_clock->grf_reg = grf_reg;
 	mmc_clock->shift = shift;
 
 	clk = clk_register(NULL, &mmc_clock->hw);
diff --git a/drivers/clk/rockchip/clk.c b/drivers/clk/rockchip/clk.c
index cbf93ea119a9..ce2f3323d84e 100644
--- a/drivers/clk/rockchip/clk.c
+++ b/drivers/clk/rockchip/clk.c
@@ -590,6 +590,7 @@ void rockchip_clk_register_branches(struct rockchip_clk_provider *ctx,
 				list->name,
 				list->parent_names, list->num_parents,
 				ctx->reg_base + list->muxdiv_offset,
+				NULL, 0,
 				list->div_shift
 			);
 			break;
@@ -619,6 +620,11 @@ void rockchip_clk_register_branches(struct rockchip_clk_provider *ctx,
 			break;
 		case branch_linked_gate:
 			/* must be registered late, fall-through for error message */
+		case branch_mmc_grf:
+			/*
+			 * must be registered through rockchip_clk_register_grf_branches,
+			 * fall-through for error message
+			 */
 			break;
 		}
 
@@ -665,6 +671,42 @@ void rockchip_clk_register_late_branches(struct device *dev,
 }
 EXPORT_SYMBOL_GPL(rockchip_clk_register_late_branches);
 
+void rockchip_clk_register_grf_branches(struct rockchip_clk_provider *ctx,
+					struct rockchip_clk_branch *list,
+					struct regmap *grf,
+					unsigned int nr_clk)
+{
+	unsigned int idx;
+	struct clk *clk;
+
+	for (idx = 0; idx < nr_clk; idx++, list++) {
+		clk = NULL;
+
+		switch (list->branch_type) {
+		case branch_mmc_grf:
+			clk = rockchip_clk_register_mmc(
+				list->name,
+				list->parent_names, list->num_parents,
+				NULL,
+				grf, list->muxdiv_offset,
+				list->div_shift
+			);
+			break;
+		default:
+			pr_err("%s: unknown clock type %d\n",
+			       __func__, list->branch_type);
+			break;
+		}
+
+		if (!clk)
+			pr_err("%s: failed to register clock %s: %ld\n",
+			       __func__, list->name, PTR_ERR(clk));
+		else
+			rockchip_clk_set_lookup(ctx, clk, list->id);
+	}
+}
+EXPORT_SYMBOL_GPL(rockchip_clk_register_grf_branches);
+
 void rockchip_clk_register_armclk(struct rockchip_clk_provider *ctx,
 				  unsigned int lookup_id,
 				  const char *name, const char *const *parent_names,
diff --git a/drivers/clk/rockchip/clk.h b/drivers/clk/rockchip/clk.h
index df2b2d706450..ec86ba1dd38c 100644
--- a/drivers/clk/rockchip/clk.h
+++ b/drivers/clk/rockchip/clk.h
@@ -594,7 +594,9 @@ struct clk *rockchip_clk_register_cpuclk(const char *name,
 
 struct clk *rockchip_clk_register_mmc(const char *name,
 				const char *const *parent_names, u8 num_parents,
-				void __iomem *reg, int shift);
+				void __iomem *reg,
+				struct regmap *grf, int grf_reg,
+				int shift);
 
 /*
  * DDRCLK flags, including method of setting the rate
@@ -633,6 +635,7 @@ enum rockchip_clk_branch_type {
 	branch_gate,
 	branch_linked_gate,
 	branch_mmc,
+	branch_mmc_grf,
 	branch_inverter,
 	branch_factor,
 	branch_ddrclk,
@@ -983,6 +986,17 @@ struct rockchip_clk_branch {
 		.div_shift	= shift,			\
 	}
 
+#define MMC_GRF(_id, cname, pname, offset, shift)		\
+	{							\
+		.id		= _id,				\
+		.branch_type	= branch_mmc_grf,		\
+		.name		= cname,			\
+		.parent_names	= (const char *[]){ pname },	\
+		.num_parents	= 1,				\
+		.muxdiv_offset	= offset,			\
+		.div_shift	= shift,			\
+	}
+
 #define INVERTER(_id, cname, pname, io, is, if)			\
 	{							\
 		.id		= _id,				\
@@ -1132,6 +1146,10 @@ void rockchip_clk_register_late_branches(struct device *dev,
 					 struct rockchip_clk_provider *ctx,
 					 struct rockchip_clk_branch *list,
 					 unsigned int nr_clk);
+void rockchip_clk_register_grf_branches(struct rockchip_clk_provider *ctx,
+					struct rockchip_clk_branch *list,
+					struct regmap *grf,
+					unsigned int nr_clk);
 void rockchip_clk_register_plls(struct rockchip_clk_provider *ctx,
 				struct rockchip_pll_clock *pll_list,
 				unsigned int nr_pll, int grf_lock_offset);
-- 
2.48.1


