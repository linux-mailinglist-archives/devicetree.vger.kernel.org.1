Return-Path: <devicetree+bounces-250390-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F1830CE8C16
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 06:58:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6FDB63016EE3
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 05:58:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5252D2F25F2;
	Tue, 30 Dec 2025 05:58:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from TWMBX01.aspeed.com (mail.aspeedtech.com [211.20.114.72])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A4642F28EB;
	Tue, 30 Dec 2025 05:58:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=211.20.114.72
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767074296; cv=none; b=gnG7ORTSnJ6K1y27kr6WKLGUGVVwNOh9XMcR9usoz3ynUd0Ositr2aMR+jDsg49dHA+HX0xoPdFBbxAkbVkkGKm/cF1dZ/ilDonudbEfH0iHI5tM0N4o4RBHdRqu0CmadROsreWfFUhJP8AQWWq1QLA+gKlQtR/N+cwv8mDF+L4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767074296; c=relaxed/simple;
	bh=7BsJ9XPv5rGKvSJQ3KjVN6WF7d6K48ePDihYrmnFgLA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=pkpLvtTFzbMCCJr7+556QESjUIDzjrr8GXEKLZbEPr/o72jKapAVG9E69KkkuNYHVyV5x9BWHDGVIfE8gKPpWEaEar5g1ZUf6typX98BA5rh0z9F3LkVcVMKWD52NIG7AAiQEA5vO0LBA+TeFTtIWUqEQODbbH/fLxQCbzdAbuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=aspeedtech.com; spf=pass smtp.mailfrom=aspeedtech.com; arc=none smtp.client-ip=211.20.114.72
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=aspeedtech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=aspeedtech.com
Received: from TWMBX01.aspeed.com (192.168.0.62) by TWMBX01.aspeed.com
 (192.168.0.62) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1748.10; Tue, 30 Dec
 2025 13:57:59 +0800
Received: from [127.0.1.1] (192.168.10.13) by TWMBX01.aspeed.com
 (192.168.0.62) with Microsoft SMTP Server id 15.2.1748.10 via Frontend
 Transport; Tue, 30 Dec 2025 13:57:59 +0800
From: Jacky Chou <jacky_chou@aspeedtech.com>
Date: Tue, 30 Dec 2025 13:58:01 +0800
Subject: [PATCH v8 4/4] MAINTAINERS: Add ASPEED PCIe PHY driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20251230-upstream_pcie_rc-v8-4-03598cdd80cd@aspeedtech.com>
References: <20251230-upstream_pcie_rc-v8-0-03598cdd80cd@aspeedtech.com>
In-Reply-To: <20251230-upstream_pcie_rc-v8-0-03598cdd80cd@aspeedtech.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, "Andrew
 Jeffery" <andrew@codeconstruct.com.au>
CC: <linux-aspeed@lists.ozlabs.org>, <linux-phy@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, Jacky Chou <jacky_chou@aspeedtech.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767074279; l=878;
 i=jacky_chou@aspeedtech.com; s=20251031; h=from:subject:message-id;
 bh=7BsJ9XPv5rGKvSJQ3KjVN6WF7d6K48ePDihYrmnFgLA=;
 b=zPygAO6pzHv1s2zc0IMazDFA4SlSDHTnUhapiyVpEktNPNa3UuJUPEpY1BhpwaVuxycM2bQMA
 Ro7Eo1n0hwXAXNSO2swWrfxQTYPhZYu5o4uD+k6/1a0oN78LrEJ5qd8
X-Developer-Key: i=jacky_chou@aspeedtech.com; a=ed25519;
 pk=8XBx7KFM1drEsfCXTH9QC2lbMlGU4XwJTA6Jt9Mabdo=

Add maintainer entry for ASPEED PCIe PHY driver.

Signed-off-by: Jacky Chou <jacky_chou@aspeedtech.com>
---
 MAINTAINERS | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 765ad2daa218..bcb94fe3faa6 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -3843,6 +3843,14 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/crypto/aspeed,*
 F:	drivers/crypto/aspeed/
 
+ASPEED PCIE PHY DRIVER
+M:	Jacky Chou <jacky_chou@aspeedtech.com>
+L:	linux-aspeed@lists.ozlabs.org (moderated for non-subscribers)
+L:	linux-phy@lists.infradead.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/phy/aspeed,ast2600-pcie-phy.yaml
+F:	drivers/phy/aspeed/pcie-phy-aspeed.c
+
 ASPEED PECI CONTROLLER
 M:	Iwona Winiarska <iwona.winiarska@intel.com>
 L:	linux-aspeed@lists.ozlabs.org (moderated for non-subscribers)

-- 
2.34.1


