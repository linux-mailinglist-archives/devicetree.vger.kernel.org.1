Return-Path: <devicetree+bounces-44563-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 87D1C85EF7B
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 04:03:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D3E382846EC
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 03:03:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A7DE1CD25;
	Thu, 22 Feb 2024 03:02:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mazCR3HC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com [209.85.167.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0582D17BCA
	for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 03:02:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708570964; cv=none; b=f06TVB8lR0bLsMkb9fy6XPJ+2JhLhXthOveWTTooUyyQg8ZTcISP7QUOOPEXDZ9+mpy+YCeq5oKb3h0fZqSFBCY9Z1a1sRKc8GcGCmaVKxDa4hU2VIf/t7FSkWGA5/odRUIju5uKVAUUQogzi7mTuLTos0aZYM2tGRJBy/hO9MU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708570964; c=relaxed/simple;
	bh=8EM31Z5cZLIVs8DbsDC/S2VLghlY65Fl1bnwrB25vT8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=WqBCj75GRxwIxwzCVlNN5D/xZfRRriEbG7LLmyUZDEeESajXjwZdcww5EmD+xtGOAOaeqMsWItfLnTGLip1OMgq5grP6u640kXDa4jZ1bd2nnBwUer6eTtDRVzfHcZOVN1Gwp7EkFY4iBwQFeNo2bdixSDsFXgbBkEPI5G7IQTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mazCR3HC; arc=none smtp.client-ip=209.85.167.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oi1-f179.google.com with SMTP id 5614622812f47-3bd72353d9fso5408641b6e.3
        for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 19:02:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708570961; x=1709175761; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dA8iJf/laPqQRe+Yi4M7uYUdy+5iI2o8j4rYPxsJ3iw=;
        b=mazCR3HCPLvIde0WcMV+/umNY9ZcgpU7foNZiJEk4kWauw4IkO1mMoC18eI4uToHYH
         niZlOwGvpGZHPj6b7E66VBUwRrIpnnTS9V6IVxH6BDvIj8A1l4Y7TcEn3iZIhJ67R3Cn
         8h+Jf2r4EnmDE+A9hb+DQ1mRMg3YjxR9sg9hKCWgAtX0ZLI2SMm3DPDYztILRxtYQZIK
         krBp/czyk5P+RCdBG10TF9pnG1TzP4LfCQMaCHxVGE6aIPJiYMU/ZlvZ7+E/sygHp/JA
         JmLQazu0STpn8FW9CROJfCXEUXxqE0ttRiQ6Kv7Nkhtv7klAYgBE7FwEMIsKWAGrn8kk
         8LYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708570961; x=1709175761;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dA8iJf/laPqQRe+Yi4M7uYUdy+5iI2o8j4rYPxsJ3iw=;
        b=pyvCv/0W1z5TWDPFDC4MkwrmTJXM+VIp9s4TRo19atvXHQNIJoePhaNm+7qUg6DBOp
         OwzIlX2AsZM1SswlZ81C21otKhNy2Ssf8Ke0GVDlobYX2r1UQ87NLvsggmehfMvHcheY
         0bwG+DKojxrAACFsiBu4NFIRv2mMDVtlnJjx7NgCQzJpABitMPA3Pumtj0ARE6eNqEAN
         FXQoJ3uXXH1ORq6dO0QVyWsO7X+D1b3IxC1Dfx94Dr75R/whiBNcrzUD6LLe4hxiw8m8
         JleEDlyd+jRqdgXg8ehqzdBwAn8G/rCqk7Oyxy0GY6Bp9a8+W3JcZQUR9dNPizY/xveo
         w2Mw==
X-Forwarded-Encrypted: i=1; AJvYcCWPZDEFSf9Kf1X7IWo340Zd8JSWFwMebyTvyAoBYEH73IsyhaNeqBA+YPZISciOo3/kelCa0o/1hoHi9zeOVEyELDNeHnjftH9/eg==
X-Gm-Message-State: AOJu0Yx+MfIXDosMd43YXichfxcKdFqXPp/jOm9xZvp1BzZ0gLzqsLps
	AtLNRhmcMA8hASX41WD6s0k8Mk2D7m8J2UQdP+BLz8i3GN2vwrvUIFYbsvkV+ASy9ucuFzTOdvB
	x
X-Google-Smtp-Source: AGHT+IENe0nxuoXBYPaz1EEYdHcMjdNKSHKJGqYj4olutBXIBul4W86ca3W7naxV1nOe2/b2wwewHA==
X-Received: by 2002:a05:6808:3195:b0:3c1:66ec:5aa with SMTP id cd21-20020a056808319500b003c166ec05aamr10457919oib.22.1708570961120;
        Wed, 21 Feb 2024 19:02:41 -0800 (PST)
Received: from localhost ([136.62.192.75])
        by smtp.gmail.com with ESMTPSA id 5-20020aca1205000000b003c133696f42sm1768433ois.29.2024.02.21.19.02.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Feb 2024 19:02:40 -0800 (PST)
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
Subject: [PATCH v2 06/15] clk: samsung: Group CPU clock functions by chip
Date: Wed, 21 Feb 2024 21:02:26 -0600
Message-Id: <20240222030235.27815-7-semen.protsenko@linaro.org>
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

clk-cpu.c is going to get messy as new chips support is added.
Restructure the code by pulling related functions and definitions
together, grouping those by their relation to a particular chip or other
categories, to simplify the code navigation.

No functional change.

Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
---
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


