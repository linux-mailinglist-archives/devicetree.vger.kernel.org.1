Return-Path: <devicetree+bounces-45595-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 93BFD862764
	for <lists+devicetree@lfdr.de>; Sat, 24 Feb 2024 21:22:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 42ADE2821A1
	for <lists+devicetree@lfdr.de>; Sat, 24 Feb 2024 20:21:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93C0C4F5F8;
	Sat, 24 Feb 2024 20:21:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SYiBpzcw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com [209.85.167.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC4D94D110
	for <devicetree@vger.kernel.org>; Sat, 24 Feb 2024 20:20:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708806062; cv=none; b=L/p/5bQactiqW836bKDHO1Bw/Z1BlTpe45qvnwbttbdAY5kVLVldxWS7Cl85C3GfJDfRKASi0Sp3HBx2wkI74Nt6/G/Jg5FJ0yJLemxQfiEgu+wb1PLY/1QsuVJ1FWgzQv9zaQlkuzeNTGRz5QfMrfoHrw6CYIsardfDUP2Kwcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708806062; c=relaxed/simple;
	bh=o9Zqm0zN7ru0KQhZAunuI4IVxeZK+2pqeaTp3HSRgQc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=suNPJPGwgq14ZioGVkebUKwPCUIS6KSSsm7DqUM72SdJ/HKP9X1FaEEjLWk26f5qbbb3W8e50iTOupllaZKtW63Q3USUpv/cqlvZgh5Fkt8aLubSXiaJfvJozMR+fTm9FwHjTOVUlt7HKc6KDMgvDdh5ag6bJRecI0giTXUISpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SYiBpzcw; arc=none smtp.client-ip=209.85.167.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oi1-f178.google.com with SMTP id 5614622812f47-3c15b7b36bbso701621b6e.1
        for <devicetree@vger.kernel.org>; Sat, 24 Feb 2024 12:20:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708806059; x=1709410859; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KTnWrXz3JStivRTMwgchBq3jLcy8rn1qjS1DxI64urA=;
        b=SYiBpzcw2NSf26w7gKLXqv+pu3VMQk0LlLKshUWDepSOcvTv0VLG0G90NOwWunuzrB
         EIf8z/+33zV8Sh5mNiIQxaz90kVFGAsdUOpLXqfonsUHJRXWR1HOKFmFWO9iUCISHLI0
         tn8h+gFb8QIQOrK9kHP/Ldpge2xRmAQAOqTicRI3V7MirEPPImOC7JJDZUtlOdwpwKPq
         gvXszVmFKkWTP8e5gifP2rphylbdcf8q30wQfth+spdq1VQHJpPoaZsSsIGHLcdp4TDM
         6e/19sP6GYrFyaqzqFYmuqcjG+eyk+YDXckQ9/PIVcHhj0W6PAXzQgCoXZKSG91+VSga
         D3Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708806059; x=1709410859;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KTnWrXz3JStivRTMwgchBq3jLcy8rn1qjS1DxI64urA=;
        b=O/+UmaKlo4trpZOtTDTUREc02uIjHpQwWb+sNRN0EY+6MxwLMn6iiwBMLKBot76gqi
         nNDHqNJIwIw+nMpLtz3ohYIf5DvPkxLuJD3GhwByuIxV/+2P5/Fxu1vHGCbRtGD89qT8
         SEDbFkhrhKtKHTBAYH74igQdP+/2hIMKk5mX1OvokRddEzY+1nDPXyVx42IFEi5TOU0q
         7o5YHwcDQYczRvcpK6KMGvtGpSua+LZhHlFMN5hquQ2aruQ5Yi4spiDmdIIb22gdrUdL
         jecFcJKnn5LVRoOOvYDHnkcUzyylp+oRgsyninYwCHFbxrQFbTbHz2cdfRxztE3trPGV
         5TRw==
X-Forwarded-Encrypted: i=1; AJvYcCV8tvXzTSjEbW9LnpWg8CDUzh670HYQubuzF4WyDn3bMOEakGbsrG4pSM9jXQgaNNdHV/QXqA4KIQH0UHUeCFzSvzfeSRqXfMvJuA==
X-Gm-Message-State: AOJu0Yw9RgT4aSCr/jv7zjV9LuXMu+wyki9Nb7f9+eEKetiut9RKHMek
	xwOVnKz5yz1CVtliP/JzxXiEhSBh0oW7stNQeL+TBYbSTVOC128a8lgusjCxfOw=
X-Google-Smtp-Source: AGHT+IHQyDwYG0Qz3gRPSUL6cqsj6KSr4ZKcxwVbzzFz3AteQUa82s3zvA1tcEd8ouz7/xjNb6SSAw==
X-Received: by 2002:a05:6870:2112:b0:21d:e28a:fb14 with SMTP id f18-20020a056870211200b0021de28afb14mr3709363oae.47.1708806058911;
        Sat, 24 Feb 2024 12:20:58 -0800 (PST)
Received: from localhost ([136.62.192.75])
        by smtp.gmail.com with ESMTPSA id h16-20020a056808015000b003c178f6a504sm393647oie.14.2024.02.24.12.20.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Feb 2024 12:20:58 -0800 (PST)
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
Subject: [PATCH v3 06/15] clk: samsung: Group CPU clock functions by chip
Date: Sat, 24 Feb 2024 14:20:44 -0600
Message-Id: <20240224202053.25313-7-semen.protsenko@linaro.org>
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

clk-cpu.c is going to get messy as new chips support is added.
Restructure the code by pulling related functions and definitions
together, grouping those by their relation to a particular chip or other
categories, to simplify the code navigation.

No functional change.

Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
---
Changes in v3:
  - none

Changes in v2:
  - none

 drivers/clk/samsung/clk-cpu.c | 114 ++++++++++++++++++----------------
 1 file changed, 61 insertions(+), 53 deletions(-)

diff --git a/drivers/clk/samsung/clk-cpu.c b/drivers/clk/samsung/clk-cpu.c
index 427018e8dd8c..d550a4bb632f 100644
--- a/drivers/clk/samsung/clk-cpu.c
+++ b/drivers/clk/samsung/clk-cpu.c
@@ -38,34 +38,6 @@
 #include "clk.h"
 #include "clk-cpu.h"
 
-#define E4210_SRC_CPU		0x0
-#define E4210_STAT_CPU		0x200
-#define E4210_DIV_CPU0		0x300
-#define E4210_DIV_CPU1		0x304
-#define E4210_DIV_STAT_CPU0	0x400
-#define E4210_DIV_STAT_CPU1	0x404
-
-#define E5433_MUX_SEL2		0x008
-#define E5433_MUX_STAT2		0x208
-#define E5433_DIV_CPU0		0x400
-#define E5433_DIV_CPU1		0x404
-#define E5433_DIV_STAT_CPU0	0x500
-#define E5433_DIV_STAT_CPU1	0x504
-
-#define E4210_DIV0_RATIO0_MASK	GENMASK(2, 0)
-#define E4210_DIV1_HPM_MASK	GENMASK(6, 4)
-#define E4210_DIV1_COPY_MASK	GENMASK(2, 0)
-#define E4210_MUX_HPM_MASK	BIT(20)
-#define E4210_DIV0_ATB_SHIFT	16
-#define E4210_DIV0_ATB_MASK	(DIV_MASK << E4210_DIV0_ATB_SHIFT)
-
-/* Divider stabilization time, msec */
-#define MAX_STAB_TIME		10
-#define MAX_DIV			8
-#define DIV_MASK		GENMASK(2, 0)
-#define DIV_MASK_ALL		GENMASK(31, 0)
-#define MUX_MASK		GENMASK(2, 0)
-
 struct exynos_cpuclk;
 
 typedef int (*exynos_rate_change_fn_t)(struct clk_notifier_data *ndata,
@@ -103,6 +75,15 @@ struct exynos_cpuclk {
 	exynos_rate_change_fn_t			post_rate_cb;
 };
 
+/* ---- Common code --------------------------------------------------------- */
+
+/* Divider stabilization time, msec */
+#define MAX_STAB_TIME		10
+#define MAX_DIV			8
+#define DIV_MASK		GENMASK(2, 0)
+#define DIV_MASK_ALL		GENMASK(31, 0)
+#define MUX_MASK		GENMASK(2, 0)
+
 /*
  * Helper function to wait until divider(s) have stabilized after the divider
  * value has changed.
@@ -142,33 +123,21 @@ static void wait_until_mux_stable(void __iomem *mux_reg, u32 mux_pos,
 	pr_err("%s: re-parenting mux timed-out\n", __func__);
 }
 
-/* common round rate callback usable for all types of CPU clocks */
-static long exynos_cpuclk_round_rate(struct clk_hw *hw, unsigned long drate,
-				     unsigned long *prate)
-{
-	struct clk_hw *parent = clk_hw_get_parent(hw);
-	*prate = clk_hw_round_rate(parent, drate);
-	return *prate;
-}
+/* ---- Exynos 3/4/5 -------------------------------------------------------- */
 
-/* common recalc rate callback usable for all types of CPU clocks */
-static unsigned long exynos_cpuclk_recalc_rate(struct clk_hw *hw,
-					       unsigned long parent_rate)
-{
-	/*
-	 * The CPU clock output (armclk) rate is the same as its parent
-	 * rate. Although there exist certain dividers inside the CPU
-	 * clock block that could be used to divide the parent clock,
-	 * the driver does not make use of them currently, except during
-	 * frequency transitions.
-	 */
-	return parent_rate;
-}
+#define E4210_SRC_CPU		0x0
+#define E4210_STAT_CPU		0x200
+#define E4210_DIV_CPU0		0x300
+#define E4210_DIV_CPU1		0x304
+#define E4210_DIV_STAT_CPU0	0x400
+#define E4210_DIV_STAT_CPU1	0x404
 
-static const struct clk_ops exynos_cpuclk_clk_ops = {
-	.recalc_rate = exynos_cpuclk_recalc_rate,
-	.round_rate = exynos_cpuclk_round_rate,
-};
+#define E4210_DIV0_RATIO0_MASK	GENMASK(2, 0)
+#define E4210_DIV1_HPM_MASK	GENMASK(6, 4)
+#define E4210_DIV1_COPY_MASK	GENMASK(2, 0)
+#define E4210_MUX_HPM_MASK	BIT(20)
+#define E4210_DIV0_ATB_SHIFT	16
+#define E4210_DIV0_ATB_MASK	(DIV_MASK << E4210_DIV0_ATB_SHIFT)
 
 /*
  * Helper function to set the 'safe' dividers for the CPU clock. The parameters
@@ -300,6 +269,15 @@ static int exynos_cpuclk_post_rate_change(struct clk_notifier_data *ndata,
 	return 0;
 }
 
+/* ---- Exynos5433 ---------------------------------------------------------- */
+
+#define E5433_MUX_SEL2		0x008
+#define E5433_MUX_STAT2		0x208
+#define E5433_DIV_CPU0		0x400
+#define E5433_DIV_CPU1		0x404
+#define E5433_DIV_STAT_CPU0	0x500
+#define E5433_DIV_STAT_CPU1	0x504
+
 /*
  * Helper function to set the 'safe' dividers for the CPU clock. The parameters
  * div and mask contain the divider value and the register bit mask of the
@@ -398,6 +376,36 @@ static int exynos5433_cpuclk_post_rate_change(struct clk_notifier_data *ndata,
 	return 0;
 }
 
+/* -------------------------------------------------------------------------- */
+
+/* Common round rate callback usable for all types of CPU clocks */
+static long exynos_cpuclk_round_rate(struct clk_hw *hw, unsigned long drate,
+				     unsigned long *prate)
+{
+	struct clk_hw *parent = clk_hw_get_parent(hw);
+	*prate = clk_hw_round_rate(parent, drate);
+	return *prate;
+}
+
+/* Common recalc rate callback usable for all types of CPU clocks */
+static unsigned long exynos_cpuclk_recalc_rate(struct clk_hw *hw,
+					       unsigned long parent_rate)
+{
+	/*
+	 * The CPU clock output (armclk) rate is the same as its parent
+	 * rate. Although there exist certain dividers inside the CPU
+	 * clock block that could be used to divide the parent clock,
+	 * the driver does not make use of them currently, except during
+	 * frequency transitions.
+	 */
+	return parent_rate;
+}
+
+static const struct clk_ops exynos_cpuclk_clk_ops = {
+	.recalc_rate = exynos_cpuclk_recalc_rate,
+	.round_rate = exynos_cpuclk_round_rate,
+};
+
 /*
  * This notifier function is called for the pre-rate and post-rate change
  * notifications of the parent clock of cpuclk.
-- 
2.39.2


