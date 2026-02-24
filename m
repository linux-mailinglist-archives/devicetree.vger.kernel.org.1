Return-Path: <devicetree+bounces-267875-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oEL/HZuXnWnwQgQAu9opvQ
	(envelope-from <devicetree+bounces-267875-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 13:20:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D6DB186D82
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 13:20:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 4D9713026930
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 12:20:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 377CD396B8D;
	Tue, 24 Feb 2026 12:20:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="h8GWtOFF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5344395256
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 12:20:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771935639; cv=none; b=mSdf7WqLWYVLJd16M0KekYyd3auog49XbAW5EJV/x+pcrhkeCjw/O9xPhWVHRKWKB15xi9pTXxKkxkt0/spe0/n+gtNzHxRNOUntnHryAPslSD+hxqAdZoGvdR8vtoNC5sE5EKDx7kSOaDiWyAjN+1Y03NMwlf+Ay6cjhU814Og=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771935639; c=relaxed/simple;
	bh=jdzWYyYQqakXllbhH/zeMWJPPh6SiIY6qluU0wDrWYM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=HaWkdxzqkDcMuLJkJHzuiUVgcodao9PHMQS0LrOUnCXIbZOi/dJm0QmrCKT9zpaAkfpOGwEVpdSWCbidDc4IRbwVHyNIfVyzTTEQS0hourZ21gkH6WPs2lzCBBwZLNipiXnJfJZoUWm5yCOYun1/63Nnik5qmr/qSisLIOdOdaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=h8GWtOFF; arc=none smtp.client-ip=209.85.210.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-824adc96ad2so5462513b3a.3
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 04:20:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771935637; x=1772540437; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qNK6vbvi37qs9tkDMjIRAkoSxo6WGQaG2DgYfv4s/Ig=;
        b=h8GWtOFFo/bfHSI7tEeK29OSTV6fztgiqwg50/ZisrJzJy5nLZxHgb3WADKxkjbKJ5
         uGE9Kg4ngyDYjJdDI7doAmmasR+PD+i2KhUiombf8PaPoZlPlJ8ww2IkOa0SLcJuArpa
         xZTUn27nS/qmE+rATbJ19bKKNPsx7rC9I6vw+A2/YjEsskBw3ZEylLSVni2LIYpJFHzJ
         rsozP5Jnd94Cw4TZ+3tMOQbGekJgcDCwuir/BCZVaDhZwf67t0fxjJlMFoc4XMoQ41KR
         tjs+YwuoVv6ms+lTnkq29lYhGa2JAbDRZdAyRwISoVKAUdmmSk0GHtAaSHILQj/B1fxD
         YsxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771935637; x=1772540437;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=qNK6vbvi37qs9tkDMjIRAkoSxo6WGQaG2DgYfv4s/Ig=;
        b=th6kHexm09TCk3EG9JgQpbyG+m5o1SRNQqT0XXfG9uPS765s5yN9dFYYWQveCfbfHa
         OOezgln+xAeaM7tc7ivzZVAwsnhYmJyeZsx62DN6jp3q40EGYbZJLDu9atiZKE4di+Z/
         QGRkcjdTDp5CLoBrsP1arvjRI1GURkpEpPiYxiVVkl+s3i0csM8keHAC9XsmgduiiMfp
         nwA89P7rBGNzc5wVtC/96MIvY4d9KLAMHXZjoC9lhdvDISzhYknPjl8RIi9C++ok9AaV
         yPVQRBNjaFAoZWiZjJBpnSVLjUHoHRBXpytdj4YpZEsoVsC5Gq3FhX7QSOosg/aFZGfa
         y+0A==
X-Forwarded-Encrypted: i=1; AJvYcCV/5dWSYXuWUJN3yU7CacZiVDGxD3dVdti//+r9eyhA8YBEI5+IhM5kkHI9JYEsdVMyvDwY3aYe0eQc@vger.kernel.org
X-Gm-Message-State: AOJu0YwMrUv+8RYDzJnGhUlw2jqkkltAwPTynTVTcPKpCQxOoCEBksdw
	cICMtSNdvT2uqfMfnoBoG9xpwhO0JJXVpFIQ9c9FB8M0ZPETiDZX/Th6
X-Gm-Gg: ATEYQzwtaYYGghKUDlpDWYcIq4ZfA1+wlPUK7P6TaDJJKiq2yviU343Yu5tomw+5M97
	Pn3VvIJvhHeogcvTmRC3TCZFLmwm82rMxFLvne1vQAWZOxzbc3F25r2hrFarIuYBt1Gw+pZCeIv
	5/BwDeFyjpss3Rmp+zRH5RNf9U09mrAsxQO02GtlxxCRytKj3nz+md1Qc+bFODnNMtMZnRMz+hp
	oWji5GUAB/GpJp02VDv2rfPtuPjX8hXIFQigD51PSjHjs9pmch9eE1QlG238p/VTupXMqayDF6u
	TiKnr2DevayVpzOkluhdF8zKZRWooP22WVRWPuuMoM5kwTRXuwsmgf1JDeGI5/cedMU2EqBBGjp
	eJ4hx6r8LGp0MpVUtAFj2D9PY5RrAI2bhk3YbqgjgBmye99I4TGYWdFgkvKgDZE5OCj2PoHzgnp
	53hADi5jV2XiiwnrrCOAm8Qjrl2zhUiQ==
X-Received: by 2002:aa7:88c1:0:b0:824:9a12:deb1 with SMTP id d2e1a72fcca58-826daa81cb6mr12030602b3a.62.1771935637215;
        Tue, 24 Feb 2026 04:20:37 -0800 (PST)
Received: from rockpi-5b ([45.112.0.78])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-826dd8ba11bsm10613950b3a.50.2026.02.24.04.20.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 04:20:36 -0800 (PST)
From: Anand Moon <linux.amoon@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Aaron Kling <webgeek1234@gmail.com>,
	linux-tegra@vger.kernel.org (open list:PCI DRIVER FOR NVIDIA TEGRA),
	linux-pci@vger.kernel.org (open list:PCI DRIVER FOR NVIDIA TEGRA),
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	linux-kernel@vger.kernel.org (open list)
Cc: Anand Moon <linux.amoon@gmail.com>
Subject: [PATCH v3 3/5] PCI: tegra: Simplify clock handling by using clk_bulk*() functions
Date: Tue, 24 Feb 2026 17:48:59 +0530
Message-ID: <20260224121948.25218-4-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260224121948.25218-1-linux.amoon@gmail.com>
References: <20260224121948.25218-1-linux.amoon@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-267875-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com,google.com,kernel.org,nvidia.com,vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[linuxamoon@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 1D6DB186D82
X-Rspamd-Action: no action

Currently, the driver acquires clocks and prepare/enable/disable/unprepare
the clocks individually thereby making the driver complex to read.

The driver can be simplified by using the clk_bulk*() APIs.

Use:
  - devm_clk_bulk_get_all() API to acquire all the clocks
  - clk_bulk_prepare_enable() to prepare/enable clocks
  - clk_bulk_disable_unprepare() APIs to disable/unprepare them in bulk

As part of this cleanup:
  - Remove the legacy has_cml_clk flag
  - Drop explicit handling of individual clocks (pex, afi, pll_e, cml)
  - Rely on device tree ordering for clock sequencing, eliminating
    hardcoded logic and improving readability and maintainability

This improves clarity, and makes future changes easier for maintainers.

Cc: Thierry Reding <thierry.reding@gmail.com>
Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
v3: None

v2: Switch back to devm_clk_bulk_get_all from devm_clk_bulk_get()

Mani - But you are converting it to .yaml, so you can safely
use devm_clk_bulk_get_all()

v1: Switch from devm_clk_bulk_get_all() -> devm_clk_bulk_get() with
        fix clks array.

nvidia,tegra20-pcie and nvidia,tegra186-pcie uses three clocks
        pex, afi, pll_e
where as nvidia,tegra30-pcie, nvidia,tegra124-pcie, nvidia,tegra210-pcie
uses four clks
        pex, afi, pll_e, cml
---
 drivers/pci/controller/pci-tegra.c | 71 +++++-------------------------
 1 file changed, 12 insertions(+), 59 deletions(-)

diff --git a/drivers/pci/controller/pci-tegra.c b/drivers/pci/controller/pci-tegra.c
index 512309763d1f..32dc11d95cc9 100644
--- a/drivers/pci/controller/pci-tegra.c
+++ b/drivers/pci/controller/pci-tegra.c
@@ -298,7 +298,6 @@ struct tegra_pcie_soc {
 	bool has_pex_clkreq_en;
 	bool has_pex_bias_ctrl;
 	bool has_intr_prsnt_sense;
-	bool has_cml_clk;
 	bool has_gen2;
 	bool force_pca_enable;
 	bool program_uphy;
@@ -331,10 +330,8 @@ struct tegra_pcie {
 
 	struct resource cs;
 
-	struct clk *pex_clk;
-	struct clk *afi_clk;
-	struct clk *pll_e;
-	struct clk *cml_clk;
+	struct clk_bulk_data *clks;
+	int    num_clks;
 
 	struct reset_control *pex_rst;
 	struct reset_control *afi_rst;
@@ -1154,15 +1151,11 @@ static void tegra_pcie_enable_controller(struct tegra_pcie *pcie)
 static void tegra_pcie_power_off(struct tegra_pcie *pcie)
 {
 	struct device *dev = pcie->dev;
-	const struct tegra_pcie_soc *soc = pcie->soc;
 	int err;
 
 	reset_control_assert(pcie->afi_rst);
 
-	clk_disable_unprepare(pcie->pll_e);
-	if (soc->has_cml_clk)
-		clk_disable_unprepare(pcie->cml_clk);
-	clk_disable_unprepare(pcie->afi_clk);
+	clk_bulk_disable_unprepare(pcie->num_clks, pcie->clks);
 
 	if (!dev->pm_domain)
 		tegra_powergate_power_off(TEGRA_POWERGATE_PCIE);
@@ -1175,7 +1168,6 @@ static void tegra_pcie_power_off(struct tegra_pcie *pcie)
 static int tegra_pcie_power_on(struct tegra_pcie *pcie)
 {
 	struct device *dev = pcie->dev;
-	const struct tegra_pcie_soc *soc = pcie->soc;
 	int err;
 
 	reset_control_assert(pcie->pcie_xrst);
@@ -1203,35 +1195,16 @@ static int tegra_pcie_power_on(struct tegra_pcie *pcie)
 		}
 	}
 
-	err = clk_prepare_enable(pcie->afi_clk);
+	err = clk_bulk_prepare_enable(pcie->num_clks, pcie->clks);
 	if (err < 0) {
-		dev_err(dev, "failed to enable AFI clock: %d\n", err);
+		dev_err(dev, "filed to enable clocks: %d\n", err);
 		goto powergate;
 	}
 
-	if (soc->has_cml_clk) {
-		err = clk_prepare_enable(pcie->cml_clk);
-		if (err < 0) {
-			dev_err(dev, "failed to enable CML clock: %d\n", err);
-			goto disable_afi_clk;
-		}
-	}
-
-	err = clk_prepare_enable(pcie->pll_e);
-	if (err < 0) {
-		dev_err(dev, "failed to enable PLLE clock: %d\n", err);
-		goto disable_cml_clk;
-	}
-
 	reset_control_deassert(pcie->afi_rst);
 
 	return 0;
 
-disable_cml_clk:
-	if (soc->has_cml_clk)
-		clk_disable_unprepare(pcie->cml_clk);
-disable_afi_clk:
-	clk_disable_unprepare(pcie->afi_clk);
 powergate:
 	if (!dev->pm_domain)
 		tegra_powergate_power_off(TEGRA_POWERGATE_PCIE);
@@ -1255,25 +1228,11 @@ static void tegra_pcie_apply_pad_settings(struct tegra_pcie *pcie)
 static int tegra_pcie_clocks_get(struct tegra_pcie *pcie)
 {
 	struct device *dev = pcie->dev;
-	const struct tegra_pcie_soc *soc = pcie->soc;
-
-	pcie->pex_clk = devm_clk_get(dev, "pex");
-	if (IS_ERR(pcie->pex_clk))
-		return PTR_ERR(pcie->pex_clk);
 
-	pcie->afi_clk = devm_clk_get(dev, "afi");
-	if (IS_ERR(pcie->afi_clk))
-		return PTR_ERR(pcie->afi_clk);
-
-	pcie->pll_e = devm_clk_get(dev, "pll_e");
-	if (IS_ERR(pcie->pll_e))
-		return PTR_ERR(pcie->pll_e);
-
-	if (soc->has_cml_clk) {
-		pcie->cml_clk = devm_clk_get(dev, "cml");
-		if (IS_ERR(pcie->cml_clk))
-			return PTR_ERR(pcie->cml_clk);
-	}
+	pcie->num_clks = devm_clk_bulk_get_all(dev, &pcie->clks);
+	if (pcie->num_clks < 0)
+		return dev_err_probe(dev, pcie->num_clks,
+				     "failed to get clocks\n");
 
 	return 0;
 }
@@ -2344,7 +2303,6 @@ static const struct tegra_pcie_soc tegra20_pcie = {
 	.has_pex_clkreq_en = false,
 	.has_pex_bias_ctrl = false,
 	.has_intr_prsnt_sense = false,
-	.has_cml_clk = false,
 	.has_gen2 = false,
 	.force_pca_enable = false,
 	.program_uphy = true,
@@ -2373,7 +2331,6 @@ static const struct tegra_pcie_soc tegra30_pcie = {
 	.has_pex_clkreq_en = true,
 	.has_pex_bias_ctrl = true,
 	.has_intr_prsnt_sense = true,
-	.has_cml_clk = true,
 	.has_gen2 = false,
 	.force_pca_enable = false,
 	.program_uphy = true,
@@ -2394,7 +2351,6 @@ static const struct tegra_pcie_soc tegra124_pcie = {
 	.has_pex_clkreq_en = true,
 	.has_pex_bias_ctrl = true,
 	.has_intr_prsnt_sense = true,
-	.has_cml_clk = true,
 	.has_gen2 = true,
 	.force_pca_enable = false,
 	.program_uphy = true,
@@ -2417,7 +2373,6 @@ static const struct tegra_pcie_soc tegra210_pcie = {
 	.has_pex_clkreq_en = true,
 	.has_pex_bias_ctrl = true,
 	.has_intr_prsnt_sense = true,
-	.has_cml_clk = true,
 	.has_gen2 = true,
 	.force_pca_enable = true,
 	.program_uphy = true,
@@ -2458,7 +2413,6 @@ static const struct tegra_pcie_soc tegra186_pcie = {
 	.has_pex_clkreq_en = true,
 	.has_pex_bias_ctrl = true,
 	.has_intr_prsnt_sense = true,
-	.has_cml_clk = false,
 	.has_gen2 = true,
 	.force_pca_enable = false,
 	.program_uphy = false,
@@ -2642,7 +2596,7 @@ static int tegra_pcie_pm_suspend(struct device *dev)
 	}
 
 	reset_control_assert(pcie->pex_rst);
-	clk_disable_unprepare(pcie->pex_clk);
+	clk_bulk_disable_unprepare(pcie->num_clks, pcie->clks);
 
 	if (IS_ENABLED(CONFIG_PCI_MSI))
 		tegra_pcie_disable_msi(pcie);
@@ -2676,9 +2630,9 @@ static int tegra_pcie_pm_resume(struct device *dev)
 	if (IS_ENABLED(CONFIG_PCI_MSI))
 		tegra_pcie_enable_msi(pcie);
 
-	err = clk_prepare_enable(pcie->pex_clk);
+	err = clk_bulk_prepare_enable(pcie->num_clks, pcie->clks);
 	if (err) {
-		dev_err(dev, "failed to enable PEX clock: %d\n", err);
+		dev_err(dev, "failed to enable clock: %d\n", err);
 		goto pex_dpd_enable;
 	}
 
@@ -2699,7 +2653,6 @@ static int tegra_pcie_pm_resume(struct device *dev)
 
 disable_pex_clk:
 	reset_control_assert(pcie->pex_rst);
-	clk_disable_unprepare(pcie->pex_clk);
 pex_dpd_enable:
 	pinctrl_pm_select_idle_state(dev);
 poweroff:
-- 
2.50.1


