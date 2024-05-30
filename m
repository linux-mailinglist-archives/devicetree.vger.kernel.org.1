Return-Path: <devicetree+bounces-71016-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 799AA8D565D
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 01:39:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1FE761F249D6
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2024 23:39:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98E31183997;
	Thu, 30 May 2024 23:39:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42AC918628A
	for <devicetree@vger.kernel.org>; Thu, 30 May 2024 23:39:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717112378; cv=none; b=FwDsSdJnjkkJcedeInZu45+ki/4cNG8wC4xqB8XsslFNCOTw50o22ZSUibSrzwLH2MgihSSrSpXCCwEGDfe0MgayDo4olIFRrpP7J+P9A61P7CFrQGQ6MlDMRLVfiXgWBZZ5KpgOTT83fq8byaBGHfkiXOpXKQksTAnRNaAKOuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717112378; c=relaxed/simple;
	bh=gIBAM0FleeIbpeXcPZdVvcrIf48B/fCt2NntCcnaUTQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=PSO+/8dwoFVwOna2k60EAdCcJ2IdSiSjjAaYqZLsA0DwRpfyCJ+fTSbAHWGAvQoE0yYc21ppl5xkklB3wYX20pnyiRyHNi9p/Lbl2B40tvkAVG7lD7wiG/GPNAl27xgGujTsme2M8v5ZfFzhsYrx9ksYBGXA3+D+PtsGwe4ymAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F185C168F;
	Thu, 30 May 2024 16:40:00 -0700 (PDT)
Received: from localhost.localdomain (usa-sjc-mx-foss1.foss.arm.com [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A09FE3F792;
	Thu, 30 May 2024 16:39:34 -0700 (PDT)
From: Andre Przywara <andre.przywara@arm.com>
To: Joerg Roedel <joro@8bytes.org>,
	Will Deacon <will@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Rob Herring <robh@kernel.org>
Cc: Chris Morgan <macromorgan@hotmail.com>,
	Ryan Walklin <ryan@testtoast.com>,
	iommu@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-sunxi@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 4/5] iommu: sun50i: Add H616 compatible string
Date: Fri, 31 May 2024 00:37:59 +0100
Message-Id: <20240530233800.27705-5-andre.przywara@arm.com>
X-Mailer: git-send-email 2.35.8
In-Reply-To: <20240530233800.27705-1-andre.przywara@arm.com>
References: <20240530233800.27705-1-andre.przywara@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The IOMMU IP in the Allwinner H616 SoC is *almost* compatible to the H6,
but uses a different reset value for the bypass register, and adds some
more registers.

While a driver *can* be written to support both variants (which we in
fact do), the hardware itself is not fully compatible, so we require a
separate compatible string.

Add the new compatible string to the list, but without changing the
behaviour, since the driver already supports both variants.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 drivers/iommu/sun50i-iommu.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/iommu/sun50i-iommu.c b/drivers/iommu/sun50i-iommu.c
index c3244db5ac02f..478a4e8e94a89 100644
--- a/drivers/iommu/sun50i-iommu.c
+++ b/drivers/iommu/sun50i-iommu.c
@@ -1059,6 +1059,7 @@ static int sun50i_iommu_probe(struct platform_device *pdev)
 
 static const struct of_device_id sun50i_iommu_dt[] = {
 	{ .compatible = "allwinner,sun50i-h6-iommu", },
+	{ .compatible = "allwinner,sun50i-h616-iommu", },
 	{ /* sentinel */ },
 };
 MODULE_DEVICE_TABLE(of, sun50i_iommu_dt);
-- 
2.35.8


