Return-Path: <devicetree+bounces-44564-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 03D2085EF7E
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 04:03:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6DB141F23455
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 03:03:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10240200A9;
	Thu, 22 Feb 2024 03:02:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QmsaSxH4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f47.google.com (mail-oa1-f47.google.com [209.85.160.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0B8718B15
	for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 03:02:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708570965; cv=none; b=qp2NgF7aTx/mNU95pZnGcjzqtOL2QSAdxvW89OsuNmsg2pZujrMgPTjI6ZngXVTjZKPHHdxjyeWiOhZlH65gQgpYT9d9u1+P3HcDgObSfIj+iUC7ncxVZ3MpS32B7MO7AGYGNt/A3+PXfr1deLYlwIi8stheb1tDHQMThGTGYHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708570965; c=relaxed/simple;
	bh=E57Vvf5i4UvAxT0SReM/LSyX092G606irQTwrGo6eXQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=cikBNwGkZ/tQ7vF6cOJm1mcifGuPIGGCFRfFUtoZr8XRm57IGV8OMV5NlYZ/plqCTANReWb2mhmNwVZBBzZvZkJwsjtk1nC6oJF5I6/QscoUPpQEPYRM11vcflmnim4ND/rPDz2pDWS1fJAFZEN1xBQcSUHp5ABGo7GTjW4P460=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QmsaSxH4; arc=none smtp.client-ip=209.85.160.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oa1-f47.google.com with SMTP id 586e51a60fabf-21e45ed41d7so3187969fac.0
        for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 19:02:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708570962; x=1709175762; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TlZqe+IBPYU8+N8TDK4D7h8ZRV0c5/qpAc5EaWhxJSU=;
        b=QmsaSxH4Mx7g+1Fpo0xMwZpNVHB9rMhJ/5M0ebmlJ1tl3ZI6ls0OHYMbsqr9yVNtZS
         MztVaE5syumGinJ6mDcY8VYxRocCkyu8i0zFjMohvfL35xBR+RsvMJpztMfG+BzEFaO8
         TJwX+34jRW6xDr3USUAG4Kjd3qu2FdPUvDdWJ68BLE7DDJu5WBsdSRBABbJKz0c3vf2Q
         DmP8q4hddqIwbmK+R+oIHiSaEsTzsFc7awnPTbtTrTjwHNvWbVLmd9Rg9lwjHsFGSm5U
         KW95ilIcgmSFIfTOc9GjM/W6mC6eltLElwXwzEAQzqI0u1yZ8xteIMtNGq8ggWUf/xqN
         94/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708570962; x=1709175762;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TlZqe+IBPYU8+N8TDK4D7h8ZRV0c5/qpAc5EaWhxJSU=;
        b=L1ok70TUJRaj0PU57qf2oBOnRGUkOs4TIb6W25mARbuQRWCRp8KGuiTSnCGnaJ9HTX
         oyBjmyazAkV/8JIcI9Ng/N+ptdX1qarZCxXIe4iZttrSWMiIi6PHybfRB0tF1p5Ve+ag
         ketIh8jn0xCdyjBl3lyxdHwrqPD6lekcsJyKI5KAFxKXUeHd02OA18k4OogpGy7k2ioA
         Ym6AVeeu7wnoypEjcgM0FMKF6KunYd7roIYbogV0lvmxLVVD7NxkoVkRzALQRDKuVCjM
         8SYEZ0e+D7aU6uWufwUz/bZwGUZg6dFQsDt+tTB719FJgw3Ys7WAccEEMWvqFBceuOGy
         +cFQ==
X-Forwarded-Encrypted: i=1; AJvYcCXV/QXGBQAKQBzkOIl7ZKDbB6ZmEuV4jtttGJDrYDe7noWib1rR91U9bCryPm1z5fc7UOC57dseZgBPrUqcJ/6QuX8H+3lhKWR5LQ==
X-Gm-Message-State: AOJu0Yx+BH+TGnru+8EbtbLe3Ma8cNyvShVb1OqNrUft7JfBCwo//paQ
	VFUCRS6IS3jeJ+Q0oGt4A/14jE8lMPBup7SteKiv2xBj485H8jQiIKbDuvHinbg=
X-Google-Smtp-Source: AGHT+IEb5h7i4tepkzT7v/8OQGABNAtOaAUeDfz6YEpPehnVlCDcHu066DbDwq89xdcCfcSbsemFOQ==
X-Received: by 2002:a05:6870:d208:b0:21e:f37d:9154 with SMTP id g8-20020a056870d20800b0021ef37d9154mr9382252oac.49.1708570961953;
        Wed, 21 Feb 2024 19:02:41 -0800 (PST)
Received: from localhost ([136.62.192.75])
        by smtp.gmail.com with ESMTPSA id nx16-20020a056870be9000b0021e8840de86sm2635411oab.54.2024.02.21.19.02.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Feb 2024 19:02:41 -0800 (PST)
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
Subject: [PATCH v2 07/15] clk: samsung: Pass actual CPU clock registers base to CPU_CLK()
Date: Wed, 21 Feb 2024 21:02:27 -0600
Message-Id: <20240222030235.27815-8-semen.protsenko@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240222030235.27815-1-semen.protsenko@linaro.org>
References: <20240222030235.27815-1-semen.protsenko@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The documentation for struct exynos_cpuclk says .ctrl_base field should
contain the controller base address. There are two different problems
with that:

1. All Exynos clock drivers are actually passing CPU_SRC register offset
   via CPU_CLK() macro, which in turn gets assigned to mentioned
   .ctrl_base field. Because CPU_SRC register usually already has 0x200
   offset from controller's base, all other register offsets in
   clk-cpu.c (like DIVs and MUXes) are specified as offsets from CPU_SRC
   offset, and not from controller's base. That makes things confusing
   and inconsistent with register offsets provided in Exynos clock
   drivers, also breaking the contract for .ctrl_base field as described
   in struct exynos_cpuclk doc.

2. Furthermore, some Exynos chips have an additional offset for the
   start of CPU clock registers block (inside of the CMU). There might
   be different reasons for that, e.g.:

   - The CMU contains clocks for two different CPUs (like in Exynos5420)
   - The CMU contains also non-CPU clocks as well (like in Exynos4)
   - The CPU CMU exists as a dedicated hardware block in the SoC layout,
     but is modelled as a part of bigger CMU in the driver (like in case
     of Exynos3250)

   That means the .ctrl_base field is actually not a controller's base,
   but instead it's a start address of the CPU clock registers inside of
   the CMU.

Rework all register offsets in clk-cpu.c to be actual offsets from the
CPU clock register block start, and fix offsets provided to CPU_CLK()
macro in all Exynos clock drivers. Also clarify the .ctrl_base field
documentation and rename it to just .base, because it doesn't really
contain the CMU base.

No functional change.

Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
---
Changes in v2:
  - Renamed .ctrl_base field to .base and fixed its documentation
  - Fixed typo in commit message: Exynis -> Exynos
  - Improved the commit message: mentioned that .ctrl_base is actually a
    start address of the CPU clock register block, not the CMU base

 drivers/clk/samsung/clk-cpu.c        | 38 ++++++++++++++--------------
 drivers/clk/samsung/clk-exynos3250.c |  2 +-
 drivers/clk/samsung/clk-exynos4.c    |  9 ++++---
 drivers/clk/samsung/clk-exynos5250.c |  4 +--
 drivers/clk/samsung/clk-exynos5420.c | 16 ++++++------
 drivers/clk/samsung/clk-exynos5433.c | 10 +++-----
 6 files changed, 40 insertions(+), 39 deletions(-)

diff --git a/drivers/clk/samsung/clk-cpu.c b/drivers/clk/samsung/clk-cpu.c
index d550a4bb632f..82d54b0c9040 100644
--- a/drivers/clk/samsung/clk-cpu.c
+++ b/drivers/clk/samsung/clk-cpu.c
@@ -48,7 +48,7 @@ typedef int (*exynos_rate_change_fn_t)(struct clk_notifier_data *ndata,
  * @hw:		handle between CCF and CPU clock
  * @alt_parent:	alternate parent clock to use when switching the speed
  *		of the primary parent clock
- * @ctrl_base:	base address of the clock controller
+ * @base:	start address of the CPU clock registers block
  * @lock:	cpu clock domain register access lock
  * @cfg:	cpu clock rate configuration data
  * @num_cfgs:	number of array elements in @cfg array
@@ -64,7 +64,7 @@ typedef int (*exynos_rate_change_fn_t)(struct clk_notifier_data *ndata,
 struct exynos_cpuclk {
 	struct clk_hw				hw;
 	const struct clk_hw			*alt_parent;
-	void __iomem				*ctrl_base;
+	void __iomem				*base;
 	spinlock_t				*lock;
 	const struct exynos_cpuclk_cfg_data	*cfg;
 	const unsigned long			num_cfgs;
@@ -125,12 +125,12 @@ static void wait_until_mux_stable(void __iomem *mux_reg, u32 mux_pos,
 
 /* ---- Exynos 3/4/5 -------------------------------------------------------- */
 
-#define E4210_SRC_CPU		0x0
-#define E4210_STAT_CPU		0x200
-#define E4210_DIV_CPU0		0x300
-#define E4210_DIV_CPU1		0x304
-#define E4210_DIV_STAT_CPU0	0x400
-#define E4210_DIV_STAT_CPU1	0x404
+#define E4210_SRC_CPU		0x200
+#define E4210_STAT_CPU		0x400
+#define E4210_DIV_CPU0		0x500
+#define E4210_DIV_CPU1		0x504
+#define E4210_DIV_STAT_CPU0	0x600
+#define E4210_DIV_STAT_CPU1	0x604
 
 #define E4210_DIV0_RATIO0_MASK	GENMASK(2, 0)
 #define E4210_DIV1_HPM_MASK	GENMASK(6, 4)
@@ -160,7 +160,7 @@ static int exynos_cpuclk_pre_rate_change(struct clk_notifier_data *ndata,
 					 struct exynos_cpuclk *cpuclk)
 {
 	const struct exynos_cpuclk_cfg_data *cfg_data = cpuclk->cfg;
-	void __iomem *base = cpuclk->ctrl_base;
+	void __iomem *base = cpuclk->base;
 	unsigned long alt_prate = clk_hw_get_rate(cpuclk->alt_parent);
 	unsigned long div0, div1 = 0, mux_reg;
 	unsigned long flags;
@@ -238,7 +238,7 @@ static int exynos_cpuclk_post_rate_change(struct clk_notifier_data *ndata,
 					  struct exynos_cpuclk *cpuclk)
 {
 	const struct exynos_cpuclk_cfg_data *cfg_data = cpuclk->cfg;
-	void __iomem *base = cpuclk->ctrl_base;
+	void __iomem *base = cpuclk->base;
 	unsigned long div = 0, div_mask = DIV_MASK;
 	unsigned long mux_reg;
 	unsigned long flags;
@@ -271,12 +271,12 @@ static int exynos_cpuclk_post_rate_change(struct clk_notifier_data *ndata,
 
 /* ---- Exynos5433 ---------------------------------------------------------- */
 
-#define E5433_MUX_SEL2		0x008
-#define E5433_MUX_STAT2		0x208
-#define E5433_DIV_CPU0		0x400
-#define E5433_DIV_CPU1		0x404
-#define E5433_DIV_STAT_CPU0	0x500
-#define E5433_DIV_STAT_CPU1	0x504
+#define E5433_MUX_SEL2		0x208
+#define E5433_MUX_STAT2		0x408
+#define E5433_DIV_CPU0		0x600
+#define E5433_DIV_CPU1		0x604
+#define E5433_DIV_STAT_CPU0	0x700
+#define E5433_DIV_STAT_CPU1	0x704
 
 /*
  * Helper function to set the 'safe' dividers for the CPU clock. The parameters
@@ -299,7 +299,7 @@ static int exynos5433_cpuclk_pre_rate_change(struct clk_notifier_data *ndata,
 					     struct exynos_cpuclk *cpuclk)
 {
 	const struct exynos_cpuclk_cfg_data *cfg_data = cpuclk->cfg;
-	void __iomem *base = cpuclk->ctrl_base;
+	void __iomem *base = cpuclk->base;
 	unsigned long alt_prate = clk_hw_get_rate(cpuclk->alt_parent);
 	unsigned long div0, div1 = 0, mux_reg;
 	unsigned long flags;
@@ -359,7 +359,7 @@ static int exynos5433_cpuclk_pre_rate_change(struct clk_notifier_data *ndata,
 static int exynos5433_cpuclk_post_rate_change(struct clk_notifier_data *ndata,
 					      struct exynos_cpuclk *cpuclk)
 {
-	void __iomem *base = cpuclk->ctrl_base;
+	void __iomem *base = cpuclk->base;
 	unsigned long div = 0, div_mask = DIV_MASK;
 	unsigned long mux_reg;
 	unsigned long flags;
@@ -461,7 +461,7 @@ static int __init exynos_register_cpu_clock(struct samsung_clk_provider *ctx,
 
 	cpuclk->alt_parent = alt_parent;
 	cpuclk->hw.init = &init;
-	cpuclk->ctrl_base = ctx->reg_base + clk_data->offset;
+	cpuclk->base = ctx->reg_base + clk_data->offset;
 	cpuclk->lock = &ctx->lock;
 	cpuclk->flags = clk_data->flags;
 	cpuclk->clk_nb.notifier_call = exynos_cpuclk_notifier_cb;
diff --git a/drivers/clk/samsung/clk-exynos3250.c b/drivers/clk/samsung/clk-exynos3250.c
index a02461667664..bf149fae04c3 100644
--- a/drivers/clk/samsung/clk-exynos3250.c
+++ b/drivers/clk/samsung/clk-exynos3250.c
@@ -775,7 +775,7 @@ static const struct exynos_cpuclk_cfg_data e3250_armclk_d[] __initconst = {
 
 static const struct samsung_cpu_clock exynos3250_cpu_clks[] __initconst = {
 	CPU_CLK(CLK_ARM_CLK, "armclk", CLK_MOUT_APLL, CLK_MOUT_MPLL_USER_C,
-			CLK_CPU_HAS_DIV1, 0x14200, e3250_armclk_d),
+		CLK_CPU_HAS_DIV1, 0x14000, e3250_armclk_d),
 };
 
 static void __init exynos3_core_down_clock(void __iomem *reg_base)
diff --git a/drivers/clk/samsung/clk-exynos4.c b/drivers/clk/samsung/clk-exynos4.c
index 4ec41221e68f..d5b1e9f49d8b 100644
--- a/drivers/clk/samsung/clk-exynos4.c
+++ b/drivers/clk/samsung/clk-exynos4.c
@@ -1252,17 +1252,20 @@ static const struct exynos_cpuclk_cfg_data e4412_armclk_d[] __initconst = {
 
 static const struct samsung_cpu_clock exynos4210_cpu_clks[] __initconst = {
 	CPU_CLK(CLK_ARM_CLK, "armclk", CLK_MOUT_APLL, CLK_SCLK_MPLL,
-			CLK_CPU_NEEDS_DEBUG_ALT_DIV | CLK_CPU_HAS_DIV1, 0x14200, e4210_armclk_d),
+		CLK_CPU_NEEDS_DEBUG_ALT_DIV | CLK_CPU_HAS_DIV1, 0x14000,
+		e4210_armclk_d),
 };
 
 static const struct samsung_cpu_clock exynos4212_cpu_clks[] __initconst = {
 	CPU_CLK(CLK_ARM_CLK, "armclk", CLK_MOUT_APLL, CLK_MOUT_MPLL_USER_C,
-		CLK_CPU_NEEDS_DEBUG_ALT_DIV | CLK_CPU_HAS_DIV1, 0x14200, e4212_armclk_d),
+		CLK_CPU_NEEDS_DEBUG_ALT_DIV | CLK_CPU_HAS_DIV1, 0x14000,
+		e4212_armclk_d),
 };
 
 static const struct samsung_cpu_clock exynos4412_cpu_clks[] __initconst = {
 	CPU_CLK(CLK_ARM_CLK, "armclk", CLK_MOUT_APLL, CLK_MOUT_MPLL_USER_C,
-			CLK_CPU_NEEDS_DEBUG_ALT_DIV | CLK_CPU_HAS_DIV1, 0x14200, e4412_armclk_d),
+		CLK_CPU_NEEDS_DEBUG_ALT_DIV | CLK_CPU_HAS_DIV1, 0x14000,
+		e4412_armclk_d),
 };
 
 /* register exynos4 clocks */
diff --git a/drivers/clk/samsung/clk-exynos5250.c b/drivers/clk/samsung/clk-exynos5250.c
index 8ebe6155d8b7..58df80de52ef 100644
--- a/drivers/clk/samsung/clk-exynos5250.c
+++ b/drivers/clk/samsung/clk-exynos5250.c
@@ -776,8 +776,8 @@ static const struct exynos_cpuclk_cfg_data exynos5250_armclk_d[] __initconst = {
 };
 
 static const struct samsung_cpu_clock exynos5250_cpu_clks[] __initconst = {
-	CPU_CLK(CLK_ARM_CLK, "armclk", CLK_MOUT_APLL, CLK_MOUT_MPLL, CLK_CPU_HAS_DIV1, 0x200,
-			exynos5250_armclk_d),
+	CPU_CLK(CLK_ARM_CLK, "armclk", CLK_MOUT_APLL, CLK_MOUT_MPLL,
+		CLK_CPU_HAS_DIV1, 0x0, exynos5250_armclk_d),
 };
 
 static const struct of_device_id ext_clk_match[] __initconst = {
diff --git a/drivers/clk/samsung/clk-exynos5420.c b/drivers/clk/samsung/clk-exynos5420.c
index 199843f12ae5..bd7b304d2c00 100644
--- a/drivers/clk/samsung/clk-exynos5420.c
+++ b/drivers/clk/samsung/clk-exynos5420.c
@@ -1555,17 +1555,17 @@ static const struct exynos_cpuclk_cfg_data exynos5420_kfcclk_d[] __initconst = {
 };
 
 static const struct samsung_cpu_clock exynos5420_cpu_clks[] __initconst = {
-	CPU_CLK(CLK_ARM_CLK, "armclk", CLK_MOUT_APLL, CLK_MOUT_MSPLL_CPU, 0, 0x200,
-			exynos5420_eglclk_d),
-	CPU_CLK(CLK_KFC_CLK, "kfcclk", CLK_MOUT_KPLL, CLK_MOUT_MSPLL_KFC, 0, 0x28200,
-			exynos5420_kfcclk_d),
+	CPU_CLK(CLK_ARM_CLK, "armclk", CLK_MOUT_APLL, CLK_MOUT_MSPLL_CPU, 0,
+		0x0, exynos5420_eglclk_d),
+	CPU_CLK(CLK_KFC_CLK, "kfcclk", CLK_MOUT_KPLL, CLK_MOUT_MSPLL_KFC, 0,
+		0x28000, exynos5420_kfcclk_d),
 };
 
 static const struct samsung_cpu_clock exynos5800_cpu_clks[] __initconst = {
-	CPU_CLK(CLK_ARM_CLK, "armclk", CLK_MOUT_APLL, CLK_MOUT_MSPLL_CPU, 0, 0x200,
-			exynos5800_eglclk_d),
-	CPU_CLK(CLK_KFC_CLK, "kfcclk", CLK_MOUT_KPLL, CLK_MOUT_MSPLL_KFC, 0, 0x28200,
-			exynos5420_kfcclk_d),
+	CPU_CLK(CLK_ARM_CLK, "armclk", CLK_MOUT_APLL, CLK_MOUT_MSPLL_CPU, 0,
+		0x0, exynos5800_eglclk_d),
+	CPU_CLK(CLK_KFC_CLK, "kfcclk", CLK_MOUT_KPLL, CLK_MOUT_MSPLL_KFC, 0,
+		0x28000, exynos5420_kfcclk_d),
 };
 
 static const struct of_device_id ext_clk_match[] __initconst = {
diff --git a/drivers/clk/samsung/clk-exynos5433.c b/drivers/clk/samsung/clk-exynos5433.c
index 6bfc5d0cd924..d3779eefb438 100644
--- a/drivers/clk/samsung/clk-exynos5433.c
+++ b/drivers/clk/samsung/clk-exynos5433.c
@@ -3700,9 +3700,8 @@ static const struct exynos_cpuclk_cfg_data exynos5433_apolloclk_d[] __initconst
 
 static const struct samsung_cpu_clock apollo_cpu_clks[] __initconst = {
 	CPU_CLK(CLK_SCLK_APOLLO, "apolloclk", CLK_MOUT_APOLLO_PLL,
-			CLK_MOUT_BUS_PLL_APOLLO_USER,
-			CLK_CPU_HAS_E5433_REGS_LAYOUT, 0x200,
-			exynos5433_apolloclk_d),
+		CLK_MOUT_BUS_PLL_APOLLO_USER, CLK_CPU_HAS_E5433_REGS_LAYOUT,
+		0x0, exynos5433_apolloclk_d),
 };
 
 static const struct samsung_cmu_info apollo_cmu_info __initconst = {
@@ -3945,9 +3944,8 @@ static const struct exynos_cpuclk_cfg_data exynos5433_atlasclk_d[] __initconst =
 
 static const struct samsung_cpu_clock atlas_cpu_clks[] __initconst = {
 	CPU_CLK(CLK_SCLK_ATLAS, "atlasclk", CLK_MOUT_ATLAS_PLL,
-			CLK_MOUT_BUS_PLL_ATLAS_USER,
-			CLK_CPU_HAS_E5433_REGS_LAYOUT, 0x200,
-			exynos5433_atlasclk_d),
+		CLK_MOUT_BUS_PLL_ATLAS_USER, CLK_CPU_HAS_E5433_REGS_LAYOUT,
+		0x0, exynos5433_atlasclk_d),
 };
 
 static const struct samsung_cmu_info atlas_cmu_info __initconst = {
-- 
2.39.2


