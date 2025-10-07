Return-Path: <devicetree+bounces-224211-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id DD0ACBC1A1D
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 16:05:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 198CC34F740
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 14:05:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E6F62E1F08;
	Tue,  7 Oct 2025 14:05:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="GPPbDzJ7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f100.google.com (mail-pj1-f100.google.com [209.85.216.100])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 035751EB5FD
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 14:05:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.100
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759845906; cv=none; b=qKQllu8P1YhFm8A9mEiWN76JSSnib08d39dYv709VWI+ufSnnBZyH7mg8dMpSIB1B19ThC0B8P1s1AfqeUZWbxZaa/qJUyTEQ4yP/zlhDaJ+IaW7vt3ry7rfUOoMgIBN2qPHkK+yadtk2CppYqbaYH0tRyb5ytVWBICqZpvKyi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759845906; c=relaxed/simple;
	bh=1i3B2dKT5sbTWo1nJf5tI4NTlUOkK2mEIdt9GtsoDag=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=pa6bH2h30kaHzyk+fwc2hfhaj7sutDKu07PLWZq3b4c+lnOinselL3+7StJxrLPPQfnfGFYbBmxV9xpLI/9Sz4mONZK8f6HB7eg8dC47fQZ21bIQNkCMJ9OXCt3lS7x6HVNsD1n9M2g40qWCV2jP0E0/qz9u7DTeAnsFgs+78Z8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=GPPbDzJ7; arc=none smtp.client-ip=209.85.216.100
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pj1-f100.google.com with SMTP id 98e67ed59e1d1-3324fdfd54cso7318864a91.0
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 07:05:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759845904; x=1760450704;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rEmNG5dHeCrJHUC2bFy2N+BBQV+BhaaczeWYkzApDTU=;
        b=EkB2SUhsYVNfQKqDu9ykT6rPxrVdqErFspLRbHUWjTFAZRcVnG7ZAVQt0vieJICxpW
         P+U1zLaqj/+mj1hxue+aenzCmt8xXzyEs+oTTIhs7gM4GmILvK5um1VgeSM5O39hXM7o
         aiJkgQWMIusy/H0e/sjeZSq3bOtbroLUMTSBgQ3YZohuUeC8W73o9KHi664kkuMA88IX
         LMHuus2U5ToGGjGllMf5ocmRNvMSSTUgYj4GfJ6EXywbVkwPULcIqnW9mcpEMRfzgHhK
         nA9T4nmKxXaxVnsjvu2qr6GkpTw2LctdEkpItbEeshpu3Jc3ur1/gcloHC+RCsJK4w9f
         P01g==
X-Forwarded-Encrypted: i=1; AJvYcCW4rRKVftNCYkJ01nwpPZoe/lTWxbPOQTMkfrvmQ4tnVGu1EZUEBpmOP/FXirR8LEj/WfZbhAyLr8r4@vger.kernel.org
X-Gm-Message-State: AOJu0YyJVPW/RwXhqSdTMINXF8lXxzMGaQOTgXTz2XTxscIY9dbKmXaf
	2nAzvBpwt3ZcU6YbVLwUKWmvuLtX196yXdCjyIz4xp8IlZZzXbRsULkNsu9jPrv4pBvgC91fTXd
	a2a+t+JLs5heS6+EGHX0xTodNANzVr7/+BJ2j9sRmcUN4i+o+z5GRrEtqN5usckIHsUbkveW1bJ
	DlVxV4lCQbCKtXEKgCp2duKLL90W63QSM+zzhpcuek/bG2/u1vcoYDfPi86VNUG3UeJkkp7xCnQ
	s+NzhOQk/Yr5w==
X-Gm-Gg: ASbGncvSKqvNeNC21rgYEX459kf1B9IHT3G1lZvc7PTEdxv3nSEW4XF427GfF4tSY6R
	qs8KOwGY8AxDa8Wlu10Lkt6DhrQwbgISa70vTa8pCRrAivoYXJFI3iONyg+uwUq5B2CIceRQ1dS
	yAvzY88b5OHbkRy5Wu2saJP2MK/NNvwmpTGH5bXCEwc9kZcZbaE5Fvhr/IC6/Sfr2ocSsxLqVD+
	2EmbrEyy1bR5ND7mviUwV6UrI2iApjI9E8Vk9U0bZFmgCVoe1ikoD9tOWBy42l+WZDJvkClsIEP
	TrhR614CCi4XPTG25OZpjzF7NkAFH44QsAX10kTNRT5IJA2MQ0gJP3PRrUxJQbRLsI+jONGqO8I
	80rWyK/BShIe5i5QKwCCYf89RwFxiRXADLpHpEc+3XNAGSLPDaag45vEOtCjcx37zys3YAdKBKC
	RnVzyt
X-Google-Smtp-Source: AGHT+IEB3WEPj1VqNdMKiJwFSz7qOlWAjLEPMNVgY3rpKbSmCd66zH7AJ2z0ZSW4TzStZu6ySCK89f6Wf6Rd
X-Received: by 2002:a17:90b:1e09:b0:32e:87fa:d975 with SMTP id 98e67ed59e1d1-339c27b1ca6mr19809430a91.34.1759845903832;
        Tue, 07 Oct 2025 07:05:03 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-117.dlp.protect.broadcom.com. [144.49.247.117])
        by smtp-relay.gmail.com with ESMTPS id 98e67ed59e1d1-339b4e977e5sm1410138a91.2.2025.10.07.07.05.03
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Oct 2025 07:05:03 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-818bf399f8aso166557646d6.2
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 07:05:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1759845902; x=1760450702; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rEmNG5dHeCrJHUC2bFy2N+BBQV+BhaaczeWYkzApDTU=;
        b=GPPbDzJ7rbQyN2trT+77EMEOxguVrndo+V966NfmDOyosM8V8AZODPHg838se0iJBw
         X6QpMHuZRB3hf94JqPBgBZmvwO9jPtHkGsgz9Y5lDqmUfBvudELK/kA2v7hE6TKmlv6K
         ktp33B8K42QfLSJ4BNHozVV4sYzbfl/aQUd1U=
X-Forwarded-Encrypted: i=1; AJvYcCW+bVBxCCMnoHr8NTQi6mY+1gXecTkUWGt2EOtT111M9nAuDYn2F5if9D83r6F6QkC/bdga9z3Wvi+J@vger.kernel.org
X-Received: by 2002:a05:6214:4113:b0:818:f4ef:daab with SMTP id 6a1803df08f44-879dc7c243bmr192631986d6.26.1759845902136;
        Tue, 07 Oct 2025 07:05:02 -0700 (PDT)
X-Received: by 2002:a05:6214:4113:b0:818:f4ef:daab with SMTP id 6a1803df08f44-879dc7c243bmr192630956d6.26.1759845901002;
        Tue, 07 Oct 2025 07:05:01 -0700 (PDT)
Received: from mail.broadcom.net ([192.19.144.250])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-878bae60b67sm142718956d6.9.2025.10.07.07.04.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Oct 2025 07:05:00 -0700 (PDT)
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
Subject: [PATCH v2 3/5] mmc: sdhci-brcmstb: clear CFG_OP_DLY when using HS200
Date: Tue,  7 Oct 2025 10:04:31 -0400
Message-Id: <20251007140434.606051-4-kamal.dasu@broadcom.com>
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

Clear SDIO_1_CFG_OP_DLY register when using HS200 mode to be
compliant with timing spec.  We only need this for on BCM72116
SoCs.

Signed-off-by: Kamal Dasu <kamal.dasu@broadcom.com>
Reviewed-by: Florian Fainelli <florian.fainelli@broadcom.com>
Acked-by: Adrian Hunter <adrian.hunter@intel.com>
---
 drivers/mmc/host/sdhci-brcmstb.c | 30 ++++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/drivers/mmc/host/sdhci-brcmstb.c b/drivers/mmc/host/sdhci-brcmstb.c
index f81cc1889ac9..d25bf71d79f4 100644
--- a/drivers/mmc/host/sdhci-brcmstb.c
+++ b/drivers/mmc/host/sdhci-brcmstb.c
@@ -34,6 +34,8 @@
 #define SDIO_CFG_CTRL				0x0
 #define SDIO_CFG_CTRL_SDCD_N_TEST_EN		BIT(31)
 #define SDIO_CFG_CTRL_SDCD_N_TEST_LEV		BIT(30)
+#define SDIO_CFG_OP_DLY				0x34
+#define SDIO_CFG_OP_DLY_DEFAULT			0x80000003
 #define SDIO_CFG_CQ_CAPABILITY			0x4c
 #define SDIO_CFG_CQ_CAPABILITY_FMUL		GENMASK(13, 12)
 #define SDIO_CFG_MAX_50MHZ_MODE			0x1ac
@@ -210,6 +212,21 @@ static void sdhci_brcmstb_cfginit_2712(struct sdhci_host *host)
 	}
 }
 
+static void sdhci_brcmstb_set_72116_uhs_signaling(struct sdhci_host *host, unsigned int timing)
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
@@ -250,6 +267,13 @@ static struct sdhci_ops sdhci_brcmstb_ops_2712 = {
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
@@ -280,6 +304,11 @@ static struct brcmstb_match_priv match_priv_7445 = {
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
@@ -296,6 +325,7 @@ static const struct of_device_id __maybe_unused sdhci_brcm_of_match[] = {
 	{ .compatible = "brcm,bcm2712-sdhci", .data = &match_priv_2712 },
 	{ .compatible = "brcm,bcm7425-sdhci", .data = &match_priv_7425 },
 	{ .compatible = "brcm,bcm7445-sdhci", .data = &match_priv_7445 },
+	{ .compatible = "brcm,bcm72116-sdhci", .data = &match_priv_72116 },
 	{ .compatible = "brcm,bcm7216-sdhci", .data = &match_priv_7216 },
 	{ .compatible = "brcm,bcm74165b0-sdhci", .data = &match_priv_74165b0 },
 	{},
-- 
2.34.1


