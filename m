Return-Path: <devicetree+bounces-315035-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id E0laF/RuO2o9XwgAu9opvQ
	(envelope-from <devicetree+bounces-315035-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 07:45:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C1426BB912
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 07:45:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=fail reason="SPF not aligned (relaxed), No valid DKIM" header.from=aspeedtech.com (policy=quarantine);
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315035-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-315035-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 58BCB3009E0B
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 05:45:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8B5A31F9AC;
	Wed, 24 Jun 2026 05:45:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from twmbx01.aspeedtech.com (mail.aspeedtech.com [211.20.114.72])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A20D6327C09;
	Wed, 24 Jun 2026 05:45:12 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782279918; cv=none; b=tjPBBjgg/ck4q0QuGsw4Oy7sW3XGfnpe5JUODTw3hFEe3Gh8dhHj1ARv8UMlezbhyx/paOU08Iv+jAb/0A2BFOZr7DbrozGewcRAhEsCOwH1effhnKrdqaKG9TU3G+11YG6zCDNtd8Q0Yrq5H++1HQn4Cu7SzmETq01qpn+roME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782279918; c=relaxed/simple;
	bh=JaGTBdxpHJ5fN4jX4hONzuI8SeSX32dT0OINEwJOlW0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=tbE4LPSIYOOqH2D8aqXo4KeP03t+GWx2/MOI81Cx3R0heRu821VbL2geqIpZhF/QtR5Y0FtDnZMVdrCI7/9csuQgBvbTfRm2zTj408ZXj/+GeHjBAkoFtzoTuvaElPCfSCselnyKIQrVl+X1somBtVb0HZ6fQVK3f1lMjFBzgxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=aspeedtech.com; spf=pass smtp.mailfrom=aspeedtech.com; arc=none smtp.client-ip=211.20.114.72
Received: from TWMBX01.aspeed.com (192.168.0.62) by TWMBX01.aspeed.com
 (192.168.0.62) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1748.10; Wed, 24 Jun
 2026 13:45:01 +0800
Received: from [127.0.1.1] (192.168.10.13) by TWMBX01.aspeed.com
 (192.168.0.62) with Microsoft SMTP Server id 15.2.1748.10 via Frontend
 Transport; Wed, 24 Jun 2026 13:45:01 +0800
From: Ryan Chen <ryan_chen@aspeedtech.com>
Date: Wed, 24 Jun 2026 13:45:00 +0800
Subject: [PATCH 2/2] clk: aspeed: add AST2700 PECI clock
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20260624-peci_clk-v1-2-ee28b92e22e9@aspeedtech.com>
References: <20260624-peci_clk-v1-0-ee28b92e22e9@aspeedtech.com>
In-Reply-To: <20260624-peci_clk-v1-0-ee28b92e22e9@aspeedtech.com>
To: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
	<sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>, Rob Herring
	<robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
	<conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, Andrew Jeffery
	<andrew@codeconstruct.com.au>
CC: <linux-clk@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-aspeed@lists.ozlabs.org>,
	<linux-kernel@vger.kernel.org>, Ryan Chen <ryan_chen@aspeedtech.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1782279900; l=2202;
 i=ryan_chen@aspeedtech.com; s=20251126; h=from:subject:message-id;
 bh=JaGTBdxpHJ5fN4jX4hONzuI8SeSX32dT0OINEwJOlW0=;
 b=wx53gZa51rQIOOSRp0P/kkRu9+ktuqQtS5K609XIMHAwbayPtB5QtVf4naHm8A0llGtrfkO95
 tE4mAvNyW87CL9CLtBeyFKTQlqTIJG7T9HFgER1nGU/HP8s2wgzxj01
X-Developer-Key: i=ryan_chen@aspeedtech.com; a=ed25519;
 pk=Xe73xY6tcnkuRjjbVAB/oU30KdB3FvG4nuJuILj7ZVc=
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.54 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[aspeedtech.com : SPF not aligned (relaxed), No valid DKIM,quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-315035-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mturquette@baylibre.com,m:sboyd@kernel.org,m:bmasney@redhat.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:joel@jms.id.au,m:andrew@codeconstruct.com.au,m:linux-clk@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-aspeed@lists.ozlabs.org,m:linux-kernel@vger.kernel.org,m:ryan_chen@aspeedtech.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[ryan_chen@aspeedtech.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ryan_chen@aspeedtech.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	R_DKIM_NA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[aspeedtech.com:email,aspeedtech.com:mid,aspeedtech.com:from_mime,vger.kernel.org:from_smtp,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4C1426BB912

Register the SoC1 PECI clock as a mux selected by SCU1_CLK_SEL2 bit 16,
choosing between the 25MHz CLKIN and HPLL/4. Add the HPLL/4 fixed factor
clock to serve as the second mux parent.

Signed-off-by: Ryan Chen <ryan_chen@aspeedtech.com>
---
 drivers/clk/aspeed/clk-ast2700.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/clk/aspeed/clk-ast2700.c b/drivers/clk/aspeed/clk-ast2700.c
index 8b7b382f6f3e..5f499ec0e1d1 100644
--- a/drivers/clk/aspeed/clk-ast2700.c
+++ b/drivers/clk/aspeed/clk-ast2700.c
@@ -273,6 +273,13 @@ static const unsigned int sdclk_parent_ids[] = {
 
 static const struct clk_hw *sdclk_parent_hws[ARRAY_SIZE(sdclk_parent_ids)];
 
+static const unsigned int peciclk_parent_ids[] = {
+	SCU1_CLKIN,
+	SCU1_CLK_HPLL_DIV4
+};
+
+static const struct clk_hw *peciclk_parent_hws[ARRAY_SIZE(peciclk_parent_ids)];
+
 #define FIXED_CLK(_id, _name, _rate) \
 	{ \
 		.id = _id,	\
@@ -458,6 +465,7 @@ static const struct ast2700_clk_info ast2700_scu1_clk_info[] __initconst = {
 	PLL_CLK(SCU1_CLK_HPLL, CLK_PLL, "soc1-hpll", SCU1_CLKIN, SCU1_HPLL_PARAM),
 	PLL_CLK(SCU1_CLK_APLL, CLK_PLL, "soc1-apll", SCU1_CLKIN, SCU1_APLL_PARAM),
 	PLL_CLK(SCU1_CLK_DPLL, CLK_PLL, "soc1-dpll", SCU1_CLKIN, SCU1_DPLL_PARAM),
+	FIXED_FACTOR_CLK(SCU1_CLK_HPLL_DIV4, "soc1-hpll_div4", SCU1_CLK_HPLL, 1, 4),
 	FIXED_FACTOR_CLK(SCU1_CLK_APLL_DIV2, "soc1-apll_div2", SCU1_CLK_APLL, 1, 2),
 	FIXED_FACTOR_CLK(SCU1_CLK_APLL_DIV4, "soc1-apll_div4", SCU1_CLK_APLL, 1, 4),
 	FIXED_FACTOR_CLK(SCU1_CLK_CAN, "canclk", SCU1_CLK_APLL, 1, 10),
@@ -481,6 +489,8 @@ static const struct ast2700_clk_info ast2700_scu1_clk_info[] __initconst = {
 		uxclk_parent_hws, SCU1_CLK_SEL2, 0, 2),
 	MUX_CLK(SCU1_CLK_HUXCLK, "huxclk", uxclk_parent_ids, ARRAY_SIZE(uxclk_parent_ids),
 		uxclk_parent_hws, SCU1_CLK_SEL2, 3, 2),
+	MUX_CLK(SCU1_CLK_PECI, "peciclk", peciclk_parent_ids, ARRAY_SIZE(peciclk_parent_ids),
+		peciclk_parent_hws, SCU1_CLK_SEL2, 16, 1),
 	DIVIDER_CLK(SCU1_CLK_SDCLK, "sdclk", SCU1_CLK_SDMUX,
 		    SCU1_CLK_SEL1, 14, 3, ast2700_clk_div_table),
 	PLL_CLK(SCU1_CLK_UARTX, CLK_UART_PLL, "uartxclk", SCU1_CLK_UXCLK, SCU1_UXCLK_CTRL),

-- 
2.34.1


