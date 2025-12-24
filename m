Return-Path: <devicetree+bounces-249563-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 680BACDCE53
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 17:51:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A412B303ADFA
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 16:51:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC473330D28;
	Wed, 24 Dec 2025 16:51:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FEeUMPgF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 965B5329374
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 16:51:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766595065; cv=none; b=mYRn3nLFuiGwc4BBSK6GYIPktFyTPclkRWPKFG9RhDGQNGLuSSUcUpAchxGXrgjoIXnm+pjaEwOLCttpqNRcWPoBk7IurJl9/JYCDaGQ4QNb9VQHwKLx9rJ2R7k1ggoAEsAzT4oSO4Cq/2OR+P07oT+0jdaFDbiz2LIn1tyZ9UM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766595065; c=relaxed/simple;
	bh=tQ2MoAosKlRlrd/npA5g9SYg6s0JOpLKa8kN/mDNYvM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=e/9ost3ZyvfTItg72F6tAv0I6esDYTR+yRMDQ5yk/JO6Y6AHlOhorCZ8iVBnmyfxUkc0XnSNjCXXSWJJHd1uSNkklxBVy8GzuFCMMFxXRaegE33K/es2PJ8kCgtv6BN+OGrbePQ26B1jXaeyTRTpPwb/JLgvCyMZ6zb9vI3/XcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FEeUMPgF; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-47bdbc90dcaso39496245e9.1
        for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 08:51:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766595061; x=1767199861; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/EK1HCfHzeEgXjAFyaR94Cl2pyhmBKIAz+AoGEI4/Ug=;
        b=FEeUMPgFPZRQR8AIiWtBdhMp83dEibSTYNX/jn4RDkuFzZGBE/5xjefWHuhRpwJ+xV
         yOW6yKBRYLOy8yd101Sw8AwxQuca/L1r6pEX6OTU6diIcYr2Xbqn4xMfjr7Dx3ZfiZaI
         J0C4W8AgQI3rHemFk64NNIAqbAmtJa7F9cd8jjNu0QsR7Rmvp+H6gmcDd+anc993PzUj
         8mEG6zFhfkI+hvWfhC3FRxzmM/71IeH2Nfl+90g6hMw50exAxKZtBHL6Pbxxpa5h0tta
         6SuyrhsylU0R3QUR8YD3lpnwnu5bdT1Jiek0v4sFS9VksDCgHkRbL910sgTMxSxaq0Aw
         AKHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766595061; x=1767199861;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=/EK1HCfHzeEgXjAFyaR94Cl2pyhmBKIAz+AoGEI4/Ug=;
        b=YEh2V0yFFCYAoaxDSPb29XUSNRqHtfmDffPkk7X3DBceLoKSscIF/hUzKARCwht33a
         qnridAf4IQt0c5s/q/agoTxlVrLMxW8+3pqtzRAqJuxS3MEDacchYr/CO7Yfe5+acYmS
         GBYX3SeMxcCdcAQESim69zoKxnYaWXb2EvXhq6dx5Bpy25fOnzgyOg5UoMbrRmVqTnYA
         Hd6yZwsNn1kmrSVExcvyNbeLTYT0hH6MHaM1Npkc4CienJhvxHtE972ILEw5y6xmHjJQ
         APiERNfqCWIt3wDXy5TJ7SzvW5N88+9c14oaRG0RM0YNLjMXE3UT4jKyZXYTQ8Xn69pa
         xLrg==
X-Forwarded-Encrypted: i=1; AJvYcCV7b4/L/GPMPJUNGOWKXxW35w2Mhn45POnd2IsulI3akiAs0jcf8MWVbyXPsPLeKgX9hAlEu5E1spaN@vger.kernel.org
X-Gm-Message-State: AOJu0Yxc9X2pf4YT21uwvASKvZaIwDT/Q3CWnECRWpsX1Kod2HTLMpkr
	LLdMfnBbgPEmK3del5Z2aNNGtn7k5at9v5mDgeNySdS4eOkFIcBN1SI6
X-Gm-Gg: AY/fxX6yvrFqSegMcX363buXo12DtDmFxOWFbuaXGpCniZG7DCLBedHi0R64OWjML61
	z/HlvbyFKHBTA2B8EEG0IP2zPV61Q3BrGrOROWzniPue5AyD376PqFOLKgrvAC90t02Ed6H8SMI
	xnkMjz6Ej0FnnSjx0g0yuBVktjMCUrjdLAFskvb+EwzEuQvqbVyvfoihYYehmeMGgkupywotrDV
	ph4ZGjhsJaUeldML7LbEu0NHkboS64hedoGn+jaYGWQtmmY9DPxPGreO0MNo6vXMhpwRJEIGnmQ
	s/8TgerseS0jlh6QevpnDsV3YQOVHPWpkgjAOCE1KxMzRKoPVlivnYKYz/5MMGD3k57aUlZoVgu
	Gcqu1gvDGrKKkr9yZOSjxwtSLjRQkNxBhpoAwslwcvVhzEdA7LYEVWa+87vNZAo3hEpA6KYfRCu
	/6cEreqoWSVepxYF9C0ZI4a7dk/nBmE9e16vGQPMnrOeSJi2BaGo7Z9EMdMYDq2swJDrfShy/DF
	XLvSWaykuC7OCYnhxM1GQnR
X-Google-Smtp-Source: AGHT+IFMmmdKR2ai07VwzQ+dheytzl1jN/5R2f9ax4s3XC55YUFsi5RIoHlEF2i6KCabE4OZezv3nA==
X-Received: by 2002:a05:600c:4fc6:b0:477:333a:f71f with SMTP id 5b1f17b1804b1-47d19576cc6mr189259755e9.17.1766595060884;
        Wed, 24 Dec 2025 08:51:00 -0800 (PST)
Received: from iku.Home ([2a06:5906:61b:2d00:3371:7b65:aaf4:d2e4])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47be3ac5409sm136482305e9.15.2025.12.24.08.50.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 08:51:00 -0800 (PST)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH 2/4] clk: renesas: r9a09g077: Add CANFD clocks
Date: Wed, 24 Dec 2025 16:50:47 +0000
Message-ID: <20251224165049.3384870-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251224165049.3384870-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20251224165049.3384870-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

The Renesas RZ/T2H (R9A09G077) and RZ/N2H (R9A09G087) SoCs have a CANFD
peripheral which has three input clocks PCLKM (peripheral clock),
PCLKH (RAM clock) and PCLKCAN (CANFD clock).

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 drivers/clk/renesas/r9a09g077-cpg.c | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/renesas/r9a09g077-cpg.c b/drivers/clk/renesas/r9a09g077-cpg.c
index dee25cdadf1d..93b15e06a19b 100644
--- a/drivers/clk/renesas/r9a09g077-cpg.c
+++ b/drivers/clk/renesas/r9a09g077-cpg.c
@@ -47,6 +47,7 @@
 #define FSELXSPI1	CONF_PACK(SCKCR, 8, 3)
 #define DIVSEL_XSPI0	CONF_PACK(SCKCR, 6, 1)
 #define DIVSEL_XSPI1	CONF_PACK(SCKCR, 14, 1)
+#define FSELCANFD	CONF_PACK(SCKCR, 20, 1)
 #define SEL_PLL		CONF_PACK(SCKCR, 22, 1)
 
 #define DIVCA55C0	CONF_PACK(SCKCR2, 8, 1)
@@ -85,7 +86,7 @@ enum rzt2h_clk_types {
 
 enum clk_ids {
 	/* Core Clock Outputs exported to DT */
-	LAST_DT_CORE_CLK = R9A09G077_XSPI_CLK1,
+	LAST_DT_CORE_CLK = R9A09G077_PCLKCAN,
 
 	/* External Input Clocks */
 	CLK_EXTAL,
@@ -103,6 +104,9 @@ enum clk_ids {
 	CLK_PLL4D1,
 	CLK_PLL4D1_DIV3,
 	CLK_PLL4D1_DIV4,
+	CLK_PLL4D3,
+	CLK_PLL4D3_DIV10,
+	CLK_PLL4D3_DIV20,
 	CLK_SCI0ASYNC,
 	CLK_SCI1ASYNC,
 	CLK_SCI2ASYNC,
@@ -150,6 +154,7 @@ static const char * const sel_clk_pll1[] = { ".loco", ".pll1" };
 static const char * const sel_clk_pll2[] = { ".loco", ".pll2" };
 static const char * const sel_clk_pll4[] = { ".loco", ".pll4" };
 static const char * const sel_clk_pll4d1_div3_div4[] = { ".pll4d1_div3", ".pll4d1_div4" };
+static const char * const sel_clk_pll4d3_div10_div20[] = { ".pll4d3_div10", ".pll4d3_div20" };
 
 static const struct cpg_core_clk r9a09g077_core_clks[] __initconst = {
 	/* External Clock Inputs */
@@ -174,6 +179,9 @@ static const struct cpg_core_clk r9a09g077_core_clks[] __initconst = {
 	DEF_FIXED(".pll4d1", CLK_PLL4D1, CLK_SEL_CLK_PLL4, 1, 1),
 	DEF_FIXED(".pll4d1_div3", CLK_PLL4D1_DIV3, CLK_PLL4D1, 3, 1),
 	DEF_FIXED(".pll4d1_div4", CLK_PLL4D1_DIV4, CLK_PLL4D1, 4, 1),
+	DEF_FIXED(".pll4d3", CLK_PLL4D3, CLK_SEL_CLK_PLL4, 3, 1),
+	DEF_FIXED(".pll4d3_div10", CLK_PLL4D3_DIV10, CLK_PLL4D3, 10, 1),
+	DEF_FIXED(".pll4d3_div20", CLK_PLL4D3_DIV20, CLK_PLL4D3, 20, 1),
 
 	DEF_DIV(".sci0async", CLK_SCI0ASYNC, CLK_PLL4D1, DIVSCI0ASYNC,
 		dtable_24_25_30_32),
@@ -232,6 +240,8 @@ static const struct cpg_core_clk r9a09g077_core_clks[] __initconst = {
 			 FSELXSPI0, dtable_6_8_16_32_64),
 	DEF_DIV_FSELXSPI("XSPI_CLK1", R9A09G077_XSPI_CLK1, CLK_DIVSELXSPI1_SCKCR,
 			 FSELXSPI1, dtable_6_8_16_32_64),
+	DEF_MUX("PCLKCAN", R9A09G077_PCLKCAN, FSELCANFD,
+		sel_clk_pll4d3_div10_div20, ARRAY_SIZE(sel_clk_pll4d3_div10_div20), 0),
 };
 
 static const struct mssr_mod_clk r9a09g077_mod_clks[] __initconst = {
@@ -251,6 +261,7 @@ static const struct mssr_mod_clk r9a09g077_mod_clks[] __initconst = {
 	DEF_MOD("adc1", 207, R9A09G077_CLK_PCLKH),
 	DEF_MOD("adc2", 225, R9A09G077_CLK_PCLKM),
 	DEF_MOD("tsu", 307, R9A09G077_CLK_PCLKL),
+	DEF_MOD("canfd", 310, R9A09G077_CLK_PCLKM),
 	DEF_MOD("gmac0", 400, R9A09G077_CLK_PCLKM),
 	DEF_MOD("ethsw", 401, R9A09G077_CLK_PCLKM),
 	DEF_MOD("ethss", 403, R9A09G077_CLK_PCLKM),
-- 
2.52.0


