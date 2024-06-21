Return-Path: <devicetree+bounces-78404-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 32972912345
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 13:23:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B70A61F22CFC
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 11:23:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1BCF173352;
	Fri, 21 Jun 2024 11:23:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="CLXtLtX8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7548017332C
	for <devicetree@vger.kernel.org>; Fri, 21 Jun 2024 11:23:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718968999; cv=none; b=k0a9n0UlPix//uHOFRvUo9BFBO+pNteeA70EuZyiV8iCGt7rTBKC9oeADQ+VJd8vQvnOhHkJcaItouqq3XQ2NNOe5r793xNFaWpDljr2PJI2gfLO0bfnRtbrDjYDaiAZaS/X7veVBCMYWUubxHzmOGU3v0G9yDph1TrMvCrtArw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718968999; c=relaxed/simple;
	bh=IjqB5K3yTTGpfsfSv09ofrCn4aXpotuyc6Jhgv4pWbk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Tt9IcwTKFazvl8IL8ClqeLttb7u2imgpFbO/tx9H8+3AiySzMn+KbWnmewBl8sOUd1UXVcph8ibNfV3Zx/Fmry7h0d0SCbGbPH1cC08E5Vr0TjBC3dKzkJqroTTCckePXhbBIncTHO0dfCuIpSbWtBaGq5hJ8GHkEYwDVhP0oRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=CLXtLtX8; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-a6f09eaf420so213661166b.3
        for <devicetree@vger.kernel.org>; Fri, 21 Jun 2024 04:23:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1718968996; x=1719573796; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cgq1OghRTQpWPIPh5SM3MxJFBQJBAY3NN025Q37Id8M=;
        b=CLXtLtX8c7C6khqzQ6phLdoEWz4MJBIwG4y7bqop6nTAor4wffRvgYbAvccDAp+Rqe
         BeleyMxht50y4kHVF3xTDOcHrRiebztnybecXC/OwFxs66xgQVCC+XoonpJfr/iMXtu2
         t7Adx2jRBf22bqwunPe82BrcaZ1At+HlmBhGcMIb6UQwIEYQkQzLzFbBWDZRHW7EtPLc
         t0aIl2p8ts6pxPwfxnFpQzRf/YhlyWxLA9Q79F1kLJzhbKA1zpvEJUHSaGkHNP9Q1QqK
         XuvvTyY1imLGywFrUEQ4+SpwfJDnAxUemE63Tw3Kt/bOb+8XBy2Wl4CduazF9yAQS+0C
         71nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718968996; x=1719573796;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cgq1OghRTQpWPIPh5SM3MxJFBQJBAY3NN025Q37Id8M=;
        b=tT5poFPL0ODgcWK2dfIbyv3LSew5wV0yRlwoeHgGSSuJefuExeT8ip65zS9eoESp/c
         helS6RCxgZvEwcUW+MgbvnDcnYLxfzLlWkELqbKJi4pCCOB2b1GIqrL4J5mSIyf58jWw
         stUEuWaQKfw0hUyVottkyCVlTigWBeI1Pt0PcJhDI1YADgBeJU4NFlxYZDdhw1NizAai
         f+PetiUClxp4K36w7hIW2mo+CpLZcpPTB+4Oq9uguZSqwlT9ZzfKC/8GpENzQnmslw44
         tNq/yw3WYmleTm/QDQWVF5tHQ40yxbMd2C0K33dt2Spr5Uh0p7DOK2pK8mX2KRa5hzxi
         ursA==
X-Forwarded-Encrypted: i=1; AJvYcCX08rg9Eok9hzuY5+anMqbTDuqfw0sdqKRkmC/Y6kho137qyMIAm7HI3xrKfK8Awhr/oj7NL4gGy4kzOdtBMQ3SYAWk371jgPylHw==
X-Gm-Message-State: AOJu0YwRC8fphJRXV6c9ZlSp4TJR/n3/SUu1iusa3Xm3LK3U+gagPIlo
	raC6DLD+YgvVRDahH0d69yXUemYmkSqdqxkIevw6jtyUjOj62ighhBC1BRRmXSw=
X-Google-Smtp-Source: AGHT+IEs1anfd3yompMBKukVYfgrAHEqy/KpI7/nK6qHHwwIJuii2W5AgRvJ/UKk5m7gC+Xl4zJygQ==
X-Received: by 2002:a17:906:da02:b0:a6f:314c:a75d with SMTP id a640c23a62f3a-a6fab7dda52mr469041566b.73.1718968995818;
        Fri, 21 Jun 2024 04:23:15 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.70])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6fd0838345sm64498466b.99.2024.06.21.04.23.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Jun 2024 04:23:15 -0700 (PDT)
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
Subject: [PATCH 01/12] clk: renesas: r9a08g045: Add clock, reset and power domain support for I2C
Date: Fri, 21 Jun 2024 14:22:52 +0300
Message-Id: <20240621112303.1607621-2-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240621112303.1607621-1-claudiu.beznea.uj@bp.renesas.com>
References: <20240621112303.1607621-1-claudiu.beznea.uj@bp.renesas.com>
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
 drivers/clk/renesas/r9a08g045-cpg.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/drivers/clk/renesas/r9a08g045-cpg.c b/drivers/clk/renesas/r9a08g045-cpg.c
index b068733b145f..a07eb3b359fc 100644
--- a/drivers/clk/renesas/r9a08g045-cpg.c
+++ b/drivers/clk/renesas/r9a08g045-cpg.c
@@ -213,6 +213,10 @@ static const struct rzg2l_mod_clk r9a08g045_mod_clks[] = {
 	DEF_COUPLED("eth1_axi",		R9A08G045_ETH1_CLK_AXI, R9A08G045_CLK_M0, 0x57c, 1),
 	DEF_COUPLED("eth1_chi",		R9A08G045_ETH1_CLK_CHI, R9A08G045_CLK_ZT, 0x57c, 1),
 	DEF_MOD("eth1_refclk",		R9A08G045_ETH1_REFCLK, R9A08G045_CLK_HP, 0x57c, 9),
+	DEF_MOD("i2c0",			R9A08G045_I2C0_PCLK, R9A08G045_CLK_P0, 0x580, 0),
+	DEF_MOD("i2c1",			R9A08G045_I2C1_PCLK, R9A08G045_CLK_P0, 0x580, 1),
+	DEF_MOD("i2c2",			R9A08G045_I2C2_PCLK, R9A08G045_CLK_P0, 0x580, 2),
+	DEF_MOD("i2c3",			R9A08G045_I2C3_PCLK, R9A08G045_CLK_P0, 0x580, 3),
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


