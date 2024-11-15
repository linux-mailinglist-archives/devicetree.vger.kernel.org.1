Return-Path: <devicetree+bounces-122133-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F00989CE07B
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 14:47:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AFFCC28BF24
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 13:47:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 037381D460E;
	Fri, 15 Nov 2024 13:44:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="Z/ngXqMn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0F031D222B
	for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 13:44:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731678257; cv=none; b=aiW7W4vY6wQhw4i09kRIda7jXlCkVzBlFtNafenyR9QiASVS3zmy5cUHVYBFaYLs/HkaThFa2ev8Dsij6haspLXQphy+ZMJBWm7liWwq+y7uZRg8LvZEGJ1HO7vBDVhKWS5czrOubvnJId/sWUestvsqcD0tbyr6O8XJJfeiK9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731678257; c=relaxed/simple;
	bh=tXuRLP65pk0Y4kcWqeCQieYYW8KQLH1NVgss4OHIrGM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ZqCuqQB183PsapeSRJZBJbKoqEMOozR/omuT+iwpLwsmiRTZtOovj2fmzID2CLYUaDqNmv9/CxKtlrOCyZoS/AtHU+Nlz+OdjY10YPwT1w//KgQcEzqYQKAiwXz6j7Y2dWPyperSbPig3ezJRYh4Y6o7HmMvvYFfF3obOyxH47c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=Z/ngXqMn; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-382296631f1so292682f8f.3
        for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 05:44:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1731678252; x=1732283052; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xVAv9/ONcMTOzGTP5wXiAVcgC8zzS7afKKpaMu2n2EA=;
        b=Z/ngXqMn9YUXPmpX7XCuwEiYf+6/Ma+p2LycwfHnXLQgKqmloI7ulYFqbpNa8HgUS6
         9ehV2igh36YX4bsxOSU/zPYmDD75fGIo0LfuZ5q0wq2kvHg4BzrZHd/uHsn95jqbTMKK
         e4IQ5QWcTty/ZTrJyhiy2SL7jX8NyN+R5EXoEN++adAOgoV7cjZx0eSW+VixdaVqFqLl
         m/Tr3SDAFy2NaiMfsE9VFYabnLCIDWDSynfTfU5j1mac989dLBmNmEJ/eautDiZpP95Y
         +GAUSq3D+hZOKlS680pZyjuAquW53TkGq/FjI/ywlv/P2mgoojSyJfTSK8bfCo9l0WId
         6TFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731678252; x=1732283052;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xVAv9/ONcMTOzGTP5wXiAVcgC8zzS7afKKpaMu2n2EA=;
        b=LqYwXhkMq9M8F9sJtnlDRe27pAhuevJcqjZLxFC0OgcYD9JudJw5+5rYigbgMA6zVM
         7hWdjE2wMkd0u+quUeHahMdFF6S4Xhl12lA31t1a2+9UDbk69l2VUdaDo4lvvKoQ2hxl
         mGCRXBrCDMGN+GjMsrt0OyKY3M3AcXKh2dI69uzA3IE+bjBfZ4iGqtzoAfI18+v+TlQE
         UspnST+CiofOqA2SiaVfIS1VCRClq8g2HznifJxGKYViJFf7hZy/X4gyZo16c5hFKFK0
         j1lUjjOh4qp9F02MNJDURPEnK8HRHlJ+ji/FktF+f2p0tJy+InZUyLSFnDwGSN4bKLYr
         GelQ==
X-Forwarded-Encrypted: i=1; AJvYcCUyMcMpb1A3AcZrv+sQvmpMVcZ9rkC0E7RxWg0ZaKP7UKSiniEW45/PhmRAFUzTBlZupHoDSjLjLrRb@vger.kernel.org
X-Gm-Message-State: AOJu0Yxk5sg9gIt6cExW3q0uNPDqyd47prNPqgng6y+nnCdZHAdWr1Ej
	R5BatvHcAhZhbk/KDRDWRBhNb8k+nGl7dOLp1UwPVXGc1Anz6zHC1QmaLbKLYo8=
X-Google-Smtp-Source: AGHT+IFIDOIXghS5KIj0k3ZbhD6JCey6zJvQ+3RcAsBVuLIPMWnrUGxM3x/f+/74OyXEXYZ28L8UNg==
X-Received: by 2002:a5d:47a2:0:b0:37d:4ab2:9cdc with SMTP id ffacd0b85a97d-38225a06c76mr2335122f8f.13.1731678252132;
        Fri, 15 Nov 2024 05:44:12 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.28])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3821ada3fc9sm4378016f8f.20.2024.11.15.05.44.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Nov 2024 05:44:11 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: geert+renesas@glider.be,
	magnus.damm@gmail.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	gregkh@linuxfoundation.org,
	jirislaby@kernel.org,
	p.zabel@pengutronix.de,
	lethal@linux-sh.org,
	g.liakhovetski@gmx.de
Cc: linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-serial@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v3 1/8] clk: renesas: r9a08g045: Add clock, reset and power domain for the remaining SCIFs
Date: Fri, 15 Nov 2024 15:43:54 +0200
Message-Id: <20241115134401.3893008-2-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20241115134401.3893008-1-claudiu.beznea.uj@bp.renesas.com>
References: <20241115134401.3893008-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

The Renesas RZ/G3S SoC has 6 SCIF interfaces. SCIF0 is used as debug
console and is already enabled. Add the clock, reset and power domain
support for the remaining ones.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v3:
- none

Changes in v2:
- none

 drivers/clk/renesas/r9a08g045-cpg.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/drivers/clk/renesas/r9a08g045-cpg.c b/drivers/clk/renesas/r9a08g045-cpg.c
index b2ae8cdc4723..da6dfffa089a 100644
--- a/drivers/clk/renesas/r9a08g045-cpg.c
+++ b/drivers/clk/renesas/r9a08g045-cpg.c
@@ -224,6 +224,11 @@ static const struct rzg2l_mod_clk r9a08g045_mod_clks[] = {
 	DEF_MOD("i2c2_pclk",		R9A08G045_I2C2_PCLK, R9A08G045_CLK_P0, 0x580, 2),
 	DEF_MOD("i2c3_pclk",		R9A08G045_I2C3_PCLK, R9A08G045_CLK_P0, 0x580, 3),
 	DEF_MOD("scif0_clk_pck",	R9A08G045_SCIF0_CLK_PCK, R9A08G045_CLK_P0, 0x584, 0),
+	DEF_MOD("scif1_clk_pck",	R9A08G045_SCIF1_CLK_PCK, R9A08G045_CLK_P0, 0x584, 1),
+	DEF_MOD("scif2_clk_pck",	R9A08G045_SCIF2_CLK_PCK, R9A08G045_CLK_P0, 0x584, 2),
+	DEF_MOD("scif3_clk_pck",	R9A08G045_SCIF3_CLK_PCK, R9A08G045_CLK_P0, 0x584, 3),
+	DEF_MOD("scif4_clk_pck",	R9A08G045_SCIF4_CLK_PCK, R9A08G045_CLK_P0, 0x584, 4),
+	DEF_MOD("scif5_clk_pck",	R9A08G045_SCIF5_CLK_PCK, R9A08G045_CLK_P0, 0x584, 5),
 	DEF_MOD("gpio_hclk",		R9A08G045_GPIO_HCLK, R9A08G045_OSCCLK, 0x598, 0),
 	DEF_MOD("vbat_bclk",		R9A08G045_VBAT_BCLK, R9A08G045_OSCCLK, 0x614, 0),
 };
@@ -249,6 +254,11 @@ static const struct rzg2l_reset r9a08g045_resets[] = {
 	DEF_RST(R9A08G045_I2C2_MRST, 0x880, 2),
 	DEF_RST(R9A08G045_I2C3_MRST, 0x880, 3),
 	DEF_RST(R9A08G045_SCIF0_RST_SYSTEM_N, 0x884, 0),
+	DEF_RST(R9A08G045_SCIF1_RST_SYSTEM_N, 0x884, 1),
+	DEF_RST(R9A08G045_SCIF2_RST_SYSTEM_N, 0x884, 2),
+	DEF_RST(R9A08G045_SCIF3_RST_SYSTEM_N, 0x884, 3),
+	DEF_RST(R9A08G045_SCIF4_RST_SYSTEM_N, 0x884, 4),
+	DEF_RST(R9A08G045_SCIF5_RST_SYSTEM_N, 0x884, 5),
 	DEF_RST(R9A08G045_GPIO_RSTN, 0x898, 0),
 	DEF_RST(R9A08G045_GPIO_PORT_RESETN, 0x898, 1),
 	DEF_RST(R9A08G045_GPIO_SPARE_RESETN, 0x898, 2),
@@ -306,6 +316,16 @@ static const struct rzg2l_cpg_pm_domain_init_data r9a08g045_pm_domains[] = {
 				DEF_REG_CONF(CPG_BUS_MCPU2_MSTOP, BIT(13)), 0),
 	DEF_PD("scif0",		R9A08G045_PD_SCIF0,
 				DEF_REG_CONF(CPG_BUS_MCPU2_MSTOP, BIT(1)), 0),
+	DEF_PD("scif1",		R9A08G045_PD_SCIF1,
+				DEF_REG_CONF(CPG_BUS_MCPU2_MSTOP, BIT(2)), 0),
+	DEF_PD("scif2",		R9A08G045_PD_SCIF2,
+				DEF_REG_CONF(CPG_BUS_MCPU2_MSTOP, BIT(3)), 0),
+	DEF_PD("scif3",		R9A08G045_PD_SCIF3,
+				DEF_REG_CONF(CPG_BUS_MCPU2_MSTOP, BIT(4)), 0),
+	DEF_PD("scif4",		R9A08G045_PD_SCIF4,
+				DEF_REG_CONF(CPG_BUS_MCPU2_MSTOP, BIT(5)), 0),
+	DEF_PD("scif5",		R9A08G045_PD_SCIF5,
+				DEF_REG_CONF(CPG_BUS_MCPU3_MSTOP, BIT(4)), 0),
 	DEF_PD("vbat",		R9A08G045_PD_VBAT,
 				DEF_REG_CONF(CPG_BUS_MCPU3_MSTOP, BIT(8)),
 				GENPD_FLAG_ALWAYS_ON),
-- 
2.39.2


