Return-Path: <devicetree+bounces-42807-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 10BA18588B8
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 23:35:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6E1D028C7F7
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 22:35:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 030D414D43A;
	Fri, 16 Feb 2024 22:33:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Wpy7kjH/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f53.google.com (mail-oo1-f53.google.com [209.85.161.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5C814A4ED
	for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 22:32:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708122779; cv=none; b=iryU40QhQAF/L5HrjS91WMNgArZgXr7BIV1j7i4OOJGJp8/fEIFonRgg1nlKko5YgvHjQ2/Pj/jcDoPYpE4vv4b3OTj54/4RiPylnNNoOh4X43PYWOaJS+Unf4qWXX7VHZn0gjPUhbw5V+WqNeVDAbWWmf8dS1xPaINxGOZCkVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708122779; c=relaxed/simple;
	bh=HSDrJSYA9UicU4PhhgP/G+lgI6M7sywpuh3/28TzU6M=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=tau/hCRGugKwrNUsgXoR52UudvCkzUBoRFruzq5tjvGjBFxQAL0caY4ZjmUef6+7of+E85COcODanQ7p81IN9wz5kMyU5HrPGQ1IAMesw1IAvbwCZ9LtjMgvKcbf06DhCeYviuUCRLiU/G3K5hGOY1WvJF+q+hOvx7hcdF5SVOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Wpy7kjH/; arc=none smtp.client-ip=209.85.161.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oo1-f53.google.com with SMTP id 006d021491bc7-58e256505f7so952604eaf.3
        for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 14:32:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708122775; x=1708727575; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c94BuyoqMGlHD4ivYp1JoiKocO9tlaf5ysz98lqNzSQ=;
        b=Wpy7kjH/C95Wx3mIRAoFjMjl+g0d4AkwioWF7PmkheSmQpIDsZSmo6wwsBl+5CqWx4
         qDHZ01wYm44cwY2uethVq7UzvZgTni0itvy19jePDL/OFV7OSSnARScyjdnEMpW+J/43
         8pDoYb2C6sqqUNkjrXF92YU3wNhmG37ueug6M/ZfTRZopRJiBgNJtfT8cjd7UDeFQAWf
         XIW1mp+llnotJBDlX5Hry7Y3ZRjtftBPrxFgpG4vfGWgkhvfZoC1zUbfZZihl903LzTk
         aOAGSC/8bOsqo4QbpwiAJglBdaQEd7BP7pgO5vgxnLaNl7s+BDBpi84bsWx/5LfOsxlC
         lXmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708122775; x=1708727575;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=c94BuyoqMGlHD4ivYp1JoiKocO9tlaf5ysz98lqNzSQ=;
        b=arsYXrx2EWdiTUso2o0vKED0hZE0fSfUqdYy5FTSpM+iQfsz5ar2MKCSPPAJulcu8F
         uij++fzftJ+WKW2nlizebnXlF4m9LQkjWLy4VpP0Z8/Rnxa1YxSqJ1jfLusvKi8sYr7/
         GthVu0M4zvoCj4WXYP/UCZZPYMT/UB/YwrTV1nnB5uQSGoVzboaGFfSKVFSHveMqCELf
         SpdUn2DH5VLmlXtLrHSp+o1zFQTZJ+v/IoAhR3zCMJWsoZsv9PTo7a1KH0kq8vM+Fbfi
         qf84Mc3rxVGprBTpiTIu1PbmGJCCenolF7ujpryfYMCyD1bZ1c4x5kiH32MRfG7abSMo
         7f6Q==
X-Forwarded-Encrypted: i=1; AJvYcCU1NJwOxQBlxAYGZF4hIm5goOPNw1SjIW+sAd+NvDDJrngKxqh1tEL8uF1JZIw8WEpJmMqQxhQHPzPpnwNikqA7NM+uYhEUffIJzQ==
X-Gm-Message-State: AOJu0Yy7gqKBbIhWRsk3uNiqXRwSD68AVDFmY+tz9Nz6fGmHy6MpEMvs
	1izDgUQYE3EsoBjnml46NTcNryZnRTALKynxOjQf8+HRLy9DXNr6HcnAd65hVMlbj/MnRC2CSdA
	+
X-Google-Smtp-Source: AGHT+IGpG5Zr7RRj9Q5z4EOGLsc5tLSx6UE2UjpTf+AkayV+GSxSSHg8HfRD0r+I4im2w2qJoYHKXg==
X-Received: by 2002:a4a:6245:0:b0:59c:8922:65d2 with SMTP id y5-20020a4a6245000000b0059c892265d2mr6846630oog.5.1708122775108;
        Fri, 16 Feb 2024 14:32:55 -0800 (PST)
Received: from localhost ([136.62.192.75])
        by smtp.gmail.com with ESMTPSA id i2-20020a056830010200b006e2f33453f8sm140062otp.9.2024.02.16.14.32.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Feb 2024 14:32:54 -0800 (PST)
From: Sam Protsenko <semen.protsenko@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Chanwoo Choi <cw00.choi@samsung.com>
Cc: Alim Akhtar <alim.akhtar@samsung.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Tomasz Figa <tomasz.figa@gmail.com>,
	linux-samsung-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 11/16] clk: samsung: Keep register offsets in chip specific structure
Date: Fri, 16 Feb 2024 16:32:40 -0600
Message-Id: <20240216223245.12273-12-semen.protsenko@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240216223245.12273-1-semen.protsenko@linaro.org>
References: <20240216223245.12273-1-semen.protsenko@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Abstract CPU clock registers by keeping their offsets in a dedicated
chip specific structure to accommodate for oncoming Exynos850 support,
which has different offsets for cluster 0 and cluster 1. This rework
also makes it possible to use exynos_set_safe_div() for all chips, so
exynos5433_set_safe_div() is removed here to reduce the code
duplication.

No functional change.

Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
---
 drivers/clk/samsung/clk-cpu.c | 156 +++++++++++++++++++---------------
 1 file changed, 86 insertions(+), 70 deletions(-)

diff --git a/drivers/clk/samsung/clk-cpu.c b/drivers/clk/samsung/clk-cpu.c
index 04394d2166c9..744b609c222d 100644
--- a/drivers/clk/samsung/clk-cpu.c
+++ b/drivers/clk/samsung/clk-cpu.c
@@ -44,12 +44,14 @@ typedef int (*exynos_rate_change_fn_t)(struct clk_notifier_data *ndata,
 
 /**
  * struct exynos_cpuclk_chip - Chip specific data for CPU clock
+ * @regs: register offsets for CPU related clocks
  * @pre_rate_cb: callback to run before CPU clock rate change
  * @post_rate_cb: callback to run after CPU clock rate change
  */
 struct exynos_cpuclk_chip {
-	exynos_rate_change_fn_t	pre_rate_cb;
-	exynos_rate_change_fn_t	post_rate_cb;
+	const void				* const regs;
+	exynos_rate_change_fn_t			pre_rate_cb;
+	exynos_rate_change_fn_t			post_rate_cb;
 };
 
 /**
@@ -90,6 +92,24 @@ struct exynos_cpuclk {
 #define DIV_MASK_ALL		GENMASK(31, 0)
 #define MUX_MASK		GENMASK(2, 0)
 
+/**
+ * struct exynos_cpuclk_regs - Register offsets for CPU related clocks
+ * @mux_sel: offset of CPU MUX_SEL register (for selecting MUX clock parent)
+ * @mux_stat: offset of CPU MUX_STAT register (for checking MUX clock status)
+ * @div_cpu0: offset of CPU DIV0 register (for modifying divider values)
+ * @div_cpu1: offset of CPU DIV1 register (for modifying divider values)
+ * @div_stat_cpu0: offset of CPU DIV0_STAT register (for checking DIV status)
+ * @div_stat_cpu1: offset of CPU DIV1_STAT register (for checking DIV status)
+ */
+struct exynos_cpuclk_regs {
+	u32 mux_sel;
+	u32 mux_stat;
+	u32 div_cpu0;
+	u32 div_cpu1;
+	u32 div_stat_cpu0;
+	u32 div_stat_cpu1;
+};
+
 /*
  * Helper function to wait until divider(s) have stabilized after the divider
  * value has changed.
@@ -129,43 +149,48 @@ static void wait_until_mux_stable(void __iomem *mux_reg, u32 mux_pos,
 	pr_err("%s: re-parenting mux timed-out\n", __func__);
 }
 
-/* ---- Exynos 3/4/5 -------------------------------------------------------- */
-
-#define E4210_SRC_CPU		0x200
-#define E4210_STAT_CPU		0x400
-#define E4210_DIV_CPU0		0x500
-#define E4210_DIV_CPU1		0x504
-#define E4210_DIV_STAT_CPU0	0x600
-#define E4210_DIV_STAT_CPU1	0x604
-
-#define E4210_DIV0_RATIO0_MASK	GENMASK(2, 0)
-#define E4210_DIV1_HPM_MASK	GENMASK(6, 4)
-#define E4210_DIV1_COPY_MASK	GENMASK(2, 0)
-#define E4210_MUX_HPM_MASK	BIT(20)
-#define E4210_DIV0_ATB_SHIFT	16
-#define E4210_DIV0_ATB_MASK	(DIV_MASK << E4210_DIV0_ATB_SHIFT)
-
 /*
  * Helper function to set the 'safe' dividers for the CPU clock. The parameters
  * div and mask contain the divider value and the register bit mask of the
  * dividers to be programmed.
  */
-static void exynos_set_safe_div(void __iomem *base, unsigned long div,
+static void exynos_set_safe_div(struct exynos_cpuclk *cpuclk, unsigned long div,
 				unsigned long mask)
 {
+	const struct exynos_cpuclk_regs * const regs = cpuclk->chip->regs;
+	void __iomem *base = cpuclk->ctrl_base;
 	unsigned long div0;
 
-	div0 = readl(base + E4210_DIV_CPU0);
+	div0 = readl(base + regs->div_cpu0);
 	div0 = (div0 & ~mask) | (div & mask);
-	writel(div0, base + E4210_DIV_CPU0);
-	wait_until_divider_stable(base + E4210_DIV_STAT_CPU0, mask);
+	writel(div0, base + regs->div_cpu0);
+	wait_until_divider_stable(base + regs->div_stat_cpu0, mask);
 }
 
+/* ---- Exynos 3/4/5 -------------------------------------------------------- */
+
+#define E4210_DIV0_RATIO0_MASK	GENMASK(2, 0)
+#define E4210_DIV1_HPM_MASK	GENMASK(6, 4)
+#define E4210_DIV1_COPY_MASK	GENMASK(2, 0)
+#define E4210_MUX_HPM_MASK	BIT(20)
+#define E4210_DIV0_ATB_SHIFT	16
+#define E4210_DIV0_ATB_MASK	(DIV_MASK << E4210_DIV0_ATB_SHIFT)
+
+static const struct exynos_cpuclk_regs e4210_cpuclk_regs = {
+	.mux_sel	= 0x200,
+	.mux_stat	= 0x400,
+	.div_cpu0	= 0x500,
+	.div_cpu1	= 0x504,
+	.div_stat_cpu0	= 0x600,
+	.div_stat_cpu1	= 0x604,
+};
+
 /* handler for pre-rate change notification from parent clock */
 static int exynos_cpuclk_pre_rate_change(struct clk_notifier_data *ndata,
 					 struct exynos_cpuclk *cpuclk)
 {
 	const struct exynos_cpuclk_cfg_data *cfg_data = cpuclk->cfg;
+	const struct exynos_cpuclk_regs * const regs = cpuclk->chip->regs;
 	void __iomem *base = cpuclk->ctrl_base;
 	unsigned long alt_prate = clk_hw_get_rate(cpuclk->alt_parent);
 	unsigned long div0, div1 = 0, mux_reg;
@@ -188,8 +213,8 @@ static int exynos_cpuclk_pre_rate_change(struct clk_notifier_data *ndata,
 	div0 = cfg_data->div0;
 	if (cpuclk->flags & CLK_CPU_HAS_DIV1) {
 		div1 = cfg_data->div1;
-		if (readl(base + E4210_SRC_CPU) & E4210_MUX_HPM_MASK)
-			div1 = readl(base + E4210_DIV_CPU1) &
+		if (readl(base + regs->mux_sel) & E4210_MUX_HPM_MASK)
+			div1 = readl(base + regs->div_cpu1) &
 				(E4210_DIV1_HPM_MASK | E4210_DIV1_COPY_MASK);
 	}
 
@@ -216,22 +241,22 @@ static int exynos_cpuclk_pre_rate_change(struct clk_notifier_data *ndata,
 			alt_div |= E4210_DIV0_ATB_MASK;
 			alt_div_mask |= E4210_DIV0_ATB_MASK;
 		}
-		exynos_set_safe_div(base, alt_div, alt_div_mask);
+		exynos_set_safe_div(cpuclk, alt_div, alt_div_mask);
 		div0 |= alt_div;
 	}
 
 	/* select sclk_mpll as the alternate parent */
-	mux_reg = readl(base + E4210_SRC_CPU);
-	writel(mux_reg | (1 << 16), base + E4210_SRC_CPU);
-	wait_until_mux_stable(base + E4210_STAT_CPU, 16, 2);
+	mux_reg = readl(base + regs->mux_sel);
+	writel(mux_reg | (1 << 16), base + regs->mux_sel);
+	wait_until_mux_stable(base + regs->mux_stat, 16, 2);
 
 	/* alternate parent is active now. set the dividers */
-	writel(div0, base + E4210_DIV_CPU0);
-	wait_until_divider_stable(base + E4210_DIV_STAT_CPU0, DIV_MASK_ALL);
+	writel(div0, base + regs->div_cpu0);
+	wait_until_divider_stable(base + regs->div_stat_cpu0, DIV_MASK_ALL);
 
 	if (cpuclk->flags & CLK_CPU_HAS_DIV1) {
-		writel(div1, base + E4210_DIV_CPU1);
-		wait_until_divider_stable(base + E4210_DIV_STAT_CPU1,
+		writel(div1, base + regs->div_cpu1);
+		wait_until_divider_stable(base + regs->div_stat_cpu1,
 					  DIV_MASK_ALL);
 	}
 
@@ -244,6 +269,7 @@ static int exynos_cpuclk_post_rate_change(struct clk_notifier_data *ndata,
 					  struct exynos_cpuclk *cpuclk)
 {
 	const struct exynos_cpuclk_cfg_data *cfg_data = cpuclk->cfg;
+	const struct exynos_cpuclk_regs * const regs = cpuclk->chip->regs;
 	void __iomem *base = cpuclk->ctrl_base;
 	unsigned long div = 0, div_mask = DIV_MASK;
 	unsigned long mux_reg;
@@ -261,50 +287,37 @@ static int exynos_cpuclk_post_rate_change(struct clk_notifier_data *ndata,
 	spin_lock_irqsave(cpuclk->lock, flags);
 
 	/* select mout_apll as the alternate parent */
-	mux_reg = readl(base + E4210_SRC_CPU);
-	writel(mux_reg & ~(1 << 16), base + E4210_SRC_CPU);
-	wait_until_mux_stable(base + E4210_STAT_CPU, 16, 1);
+	mux_reg = readl(base + regs->mux_sel);
+	writel(mux_reg & ~(1 << 16), base + regs->mux_sel);
+	wait_until_mux_stable(base + regs->mux_stat, 16, 1);
 
 	if (cpuclk->flags & CLK_CPU_NEEDS_DEBUG_ALT_DIV) {
 		div |= (cfg_data->div0 & E4210_DIV0_ATB_MASK);
 		div_mask |= E4210_DIV0_ATB_MASK;
 	}
 
-	exynos_set_safe_div(base, div, div_mask);
+	exynos_set_safe_div(cpuclk, div, div_mask);
 	spin_unlock_irqrestore(cpuclk->lock, flags);
 	return 0;
 }
 
 /* ---- Exynos5433 ---------------------------------------------------------- */
 
-#define E5433_MUX_SEL2		0x208
-#define E5433_MUX_STAT2		0x408
-#define E5433_DIV_CPU0		0x600
-#define E5433_DIV_CPU1		0x604
-#define E5433_DIV_STAT_CPU0	0x700
-#define E5433_DIV_STAT_CPU1	0x704
-
-/*
- * Helper function to set the 'safe' dividers for the CPU clock. The parameters
- * div and mask contain the divider value and the register bit mask of the
- * dividers to be programmed.
- */
-static void exynos5433_set_safe_div(void __iomem *base, unsigned long div,
-				    unsigned long mask)
-{
-	unsigned long div0;
-
-	div0 = readl(base + E5433_DIV_CPU0);
-	div0 = (div0 & ~mask) | (div & mask);
-	writel(div0, base + E5433_DIV_CPU0);
-	wait_until_divider_stable(base + E5433_DIV_STAT_CPU0, mask);
-}
+static const struct exynos_cpuclk_regs e5433_cpuclk_regs = {
+	.mux_sel	= 0x208,
+	.mux_stat	= 0x408,
+	.div_cpu0	= 0x600,
+	.div_cpu1	= 0x604,
+	.div_stat_cpu0	= 0x700,
+	.div_stat_cpu1	= 0x704,
+};
 
 /* handler for pre-rate change notification from parent clock */
 static int exynos5433_cpuclk_pre_rate_change(struct clk_notifier_data *ndata,
 					     struct exynos_cpuclk *cpuclk)
 {
 	const struct exynos_cpuclk_cfg_data *cfg_data = cpuclk->cfg;
+	const struct exynos_cpuclk_regs * const regs = cpuclk->chip->regs;
 	void __iomem *base = cpuclk->ctrl_base;
 	unsigned long alt_prate = clk_hw_get_rate(cpuclk->alt_parent);
 	unsigned long div0, div1 = 0, mux_reg;
@@ -341,21 +354,21 @@ static int exynos5433_cpuclk_pre_rate_change(struct clk_notifier_data *ndata,
 		alt_div = DIV_ROUND_UP(alt_prate, tmp_rate) - 1;
 		WARN_ON(alt_div >= MAX_DIV);
 
-		exynos5433_set_safe_div(base, alt_div, alt_div_mask);
+		exynos_set_safe_div(cpuclk, alt_div, alt_div_mask);
 		div0 |= alt_div;
 	}
 
 	/* select the alternate parent */
-	mux_reg = readl(base + E5433_MUX_SEL2);
-	writel(mux_reg | 1, base + E5433_MUX_SEL2);
-	wait_until_mux_stable(base + E5433_MUX_STAT2, 0, 2);
+	mux_reg = readl(base + regs->mux_sel);
+	writel(mux_reg | 1, base + regs->mux_sel);
+	wait_until_mux_stable(base + regs->mux_stat, 0, 2);
 
 	/* alternate parent is active now. set the dividers */
-	writel(div0, base + E5433_DIV_CPU0);
-	wait_until_divider_stable(base + E5433_DIV_STAT_CPU0, DIV_MASK_ALL);
+	writel(div0, base + regs->div_cpu0);
+	wait_until_divider_stable(base + regs->div_stat_cpu0, DIV_MASK_ALL);
 
-	writel(div1, base + E5433_DIV_CPU1);
-	wait_until_divider_stable(base + E5433_DIV_STAT_CPU1, DIV_MASK_ALL);
+	writel(div1, base + regs->div_cpu1);
+	wait_until_divider_stable(base + regs->div_stat_cpu1, DIV_MASK_ALL);
 
 	spin_unlock_irqrestore(cpuclk->lock, flags);
 	return 0;
@@ -365,6 +378,7 @@ static int exynos5433_cpuclk_pre_rate_change(struct clk_notifier_data *ndata,
 static int exynos5433_cpuclk_post_rate_change(struct clk_notifier_data *ndata,
 					      struct exynos_cpuclk *cpuclk)
 {
+	const struct exynos_cpuclk_regs * const regs = cpuclk->chip->regs;
 	void __iomem *base = cpuclk->ctrl_base;
 	unsigned long div = 0, div_mask = DIV_MASK;
 	unsigned long mux_reg;
@@ -373,11 +387,11 @@ static int exynos5433_cpuclk_post_rate_change(struct clk_notifier_data *ndata,
 	spin_lock_irqsave(cpuclk->lock, flags);
 
 	/* select apll as the alternate parent */
-	mux_reg = readl(base + E5433_MUX_SEL2);
-	writel(mux_reg & ~1, base + E5433_MUX_SEL2);
-	wait_until_mux_stable(base + E5433_MUX_STAT2, 0, 1);
+	mux_reg = readl(base + regs->mux_sel);
+	writel(mux_reg & ~1, base + regs->mux_sel);
+	wait_until_mux_stable(base + regs->mux_stat, 0, 1);
 
-	exynos5433_set_safe_div(base, div, div_mask);
+	exynos_set_safe_div(cpuclk, div, div_mask);
 	spin_unlock_irqrestore(cpuclk->lock, flags);
 	return 0;
 }
@@ -435,10 +449,12 @@ static int exynos_cpuclk_notifier_cb(struct notifier_block *nb,
 
 static const struct exynos_cpuclk_chip exynos_clkcpu_chips[] = {
 	[CPUCLK_LAYOUT_E4210] = {
+		.regs		= &e4210_cpuclk_regs,
 		.pre_rate_cb	= exynos_cpuclk_pre_rate_change,
 		.post_rate_cb	= exynos_cpuclk_post_rate_change,
 	},
 	[CPUCLK_LAYOUT_E5433] = {
+		.regs		= &e5433_cpuclk_regs,
 		.pre_rate_cb	= exynos5433_cpuclk_pre_rate_change,
 		.post_rate_cb	= exynos5433_cpuclk_post_rate_change,
 	},
-- 
2.39.2


