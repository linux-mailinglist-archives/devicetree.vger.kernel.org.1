Return-Path: <devicetree+bounces-45593-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 41A4C862761
	for <lists+devicetree@lfdr.de>; Sat, 24 Feb 2024 21:21:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AB5E01F215B4
	for <lists+devicetree@lfdr.de>; Sat, 24 Feb 2024 20:21:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E92D94EB54;
	Sat, 24 Feb 2024 20:21:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="e+OGeH4Y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EFF64D9E7
	for <devicetree@vger.kernel.org>; Sat, 24 Feb 2024 20:20:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708806061; cv=none; b=uqeBenIS/a0eR8TNN5tAsj6wj6qXlMFDttvViLrnO/1JYMVu9okwMUAme3BnwHpcnvL0i6ijrICW8Z488A5pMkC5Z0UwsKYRhaR0wKN3P0Fi0z8afuPNh5q6eaJSojSRux+UD1DWCm7jbSmf7KbSZYCYy93XhY3kn4FEFcb27YE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708806061; c=relaxed/simple;
	bh=pvnFqDs1JSU1cEVxDHwI51U71SVwShMPkCS4POcJTs4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=MsZfQVzlmDyMcVUBHjI5dkneg8Ri1IM1d2eyXpbDXifLXm8j/06uWvWfU2Vf8U7sKy86WtJJlTrgs03lxpM5uAer+2zI5nGBKYUq3Qm49kDk7/WBAO0nl9+gam7bL1bVYsD1htztJhdqa7jBSxtn3eELC73SkDH/wU4Ek2pmdq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=e+OGeH4Y; arc=none smtp.client-ip=209.85.210.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ot1-f47.google.com with SMTP id 46e09a7af769-6e4877713bcso691651a34.0
        for <devicetree@vger.kernel.org>; Sat, 24 Feb 2024 12:20:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708806058; x=1709410858; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bx9qLFh70CDfUDdArm+jHx7BwGkHNp7ct/rE4U3B9/k=;
        b=e+OGeH4Yw0D56cEfAkoFvXKXI+JokbeYfYf08e6bVg5aPTA5gUz16inWKrimeJJJoc
         RGT7SAUbC0DQbe/hQiy5fetnmQhbc09T2VPRxgyFcUWV0RcPWsuutL+q3xBBWWc7sim9
         SUk//DmXcG9aYW4pJ5wAe1zemCjtp64DWeDLNXa1k0c5lcA8UbS/JIg/pA0j4aXhxk0v
         bpzV/UdzJJ9MFYwKaP8Ndq6HzEXoauFyBT+uftEoYcZKIccATjBIE8UVrWqfGIz2dV+y
         +Bl3kUZQlfCF01Gd+vT0vQ9aPS+pNu6kLy8x12ekZKMpFojARI6AzAmcrzw/vj2/tnXl
         dihw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708806058; x=1709410858;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bx9qLFh70CDfUDdArm+jHx7BwGkHNp7ct/rE4U3B9/k=;
        b=Ss++893NSAncEVHSG1RnIpOjFeZ5pBB9fBXJTcE8V9+JCZABzxSWIu0yH343chHjwp
         hZZWyzRQYOLkPc8Gvmv1gZDrBaDEjLA2KhPPaptTJZKAdNi3CrfOON6mRZi1ieqfFsF5
         hFx28NY2Pb2b69KJbC2XnInc+csQB9Z+R3sApPs8E65P9i5f4w/vCX65dQNJoMhSCh3n
         FFQ6Er+2Q1tCDECmL63IN02+QZa/u6YUihXREZp/Wnlm9IgqRaP3wG8eSihPoTzJyJNl
         0c3KpoDAJ5Z7TLYbh47MPdMudGx8PhDPpktk2bgHH81j1cRaozPWpWXD/lL3UR/lOj7b
         FB5Q==
X-Forwarded-Encrypted: i=1; AJvYcCWjWtIviyW/kOif+jw/E0al8/jRjnDcYizBk+ZFn4UZySBvYwKZIKJl/WERSNWrFwWPM1mXQhfZPtz0jUAIUR9jql3nOJDowRGkdw==
X-Gm-Message-State: AOJu0YxmMnvhDN97yajhnwMqI5Ru0TUtcK5jcnXVZNdBK9njlZ1alS8r
	0DyjnakieF3jx9jzlvtnjJJ83oOoX5wwkz7zmaQLG1aqRrMHzZ38mBONvn2s+Ms=
X-Google-Smtp-Source: AGHT+IH2FwIcafPCKNcKZWM0pEg0g2gnbiS/4o8kp5Op6FQzlr3/IRr49wO6Hs1TcKtmZIO3obYktA==
X-Received: by 2002:a05:6830:ca:b0:6e4:8f32:6863 with SMTP id x10-20020a05683000ca00b006e48f326863mr1855984oto.1.1708806058117;
        Sat, 24 Feb 2024 12:20:58 -0800 (PST)
Received: from localhost ([136.62.192.75])
        by smtp.gmail.com with ESMTPSA id a7-20020a9d74c7000000b006e2e7cb1da2sm399737otl.66.2024.02.24.12.20.57
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
Subject: [PATCH v3 05/15] clk: samsung: Use single CPU clock notifier callback for all chips
Date: Sat, 24 Feb 2024 14:20:43 -0600
Message-Id: <20240224202053.25313-6-semen.protsenko@linaro.org>
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

Reduce the code duplication by making all chips use a single version of
exynos_cpuclk_notifier_cb() function. That will prevent the code bloat
when adding new chips support too.

Also don't pass base address to pre/post rate change functions, as it
can be easily derived from already passed cpuclk param.

No functional change.

Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
---
Changes in v3:
  - none

Changes in v2:
  - none

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


