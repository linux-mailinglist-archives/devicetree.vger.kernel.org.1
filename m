Return-Path: <devicetree+bounces-135375-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 094C6A00C2F
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 17:38:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 588851884950
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 16:38:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5DF31FBEA2;
	Fri,  3 Jan 2025 16:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="k/gZQEJt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4E801FBEAA
	for <devicetree@vger.kernel.org>; Fri,  3 Jan 2025 16:38:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735922313; cv=none; b=e5aRduc7A/fPB/P6nXIAWhBWu6wHfkah/QSs0kaoodf4GxDa0Oaa56pG5IOga+qAbIEtsaE9pbVajS1irnhWUm87UGtZGfYddflYFmQbXCrE9a1Q9ORXYbTKsfFNMGLpGksw7pPgNVTKRuvS287br5QJMTLkEcWmfHwxFjXG4zU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735922313; c=relaxed/simple;
	bh=rKeDJdkJUvYXPSfCRoD0lCN7VYkcnSZTWQUumgyTv/g=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=F9ZfsiBsz7OYD3td7CWeg/wbE3RITtP8CXAg9POp/rhzFO6gMi5cYRBOR7VXG9KM7XT3Tb2BlVq9+6tkyr5QAILfOy3BaUAvEfKoaJowCVvqe26qVatrS/kUifcr+py1O3e/Hs0YJKSEdCvWKcoh6I1DRav8OlmBZrclFjaAvv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=k/gZQEJt; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-aa66e4d1d5aso1941762666b.2
        for <devicetree@vger.kernel.org>; Fri, 03 Jan 2025 08:38:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1735922310; x=1736527110; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uRfd2J8GP5C8knwZHf/66JpMVkPptrjLbcLPhoT3Dxw=;
        b=k/gZQEJtA+7erqO0VL71gsC9OEB1TUiEe3Dx7ue0FuvNGsZOnEH0+ZryT0kxWczm8M
         XELKmsV1Yjn1bbdjBx/x9anoTcTS8VfmLBMr6+h9Iexrh8iUkih3EwGEZjC8cf0q7BsN
         BpyyqxWZtwlFPs34r//r+6q/y8nNQ3qyV75hW4OrFjzkNmhivEXyasDqwtLkkhPgyilC
         +T0ZbO/EKcuZ2ee41u6udGg2IPQWKmzYgOoLC6OUPBiYKO/wRo0LB/wWudPdtxHZQV03
         YSCKCdEKHXpmPhuVE8gPUMatpoQrgMjZv19Cna20WSqBMOw9zcsrWvqNHgX7bZXJq8Mx
         n/4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735922310; x=1736527110;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uRfd2J8GP5C8knwZHf/66JpMVkPptrjLbcLPhoT3Dxw=;
        b=klp3BnNJ+EeTazQ+8bVNlet9zY1AmLRiykrlN5ZtLvp3U8CYZEgzGGv5lTYp3x4UJ7
         wXoDgoB9zMfOhXQjORT0XBSJBiYhBGCagO1bXRl+jHjQo2O/eabFeYBP0Hyf/g7+BzaL
         5n/jqQXmtBulBosaSNnES7b+1jz5W1zcX0qpMHEVk31PA70ZiUpPwRCDBAehYuGUUpvO
         85s2yE+UeK86W9wqQRs8ooCIMYv08FYjntngpPLYgPdAQXuQUrRnjoMCqjwbiEaIu9bS
         d7JwbAW0qkB+2p5TPwJaDHH+sR/utAQKLvCKOGoQmg018cEAKFcJZT5Bk/J59gl6tP71
         5USw==
X-Forwarded-Encrypted: i=1; AJvYcCXqdsFtpjUr3VMAUOU80k/t4p38kURYEiFL85Pkqvov78zQJy0HW6gG8lGGMEZ7LcqMyQcLRoMmeVJK@vger.kernel.org
X-Gm-Message-State: AOJu0Yz8w9TLVGbwuDeVOiaLCdCc7084q8csZ3CYkcPLxyHpttTMM1N0
	dbQdP30Jggw1UYVX/uKps40klal6AC8D2WNTIghJfpo5r9pthowPw+xcnfDFpus=
X-Gm-Gg: ASbGncuZGJTYMLmomnWYk1aKCeqZwaTkjS7mhC724ydWLRSQV36qWfmx4AQ/hKbVg5K
	HRTFOdj3ymNDwobmnK9WYm67cgTRp0GtuxYSmXnlOaPtfporoE4gDjCVdiBhnnonuRpgRBZD7Xn
	FOMQQqsjWSVTCE7GzPGB2uNd9XYYEAm4Uwq1z0/U6yc88jJPTYn1Lp3d5/i7LHWRFYePqVXm9z/
	eBbPLqPBJ5lNM+9M6+eyzknKUQP2MnE6tez8zBf8r8A/CP13U0L0WbHBKb/lI5f7y+4aATFqKE9
	dN3IWTqsNmc=
X-Google-Smtp-Source: AGHT+IEDncREyuqiaeFdEZrch8doNfoioGsr8GniNw17HEMgfl8Mb5jP1IALi9TIgf4Be+b+F0vcRQ==
X-Received: by 2002:a17:907:944f:b0:aac:439:10ce with SMTP id a640c23a62f3a-aac2ba3c11amr5503329166b.27.1735922310189;
        Fri, 03 Jan 2025 08:38:30 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.102])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0e8953b6sm1932984066b.65.2025.01.03.08.38.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jan 2025 08:38:29 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: rafael@kernel.org,
	daniel.lezcano@linaro.org,
	rui.zhang@intel.com,
	lukasz.luba@arm.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	p.zabel@pengutronix.de,
	ulf.hansson@linaro.org
Cc: claudiu.beznea@tuxon.dev,
	linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH 1/6] clk: renesas: r9a08g045: Add clocks, resets and power domain support for the TSU IP
Date: Fri,  3 Jan 2025 18:38:00 +0200
Message-ID: <20250103163805.1775705-2-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250103163805.1775705-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250103163805.1775705-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Add clocks, resets and power domains for the TSU IP available on the
Renesas RZ/G3S SoC.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
 drivers/clk/renesas/r9a08g045-cpg.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/clk/renesas/r9a08g045-cpg.c b/drivers/clk/renesas/r9a08g045-cpg.c
index 0e7e3bf05b52..bc44e08e7eb9 100644
--- a/drivers/clk/renesas/r9a08g045-cpg.c
+++ b/drivers/clk/renesas/r9a08g045-cpg.c
@@ -241,6 +241,7 @@ static const struct rzg2l_mod_clk r9a08g045_mod_clks[] = {
 	DEF_MOD("gpio_hclk",		R9A08G045_GPIO_HCLK, R9A08G045_OSCCLK, 0x598, 0),
 	DEF_MOD("adc_adclk",		R9A08G045_ADC_ADCLK, R9A08G045_CLK_TSU, 0x5a8, 0),
 	DEF_MOD("adc_pclk",		R9A08G045_ADC_PCLK, R9A08G045_CLK_TSU, 0x5a8, 1),
+	DEF_MOD("tsu_pclk",		R9A08G045_TSU_PCLK, R9A08G045_CLK_TSU, 0x5ac, 0),
 	DEF_MOD("vbat_bclk",		R9A08G045_VBAT_BCLK, R9A08G045_OSCCLK, 0x614, 0),
 };
 
@@ -279,6 +280,7 @@ static const struct rzg2l_reset r9a08g045_resets[] = {
 	DEF_RST(R9A08G045_GPIO_SPARE_RESETN, 0x898, 2),
 	DEF_RST(R9A08G045_ADC_PRESETN, 0x8a8, 0),
 	DEF_RST(R9A08G045_ADC_ADRST_N, 0x8a8, 1),
+	DEF_RST(R9A08G045_TSU_PRESETN, 0x8ac, 0),
 	DEF_RST(R9A08G045_VBAT_BRESETN, 0x914, 0),
 };
 
@@ -353,6 +355,8 @@ static const struct rzg2l_cpg_pm_domain_init_data r9a08g045_pm_domains[] = {
 				DEF_REG_CONF(CPG_BUS_MCPU3_MSTOP, BIT(4)), 0),
 	DEF_PD("adc",		R9A08G045_PD_ADC,
 				DEF_REG_CONF(CPG_BUS_MCPU2_MSTOP, BIT(14)), 0),
+	DEF_PD("tsu",		R9A08G045_PD_TSU,
+				DEF_REG_CONF(CPG_BUS_MCPU2_MSTOP, BIT(15)), 0),
 	DEF_PD("vbat",		R9A08G045_PD_VBAT,
 				DEF_REG_CONF(CPG_BUS_MCPU3_MSTOP, BIT(8)),
 				GENPD_FLAG_ALWAYS_ON),
-- 
2.43.0


