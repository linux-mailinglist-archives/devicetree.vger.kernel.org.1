Return-Path: <devicetree+bounces-172361-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AF63EAA488F
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 12:36:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7BB1B4C3531
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 10:35:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1361258CE2;
	Wed, 30 Apr 2025 10:33:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="nZNmPM0b"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2DB02586ED
	for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 10:33:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746009188; cv=none; b=Hm8uDT2Z1fBXf9xuDr7F4PgBB47yMSdaxypSF6oRPm+M7qsINW6YryYsjG8fYAOhVhN0bQYEIKvg/AFrpuFAgwRwHxBaz2g7ibateFzyc1dh6jOSBlAom9Prqe3T8W3PtgYzl1qEzxGT6LnnP79a5wnyy8rmPpNZD34wU64NHIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746009188; c=relaxed/simple;
	bh=yXMvUcI9UJOVWK6FV4N0kjaxLM7bkmRdgBXzTjBcUVg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=A6pgdQewX6IiBQyHqK1hzUqydlZPyBLQXDnOQ7X9qLPBq2fuV3ZhXApdMsZ9yJZICxHPQVgEcH1hHWYuKoMM6XGK4rgTnfds1EsWJqAxUOw7MmajNj7O4zUd6nMgz176kBDZorOqcbbSYbvndBvfbMvkoTx0jHO72DcwkJKlRFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=nZNmPM0b; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-5f728aeedacso8546504a12.2
        for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 03:33:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1746009184; x=1746613984; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5Xu0lwXfHypam6aFf6MDeNeMIOVtEqILdYrrYMjhy+Y=;
        b=nZNmPM0bCYZoKKVt2njn4UV/Q5KlMvktieOUDuXK/xt4HgyCYgomnZ1e6UfGdMzEF4
         GW6G4+7NZ2lMLHA3STlzOrkTfFURcq5fKc2N0WCOOY3Hy59b6UT91F/orn5ONZBVfdb4
         VcGF3gFvXH+cKrKNffaEnQATb+TU3z1GIn7OslsIkoX2BbM9UNyO3yjg2wnnq+Vk8hBw
         6tHtMt6VUFIWe6XKXxsnPa+br6/6zP08yrnT7l/eG6HVAqDSh03D04qZSbgdaynDek9H
         +zDS8gHJ9EINmn1XYuh6kBW/Nv09o7orAQqrHP7wsfLQIjJ1TNuIcmRZKJdhif46KMSD
         TZew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746009184; x=1746613984;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5Xu0lwXfHypam6aFf6MDeNeMIOVtEqILdYrrYMjhy+Y=;
        b=BarDyTS9HOHunAd2uiqcbB3BHlSea8lAg0//IWS7oL6mTLbbBNfkSCTtNaVsJetRZy
         IbCvJln5IGLvuCeY2rAjg+YMRmBS+UmCWDyR/aP8CHY2JDUsWEIaf1iDkkf+da9jxpCh
         W+N+NXBLGPZIJDKEkM09Cm3abb+nOUmO4tRV9h92p/aPU3rR8rVXbOOkq6+FXwXLgaIM
         5+0Pe6/7exiqoR+lAZBDFg6KCQ2WjyRV5D4xaCTvenNH7yf3vIHSJnyHnK3R/A/MGixl
         u1qP52J0uzUD3bOeEBCugxTZx/1+Fq6weJ6XXMvz5lb6vzrl3sBqT+0atAHqylkd4Zm8
         jQYg==
X-Forwarded-Encrypted: i=1; AJvYcCVb1bq5dQIaB+CtYed7na7EbKIv8n+mK2e2B9vs/1BAya3oOwwxfHysOC/WWUnNh2QMU6ilfi7OnIlP@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0k6PbHqgW+4S7OB2cIw5B8Cz+EnZ5yGllNGpfuIfBy9ZURw2r
	7hvlGhV9MIECIwpLTWoirwDQxar0cqlMCD8XKb7HIcdha1+SlSSMPZL/EJjNxTA=
X-Gm-Gg: ASbGncsB7uLHby0lMD0Dc6cyJsvv7NaYk387VRdKDYDK0Bgzruy5Ct9i4pW1ruDwGGy
	Gkl9/zEacYSIP3zeQ7v6OybY+9KDE7tAOA6YfahtN1gZZW1s9TCpYqvEJ4omcJxLrIIgRwcGNSe
	NTNOwDiXwyJklXg+whOpOEGl3C4xYTzyNMIIPNfq6lUWl6hwzfxU1iCcUxfPC85E7qNwK7pcTf5
	i6ZfZ7mVWaXG33NrkfUV/j8+jqPsNSGdoCWnZQ6rOmjSr4RLryeEWy8CwnZhL1DlGExHTFxQu5c
	17DMc0N9oDoKaGZbJHBxUOzUosJpUNh1jKYMkJSvJXVSZg55/KN30P3yP9VJVuWVmDl5jvk=
X-Google-Smtp-Source: AGHT+IEiP6Vgn86q0Y+9iOsEDH1SApC/mbVRMzQBBXjANsWv64cM9/IPsj3x7m/5obY5CmIm9XqGUw==
X-Received: by 2002:a17:907:9805:b0:ac3:422a:76dc with SMTP id a640c23a62f3a-acedc65297fmr255856866b.34.1746009184102;
        Wed, 30 Apr 2025 03:33:04 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.166])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace6ed6af86sm909390366b.133.2025.04.30.03.33.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Apr 2025 03:33:03 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: bhelgaas@google.com,
	lpieralisi@kernel.org,
	kw@linux.com,
	manivannan.sadhasivam@linaro.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	saravanak@google.com,
	p.zabel@pengutronix.de
Cc: claudiu.beznea@tuxon.dev,
	linux-pci@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH 2/8] clk: renesas: r9a08g045: Add clocks, resets and power domain support for the PCIe
Date: Wed, 30 Apr 2025 13:32:30 +0300
Message-ID: <20250430103236.3511989-3-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250430103236.3511989-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250430103236.3511989-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Add clocks, resets and power domains for the PCIe IP available on the
Renesas RZ/G3S SoC. The clkl1pm clock is required for PCIe link power
management (PM) control and should be enabled based on the state of the
CLKREQ# pin. Therefore, mark it as a no_pm clock to allow the PCIe driver
to manage it during link PM transitions.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
 drivers/clk/renesas/r9a08g045-cpg.c | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/drivers/clk/renesas/r9a08g045-cpg.c b/drivers/clk/renesas/r9a08g045-cpg.c
index 4035f3443598..33219164a19a 100644
--- a/drivers/clk/renesas/r9a08g045-cpg.c
+++ b/drivers/clk/renesas/r9a08g045-cpg.c
@@ -243,6 +243,8 @@ static const struct rzg2l_mod_clk r9a08g045_mod_clks[] = {
 	DEF_MOD("adc_adclk",		R9A08G045_ADC_ADCLK, R9A08G045_CLK_TSU, 0x5a8, 0),
 	DEF_MOD("adc_pclk",		R9A08G045_ADC_PCLK, R9A08G045_CLK_TSU, 0x5a8, 1),
 	DEF_MOD("tsu_pclk",		R9A08G045_TSU_PCLK, R9A08G045_CLK_TSU, 0x5ac, 0),
+	DEF_MOD("pci_aclk",		R9A08G045_PCI_ACLK, R9A08G045_CLK_M0, 0x608, 0),
+	DEF_MOD("pci_clk1pm",		R9A08G045_PCI_CLKL1PM, R9A08G045_CLK_ZT, 0x608, 1),
 	DEF_MOD("vbat_bclk",		R9A08G045_VBAT_BCLK, R9A08G045_OSCCLK, 0x614, 0),
 };
 
@@ -282,6 +284,13 @@ static const struct rzg2l_reset r9a08g045_resets[] = {
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
 
@@ -358,6 +367,8 @@ static const struct rzg2l_cpg_pm_domain_init_data r9a08g045_pm_domains[] = {
 				DEF_REG_CONF(CPG_BUS_MCPU2_MSTOP, BIT(14)), 0),
 	DEF_PD("tsu",		R9A08G045_PD_TSU,
 				DEF_REG_CONF(CPG_BUS_MCPU2_MSTOP, BIT(15)), 0),
+	DEF_PD("pci",		R9A08G045_PD_PCI,
+				DEF_REG_CONF(CPG_BUS_PERI_COM_MSTOP, BIT(10)), 0),
 	DEF_PD("vbat",		R9A08G045_PD_VBAT,
 				DEF_REG_CONF(CPG_BUS_MCPU3_MSTOP, BIT(8)),
 				GENPD_FLAG_ALWAYS_ON),
@@ -365,6 +376,10 @@ static const struct rzg2l_cpg_pm_domain_init_data r9a08g045_pm_domains[] = {
 				DEF_REG_CONF(CPG_BUS_MCPU3_MSTOP, BIT(7)), 0),
 };
 
+static const unsigned int r9a08g045_no_pm_mod_clks[] = {
+	MOD_CLK_BASE + R9A08G045_PCI_CLKL1PM,
+};
+
 const struct rzg2l_cpg_info r9a08g045_cpg_info = {
 	/* Core Clocks */
 	.core_clks = r9a08g045_core_clks,
@@ -381,6 +396,10 @@ const struct rzg2l_cpg_info r9a08g045_cpg_info = {
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


