Return-Path: <devicetree+bounces-249564-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FF1ACDCE5C
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 17:52:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0C136304C2AB
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 16:51:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17BF633D6FC;
	Wed, 24 Dec 2025 16:51:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VAWaDeWr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC4493375CF
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 16:51:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766595067; cv=none; b=D5xmnXA4VxSoG3hNX4UXFV08vPFxz+Ou1uyGwuaJBGaxUv/SCZd9ptf7/hvJ0VLha2SapEQbkdaR+ZV8Y6hPLn/eid+pjanpoheyZT7CUhNJCrBxD2D0iJVHbE9v9FOxjtzwG1THKZXmqq5BnyT1mbRS6sqwAZm0nZEuFZ+PKbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766595067; c=relaxed/simple;
	bh=sd/WcWZKEqm73vDos7FpHpz5Abyv+hzHn8cogK3xUfM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=bmiFRaQI9wW261d0AvfR8p7OrUiRvtVPDsBqzAF1KqBz/CgXEywzDSr+3yCZ8qmRk1Ypg/f33otNMZPxijfh7MH4SoWXsyT6iSKL8tMe8mpxRByZywLfMb0NZYycFK7RL9JcU224CsyKGO0Bml2+Cj0m08y+QQDJfhITEaR52ug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VAWaDeWr; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-4779cc419b2so48224915e9.3
        for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 08:51:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766595063; x=1767199863; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YJ9M96GDyiEBVAHo1l70x8EOroyg7krGoMFvHraGU8w=;
        b=VAWaDeWr1PC0KBVkYSpE9RaCO6l0a+L0X5kPrdm0hY+U80orgJhgzrBRwkcOOI4mtq
         oYJVy5WzKIlxOeBAtl93PdiH+Fy5hhOlflW8nsQmNAT+QC6eqotA3doPK4mdpe4exlk8
         thVu2OMC17L9F4qSAZ5FL9lNOd4w/XHlpCUvftlbbzt2g3TOiCeFq67GFxWqqOHxfj3f
         6fUMTxmhXutjHV0sOOjOdOYxkHAYQ0jfM9oTu38Mckh6LtSvvwkE/2Lecb7Mckuq52tD
         UBTHWUDAptiiXDD45zKxvz/7Tx2jQ1o74Bc2AMmbjIl/0p1OjHqhpZM1PDaPAvY+01Jo
         7+pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766595063; x=1767199863;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=YJ9M96GDyiEBVAHo1l70x8EOroyg7krGoMFvHraGU8w=;
        b=B6sgbOlafIzHpTsC/2E/+MV76rkLjNWTNfwDG90qRO19aKrsaYgyrWwP76mXZAbVbR
         5PUlu6VxR00s0F9Cq10DNvc9NfvdEQarAt2jdYbm9PH3x01biuFu8iR6NGe2C07AU/4s
         1lDQoH+HlQnv68uaTYliBP5uvASvOqvTbqClLNuk3ivsh1Y+tVenptBTeQ+zaJudPz7N
         rPtE4NopQffezMgwKTfzD70bgTNfwsQumbRNVq5+FVBJukglHSZSh/p7IIRztDXuybWD
         Lvic7uTMTjEylwxhMxpDhwJceVHHnDUEanyHDIZ/1yOU3zUpkBL8zCw4PezIyFeJRF74
         iNRA==
X-Forwarded-Encrypted: i=1; AJvYcCUizP/WwIryA3bFzCBtHL+ybejLhUtl9RUDQhuwTl2yRdnuR2GRc6OlCdSJrs7PGbVQrdw+q+Ghgw4N@vger.kernel.org
X-Gm-Message-State: AOJu0YxbxjJGeq4Xi/D0GBcwdqhOGPcD4O7Bu0PVRaC6Rj+5jB5UDkQk
	o8phs/Ds0KDpJ7TrqDjNULha+XkxLWkd7tqzXIOvikBazA03r6LztBAz
X-Gm-Gg: AY/fxX6T6NAteL96luo89vNmmwZD+l5GUdPHE1C89IQQQknqBVOYPyLZw2vXFKr0OuC
	pQNWPLN1+LtLd9Jqm7mCmfd7eDxW4okm88zJ/cak6woZ5hffOOz6bF4AKzfZGyDXfV+BTWovNvc
	4GGticK9+b0mY4qOg4ASyueepZS/fn1AkZxOJDWJv55nlrgyYVEplqEntzUUzD5unDIdxmnX2U0
	b/idI8kgFwu6uNtKYdFLN6ekVmB79abgA13hbe37hfEOTg9iWFXBUNhD8s3NCZnwetSGtF4W9S1
	jU2APP6TEiL/JojhcY/ORew9xNdxseZt4CG9MhIHoVTVLhxQ1aMLhDE55XulGJvh4c/b4d9kDW2
	DUqnyAD74bLU2yXyExbHNM5TRAxxPulI5dZbp0f94s/gA5iFBNb1iKnoA/5Qh2dmn/znV5LPK/J
	Tze2fYF7RNr7dMlIyM3mrQ2e+r15NQdA7+NV/A7xcBsRZ9bVvyqFzKjVaJc5V9Z/ju7i/Y8ewxz
	W2JAh61uqsBqT7x7h1BeqPH
X-Google-Smtp-Source: AGHT+IE+svy3mvCXV6dqgJcZOLRQlow+GqSASBMWQjorBIAS2OCxIB7buoJKJ5BnTPTqa0C5JtouiQ==
X-Received: by 2002:a05:600c:6388:b0:477:63db:c718 with SMTP id 5b1f17b1804b1-47d19557cd2mr181203505e9.16.1766595063032;
        Wed, 24 Dec 2025 08:51:03 -0800 (PST)
Received: from iku.Home ([2a06:5906:61b:2d00:3371:7b65:aaf4:d2e4])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47be3ac5409sm136482305e9.15.2025.12.24.08.51.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 08:51:02 -0800 (PST)
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
Subject: [PATCH 4/4] clk: renesas: r9a09g056: Add entries for CANFD
Date: Wed, 24 Dec 2025 16:50:49 +0000
Message-ID: <20251224165049.3384870-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
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

Add clock and reset entries for the CANFD IP.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 drivers/clk/renesas/r9a09g056-cpg.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/clk/renesas/r9a09g056-cpg.c b/drivers/clk/renesas/r9a09g056-cpg.c
index 741df446e24e..e356ed4a3d1d 100644
--- a/drivers/clk/renesas/r9a09g056-cpg.c
+++ b/drivers/clk/renesas/r9a09g056-cpg.c
@@ -46,6 +46,7 @@ enum clk_ids {
 	CLK_PLLCLN_DIV2,
 	CLK_PLLCLN_DIV8,
 	CLK_PLLCLN_DIV16,
+	CLK_PLLCLN_DIV20,
 	CLK_PLLCLN_DIV64,
 	CLK_PLLCLN_DIV256,
 	CLK_PLLCLN_DIV1024,
@@ -183,6 +184,7 @@ static const struct cpg_core_clk r9a09g056_core_clks[] __initconst = {
 	DEF_FIXED(".pllcln_div2", CLK_PLLCLN_DIV2, CLK_PLLCLN, 1, 2),
 	DEF_FIXED(".pllcln_div8", CLK_PLLCLN_DIV8, CLK_PLLCLN, 1, 8),
 	DEF_FIXED(".pllcln_div16", CLK_PLLCLN_DIV16, CLK_PLLCLN, 1, 16),
+	DEF_FIXED(".pllcln_div20", CLK_PLLCLN_DIV20, CLK_PLLCLN, 1, 20),
 	DEF_FIXED(".pllcln_div64", CLK_PLLCLN_DIV64, CLK_PLLCLN, 1, 64),
 	DEF_FIXED(".pllcln_div256", CLK_PLLCLN_DIV256, CLK_PLLCLN, 1, 256),
 	DEF_FIXED(".pllcln_div1024", CLK_PLLCLN_DIV1024, CLK_PLLCLN, 1, 1024),
@@ -431,6 +433,12 @@ static const struct rzv2h_mod_clk r9a09g056_mod_clks[] __initconst = {
 						BUS_MSTOP(1, BIT(7))),
 	DEF_MOD("riic_7_ckm",			CLK_PLLCLN_DIV16, 9, 11, 4, 27,
 						BUS_MSTOP(1, BIT(8))),
+	DEF_MOD("canfd_0_pclk",			CLK_PLLCLN_DIV16, 9, 12, 4, 28,
+						BUS_MSTOP(10, BIT(14))),
+	DEF_MOD("canfd_0_clk_ram",		CLK_PLLCLN_DIV8, 9, 13, 4, 29,
+						BUS_MSTOP(10, BIT(14))),
+	DEF_MOD("canfd_0_clkc",			CLK_PLLCLN_DIV20, 9, 14, 4, 30,
+						BUS_MSTOP(10, BIT(14))),
 	DEF_MOD("spi_hclk",			CLK_PLLCM33_GEAR, 9, 15, 4, 31,
 						BUS_MSTOP(4, BIT(5))),
 	DEF_MOD("spi_aclk",			CLK_PLLCM33_GEAR, 10, 0, 5, 0,
@@ -599,6 +607,8 @@ static const struct rzv2h_reset r9a09g056_resets[] __initconst = {
 	DEF_RST(9, 14, 4, 15),		/* RIIC_6_MRST */
 	DEF_RST(9, 15, 4, 16),		/* RIIC_7_MRST */
 	DEF_RST(10, 0, 4, 17),		/* RIIC_8_MRST */
+	DEF_RST(10, 1, 4, 18),		/* CANFD_0_RSTP_N */
+	DEF_RST(10, 2, 4, 19),		/* CANFD_0_RSTC_N */
 	DEF_RST(10, 3, 4, 20),		/* SPI_HRESETN */
 	DEF_RST(10, 4, 4, 21),		/* SPI_ARESETN */
 	DEF_RST(10, 7, 4, 24),		/* SDHI_0_IXRST */
-- 
2.52.0


