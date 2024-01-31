Return-Path: <devicetree+bounces-37127-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 803B7843C1A
	for <lists+devicetree@lfdr.de>; Wed, 31 Jan 2024 11:20:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0D6B01F2E9F5
	for <lists+devicetree@lfdr.de>; Wed, 31 Jan 2024 10:20:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36CB469D11;
	Wed, 31 Jan 2024 10:20:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="KDm5AY0u"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CF9969D0B
	for <devicetree@vger.kernel.org>; Wed, 31 Jan 2024 10:20:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706696432; cv=none; b=csPgEg0j9wbpH0HLCikktBtROYaBzJZjS76BZlFo40aBtzzGC66FjKepVdmJZdh9BamsKmk6anDFIAmk4s5y+Rz6O9tfxjDeS43xw7T0gSAZggxCiFbLYBy3WwDJCPKEU0S+Hr64ZMzDxV70L3AM5KEqCIvxpolztP+RkXxEX4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706696432; c=relaxed/simple;
	bh=NzPPNEy00n6/NLoSK6YZsJgd1KrQZGAMBgH5ckRJBJQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=D6LA+d1w+tlMHdqy1bd95FrLrzlQoP1IsZkya9vpQwN5aqERU/ERCf3gjce3X4g+151wJJ8EV45S/jv8UNXDLrCjsRKblmuwNw1/nyATQ8mgY0PrSoWCEYHY4/bHQbmGEfCJoiFjpSTRSLj5U9lN3wa9L32NnzTpkFCrc6yO27E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=KDm5AY0u; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-a2a17f3217aso686905966b.2
        for <devicetree@vger.kernel.org>; Wed, 31 Jan 2024 02:20:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1706696428; x=1707301228; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sccW02Yo8K+lpKyBO44V8P8/wJBKTY6GrI2k9Gcc9OY=;
        b=KDm5AY0ue+aSH3O3y5tNaFluMNkzAEPIT1Ndks8KaHnXqd8uO6jFmbrbKil3CJ1J5Y
         QTEJ38fuYBE7lzjsCA+Q2M6Vwa5cKg5ro0jT3xyg5LtPG34fcIdgRl78EXSxmxd1CoFq
         y9//rQvLSIXnvw3FPYr3T3fObQJQ6irsJToL70kQ3L2GtpVGnwGIPEsDLtKJ5ac0VXyy
         /c+e/Xm8r//mF7S+cASIKhY4Jz+tNzBWeH8Mzt9DO7GtIgXd6+hTA9n/4QpcSvvxgXqT
         L8T0h3HpqxAIVYJHqKMmS5JnMC/UwdnZs0cmvk+ZNn5dBCWKBRmYZ2F/9qN51w2MU2YY
         5yOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706696428; x=1707301228;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sccW02Yo8K+lpKyBO44V8P8/wJBKTY6GrI2k9Gcc9OY=;
        b=rcSDRTdHqHnnidb/CYUpoynM/MgtYuBYZ8o8tlhoZ5VXml3Mf1zbMf6XUcAHWGLlps
         SYbpmBTiehoqlPqHk6JjmeEVtrf5DgAP5/g9AA9fl2QlH2zrv1eaPz18RcZqLEzXXavG
         394ESqSul8iRqFJosnO949Yaw1gcGaFfvPgry48ya7qEZagIINRboxzvA3MbU35bPXuI
         407hO9MhtbZRtVeT/Juziag8I8DSMqx2ucO2qKPaGnhtGXIsLjqX/gyAeITodZVMBzCa
         07pAT+JDL1AuYF4OtAs/B5uLU4cK8vRrlIRUXpL04/W/zfXX2zLT7VhE5b1kZz9vOFCZ
         x4zA==
X-Gm-Message-State: AOJu0YxX9buU0lbt2Gd3ZpS4vGNMqbdoa3y5tNevtsPgXtQF3JT0p2Cs
	A/IHSc29GCKVnbMbb+Hcpc7MKfKZx76QTygGAGfoA93om3PP15lM4heQWKa3Zig=
X-Google-Smtp-Source: AGHT+IGY2eFu5vK1YG9Oq3IZh+BqPLj99nJ+JYdKaxKcJwHWkCS76yZXcB0Thx3b3tQ8p3aNvWRLew==
X-Received: by 2002:a17:906:c29a:b0:a35:fbc4:4c20 with SMTP id r26-20020a170906c29a00b00a35fbc44c20mr673787ejz.6.1706696428463;
        Wed, 31 Jan 2024 02:20:28 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCWj/VdHtk+M0M86HFo/oBx9tdBLc3Ymnrmn1HzwS+AL+quDYDP80yBe1Z+uHY93wTD8TU1WdW8Xwf3yK1ddYcSjYbpXpXavKZUTmSbVfRUJXHB12XHKtK8XFViqz8dEoI1I8p0hNUTC8PMb+FYaaxhnXE/KiTthw0Yqm/rYk1ctPAkXO/DLcRZPuvwyNjzMYsNVokOVqztofbycJpnB8vKifwXjq2E1GSH9KCjaBM7N5/H2D6/XCNt+I/TQMeke7mNM7pZTTlZ8iMfQGbXiTYxI3WTNOAweVddqM2gD3FuEmDePi4/mMfLMdgfcjKmZ67/ah975Z+m/Br0G+Qg1jjt8ZAL1Uk1BsheFIpMi3VdfYHPjnjoEtwPIt3FHhudcKVOEJMIxZ8NA/PGvD/l+uZQMShzJQW7dKRKpG9utw0PRQm1FUhayffj1RSPPiWTR8DQoEG0Wzjyo9Qklx0Goacvjnb9YSPaJirWzp1m6eoYLuDXhvdAElUL5rRcqdNddSu04A5CmyznfAFKSA4z03w3FfxiK1v4kiTnJDZzXLUtY9vbtbI9eO8LBp+hrKeNhsHvX5OVMpvSWA183i6+4YjIEsdqyoxE/m/uGbN1pHl7o+II=
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.87])
        by smtp.gmail.com with ESMTPSA id vk6-20020a170907cbc600b00a3524be5a86sm5212966ejc.103.2024.01.31.02.20.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Jan 2024 02:20:28 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: wim@linux-watchdog.org,
	linux@roeck-us.net,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	p.zabel@pengutronix.de,
	biju.das.jz@bp.renesas.com
Cc: linux-watchdog@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v2 01/11] clk: renesas: r9a08g045: Add clock and reset support for watchdog
Date: Wed, 31 Jan 2024 12:20:07 +0200
Message-Id: <20240131102017.1841495-2-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240131102017.1841495-1-claudiu.beznea.uj@bp.renesas.com>
References: <20240131102017.1841495-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

RZ/G3S has a watchdog module accessible by the Cortex-A core. Add clock
and reset support for it.

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v2:
- collected tags

 drivers/clk/renesas/r9a08g045-cpg.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/clk/renesas/r9a08g045-cpg.c b/drivers/clk/renesas/r9a08g045-cpg.c
index 2582ba95256e..c3e6da2de197 100644
--- a/drivers/clk/renesas/r9a08g045-cpg.c
+++ b/drivers/clk/renesas/r9a08g045-cpg.c
@@ -193,6 +193,8 @@ static const struct rzg2l_mod_clk r9a08g045_mod_clks[] = {
 	DEF_MOD("ia55_pclk",		R9A08G045_IA55_PCLK, R9A08G045_CLK_P2, 0x518, 0),
 	DEF_MOD("ia55_clk",		R9A08G045_IA55_CLK, R9A08G045_CLK_P1, 0x518, 1),
 	DEF_MOD("dmac_aclk",		R9A08G045_DMAC_ACLK, R9A08G045_CLK_P3, 0x52c, 0),
+	DEF_MOD("wdt0_pclk",		R9A08G045_WDT0_PCLK, R9A08G045_CLK_P0, 0x548, 0),
+	DEF_MOD("wdt0_clk",		R9A08G045_WDT0_CLK, R9A08G045_OSCCLK, 0x548, 1),
 	DEF_MOD("sdhi0_imclk",		R9A08G045_SDHI0_IMCLK, CLK_SD0_DIV4, 0x554, 0),
 	DEF_MOD("sdhi0_imclk2",		R9A08G045_SDHI0_IMCLK2, CLK_SD0_DIV4, 0x554, 1),
 	DEF_MOD("sdhi0_clk_hs",		R9A08G045_SDHI0_CLK_HS, R9A08G045_CLK_SD0, 0x554, 2),
@@ -219,6 +221,7 @@ static const struct rzg2l_reset r9a08g045_resets[] = {
 	DEF_RST(R9A08G045_GIC600_GICRESET_N, 0x814, 0),
 	DEF_RST(R9A08G045_GIC600_DBG_GICRESET_N, 0x814, 1),
 	DEF_RST(R9A08G045_IA55_RESETN, 0x818, 0),
+	DEF_RST(R9A08G045_WDT0_PRESETN, 0x848, 0),
 	DEF_RST(R9A08G045_SDHI0_IXRST, 0x854, 0),
 	DEF_RST(R9A08G045_SDHI1_IXRST, 0x854, 1),
 	DEF_RST(R9A08G045_SDHI2_IXRST, 0x854, 2),
-- 
2.39.2


