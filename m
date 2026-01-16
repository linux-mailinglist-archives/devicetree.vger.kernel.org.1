Return-Path: <devicetree+bounces-255832-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AFFB4D2A64A
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 03:54:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D2BAB301A73B
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 02:53:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7891B3396E0;
	Fri, 16 Jan 2026 02:53:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from TWMBX01.aspeed.com (mail.aspeedtech.com [211.20.114.72])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CABB3358CB;
	Fri, 16 Jan 2026 02:53:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=211.20.114.72
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768532009; cv=none; b=VU0+vv8V5EBkHdf7AmkCx6ZIIa5ZtJsOwKZTpW0hlpAxct00Jy0bCU9dtVOBloMGB/0rM4Rye0G0BFKUuS4bTkbqWpF7S9O9m/KohX2Ef377j/3OKXae1OklYf3zguAaxAH2AhksMUQwtY6prcZqoTfazsLmiI1o4jPQG9bG8XA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768532009; c=relaxed/simple;
	bh=skzeJJpNld7RftFrKl/uW1Nm9mq66q5prekuES1h6y0=;
	h=From:Subject:Date:Message-ID:MIME-Version:Content-Type:To:CC; b=RZ5T8JXYJsAwY9a7D6gGcQlMGVXmYyA8ACIb8AE4/fEYXtKnmfMIrH9gjqpX8oVVNpEOpJR2F8Qjc7suImdkUw9on7IXafTgfwxkhR6ev4A5kSud9KpGLEpRTsBWwBDxiCwhkZJKqfHcjcAa2hOKmSeQiEV9fMPYN4qVnnDRHek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=aspeedtech.com; spf=pass smtp.mailfrom=aspeedtech.com; arc=none smtp.client-ip=211.20.114.72
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=aspeedtech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=aspeedtech.com
Received: from TWMBX01.aspeed.com (192.168.0.62) by TWMBX01.aspeed.com
 (192.168.0.62) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1748.10; Fri, 16 Jan
 2026 10:53:26 +0800
Received: from [127.0.1.1] (192.168.10.13) by TWMBX01.aspeed.com
 (192.168.0.62) with Microsoft SMTP Server id 15.2.1748.10 via Frontend
 Transport; Fri, 16 Jan 2026 10:53:25 +0800
From: Ryan Chen <ryan_chen@aspeedtech.com>
Subject: [PATCH v2 0/3] Add AST2700 USB3.2 PHY driver
Date: Fri, 16 Jan 2026 10:53:23 +0800
Message-ID: <20260116-upstream_usb3phy-v2-0-0b0c9f3eb6f4@aspeedtech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIACOoaWkC/2WNwQ6CMBAFf4Xs2Zq2ChVO/ochBuhie4A2XWgkp
 P9uJfHkcSZ583YgDBYJmmKHgNGSdXMGeSpgMN38QmZ1ZpBcVlwIyVZPS8Bueq7UX7zZmBKiGm9
 6RKVqyDMfcLTvI/loMxtLiwvb8RDF1/5i1/9YFIwziWVd1rxHqdW9I4+oFxzMeXATtCmlD4Yzd
 Ea1AAAA
X-Change-ID: 20260112-upstream_usb3phy-7116f8dfe779
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, "Andrew
 Jeffery" <andrew@codeconstruct.com.au>, Philipp Zabel
	<p.zabel@pengutronix.de>
CC: <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-aspeed@lists.ozlabs.org>,
	<linux-kernel@vger.kernel.org>, Ryan Chen <ryan_chen@aspeedtech.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768532005; l=1184;
 i=ryan_chen@aspeedtech.com; s=20251126; h=from:subject:message-id;
 bh=skzeJJpNld7RftFrKl/uW1Nm9mq66q5prekuES1h6y0=;
 b=ZzNEGJC7S2ExCx1ucmhgJ/IaHbV9SFe7rxJCCD51oPhRXQLVkf+lUDG03WfXhwcplV/XRpzF6
 Y9nEy1qscYmAZjW4izS0qaAz9Dum99NrQm3UmW7MONiJiVKZKmpS40O
X-Developer-Key: i=ryan_chen@aspeedtech.com; a=ed25519;
 pk=Xe73xY6tcnkuRjjbVAB/oU30KdB3FvG4nuJuILj7ZVc=

Add AST2700 USB3.2 PHY support.
 - Supports Super Speed Plus Gen2x1 (10 Gbps), Super Speed (5 Gbps),
   High Speed (480 Mbps), Full Speed (12Mbps), and Low Speed (1.5 Mbps).

Signed-off-by: Ryan Chen <ryan_chen@aspeedtech.com>
---
Changes in v2:
- aspeed,ast2700-usb3-phy.yaml
 - Drop clocks, resets descripton.
- Kconfig
 - add COMPILE_TEST, remove default n
- Link to v1: https://lore.kernel.org/r/20260114-upstream_usb3phy-v1-0-2e59590be2d7@aspeedtech.com

---
Ryan Chen (3):
      dt-bindings: phy: aspeed: Document AST2700 USB3.0 PHY
      phy: add AST2700 usb3.2 phy driver
      MAINTAINERS: Add ASPEED USB3 PHY driver

 .../bindings/phy/aspeed,ast2700-usb3-phy.yaml      |  48 +++++
 MAINTAINERS                                        |   8 +
 drivers/phy/aspeed/Kconfig                         |  12 ++
 drivers/phy/aspeed/Makefile                        |   2 +
 drivers/phy/aspeed/phy-aspeed-usb3.c               | 236 +++++++++++++++++++++
 5 files changed, 306 insertions(+)
---
base-commit: 8f0b4cce4481fb22653697cced8d0d04027cb1e8
change-id: 20260112-upstream_usb3phy-7116f8dfe779

Best regards,
-- 
Ryan Chen <ryan_chen@aspeedtech.com>


