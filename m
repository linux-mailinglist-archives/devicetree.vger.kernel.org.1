Return-Path: <devicetree+bounces-129376-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C4BDF9EB810
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 18:19:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B936E1881619
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 17:18:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECC54237A26;
	Tue, 10 Dec 2024 17:10:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="qwepIQu8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E33752343A8
	for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 17:10:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733850610; cv=none; b=Btb628rGlLURk7TGeywu+S6Pw+tdcTJk+B2o1I+sKLdZwlkEs+yIUoJn7vyODm0aqx2Yj/PYxmgVM7i2n42jcd6kRYGXxJSOAsPmzmsL2Dx+jx6w+pqFPJupHMuVAbe1iiElen3ALT6kx5lzSlR56QHCGspQQIT5RI/a0wvA19U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733850610; c=relaxed/simple;
	bh=xBCdUB4AW8mhnjHqG44vkCdEwLfV+6wgiY3J65tG+OY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Zg4l7jI/w+yLt1VlZpMDjXuGQFTKLfBpTO4FGuG+kxxOXu2p1mmIyWQ/W8bwIw60pTpHh8a0bnws+odYxRZc7BSrhNC0QCx0wkIa4gYKSYF61lBuUdMOPvoZDeaGoIGP8stapBsBsuxDl49SqQV1IxZG9ELzoef3S2ljUZPO1bo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=qwepIQu8; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-5d3f28a4fccso3467981a12.2
        for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 09:10:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1733850607; x=1734455407; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uadH9PhfIl+f0c96d/6lazQpTxglh5DEUY3M9hlx46E=;
        b=qwepIQu8Yg6rq7XNULediZPPpEvxO93yeuXndvMNU0jbQ/voAmEBjkAxOZ6e6rsxUC
         FK1SfzKx4XWvU1YQ3TAFb92flx3FGRzIR6zZ92Y7MmnlZNzsEvJhuiyRWdLCSKsct2lY
         cDxy0+F3Y0rLBzVgos2JQ0C47F57+8Zv98/uEHA+x/6H6Q/KpprkqZQ9otSyy3HQ5IuW
         eYMBbUP6pG6QifLHnNMV7QIYyRcCSHa6fsSOA7WlnfWPFnsyb9fSqUTaULNBdf6Ha1jy
         n6mfe8+Oqd1NLmwFALkYbAHJ63Jx+HZanXq55UkoRX4ZQs+IBB9BFVQcg7aymtqSAYfm
         JMiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733850607; x=1734455407;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uadH9PhfIl+f0c96d/6lazQpTxglh5DEUY3M9hlx46E=;
        b=QDiBk2NCd8m07F9sxUkijePQeX0xMaJAREyPnkNTSitub+xXKIBysdlM2wpNvDCycz
         6XCEqJnNXrrrdx4giY0jf97s8M6JXZ1E2BYHZwQ/3JEVY/FeyuByuzCfDBmjlQ02/gwj
         p7+qBhBfuY7tcP7JS6FxYnzlYAc+4bKbrGRJ+c8bd26kKxbmAZigsuG9I7B79stssLfv
         N+P5bH8XmAAc6Gp7x1ZsauU0URHIUG7qUwm3vfoyLNrGQPEl/cppT5TWSfTlwgvOd0Jh
         Rg7lQJgpxA3jtRboZqbkW4z6dc8OD5+qYl0GZNwpaKI+8wt0W4qO0CSE6qFyyAmZPKRR
         XBow==
X-Forwarded-Encrypted: i=1; AJvYcCUgXWCV5MkYL89z77liSB8ImrjZX9+K8Ky8BUNwA+Vu5cTJkEKlnSKfos4D7PnoKNhnmopbkwX0qgpt@vger.kernel.org
X-Gm-Message-State: AOJu0YxF+8NF4YP9CwNLLhG1gIXkMKOKF4PRckID/RRJVjMe6oU9vaVX
	ml4v1tdwaHndN4k8M1BQbvcez5l2RNtKCapGHa+1jPSfXVMw04DATuc6Ex0hvYE=
X-Gm-Gg: ASbGncsgaQe5tOeTxEK3/MRD9Qk58xysw6gL6CNi8RUGV7qMP9V6i4kYt4rnMtG0pF7
	1+O9TqQ1UQxpabtEu/RluGalfgwggBswvIBA1+eMGIF7U4+Dj1kBqUzy28RxCo7o7D4GknJpaXD
	+pAhLdbgoFpxnMuz5OSOYNhgJxw1CkeOkyDiegf+CJ8doDaSiN8PyoatUXJWV/Qwo6/WbVGbucv
	Et99A6+vf0wvpUNMAfWynyf1JF+P42RqJ6JpqSirTtugjLbzmEal3nyhvaoWo/GdcLGEvxFQ368
	9La0hhHx
X-Google-Smtp-Source: AGHT+IGFg61AhXK6q2yCp479aYEgRKUVM1++05q63Nd9oxa57q0bisHWfgqRash6JB5OY1cEW+iywA==
X-Received: by 2002:a05:6402:4005:b0:5d2:7270:6125 with SMTP id 4fb4d7f45d1cf-5d3be6889e3mr17256633a12.8.1733850607270;
        Tue, 10 Dec 2024 09:10:07 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.161])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d3e7936581sm4853124a12.56.2024.12.10.09.10.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Dec 2024 09:10:06 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: geert+renesas@glider.be,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh+dt@kernel.org,
	lgirdwood@gmail.com,
	broonie@kernel.org,
	magnus.damm@gmail.com,
	perex@perex.cz,
	tiwai@suse.com,
	p.zabel@pengutronix.de,
	biju.das.jz@bp.renesas.com
Cc: claudiu.beznea@tuxon.dev,
	linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	alsa-devel@alsa-project.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v4 01/24] clk: versaclock3: Prepare for the addition of 5L35023 device
Date: Tue, 10 Dec 2024 19:09:30 +0200
Message-Id: <20241210170953.2936724-2-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20241210170953.2936724-1-claudiu.beznea.uj@bp.renesas.com>
References: <20241210170953.2936724-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

The 5P35023 and 5L35035 Versa 3 clock generator variants are different but
the versaclock3 driver could be used with small adjustments. The features
that are implemented in driver and differs b/w variants are the PLL2 Fvco
and clock sel bit for SE2 clock. Adjust the driver to prepare for the
addition of 5L35023 device.

Reviewed-by: Biju Das <biju.das.jz@bp.renesas.com>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v4:
- none

Changes in v3:
- collected tags

Changes in v2:
- none

 drivers/clk/clk-versaclock3.c | 61 ++++++++++++++++++++++++-----------
 1 file changed, 43 insertions(+), 18 deletions(-)

diff --git a/drivers/clk/clk-versaclock3.c b/drivers/clk/clk-versaclock3.c
index 76d7ea1964c3..1398d16df5d0 100644
--- a/drivers/clk/clk-versaclock3.c
+++ b/drivers/clk/clk-versaclock3.c
@@ -78,9 +78,6 @@
 #define VC3_PLL1_VCO_MIN		300000000UL
 #define VC3_PLL1_VCO_MAX		600000000UL
 
-#define VC3_PLL2_VCO_MIN		400000000UL
-#define VC3_PLL2_VCO_MAX		1200000000UL
-
 #define VC3_PLL3_VCO_MIN		300000000UL
 #define VC3_PLL3_VCO_MAX		800000000UL
 
@@ -147,9 +144,13 @@ struct vc3_pfd_data {
 	u8 mdiv2_bitmsk;
 };
 
+struct vc3_vco {
+	unsigned long min;
+	unsigned long max;
+};
+
 struct vc3_pll_data {
-	unsigned long vco_min;
-	unsigned long vco_max;
+	struct vc3_vco vco;
 	u8 num;
 	u8 int_div_msb_offs;
 	u8 int_div_lsb_offs;
@@ -166,12 +167,17 @@ struct vc3_div_data {
 struct vc3_hw_data {
 	struct clk_hw hw;
 	struct regmap *regmap;
-	const void *data;
+	void *data;
 
 	u32 div_int;
 	u32 div_frc;
 };
 
+struct vc3_hw_cfg {
+	struct vc3_vco pll2_vco;
+	u32 se2_clk_sel_msk;
+};
+
 static const struct clk_div_table div1_divs[] = {
 	{ .val = 0, .div = 1, }, { .val = 1, .div = 4, },
 	{ .val = 2, .div = 5, }, { .val = 3, .div = 6, },
@@ -386,10 +392,10 @@ static long vc3_pll_round_rate(struct clk_hw *hw, unsigned long rate,
 	const struct vc3_pll_data *pll = vc3->data;
 	u64 div_frc;
 
-	if (rate < pll->vco_min)
-		rate = pll->vco_min;
-	if (rate > pll->vco_max)
-		rate = pll->vco_max;
+	if (rate < pll->vco.min)
+		rate = pll->vco.min;
+	if (rate > pll->vco.max)
+		rate = pll->vco.max;
 
 	vc3->div_int = rate / *parent_rate;
 
@@ -680,8 +686,10 @@ static struct vc3_hw_data clk_pll[] = {
 			.num = VC3_PLL1,
 			.int_div_msb_offs = VC3_PLL1_LOOP_FILTER_N_DIV_MSB,
 			.int_div_lsb_offs = VC3_PLL1_VCO_N_DIVIDER,
-			.vco_min = VC3_PLL1_VCO_MIN,
-			.vco_max = VC3_PLL1_VCO_MAX
+			.vco = {
+				.min = VC3_PLL1_VCO_MIN,
+				.max = VC3_PLL1_VCO_MAX
+			}
 		},
 		.hw.init = &(struct clk_init_data) {
 			.name = "pll1",
@@ -698,8 +706,6 @@ static struct vc3_hw_data clk_pll[] = {
 			.num = VC3_PLL2,
 			.int_div_msb_offs = VC3_PLL2_FB_INT_DIV_MSB,
 			.int_div_lsb_offs = VC3_PLL2_FB_INT_DIV_LSB,
-			.vco_min = VC3_PLL2_VCO_MIN,
-			.vco_max = VC3_PLL2_VCO_MAX
 		},
 		.hw.init = &(struct clk_init_data) {
 			.name = "pll2",
@@ -716,8 +722,10 @@ static struct vc3_hw_data clk_pll[] = {
 			.num = VC3_PLL3,
 			.int_div_msb_offs = VC3_PLL3_LOOP_FILTER_N_DIV_MSB,
 			.int_div_lsb_offs = VC3_PLL3_N_DIVIDER,
-			.vco_min = VC3_PLL3_VCO_MIN,
-			.vco_max = VC3_PLL3_VCO_MAX
+			.vco = {
+				.min = VC3_PLL3_VCO_MIN,
+				.max = VC3_PLL3_VCO_MAX
+			}
 		},
 		.hw.init = &(struct clk_init_data) {
 			.name = "pll3",
@@ -901,7 +909,6 @@ static struct vc3_hw_data clk_mux[] = {
 	[VC3_SE2_MUX] = {
 		.data = &(struct vc3_clk_data) {
 			.offs = VC3_SE2_CTRL_REG0,
-			.bitmsk = VC3_SE2_CTRL_REG0_SE2_CLK_SEL
 		},
 		.hw.init = &(struct clk_init_data) {
 			.name = "se2_mux",
@@ -982,6 +989,7 @@ static int vc3_probe(struct i2c_client *client)
 {
 	struct device *dev = &client->dev;
 	u8 settings[NUM_CONFIG_REGISTERS];
+	const struct vc3_hw_cfg *data;
 	struct regmap *regmap;
 	const char *name;
 	int ret, i;
@@ -1029,9 +1037,16 @@ static int vc3_probe(struct i2c_client *client)
 					     clk_pfd[i].hw.init->name);
 	}
 
+	data = i2c_get_match_data(client);
+
 	/* Register pll's */
 	for (i = 0; i < ARRAY_SIZE(clk_pll); i++) {
 		clk_pll[i].regmap = regmap;
+		if (i == VC3_PLL2) {
+			struct vc3_pll_data *pll_data = clk_pll[i].data;
+
+			pll_data->vco = data->pll2_vco;
+		}
 		ret = devm_clk_hw_register(dev, &clk_pll[i].hw);
 		if (ret)
 			return dev_err_probe(dev, ret, "%s failed\n",
@@ -1059,6 +1074,11 @@ static int vc3_probe(struct i2c_client *client)
 	/* Register clk muxes */
 	for (i = 0; i < ARRAY_SIZE(clk_mux); i++) {
 		clk_mux[i].regmap = regmap;
+		if (i == VC3_SE2_MUX) {
+			struct vc3_clk_data *clk_data = clk_mux[i].data;
+
+			clk_data->bitmsk = data->se2_clk_sel_msk;
+		}
 		ret = devm_clk_hw_register(dev, &clk_mux[i].hw);
 		if (ret)
 			return dev_err_probe(dev, ret, "%s failed\n",
@@ -1108,8 +1128,13 @@ static int vc3_probe(struct i2c_client *client)
 	return ret;
 }
 
+static const struct vc3_hw_cfg vc3_5p = {
+	.pll2_vco = { .min = 400000000UL, .max = 1200000000UL },
+	.se2_clk_sel_msk = BIT(6),
+};
+
 static const struct of_device_id dev_ids[] = {
-	{ .compatible = "renesas,5p35023" },
+	{ .compatible = "renesas,5p35023", .data = &vc3_5p },
 	{ /* Sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, dev_ids);
-- 
2.39.2


