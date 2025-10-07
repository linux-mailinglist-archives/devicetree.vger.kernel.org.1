Return-Path: <devicetree+bounces-224214-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 86081BC1A62
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 16:08:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 7BEAB4F80DD
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 14:06:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EED92E264C;
	Tue,  7 Oct 2025 14:05:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="LkwzROHi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f227.google.com (mail-pl1-f227.google.com [209.85.214.227])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E20C82E1758
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 14:05:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.227
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759845922; cv=none; b=L//AZFvfULJT0S6XY9UWUHVhMvsla3ooOcDl227NCWTZT3wXlsKKH3pcySUXRNuVhNbM3hb0oIAGXAbpvU0jV1xEV0MtG/BJfwA3KhGpe5QXV4MtpnOu3iAltk8WUMTzjtktpxcQcKgyRXE+szBgb9hi/awi6/t97fER8051/hk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759845922; c=relaxed/simple;
	bh=Qg0A7yrjSmTfEe16Vq+9wFnPNBtfh3eVH7u9xO09gLE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=qsGev1LBmEB4S/nvcQtHAT4Lz7kVr7SRgVADefiL5SGUXxhR6AVVYOBNbealJUXzss6g0yjjEM/+5fQa831XEGBgmjB24b9TZex4zV72W9yI7PJo2sOgQLnZVQhjOCsDbd3kmkroh4BExJF16BY3oxMeqWKdRjgUxgSpNrUWVP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=LkwzROHi; arc=none smtp.client-ip=209.85.214.227
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pl1-f227.google.com with SMTP id d9443c01a7336-279e2554c8fso61986895ad.2
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 07:05:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759845920; x=1760450720;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nQDseboPoN7tnrpn/frcsPgqqEsYL+e4oPXMaYNhgu8=;
        b=NhBeVuFXeppMHjinBy0RKu3XwBjsA1m3mwnJdNSmKRx/m1knH6Tb+Nq4aINEFhpCLt
         F/0Pgkg9P3C7s+iZitQ1Pwbqx7ydylJBV/gSnkHGw9c+HfJ/KjKozLJreKI4h3SxVvbN
         98Wrb9ylz26JcFdhI0Nv8GAA1fWQLN4CZcPS7hcAMFUr9McBQSKIUSs6f+Y/NplS1P8u
         xy9OWoWDPmhELENT8o7CH+TOcbsk/9OXHPOYoCEtFs04LH5KLMy4gEwHQrFjBSsLyDpH
         4UT6a9Fl/wL9TFcPt6G12U/JZ80qMgkSxBQEroIYAMYG8hlD/J1gqHlZmq5gwE1idfVL
         kMvw==
X-Forwarded-Encrypted: i=1; AJvYcCVS7lu9HTvan8eCS1Ojq5/BsrriS/jRmUIdPur4NYAHsLfBBKb800Z5J2rMYDC4OJThrp6WUXC9L/h8@vger.kernel.org
X-Gm-Message-State: AOJu0YwstD3YXMEyoGI57bZl9cV+uUuIPcaqiqkZsqKdmPGSVxrs7KRK
	yaRdDMpoyaTUpm2KxpvxzLDyx25nneYAYQ01u8Bvnh6K93vJ6yuoAmdMEkZvugZ4cWtxWF8s3Wf
	p1U6TAhJWNAzKBG+Z0tNY3+6NZ/DLAPrj2FNWsI6c+0g68z9iOdajEoPgjmlC2NZh9l+RTm0G4x
	SN1EMxdHqRriZNEDGAXGJcd5X+Ma35aP/2eB3b4+BiKL+gD4HI7ToKal08drUSqyXqgOoWJ8Anx
	RhTkUnHcAS3pw==
X-Gm-Gg: ASbGnctuE8G6MRKC8rdqX1FBd+X8RMz2IN7jOgjjnOEPvWfmDZlJ5RkDpdcLCrVB3cw
	zzepjPflmzc/fNYPtRk5CfbbdBCfsxV9WIeNzTlZYIdBOY/52mBGrRH9/S5ZsAg5UYFRZ7mgsrH
	96KJlb2q/TIWJx718kVlXjb1acd4pe2OhJbCQ/iuTyEpGoSxGBPT5xpfcU4RuTZer4DHz4VtJZA
	w9BZL2krpXNfQNHpM1tj7grl7Gi3xhNm79cMG1k14YNMQqTy4ALGmxEMcNz7Akh2AzeSjEjVGLn
	9PXmb/Dy2QqFr0FYCEcoFpgDf2qgX/kvJPDG0OkNVcV9hhscMAW8knnNp0Z41YfODVaBVsoORRf
	cTkXGvtKiBKmZgFNUBLrq0oSxH8iokXKBoaj7jfFja6tm0OPISEhjRAZgQsy1FEd2DVvoBIYUTo
	IEuLTx
X-Google-Smtp-Source: AGHT+IFMPKnVT6KwwvVTb4jKllTwWG7qfttnhvpTyeHfWV2xOdCc2blGZy4UkNdDNcTIXFg8JWMeWNzEkaOB
X-Received: by 2002:a17:903:174e:b0:288:e46d:b325 with SMTP id d9443c01a7336-28e9a6483aemr175482475ad.43.1759845919850;
        Tue, 07 Oct 2025 07:05:19 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-126.dlp.protect.broadcom.com. [144.49.247.126])
        by smtp-relay.gmail.com with ESMTPS id d9443c01a7336-28e8d108412sm12072055ad.2.2025.10.07.07.05.19
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Oct 2025 07:05:19 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-78efb3e2738so76528126d6.3
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 07:05:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1759845918; x=1760450718; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nQDseboPoN7tnrpn/frcsPgqqEsYL+e4oPXMaYNhgu8=;
        b=LkwzROHiv3Mwx+TYz+vDlHWTfwt1mhK5l27aRz1Q/zZO5UwV2/7Quf90rLIj3j4AFH
         EXHzttrwlB0CuGwbhiOOGnonqJyEriTASF+MObRd9ISuc51OF4UK3oxRVodg7i71GYdb
         Kms0l+/vCORlUrygYi1tIqxb2Kud/ckVixLzM=
X-Forwarded-Encrypted: i=1; AJvYcCWOVCv+Yd01QdyUTNDX4QUPVMfvednxSsad8gfizR12Lw1tYHamYedTjwbpxvsBftXt6TJ9u/FElZEB@vger.kernel.org
X-Received: by 2002:a05:6214:2682:b0:874:3018:f958 with SMTP id 6a1803df08f44-879dc77b8e8mr209784066d6.5.1759845918372;
        Tue, 07 Oct 2025 07:05:18 -0700 (PDT)
X-Received: by 2002:a05:6214:2682:b0:874:3018:f958 with SMTP id 6a1803df08f44-879dc77b8e8mr209783356d6.5.1759845917674;
        Tue, 07 Oct 2025 07:05:17 -0700 (PDT)
Received: from mail.broadcom.net ([192.19.144.250])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-878bae60b67sm142718956d6.9.2025.10.07.07.05.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Oct 2025 07:05:17 -0700 (PDT)
From: Kamal Dasu <kamal.dasu@broadcom.com>
To: andersson@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	florian.fainelli@broadcom.com,
	ulf.hansson@linaro.org,
	adrian.hunter@intel.com
Cc: bcm-kernel-feedback-list@broadcom.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mmc@vger.kernel.org,
	Kamal Dasu <kamal.dasu@broadcom.com>
Subject: [PATCH v2 5/5] mmc: sdhci-brcmstb: save and restore registers during PM
Date: Tue,  7 Oct 2025 10:04:34 -0400
Message-Id: <20251007140434.606051-7-kamal.dasu@broadcom.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251007140434.606051-1-kamal.dasu@broadcom.com>
References: <20251007140434.606051-1-kamal.dasu@broadcom.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e

Added support to save and restore registers that are critical
during PM.

Signed-off-by: Kamal Dasu <kamal.dasu@broadcom.com>
---
 drivers/mmc/host/sdhci-brcmstb.c | 112 +++++++++++++++++++++++++++++--
 1 file changed, 107 insertions(+), 5 deletions(-)

diff --git a/drivers/mmc/host/sdhci-brcmstb.c b/drivers/mmc/host/sdhci-brcmstb.c
index 42709ca8111d..7de395c86f2f 100644
--- a/drivers/mmc/host/sdhci-brcmstb.c
+++ b/drivers/mmc/host/sdhci-brcmstb.c
@@ -38,28 +38,109 @@
 #define SDIO_CFG_OP_DLY_DEFAULT			0x80000003
 #define SDIO_CFG_CQ_CAPABILITY			0x4c
 #define SDIO_CFG_CQ_CAPABILITY_FMUL		GENMASK(13, 12)
+#define SDIO_CFG_SD_PIN_SEL			0x44
+#define SDIO_CFG_V1_SD_PIN_SEL			0x54
+#define SDIO_CFG_PHY_SW_MODE_0_RX_CTRL		0x7C
 #define SDIO_CFG_MAX_50MHZ_MODE			0x1ac
 #define SDIO_CFG_MAX_50MHZ_MODE_STRAP_OVERRIDE	BIT(31)
 #define SDIO_CFG_MAX_50MHZ_MODE_ENABLE		BIT(0)
 
+#define SDIO_BOOT_MAIN_CTL			0x0
+
 #define MMC_CAP_HSE_MASK	(MMC_CAP2_HSX00_1_2V | MMC_CAP2_HSX00_1_8V)
 /* Select all SD UHS type I SDR speed above 50MB/s */
 #define MMC_CAP_UHS_I_SDR_MASK	(MMC_CAP_UHS_SDR50 | MMC_CAP_UHS_SDR104)
 
-struct sdhci_brcmstb_priv {
-	void __iomem *cfg_regs;
-	unsigned int flags;
-	struct clk *base_clk;
-	u32 base_freq_hz;
+enum cfg_core_ver {
+	SDIO_CFG_CORE_V1 = 1,
+	SDIO_CFG_CORE_V2,
+};
+
+struct sdhci_brcmstb_saved_regs {
+	u32 sd_pin_sel;
+	u32 phy_sw_mode0_rxctrl;
+	u32 max_50mhz_mode;
+	u32 boot_main_ctl;
 };
 
 struct brcmstb_match_priv {
 	void (*cfginit)(struct sdhci_host *host);
 	void (*hs400es)(struct mmc_host *mmc, struct mmc_ios *ios);
+	void (*save_restore_regs)(struct mmc_host *mmc, int save);
 	struct sdhci_ops *ops;
 	const unsigned int flags;
 };
 
+struct sdhci_brcmstb_priv {
+	void __iomem *cfg_regs;
+	void __iomem *boot_regs;
+	struct sdhci_brcmstb_saved_regs saved_regs;
+	unsigned int flags;
+	struct clk *base_clk;
+	u32 base_freq_hz;
+	const struct brcmstb_match_priv *match_priv;
+};
+
+static void sdhci_brcmstb_save_regs(struct mmc_host *mmc, enum cfg_core_ver ver)
+{
+	struct sdhci_host *host = mmc_priv(mmc);
+	struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
+	struct sdhci_brcmstb_priv *priv = sdhci_pltfm_priv(pltfm_host);
+	struct sdhci_brcmstb_saved_regs *sr = &priv->saved_regs;
+	void __iomem *cr = priv->cfg_regs;
+	bool is_emmc = mmc->caps & MMC_CAP_NONREMOVABLE;
+
+	if (is_emmc && priv->boot_regs)
+		sr->boot_main_ctl = readl(priv->boot_regs + SDIO_BOOT_MAIN_CTL);
+
+	if (ver == SDIO_CFG_CORE_V1) {
+		sr->sd_pin_sel = readl(cr + SDIO_CFG_V1_SD_PIN_SEL);
+		return;
+	}
+
+	sr->sd_pin_sel = readl(cr + SDIO_CFG_SD_PIN_SEL);
+	sr->phy_sw_mode0_rxctrl = readl(cr + SDIO_CFG_PHY_SW_MODE_0_RX_CTRL);
+	sr->max_50mhz_mode = readl(cr + SDIO_CFG_MAX_50MHZ_MODE);
+}
+
+static void sdhci_brcmstb_restore_regs(struct mmc_host *mmc, enum cfg_core_ver ver)
+{
+	struct sdhci_host *host = mmc_priv(mmc);
+	struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
+	struct sdhci_brcmstb_priv *priv = sdhci_pltfm_priv(pltfm_host);
+	struct sdhci_brcmstb_saved_regs *sr = &priv->saved_regs;
+	void __iomem *cr = priv->cfg_regs;
+	bool is_emmc = mmc->caps & MMC_CAP_NONREMOVABLE;
+
+	if (is_emmc && priv->boot_regs)
+		writel(sr->boot_main_ctl, priv->boot_regs + SDIO_BOOT_MAIN_CTL);
+
+	if (ver == SDIO_CFG_CORE_V1) {
+		writel(sr->sd_pin_sel, cr + SDIO_CFG_SD_PIN_SEL);
+		return;
+	}
+
+	writel(sr->sd_pin_sel, cr + SDIO_CFG_SD_PIN_SEL);
+	writel(sr->phy_sw_mode0_rxctrl, cr + SDIO_CFG_PHY_SW_MODE_0_RX_CTRL);
+	writel(sr->max_50mhz_mode, cr + SDIO_CFG_MAX_50MHZ_MODE);
+}
+
+static void sdhci_brcmstb_save_restore_regs_v1(struct mmc_host *mmc, int save)
+{
+	if (save)
+		sdhci_brcmstb_save_regs(mmc, SDIO_CFG_CORE_V1);
+	else
+		sdhci_brcmstb_restore_regs(mmc, SDIO_CFG_CORE_V1);
+}
+
+static void sdhci_brcmstb_save_restore_regs_v2(struct mmc_host *mmc, int save)
+{
+	if (save)
+		sdhci_brcmstb_save_regs(mmc, SDIO_CFG_CORE_V2);
+	else
+		sdhci_brcmstb_restore_regs(mmc, SDIO_CFG_CORE_V2);
+}
+
 static inline void enable_clock_gating(struct sdhci_host *host)
 {
 	struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
@@ -306,22 +387,26 @@ static struct brcmstb_match_priv match_priv_74371 = {
 
 static struct brcmstb_match_priv match_priv_7445 = {
 	.flags = BRCMSTB_MATCH_FLAGS_BROKEN_TIMEOUT,
+	.save_restore_regs = sdhci_brcmstb_save_restore_regs_v1,
 	.ops = &sdhci_brcmstb_ops,
 };
 
 static struct brcmstb_match_priv match_priv_72116 = {
 	.flags = BRCMSTB_MATCH_FLAGS_BROKEN_TIMEOUT,
+	.save_restore_regs = sdhci_brcmstb_save_restore_regs_v1,
 	.ops = &sdhci_brcmstb_ops_72116,
 };
 
 static const struct brcmstb_match_priv match_priv_7216 = {
 	.flags = BRCMSTB_MATCH_FLAGS_HAS_CLOCK_GATE,
+	.save_restore_regs = sdhci_brcmstb_save_restore_regs_v2,
 	.hs400es = sdhci_brcmstb_hs400es,
 	.ops = &sdhci_brcmstb_ops_7216,
 };
 
 static struct brcmstb_match_priv match_priv_74165b0 = {
 	.flags = BRCMSTB_MATCH_FLAGS_HAS_CLOCK_GATE,
+	.save_restore_regs = sdhci_brcmstb_save_restore_regs_v2,
 	.hs400es = sdhci_brcmstb_hs400es,
 	.ops = &sdhci_brcmstb_ops_74165b0,
 };
@@ -429,6 +514,7 @@ static int sdhci_brcmstb_probe(struct platform_device *pdev)
 
 	pltfm_host = sdhci_priv(host);
 	priv = sdhci_pltfm_priv(pltfm_host);
+	priv->match_priv = match->data;
 	if (device_property_read_bool(&pdev->dev, "supports-cqe")) {
 		priv->flags |= BRCMSTB_PRIV_FLAGS_HAS_CQE;
 		match_priv->ops->irq = sdhci_brcmstb_cqhci_irq;
@@ -446,6 +532,13 @@ static int sdhci_brcmstb_probe(struct platform_device *pdev)
 	if (res)
 		goto err;
 
+	/* map non-standard BOOT registers if present */
+	if (host->mmc->caps & MMC_CAP_NONREMOVABLE) {
+		priv->boot_regs = devm_platform_get_and_ioremap_resource(pdev, 2, NULL);
+		if (IS_ERR(priv->boot_regs))
+			priv->boot_regs = NULL;
+	}
+
 	/*
 	 * Automatic clock gating does not work for SD cards that may
 	 * voltage switch so only enable it for non-removable devices.
@@ -536,8 +629,13 @@ static int sdhci_brcmstb_suspend(struct device *dev)
 	struct sdhci_host *host = dev_get_drvdata(dev);
 	struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 	struct sdhci_brcmstb_priv *priv = sdhci_pltfm_priv(pltfm_host);
+	const struct brcmstb_match_priv *match_priv = priv->match_priv;
+
 	int ret;
 
+	if (match_priv->save_restore_regs)
+		match_priv->save_restore_regs(host->mmc, 1);
+
 	clk_disable_unprepare(priv->base_clk);
 	if (host->mmc->caps2 & MMC_CAP2_CQE) {
 		ret = cqhci_suspend(host->mmc);
@@ -553,6 +651,7 @@ static int sdhci_brcmstb_resume(struct device *dev)
 	struct sdhci_host *host = dev_get_drvdata(dev);
 	struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 	struct sdhci_brcmstb_priv *priv = sdhci_pltfm_priv(pltfm_host);
+	const struct brcmstb_match_priv *match_priv = priv->match_priv;
 	int ret;
 
 	ret = sdhci_pltfm_resume(dev);
@@ -569,6 +668,9 @@ static int sdhci_brcmstb_resume(struct device *dev)
 			ret = clk_set_rate(priv->base_clk, priv->base_freq_hz);
 	}
 
+	if (match_priv->save_restore_regs)
+		match_priv->save_restore_regs(host->mmc, 0);
+
 	if (host->mmc->caps2 & MMC_CAP2_CQE)
 		ret = cqhci_resume(host->mmc);
 
-- 
2.34.1


