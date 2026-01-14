Return-Path: <devicetree+bounces-254820-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 59378D1CC5E
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 08:13:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id BCD7A300B9FF
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 07:13:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5AA58376BC4;
	Wed, 14 Jan 2026 07:13:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from TWMBX01.aspeed.com (mail.aspeedtech.com [211.20.114.72])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A147036D4E1;
	Wed, 14 Jan 2026 07:13:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=211.20.114.72
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768374809; cv=none; b=ESKpgbzvlBBhdQ7SrplRkFAkT6Jyw80QSHUhiwKTBw954rrWuz14ODwEqWY2/5PvbV/ECsY47hVPR5+THkhUYh1Q95Br9VGMrFddJBaRv5kVo5wGW72O1hXbwaJsPVq53w37CqkSAd2GznXU1tNSqaAgYOgTuiOlApwANqDFsvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768374809; c=relaxed/simple;
	bh=9UWvYzBx32LAyAt3jySR0UVGJFylhu6VIM7tiOpCLDs=;
	h=From:Subject:Date:Message-ID:MIME-Version:Content-Type:To:CC; b=HmfbBGYRvDoORsJ17uaQjLq3jXenzIW4I++HUwfo/rJpG+m0DM2aaHzOrMX3nBFWzyagL95/I40yReQLh84tzOtVrTDBS++oM0XrPK+2qOfkLJynns4DVjy4sMCIQsQC6cWDqk0y4MJrWzirZrUNeub9a8m5b0XTYxT/ZhEuBa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=aspeedtech.com; spf=pass smtp.mailfrom=aspeedtech.com; arc=none smtp.client-ip=211.20.114.72
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=aspeedtech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=aspeedtech.com
Received: from TWMBX01.aspeed.com (192.168.0.62) by TWMBX01.aspeed.com
 (192.168.0.62) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1748.10; Wed, 14 Jan
 2026 15:13:11 +0800
Received: from [127.0.1.1] (192.168.10.13) by TWMBX01.aspeed.com
 (192.168.0.62) with Microsoft SMTP Server id 15.2.1748.10 via Frontend
 Transport; Wed, 14 Jan 2026 15:13:11 +0800
From: Ryan Chen <ryan_chen@aspeedtech.com>
Subject: [PATCH 0/3] Add AST2700 USB3.2 PHY driver
Date: Wed, 14 Jan 2026 15:13:09 +0800
Message-ID: <20260114-upstream_usb3phy-v1-0-2e59590be2d7@aspeedtech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAVCZ2kC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDQ0Mj3dKC4pKi1MTc+NLiJOOCjEpdc0NDszSLlLRUc3NLJaC2gqLUtMw
 KsJHRsbW1AKsxE7ViAAAA
X-Change-ID: 20260112-upstream_usb3phy-7116f8dfe779
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, "Andrew
 Jeffery" <andrew@codeconstruct.com.au>, Philipp Zabel
	<p.zabel@pengutronix.de>
CC: <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-aspeed@lists.ozlabs.org>,
	<linux-kernel@vger.kernel.org>, Ryan Chen <ryan_chen@aspeedtech.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768374791; l=943;
 i=ryan_chen@aspeedtech.com; s=20251126; h=from:subject:message-id;
 bh=9UWvYzBx32LAyAt3jySR0UVGJFylhu6VIM7tiOpCLDs=;
 b=eQ2rKFJ1FRU0O3R7mFvEWDDNBL6LnibYzov4c3GiIJLNE7Bc/CJEp4FDuHKPKffv2YzFhoect
 rZ8MuHvEhbvCTCZeNTNkTAzOawW6M2kA51RmNrG4X5VkSXsYt03yD0e
X-Developer-Key: i=ryan_chen@aspeedtech.com; a=ed25519;
 pk=Xe73xY6tcnkuRjjbVAB/oU30KdB3FvG4nuJuILj7ZVc=

Add AST2700 USB3.2 PHY support.
 - Supports Super Speed Plus Gen2x1 (10 Gbps), Super Speed (5 Gbps),
   High Speed (480 Mbps), Full Speed (12Mbps), and Low Speed (1.5 Mbps).

Signed-off-by: Ryan Chen <ryan_chen@aspeedtech.com>
---
Ryan Chen (3):
      dt-bindings: phy: aspeed: Document AST2700 USB3.0 PHY
      phy: add AST2700 usb3.2 phy driver
      MAINTAINERS: Add ASPEED USB3 PHY driver

 .../bindings/phy/aspeed,ast2700-usb3-phy.yaml      |  50 +++++
 MAINTAINERS                                        |   8 +
 drivers/phy/aspeed/Kconfig                         |  13 ++
 drivers/phy/aspeed/Makefile                        |   2 +
 drivers/phy/aspeed/phy-aspeed-usb3.c               | 236 +++++++++++++++++++++
 5 files changed, 309 insertions(+)
---
base-commit: 8f0b4cce4481fb22653697cced8d0d04027cb1e8
change-id: 20260112-upstream_usb3phy-7116f8dfe779

Best regards,
-- 
Ryan Chen <ryan_chen@aspeedtech.com>


