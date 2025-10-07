Return-Path: <devicetree+bounces-224212-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 44B3CBC1A4D
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 16:07:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 66A234F799C
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 14:05:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 274402E2F13;
	Tue,  7 Oct 2025 14:05:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="Oq6mKmEJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f98.google.com (mail-pj1-f98.google.com [209.85.216.98])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B43C52E1F11
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 14:05:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.98
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759845909; cv=none; b=raKqpHpNarLJEFpypKGwgYzytP0mHw0WkIlMnzBEMwcoT/ZwVcNbUJG2AbgWiaOtm+ZbO8iV3iRhiMOVVIYbT+i1JO8mlwUPaROp9dp+No756k8deeJPIZ/xbYYojZYx+SUy0bzKtLnUarHs6pSAlNEMA/rexN0MiV9X9z9ng5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759845909; c=relaxed/simple;
	bh=Rk6f7wi+QRbO64RAAHsaYdej9yZMvSjKm8kZyMLaGdM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=iLe6AqDZhaQZAe+RWh/jdcxlmUMXagVjcObz688+qLaIPg9AwZKOnMNOt+hZlycERDnaKGmfJ27eMd2bZ23LvMDt1tWGE48uBNhWIts4wpWt9fQZsVKM/hFxBSzws4soJrQRfOtvwv/xGuad34HtvwE8N5GCOQhJiZDKhTueuZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=Oq6mKmEJ; arc=none smtp.client-ip=209.85.216.98
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pj1-f98.google.com with SMTP id 98e67ed59e1d1-339d53f4960so3401405a91.3
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 07:05:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759845907; x=1760450707;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6qxUFkx3TIQhAfsBZkcTY7Gt7i9ylaZPTGmpdbY/RyQ=;
        b=HLmhE92LV/dJoPcE3Wi/oiUCtlxq/0gy8fOfj/BpqR5zTk0M553Xjm1Rv5/Xtcs9wH
         8bXQaPV46+c58VWXVcZHeDhnreKK89ZcsegBvUsKZG8YrUZrEzz8MWQpPmxFHuddlH/Z
         b6E2mGnLNw6SFAdQvFn+YPdvzt0mWoCrbvCyrFugmc3IZL7jhAmxLUKVdCmEoL++d1pj
         V2G29jyoOTi+cHDhNCNcMmOJNrVLiputhEKhVEdkkq6szM3tj76TKolPzIR7TjFcK+BU
         Y0s+BkJ/in6MyKPCCpQtz/QNpIR02MYN5GysuQ8mM7U17VEKc2plGH6yV2slC+cHQvi6
         BkJQ==
X-Forwarded-Encrypted: i=1; AJvYcCU6C/MfSuc/DpBGHmsHeYb9YjfK51O0WOB+WGUrpXOOytzumdzeh21T0S8Jmyy2tZrjGUg42V9kG37m@vger.kernel.org
X-Gm-Message-State: AOJu0YywfREgCgbkuB51k9gPyNbk3rkzUwZs+L3rqXmUnILYLTSNMRCi
	IoGRSBgX8IW2huyi++Jd9OCk0UQrlvq2MFSIohxqH0QIAntaRjYmBUhpbUUsyFey5ndtD9X3uVw
	tKyNOphDPjAnd0manMu+zQi5sr/pj/LRd3S5wrPYFKJpMHL10fycrY7x+oCudc4K/h0SrdMhxdF
	BLbAb1qSF4ZORsegoqClXK5Q2fdq8Bhq1Dc8m919GbDX6SeQCeXpgX1Q+wwwQa/rB6ABlnDJmNN
	omE0gMys7YUlg==
X-Gm-Gg: ASbGnctCGAcnV9p7yvh21QROJ42JWkpBuxEZ3KuaL9pLYXflD3dwKwCCiCOXFgtGht1
	3xs6f5XxKKRFIdwlHEfjPnFCzsxHG6rgSX4VcnyqAT78m+2SkPqBcl4eMR8R/bmOt1GCjvXDAcV
	p+WCYN6hMDpqhRzDYbW3JlpHBolNq6a+U/PRjfqStDh/84rdDa+5yw7Z3OKkXjOA85ed0qtmhoz
	M9AUp9H0vk8owlSAOfQLB8YrdjcBtUmMDUTYg8n6TD4MWlbdxIyAdkZ4mk5Ki4vwoIJ2dvXzvNq
	XNmtpT+T/lcXySrxYoPzAgVcLa4j2KyStIutbm7EdA8+YErq7ATl7lpWmSfbIZPhZlQ7qvlvyd4
	Gm+zcyMs5edUa4p9S93uxBxyXmGyXDj6gr2kjo6h7vLjKCdHdraAuL3fjfkAW20qf7aczW0Zjqo
	DGcA==
X-Google-Smtp-Source: AGHT+IFOiSNKqGsoeK7LAvsadwDpQ7fdaYAcGFl54Tf6YzbHiQbbs1UiOzsplVxtyhwf+acWQ5eKRwqvtueC
X-Received: by 2002:a17:90b:2f07:b0:339:d1f0:c751 with SMTP id 98e67ed59e1d1-339d1f0cc75mr14069509a91.27.1759845906768;
        Tue, 07 Oct 2025 07:05:06 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-19.dlp.protect.broadcom.com. [144.49.247.19])
        by smtp-relay.gmail.com with ESMTPS id 98e67ed59e1d1-339a6f4b56dsm1730389a91.4.2025.10.07.07.05.06
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Oct 2025 07:05:06 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-78e4e07aa39so114176216d6.0
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 07:05:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1759845905; x=1760450705; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6qxUFkx3TIQhAfsBZkcTY7Gt7i9ylaZPTGmpdbY/RyQ=;
        b=Oq6mKmEJmyGfz9R25lDbUT7WVLOe+8QYZ8/QnZXZnzF3kpEpYiGCK9MxD/pvBHHPw+
         ha+Ouuho90zcjn3UzxoQVIg1feKJEF/SnCDqAs42nRQH5QiyUyJa5s83MdbIEEnbuOg7
         A7DEcXHXp1DbggqzIq0R/DEAxQFFMnPqJ+iaE=
X-Forwarded-Encrypted: i=1; AJvYcCWGaywuvQA3Vfh3oajs6oC8rQVw5DZtT5d/3zhO41Za/OtM2iTT12pavEuJ/1wy6GCkuNuan4sHHgWm@vger.kernel.org
X-Received: by 2002:a05:6214:1254:b0:70d:6df4:1b21 with SMTP id 6a1803df08f44-879dc87fd21mr239627856d6.62.1759845905155;
        Tue, 07 Oct 2025 07:05:05 -0700 (PDT)
X-Received: by 2002:a05:6214:1254:b0:70d:6df4:1b21 with SMTP id 6a1803df08f44-879dc87fd21mr239626916d6.62.1759845904420;
        Tue, 07 Oct 2025 07:05:04 -0700 (PDT)
Received: from mail.broadcom.net ([192.19.144.250])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-878bae60b67sm142718956d6.9.2025.10.07.07.05.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Oct 2025 07:05:03 -0700 (PDT)
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
Subject: [PATCH v2 4/5] mmc: sdhci-brcmstb: Add BCM74371 support
Date: Tue,  7 Oct 2025 10:04:32 -0400
Message-Id: <20251007140434.606051-5-kamal.dasu@broadcom.com>
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

Added "brcm,bcm74371-sdhci" compatibility to the controller driver.

Signed-off-by: Kamal Dasu <kamal.dasu@broadcom.com>
---
 drivers/mmc/host/sdhci-brcmstb.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/mmc/host/sdhci-brcmstb.c b/drivers/mmc/host/sdhci-brcmstb.c
index d25bf71d79f4..42709ca8111d 100644
--- a/drivers/mmc/host/sdhci-brcmstb.c
+++ b/drivers/mmc/host/sdhci-brcmstb.c
@@ -299,6 +299,11 @@ static struct brcmstb_match_priv match_priv_7425 = {
 	.ops = &sdhci_brcmstb_ops,
 };
 
+static struct brcmstb_match_priv match_priv_74371 = {
+	.flags = BRCMSTB_MATCH_FLAGS_BROKEN_TIMEOUT,
+	.ops = &sdhci_brcmstb_ops,
+};
+
 static struct brcmstb_match_priv match_priv_7445 = {
 	.flags = BRCMSTB_MATCH_FLAGS_BROKEN_TIMEOUT,
 	.ops = &sdhci_brcmstb_ops,
@@ -324,6 +329,7 @@ static struct brcmstb_match_priv match_priv_74165b0 = {
 static const struct of_device_id __maybe_unused sdhci_brcm_of_match[] = {
 	{ .compatible = "brcm,bcm2712-sdhci", .data = &match_priv_2712 },
 	{ .compatible = "brcm,bcm7425-sdhci", .data = &match_priv_7425 },
+	{ .compatible = "brcm,bcm74371-sdhci", .data = &match_priv_74371 },
 	{ .compatible = "brcm,bcm7445-sdhci", .data = &match_priv_7445 },
 	{ .compatible = "brcm,bcm72116-sdhci", .data = &match_priv_72116 },
 	{ .compatible = "brcm,bcm7216-sdhci", .data = &match_priv_7216 },
-- 
2.34.1


