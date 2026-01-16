Return-Path: <devicetree+bounces-255835-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AA03DD2A67A
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 03:55:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8D46F308885A
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 02:53:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 603FA34165B;
	Fri, 16 Jan 2026 02:53:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from TWMBX01.aspeed.com (mail.aspeedtech.com [211.20.114.72])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5F5E341060;
	Fri, 16 Jan 2026 02:53:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=211.20.114.72
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768532015; cv=none; b=K7z4cgX56Tn7sHYTI/JwuQoQGEBO0hkiWZbRsPRiCqrHNKs316iXarz8mUncia4sn6dIDI/oN6IuKgn9owi/ymIxvKUMmyes+OCzmaFLUoRH0AN9Ce0P6O8da2T8mustSEJFLzkAoa+8mMnwoIhGb37VtU6c1DgqqQUc44bgWUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768532015; c=relaxed/simple;
	bh=QIuVZToJwsol7VdY+5pSQWFYnqd8me80J57qWsI+AEA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=B1f+KPtKtR2/fOQXxMGyAOGX/HKgDbYL5rKPh4K5ivq80nagOeckkoH/1ipjnRuTzsOUbERJnXyNv5bLIfXdehHTk945+VVDoLwTrzjEyQCSSV22a1rnQ/pqdgLZSuYhHMtVLbBtlOXGwEN1Oj+V9ekecRVUFFVB8xRuB4t0FTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=aspeedtech.com; spf=pass smtp.mailfrom=aspeedtech.com; arc=none smtp.client-ip=211.20.114.72
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=aspeedtech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=aspeedtech.com
Received: from TWMBX01.aspeed.com (192.168.0.62) by TWMBX01.aspeed.com
 (192.168.0.62) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1748.10; Fri, 16 Jan
 2026 10:53:26 +0800
Received: from [127.0.1.1] (192.168.10.13) by TWMBX01.aspeed.com
 (192.168.0.62) with Microsoft SMTP Server id 15.2.1748.10 via Frontend
 Transport; Fri, 16 Jan 2026 10:53:26 +0800
From: Ryan Chen <ryan_chen@aspeedtech.com>
Date: Fri, 16 Jan 2026 10:53:26 +0800
Subject: [PATCH v2 3/3] MAINTAINERS: Add ASPEED USB3 PHY driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20260116-upstream_usb3phy-v2-3-0b0c9f3eb6f4@aspeedtech.com>
References: <20260116-upstream_usb3phy-v2-0-0b0c9f3eb6f4@aspeedtech.com>
In-Reply-To: <20260116-upstream_usb3phy-v2-0-0b0c9f3eb6f4@aspeedtech.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, "Andrew
 Jeffery" <andrew@codeconstruct.com.au>, Philipp Zabel
	<p.zabel@pengutronix.de>
CC: <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-aspeed@lists.ozlabs.org>,
	<linux-kernel@vger.kernel.org>, Ryan Chen <ryan_chen@aspeedtech.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768532005; l=861;
 i=ryan_chen@aspeedtech.com; s=20251126; h=from:subject:message-id;
 bh=QIuVZToJwsol7VdY+5pSQWFYnqd8me80J57qWsI+AEA=;
 b=7vGbc2YKRv3P5Cdpi4dbHki6edSiimkSoqQt2ayS1DAMWLyhUFcYAqYMzBIYw9rcYaoBp6aR6
 sYljnV8q6z+BhPgiiKcj8ASywERueoioB1bcDaI/5/ydLWqGmwOUEQE
X-Developer-Key: i=ryan_chen@aspeedtech.com; a=ed25519;
 pk=Xe73xY6tcnkuRjjbVAB/oU30KdB3FvG4nuJuILj7ZVc=

Add maintainer entry for ASPEED USB3 PHY driver.

Signed-off-by: Ryan Chen <ryan_chen@aspeedtech.com>
---
 MAINTAINERS | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 5b11839cba9d..ad1d12f346f2 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -3894,6 +3894,14 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/usb/aspeed,ast2600-udc.yaml
 F:	drivers/usb/gadget/udc/aspeed_udc.c
 
+ASPEED USB3 PHY DRIVER
+M:	Ryan Chen <ryan_chen@aspeedtech.com>
+L:	linux-aspeed@lists.ozlabs.org (moderated for non-subscribers)
+L:	linux-phy@lists.infradead.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/phy/aspeed,ast2700-usb3-phy.yaml
+F:	drivers/phy/aspeed/phy-aspeed-usb3.c
+
 ASPEED VIDEO ENGINE DRIVER
 M:	Eddie James <eajames@linux.ibm.com>
 L:	linux-media@vger.kernel.org

-- 
2.34.1


