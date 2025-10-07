Return-Path: <devicetree+bounces-224213-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EB93BC1A5F
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 16:07:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 9AE494F7D58
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 14:06:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C0A62E3AF5;
	Tue,  7 Oct 2025 14:05:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="cG7mxxqy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f226.google.com (mail-yw1-f226.google.com [209.85.128.226])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 980062E3716
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 14:05:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.226
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759845914; cv=none; b=lSZW9NHkupBZbo5oTlswmdSi/gxsKE+qPlGPeT+fxKaKn6hCxWhVVUeis7G+7Aa1u1/wZPnB0v4BAn6Yl5G327/WG4Qb/Skup8yUo1tCPqMZMkm+K4QUcG7OsF/JjGfG5n6ZgEm3LeZ33+VLztFwpiXHuEkSH4Q4QHCUPOgWdiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759845914; c=relaxed/simple;
	bh=Qg0A7yrjSmTfEe16Vq+9wFnPNBtfh3eVH7u9xO09gLE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=IcWxMjw9md5Mjb+aF0uO1FzZuuz0GjphE620JfhBiaw9PMKJgLO3Vb5ktTkmbu7iNpuAq7kqHD2lQNBu8SKSU0HFTpgy2UtlicTrCderWClNbivjtDyl1aGvu0oHChPaRMTlZR1419VvO5JT5ORTqq2EKZDlPQ01QzWx6acMQ28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=cG7mxxqy; arc=none smtp.client-ip=209.85.128.226
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-yw1-f226.google.com with SMTP id 00721157ae682-77fac63ba26so40052677b3.3
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 07:05:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759845911; x=1760450711;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nQDseboPoN7tnrpn/frcsPgqqEsYL+e4oPXMaYNhgu8=;
        b=GcvjT6uEgIs9xDVzVzIQvxslQiFypGQO379kLZrdO/qNCBZc2PAq8+QPdnnQ1E+Szp
         LK+ODKp2ad5w4eYaUoAqNfOW+xM2WGi1gccPQORgsYnnQgOJgU1W+L40R5aCMYDDLN2x
         7iNFxNujIdF8KsNNYasWDoXHn35pNvBmTJX8O4rGKEpwapAqUr8ewYfIvpb/S32xNEPJ
         hFp39ApGY1xoooO25zOwOpYHSsCmPozX/md2jZ2mWDyf7g4c04qW+VDshwvFuvyOB5S1
         7XE2w4J2uo1AotVF+kNYMgBM+v6gB9bjmdjiBSS4LR/Yc8qA4rnwTZQWl1hxCGHj81zO
         yp1Q==
X-Forwarded-Encrypted: i=1; AJvYcCUK9IiGETXsm32mEKr4ZU4u1LP+z/jYA2PNbZPBiwn39KcpYGE5R1Y+ktQyz6kvah/5DR9v523wPP6f@vger.kernel.org
X-Gm-Message-State: AOJu0YztIW1K0j6Zlb5c//FcXks3f+so+Uqe+IS34CHupokQF1yNik1B
	1G2j2z+hWG7z9osiW//bsjIETyXHKDxIZ+SIP5TdT0e83pcuMHMO6DjjG+XehBd1bNuUylStDy9
	Ay/e31Bfy4eGG/3Y6kejsefyDKPZqm7ghHQQW6FmEbAVakZP+b2IVEYu31uzfDOLuororr0ANCK
	P+nj15592Mmk0TT1weOTRW6qGMzc/wsb9T8ZV3ShkEQCM0lu3V3mmnAayxiBKbluH1cFhoUtAmK
	A3VAzvuirB+rQ==
X-Gm-Gg: ASbGncttRKbWLnv/jBf/a2H7hL77ejyqUHe/6tnRz1Kcd3LwivXuGpsdc7hbjGpbyDj
	tu9s+3bc21/jnfmU7rB7/cegcq421dycPocAeSSPy2usls2KxSTgEcqAShrCT8ioRGkdj93kuIS
	9uS8FwRptmyVSOoVnaSG9KU+vkNxcffPJo24Xv3Y4Db4lRZYtuAwIYdeCGCWYPI5ZpF7GdM141m
	IKvLFsYuE7BY1ft2dkQ+HDbqCTtOJ/TqCJfQGPMUn8ZdQnCcZpu+oZ2HI2zsn+SyZztthZtkGkE
	njhisxP00K6z7awVzXfX3V5ZrmzqxJ4p9yZfgWLz6K76GZrjvCqSvFo18tdJxfapNMbDrObnC7k
	oDBjJrTU/L3k930PmBYA82HljXgqHyna6rC4rfApG7j7ujb51o7akC6jiRcLomVb9t9QyOArsYf
	zzCGbP
X-Google-Smtp-Source: AGHT+IE/e9RtkIapTYYAquL68sPQ3kq/kNqbGGhkLdqNbr0uMZdkwAIUHII2p+Ts8XIPMFNR+h4+ZIqh/q4J
X-Received: by 2002:a05:690c:9b04:b0:77e:60c5:752e with SMTP id 00721157ae682-77f945c4721mr215212977b3.19.1759845910738;
        Tue, 07 Oct 2025 07:05:10 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-126.dlp.protect.broadcom.com. [144.49.247.126])
        by smtp-relay.gmail.com with ESMTPS id 00721157ae682-77f81c099a7sm9076337b3.8.2025.10.07.07.05.10
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Oct 2025 07:05:10 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-yx1-f71.google.com with SMTP id 956f58d0204a3-63610e0c8eeso7487922d50.3
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 07:05:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1759845910; x=1760450710; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nQDseboPoN7tnrpn/frcsPgqqEsYL+e4oPXMaYNhgu8=;
        b=cG7mxxqyF4lIPqxiT+y7VPtcTZtY9aBQnFbN1XWLqCU6PqxavvCNy8SzrejLyu5Nc+
         b+iReiEcvl6zgn4ZeRChqIrZHsFr149G08x4zR4UfG1cBMx021c8/G72Ig5nYRvpPKRr
         v5+OB5cuGo1p0tgqAURZyY+RxQoTZnae6GyhY=
X-Forwarded-Encrypted: i=1; AJvYcCXZAmW+6sHsYEbvr+O+OIVjWqeMLydC7H5gZPC3AcXDVN9qwo/yWD1AcTah2NG68eiw3nD9fvfW1YLo@vger.kernel.org
X-Received: by 2002:a53:c056:0:20b0:629:9c6b:b3ab with SMTP id 956f58d0204a3-63b9a06436amr14591609d50.1.1759845909739;
        Tue, 07 Oct 2025 07:05:09 -0700 (PDT)
X-Received: by 2002:a53:c056:0:20b0:629:9c6b:b3ab with SMTP id 956f58d0204a3-63b9a06436amr14591546d50.1.1759845908938;
        Tue, 07 Oct 2025 07:05:08 -0700 (PDT)
Received: from mail.broadcom.net ([192.19.144.250])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-878bae60b67sm142718956d6.9.2025.10.07.07.05.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Oct 2025 07:05:08 -0700 (PDT)
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
Subject: [PATCH v2 5/5] mmc: brcmstb: save and restore registers during PM
Date: Tue,  7 Oct 2025 10:04:33 -0400
Message-Id: <20251007140434.606051-6-kamal.dasu@broadcom.com>
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


