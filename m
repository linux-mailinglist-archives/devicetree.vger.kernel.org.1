Return-Path: <devicetree+bounces-17071-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A06D77F11B2
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 12:18:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5927C282488
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 11:18:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78A531428C;
	Mon, 20 Nov 2023 11:18:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="Wd8lqIVa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7591510E9
	for <devicetree@vger.kernel.org>; Mon, 20 Nov 2023 03:18:32 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-40859c466efso14931295e9.3
        for <devicetree@vger.kernel.org>; Mon, 20 Nov 2023 03:18:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1700479111; x=1701083911; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C3zrIDT5N9p6eJitAm1oJTITcoW+HOP0VmG8nkt3FV0=;
        b=Wd8lqIVaCz4zOdau+zWarXenNTr0tUgyzonJJQ849gD475OpVKsomkngmvhBQuCN+Z
         ZL6CvCaK50rKULg6/fJwMU0vxQ/VzI5lEykagt7oCSfdpi9KxyOVZThKK0tITcp/WYkH
         7RpFQqqZZ2NK1KQTkVljw6v6nX1NUOKryPZmg8XQJ2vVAiD0vQxLZTP11b2itz9o0CN4
         gJwlYQ/PFGPHO3M/L14hCvDszgDeGkh3CD8JLrUpTqNwr8KV2XYN4MyIdMHPzBbWxdb1
         L6MB9fYoMWn4doMIBAa7/9axCfCcZADr0FQXIr9d5RvjZepveFk3yjMpccU6WNiMckyO
         IYgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700479111; x=1701083911;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=C3zrIDT5N9p6eJitAm1oJTITcoW+HOP0VmG8nkt3FV0=;
        b=jE+C4y36MwZ82sIGjo/ybO92rPf83vvLfmdC7g71CGKc0GIYHoJP4UIxOtignVr0Al
         CuRHMh94IDWt5L3OE61GlvwEW6mqk15JWTvoVhM0GxFShdmZVo2RZg+yiprPrOAZQD36
         vJUlNElG83ZnXQ+NTFPa4f0WtbJgiQDkkUNTew+sffeD+hBc8YTF5Q2v6fDjBQci7nKx
         lrJxUw5mfHZetJ1XT/PIGHp96z8Q38iWRv/Sb7Xfib7UquCXKU0XBFuQsWwX1ZUQTwSm
         pjFVtZCBtwhi03NSETemPPWnGhAUUgqRB14jM6VPgkqtVI2mLsbeFWhaP6DE4Ma3mcwM
         8QPQ==
X-Gm-Message-State: AOJu0YwVdQ/sb8NUIW2CxEuaTdG9VPxPPFm1q1a7HTxWZWU/5JnLlHbv
	NPu/B/N5yIypPFuPM9XAKJYlcg==
X-Google-Smtp-Source: AGHT+IG7MVqf/6hNKYkRXglolSsIpyxst5mObigjMOwk+LzWWRY5k4ezPeeB8D9kioAMd9xaHO5xCw==
X-Received: by 2002:a05:600c:510d:b0:408:3bbd:4a82 with SMTP id o13-20020a05600c510d00b004083bbd4a82mr4666391wms.15.1700479110864;
        Mon, 20 Nov 2023 03:18:30 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.183])
        by smtp.gmail.com with ESMTPSA id g6-20020a05600c310600b0040651505684sm13142676wmo.29.2023.11.20.03.18.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Nov 2023 03:18:30 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: tglx@linutronix.de,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	prabhakar.mahadev-lad.rj@bp.renesas.com
Cc: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v3 1/9] clk: renesas: r9a08g045: Add IA55 pclk and its reset
Date: Mon, 20 Nov 2023 13:18:12 +0200
Message-Id: <20231120111820.87398-2-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231120111820.87398-1-claudiu.beznea.uj@bp.renesas.com>
References: <20231120111820.87398-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

IA55 interrupt controller is available on RZ/G3S SoC. Add IA55 pclk and
its reset.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
 drivers/clk/renesas/r9a08g045-cpg.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/clk/renesas/r9a08g045-cpg.c b/drivers/clk/renesas/r9a08g045-cpg.c
index 4394cb241d99..ea3beca8b4e0 100644
--- a/drivers/clk/renesas/r9a08g045-cpg.c
+++ b/drivers/clk/renesas/r9a08g045-cpg.c
@@ -188,6 +188,7 @@ static const struct cpg_core_clk r9a08g045_core_clks[] __initconst = {
 
 static const struct rzg2l_mod_clk r9a08g045_mod_clks[] = {
 	DEF_MOD("gic_gicclk",		R9A08G045_GIC600_GICCLK, R9A08G045_CLK_P1, 0x514, 0),
+	DEF_MOD("ia55_pclk",		R9A08G045_IA55_PCLK, R9A08G045_CLK_P2, 0x518, 0),
 	DEF_MOD("ia55_clk",		R9A08G045_IA55_CLK, R9A08G045_CLK_P1, 0x518, 1),
 	DEF_MOD("dmac_aclk",		R9A08G045_DMAC_ACLK, R9A08G045_CLK_P3, 0x52c, 0),
 	DEF_MOD("sdhi0_imclk",		R9A08G045_SDHI0_IMCLK, CLK_SD0_DIV4, 0x554, 0),
@@ -209,6 +210,7 @@ static const struct rzg2l_mod_clk r9a08g045_mod_clks[] = {
 static const struct rzg2l_reset r9a08g045_resets[] = {
 	DEF_RST(R9A08G045_GIC600_GICRESET_N, 0x814, 0),
 	DEF_RST(R9A08G045_GIC600_DBG_GICRESET_N, 0x814, 1),
+	DEF_RST(R9A08G045_IA55_RESETN, 0x818, 0),
 	DEF_RST(R9A08G045_SDHI0_IXRST, 0x854, 0),
 	DEF_RST(R9A08G045_SDHI1_IXRST, 0x854, 1),
 	DEF_RST(R9A08G045_SDHI2_IXRST, 0x854, 2),
@@ -220,6 +222,7 @@ static const struct rzg2l_reset r9a08g045_resets[] = {
 
 static const unsigned int r9a08g045_crit_mod_clks[] __initconst = {
 	MOD_CLK_BASE + R9A08G045_GIC600_GICCLK,
+	MOD_CLK_BASE + R9A08G045_IA55_PCLK,
 	MOD_CLK_BASE + R9A08G045_IA55_CLK,
 	MOD_CLK_BASE + R9A08G045_DMAC_ACLK,
 };
-- 
2.39.2


