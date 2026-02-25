Return-Path: <devicetree+bounces-268171-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kD+tAK2lnmmrWgQAu9opvQ
	(envelope-from <devicetree+bounces-268171-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 08:33:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F87E1937DE
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 08:33:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4C1813131420
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 07:24:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DACDD30FC31;
	Wed, 25 Feb 2026 07:22:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="X4zva0wa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95FB5311955
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 07:22:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772004179; cv=none; b=rbMSLiu62tZ8XFiAOZ/eOclAwqq1qZoKe83il76Kw2IpXOacRHWsXO6GKWiAJJEXbP5DLrqN6LLr63PdFPBmEoqwREY5tOA12GJpJFNsDwfKMli/NevnTh1YktFi8aEJIjuV/3sDYgjC5UvNIrZpUVVRTk7xVCR3zPFuxhWYvmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772004179; c=relaxed/simple;
	bh=gDUgRl0wOcweCpBs62ymUXMNxQzNvJxe3Mm+XHK8dW4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Lkg/CiIQHF6bVB/PxvfVcy0v9XVd7a4HWOotooWMgFHzZ8PFSquefIrq9vcCcBeYtEhymhU81iBzSz/SfqvTQHJRE3W/GY+BaeTwoMPhcg1PDihquuVF0Kr7QCb2z5meUAc9AUqG61coaW+APZinnE1D9OXB2tJtLrHBIZ06wBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=X4zva0wa; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-2a871daa98fso45856325ad.1
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 23:22:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1772004178; x=1772608978; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KjmmZwc6KWVq4M0dNXYbWQ21OGo4O/i55CZpo06FEF0=;
        b=X4zva0wa/QiTAIiXmyNmkwsulO+iJVXnGIROI882HpZ1mfxrWWC+sOT8DSxKPr9BBv
         FO5FNRH5K6Y5KlV9ciltn9HFzMymCOKVYJUGiH6pwU/QMG7h84J9zGLEXE+HJFLhJTLT
         iJiKRX71CtNx6eHqT0bn7qRdDK/Z1lw3pNzYw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772004178; x=1772608978;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=KjmmZwc6KWVq4M0dNXYbWQ21OGo4O/i55CZpo06FEF0=;
        b=DdbPqJReaVP5jOq8b26xab2GNfAXEY2UmtO9dcLMdP7ZJ+C6brRwiYU+3gwK8UVMEt
         9ksMzGVW8+z2ELrQDVdoOeCObodbohmhBjfCxlVd6tHibSS5r4jmALzzk194npj+RTM4
         HTyL49RZodTkp4vR3Sm7A9QWgdLMJIrAwH/+ZAyj4TNpmRWIQbZ7jSTDGZ8/UYV/BeW5
         HwdIGoxBhFmwCPzuUexiA9TZOM3iF/vIKBRNSp7SX9lfjTxiJW02ncarqmsw7kULUPgq
         UII88pSJNtIlWynoCYZ1uA0DS7LyAmbQIA45XoHTF+/HpeZqYs5f27lurD+j4VyWX9dt
         s5mA==
X-Gm-Message-State: AOJu0Yz8VVG/zlGoLg1/GxARiXNY107/qCtOP5f9nyE1S8TcEnD7UQLe
	0NFL3+q0HjK9zdcxDm3NVnEnFPNHbHCloDr/Su/mAWIwlpP72POX2A/wV8SyktX/Dg==
X-Gm-Gg: ATEYQzwy+cRKNnfkESwwoaUL4pV0CdvjHlQIZot4h4s5S8GSf/a0o3buSkVPmLMS6+e
	QV4tAAYLBGRA5oUuuZ1Yj7PjTNhRl/QW5Kn2DJJ+J+LRh0Y4e0tHSKGgUCYt5F7gUa/N1y5QscV
	/H3c8VsKVZKZ4jkO3/aCc8k4dXYV/4hTw15JOxU6oz9nKzWBaXLz/FZ8RHv/TqR1Npe0l8ZuDOn
	4MsFpY8UJvkSzEiNK2Jjj2tbNMoscrzFi+gXmzWXeRXtUlsboU1D+r51ZiSDG5kUySZWzY2afuV
	6LHV6i/vaYnSMolUkIMPg3ohgb+aiGX/03WwJ6xkk23MYl3Whn1vy623W9MJLGeIGIdrHy3ldN9
	0n4nYWu7eDBl79PLsZAhBtFwcDH0ZbGONWHNLqgwfVMIQ/0Q81+PqUfgz8w2q0nR3ZAMiokfitv
	Dlc4JTX0042Y/HcDJjFwS40gEIBx/+JUNlj0QlPr/SmDQYaIR7jghyDVGbytfCEMdCgQ6UK5wAa
	rDp6w==
X-Received: by 2002:a17:903:46c6:b0:2a0:e5cd:80a1 with SMTP id d9443c01a7336-2add141780dmr17635675ad.41.1772004178049;
        Tue, 24 Feb 2026 23:22:58 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2a00:79e0:201d:8:9d6:2e6a:941b:690])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad7503fdc9sm130814435ad.80.2026.02.24.23.22.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 23:22:57 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Ryder Lee <ryder.lee@mediatek.com>,
	Jianjun Wang <jianjun.wang@mediatek.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Chen-Yu Tsai <wenst@chromium.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	linux-pci@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 3/7] PCI: mediatek-gen3: Split out device power helpers
Date: Wed, 25 Feb 2026 15:22:20 +0800
Message-ID: <20260225072225.3345307-4-wenst@chromium.org>
X-Mailer: git-send-email 2.53.0.414.gf7e9f6c205-goog
In-Reply-To: <20260225072225.3345307-1-wenst@chromium.org>
References: <20260225072225.3345307-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	TAGGED_FROM(0.00)[bounces-268171-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com,collabora.com,mediatek.com,kernel.org,google.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wenst@chromium.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[chromium.org:+];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 6F87E1937DE
X-Rspamd-Action: no action

Split out existing code that deals with device power sequencing into
into helpers to allow cleaning up the error paths and integrating the
new PCI pwrctrl API,

This change is purely code movement.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 drivers/pci/controller/pcie-mediatek-gen3.c | 87 ++++++++++++---------
 1 file changed, 52 insertions(+), 35 deletions(-)

diff --git a/drivers/pci/controller/pcie-mediatek-gen3.c b/drivers/pci/controller/pcie-mediatek-gen3.c
index f2bf4afbdc2f..870d3b3db11d 100644
--- a/drivers/pci/controller/pcie-mediatek-gen3.c
+++ b/drivers/pci/controller/pcie-mediatek-gen3.c
@@ -403,6 +403,54 @@ static void mtk_pcie_enable_msi(struct mtk_gen3_pcie *pcie)
 	writel_relaxed(val, pcie->base + PCIE_INT_ENABLE_REG);
 }
 
+static int mtk_pcie_device_power_up(struct mtk_gen3_pcie *pcie)
+{
+	int err;
+	u32 val;
+
+	/*
+	 * Airoha EN7581 has a hw bug asserting/releasing PCIE_PE_RSTB signal
+	 * causing occasional PCIe link down. In order to overcome the issue,
+	 * PCIE_RSTB signals are not asserted/released at this stage and the
+	 * PCIe block is reset using en7523_reset_assert() and
+	 * en7581_pci_enable().
+	 */
+	if (!(pcie->soc->flags & SKIP_PCIE_RSTB)) {
+		/* Assert all reset signals */
+		val = readl_relaxed(pcie->base + PCIE_RST_CTRL_REG);
+		val |= PCIE_MAC_RSTB | PCIE_PHY_RSTB | PCIE_BRG_RSTB |
+		       PCIE_PE_RSTB;
+		writel_relaxed(val, pcie->base + PCIE_RST_CTRL_REG);
+
+		/*
+		 * Described in PCIe CEM specification revision 6.0.
+		 *
+		 * The deassertion of PERST# should be delayed 100ms (TPVPERL)
+		 * for the power and clock to become stable.
+		 */
+		msleep(PCIE_T_PVPERL_MS);
+
+		/* De-assert reset signals */
+		val &= ~(PCIE_MAC_RSTB | PCIE_PHY_RSTB | PCIE_BRG_RSTB |
+			 PCIE_PE_RSTB);
+		writel_relaxed(val, pcie->base + PCIE_RST_CTRL_REG);
+	}
+
+	return 0;
+}
+
+static void mtk_pcie_device_power_down(struct mtk_gen3_pcie *pcie)
+{
+	u32 val;
+
+	if (!(pcie->soc->flags & SKIP_PCIE_RSTB)) {
+		/* Assert the PERST# pin */
+		val = readl_relaxed(pcie->base + PCIE_RST_CTRL_REG);
+		val |= PCIE_PE_RSTB;
+		writel_relaxed(val, pcie->base + PCIE_RST_CTRL_REG);
+	}
+}
+
 static int mtk_pcie_startup_port(struct mtk_gen3_pcie *pcie)
 {
 	struct resource_entry *entry;
@@ -464,33 +512,9 @@ static int mtk_pcie_startup_port(struct mtk_gen3_pcie *pcie)
 	val |= PCIE_DISABLE_DVFSRC_VLT_REQ;
 	writel_relaxed(val, pcie->base + PCIE_MISC_CTRL_REG);
 
-	/*
-	 * Airoha EN7581 has a hw bug asserting/releasing PCIE_PE_RSTB signal
-	 * causing occasional PCIe link down. In order to overcome the issue,
-	 * PCIE_RSTB signals are not asserted/released at this stage and the
-	 * PCIe block is reset using en7523_reset_assert() and
-	 * en7581_pci_enable().
-	 */
-	if (!(pcie->soc->flags & SKIP_PCIE_RSTB)) {
-		/* Assert all reset signals */
-		val = readl_relaxed(pcie->base + PCIE_RST_CTRL_REG);
-		val |= PCIE_MAC_RSTB | PCIE_PHY_RSTB | PCIE_BRG_RSTB |
-		       PCIE_PE_RSTB;
-		writel_relaxed(val, pcie->base + PCIE_RST_CTRL_REG);
-
-		/*
-		 * Described in PCIe CEM specification revision 6.0.
-		 *
-		 * The deassertion of PERST# should be delayed 100ms (TPVPERL)
-		 * for the power and clock to become stable.
-		 */
-		msleep(PCIE_T_PVPERL_MS);
-
-		/* De-assert reset signals */
-		val &= ~(PCIE_MAC_RSTB | PCIE_PHY_RSTB | PCIE_BRG_RSTB |
-			 PCIE_PE_RSTB);
-		writel_relaxed(val, pcie->base + PCIE_RST_CTRL_REG);
-	}
+	err = mtk_pcie_device_power_up(pcie);
+	if (err)
+		return err;
 
 	/* Check if the link is up or not */
 	err = readl_poll_timeout(pcie->base + PCIE_LINK_STATUS_REG, val,
@@ -1269,7 +1293,6 @@ static int mtk_pcie_suspend_noirq(struct device *dev)
 {
 	struct mtk_gen3_pcie *pcie = dev_get_drvdata(dev);
 	int err;
-	u32 val;
 
 	/* Trigger link to L2 state */
 	err = mtk_pcie_turn_off_link(pcie);
@@ -1278,13 +1301,7 @@ static int mtk_pcie_suspend_noirq(struct device *dev)
 		return err;
 	}
 
-	if (!(pcie->soc->flags & SKIP_PCIE_RSTB)) {
-		/* Assert the PERST# pin */
-		val = readl_relaxed(pcie->base + PCIE_RST_CTRL_REG);
-		val |= PCIE_PE_RSTB;
-		writel_relaxed(val, pcie->base + PCIE_RST_CTRL_REG);
-	}
-
+	mtk_pcie_device_power_down(pcie);
 	dev_dbg(pcie->dev, "entered L2 states successfully");
 
 	mtk_pcie_irq_save(pcie);
-- 
2.53.0.414.gf7e9f6c205-goog


