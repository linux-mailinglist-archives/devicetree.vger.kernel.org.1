Return-Path: <devicetree+bounces-7246-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E2CFD7BFD65
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 15:27:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 11DBF1C20D6E
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 13:27:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C1409CA45;
	Tue, 10 Oct 2023 13:27:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="PWpyvZE/"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CE7E4737C
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 13:27:15 +0000 (UTC)
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A4CD8C6
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 06:27:13 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-9a58dbd5daeso1011683166b.2
        for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 06:27:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1696944432; x=1697549232; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Myh0EUpEAAbOhx8NqaptdLIeko5fmhcaUFegO6OZMwQ=;
        b=PWpyvZE/U8dQZWe9j+BnwokxPRQ5YLlqlvWzkOJVpTQHawG//mOrWg5WK7keye2vJ/
         3RjDUgzfHzjS9j+nYUKglTe7MAv6/lfNzrIZ5URIZVxiCcyl2sSkMSCvMP3XCjNjwYrJ
         8dB2YGEpcFHCl0QkjbysXJ1tZWQIgkPGSFggkFUfei2PpgF0scryHla/NO4QWupMtPZI
         TATUHTVE9aTzVlFduE+SwrIAKVyIZ8dyXDzthGYnsrmZxUzZp4VBqITwvIzeFoQ+8/CR
         LbuuR4FBLlZjbqxpXza+qQkc/Bk51kpMLa3u+UrRhhiTSWh//Ul+yk/ExyElnmm3ypp/
         YEgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696944432; x=1697549232;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Myh0EUpEAAbOhx8NqaptdLIeko5fmhcaUFegO6OZMwQ=;
        b=Ah4Y01FZNzEdpzeAhMfWkgZ4SfGCM3/PJcPQ1QIZe3FLHfCluZADT6SLyWOPusfGlS
         9slCI0MTiLWk5rR4NK+zQfHtuRbfHZxzswYFMT0iQt9kRXmFfqjwCsjx1npkeL6vNqOr
         Qh5rJxqmcnjEX8ZH8GtBzZvwaimWXte4X/uiiVhBbp2APIYVzL+i4y1pcbeXAo08IUGT
         HCRCCbyfdQHIl+K3YctHIJsUfcU6eaU80QaKBSdeU1q8pWnbtCHfEA/l0lFa2ogZPQVI
         CGRUNUjHM2u3UqyFhDjzCz9ZLy95o2m4ZWl7ZSsrg7jmXGBDynQXjN9tMjZ7mNWQRPDO
         uJ1w==
X-Gm-Message-State: AOJu0YxChIJbbhNlC2UCNG+8NiV2AC32yTxgsgPsuCsuiaRYed1GhhBQ
	tRGrQPLRnwdtkg+hqUOWnpIsj+m6ApRXzBjv0LQ=
X-Google-Smtp-Source: AGHT+IGBAr8Ny8/cCqvE4oomDYeBihBAoMzReOlbcfotM+sSSqBHLNRiziqJw2nt7fa9wMLg9EKwtQ==
X-Received: by 2002:a17:906:30db:b0:9ae:41db:c27f with SMTP id b27-20020a17090630db00b009ae41dbc27fmr17459264ejb.10.1696944432144;
        Tue, 10 Oct 2023 06:27:12 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.152])
        by smtp.gmail.com with ESMTPSA id i16-20020a1709064ed000b0099bd0b5a2bcsm8526578ejv.101.2023.10.10.06.27.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Oct 2023 06:27:11 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: geert+renesas@glider.be,
	magnus.damm@gmail.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	mturquette@baylibre.com,
	sboyd@kernel.org
Cc: linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH 2/6] clk: renesas: r9a08g045: Add clock and reset support for SDHI1 and SDHI2
Date: Tue, 10 Oct 2023 16:26:57 +0300
Message-Id: <20231010132701.1658737-3-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231010132701.1658737-1-claudiu.beznea.uj@bp.renesas.com>
References: <20231010132701.1658737-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Add clock and reset support for SDHI1 and SDHI2 blocks on
RZ/G3S (R9A08G045).

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
 drivers/clk/renesas/r9a08g045-cpg.c | 34 +++++++++++++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/drivers/clk/renesas/r9a08g045-cpg.c b/drivers/clk/renesas/r9a08g045-cpg.c
index 389d32b32168..4394cb241d99 100644
--- a/drivers/clk/renesas/r9a08g045-cpg.c
+++ b/drivers/clk/renesas/r9a08g045-cpg.c
@@ -25,6 +25,8 @@
 /* RZ/G3S Specific division configuration.  */
 #define G3S_DIVPL2B		DDIV_PACK(G3S_CPG_PL2_DDIV, 4, 3)
 #define G3S_DIV_SDHI0		DDIV_PACK(G3S_CPG_SDHI_DDIV, 0, 1)
+#define G3S_DIV_SDHI1		DDIV_PACK(G3S_CPG_SDHI_DDIV, 4, 1)
+#define G3S_DIV_SDHI2		DDIV_PACK(G3S_CPG_SDHI_DDIV, 8, 1)
 
 /* RZ/G3S Clock status configuration. */
 #define G3S_DIVPL1A_STS		DDIV_PACK(G3S_CLKDIVSTATUS, 0, 1)
@@ -33,13 +35,19 @@
 #define G3S_DIVPL3B_STS		DDIV_PACK(G3S_CLKDIVSTATUS, 9, 1)
 #define G3S_DIVPL3C_STS		DDIV_PACK(G3S_CLKDIVSTATUS, 10, 1)
 #define G3S_DIV_SDHI0_STS	DDIV_PACK(G3S_CLKDIVSTATUS, 24, 1)
+#define G3S_DIV_SDHI1_STS	DDIV_PACK(G3S_CLKDIVSTATUS, 25, 1)
+#define G3S_DIV_SDHI2_STS	DDIV_PACK(G3S_CLKDIVSTATUS, 26, 1)
 
 #define G3S_SEL_PLL4_STS	SEL_PLL_PACK(G3S_CLKSELSTATUS, 6, 1)
 #define G3S_SEL_SDHI0_STS	SEL_PLL_PACK(G3S_CLKSELSTATUS, 16, 1)
+#define G3S_SEL_SDHI1_STS	SEL_PLL_PACK(G3S_CLKSELSTATUS, 17, 1)
+#define G3S_SEL_SDHI2_STS	SEL_PLL_PACK(G3S_CLKSELSTATUS, 18, 1)
 
 /* RZ/G3S Specific clocks select. */
 #define G3S_SEL_PLL4		SEL_PLL_PACK(G3S_CPG_PLL_DSEL, 6, 1)
 #define G3S_SEL_SDHI0		SEL_PLL_PACK(G3S_CPG_SDHI_DSEL, 0, 2)
+#define G3S_SEL_SDHI1		SEL_PLL_PACK(G3S_CPG_SDHI_DSEL, 4, 2)
+#define G3S_SEL_SDHI2		SEL_PLL_PACK(G3S_CPG_SDHI_DSEL, 8, 2)
 
 /* PLL 1/4/6 configuration registers macro. */
 #define G3S_PLL146_CONF(clk1, clk2)	((clk1) << 22 | (clk2) << 12)
@@ -74,10 +82,14 @@ enum clk_ids {
 	CLK_PLL6,
 	CLK_PLL6_DIV2,
 	CLK_SEL_SDHI0,
+	CLK_SEL_SDHI1,
+	CLK_SEL_SDHI2,
 	CLK_SEL_PLL4,
 	CLK_P1_DIV2,
 	CLK_P3_DIV2,
 	CLK_SD0_DIV4,
+	CLK_SD1_DIV4,
+	CLK_SD2_DIV4,
 
 	/* Module Clocks */
 	MOD_CLK_BASE,
@@ -136,6 +148,10 @@ static const struct cpg_core_clk r9a08g045_core_clks[] __initconst = {
 	DEF_FIXED(".pll6_div2", CLK_PLL6_DIV2, CLK_PLL6, 1, 2),
 	DEF_SD_MUX(".sel_sd0", CLK_SEL_SDHI0, G3S_SEL_SDHI0, G3S_SEL_SDHI0_STS, sel_sdhi,
 		   mtable_sd, 0, NULL),
+	DEF_SD_MUX(".sel_sd1", CLK_SEL_SDHI1, G3S_SEL_SDHI1, G3S_SEL_SDHI1_STS, sel_sdhi,
+		   mtable_sd, 0, NULL),
+	DEF_SD_MUX(".sel_sd2", CLK_SEL_SDHI2, G3S_SEL_SDHI2, G3S_SEL_SDHI2_STS, sel_sdhi,
+		   mtable_sd, 0, NULL),
 	DEF_SD_MUX(".sel_pll4", CLK_SEL_PLL4, G3S_SEL_PLL4, G3S_SEL_PLL4_STS, sel_pll4,
 		   mtable_pll4, CLK_SET_PARENT_GATE, NULL),
 
@@ -147,7 +163,15 @@ static const struct cpg_core_clk r9a08g045_core_clks[] __initconst = {
 	DEF_G3S_DIV("SD0", R9A08G045_CLK_SD0, CLK_SEL_SDHI0, G3S_DIV_SDHI0, G3S_DIV_SDHI0_STS,
 		    dtable_1_2, 800000000UL, 500000000UL, CLK_SET_RATE_PARENT,
 		    rzg3s_cpg_div_clk_notifier),
+	DEF_G3S_DIV("SD1", R9A08G045_CLK_SD1, CLK_SEL_SDHI1, G3S_DIV_SDHI1, G3S_DIV_SDHI1_STS,
+		    dtable_1_2, 800000000UL, 500000000UL, CLK_SET_RATE_PARENT,
+		    rzg3s_cpg_div_clk_notifier),
+	DEF_G3S_DIV("SD2", R9A08G045_CLK_SD2, CLK_SEL_SDHI2, G3S_DIV_SDHI2, G3S_DIV_SDHI2_STS,
+		    dtable_1_2, 800000000UL, 500000000UL, CLK_SET_RATE_PARENT,
+		    rzg3s_cpg_div_clk_notifier),
 	DEF_FIXED(".sd0_div4", CLK_SD0_DIV4, R9A08G045_CLK_SD0, 1, 4),
+	DEF_FIXED(".sd1_div4", CLK_SD1_DIV4, R9A08G045_CLK_SD1, 1, 4),
+	DEF_FIXED(".sd2_div4", CLK_SD2_DIV4, R9A08G045_CLK_SD2, 1, 4),
 	DEF_FIXED("M0", R9A08G045_CLK_M0, CLK_PLL3_DIV2_4, 1, 1),
 	DEF_G3S_DIV("P1", R9A08G045_CLK_P1, CLK_PLL3_DIV2_4, DIVPL3A, G3S_DIVPL3A_STS,
 		    dtable_1_32, 0, 0, 0, NULL),
@@ -170,6 +194,14 @@ static const struct rzg2l_mod_clk r9a08g045_mod_clks[] = {
 	DEF_MOD("sdhi0_imclk2",		R9A08G045_SDHI0_IMCLK2, CLK_SD0_DIV4, 0x554, 1),
 	DEF_MOD("sdhi0_clk_hs",		R9A08G045_SDHI0_CLK_HS, R9A08G045_CLK_SD0, 0x554, 2),
 	DEF_MOD("sdhi0_aclk",		R9A08G045_SDHI0_ACLK, R9A08G045_CLK_P1, 0x554, 3),
+	DEF_MOD("sdhi1_imclk",		R9A08G045_SDHI1_IMCLK, CLK_SD1_DIV4, 0x554, 4),
+	DEF_MOD("sdhi1_imclk2",		R9A08G045_SDHI1_IMCLK2, CLK_SD1_DIV4, 0x554, 5),
+	DEF_MOD("sdhi1_clk_hs",		R9A08G045_SDHI1_CLK_HS, R9A08G045_CLK_SD1, 0x554, 6),
+	DEF_MOD("sdhi1_aclk",		R9A08G045_SDHI1_ACLK, R9A08G045_CLK_P1, 0x554, 7),
+	DEF_MOD("sdhi2_imclk",		R9A08G045_SDHI2_IMCLK, CLK_SD2_DIV4, 0x554, 8),
+	DEF_MOD("sdhi2_imclk2",		R9A08G045_SDHI2_IMCLK2, CLK_SD2_DIV4, 0x554, 9),
+	DEF_MOD("sdhi2_clk_hs",		R9A08G045_SDHI2_CLK_HS, R9A08G045_CLK_SD2, 0x554, 10),
+	DEF_MOD("sdhi2_aclk",		R9A08G045_SDHI2_ACLK, R9A08G045_CLK_P1, 0x554, 11),
 	DEF_MOD("scif0_clk_pck",	R9A08G045_SCIF0_CLK_PCK, R9A08G045_CLK_P0, 0x584, 0),
 	DEF_MOD("gpio_hclk",		R9A08G045_GPIO_HCLK, R9A08G045_OSCCLK, 0x598, 0),
 };
@@ -178,6 +210,8 @@ static const struct rzg2l_reset r9a08g045_resets[] = {
 	DEF_RST(R9A08G045_GIC600_GICRESET_N, 0x814, 0),
 	DEF_RST(R9A08G045_GIC600_DBG_GICRESET_N, 0x814, 1),
 	DEF_RST(R9A08G045_SDHI0_IXRST, 0x854, 0),
+	DEF_RST(R9A08G045_SDHI1_IXRST, 0x854, 1),
+	DEF_RST(R9A08G045_SDHI2_IXRST, 0x854, 2),
 	DEF_RST(R9A08G045_SCIF0_RST_SYSTEM_N, 0x884, 0),
 	DEF_RST(R9A08G045_GPIO_RSTN, 0x898, 0),
 	DEF_RST(R9A08G045_GPIO_PORT_RESETN, 0x898, 1),
-- 
2.39.2


