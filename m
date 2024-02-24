Return-Path: <devicetree+bounces-45597-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7836886276C
	for <lists+devicetree@lfdr.de>; Sat, 24 Feb 2024 21:22:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 85792B22256
	for <lists+devicetree@lfdr.de>; Sat, 24 Feb 2024 20:22:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A088851005;
	Sat, 24 Feb 2024 20:21:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Qk5FAEkj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com [209.85.167.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15B674F1E0
	for <devicetree@vger.kernel.org>; Sat, 24 Feb 2024 20:21:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708806064; cv=none; b=ewDoolLQJ6OdN+tUF6L0ozeVYYxyZt313X8LszevwQ7XUONZPY51gdfpshkJGvmh/30s/OZ1mYnYnyL+bZBB4HcPoc/dYeKygzG4FpWdGRgEi/CGdkIiNS2HT40wViiln2ujGn/T2f4zNWDfqOqGs4iHqcWkYDzAipoTXYmW6AM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708806064; c=relaxed/simple;
	bh=1ImW2IACKGUhYJ7/rOYdyKajWLj0N3ZFaS5Yy40Yw9Y=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=o1ttbse0fLmiTiJ56KrxQCyyznrzB7EGhKsfLRAMALUsVj8OOb+f4AmLeXuNeloZljg2OUgGESS029i88nIbd/LFjRDzwN43ZzlZ4TXD6VB4rmSor4vIjhbiaZ02/o5JlSNiAmKlyMC8uBahJRTek4XuKRVyKPEiYx4ExQ+dm2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Qk5FAEkj; arc=none smtp.client-ip=209.85.167.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oi1-f181.google.com with SMTP id 5614622812f47-3c02adddb8eso1512797b6e.0
        for <devicetree@vger.kernel.org>; Sat, 24 Feb 2024 12:21:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708806061; x=1709410861; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S7KoDUleWCo5UKlQBGeeXR+YMlhweLkGTgyZVq03PTg=;
        b=Qk5FAEkjrBHH8HlHdVAu9FwzTs1OZcvOlRjeq5hHbGEDMWbAVC0Rp+UsrP/uA1dkIO
         hNDPTPu3Nzi1ochSmYgkPuibYyOwknfrwgAWLo+GcMkIJ3ww52EaRN7zW10zBvJOXnLw
         6sn4JAKxYdgsYWqLbV66W8cAfNaxHcdHl9KhMK3UluqNeTAGSZjPQsy+u5WToBiCn1Kl
         A+4sAwb0uJeKLVQrpskgly/cLXxMFvASYGOc1UsownmtMX0iFQQ1CWyDwvN/Ih7psvJb
         Iab/NmG4IVxl/FYoOz4Jsc2xKwkSzGO+2VXMxnMb+6pyage8G8KKFKJG+s4RP9LcVEtr
         bZLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708806061; x=1709410861;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=S7KoDUleWCo5UKlQBGeeXR+YMlhweLkGTgyZVq03PTg=;
        b=SBvjeNwYnA1/JrVBU/kuQNIuZ1Drm30IQtCV6gjefMKC4N0kxtghxN9sq27MCFsFL2
         7lVZcXvXihl58txl1r/O3gyCMIL02ID0vydMBbdIL6hEZfnj6Pw1JQWRfabS0IJ7cFtH
         EVz6TEcQzPz+ytZQ+5yQp8WMwW7MT7UljrASGYtL2Nz+v8LQWCS9Mwwn4oeA7Pfi7RWj
         zniYaQVU7BcnizHjgds8k9Gya3jnTd4sufbAMA473mNqTDsM8Cg7d6a1DiR22sRa4e1F
         uHwuxc/MqyKlgSRBFlRYlVtVBuCITuHUAd0F7ycYFO0dLN43VEHUuNgNv11x6hbnaqTu
         4UGA==
X-Forwarded-Encrypted: i=1; AJvYcCUoEfb1gIBc/GVjeNEDb6e7FWQjW3e8c2+c7taaQ8OeDLChBUN7+1W8l1/qA6xAABjxVWQ8RYyjcLvz4txhSsq9hYuS0AsipxQAVw==
X-Gm-Message-State: AOJu0YyE6pQFG2Uyr+HrFjHapWZbj9ZC623I+tpU/UTTEf0jnfrxwHwE
	TSHoGaeewEpuQjOG5CxarqgI3XSmHvWSikLlWP0gcFWB1abEBqDRORHNNXxWGVM=
X-Google-Smtp-Source: AGHT+IENaAaBEvjJseobNlvF+eiZDk+l+seaHD0oo3sk7o+f/hO5ZUaGaS5Q1MrGsUHlW0icJeudIw==
X-Received: by 2002:a05:6808:f88:b0:3c1:9c5b:74a7 with SMTP id o8-20020a0568080f8800b003c19c5b74a7mr119158oiw.17.1708806061101;
        Sat, 24 Feb 2024 12:21:01 -0800 (PST)
Received: from localhost ([136.62.192.75])
        by smtp.gmail.com with ESMTPSA id 22-20020aca0916000000b003c150705429sm382420oij.12.2024.02.24.12.21.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Feb 2024 12:21:00 -0800 (PST)
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
Subject: [PATCH v3 09/15] clk: samsung: Keep CPU clock chip specific data in a dedicated struct
Date: Sat, 24 Feb 2024 14:20:47 -0600
Message-Id: <20240224202053.25313-10-semen.protsenko@linaro.org>
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

Keep chip specific data in the data structure, don't mix it with code.
It makes it easier to add more chip specific data further. Having all
chip specific data in the table eliminates possible code bloat when
adding more rate handlers for new chips, and also makes it possible to
keep some other chip related data in that array.

No functional change.

Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
---
Changes in v3:
  - none

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


