Return-Path: <devicetree+bounces-221515-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E0FEBA07AE
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 17:54:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 984733856E7
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 15:54:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 391A0305E20;
	Thu, 25 Sep 2025 15:53:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AlLREyA6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DD0D302173
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 15:53:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758815631; cv=none; b=gYFy8g+dZ9Y9hUsOI0zGg0+1qEGNUcVMk0IcPl8DbXnMB/kHil6bGNZAxsLFZJsW9cmfjWGq4eW3/WaPVPjZ51lAEBEtijugr1Zsh3438iePtE0DrP8wpo7SJNPTb/BYwrJtF13813muVK93+lTfVpoSvuIxbmqKCw52vwB5VvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758815631; c=relaxed/simple;
	bh=k8FBTMcMFAT5PJO20vvBczyLicAiWWsYv/bKjv6KBbY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=sWAdqAX16HJ4nGq2E146vbWPlA3JLQLiV6gs6h2M10OL+TRFW9P0HrAflu//TjGp0mgTjlw7RTueJrPyoVsjKE+iYFSngGve8oJsKF4pLGtIZgVYzwHu1Ln8agDEXTJVsnM2B7lp5wmYZGIZZR5qtjAI7OhmvhJF8r+igiPs/iA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AlLREyA6; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-45f2acb5f42so6170655e9.1
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 08:53:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758815626; x=1759420426; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Lc09GahdLh1WLCD12oxRoEIfCyVdAcZXe+NVJ4ss8iE=;
        b=AlLREyA6+35gMEfhQsXiqFKobsbOiAYhyf4u9UmTmygnQH+AbtyPrZ3Oe1N3VSrdhc
         1rJDLtAsD8U6sBiAsXFsMWyZA8391JCXyyA2/vhNNbrkFDmN/CxT6NIfN8IT5RBXiDTx
         jsuRMmsePxkJQ+CpQs9vKn8jHwXOiLl1ITxoHoOL9DWDDrJYmjq7InaKmpOF+NcBBD+/
         qozusjOaBCsXkYTkQHLiv6Yo8Fv1RnZmvZieyaeum8043XOMPFG6hMUmc4cCcSWYvsDY
         FGWEr2Vfx4Dg0QnjOXfCtIkrtCq7RXp0dVa3XpYNlRJaqy0UkGjpXmPqqPQ4wqHC69Kp
         3w+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758815626; x=1759420426;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Lc09GahdLh1WLCD12oxRoEIfCyVdAcZXe+NVJ4ss8iE=;
        b=mkVOsePl6TSGIDsrzVzoqZoYtQZSlqpQ25YCoZ/ekNBtLoA3M6Fmk0ppTQTHhNAcV/
         K7tDz3dEsg6UC8qdD3bVPgX19XcXNSd6s86UvoldPPI3urert+p+sDpJksANy3hgc30c
         QlFiiAGbePm6xlpjr9fJ7Xt+TuJHdBNTfnz0W6YxLrYRxlJX3p/2eKhewBJtW3XHF/AA
         UzWlotniMFmkCfoJGHiQvuvVDYeLlEydBqRDIRBnEggg+BXwm7xzEP7AuzjE3+E8TT8O
         WaGrmW7k0PzZZYfHNozC7JX54WKnnXJ7UKFLc2PxGMwAvuPSYesOV4T6Lwj134fu8tcO
         l2RQ==
X-Forwarded-Encrypted: i=1; AJvYcCXh+6lS8bF6vXAXsQ/GBxdDN7YA7u/IcjzmlfUROU8p9Y1EcriykTM36Muult740fyPkVHMP4zcnpbC@vger.kernel.org
X-Gm-Message-State: AOJu0YyfoqPTH2xB2Wvi4eN8OdZXskaCrKVQ3HjzPRD/3O7mDMpyaVVh
	xkBqEG7J+rQoQMS3phRIj+yYqj8465yVz8xvKqsazB8C5UqTGKamzYzF
X-Gm-Gg: ASbGncseaINeDHDRd61tIGFUIs/WndxTvjqYAM/bGQBWaazhRWG9jGrAaO463uxMuZ5
	/eDTBmH5ch7LpMPjy4E43rPKziT5pks7tuqcw7m2VDfIUI6mcb2waUf8dAZv8nHNZf4/NG0OBAJ
	wI044mVK9Zc0NnbgAdmg1ZFzUFjM+8leWyd2Bsn+88ehqcDeRhlYhOGK6YxtNbh8+AFsGyhDvkb
	qWWR5RqGrwAXqspGGFAuAt1zLw2pqyC33rc2drvWEH81++PRjIa9eAtPo07GHumAWg35nRybv0z
	x2skVlKysrq/hAYRwJNdqICzI6sKEhjmSLnkXI+oIgBpJ4Wi4Bv4/vmVLmdPZyE4impTu8Q0+rW
	3UORDVUeAtQPa+JaURgH1rDgXxz7rMbrepuIszEPPR+57rPDMrGAMHF7b9ldgJ0hzUEqLRZU=
X-Google-Smtp-Source: AGHT+IG2qaZ40+rYML/8FUKAPUFnHb8/tAbzRd0teawkTtDKY5USA03HWVuV/ealVHMZ83GuucUnTQ==
X-Received: by 2002:a05:600c:3b93:b0:45f:2d7b:7953 with SMTP id 5b1f17b1804b1-46e33ca926fmr36448905e9.18.1758815626035;
        Thu, 25 Sep 2025 08:53:46 -0700 (PDT)
Received: from Ansuel-XPS24 (host-95-249-236-54.retail.telecomitalia.it. [95.249.236.54])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-46e2a9ac5basm98449995e9.7.2025.09.25.08.53.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 08:53:45 -0700 (PDT)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Ryder Lee <ryder.lee@mediatek.com>,
	Jianjun Wang <jianjun.wang@mediatek.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	linux-pci@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	upstream@airoha.com
Cc: Christian Marangi <ansuelsmth@gmail.com>
Subject: [PATCH v3 2/2] PCI: mediatek-gen3: add support for Airoha AN7583 SoC
Date: Thu, 25 Sep 2025 17:53:09 +0200
Message-ID: <20250925155330.6779-2-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250925155330.6779-1-ansuelsmth@gmail.com>
References: <20250925155330.6779-1-ansuelsmth@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add support for Airoha AN7583 SoC that implement the same logic of
Airoha EN7581 with the only difference that only 1 PCIe line is
supported (for GEN3).

A dedicated compatible is defined with the pdata struct with the 1 reset
line.

Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
Changes v3:
- Add review tag
Changes v2:
- Fix alphabetical order

 drivers/pci/controller/pcie-mediatek-gen3.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/pci/controller/pcie-mediatek-gen3.c b/drivers/pci/controller/pcie-mediatek-gen3.c
index 75ddb8bee168..6e68ed75b564 100644
--- a/drivers/pci/controller/pcie-mediatek-gen3.c
+++ b/drivers/pci/controller/pcie-mediatek-gen3.c
@@ -1360,7 +1360,17 @@ static const struct mtk_gen3_pcie_pdata mtk_pcie_soc_en7581 = {
 	.flags = SKIP_PCIE_RSTB,
 };
 
+static const struct mtk_gen3_pcie_pdata mtk_pcie_soc_an7583 = {
+	.power_up = mtk_pcie_en7581_power_up,
+	.phy_resets = {
+		.id[0] = "phy-lane0",
+		.num_resets = 1,
+	},
+	.flags = SKIP_PCIE_RSTB,
+};
+
 static const struct of_device_id mtk_pcie_of_match[] = {
+	{ .compatible = "airoha,an7583-pcie-gen3", .data = &mtk_pcie_soc_an7583 },
 	{ .compatible = "airoha,en7581-pcie", .data = &mtk_pcie_soc_en7581 },
 	{ .compatible = "mediatek,mt8192-pcie", .data = &mtk_pcie_soc_mt8192 },
 	{ .compatible = "mediatek,mt8196-pcie", .data = &mtk_pcie_soc_mt8196 },
-- 
2.51.0


