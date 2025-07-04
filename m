Return-Path: <devicetree+bounces-193147-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 396C3AF97B1
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 18:15:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2F140588509
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 16:15:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74097327A34;
	Fri,  4 Jul 2025 16:14:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="TydEADM4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ACA2327187
	for <devicetree@vger.kernel.org>; Fri,  4 Jul 2025 16:14:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751645684; cv=none; b=Z1vmAAW3/yYFPC9IKRfshYu4b9MA+o3uyFBBp11d39Nmq2d7gUXf+QqtWadU2xVBoZAQe9TF3XFpZeHRQ6Yk3Q+slWlCrdWuCLQD80GdGXXtxmoi8KTFei2wsMQ3G2EGjGOo42D5xhC7dwMNbpKsWNy4/c9X+GJWMw8rJXMKKpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751645684; c=relaxed/simple;
	bh=iGKOR9K+IYXovU50dMFSM5PU98+O5pWxvmMYxBBblOo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=bblWgL2s2ZWnL4tuhXMWfw3kdrLYeTKoIYx03lnmYRKKCZtR8IW1IoU5dK2ujAYOiDuIkL00taGzTtjjTtXrmAeiuMy7GvqQx+nUX6eKSdZASPIpJhJ49Fo38ohFpoP2wqhPgJaAd8OiL9nfS3h5d4c1DnjXGrfd2x6xzpQetjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=TydEADM4; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-ae0dd7ac1f5so203178066b.2
        for <devicetree@vger.kernel.org>; Fri, 04 Jul 2025 09:14:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1751645679; x=1752250479; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JmGBN4vguwr7JXCGrQEzsAEtM0h76i9zDt+HmVvYfZc=;
        b=TydEADM4MVm+OZh9eQDE4/03G/rYKHzrXHz9OitNZciJtECYCIZDG4CemTCdT2tVvv
         TW2dGEcdtrvfEYcd6OfbchqTuJ61OKNXq/ItqULkK7BCzdLNyjECIybzRKwIbNgEaZHw
         25Upg49W7kMTpSjSTIQ2bSrtqgXTMa4f3zG+TsoaBk73g5+SkNo9utgeKDzpqMhClOQk
         5ZVsGwnhLlojkzZYEybKouPRO4dL2Qm9qIMP+z7094YDYUnYbZsXs+FHXYiJBLnHFMOK
         8aE4tobVWGmeF9Lr+copjy56jpNFz3j121dNM5bi94zZdFodDiC6mxfYjth3uz8/wgBo
         rneg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751645679; x=1752250479;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JmGBN4vguwr7JXCGrQEzsAEtM0h76i9zDt+HmVvYfZc=;
        b=WxgpZGvz26S3mBlC9Wvyqyj9b92x8HypUfu3gIJsGnI00LUBKmC5Vr8hYcPm0oLrWG
         57OFskCqzmPRCE0yf/eLYj+uop01pQWsf/3eUgP1DY/eJSxYYTE2vurCDhUwhJ38mH3V
         jWjLPmYskUlD/lsUL+YPC+etD5sg6qhSP40RIEoBxjfIlSuOk6Jt52fjZhBizj4OYetP
         al7hNyAEZIR76ciJgACqZpx8Sua+a4C0S/zK9SdjlUrlt6H4BEt6PUsZqGLIl6lvNbW+
         2Bpxxf5AIGyyqTKA1/kVcnfg/XBYdQfs33uPiUEhD523XpaiG5WhP560pkvnUhAZbvzO
         Z7Jg==
X-Forwarded-Encrypted: i=1; AJvYcCUKQOsvq5gacXTry/K3oX+sWuf3EImMeszh1HxRpN41ndsPGBXeMO1KhTK6Uu9u2woKS4qsd9hot1/c@vger.kernel.org
X-Gm-Message-State: AOJu0YwGNuGyQlZk/byRG2IDs4zI5jqBWtHJ0guE6apBG0na013wYf0Y
	3OOhqewnT9Mw5SCWZnUbSKq9KEArbCAXah2ncoZ3ut3Y8JU6rVL1rOleYtGUiPt9YIM=
X-Gm-Gg: ASbGnctUJ2Wn9Pc+fydqqn5+HRWwmXNJIhaxB/U/X6tBYTX4vq3VyGEZ+CnTnxtGaiu
	gpHaB+2GlYw6d4rtkw7t0HyLWJx65tBpf4cXT6CaI6+R1ERnz9fdUUnRzBpobkJ0s3ASPeNBe5V
	VxKKhW5gwQHvdhowMnHgWovgHWcal+32dkIG2FN3DShWPO7KbaMDaNF7qp4G74zBLfr/riH2ZMK
	J8+fCCj/rO89ohs3mNaVh1aUWzJVwi2YWv0lVg68SSOuny5aFr1neKpHgpWpMAUACdoSAiSd/QD
	570f44wVMfgrsDbNB9F1sP844KeEqtUord390Z8rjXQQKO+wz5eF6WelBoDWCNkRVuCx2FekG+D
	Gy7lohq8Zr0wzuh4=
X-Google-Smtp-Source: AGHT+IGi14ev4epMFpAVcULI0O8fOQuvZidrlt+4KBmokmlyAj9zyscXUfCOlIWYAChv9XzOSvBlZQ==
X-Received: by 2002:a17:907:7ba3:b0:add:f189:1214 with SMTP id a640c23a62f3a-ae3fbc5b749mr340373166b.24.1751645679233;
        Fri, 04 Jul 2025 09:14:39 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.83])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae3f66d9215sm194703766b.2.2025.07.04.09.14.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Jul 2025 09:14:38 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: bhelgaas@google.com,
	lpieralisi@kernel.org,
	kwilczynski@kernel.org,
	mani@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	catalin.marinas@arm.com,
	will@kernel.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	p.zabel@pengutronix.de,
	lizhi.hou@amd.com
Cc: claudiu.beznea@tuxon.dev,
	linux-pci@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>
Subject: [PATCH v3 2/9] clk: renesas: r9a08g045: Add clocks and resets support for PCIe
Date: Fri,  4 Jul 2025 19:14:02 +0300
Message-ID: <20250704161410.3931884-3-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250704161410.3931884-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250704161410.3931884-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Add clocks and resets for the PCIe IP available on the Renesas RZ/G3S SoC.
The clkl1pm clock is required for PCIe link power management (PM) control
and should be enabled based on the state of the CLKREQ# pin. Therefore,
mark it as a no_pm clock to allow the PCIe driver to manage it during link
PM transitions.

Tested-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v3:
- collected tags
- dropped the power domain support and added MSTOP as power domain
  code is not available anymore in the current linux-next
- adjusted the patch title and description

Changes in v2:
- none

 drivers/clk/renesas/r9a08g045-cpg.c | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/drivers/clk/renesas/r9a08g045-cpg.c b/drivers/clk/renesas/r9a08g045-cpg.c
index 405907925bb7..4a6632ea22cb 100644
--- a/drivers/clk/renesas/r9a08g045-cpg.c
+++ b/drivers/clk/renesas/r9a08g045-cpg.c
@@ -289,6 +289,10 @@ static const struct rzg2l_mod_clk r9a08g045_mod_clks[] = {
 					MSTOP(BUS_MCPU2, BIT(14))),
 	DEF_MOD("tsu_pclk",		R9A08G045_TSU_PCLK, R9A08G045_CLK_TSU, 0x5ac, 0,
 					MSTOP(BUS_MCPU2, BIT(15))),
+	DEF_MOD("pci_aclk",		R9A08G045_PCI_ACLK, R9A08G045_CLK_M0, 0x608, 0,
+					MSTOP(BUS_PERI_COM, BIT(10))),
+	DEF_MOD("pci_clk1pm",		R9A08G045_PCI_CLKL1PM, R9A08G045_CLK_ZT, 0x608, 1,
+					MSTOP(BUS_PERI_COM, BIT(10))),
 	DEF_MOD("vbat_bclk",		R9A08G045_VBAT_BCLK, R9A08G045_OSCCLK, 0x614, 0,
 					MSTOP(BUS_MCPU3, GENMASK(8, 7))),
 };
@@ -329,6 +333,13 @@ static const struct rzg2l_reset r9a08g045_resets[] = {
 	DEF_RST(R9A08G045_ADC_PRESETN, 0x8a8, 0),
 	DEF_RST(R9A08G045_ADC_ADRST_N, 0x8a8, 1),
 	DEF_RST(R9A08G045_TSU_PRESETN, 0x8ac, 0),
+	DEF_RST(R9A08G045_PCI_ARESETN, 0x908, 0),
+	DEF_RST(R9A08G045_PCI_RST_B, 0x908, 1),
+	DEF_RST(R9A08G045_PCI_RST_GP_B, 0x908, 2),
+	DEF_RST(R9A08G045_PCI_RST_PS_B, 0x908, 3),
+	DEF_RST(R9A08G045_PCI_RST_RSM_B, 0x908, 4),
+	DEF_RST(R9A08G045_PCI_RST_CFG_B, 0x908, 5),
+	DEF_RST(R9A08G045_PCI_RST_LOAD_B, 0x908, 6),
 	DEF_RST(R9A08G045_VBAT_BRESETN, 0x914, 0),
 };
 
@@ -340,6 +351,10 @@ static const unsigned int r9a08g045_crit_mod_clks[] __initconst = {
 	MOD_CLK_BASE + R9A08G045_VBAT_BCLK,
 };
 
+static const unsigned int r9a08g045_no_pm_mod_clks[] = {
+	MOD_CLK_BASE + R9A08G045_PCI_CLKL1PM,
+};
+
 const struct rzg2l_cpg_info r9a08g045_cpg_info = {
 	/* Core Clocks */
 	.core_clks = r9a08g045_core_clks,
@@ -356,6 +371,10 @@ const struct rzg2l_cpg_info r9a08g045_cpg_info = {
 	.num_mod_clks = ARRAY_SIZE(r9a08g045_mod_clks),
 	.num_hw_mod_clks = R9A08G045_VBAT_BCLK + 1,
 
+	/* No PM modules Clocks */
+	.no_pm_mod_clks = r9a08g045_no_pm_mod_clks,
+	.num_no_pm_mod_clks = ARRAY_SIZE(r9a08g045_no_pm_mod_clks),
+
 	/* Resets */
 	.resets = r9a08g045_resets,
 	.num_resets = R9A08G045_VBAT_BRESETN + 1, /* Last reset ID + 1 */
-- 
2.43.0


