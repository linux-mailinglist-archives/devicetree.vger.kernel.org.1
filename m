Return-Path: <devicetree+bounces-217259-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A5317B57254
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 10:03:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id ECF1E189FCA8
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 08:04:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 200F92EC567;
	Mon, 15 Sep 2025 08:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="H0/FzE6s"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1896F2EC0A2
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 08:02:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757923353; cv=none; b=SSlDGoa2I9W4LbDfaB+nYCYJnZ88PqsbXup7BqRrfiEDICmJIs93ZwaWOGLwcb+kKq49FkA6/vrl01rrkWDOyN0aKDBf5g+l3wk3rtHUiGJDMRBKnGZwPscY2jtAoBwzRSkw4hJyXv3XKwXG+WL2AiK5f3MSe95f+upneCBku44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757923353; c=relaxed/simple;
	bh=Gobe3gcacEzjxq3TiZSj8gVH+MTvaW0vF7gQs/h1xFo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Xvc2FtKLFRuNIDzARvyYbYRmOSmTCbpYVW2IXOaqLLx6nvwy5wfBbZNE86hHjjBLtA3eHfzBd1NbLU66KcopAcRSSedUx+4EpNQoXr7WYfllQd6K+RMryc/UZldYc2DyM+uoRkJM6F3IZMXKobUXQ8YiWSH4mHgTjqpnFzccfWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=H0/FzE6s; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-57263febd12so1224580e87.1
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 01:02:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757923350; x=1758528150; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=APj+Tgp0XTk3Jgg5edx6R/2oZ09b0NwwwSYAX8oTvFc=;
        b=H0/FzE6sP7XpqfcsLHeYLJAX9HJasJ6mkQFq7bkji3BAioW4ahioKjZjbjup7vOUBx
         gfEDXBDDw3Ow1HwAscoS0BM5jWzQhaDjDCy9WVamx/O4hpsgnepRPaqEDUdr8yPj1HgI
         7o8skaG42cawg5Y9BRK+5VTDiEAhGoOfSCIifuqaQ07+pthF+ArmK2TQ+D1pdVOhqFLH
         O8qCzmGpUQAtibD1Fg9kkjbECnqZeJ9KncaCNxPLNQXsC685b5GFkJ20QxbQFHeIQdhQ
         5C3JKOo09mG7U/bPrWUHYGogX8GwRgHyaW3Gff8ZX9tvwqO/q8Zr+Hx+sOZ446QECORH
         7SRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757923350; x=1758528150;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=APj+Tgp0XTk3Jgg5edx6R/2oZ09b0NwwwSYAX8oTvFc=;
        b=F/b6TC6lZBvPdGAtQwb4Ifla4m1xbq9CLlgjcnb2EOI8cIt4kXfVODhrNGCqXxnVns
         0scmCOhAKSx7thRwyOAOw46eh9q2bMQqxqGx88cw+aIAQHDVZ9B8utDktLRIlF72GXhi
         uX7JNUzUylIv+g23AFhA9vhdDZL5zbmvTmzp5M0oZ36XmIj1d6wizwcmRKDFvgucxbpE
         k1wr94IPUT/JDHrBn2G3wUhgtTIx4MbuCjTKOQk0tDQx0jsO7TWgLJfuilnKFuSugi0X
         B9RRM86xgqlhBRv84kxpoWnHSdDDtapBEPw0c9QZ/YIecFby4HIKgef5QuyidaLDyGgM
         IuqA==
X-Forwarded-Encrypted: i=1; AJvYcCVfexp5bhOq4yzmcOVskr/y3RxTMZmL8tvOsOBOtf+iCVWn5ej+w1aTc293NTvZEoRtbQlEG6jE0zLE@vger.kernel.org
X-Gm-Message-State: AOJu0YzOQ4nglz2vMr4/UdyMe3i5NAFwX/vh6n/AePxEIHsW4PTMTM7A
	uytJHJgbOraL/g25hu18zW0P1hh++FxvMJ/5xulhPrPjw4gpAaftACGe
X-Gm-Gg: ASbGncuOvExBoT6wC4WNxTJtYsxDUVOJRvcGTL7mRMaLyc2F/ZJ+apkBDDY/hqubK82
	mPOXPHDoFOhO1Lp4RG5xiFoCCvHd1wO8s35sJDxPddSwGPpRxLfGXz+hSEOB/+GVn6f4bcKRlAN
	qd1iebvnW1OwdnADzj/JwcvzfnkcNmLLCFHbeHrgsmroW4xsWu3UhFRbgL/7yJ/8AqWUqiVhDSI
	CGxXLzyIW4Ax0QhIlcSvb23VLB+DMLW5+fw4D7eiTkbh/uvmAdBEJ4Ua3w1oyHpv+oPJbtjWFFE
	oK/0htJtAXqH4dGnkF0d2fniLPPDEU3i7weYWE0eMTau6VleqTE2Nma0rv94b85QVMu3m9PLvBH
	Pbxlx9C+soA6rgA==
X-Google-Smtp-Source: AGHT+IFETlinsBZ9CIzysT7U/mhptSzIvIHcUfuvSzk7UV0WFcZE8DHw3DchmG7FGhfUAhPjJIeVsQ==
X-Received: by 2002:a05:6512:ad4:b0:55f:702c:ff1d with SMTP id 2adb3069b0e04-570601d3e20mr4030976e87.13.1757923349733;
        Mon, 15 Sep 2025 01:02:29 -0700 (PDT)
Received: from xeon.. ([188.163.112.70])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-56e6460dec4sm3392381e87.103.2025.09.15.01.02.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 01:02:29 -0700 (PDT)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <treding@nvidia.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Prashant Gaikwad <pgaikwad@nvidia.com>,
	Mikko Perttunen <mperttunen@nvidia.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Dmitry Osipenko <digetx@gmail.com>,
	MyungJoo Ham <myungjoo.ham@samsung.com>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	Svyatoslav Ryhel <clamor95@gmail.com>
Cc: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-pm@vger.kernel.org
Subject: [PATCH v3 06/11] clk: tegra: remove EMC to MC clock mux in Tegra114
Date: Mon, 15 Sep 2025 11:01:52 +0300
Message-ID: <20250915080157.28195-7-clamor95@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250915080157.28195-1-clamor95@gmail.com>
References: <20250915080157.28195-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Configure EMC without mux for correct EMC driver support.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 drivers/clk/tegra/clk-tegra114.c | 48 ++++++++++++++++++++++----------
 1 file changed, 33 insertions(+), 15 deletions(-)

diff --git a/drivers/clk/tegra/clk-tegra114.c b/drivers/clk/tegra/clk-tegra114.c
index 8bde72aa5e68..6b3a140772c2 100644
--- a/drivers/clk/tegra/clk-tegra114.c
+++ b/drivers/clk/tegra/clk-tegra114.c
@@ -622,10 +622,6 @@ static const char *mux_plld_out0_plld2_out0[] = {
 };
 #define mux_plld_out0_plld2_out0_idx NULL
 
-static const char *mux_pllmcp_clkm[] = {
-	"pll_m_out0", "pll_c_out0", "pll_p_out0", "clk_m", "pll_m_ud",
-};
-
 static const struct clk_div_table pll_re_div_table[] = {
 	{ .val = 0, .div = 1 },
 	{ .val = 1, .div = 2 },
@@ -672,7 +668,6 @@ static struct tegra_clk tegra114_clks[tegra_clk_max] __initdata = {
 	[tegra_clk_csi] = { .dt_id = TEGRA114_CLK_CSI, .present = true },
 	[tegra_clk_i2c2] = { .dt_id = TEGRA114_CLK_I2C2, .present = true },
 	[tegra_clk_uartc] = { .dt_id = TEGRA114_CLK_UARTC, .present = true },
-	[tegra_clk_emc] = { .dt_id = TEGRA114_CLK_EMC, .present = true },
 	[tegra_clk_usb2] = { .dt_id = TEGRA114_CLK_USB2, .present = true },
 	[tegra_clk_usb3] = { .dt_id = TEGRA114_CLK_USB3, .present = true },
 	[tegra_clk_vde_8] = { .dt_id = TEGRA114_CLK_VDE, .present = true },
@@ -1048,14 +1043,7 @@ static __init void tegra114_periph_clk_init(void __iomem *clk_base,
 					     0, 82, periph_clk_enb_refcnt);
 	clks[TEGRA114_CLK_DSIB] = clk;
 
-	/* emc mux */
-	clk = clk_register_mux(NULL, "emc_mux", mux_pllmcp_clkm,
-			       ARRAY_SIZE(mux_pllmcp_clkm),
-			       CLK_SET_RATE_NO_REPARENT,
-			       clk_base + CLK_SOURCE_EMC,
-			       29, 3, 0, &emc_lock);
-
-	clk = tegra_clk_register_mc("mc", "emc_mux", clk_base + CLK_SOURCE_EMC,
+	clk = tegra_clk_register_mc("mc", "emc", clk_base + CLK_SOURCE_EMC,
 				    &emc_lock);
 	clks[TEGRA114_CLK_MC] = clk;
 
@@ -1321,6 +1309,28 @@ static int tegra114_reset_deassert(unsigned long id)
 	return 0;
 }
 
+#ifdef CONFIG_TEGRA124_CLK_EMC
+static struct clk *tegra114_clk_src_onecell_get(struct of_phandle_args *clkspec,
+						void *data)
+{
+	struct clk_hw *hw;
+	struct clk *clk;
+
+	clk = of_clk_src_onecell_get(clkspec, data);
+	if (IS_ERR(clk))
+		return clk;
+
+	hw = __clk_get_hw(clk);
+
+	if (clkspec->args[0] == TEGRA114_CLK_EMC) {
+		if (!tegra124_clk_emc_driver_available(hw))
+			return ERR_PTR(-EPROBE_DEFER);
+	}
+
+	return clk;
+}
+#endif
+
 static void __init tegra114_clock_init(struct device_node *np)
 {
 	struct device_node *node;
@@ -1362,16 +1372,24 @@ static void __init tegra114_clock_init(struct device_node *np)
 	tegra_audio_clk_init(clk_base, pmc_base, tegra114_clks,
 			     tegra114_audio_plls,
 			     ARRAY_SIZE(tegra114_audio_plls), 24000000);
+
+	tegra_clk_apply_init_table = tegra114_clock_apply_init_table;
+
 	tegra_super_clk_gen4_init(clk_base, pmc_base, tegra114_clks,
 					&pll_x_params);
 
 	tegra_init_special_resets(1, tegra114_reset_assert,
 				  tegra114_reset_deassert);
 
+#ifdef CONFIG_TEGRA124_CLK_EMC
+	tegra_add_of_provider(np, tegra114_clk_src_onecell_get);
+	clks[TEGRA114_CLK_EMC] = tegra124_clk_register_emc(clk_base, np,
+							   &emc_lock);
+#else
 	tegra_add_of_provider(np, of_clk_src_onecell_get);
-	tegra_register_devclks(devclks, ARRAY_SIZE(devclks));
+#endif
 
-	tegra_clk_apply_init_table = tegra114_clock_apply_init_table;
+	tegra_register_devclks(devclks, ARRAY_SIZE(devclks));
 
 	tegra_cpu_car_ops = &tegra114_cpu_car_ops;
 }
-- 
2.48.1


