Return-Path: <devicetree+bounces-79686-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C4D3916722
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 14:14:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 80D0A1C20C2B
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 12:14:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7910015531A;
	Tue, 25 Jun 2024 12:14:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="rTu7PYZs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D32DA3F9CC
	for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 12:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719317665; cv=none; b=PH8Zy1jTeVWzqYYplnGG85kugkK5JFw712pOERi4jaWVdnx0XW4H1L0R5U3RsZdf+OfX8qaXLXuY6AKYItH5TiqBgf18988ALzvhSEYTQSJkz84e2VY65419x2unm/fYfOVoB2XQNlMxADm2KLZ6xMIAV/Nxvsr9HrNb+JchxIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719317665; c=relaxed/simple;
	bh=T8XZYUFwr0fl77CV1haV2KzudHykqK1Q+kmvWqF4LOs=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=pVEVmjQDkF5bmTgWS1/FajiG/JthHUHSRxOCNbmQAEo7ETn8lvB9KPhckk8WgRdftuPTgJDnw1mJq6PLHNKAN/SmpU0DnslGKN+hoW6jSd0z7ugQarxe+pN6+/Q2pn1uo0dJoBzlgd5X5vZToI0FFtBh0ms165oWFASZp335qG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=rTu7PYZs; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-42179dafd6bso38319475e9.0
        for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 05:14:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1719317662; x=1719922462; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=M9F4AOalFvQYDDoL4qqXuaXBdt8EmcihponRzH2IlUU=;
        b=rTu7PYZs1wYIR6uTTAv3Z5Rnd8JY7rUE2DRmRWf1xgbHn+FYGERm3fqZx/jENexQzR
         2ClEf0T+xO0aLlCrlaMFGUM2ls+oYHaA9kB2naULswQy1UBWR4AuNPYihVVFRfPl4q6h
         iA2OEKqGZgSXQ7bC2oEER2v8h5+RYdTXB3m0d2KKKqnQhyOw62TnDgaSQwu5xbGRRne7
         EbQTi50sM/ZILFkDYRRhMtnJDMVwhP8znfGwDJ7fY4uHzYfwkzYxCQTAdXzmWAufPTLs
         KpQFPlYPzirzS+E8o0UP5dghjna/RqxxBzzRG9rif2qs6koylbGkLO9rU7fq8EA7LlH+
         I7CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719317662; x=1719922462;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=M9F4AOalFvQYDDoL4qqXuaXBdt8EmcihponRzH2IlUU=;
        b=bnigFC4xru/yauKvZ6FjPjTdkL12VzQWKJfopFG5QG3o2aLn2J6D0ayCEn10+giRlS
         kGTy6iQmgt4Z51x0Uwiq3anfGpZKCnFcXpGeKMj7L0z1jIWys9dia8opUrtyAPoURDZz
         zBYYLXdNE8mwCnbwMJelwn/noE8iNi4nDO46uBx2Te8bHPUDo9gZC7zO5003Xtfa6yxW
         ZAPBJ3hTjeWpU+2yqW4rHZV0jl0kY8sdYRAgjx3r/Uf9RJhslH0x3obl8xmOjOCYMnQq
         1TwHd0tUIJ5FD2463lwrrU51JByqv7kL/NCgPNFV9ybFmaASP2e6bV3SynBZzIZN+qHb
         04sA==
X-Forwarded-Encrypted: i=1; AJvYcCUU0W44ineOgxLqzp5t/GCDZHdgjaIA7J5wtF7pq4FF3H8ILHhnwEsMIbM0yOF7NH2+xNbok1qynqqjwm4i+fUFZCILZEGSrUbPpA==
X-Gm-Message-State: AOJu0Yx72ef3lhs+Y2XtCQtClWWos/wEZ8z/jJ1qTJNAzOjZ5Wxa1Nvg
	2DFv80QA/Y9+Tg3rpqyDzeNmjZf/eYBHMyWxEsRUjQOxUf2tmMz13HwQgbATL/w=
X-Google-Smtp-Source: AGHT+IEE/PBalVNidpzCZi3TH9Ixmm5Dqm5Mw84zjF1Ae1Sf7MDJWhsBzzlFtUkGDJS+OXDydg9Uzg==
X-Received: by 2002:a5d:6486:0:b0:366:e9fa:17b with SMTP id ffacd0b85a97d-366e9fa0233mr6828334f8f.1.1719317662089;
        Tue, 25 Jun 2024 05:14:22 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.70])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3663a8c8b32sm12798437f8f.92.2024.06.25.05.14.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Jun 2024 05:14:21 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: chris.brandt@renesas.com,
	andi.shyti@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	p.zabel@pengutronix.de,
	wsa+renesas@sang-engineering.com
Cc: linux-renesas-soc@vger.kernel.org,
	linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v2 01/12] clk: renesas: r9a08g045: Add clock, reset and power domain support for I2C
Date: Tue, 25 Jun 2024 15:13:47 +0300
Message-Id: <20240625121358.590547-2-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240625121358.590547-1-claudiu.beznea.uj@bp.renesas.com>
References: <20240625121358.590547-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Add clock, reset and power domain support for the I2C channels available
on the Renesas RZ/G3S SoC.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v2:
- updated clock names to match the documentation

 drivers/clk/renesas/r9a08g045-cpg.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/drivers/clk/renesas/r9a08g045-cpg.c b/drivers/clk/renesas/r9a08g045-cpg.c
index b068733b145f..5f372d73c3ac 100644
--- a/drivers/clk/renesas/r9a08g045-cpg.c
+++ b/drivers/clk/renesas/r9a08g045-cpg.c
@@ -213,6 +213,10 @@ static const struct rzg2l_mod_clk r9a08g045_mod_clks[] = {
 	DEF_COUPLED("eth1_axi",		R9A08G045_ETH1_CLK_AXI, R9A08G045_CLK_M0, 0x57c, 1),
 	DEF_COUPLED("eth1_chi",		R9A08G045_ETH1_CLK_CHI, R9A08G045_CLK_ZT, 0x57c, 1),
 	DEF_MOD("eth1_refclk",		R9A08G045_ETH1_REFCLK, R9A08G045_CLK_HP, 0x57c, 9),
+	DEF_MOD("i2c0_pclk",		R9A08G045_I2C0_PCLK, R9A08G045_CLK_P0, 0x580, 0),
+	DEF_MOD("i2c1_pclk",		R9A08G045_I2C1_PCLK, R9A08G045_CLK_P0, 0x580, 1),
+	DEF_MOD("i2c2_pclk",		R9A08G045_I2C2_PCLK, R9A08G045_CLK_P0, 0x580, 2),
+	DEF_MOD("i2c3_pclk",		R9A08G045_I2C3_PCLK, R9A08G045_CLK_P0, 0x580, 3),
 	DEF_MOD("scif0_clk_pck",	R9A08G045_SCIF0_CLK_PCK, R9A08G045_CLK_P0, 0x584, 0),
 	DEF_MOD("gpio_hclk",		R9A08G045_GPIO_HCLK, R9A08G045_OSCCLK, 0x598, 0),
 };
@@ -227,6 +231,10 @@ static const struct rzg2l_reset r9a08g045_resets[] = {
 	DEF_RST(R9A08G045_SDHI2_IXRST, 0x854, 2),
 	DEF_RST(R9A08G045_ETH0_RST_HW_N, 0x87c, 0),
 	DEF_RST(R9A08G045_ETH1_RST_HW_N, 0x87c, 1),
+	DEF_RST(R9A08G045_I2C0_MRST, 0x880, 0),
+	DEF_RST(R9A08G045_I2C1_MRST, 0x880, 1),
+	DEF_RST(R9A08G045_I2C2_MRST, 0x880, 2),
+	DEF_RST(R9A08G045_I2C3_MRST, 0x880, 3),
 	DEF_RST(R9A08G045_SCIF0_RST_SYSTEM_N, 0x884, 0),
 	DEF_RST(R9A08G045_GPIO_RSTN, 0x898, 0),
 	DEF_RST(R9A08G045_GPIO_PORT_RESETN, 0x898, 1),
@@ -272,6 +280,18 @@ static const struct rzg2l_cpg_pm_domain_init_data r9a08g045_pm_domains[] = {
 	DEF_PD("eth1",		R9A08G045_PD_ETHER1,
 				DEF_REG_CONF(CPG_BUS_PERI_COM_MSTOP, BIT(3)),
 				RZG2L_PD_F_NONE),
+	DEF_PD("i2c0",		R9A08G045_PD_I2C0,
+				DEF_REG_CONF(CPG_BUS_MCPU2_MSTOP, BIT(10)),
+				RZG2L_PD_F_NONE),
+	DEF_PD("i2c1",		R9A08G045_PD_I2C1,
+				DEF_REG_CONF(CPG_BUS_MCPU2_MSTOP, BIT(11)),
+				RZG2L_PD_F_NONE),
+	DEF_PD("i2c2",		R9A08G045_PD_I2C2,
+				DEF_REG_CONF(CPG_BUS_MCPU2_MSTOP, BIT(12)),
+				RZG2L_PD_F_NONE),
+	DEF_PD("i2c3",		R9A08G045_PD_I2C3,
+				DEF_REG_CONF(CPG_BUS_MCPU2_MSTOP, BIT(13)),
+				RZG2L_PD_F_NONE),
 	DEF_PD("scif0",		R9A08G045_PD_SCIF0,
 				DEF_REG_CONF(CPG_BUS_MCPU2_MSTOP, BIT(1)),
 				RZG2L_PD_F_NONE),
-- 
2.39.2


