Return-Path: <devicetree+bounces-223465-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A99DBB572F
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 23:10:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 704C848604A
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 21:05:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A28CF2BE658;
	Thu,  2 Oct 2025 21:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="IJYG+P8C"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f226.google.com (mail-il1-f226.google.com [209.85.166.226])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 097F02BDC03
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 21:04:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.226
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759439094; cv=none; b=R7PL6jJ2peFclEtYzlwOtIC21gxXPyElSQmGW2EzFmYL9/CT1JbfvtHYjSEmLqWlfnn+VRJ9oUdXpcJZgELOdea3+EdCwGbFMm8hyCz7MqiylbSZs5VNKKlrqmFwDofBfX4NmpjbLjm9jpW651dNAp9BSybXPS90Lzq7MIPEeKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759439094; c=relaxed/simple;
	bh=SbL6UcwBpYbwRwNOueWqf3w8SnBvv9kw5WB+oOZBTow=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=tEBkqxyO3d/6saYP4rChia4LvDl15qhJIzaUyNypARjeVsR+DCAxGSjqpzjn0tFCfaM8oAMz0kd3d9C+kWpRYL0ACdYTbH9uEi8hDE1V/Qr/llg5BLUbGVTFZZNI+8bY9WCku51yKgMjhXAk2hh6ul5G6s2yFzi5jP0qEFLCiC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=IJYG+P8C; arc=none smtp.client-ip=209.85.166.226
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-il1-f226.google.com with SMTP id e9e14a558f8ab-42e7b22e007so1427655ab.3
        for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 14:04:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759439092; x=1760043892;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZIU73QOdUXqw8XH54gnOsyWC2NrvdvHxRkWX7Bf2XKY=;
        b=AMr+yqewUIkPxBifDXzB/GxyPtWCr7DDFBbbxOW4tTMRW2SRoyS5S8y1vX6lNh2JC+
         P1tVoHCZO1p6T/DvqrjmAm4lC/KDhr1I1HJTxv0tG7zmFhR3NjtHvZWebi1TCpt0bn0v
         r79gHkTECR9VPCX9/Ma2g+5d7KPhZO3pdtlOewlaOjhQt8JYm/B1WBxkJstzK32S7tLK
         9ExhpWZRkzqE5ngTJ4uOQJNQ8xWlKQNzqRNU4zI0nSE3rHsIajrsBdIjB9L1HjmgrJtE
         Ub5isyJbQykXwd59fKqxzo3BqhMOPJw25CsdChBdsQX0vdt2zS046i4LK0FAVWNfVNwY
         hqRw==
X-Forwarded-Encrypted: i=1; AJvYcCWPTt68K2aAiJG+wwcBZe6zD67trJdCzplVz3nUSJZ3mZdw1VMiMDh0h+aYSxViaR0UbrSomSFMyLX2@vger.kernel.org
X-Gm-Message-State: AOJu0YzNnMK+Q/afBy4kXRXBhMLLbw+8NRDTIijL50I03Rp++Hv6gLuK
	lOCI4EOndxHkh2t9DyHY9bUdrPL58dWQrw+hZBYqYn2rU0znQj3t27FPjgH+iAdRIH4V6OS1oLb
	7ckbWMdB//jjoRtlihisLqqxZKra5ED1Tx20OuWJSiVE0hGIhBbRYOjHT3SD5QNSLpDRlbx+EVD
	xLctm70zwbBDJkUEpyMGrWcH9AvRe9tdZDzmkFIY24HenJreb4ZetQns/bnsy5x6qgmZ2wblocd
	zCIX5nWA23ToA==
X-Gm-Gg: ASbGnctqje/UpTkxGAAeC89VbaKum5tC7MTYogThJwWU6+kl+SRoqxjPI9FmvrOFKTr
	8/3MdrXbWvEiwQg+fh2c7WE1TdU1mGuNmh8/IPizHzjaUFIHZ94xXepP8J0iMZkfT/aUVr7zRZ0
	rIKvEKGEv03MOF3FgvtF6PD5k18e/e3YNb/bpadrzl0FIV/Er+bcdxWHLUMNh4bZ+1DZrnlP6EB
	XMWAXBWMQ0Gd89xIMWXa0z3DRi4U6QoyMsTerb3c4GabZ5Opm6Es4Vw0SgIsfixO2h4ezxdbL/7
	V5NIHX9ToBoYTEtBBioU++jX/1bjFfWC69K49ZEKXsrtTCMx31VvScAvOvg96k0txkvNd1c16v1
	85rjhGQZvlMmHFpv2fqcWqXgIXZ/2psl7F2bcqOEq0cMKJ1QBn2XfC2bAnlYqdvhbk5kWNNuzuf
	59fQ==
X-Google-Smtp-Source: AGHT+IHNdsnZwKLf99jBBIUXBXP8c90nsPcEmDYgfffZ5VeF7Gupu7tIOKZJ53vSKElNZ+zc+fZa3tLPIlLG
X-Received: by 2002:a05:6e02:1707:b0:428:732c:70db with SMTP id e9e14a558f8ab-42e7ad01e9cmr9994405ab.4.1759439092200;
        Thu, 02 Oct 2025 14:04:52 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-19.dlp.protect.broadcom.com. [144.49.247.19])
        by smtp-relay.gmail.com with ESMTPS id e9e14a558f8ab-42d8b201ae4sm2507735ab.8.2025.10.02.14.04.51
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Oct 2025 14:04:52 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-wm1-f70.google.com with SMTP id 5b1f17b1804b1-46e2d845ebeso8851075e9.1
        for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 14:04:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1759439090; x=1760043890; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZIU73QOdUXqw8XH54gnOsyWC2NrvdvHxRkWX7Bf2XKY=;
        b=IJYG+P8CWCe7DmKOCwG0Mn6Cm7Q1S/brh9hFNUgKNJIgIKNF/dP1kSYACpDfW7KmN+
         MgVLwyzDpbB0aofhMsHOvi1pUKmFwVdvwj8ctX/rxnsQu/RoSR/yEORfMt6ujjjw5dK1
         3uHoA1VdZcagfUVH25FAG5NfCbVohdJNkGthI=
X-Forwarded-Encrypted: i=1; AJvYcCV5aELokrbW6hpvp+oGa36XvVtElK2yICTEqj+jv0j8LYHvg5zpmrfRHAYHak/oGYWL2UT5wXELkw52@vger.kernel.org
X-Received: by 2002:a05:600c:348a:b0:46e:1f92:49aa with SMTP id 5b1f17b1804b1-46e7110ef47mr4504995e9.15.1759439090545;
        Thu, 02 Oct 2025 14:04:50 -0700 (PDT)
X-Received: by 2002:a05:600c:348a:b0:46e:1f92:49aa with SMTP id 5b1f17b1804b1-46e7110ef47mr4504845e9.15.1759439090152;
        Thu, 02 Oct 2025 14:04:50 -0700 (PDT)
Received: from mail.broadcom.net ([192.19.144.250])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e5c4c0321sm61711295e9.8.2025.10.02.14.04.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Oct 2025 14:04:49 -0700 (PDT)
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
Subject: [PATCH 2/3] mmc: sdhci-brcmstb: clear CFG_OP_DLY when using HS200
Date: Thu,  2 Oct 2025 17:04:25 -0400
Message-Id: <20251002210426.2490368-3-kamal.dasu@broadcom.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251002210426.2490368-1-kamal.dasu@broadcom.com>
References: <20251002210426.2490368-1-kamal.dasu@broadcom.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e

Clear SDIO_1_CFG_OP_DLY register when using HS200 mode to be
compliant with timing spec.  We only need this for on BCM72116
SoCs.

Signed-off-by: Kamal Dasu <kamal.dasu@broadcom.com>
---
 drivers/mmc/host/sdhci-brcmstb.c | 37 ++++++++++++++++++++++++++++----
 1 file changed, 33 insertions(+), 4 deletions(-)

diff --git a/drivers/mmc/host/sdhci-brcmstb.c b/drivers/mmc/host/sdhci-brcmstb.c
index efc2f3bdc631..0905b316a24b 100644
--- a/drivers/mmc/host/sdhci-brcmstb.c
+++ b/drivers/mmc/host/sdhci-brcmstb.c
@@ -31,13 +31,13 @@
 
 #define SDHCI_ARASAN_CQE_BASE_ADDR		0x200
 
-#define SDIO_CFG_CQ_CAPABILITY			0x4c
-#define SDIO_CFG_CQ_CAPABILITY_FMUL		GENMASK(13, 12)
-
 #define SDIO_CFG_CTRL				0x0
 #define SDIO_CFG_CTRL_SDCD_N_TEST_EN		BIT(31)
 #define SDIO_CFG_CTRL_SDCD_N_TEST_LEV		BIT(30)
-
+#define SDIO_CFG_OP_DLY				0x34
+#define SDIO_CFG_OP_DLY_DEFAULT			0x80000003
+#define SDIO_CFG_CQ_CAPABILITY			0x4c
+#define SDIO_CFG_CQ_CAPABILITY_FMUL		GENMASK(13, 12)
 #define SDIO_CFG_MAX_50MHZ_MODE			0x1ac
 #define SDIO_CFG_MAX_50MHZ_MODE_STRAP_OVERRIDE	BIT(31)
 #define SDIO_CFG_MAX_50MHZ_MODE_ENABLE		BIT(0)
@@ -212,6 +212,22 @@ static void sdhci_brcmstb_cfginit_2712(struct sdhci_host *host)
 	}
 }
 
+static void sdhci_brcmstb_set_72116_uhs_signaling(struct sdhci_host *host,
+						unsigned int timing)
+{
+	struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
+	struct sdhci_brcmstb_priv *priv = sdhci_pltfm_priv(pltfm_host);
+	u32 reg;
+
+	/* no change to SDIO_CFG_OP_DLY_DEFAULT when using preset clk rate */
+	if (!(host->quirks2 & SDHCI_QUIRK2_PRESET_VALUE_BROKEN))
+		return;
+
+	reg = (timing == MMC_TIMING_MMC_HS200) ? 0 : SDIO_CFG_OP_DLY_DEFAULT;
+	writel(reg, priv->cfg_regs + SDIO_CFG_OP_DLY);
+	sdhci_set_uhs_signaling(host, timing);
+}
+
 static void sdhci_brcmstb_dumpregs(struct mmc_host *mmc)
 {
 	sdhci_dumpregs(mmc_priv(mmc));
@@ -252,6 +268,13 @@ static struct sdhci_ops sdhci_brcmstb_ops_2712 = {
 	.set_uhs_signaling = sdhci_set_uhs_signaling,
 };
 
+static struct sdhci_ops sdhci_brcmstb_ops_72116 = {
+	.set_clock = sdhci_set_clock,
+	.set_bus_width = sdhci_set_bus_width,
+	.reset = sdhci_reset,
+	.set_uhs_signaling = sdhci_brcmstb_set_72116_uhs_signaling,
+};
+
 static struct sdhci_ops sdhci_brcmstb_ops_7216 = {
 	.set_clock = sdhci_brcmstb_set_clock,
 	.set_bus_width = sdhci_set_bus_width,
@@ -282,6 +305,11 @@ static struct brcmstb_match_priv match_priv_7445 = {
 	.ops = &sdhci_brcmstb_ops,
 };
 
+static struct brcmstb_match_priv match_priv_72116 = {
+	.flags = BRCMSTB_MATCH_FLAGS_BROKEN_TIMEOUT,
+	.ops = &sdhci_brcmstb_ops_72116,
+};
+
 static const struct brcmstb_match_priv match_priv_7216 = {
 	.flags = BRCMSTB_MATCH_FLAGS_HAS_CLOCK_GATE,
 	.hs400es = sdhci_brcmstb_hs400es,
@@ -298,6 +326,7 @@ static const struct of_device_id __maybe_unused sdhci_brcm_of_match[] = {
 	{ .compatible = "brcm,bcm2712-sdhci", .data = &match_priv_2712 },
 	{ .compatible = "brcm,bcm7425-sdhci", .data = &match_priv_7425 },
 	{ .compatible = "brcm,bcm7445-sdhci", .data = &match_priv_7445 },
+	{ .compatible = "brcm,bcm72116-sdhci", .data = &match_priv_72116 },
 	{ .compatible = "brcm,bcm7216-sdhci", .data = &match_priv_7216 },
 	{ .compatible = "brcm,bcm74165b0-sdhci", .data = &match_priv_74165b0 },
 	{},
-- 
2.34.1


