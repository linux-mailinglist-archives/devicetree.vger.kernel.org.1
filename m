Return-Path: <devicetree+bounces-44561-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 00AE285EF72
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 04:03:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2351C1C21703
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 03:03:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 998A91862A;
	Thu, 22 Feb 2024 03:02:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FkcT+Tfr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f47.google.com (mail-oo1-f47.google.com [209.85.161.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65ED017583
	for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 03:02:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708570962; cv=none; b=O0UttbERpH4CFjova6+VQfHffcv+n6pHRTMlKz9SjhOoD7A042hmRi5DWATo6Wmy90eM123uvvfjw6DgxRdFmd3MOrC7H8p4SwzdmzjbimWXNrr19nNKZqaMrGb1+yDpxuuPfvLmXdFZmPvjUbwem+AjNDC5HoYgKqcuQZBmwQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708570962; c=relaxed/simple;
	bh=4BIYBpub7umaVofmnwjSmDMnZ8tN6z9wJoCkm2qteKE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Xl1vfiJd07B+/xgBShAJCdl43tSncLvfiBFgWZOepH8m9RitZx1YrQua5PX9668hW0EItHmWwQki2IItrTpvVFPILCyxMF554/K21PvCKxULeQX6cmY5HOPDqZlwnwztnVhMT7zWckIj4LbYbHffgKYFvwGc0qX97wCa2um1x4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FkcT+Tfr; arc=none smtp.client-ip=209.85.161.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oo1-f47.google.com with SMTP id 006d021491bc7-5a0073ae310so1096142eaf.0
        for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 19:02:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708570959; x=1709175759; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ID9ZSTbHJR/LMatneT/X93cat75UpJiqh+CbEK1RNJ4=;
        b=FkcT+TfrXwxutwEmc3pwnaI5ojB5v+W7lYJWCJjzyhGSsDZPhD70QjRReQO0kNdq01
         Q2ZtIhMLpuCs/bsFsUDdw3893aS2CcwB1+TZ1J8qYbV1GcUtDZ4VKi+p5zp9aKvAyBTd
         sajIOsGy8mdtmAvVRAKDAR5U5VKAT60AaqHnPdw5kIFXZpqRgi/ydetPlxcXtq6/0C7A
         A3GuljOjqMywEaTdAZcLPArNupc+78dlq0hvYiPyrrGj2wVUeq1farQYViF4fZ5P8xN/
         udpEozjcDijpqPERHlJIMPVg8fLPJrJi0bkVrPXJZZUSJFgN3BGg52pEI3mIpZptOXgi
         eZ2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708570959; x=1709175759;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ID9ZSTbHJR/LMatneT/X93cat75UpJiqh+CbEK1RNJ4=;
        b=twzEegsPCITigBRuJgDV/+5/bxF855s/VwAwFM+DWYYZLVUh6fQYe61Kf8CE1M2M96
         y5i3TfaMN5qnceE/IwSS5LEk+9j4yXf47R5cnQ/fHmApFvmVFMgSF/X+atj65/Gz/5fK
         pdGgUpgmGKkqlfEddAZxpVzslkht4IaTDBFk4TZEMEyaPriUTDe0Y8fprzGKBN3KYN/y
         75nzhq+kNGn75EmA3HBlYcemHlzVvOGScXrtAmFOtj46fROXdd2+JFxrr5MNM65b9y0Q
         DMnCch/UpALjFuERAo06D2SZxlaUcKC/FaMHlajlKNOnCGzzehH2s0L6kVV1vn8c9HN7
         G6Kg==
X-Forwarded-Encrypted: i=1; AJvYcCWoU5MeG5egL0OPZX9f8ddm+E8gcC56d0kawScpRlLR1cHD5zwPc39RMFWN3T0mr9tzQV2EObF1ugKZ9kpnlgpXTWpv3FvjM1EqIQ==
X-Gm-Message-State: AOJu0YzugjDW6yUVAnqO4GMKqeC1+nLxiqzBv/OJGFxSZ5rMlNqqeB0K
	xaFJOhR6qohrKEsDb5t1nizT/h9sU/poCPFp5UYgiufXR5Tv30omV6AKn2w1RE4=
X-Google-Smtp-Source: AGHT+IFOI2I/X/krm4AKtHSPidwLIM4wfZTExpCjliyiawzbQm1Fjl84HRe0rz4bKi2uvAxm8PLCAw==
X-Received: by 2002:a4a:9d09:0:b0:59f:9910:45ed with SMTP id w9-20020a4a9d09000000b0059f991045edmr18355684ooj.1.1708570959437;
        Wed, 21 Feb 2024 19:02:39 -0800 (PST)
Received: from localhost ([136.62.192.75])
        by smtp.gmail.com with ESMTPSA id l15-20020a4a350f000000b0059d7a60e4a6sm107750ooa.44.2024.02.21.19.02.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Feb 2024 19:02:39 -0800 (PST)
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
Subject: [PATCH v2 04/15] clk: samsung: Reduce params count in exynos_register_cpu_clock()
Date: Wed, 21 Feb 2024 21:02:24 -0600
Message-Id: <20240222030235.27815-5-semen.protsenko@linaro.org>
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

Pass CPU clock data structure to exynos_register_cpu_clock() instead of
passing its fields separately there. That simplifies the signature of
exynos_register_cpu_clock() and makes it easier to add more fields to
struct samsung_cpu_clock later. This style follows the example of
samsung_clk_register_pll().

No functional change.

Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
---
Changes in v2:
  - none

 drivers/clk/samsung/clk-cpu.c | 46 +++++++++++++++++------------------
 1 file changed, 23 insertions(+), 23 deletions(-)

diff --git a/drivers/clk/samsung/clk-cpu.c b/drivers/clk/samsung/clk-cpu.c
index 6412fd2580e0..7b6fd331a7ec 100644
--- a/drivers/clk/samsung/clk-cpu.c
+++ b/drivers/clk/samsung/clk-cpu.c
@@ -432,16 +432,19 @@ static int exynos5433_cpuclk_notifier_cb(struct notifier_block *nb,
 
 /* helper function to register a CPU clock */
 static int __init exynos_register_cpu_clock(struct samsung_clk_provider *ctx,
-		unsigned int lookup_id, const char *name,
-		const struct clk_hw *parent, const struct clk_hw *alt_parent,
-		unsigned long offset, const struct exynos_cpuclk_cfg_data *cfg,
-		unsigned long num_cfgs, unsigned long flags)
+				const struct samsung_cpu_clock *clk_data)
 {
+	const struct clk_hw *parent, *alt_parent;
+	struct clk_hw **hws;
 	struct exynos_cpuclk *cpuclk;
 	struct clk_init_data init;
 	const char *parent_name;
+	unsigned int num_cfgs;
 	int ret = 0;
 
+	hws = ctx->clk_data.hws;
+	parent = hws[clk_data->parent_id];
+	alt_parent = hws[clk_data->alt_parent_id];
 	if (IS_ERR(parent) || IS_ERR(alt_parent)) {
 		pr_err("%s: invalid parent clock(s)\n", __func__);
 		return -EINVAL;
@@ -453,7 +456,7 @@ static int __init exynos_register_cpu_clock(struct samsung_clk_provider *ctx,
 
 	parent_name = clk_hw_get_name(parent);
 
-	init.name = name;
+	init.name = clk_data->name;
 	init.flags = CLK_SET_RATE_PARENT;
 	init.parent_names = &parent_name;
 	init.num_parents = 1;
@@ -461,10 +464,10 @@ static int __init exynos_register_cpu_clock(struct samsung_clk_provider *ctx,
 
 	cpuclk->alt_parent = alt_parent;
 	cpuclk->hw.init = &init;
-	cpuclk->ctrl_base = ctx->reg_base + offset;
+	cpuclk->ctrl_base = ctx->reg_base + clk_data->offset;
 	cpuclk->lock = &ctx->lock;
-	cpuclk->flags = flags;
-	if (flags & CLK_CPU_HAS_E5433_REGS_LAYOUT)
+	cpuclk->flags = clk_data->flags;
+	if (clk_data->flags & CLK_CPU_HAS_E5433_REGS_LAYOUT)
 		cpuclk->clk_nb.notifier_call = exynos5433_cpuclk_notifier_cb;
 	else
 		cpuclk->clk_nb.notifier_call = exynos_cpuclk_notifier_cb;
@@ -472,11 +475,16 @@ static int __init exynos_register_cpu_clock(struct samsung_clk_provider *ctx,
 	ret = clk_notifier_register(parent->clk, &cpuclk->clk_nb);
 	if (ret) {
 		pr_err("%s: failed to register clock notifier for %s\n",
-		       __func__, name);
+		       __func__, clk_data->name);
 		goto free_cpuclk;
 	}
 
-	cpuclk->cfg = kmemdup(cfg, sizeof(*cfg) * num_cfgs, GFP_KERNEL);
+	/* Find count of configuration rates in cfg */
+	for (num_cfgs = 0; clk_data->cfg[num_cfgs].prate != 0; )
+		num_cfgs++;
+
+	cpuclk->cfg = kmemdup(clk_data->cfg, sizeof(*clk_data->cfg) * num_cfgs,
+			      GFP_KERNEL);
 	if (!cpuclk->cfg) {
 		ret = -ENOMEM;
 		goto unregister_clk_nb;
@@ -484,11 +492,12 @@ static int __init exynos_register_cpu_clock(struct samsung_clk_provider *ctx,
 
 	ret = clk_hw_register(NULL, &cpuclk->hw);
 	if (ret) {
-		pr_err("%s: could not register cpuclk %s\n", __func__, name);
+		pr_err("%s: could not register cpuclk %s\n", __func__,
+		       clk_data->name);
 		goto free_cpuclk_data;
 	}
 
-	samsung_clk_add_lookup(ctx, &cpuclk->hw, lookup_id);
+	samsung_clk_add_lookup(ctx, &cpuclk->hw, clk_data->id);
 	return 0;
 
 free_cpuclk_data:
@@ -504,16 +513,7 @@ void __init samsung_clk_register_cpu(struct samsung_clk_provider *ctx,
 		const struct samsung_cpu_clock *list, unsigned int nr_clk)
 {
 	unsigned int idx;
-	unsigned int num_cfgs;
-	struct clk_hw **hws = ctx->clk_data.hws;
 
-	for (idx = 0; idx < nr_clk; idx++, list++) {
-		/* find count of configuration rates in cfg */
-		for (num_cfgs = 0; list->cfg[num_cfgs].prate != 0; )
-			num_cfgs++;
-
-		exynos_register_cpu_clock(ctx, list->id, list->name,
-			hws[list->parent_id], hws[list->alt_parent_id],
-			list->offset, list->cfg, num_cfgs, list->flags);
-	}
+	for (idx = 0; idx < nr_clk; idx++)
+		exynos_register_cpu_clock(ctx, &list[idx]);
 }
-- 
2.39.2


