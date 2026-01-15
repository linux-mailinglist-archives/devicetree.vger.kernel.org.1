Return-Path: <devicetree+bounces-255338-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 17226D2250C
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 04:35:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 881F53003846
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 03:35:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B21382BE05F;
	Thu, 15 Jan 2026 03:35:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from TWMBX01.aspeed.com (mail.aspeedtech.com [211.20.114.72])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D0722BD59C;
	Thu, 15 Jan 2026 03:35:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=211.20.114.72
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768448148; cv=none; b=KhUAaHYBaqOob1X3B0lpJ8Mu3aPxCRh1YIztukPfAqomMV6hYp6u9X3SVpNkx7CJYrjOWs8aoztgwfLZAOE8pUGFWkgQf46CTJL9YkzOUP9NVCc1IKtMKD3ER1xTf8qMjRpuPaI7ccTIsRs/XZcUj0ZaktchjBqad/DlU31Swj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768448148; c=relaxed/simple;
	bh=ukzk8V/+iAWF9vSX9HcoXRh6kD8Xte6R6G0Qmwo0orU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=WOcIdZgrOYLhYl8Vo1iuOsxY5Vnkmm6hdGj8ri7qaIoaytKcRVmfz+vLtfEJ/Pj+vRS6xBskPxsYeXyzULct5KIS+557O/8J0L/F2el3Cb+QrxcWG6Vcf/pbptbFw0nvAr3Pk8H91YQacNzpGoW0eMwz3oUi9OnUudyfh5Yni1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=aspeedtech.com; spf=pass smtp.mailfrom=aspeedtech.com; arc=none smtp.client-ip=211.20.114.72
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=aspeedtech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=aspeedtech.com
Received: from TWMBX01.aspeed.com (192.168.0.62) by TWMBX01.aspeed.com
 (192.168.0.62) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1748.10; Thu, 15 Jan
 2026 11:35:29 +0800
Received: from [127.0.1.1] (192.168.10.13) by TWMBX01.aspeed.com
 (192.168.0.62) with Microsoft SMTP Server id 15.2.1748.10 via Frontend
 Transport; Thu, 15 Jan 2026 11:35:29 +0800
From: Jacky Chou <jacky_chou@aspeedtech.com>
Date: Thu, 15 Jan 2026 11:35:31 +0800
Subject: [PATCH v9 3/3] MAINTAINERS: Add ASPEED PCIe PHY driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20260115-upstream_pcie_rc-v9-3-d6c82a1556a7@aspeedtech.com>
References: <20260115-upstream_pcie_rc-v9-0-d6c82a1556a7@aspeedtech.com>
In-Reply-To: <20260115-upstream_pcie_rc-v9-0-d6c82a1556a7@aspeedtech.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, "Andrew
 Jeffery" <andrew@codeconstruct.com.au>
CC: <linux-aspeed@lists.ozlabs.org>, <linux-phy@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, Jacky Chou <jacky_chou@aspeedtech.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768448129; l=878;
 i=jacky_chou@aspeedtech.com; s=20251031; h=from:subject:message-id;
 bh=ukzk8V/+iAWF9vSX9HcoXRh6kD8Xte6R6G0Qmwo0orU=;
 b=Gd49zuaoYFSMlRUbrx/0CcYL0v85DMGnAT15UunB5qirAWWKqhtQBGZ0mNuX9C1azisZvb01Y
 Dmr5JiU/CshCdJ35bT2bREho6WwUWC6sG1gkYxiiAXHjTtHPelXSBg/
X-Developer-Key: i=jacky_chou@aspeedtech.com; a=ed25519;
 pk=8XBx7KFM1drEsfCXTH9QC2lbMlGU4XwJTA6Jt9Mabdo=

Add maintainer entry for ASPEED PCIe PHY driver.

Signed-off-by: Jacky Chou <jacky_chou@aspeedtech.com>
---
 MAINTAINERS | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index cf755238c429..a1979c574759 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -3844,6 +3844,14 @@ S:	Maintained
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


