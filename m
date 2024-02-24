Return-Path: <devicetree+bounces-45592-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E933386275D
	for <lists+devicetree@lfdr.de>; Sat, 24 Feb 2024 21:21:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9CB1F282020
	for <lists+devicetree@lfdr.de>; Sat, 24 Feb 2024 20:21:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 110654EB20;
	Sat, 24 Feb 2024 20:21:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OcndeSh3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com [209.85.167.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 496A34D59E
	for <devicetree@vger.kernel.org>; Sat, 24 Feb 2024 20:20:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708806060; cv=none; b=GnEDvoRh+VsT0WM7g61mbS9J8z1EwiTDItBZRSAGhqNQuO9MCC9Ke4LqI+4EyxEHNJjpFA/MLzFZbAKCi6FmEmYJGGAxcW6myyehC85xbqFbT4GAgvY8yaH4qt6TZNI+g43cuG1NKi5S5NnM2mZp9+7IXrc/9rZ4YJ+CncjQuBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708806060; c=relaxed/simple;
	bh=8vDjKv5CbmqJonhIPFV7UHvnuzTKWFqo1N9oGJJvWA0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=slUK4UZjKm91USLIEFhokPZHonxduA3Z07K7G1bW297j+zg0F5MJ1Ht9D+Y+8Yp1tW8+JdNlKvAQyDbyaJ7pMdTPeECvCqNysjgfkO5+MorvoPAsnZBDKuHwv+OkrEsuYksaToi0RWwarcL/KfoufP5OVQYOCbkQW9PMXdvTHBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OcndeSh3; arc=none smtp.client-ip=209.85.167.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oi1-f174.google.com with SMTP id 5614622812f47-3c1993331a7so307149b6e.1
        for <devicetree@vger.kernel.org>; Sat, 24 Feb 2024 12:20:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708806057; x=1709410857; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BIuqSD1JNGAHgvRkLpN9TD+kZKkjlKs1GB5+HEoXmSg=;
        b=OcndeSh3IWpYW7y/4Q9RegXYpAzSGWBUHQMLMcsn/b7Svqnc6E9C8bvQxLJHRfpceF
         i+aIYBKK0X3dak0jt2aygshppNW8FjA9zQ9FEJZAwne9jeCyFsqOy8n82LJnkxW5Vkim
         OHgHyOQqYFBcBlTZXvEyFC+dedr/ZvPqZm9n0ZgMxBOczQC0Qu9F+MZT2kltTw0HElgc
         J9CODEXiyCYd9a2tufKn4Yvh7vjUcFH0ZC5Clt8RrYoPH5rwXEWn/T2n8e4liyA8VF7x
         tQZkvs8zJoT6727F89R/F46p8A6T8uE7IFasA3v+E7Um5OqU8jmtoRgzudNNZAewp+mH
         tn2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708806057; x=1709410857;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BIuqSD1JNGAHgvRkLpN9TD+kZKkjlKs1GB5+HEoXmSg=;
        b=jDHFenWZiOhleSY1iibzR288SFAfLRi8LOGqTJ+1+T8BPoRwxn1kLXZFVpL9WdWHka
         qG5Irf4t9nbGE7+PSJom1Qrw5ZN78FjzvLNyEs3K5MrQDHigPciHMiZPiMotYoM1Nd46
         29JlTZ1flelCcRQaXOnD15JBxSxSk+dQ0pfuoePhFL49ig1ADDiJkIujLwqhsCKaiVoU
         JA8Or5OjaW8kV472B+eJ1ZJQKu6hSMRn7fqakYBXYYqmrNbgY7stfz7gt4nVUDu3fexx
         6Q/WKrbGJ7aNBlbjZAta4ytU+SApG05i+Jblj3i4VB0jimiO+Fi8Nh8Z3ipW9rfWorXZ
         CKhw==
X-Forwarded-Encrypted: i=1; AJvYcCXsY+6wZe+sNDMSO2MC26CeDBegxif3ogaz5rE3vf8s+u1b2ZDUe643NDVFnFoBYwymg2qIEbnp1kenVAvQUo+wyMtkmmv2cxWRFQ==
X-Gm-Message-State: AOJu0YwxQMna0Gyk4V51h1cy99Pj/IvbezVbDgdE/Nn8qfOYoh6oNnKR
	45oXVrjkdC/BCq2UmrriVFx3tAVEEVXCeNm+U21LY7EV1I6MKkn4Hm50aG9kQtpUnMKXgY4gmsC
	UzfUUPA==
X-Google-Smtp-Source: AGHT+IEnJC7vVv78ANtdBQxEa92suD4hZccR3eOtEkSJdPaCxNnJgMSMtvAH9tsjy6akqaOpDaNl3g==
X-Received: by 2002:a05:6808:1a13:b0:3c1:54eb:ff0a with SMTP id bk19-20020a0568081a1300b003c154ebff0amr4391713oib.7.1708806057394;
        Sat, 24 Feb 2024 12:20:57 -0800 (PST)
Received: from localhost ([136.62.192.75])
        by smtp.gmail.com with ESMTPSA id z9-20020a056808028900b003c16a317dd4sm385305oic.53.2024.02.24.12.20.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Feb 2024 12:20:57 -0800 (PST)
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
Subject: [PATCH v3 04/15] clk: samsung: Reduce params count in exynos_register_cpu_clock()
Date: Sat, 24 Feb 2024 14:20:42 -0600
Message-Id: <20240224202053.25313-5-semen.protsenko@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240224202053.25313-1-semen.protsenko@linaro.org>
References: <20240224202053.25313-1-semen.protsenko@linaro.org>
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
Changes in v3:
  - none

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


