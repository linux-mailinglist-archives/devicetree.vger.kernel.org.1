Return-Path: <devicetree+bounces-44566-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C88F685EF86
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 04:04:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 394541F234CA
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 03:04:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD9AC224DF;
	Thu, 22 Feb 2024 03:02:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="j0C8DJQb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com [209.85.210.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A9AA1CA8F
	for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 03:02:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708570967; cv=none; b=J/kIykcRjyPvbC3dWvufZw6yE2giQn/AkVEqtrneKAJsX02gYU5JH7lSi0+Sy5WWIHpfkEkZsAQTKaQO1ZzQJUhZ8nF52O6n5KTSNhWIVIC+QEVYQSiTdmfqPywkzai6lNTwTwegEiIprU4ms0rc5ft2g42HHXcrmRVS5OCasmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708570967; c=relaxed/simple;
	bh=Z+6wDeao11aPwCW3AhDBG4PTcoTL/+OmRzSzGq44JUw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=F8tu8OQo3HmsyTHZP17E/Qb+BKjkKIYsmanpN591961IvVJ5wXGev3lTXtS0A/mrddlr3G21U9H5nJmaBecG99W9SCX2bmEii5Lp2rLywQNw0YYvVN6CF6AeKoDllb/byrpHPSlZDxiA3Fg23cP8li9/1Ytg4T/xc5u01J1/6R8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=j0C8DJQb; arc=none smtp.client-ip=209.85.210.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ot1-f52.google.com with SMTP id 46e09a7af769-6e44c9a62b6so1937737a34.3
        for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 19:02:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708570963; x=1709175763; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PBk7Y8Ruz5aViv1yl0WFjUfmO2mXJGG1dqBCLaRT7+0=;
        b=j0C8DJQboi555pA5cb8v/G0DpFR6HoCAeU/pTRcidMhro34fpvC7pcl28KVzswT7ok
         APmDXC5I9uWZfv+oeeWqK5MCa2HxtMQLHH35NSRD/Plg3Qse8BwjctSrfXfzv/jslU4q
         Z7IHBhX4GF3+twwKlZN6WXpuYBRMMQkD0/TmRK5LVnXsSGmrpwzspi3Xj5oyO3icxYix
         Xr9r9V85Ws+iJ9QHZHqpCmC8PctOqmBCpTHVMliHKvh/H3o9suJt3XyogZNxAwunXIMz
         Vu7xYIvO9I0qDP8GjGt04OnoHgKUgRd9NDR+92LE1F2HYOSrIwyjbSQ6OIIesZKBVxKr
         wNRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708570963; x=1709175763;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PBk7Y8Ruz5aViv1yl0WFjUfmO2mXJGG1dqBCLaRT7+0=;
        b=alohn7bsLdTVuaNNYX/ETE8szaWGz8VwlQGPtwWOLcrCC5qRxrAItd8ro/dOFt/wWA
         uu+qdQNgoHOZdM/SUrDSsbGJGgldAc/N3asQ5+ycThPFFkHe06C/thPGrsaCUF+q/zyW
         xWp/y+oEU9ajCv4jWO30n3RLWI+bm8FP0Po8qBQAulzNkGQi7rPgIYFFkBDH1Gf02jCi
         DFk/ilkjpHZ6JKL/2qbZFFSgRwwQRFT8TEE7j0Kmye12g2Y916f1r2nocpqqVAW+Libl
         EGOkfAbRCmmJ9omAtidgekd99rCD4Bg1t072LqcEjfpAPdJEsETPNugTOiKsmMIgjdKr
         pDiA==
X-Forwarded-Encrypted: i=1; AJvYcCUYkRe8Dzng4fxjWj6EwmL1dretlhduyi742g9wdQzpmBVLfeFew0H7/uU3XFeuEx5lZI6JTTEH6mfuTZKFlEkzP1riAG01Tc1Zgg==
X-Gm-Message-State: AOJu0YwMNdl7YjP80pH1eX8kVs7eTcNNLBsEzE50/jd0eR4xwkiVlF3+
	R8C9qfnDwv7i7d2eqbbheFjr1U7WM7QDm7ues0Qu2P69oPWew0pab0ww8vuPi8E=
X-Google-Smtp-Source: AGHT+IEduzc2fczveJzBJ6rRNR49n+itZJN7bKmoBb8MuqHWSNZ5QV0bRDVJtje0YdwBcLFuDSKAtw==
X-Received: by 2002:a05:6871:3427:b0:21e:3ce4:6b68 with SMTP id nh39-20020a056871342700b0021e3ce46b68mr20322356oac.17.1708570963477;
        Wed, 21 Feb 2024 19:02:43 -0800 (PST)
Received: from localhost ([136.62.192.75])
        by smtp.gmail.com with ESMTPSA id oh25-20020a0568702c9900b0021e7c192093sm2693888oab.27.2024.02.21.19.02.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Feb 2024 19:02:43 -0800 (PST)
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
Subject: [PATCH v2 09/15] clk: samsung: Keep CPU clock chip specific data in a dedicated struct
Date: Wed, 21 Feb 2024 21:02:29 -0600
Message-Id: <20240222030235.27815-10-semen.protsenko@linaro.org>
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

Keep chip specific data in the data structure, don't mix it with code.
It makes it easier to add more chip specific data further. Having all
chip specific data in the table eliminates possible code bloat when
adding more rate handlers for new chips, and also makes it possible to
keep some other chip related data in that array.

No functional change.

Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
---
Changes in v2:
- Improved the commit message: explained why it's beneficial for new
  chips to keep chip-specific data in one table

 drivers/clk/samsung/clk-cpu.c | 40 +++++++++++++++++++++++------------
 1 file changed, 26 insertions(+), 14 deletions(-)

diff --git a/drivers/clk/samsung/clk-cpu.c b/drivers/clk/samsung/clk-cpu.c
index 635ab8cc54a2..eb2b67d08f89 100644
--- a/drivers/clk/samsung/clk-cpu.c
+++ b/drivers/clk/samsung/clk-cpu.c
@@ -43,6 +43,16 @@ struct exynos_cpuclk;
 typedef int (*exynos_rate_change_fn_t)(struct clk_notifier_data *ndata,
 				       struct exynos_cpuclk *cpuclk);
 
+/**
+ * struct exynos_cpuclk_chip - Chip specific data for CPU clock
+ * @pre_rate_cb: callback to run before CPU clock rate change
+ * @post_rate_cb: callback to run after CPU clock rate change
+ */
+struct exynos_cpuclk_chip {
+	exynos_rate_change_fn_t	pre_rate_cb;
+	exynos_rate_change_fn_t	post_rate_cb;
+};
+
 /**
  * struct exynos_cpuclk - information about clock supplied to a CPU core
  * @hw:		handle between CCF and CPU clock
@@ -55,8 +65,7 @@ typedef int (*exynos_rate_change_fn_t)(struct clk_notifier_data *ndata,
  * @clk_nb:	clock notifier registered for changes in clock speed of the
  *		primary parent clock
  * @flags:	configuration flags for the CPU clock
- * @pre_rate_cb: callback to run before CPU clock rate change
- * @post_rate_cb: callback to run after CPU clock rate change
+ * @chip:	chip-specific data for the CPU clock
  *
  * This structure holds information required for programming the CPU clock for
  * various clock speeds.
@@ -70,9 +79,7 @@ struct exynos_cpuclk {
 	const unsigned long			num_cfgs;
 	struct notifier_block			clk_nb;
 	unsigned long				flags;
-
-	exynos_rate_change_fn_t			pre_rate_cb;
-	exynos_rate_change_fn_t			post_rate_cb;
+	const struct exynos_cpuclk_chip		*chip;
 };
 
 /* ---- Common code --------------------------------------------------------- */
@@ -420,13 +427,24 @@ static int exynos_cpuclk_notifier_cb(struct notifier_block *nb,
 	cpuclk = container_of(nb, struct exynos_cpuclk, clk_nb);
 
 	if (event == PRE_RATE_CHANGE)
-		err = cpuclk->pre_rate_cb(ndata, cpuclk);
+		err = cpuclk->chip->pre_rate_cb(ndata, cpuclk);
 	else if (event == POST_RATE_CHANGE)
-		err = cpuclk->post_rate_cb(ndata, cpuclk);
+		err = cpuclk->chip->post_rate_cb(ndata, cpuclk);
 
 	return notifier_from_errno(err);
 }
 
+static const struct exynos_cpuclk_chip exynos_clkcpu_chips[] = {
+	[CPUCLK_LAYOUT_E4210] = {
+		.pre_rate_cb	= exynos_cpuclk_pre_rate_change,
+		.post_rate_cb	= exynos_cpuclk_post_rate_change,
+	},
+	[CPUCLK_LAYOUT_E5433] = {
+		.pre_rate_cb	= exynos5433_cpuclk_pre_rate_change,
+		.post_rate_cb	= exynos5433_cpuclk_post_rate_change,
+	},
+};
+
 /* helper function to register a CPU clock */
 static int __init exynos_register_cpu_clock(struct samsung_clk_provider *ctx,
 				const struct samsung_cpu_clock *clk_data)
@@ -465,13 +483,7 @@ static int __init exynos_register_cpu_clock(struct samsung_clk_provider *ctx,
 	cpuclk->lock = &ctx->lock;
 	cpuclk->flags = clk_data->flags;
 	cpuclk->clk_nb.notifier_call = exynos_cpuclk_notifier_cb;
-	if (clk_data->reg_layout == CPUCLK_LAYOUT_E5433) {
-		cpuclk->pre_rate_cb = exynos5433_cpuclk_pre_rate_change;
-		cpuclk->post_rate_cb = exynos5433_cpuclk_post_rate_change;
-	} else {
-		cpuclk->pre_rate_cb = exynos_cpuclk_pre_rate_change;
-		cpuclk->post_rate_cb = exynos_cpuclk_post_rate_change;
-	}
+	cpuclk->chip = &exynos_clkcpu_chips[clk_data->reg_layout];
 
 	ret = clk_notifier_register(parent->clk, &cpuclk->clk_nb);
 	if (ret) {
-- 
2.39.2


