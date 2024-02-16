Return-Path: <devicetree+bounces-42801-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CBA285889C
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 23:33:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D2DF61F245D5
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 22:33:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 048E3149015;
	Fri, 16 Feb 2024 22:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="O4mXHuMq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com [209.85.167.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1DAB13AA57
	for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 22:32:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708122772; cv=none; b=jdC++0O60XnCowtP+IOMYudgQk6eRAzGKDHmdaWcWLw8KDjTvqw9PbyilLrUZg2e9N8V9FQwEVs5XP7RGhY8+iKY1B8zcJpkW68AkAzeo1EshJ0xrzHBihLX7TXEeu79BKUV90TGJHaAI7EwgpT2DBsTsm7sfHO3AI1s1PSUqk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708122772; c=relaxed/simple;
	bh=EENDe8i/hIP1jaiAMmy2hIQ5Oop2tfzV0CgfTOHuWhQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=AYcEGGdrwIEtFJK2QpB0faXXBQLetRd2HfFJzQFEPUihyc3PL5NLa661MSL7evDaJaSsbm4x5xrs3bm6i0JoYGUm/1hFbCC+LPpC/M9rYSwysGn/c1sHlRSvrHPFPJWYed8v4AfgFMYvzaKcwrdjD6IqG3AnZ5an2yVBJ/jucDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=O4mXHuMq; arc=none smtp.client-ip=209.85.167.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oi1-f170.google.com with SMTP id 5614622812f47-3c0471954faso1966198b6e.2
        for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 14:32:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708122770; x=1708727570; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Cx1pe3dvuwBHZD5HJSTuBK3OcEfxD8vb8RyVZ6GAHCM=;
        b=O4mXHuMqabKAVCvrsY+CQ+q/5OJcYY3h5RHafCq3TYkYrZ84WuHK00bN+c0n75Pk8x
         +a7w5FH+YeeVaS3dsUpALcDSuI3SdCQWTSgfcjccIQpyaNvx3rSdzUC7nmYd/OE7B0Cd
         QwgTTuwlzlrIS3DZB7DTbBcng9/pZ/W158gfRSS69yXsRnbQzWsKE3FjBN7DroMT6f4w
         vOSOPBCWwTn3HdTkcyUcVd2th8Fln3Uho1j4CqI8iwMERGhyAspHXgSwymaQocBd38YW
         iBfAnBpeXFOAi8Wpkpsr3LmL8vZ+viU6xCof7YJ1uhdkMLkaJ+axHY9QYsF6DVDP1599
         id9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708122770; x=1708727570;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Cx1pe3dvuwBHZD5HJSTuBK3OcEfxD8vb8RyVZ6GAHCM=;
        b=nYWYoVKhZp1w9QUXisaOjdzrgBv6jzgmL9w9rwrl6zGZ6Wt2L01bUi1k+PI+n+OHxt
         WIjzYn6Ma+TK9zfniGhxFxmBMzZNJn2PyWBffdLCyCMVEYkD19BZltsoW7eqSXlkkjJX
         eYjjb/5jUYJ/mS11zwyc4+T1JZ4iqEwvrqCS/Nanr8U49sQBy4u68MKkl8YPmvDX1UgK
         Vr/ES05uXVwFt8S3/5ahflKVUZ1AWgW5Pxfm5QUvBf9xvH3tXOJ1qjH+ADc7T6HIW5G9
         uJHwzPAj3RCLbiMHT6nfdUFNrS4EqsDIFtRcrg4a/kQddCPt98i222pLzdi+ngmiywTP
         uw0Q==
X-Forwarded-Encrypted: i=1; AJvYcCUx5T3zc2MQ9K81DeSAAJQucwRAKvHwEVdTCZ5vNrsY6EXrNXHZmcWf6ilfephZbNSHo0qfzPmp42CVH8yO5JKQMjZeX8X7EtqnXw==
X-Gm-Message-State: AOJu0Yw7fm5pyLYzJTfcmcJFKileeKXjCVeBZTKzMWzLnUR84T1eKqdt
	GKGzt49pyzf7ogcOos7CXgcmQo9YUp23Hvd7lWThuqpHZEExEaLYTkFxTHcWYoo=
X-Google-Smtp-Source: AGHT+IE+uFJYzyjL/nhJQxeVT29JxzJKzHM2HWmfZlp/YzIOuf1euWGhpUC7gbCOa9mfD3TY0HQXDA==
X-Received: by 2002:a05:6808:118b:b0:3c0:32d7:b93b with SMTP id j11-20020a056808118b00b003c032d7b93bmr6891732oil.50.1708122769980;
        Fri, 16 Feb 2024 14:32:49 -0800 (PST)
Received: from localhost ([136.62.192.75])
        by smtp.gmail.com with ESMTPSA id y16-20020a056808131000b003c046fa43d7sm127176oiv.19.2024.02.16.14.32.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Feb 2024 14:32:49 -0800 (PST)
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
Subject: [PATCH 05/16] clk: samsung: Use single CPU clock notifier callback for all chips
Date: Fri, 16 Feb 2024 16:32:34 -0600
Message-Id: <20240216223245.12273-6-semen.protsenko@linaro.org>
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

Reduce the code duplication by making all chips use a single version of
exynos_cpuclk_notifier_cb() function. That will prevent the code bloat
when adding new chips support too.

Also don't pass base address to pre/post rate change functions, as it
can be easily derived from already passed cpuclk param.

No functional change.

Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
---
 drivers/clk/samsung/clk-cpu.c | 63 ++++++++++++++++-------------------
 1 file changed, 28 insertions(+), 35 deletions(-)

diff --git a/drivers/clk/samsung/clk-cpu.c b/drivers/clk/samsung/clk-cpu.c
index 7b6fd331a7ec..427018e8dd8c 100644
--- a/drivers/clk/samsung/clk-cpu.c
+++ b/drivers/clk/samsung/clk-cpu.c
@@ -66,6 +66,11 @@
 #define DIV_MASK_ALL		GENMASK(31, 0)
 #define MUX_MASK		GENMASK(2, 0)
 
+struct exynos_cpuclk;
+
+typedef int (*exynos_rate_change_fn_t)(struct clk_notifier_data *ndata,
+				       struct exynos_cpuclk *cpuclk);
+
 /**
  * struct exynos_cpuclk - information about clock supplied to a CPU core
  * @hw:		handle between CCF and CPU clock
@@ -78,6 +83,8 @@
  * @clk_nb:	clock notifier registered for changes in clock speed of the
  *		primary parent clock
  * @flags:	configuration flags for the CPU clock
+ * @pre_rate_cb: callback to run before CPU clock rate change
+ * @post_rate_cb: callback to run after CPU clock rate change
  *
  * This structure holds information required for programming the CPU clock for
  * various clock speeds.
@@ -91,6 +98,9 @@ struct exynos_cpuclk {
 	const unsigned long			num_cfgs;
 	struct notifier_block			clk_nb;
 	unsigned long				flags;
+
+	exynos_rate_change_fn_t			pre_rate_cb;
+	exynos_rate_change_fn_t			post_rate_cb;
 };
 
 /*
@@ -178,9 +188,10 @@ static void exynos_set_safe_div(void __iomem *base, unsigned long div,
 
 /* handler for pre-rate change notification from parent clock */
 static int exynos_cpuclk_pre_rate_change(struct clk_notifier_data *ndata,
-			struct exynos_cpuclk *cpuclk, void __iomem *base)
+					 struct exynos_cpuclk *cpuclk)
 {
 	const struct exynos_cpuclk_cfg_data *cfg_data = cpuclk->cfg;
+	void __iomem *base = cpuclk->ctrl_base;
 	unsigned long alt_prate = clk_hw_get_rate(cpuclk->alt_parent);
 	unsigned long div0, div1 = 0, mux_reg;
 	unsigned long flags;
@@ -255,9 +266,10 @@ static int exynos_cpuclk_pre_rate_change(struct clk_notifier_data *ndata,
 
 /* handler for post-rate change notification from parent clock */
 static int exynos_cpuclk_post_rate_change(struct clk_notifier_data *ndata,
-			struct exynos_cpuclk *cpuclk, void __iomem *base)
+					  struct exynos_cpuclk *cpuclk)
 {
 	const struct exynos_cpuclk_cfg_data *cfg_data = cpuclk->cfg;
+	void __iomem *base = cpuclk->ctrl_base;
 	unsigned long div = 0, div_mask = DIV_MASK;
 	unsigned long mux_reg;
 	unsigned long flags;
@@ -306,9 +318,10 @@ static void exynos5433_set_safe_div(void __iomem *base, unsigned long div,
 
 /* handler for pre-rate change notification from parent clock */
 static int exynos5433_cpuclk_pre_rate_change(struct clk_notifier_data *ndata,
-			struct exynos_cpuclk *cpuclk, void __iomem *base)
+					     struct exynos_cpuclk *cpuclk)
 {
 	const struct exynos_cpuclk_cfg_data *cfg_data = cpuclk->cfg;
+	void __iomem *base = cpuclk->ctrl_base;
 	unsigned long alt_prate = clk_hw_get_rate(cpuclk->alt_parent);
 	unsigned long div0, div1 = 0, mux_reg;
 	unsigned long flags;
@@ -366,8 +379,9 @@ static int exynos5433_cpuclk_pre_rate_change(struct clk_notifier_data *ndata,
 
 /* handler for post-rate change notification from parent clock */
 static int exynos5433_cpuclk_post_rate_change(struct clk_notifier_data *ndata,
-			struct exynos_cpuclk *cpuclk, void __iomem *base)
+					      struct exynos_cpuclk *cpuclk)
 {
+	void __iomem *base = cpuclk->ctrl_base;
 	unsigned long div = 0, div_mask = DIV_MASK;
 	unsigned long mux_reg;
 	unsigned long flags;
@@ -393,39 +407,14 @@ static int exynos_cpuclk_notifier_cb(struct notifier_block *nb,
 {
 	struct clk_notifier_data *ndata = data;
 	struct exynos_cpuclk *cpuclk;
-	void __iomem *base;
 	int err = 0;
 
 	cpuclk = container_of(nb, struct exynos_cpuclk, clk_nb);
-	base = cpuclk->ctrl_base;
 
 	if (event == PRE_RATE_CHANGE)
-		err = exynos_cpuclk_pre_rate_change(ndata, cpuclk, base);
+		err = cpuclk->pre_rate_cb(ndata, cpuclk);
 	else if (event == POST_RATE_CHANGE)
-		err = exynos_cpuclk_post_rate_change(ndata, cpuclk, base);
-
-	return notifier_from_errno(err);
-}
-
-/*
- * This notifier function is called for the pre-rate and post-rate change
- * notifications of the parent clock of cpuclk.
- */
-static int exynos5433_cpuclk_notifier_cb(struct notifier_block *nb,
-					 unsigned long event, void *data)
-{
-	struct clk_notifier_data *ndata = data;
-	struct exynos_cpuclk *cpuclk;
-	void __iomem *base;
-	int err = 0;
-
-	cpuclk = container_of(nb, struct exynos_cpuclk, clk_nb);
-	base = cpuclk->ctrl_base;
-
-	if (event == PRE_RATE_CHANGE)
-		err = exynos5433_cpuclk_pre_rate_change(ndata, cpuclk, base);
-	else if (event == POST_RATE_CHANGE)
-		err = exynos5433_cpuclk_post_rate_change(ndata, cpuclk, base);
+		err = cpuclk->post_rate_cb(ndata, cpuclk);
 
 	return notifier_from_errno(err);
 }
@@ -467,10 +456,14 @@ static int __init exynos_register_cpu_clock(struct samsung_clk_provider *ctx,
 	cpuclk->ctrl_base = ctx->reg_base + clk_data->offset;
 	cpuclk->lock = &ctx->lock;
 	cpuclk->flags = clk_data->flags;
-	if (clk_data->flags & CLK_CPU_HAS_E5433_REGS_LAYOUT)
-		cpuclk->clk_nb.notifier_call = exynos5433_cpuclk_notifier_cb;
-	else
-		cpuclk->clk_nb.notifier_call = exynos_cpuclk_notifier_cb;
+	cpuclk->clk_nb.notifier_call = exynos_cpuclk_notifier_cb;
+	if (clk_data->flags & CLK_CPU_HAS_E5433_REGS_LAYOUT) {
+		cpuclk->pre_rate_cb = exynos5433_cpuclk_pre_rate_change;
+		cpuclk->post_rate_cb = exynos5433_cpuclk_post_rate_change;
+	} else {
+		cpuclk->pre_rate_cb = exynos_cpuclk_pre_rate_change;
+		cpuclk->post_rate_cb = exynos_cpuclk_post_rate_change;
+	}
 
 	ret = clk_notifier_register(parent->clk, &cpuclk->clk_nb);
 	if (ret) {
-- 
2.39.2


