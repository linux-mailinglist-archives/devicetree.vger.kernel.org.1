Return-Path: <devicetree+bounces-106851-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C9CBD98C042
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2024 16:39:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7E7F5283A6A
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2024 14:39:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5222F1C8FCF;
	Tue,  1 Oct 2024 14:39:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rns/Cat+"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19A6D1C8FB2;
	Tue,  1 Oct 2024 14:39:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727793568; cv=none; b=aTbPyQV3NvqoPkAxc3JCuWyLj/dh2ZpL8L3VugMP3px2XxDeTJPuq5bN3IS/3O+GYyPXYXJs9IWty79eveFsyL3VDkMI9Yvj1b19MK+WKExehj/ab7Wv8IRTfyFTv2J7AdQi8imsZzxVjZBaP63chZE2h5BM7pDw16AySmRhSvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727793568; c=relaxed/simple;
	bh=j7cEcKzext16oP7OAxC9breMWXfoaROVojla+gdYgKc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JBKUuCgN8KOWUsgDDg1e7C2dGV+nBpIP3N7ylmmNe0aKUXf6VMQ2Tooef/nyGs5gfZTHcaJAVin8EUuvUIIsTgcWMdbbr1IDZAFmzS/Gz3q9kt6MsxmxgWluIaVdgd/OFzgNKMevDn96TiqL+JSXTpPQWcfRFCEYHlZ4645d3Ek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rns/Cat+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5BACC4CEC7;
	Tue,  1 Oct 2024 14:39:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727793567;
	bh=j7cEcKzext16oP7OAxC9breMWXfoaROVojla+gdYgKc=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=Rns/Cat+AEOQeI7jP+6zWAml/O1enmAsX7qaQrxXji7zas0R8q7Hhrs/pGvR7v1yf
	 uApP6dMeVZcOgDWUazNZCKswuk6WpEiKN5CPHUrOpQg0nbGoO0LJg+68vSKg0/cPjT
	 dwYA6oB8d0OJ4nhdXmFRFAHCeA74tpIdNQMj3Ku4saVSj1kcAPLS8uKAjKo4BBex2J
	 F+fca2XkzWmz+WlLh6mnPTXuWMWdUFS5xdcLLPdYXikXRQYAaw5qV91Y8h2kzyd2oc
	 Qmapj1u/oqhPPAIRuszs98lKW4dceyLiJ83TqFzMkSUkub97bhRGZko9kUbf3SNJ6X
	 DBji+piSiWtBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C453ACEACD0;
	Tue,  1 Oct 2024 14:39:27 +0000 (UTC)
From: =?utf-8?q?Duje_Mihanovi=C4=87_via_B4_Relay?= <devnull+duje.mihanovic.skole.hr@kernel.org>
Date: Tue, 01 Oct 2024 16:37:31 +0200
Subject: [PATCH v13 01/12] clk: mmp: Switch to use struct u32_fract instead
 of custom one
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20241001-pxa1908-lkml-v13-1-6b9a7f64f9ae@skole.hr>
References: <20241001-pxa1908-lkml-v13-0-6b9a7f64f9ae@skole.hr>
In-Reply-To: <20241001-pxa1908-lkml-v13-0-6b9a7f64f9ae@skole.hr>
To: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
 Rob Herring <robh+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
 Tony Lindgren <tony@atomide.com>, 
 Haojian Zhuang <haojian.zhuang@linaro.org>, 
 =?utf-8?q?Duje_Mihanovi=C4=87?= <duje.mihanovic@skole.hr>, 
 Lubomir Rintel <lkundrak@v3.sk>, Catalin Marinas <catalin.marinas@arm.com>, 
 Will Deacon <will@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
 Karel Balej <balejk@matfyz.cz>, David Wronek <david@mainlining.org>, 
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, 
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=10838;
 i=duje.mihanovic@skole.hr; s=20240706; h=from:subject:message-id;
 bh=aUPxtF04qTKpLPEJgHiKaCixpSaCfAFycFxZA5nFzBw=;
 b=owGbwMvMwCW21nBykGv/WmbG02pJDGl/OCeV5Ly+/fDZncaCu7/kA27Zek551tboHX3A7cR7a
 TGugoqOjlIWBjEuBlkxRZbc/47XeD+LbN2evcwAZg4rE8gQBi5OAZiIpxojw1k+gV9P2VYlme4/
 bHAi8/u7J+vVZttZxgkd/MMj5jDd9SbDP8PIyK9/tnHt0rt3u61jjt+yn1v/zk/XOCznmbVOfZV
 zFhMA
X-Developer-Key: i=duje.mihanovic@skole.hr; a=openpgp;
 fpr=6DFF41D60DF314B5B76BA630AD319352458FAD03
X-Endpoint-Received: by B4 Relay for duje.mihanovic@skole.hr/20240706 with
 auth_id=191
X-Original-From: =?utf-8?q?Duje_Mihanovi=C4=87?= <duje.mihanovic@skole.hr>
Reply-To: duje.mihanovic@skole.hr

From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>

The struct mmp_clk_factor_tbl repeats the generic struct u32_fract.
Kill the custom one and use the generic one instead.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Tested-by: Duje Mihanović <duje.mihanovic@skole.hr>
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
Reviewed-by: Stephen Boyd <sboyd@kernel.org>
Signed-off-by: Duje Mihanović <duje.mihanovic@skole.hr>
---
 drivers/clk/mmp/clk-frac.c       | 57 ++++++++++++++++++++--------------------
 drivers/clk/mmp/clk-of-mmp2.c    | 26 +++++++++---------
 drivers/clk/mmp/clk-of-pxa168.c  |  4 +--
 drivers/clk/mmp/clk-of-pxa1928.c |  6 ++---
 drivers/clk/mmp/clk-of-pxa910.c  |  4 +--
 drivers/clk/mmp/clk.h            | 10 +++----
 6 files changed, 51 insertions(+), 56 deletions(-)

diff --git a/drivers/clk/mmp/clk-frac.c b/drivers/clk/mmp/clk-frac.c
index 1b90867b60c4b5b2582cc92b0050221330a3c003..6556f6ada2e830178b9525462f684bad683db454 100644
--- a/drivers/clk/mmp/clk-frac.c
+++ b/drivers/clk/mmp/clk-frac.c
@@ -26,14 +26,15 @@ static long clk_factor_round_rate(struct clk_hw *hw, unsigned long drate,
 {
 	struct mmp_clk_factor *factor = to_clk_factor(hw);
 	u64 rate = 0, prev_rate;
+	struct u32_fract *d;
 	int i;
 
 	for (i = 0; i < factor->ftbl_cnt; i++) {
-		prev_rate = rate;
-		rate = *prate;
-		rate *= factor->ftbl[i].den;
-		do_div(rate, factor->ftbl[i].num * factor->masks->factor);
+		d = &factor->ftbl[i];
 
+		prev_rate = rate;
+		rate = (u64)(*prate) * d->denominator;
+		do_div(rate, d->numerator * factor->masks->factor);
 		if (rate > drate)
 			break;
 	}
@@ -52,23 +53,22 @@ static unsigned long clk_factor_recalc_rate(struct clk_hw *hw,
 {
 	struct mmp_clk_factor *factor = to_clk_factor(hw);
 	struct mmp_clk_factor_masks *masks = factor->masks;
-	unsigned int val, num, den;
+	struct u32_fract d;
+	unsigned int val;
 	u64 rate;
 
 	val = readl_relaxed(factor->base);
 
 	/* calculate numerator */
-	num = (val >> masks->num_shift) & masks->num_mask;
+	d.numerator = (val >> masks->num_shift) & masks->num_mask;
 
 	/* calculate denominator */
-	den = (val >> masks->den_shift) & masks->den_mask;
-
-	if (!den)
+	d.denominator = (val >> masks->den_shift) & masks->den_mask;
+	if (!d.denominator)
 		return 0;
 
-	rate = parent_rate;
-	rate *= den;
-	do_div(rate, num * factor->masks->factor);
+	rate = (u64)parent_rate * d.denominator;
+	do_div(rate, d.numerator * factor->masks->factor);
 
 	return rate;
 }
@@ -82,18 +82,18 @@ static int clk_factor_set_rate(struct clk_hw *hw, unsigned long drate,
 	int i;
 	unsigned long val;
 	unsigned long flags = 0;
+	struct u32_fract *d;
 	u64 rate = 0;
 
 	for (i = 0; i < factor->ftbl_cnt; i++) {
-		rate = prate;
-		rate *= factor->ftbl[i].den;
-		do_div(rate, factor->ftbl[i].num * factor->masks->factor);
+		d = &factor->ftbl[i];
 
+		rate = (u64)prate * d->denominator;
+		do_div(rate, d->numerator * factor->masks->factor);
 		if (rate > drate)
 			break;
 	}
-	if (i > 0)
-		i--;
+	d = i ? &factor->ftbl[i - 1] : &factor->ftbl[0];
 
 	if (factor->lock)
 		spin_lock_irqsave(factor->lock, flags);
@@ -101,10 +101,10 @@ static int clk_factor_set_rate(struct clk_hw *hw, unsigned long drate,
 	val = readl_relaxed(factor->base);
 
 	val &= ~(masks->num_mask << masks->num_shift);
-	val |= (factor->ftbl[i].num & masks->num_mask) << masks->num_shift;
+	val |= (d->numerator & masks->num_mask) << masks->num_shift;
 
 	val &= ~(masks->den_mask << masks->den_shift);
-	val |= (factor->ftbl[i].den & masks->den_mask) << masks->den_shift;
+	val |= (d->denominator & masks->den_mask) << masks->den_shift;
 
 	writel_relaxed(val, factor->base);
 
@@ -118,7 +118,8 @@ static int clk_factor_init(struct clk_hw *hw)
 {
 	struct mmp_clk_factor *factor = to_clk_factor(hw);
 	struct mmp_clk_factor_masks *masks = factor->masks;
-	u32 val, num, den;
+	struct u32_fract d;
+	u32 val;
 	int i;
 	unsigned long flags = 0;
 
@@ -128,23 +129,22 @@ static int clk_factor_init(struct clk_hw *hw)
 	val = readl(factor->base);
 
 	/* calculate numerator */
-	num = (val >> masks->num_shift) & masks->num_mask;
+	d.numerator = (val >> masks->num_shift) & masks->num_mask;
 
 	/* calculate denominator */
-	den = (val >> masks->den_shift) & masks->den_mask;
+	d.denominator = (val >> masks->den_shift) & masks->den_mask;
 
 	for (i = 0; i < factor->ftbl_cnt; i++)
-		if (den == factor->ftbl[i].den && num == factor->ftbl[i].num)
+		if (d.denominator == factor->ftbl[i].denominator &&
+		    d.numerator == factor->ftbl[i].numerator)
 			break;
 
 	if (i >= factor->ftbl_cnt) {
 		val &= ~(masks->num_mask << masks->num_shift);
-		val |= (factor->ftbl[0].num & masks->num_mask) <<
-			masks->num_shift;
+		val |= (factor->ftbl[0].numerator & masks->num_mask) << masks->num_shift;
 
 		val &= ~(masks->den_mask << masks->den_shift);
-		val |= (factor->ftbl[0].den & masks->den_mask) <<
-			masks->den_shift;
+		val |= (factor->ftbl[0].denominator & masks->den_mask) << masks->den_shift;
 	}
 
 	if (!(val & masks->enable_mask) || i >= factor->ftbl_cnt) {
@@ -168,8 +168,7 @@ static const struct clk_ops clk_factor_ops = {
 struct clk *mmp_clk_register_factor(const char *name, const char *parent_name,
 		unsigned long flags, void __iomem *base,
 		struct mmp_clk_factor_masks *masks,
-		struct mmp_clk_factor_tbl *ftbl,
-		unsigned int ftbl_cnt, spinlock_t *lock)
+		struct u32_fract *ftbl, unsigned int ftbl_cnt, spinlock_t *lock)
 {
 	struct mmp_clk_factor *factor;
 	struct clk_init_data init;
diff --git a/drivers/clk/mmp/clk-of-mmp2.c b/drivers/clk/mmp/clk-of-mmp2.c
index eaad36ee323d14ff3d0f61c917d57d1501359db1..a4f15cee630ee65bcedba3975cf337ff765d3b2d 100644
--- a/drivers/clk/mmp/clk-of-mmp2.c
+++ b/drivers/clk/mmp/clk-of-mmp2.c
@@ -143,9 +143,9 @@ static struct mmp_clk_factor_masks uart_factor_masks = {
 	.den_shift = 0,
 };
 
-static struct mmp_clk_factor_tbl uart_factor_tbl[] = {
-	{.num = 8125, .den = 1536},	/*14.745MHZ */
-	{.num = 3521, .den = 689},	/*19.23MHZ */
+static struct u32_fract uart_factor_tbl[] = {
+	{ .numerator = 8125, .denominator = 1536 },	/* 14.745MHZ */
+	{ .numerator = 3521, .denominator =  689 },	/* 19.23MHZ */
 };
 
 static struct mmp_clk_factor_masks i2s_factor_masks = {
@@ -157,16 +157,16 @@ static struct mmp_clk_factor_masks i2s_factor_masks = {
 	.enable_mask = 0xd0000000,
 };
 
-static struct mmp_clk_factor_tbl i2s_factor_tbl[] = {
-	{.num = 24868, .den =  511},	/*  2.0480 MHz */
-	{.num = 28003, .den =  793},	/*  2.8224 MHz */
-	{.num = 24941, .den = 1025},	/*  4.0960 MHz */
-	{.num = 28003, .den = 1586},	/*  5.6448 MHz */
-	{.num = 31158, .den = 2561},	/*  8.1920 MHz */
-	{.num = 16288, .den = 1845},	/* 11.2896 MHz */
-	{.num = 20772, .den = 2561},	/* 12.2880 MHz */
-	{.num =  8144, .den = 1845},	/* 22.5792 MHz */
-	{.num = 10386, .den = 2561},	/* 24.5760 MHz */
+static struct u32_fract i2s_factor_tbl[] = {
+	{ .numerator = 24868, .denominator =  511 },	/*  2.0480 MHz */
+	{ .numerator = 28003, .denominator =  793 },	/*  2.8224 MHz */
+	{ .numerator = 24941, .denominator = 1025 },	/*  4.0960 MHz */
+	{ .numerator = 28003, .denominator = 1586 },	/*  5.6448 MHz */
+	{ .numerator = 31158, .denominator = 2561 },	/*  8.1920 MHz */
+	{ .numerator = 16288, .denominator = 1845 },	/* 11.2896 MHz */
+	{ .numerator = 20772, .denominator = 2561 },	/* 12.2880 MHz */
+	{ .numerator =  8144, .denominator = 1845 },	/* 22.5792 MHz */
+	{ .numerator = 10386, .denominator = 2561 },	/* 24.5760 MHz */
 };
 
 static DEFINE_SPINLOCK(acgr_lock);
diff --git a/drivers/clk/mmp/clk-of-pxa168.c b/drivers/clk/mmp/clk-of-pxa168.c
index c5a7ba1deaa3a1d42cd85cf462b7eed79c5d9ba1..5f250427e60d25b24208d02322a441d86faf346b 100644
--- a/drivers/clk/mmp/clk-of-pxa168.c
+++ b/drivers/clk/mmp/clk-of-pxa168.c
@@ -106,8 +106,8 @@ static struct mmp_clk_factor_masks uart_factor_masks = {
 	.den_shift = 0,
 };
 
-static struct mmp_clk_factor_tbl uart_factor_tbl[] = {
-	{.num = 8125, .den = 1536},	/*14.745MHZ */
+static struct u32_fract uart_factor_tbl[] = {
+	{ .numerator = 8125, .denominator = 1536 },	/* 14.745MHZ */
 };
 
 static void pxa168_pll_init(struct pxa168_clk_unit *pxa_unit)
diff --git a/drivers/clk/mmp/clk-of-pxa1928.c b/drivers/clk/mmp/clk-of-pxa1928.c
index 9def4b5f10e910b18065647dcde2a44c43b8185d..ebb6e278eda33c551abce893051bf52e97f898c4 100644
--- a/drivers/clk/mmp/clk-of-pxa1928.c
+++ b/drivers/clk/mmp/clk-of-pxa1928.c
@@ -61,9 +61,9 @@ static struct mmp_clk_factor_masks uart_factor_masks = {
 	.den_shift = 0,
 };
 
-static struct mmp_clk_factor_tbl uart_factor_tbl[] = {
-	{.num = 832, .den = 234},	/*58.5MHZ */
-	{.num = 1, .den = 1},		/*26MHZ */
+static struct u32_fract uart_factor_tbl[] = {
+	{ .numerator = 832, .denominator = 234 },	/* 58.5MHZ */
+	{ .numerator =   1, .denominator =   1 },	/* 26MHZ */
 };
 
 static void pxa1928_pll_init(struct pxa1928_clk_unit *pxa_unit)
diff --git a/drivers/clk/mmp/clk-of-pxa910.c b/drivers/clk/mmp/clk-of-pxa910.c
index 7a38c424782e619347c44b75edb1938cb7a27dc9..fe65e7bdb411fe9be93e8dd5d571e1c62b12909f 100644
--- a/drivers/clk/mmp/clk-of-pxa910.c
+++ b/drivers/clk/mmp/clk-of-pxa910.c
@@ -86,8 +86,8 @@ static struct mmp_clk_factor_masks uart_factor_masks = {
 	.den_shift = 0,
 };
 
-static struct mmp_clk_factor_tbl uart_factor_tbl[] = {
-	{.num = 8125, .den = 1536},	/*14.745MHZ */
+static struct u32_fract uart_factor_tbl[] = {
+	{ .numerator = 8125, .denominator = 1536 },	/* 14.745MHZ */
 };
 
 static void pxa910_pll_init(struct pxa910_clk_unit *pxa_unit)
diff --git a/drivers/clk/mmp/clk.h b/drivers/clk/mmp/clk.h
index 55ac053797819e791d62e5f950779c56a957c994..c83cec169ddc5e3fcd0561cf857f248178c25b68 100644
--- a/drivers/clk/mmp/clk.h
+++ b/drivers/clk/mmp/clk.h
@@ -3,6 +3,7 @@
 #define __MACH_MMP_CLK_H
 
 #include <linux/clk-provider.h>
+#include <linux/math.h>
 #include <linux/pm_domain.h>
 #include <linux/clkdev.h>
 
@@ -20,16 +21,11 @@ struct mmp_clk_factor_masks {
 	unsigned int enable_mask;
 };
 
-struct mmp_clk_factor_tbl {
-	unsigned int num;
-	unsigned int den;
-};
-
 struct mmp_clk_factor {
 	struct clk_hw hw;
 	void __iomem *base;
 	struct mmp_clk_factor_masks *masks;
-	struct mmp_clk_factor_tbl *ftbl;
+	struct u32_fract *ftbl;
 	unsigned int ftbl_cnt;
 	spinlock_t *lock;
 };
@@ -37,7 +33,7 @@ struct mmp_clk_factor {
 extern struct clk *mmp_clk_register_factor(const char *name,
 		const char *parent_name, unsigned long flags,
 		void __iomem *base, struct mmp_clk_factor_masks *masks,
-		struct mmp_clk_factor_tbl *ftbl, unsigned int ftbl_cnt,
+		struct u32_fract *ftbl, unsigned int ftbl_cnt,
 		spinlock_t *lock);
 
 /* Clock type "mix" */

-- 
2.46.2



