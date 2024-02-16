Return-Path: <devicetree+bounces-42808-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 482238588B7
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 23:35:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F25DC28365E
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 22:34:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F5FA14D43C;
	Fri, 16 Feb 2024 22:33:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cjqb3dH7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com [209.85.210.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46CB714AD28
	for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 22:32:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708122779; cv=none; b=N1gpd23+9KuTp226ITtq98tskXKJFg6LPtBOdyNtYfHy8PpDIVToGndKS/eOioxMYgGSEL4r64Y3XgxOmuEQH3+cI3oZZ0IJoEUMgx0TzBj18tuTXTgURoS8IoUb7Ril6qwFlm0G125Ta9bLg/t+66z4N7mVFBe11Hf0Sd9b/kk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708122779; c=relaxed/simple;
	bh=xY1LMobodbRh5wNGfmOsFYW91hGkyg6ukGBHJClJZUw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=GrDFdLSUQEmALejUFgAWqIVXZjzCawxRMiQ3K0zuZrsiXqnhgIj8Yy2kwcLlGo9aEc1ITAWy7//rO8JLKFt0zafLCp0OUhFVGjeVvDfQVfuiUfr6fgv1LWwbkpi4HiB4fcb+pK+FbJfdQiDq++VA4uQh4heCGKKTPoaEch4KK/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cjqb3dH7; arc=none smtp.client-ip=209.85.210.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ot1-f48.google.com with SMTP id 46e09a7af769-6e2e42fb159so1174710a34.2
        for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 14:32:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708122776; x=1708727576; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dv24mbqztn1Vrin55e28olHgU7+Z3ekpJo7z50Ef2KU=;
        b=cjqb3dH70MuznxMRQvKlLu3suaxnTb6MeZc8p4AyXY7cktSQ7rSQ7cZZtBQxKUImXt
         J/Ae9MlwqtFhZfHQJc7Gw7uElUf0Tow+rTuEUgFoeMurmADUNlkNGul+VnkGnUdng3tc
         mMso8PQuMgWsTqp9A3FQXEUnC8Xk67+dyft1Y/JlXi5Y0s8c8BiphvL5KUTPwktH+xKA
         tVFnbGjP8v0w/KjWdLX/L9zvctYzwikMAuH1yYVaDxyNuu3j2tMsicUKPlSF0KzSDLcg
         Eyv2BdEsiG/tRSPPmgWD8ggV6SJKVxiQCH0hex58Qu3HvuFJwa0tYpmvSYiM+6ZyHeF8
         yeMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708122776; x=1708727576;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dv24mbqztn1Vrin55e28olHgU7+Z3ekpJo7z50Ef2KU=;
        b=nuy4Scu7eNZp0bIUbodd/BFT6SKUT9GusEFh2K5QhP6LhTntSKtNWPbB6Ispcdhlkb
         Bj4hCNprMVMKSMMRlUMfHQ1wStQtdBwQetRE95jnV9q8wD2F+5SKNRfo5pPNcFN92WfN
         W9rHhCATo+n7fiOnPbNLKXLo/K2Rl9YJ3R103ulETOtwkXh2WQ2+8j/jHXtiTFQrCiO8
         yPRRUabUXXMztijBfyy41DI9eDjlMNpQAR9sMEyCNJSu2OK7DP7z0GWfUNkC7t2hPwEE
         hzwNTDoUp/P5aNG1GlBnRDx2/EPfvN4+tO3qHrIUEBgEGGpX8Z0zt0b7e8wyiOW+ERGU
         AgHQ==
X-Forwarded-Encrypted: i=1; AJvYcCWOyzNlVyDh9+h6PkFTPBNEBQVzN8od8zglN7qO0zWpK2r/f5svrAD16vzUyD34G7M94Ua+GgMGHNqcoDV/zCGHUbSBOKw0VJ+/Qw==
X-Gm-Message-State: AOJu0YwOSKiSHgO2KzCF7cxoxtGf6N5W6TbigCOraeF/jHPUo1x1MUpD
	vqxYiKp4cnCblJnsg7mHsmP93UXaeSiozSwTQAaKT0GQQnnmI3OUET0sgRkrLB4=
X-Google-Smtp-Source: AGHT+IHSp7Y+lZqtIwhuV38Vy9LKfAOo074hUyw0pXjuu9Ts+M1Gi0UOFUXmjH8H0xsqSEj6G14+kQ==
X-Received: by 2002:a05:6870:8192:b0:21e:6672:a46f with SMTP id k18-20020a056870819200b0021e6672a46fmr3255262oae.29.1708122775911;
        Fri, 16 Feb 2024 14:32:55 -0800 (PST)
Received: from localhost ([136.62.192.75])
        by smtp.gmail.com with ESMTPSA id ov11-20020a056870cb8b00b0021e70d17dc7sm199912oab.30.2024.02.16.14.32.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Feb 2024 14:32:55 -0800 (PST)
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
Subject: [PATCH 12/16] clk: samsung: Pass mask to wait_until_mux_stable()
Date: Fri, 16 Feb 2024 16:32:41 -0600
Message-Id: <20240216223245.12273-13-semen.protsenko@linaro.org>
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

Make it possible to use wait_until_mux_stable() for MUX registers where
the mask is different from MUX_MASK (e.g. in upcoming CPU clock
implementation for Exynos850).

No functional change.

Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
---
 drivers/clk/samsung/clk-cpu.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/clk/samsung/clk-cpu.c b/drivers/clk/samsung/clk-cpu.c
index 744b609c222d..5ea618da0bc1 100644
--- a/drivers/clk/samsung/clk-cpu.c
+++ b/drivers/clk/samsung/clk-cpu.c
@@ -134,16 +134,16 @@ static void wait_until_divider_stable(void __iomem *div_reg, unsigned long mask)
  * value was changed.
  */
 static void wait_until_mux_stable(void __iomem *mux_reg, u32 mux_pos,
-				  unsigned long mux_value)
+				  unsigned long mask, unsigned long mux_value)
 {
 	unsigned long timeout = jiffies + msecs_to_jiffies(MAX_STAB_TIME);
 
 	do {
-		if (((readl(mux_reg) >> mux_pos) & MUX_MASK) == mux_value)
+		if (((readl(mux_reg) >> mux_pos) & mask) == mux_value)
 			return;
 	} while (time_before(jiffies, timeout));
 
-	if (((readl(mux_reg) >> mux_pos) & MUX_MASK) == mux_value)
+	if (((readl(mux_reg) >> mux_pos) & mask) == mux_value)
 		return;
 
 	pr_err("%s: re-parenting mux timed-out\n", __func__);
@@ -248,7 +248,7 @@ static int exynos_cpuclk_pre_rate_change(struct clk_notifier_data *ndata,
 	/* select sclk_mpll as the alternate parent */
 	mux_reg = readl(base + regs->mux_sel);
 	writel(mux_reg | (1 << 16), base + regs->mux_sel);
-	wait_until_mux_stable(base + regs->mux_stat, 16, 2);
+	wait_until_mux_stable(base + regs->mux_stat, 16, MUX_MASK, 2);
 
 	/* alternate parent is active now. set the dividers */
 	writel(div0, base + regs->div_cpu0);
@@ -289,7 +289,7 @@ static int exynos_cpuclk_post_rate_change(struct clk_notifier_data *ndata,
 	/* select mout_apll as the alternate parent */
 	mux_reg = readl(base + regs->mux_sel);
 	writel(mux_reg & ~(1 << 16), base + regs->mux_sel);
-	wait_until_mux_stable(base + regs->mux_stat, 16, 1);
+	wait_until_mux_stable(base + regs->mux_stat, 16, MUX_MASK, 1);
 
 	if (cpuclk->flags & CLK_CPU_NEEDS_DEBUG_ALT_DIV) {
 		div |= (cfg_data->div0 & E4210_DIV0_ATB_MASK);
@@ -361,7 +361,7 @@ static int exynos5433_cpuclk_pre_rate_change(struct clk_notifier_data *ndata,
 	/* select the alternate parent */
 	mux_reg = readl(base + regs->mux_sel);
 	writel(mux_reg | 1, base + regs->mux_sel);
-	wait_until_mux_stable(base + regs->mux_stat, 0, 2);
+	wait_until_mux_stable(base + regs->mux_stat, 0, MUX_MASK, 2);
 
 	/* alternate parent is active now. set the dividers */
 	writel(div0, base + regs->div_cpu0);
@@ -389,7 +389,7 @@ static int exynos5433_cpuclk_post_rate_change(struct clk_notifier_data *ndata,
 	/* select apll as the alternate parent */
 	mux_reg = readl(base + regs->mux_sel);
 	writel(mux_reg & ~1, base + regs->mux_sel);
-	wait_until_mux_stable(base + regs->mux_stat, 0, 1);
+	wait_until_mux_stable(base + regs->mux_stat, 0, MUX_MASK, 1);
 
 	exynos_set_safe_div(cpuclk, div, div_mask);
 	spin_unlock_irqrestore(cpuclk->lock, flags);
-- 
2.39.2


