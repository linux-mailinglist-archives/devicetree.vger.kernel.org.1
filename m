Return-Path: <devicetree+bounces-216970-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8993CB569B3
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 16:18:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DD8C817B514
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 14:18:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DFF1F2264B1;
	Sun, 14 Sep 2025 14:18:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="b3UBZg+2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4784202963
	for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 14:18:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757859484; cv=none; b=S285nrDDSP6R1fkbkn7c6KdaqBpOhXgCvnBQE2mIOKp3JWF74VchWEC6tQokXX+GQ48ywDlp0/nEpiUmA8mQSFiFXTVEon5ZuRVlfBOS8vyl2ggEtKgYvpzyXovZWSeO7UBWhUfGmqtczwZpAFenI1HEAGZkM6IeLijKbTPrGls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757859484; c=relaxed/simple;
	bh=j8DguNXU8AFQ34L5vsT4cmjDZPqX8ltYefhsbX7KxAw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=OQrKn08YkdArA5IVP56SeYDVsx86mCSNJtXfH6KDyTD5drf8I7O98BGpaDm0bcgZ7UPCvcjgVAywv7uEuH6OSxP7Kh79b1TB//2gkHfrtDZP3sJ0bumnBiF0uCjg6fduZNsxClXzw8MCyjQ+3nQh/0XVu1mf1AnK/0wn37I8sNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=b3UBZg+2; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-45f29e5e89bso8712705e9.2
        for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 07:18:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757859481; x=1758464281; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yiOb+44+abYoeDQ7m5UxjJUCp2UOVKxX0zLt82/lfMA=;
        b=b3UBZg+2WLyUZ1AGIVOvNnXFG0H9DtX/e+K3GEXXXAisZjThwr++POrYXdRV4pLyWY
         b3kJKP5KvQTQMFB5s6SL/sD4KTE9o9BIKvcTU0QiluR4vm6FoJOPeEnmY0Rq86Z53ZRH
         Of0lQzj54BsGMgXz/370cXSYGl5EdEIR6lhiP8lDORJB8TqC++qb8hnfl/hL+7ZT5Iha
         BQ5ChpAarQ/+DzvZO/SoDhEiR+aSfLdMVdkvLOhpWjhDPcZu7PZ/A5Kbk3com/nuqgFx
         WAUeADFQOhNbjUA3gpE0Our8/CZq6+KurtU5EOkmHQtEin5sPNjP0kP/6I2GUH0Ami9p
         bg9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757859481; x=1758464281;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yiOb+44+abYoeDQ7m5UxjJUCp2UOVKxX0zLt82/lfMA=;
        b=M2BS1ThnlOHTIqfK2EWaDDbFVh+gLgsQzeYQGWmyDYsNpL8C6FyWm+kQZrAeTTDzFl
         QVnto0qlEtzzPvTG0AuM+CxwY/gmPInuVLi3jcpuQuvBNmgIivscBJAMuVtyQa8xPYIj
         5D5m4ApUc42s4N3pQ3QkkuHH60E1exdAjvErRzlJR93oEgepNSr3RKkKIvdMYGoFIa8K
         T7TQxske3kFJBRns4a/5qE4kkTQtxvjLMjELuxRgUeKp8u4pCGEkgl0o5uhKQSMQtU4u
         i5NRk342ZjEj0gg704HLRW3VlMZPXB06YmgC01EBqCYn1iM4AlQrE/wEPTGfsQ3pglGX
         lYtA==
X-Forwarded-Encrypted: i=1; AJvYcCXCwpyJY57g+AYHP32gdMJMOoPO0vuHKyflA6PcSEI6URxbqM8I0khzbHBzpPW323k77U4twwQTG1A6@vger.kernel.org
X-Gm-Message-State: AOJu0YwYsg9GN8mThp2/YWkePNi5lvm9Tq7Z0a4pzM4o60yh+O0eklwk
	tRsgLIM73m/CscJJo5g4uu7y8ze8VMm9gIFZVoCSHm7PcqnpzKuQcTC3
X-Gm-Gg: ASbGnctUWffqHd0Aa54PKOD+T4dbqz49HFSM4DJp07cEfdz5eu4jtwnQm8sOJ1RKSep
	ETawdW0a1KP+oAq1ulnWZoUxrRCQy5LCPxDG5JRwUclcsHFSOjbeSVJOqJIL1A6zk6iUnPDtylB
	VRevdTS1mNaS6Tuw6aEtoEcuuu6pyoAjZ6beDY5zjUgr94R/BBa0boYR5upDoXG2JDQhM6Vffdp
	apDzzOlXDuRfcjfCE50uX/w9e6kpRpQL5BX7PBiP04wkpxDjZ1dryQ932KFfZvsscxSUXZkNVSm
	9M4vHfvHUF6x5ZKhfH323e6hnktYHSkMf7mtuXay6hBsmr5UjyuC3hy7tX66WkXH0GoW/3iFETX
	ap10FmWaFZrzB5MIFSXyInCFV0sUErdmswg/jQJQ0oP19/LpTnB9U346LuPnpYP5GGdycL+kwtA
	==
X-Google-Smtp-Source: AGHT+IHcNtfp4F0gd8EyXRgkVvR2EHNAWoXevw2JJmW1HkNfx+wowWJuPHqwAwEdICB/zzepQga2OA==
X-Received: by 2002:a05:600c:630e:b0:45d:d197:fecf with SMTP id 5b1f17b1804b1-45f2117b46cmr81883255e9.0.1757859480854;
        Sun, 14 Sep 2025 07:18:00 -0700 (PDT)
Received: from ivaylo-T580.. (91-139-201-119.stz.ddns.bulsat.com. [91.139.201.119])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e813eb46f3sm7319270f8f.23.2025.09.14.07.17.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Sep 2025 07:18:00 -0700 (PDT)
From: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>
Cc: linux-samsung-soc@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 2/2] phy: exynos5-usbdrd: support the exynos8890 USBDRD controller
Date: Sun, 14 Sep 2025 17:17:45 +0300
Message-ID: <20250914141745.2627756-5-ivo.ivanov.ivanov1@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250914141745.2627756-1-ivo.ivanov.ivanov1@gmail.com>
References: <20250914141745.2627756-1-ivo.ivanov.ivanov1@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The exynos8890 USBDRD controller integrates a combined usb phy that
supports UTMI and PIPE3 interfaces. Add the required changes for USB HS
to work. USB SS is out of the scope, as the Samsung Galaxy S7 only has
a microusb 2.0 port.

Signed-off-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
---
 drivers/phy/samsung/phy-exynos5-usbdrd.c | 210 +++++++++++++++++++++++
 1 file changed, 210 insertions(+)

diff --git a/drivers/phy/samsung/phy-exynos5-usbdrd.c b/drivers/phy/samsung/phy-exynos5-usbdrd.c
index dd660ebe8..546c69442 100644
--- a/drivers/phy/samsung/phy-exynos5-usbdrd.c
+++ b/drivers/phy/samsung/phy-exynos5-usbdrd.c
@@ -145,6 +145,7 @@
 #define PHYUTMICLKSEL_UTMI_CLKSEL		BIT(2)
 
 #define EXYNOS5_DRD_PHYRESUME			0x34
+#define PHYRESUME_FORCE_QACT			BIT(9)
 
 #define EXYNOS5_DRD_LINKPORT			0x44
 #define LINKPORT_HOST_U3_PORT_DISABLE		BIT(8)
@@ -1302,6 +1303,158 @@ static const struct phy_ops exynos7870_usbdrd_phy_ops = {
 	.owner		= THIS_MODULE,
 };
 
+static unsigned int
+exynos8890_usbdrd_utmi_set_refclk(struct phy_usb_instance *inst)
+{
+	u32 reg;
+	struct exynos5_usbdrd_phy *phy_drd = to_usbdrd_phy(inst);
+
+	/* restore any previous reference clock settings */
+	reg = readl(phy_drd->reg_phy + EXYNOS5_DRD_PHYCLKRST);
+
+	reg &= ~PHYCLKRST_REFCLKSEL;
+	reg |= FIELD_PREP(PHYCLKRST_REFCLKSEL, PHYCLKRST_REFCLKSEL_PAD_REFCLK);
+
+	reg &= ~(PHYCLKRST_FSEL_UTMI |
+		 PHYCLKRST_FSEL_PIPE |
+		 PHYCLKRST_MPLL_MULTIPLIER |
+		 PHYCLKRST_SSC_REFCLKSEL);
+	reg |= FIELD_PREP(PHYCLKRST_FSEL_UTMI, phy_drd->extrefclk);
+
+	if (phy_drd->extrefclk == EXYNOS5_FSEL_26MHZ)
+		reg |= FIELD_PREP(PHYCLKRST_MPLL_MULTIPLIER, 0x60);
+
+	return reg;
+}
+
+static void exynos8890_usbdrd_utmi_init(struct exynos5_usbdrd_phy *phy_drd)
+{
+	u32 reg;
+
+	reg = readl(phy_drd->reg_phy + EXYNOS5_DRD_PHYCLKRST);
+	reg |= PHYCLKRST_EN_UTMISUSPEND;
+	writel(reg, phy_drd->reg_phy + EXYNOS5_DRD_PHYCLKRST);
+
+	/* UTMI Power Control */
+	writel(PHYUTMI_OTGDISABLE, phy_drd->reg_phy + EXYNOS5_DRD_PHYUTMI);
+
+	reg = readl(phy_drd->reg_phy + EXYNOS5_DRD_PHYTEST);
+	reg &= ~PHYTEST_POWERDOWN_HSP;
+	writel(reg, phy_drd->reg_phy + EXYNOS5_DRD_PHYTEST);
+}
+
+static int exynos8890_usbdrd_phy_init(struct phy *phy)
+{
+	int ret;
+	u32 reg;
+	struct phy_usb_instance *inst = phy_get_drvdata(phy);
+	struct exynos5_usbdrd_phy *phy_drd = to_usbdrd_phy(inst);
+
+	ret = clk_bulk_prepare_enable(phy_drd->drv_data->n_clks, phy_drd->clks);
+	if (ret)
+		return ret;
+
+	/* Reset USB 3.0 PHY */
+	writel(0x0, phy_drd->reg_phy + EXYNOS5_DRD_PHYREG0);
+	writel(0x0, phy_drd->reg_phy + EXYNOS5_DRD_PHYRESUME);
+
+	/*
+	 * Setting the Frame length Adj value[6:1] to default 0x20
+	 * See xHCI 1.0 spec, 5.2.4
+	 */
+	reg =	LINKSYSTEM_XHCI_VERSION_CONTROL |
+		FIELD_PREP(LINKSYSTEM_FLADJ, 0x20);
+	writel(reg, phy_drd->reg_phy + EXYNOS5_DRD_LINKSYSTEM);
+
+	/*
+	 * Disable HWACG (hardware auto clock gating control). This will force
+	 * QACTIVE signal in Q-Channel interface to HIGH level, to make sure
+	 * the PHY clock is not gated by the hardware.
+	 */
+	reg = readl(phy_drd->reg_phy + EXYNOS5_DRD_PHYRESUME);
+	reg |= PHYRESUME_FORCE_QACT;
+	writel(reg, phy_drd->reg_phy + EXYNOS5_DRD_PHYRESUME);
+
+	reg = readl(phy_drd->reg_phy + EXYNOS5_DRD_PHYPARAM0);
+	/* Select PHY CLK source */
+	reg &= ~PHYPARAM0_REF_USE_PAD;
+	writel(reg, phy_drd->reg_phy + EXYNOS5_DRD_PHYPARAM0);
+
+	/* UTMI or PIPE3 specific init */
+	inst->phy_cfg->phy_init(phy_drd);
+
+	/* reference clock settings */
+	reg = inst->phy_cfg->set_refclk(inst);
+
+		/* Digital power supply in normal operating mode */
+	reg |=	PHYCLKRST_RETENABLEN |
+		/* Enable ref clock for SS function */
+		PHYCLKRST_REF_SSP_EN |
+		/* Enable spread spectrum */
+		PHYCLKRST_SSC_EN |
+		/* Power down HS Bias and PLL blocks in suspend mode */
+		PHYCLKRST_COMMONONN |
+		/* Reset the port */
+		PHYCLKRST_PORTRESET;
+
+	writel(reg, phy_drd->reg_phy + EXYNOS5_DRD_PHYCLKRST);
+
+	fsleep(10);
+
+	reg &= ~PHYCLKRST_PORTRESET;
+	writel(reg, phy_drd->reg_phy + EXYNOS5_DRD_PHYCLKRST);
+
+	/* Configure OVC IO usage */
+	reg = readl(phy_drd->reg_phy + EXYNOS5_DRD_LINKPORT);
+	reg |= LINKPORT_HOST_PORT_OVCR_U3_SEL | LINKPORT_HOST_PORT_OVCR_U2_SEL;
+	writel(reg, phy_drd->reg_phy + EXYNOS5_DRD_LINKPORT);
+
+	clk_bulk_disable_unprepare(phy_drd->drv_data->n_clks, phy_drd->clks);
+
+	return 0;
+}
+
+static int exynos8890_usbdrd_phy_exit(struct phy *phy)
+{
+	int ret;
+	u32 reg;
+	struct phy_usb_instance *inst = phy_get_drvdata(phy);
+	struct exynos5_usbdrd_phy *phy_drd = to_usbdrd_phy(inst);
+
+	ret = clk_bulk_prepare_enable(phy_drd->drv_data->n_clks, phy_drd->clks);
+	if (ret)
+		return ret;
+
+	reg =	PHYUTMI_OTGDISABLE |
+		PHYUTMI_FORCESUSPEND |
+		PHYUTMI_FORCESLEEP;
+	writel(reg, phy_drd->reg_phy + EXYNOS5_DRD_PHYUTMI);
+
+	/* Resetting the PHYCLKRST enable bits to reduce leakage current */
+	reg = readl(phy_drd->reg_phy + EXYNOS5_DRD_PHYCLKRST);
+	reg &= ~(PHYCLKRST_REF_SSP_EN |
+		 PHYCLKRST_SSC_EN |
+		 PHYCLKRST_COMMONONN);
+	writel(reg, phy_drd->reg_phy + EXYNOS5_DRD_PHYCLKRST);
+
+	/* Control PHYTEST to remove leakage current */
+	reg = readl(phy_drd->reg_phy + EXYNOS5_DRD_PHYTEST);
+	reg |= PHYTEST_POWERDOWN_SSP | PHYTEST_POWERDOWN_HSP;
+	writel(reg, phy_drd->reg_phy + EXYNOS5_DRD_PHYTEST);
+
+	clk_bulk_disable_unprepare(phy_drd->drv_data->n_clks, phy_drd->clks);
+
+	return 0;
+}
+
+static const struct phy_ops exynos8890_usbdrd_phy_ops = {
+	.init		= exynos8890_usbdrd_phy_init,
+	.exit		= exynos8890_usbdrd_phy_exit,
+	.power_on	= exynos5_usbdrd_phy_power_on,
+	.power_off	= exynos5_usbdrd_phy_power_off,
+	.owner		= THIS_MODULE,
+};
+
 static void exynos2200_usbdrd_utmi_init(struct exynos5_usbdrd_phy *phy_drd)
 {
 	/* Configure non-Samsung IP PHY, responsible for UTMI */
@@ -1897,6 +2050,15 @@ static const struct exynos5_usbdrd_phy_config phy_cfg_exynos850[] = {
 	},
 };
 
+static const struct exynos5_usbdrd_phy_config phy_cfg_exynos8890[] = {
+	{
+		.id = EXYNOS5_DRDPHY_UTMI,
+		.phy_isol = exynos5_usbdrd_phy_isol,
+		.phy_init = exynos8890_usbdrd_utmi_init,
+		.set_refclk = exynos8890_usbdrd_utmi_set_refclk,
+	},
+};
+
 static
 const struct exynos5_usbdrd_phy_tuning exynos7870_tunes_utmi_postinit[] = {
 	PHY_TUNING_ENTRY_PHY(EXYNOS5_DRD_PHYPARAM0,
@@ -2025,6 +2187,51 @@ static const struct exynos5_usbdrd_phy_drvdata exynos850_usbdrd_phy = {
 	.n_regulators		= ARRAY_SIZE(exynos5_regulator_names),
 };
 
+static const char * const exynos8890_core_clk_names[] = {
+	"ref",
+};
+
+static const char * const exynos8890_clk_names[] = {
+	"phy", "pipe",
+};
+
+static
+const struct exynos5_usbdrd_phy_tuning exynos8890_tunes_utmi_postinit[] = {
+	PHY_TUNING_ENTRY_PHY(EXYNOS5_DRD_PHYPARAM0,
+			     (PHYPARAM0_TXVREFTUNE | PHYPARAM0_TXRISETUNE |
+			      PHYPARAM0_TXRESTUNE | PHYPARAM0_TXPREEMPPULSETUNE |
+			      PHYPARAM0_TXPREEMPAMPTUNE | PHYPARAM0_TXHSXVTUNE |
+			      PHYPARAM0_TXFSLSTUNE | PHYPARAM0_SQRXTUNE |
+			      PHYPARAM0_OTGTUNE | PHYPARAM0_COMPDISTUNE),
+			     (FIELD_PREP_CONST(PHYPARAM0_TXVREFTUNE, 11) |
+			      FIELD_PREP_CONST(PHYPARAM0_TXRISETUNE, 3) |
+			      FIELD_PREP_CONST(PHYPARAM0_TXRESTUNE, 2) |
+			      FIELD_PREP_CONST(PHYPARAM0_TXPREEMPAMPTUNE, 3) |
+			      FIELD_PREP_CONST(PHYPARAM0_TXHSXVTUNE, 0) |
+			      FIELD_PREP_CONST(PHYPARAM0_TXFSLSTUNE, 3) |
+			      FIELD_PREP_CONST(PHYPARAM0_SQRXTUNE, 7) |
+			      FIELD_PREP_CONST(PHYPARAM0_OTGTUNE, 4) |
+			      FIELD_PREP_CONST(PHYPARAM0_COMPDISTUNE, 0))),
+	PHY_TUNING_ENTRY_LAST
+};
+
+static const struct exynos5_usbdrd_phy_tuning *exynos8890_tunes[PTS_MAX] = {
+	[PTS_UTMI_POSTINIT] = exynos8890_tunes_utmi_postinit,
+};
+
+static const struct exynos5_usbdrd_phy_drvdata exynos8890_usbdrd_phy = {
+	.phy_cfg		= phy_cfg_exynos8890,
+	.phy_tunes		= exynos8890_tunes,
+	.phy_ops		= &exynos8890_usbdrd_phy_ops,
+	.pmu_offset_usbdrd0_phy	= EXYNOS5_USBDRD_PHY_CONTROL,
+	.clk_names		= exynos8890_clk_names,
+	.n_clks			= ARRAY_SIZE(exynos8890_clk_names),
+	.core_clk_names		= exynos8890_core_clk_names,
+	.n_core_clks		= ARRAY_SIZE(exynos8890_core_clk_names),
+	.regulator_names	= exynos5_regulator_names,
+	.n_regulators		= ARRAY_SIZE(exynos5_regulator_names),
+};
+
 static const struct exynos5_usbdrd_phy_tuning exynos990_tunes_utmi_postinit[] = {
 	PHY_TUNING_ENTRY_PHY(EXYNOS850_DRD_HSPPARACON,
 			     (HSPPARACON_TXVREF |
@@ -2257,6 +2464,9 @@ static const struct of_device_id exynos5_usbdrd_phy_of_match[] = {
 	}, {
 		.compatible = "samsung,exynos850-usbdrd-phy",
 		.data = &exynos850_usbdrd_phy
+	}, {
+		.compatible = "samsung,exynos8890-usbdrd-phy",
+		.data = &exynos8890_usbdrd_phy
 	}, {
 		.compatible = "samsung,exynos990-usbdrd-phy",
 		.data = &exynos990_usbdrd_phy
-- 
2.43.0


