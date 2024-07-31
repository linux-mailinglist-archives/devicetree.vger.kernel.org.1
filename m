Return-Path: <devicetree+bounces-89994-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D5BDF943709
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2024 22:19:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 125AB1C21AB2
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2024 20:19:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58F141607B0;
	Wed, 31 Jul 2024 20:18:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=siemens.com header.i=jan.kiszka@siemens.com header.b="X7JYrtIw"
X-Original-To: devicetree@vger.kernel.org
Received: from mta-64-227.siemens.flowmailer.net (mta-64-227.siemens.flowmailer.net [185.136.64.227])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C92203D97F
	for <devicetree@vger.kernel.org>; Wed, 31 Jul 2024 20:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.136.64.227
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722457136; cv=none; b=tLsFjp2LBAaenHItGWw7OnEmvb+z33HsEGODt+Wk2XFbINVuSo7Zi40P6tNA6IqFLT2dNlz+YgLYEIm3zy6CFz7O8rSRtcpF8cqtFJLSihQrFCNrgKTSCmjPJH+hKxzlNtnPxhuzXo8z1S8oxqQ/Yg8G62NOMYC3rxogKeHdI6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722457136; c=relaxed/simple;
	bh=tlxTZVnUi9hPFINRQa6PI+smhSJrTpv3r+hKNzNHqTg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=mJyBP+1WEf54PAh4IV/bcZwTBYdRwlwC67ZPY0ql8GV3TUAgkNPx5E3lUO+oU9Ib0lDYp5ia6iq5UxMsMyLAFppVuZoeJbbHOhUeN+8a6Y2e/s5YoH492b6cmAg2v+kP5H8UgxDyrjPizSj2nzHvpz3AIqeXHRtU2VVfsLPEFtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com; dkim=pass (2048-bit key) header.d=siemens.com header.i=jan.kiszka@siemens.com header.b=X7JYrtIw; arc=none smtp.client-ip=185.136.64.227
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com
Received: by mta-64-227.siemens.flowmailer.net with ESMTPSA id 20240731201844cad439fb35bd08235e
        for <devicetree@vger.kernel.org>;
        Wed, 31 Jul 2024 22:18:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm1;
 d=siemens.com; i=jan.kiszka@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc:References:In-Reply-To;
 bh=vBctEd0EBAVuykEtLPkNt5gMseKAAGuW/tXEMcwX2Jw=;
 b=X7JYrtIwSjqeVXmd4PS5mDy7hnjlGD6SGINF2KrSX0a47Tr9YYK+1zABETg2h2yHTqRLjj
 IDRW1OQWqT0zSBR9nXEDCx7BTztqmCH0qPBudRDQq0NB80xP81UD4RJdpW6Y0W6Cz/r53oLS
 J8D3spRnA8HfiZwnYbk1xaPM2cDzTUmXKbWC4ucGeXro+wkBokugcupZ11OJ1aB/37lncKhw
 LW56z15e2cDLR0iWAvuZjdlm0KWcXq3svKupuVeVVHmoG+fGNmMddLSMnZJKBcWq9fZ3wJlU
 l2HVfrlXivoDlGwJKYLwekZ0WJSF7VqSrQg54Z9vTQie3iqLoi2jjJYQ==;
From: Jan Kiszka <jan.kiszka@siemens.com>
To: Minda Chen <minda.chen@starfivetech.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 3/3] phy: starfive: jh7110-usb: Fix link configuration to controller
Date: Wed, 31 Jul 2024 22:18:43 +0200
Message-ID: <cd7b125c8c797f9d63440944df7121f9db0a49ad.1722457123.git.jan.kiszka@siemens.com>
In-Reply-To: <cover.1722457123.git.jan.kiszka@siemens.com>
References: <cover.1722457123.git.jan.kiszka@siemens.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-294854:519-21489:flowmailer

From: Jan Kiszka <jan.kiszka@siemens.com>

In order to connect the USB 2.0 PHY to its controller, we also need to
set "u0_pdrstn_split_sw_usbpipe_plugen" [1]. Some downstream U-Boot
versions did that, but upstream firmware does not, and the kernel must
not rely on such behavior anyway. Failing to set this left the USB
gadget port invisible to connected hosts behind.

Link: https://doc-en.rvspace.org/JH7110/TRM/JH7110_TRM/sys_syscon.html#sys_syscon__section_b3l_fqs_wsb [1]
Fixes: 16d3a71c20cf ("phy: starfive: Add JH7110 USB 2.0 PHY driver")
Signed-off-by: Jan Kiszka <jan.kiszka@siemens.com>
---
 drivers/phy/starfive/phy-jh7110-usb.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/drivers/phy/starfive/phy-jh7110-usb.c b/drivers/phy/starfive/phy-jh7110-usb.c
index 633912f8a05d..67882bc4cebc 100644
--- a/drivers/phy/starfive/phy-jh7110-usb.c
+++ b/drivers/phy/starfive/phy-jh7110-usb.c
@@ -10,18 +10,24 @@
 #include <linux/clk.h>
 #include <linux/err.h>
 #include <linux/io.h>
+#include <linux/mfd/syscon.h>
 #include <linux/module.h>
 #include <linux/phy/phy.h>
 #include <linux/platform_device.h>
+#include <linux/regmap.h>
 #include <linux/usb/of.h>
 
 #define USB_125M_CLK_RATE		125000000
 #define USB_LS_KEEPALIVE_OFF		0x4
 #define USB_LS_KEEPALIVE_ENABLE		BIT(4)
 
+#define USB_PDRSTN_SPLIT		BIT(17)
+
 struct jh7110_usb2_phy {
 	struct phy *phy;
 	void __iomem *regs;
+	struct regmap *sys_syscon;
+	u32 sys_phy_connect;
 	struct clk *usb_125m_clk;
 	struct clk *app_125m;
 	enum phy_mode mode;
@@ -61,6 +67,10 @@ static int usb2_phy_set_mode(struct phy *_phy,
 		usb2_set_ls_keepalive(phy, (mode != PHY_MODE_USB_DEVICE));
 	}
 
+	/* Connect usb 2.0 phy mode */
+	regmap_update_bits(phy->sys_syscon, phy->sys_phy_connect,
+			   USB_PDRSTN_SPLIT, USB_PDRSTN_SPLIT);
+
 	return 0;
 }
 
@@ -101,6 +111,7 @@ static int jh7110_usb_phy_probe(struct platform_device *pdev)
 	struct jh7110_usb2_phy *phy;
 	struct device *dev = &pdev->dev;
 	struct phy_provider *phy_provider;
+	u32 args[1];
 
 	phy = devm_kzalloc(dev, sizeof(*phy), GFP_KERNEL);
 	if (!phy)
@@ -129,6 +140,15 @@ static int jh7110_usb_phy_probe(struct platform_device *pdev)
 	phy_set_drvdata(phy->phy, phy);
 	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
 
+	phy->sys_syscon =
+		syscon_regmap_lookup_by_phandle_args(pdev->dev.of_node,
+						     "starfive,sys-syscon",
+						     1, args);
+	if (IS_ERR(phy->sys_syscon))
+		return dev_err_probe(dev, PTR_ERR(phy->phy),
+			"Failed to get sys-syscon\n");
+	phy->sys_phy_connect = args[0];
+
 	return PTR_ERR_OR_ZERO(phy_provider);
 }
 
-- 
2.43.0


