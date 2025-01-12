Return-Path: <devicetree+bounces-137739-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 56853A0A806
	for <lists+devicetree@lfdr.de>; Sun, 12 Jan 2025 10:43:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 32D8D3A7600
	for <lists+devicetree@lfdr.de>; Sun, 12 Jan 2025 09:43:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3568D1957FF;
	Sun, 12 Jan 2025 09:43:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="JIW7aYZu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m118218.qiye.163.com (mail-m118218.qiye.163.com [115.236.118.218])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4EDF3E499;
	Sun, 12 Jan 2025 09:43:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=115.236.118.218
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736674999; cv=none; b=iRaXNUvYPCwsN0xJM9knYkHXGrRTsxkHuyX5KORiqnXE33tveie7Z+uzSZtK6981rXFF2mHQo+ckxcHntMEyPcAq2MSA++vcMC+Cl6YdV//+pVxc+5jdW7Ke10ZPcEedsqw1oxATAO9gO193mrTORzKDiSnQdWAkXmBtU1NlSMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736674999; c=relaxed/simple;
	bh=xzMYKRIrmJrGhaWjfxw3Y/3PpqrQP69M16M/10uTILM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=D/bkZUSRz0hVRZH/aYUKsAMA4qOPDPZzI3Qf3c+/dnuCYZ9Lfdnhl7N93epQayQ2Ke8Jpnidy8hUviTH25cbifgib+nqFjTbobtYVL7yUj+A+Zn8qol5VzrZIaXPT67X/G2DLeNihj0la5e54BOdHUeTrIfiuSDTf18QK+3WJrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=JIW7aYZu; arc=none smtp.client-ip=115.236.118.218
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 870092a3;
	Sun, 12 Jan 2025 17:07:40 +0800 (GMT+08:00)
From: Damon Ding <damon.ding@rock-chips.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	rfoss@kernel.org,
	vkoul@kernel.org,
	sebastian.reichel@collabora.com,
	cristian.ciocaltea@collabora.com,
	l.stach@pengutronix.de,
	dmitry.baryshkov@linaro.org,
	andy.yan@rock-chips.com,
	hjc@rock-chips.com,
	algea.cao@rock-chips.com,
	kever.yang@rock-chips.com,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Damon Ding <damon.ding@rock-chips.com>
Subject: [PATCH v1 2/6] phy: phy-rockchip-samsung-hdptx: Supplement some register names with their full version
Date: Sun, 12 Jan 2025 17:07:10 +0800
Message-Id: <20250112090714.1564158-3-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250112090714.1564158-1-damon.ding@rock-chips.com>
References: <20250112090714.1564158-1-damon.ding@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ0xMGFYaSkhIGB9CSh1DSxhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a9459c4d94f03a3kunm870092a3
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NQg6Hww6KjILAwNKPRgaIRIi
	HTBPCyJVSlVKTEhNTUxJQ01JSk9CVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFKSU5KNwY+
DKIM-Signature:a=rsa-sha256;
	b=JIW7aYZubryk6dp8N32zhxq+hs5ZBs/CgWIMBMayaY3tKkJpYGG97m9hDpctIGQsIunTnHsZabkFYEM0nmDqQRgnPhhy3jdkqzacS8c3ya576oMsg4ld3rzv1tEygtZUsY5oRr/6WSNu2jUZ8fLLnoRiLsu84khDxnSmob5lZHk=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=tywO7xGB2da8iEsHnvmYHdfB6wpe6ItXRYSerKfpSzc=;
	h=date:mime-version:subject:message-id:from;

Complete the register names of CMN_REG(0081) and CMN_REG(0087) to their
full version, and it can help to better match the datasheet.

Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
index efbea5b67c89..423c61b7469f 100644
--- a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
+++ b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
@@ -82,14 +82,14 @@
 #define ROPLL_SSC_EN			BIT(0)
 /* CMN_REG(0081) */
 #define OVRD_PLL_CD_CLK_EN		BIT(8)
-#define PLL_CD_HSCLK_EAST_EN		BIT(0)
+#define ANA_PLL_CD_HSCLK_EAST_EN	BIT(0)
 /* CMN_REG(0086) */
 #define PLL_PCG_POSTDIV_SEL_MASK	GENMASK(7, 4)
 #define PLL_PCG_CLK_SEL_MASK		GENMASK(3, 1)
 #define PLL_PCG_CLK_EN			BIT(0)
 /* CMN_REG(0087) */
-#define PLL_FRL_MODE_EN			BIT(3)
-#define PLL_TX_HS_CLK_EN		BIT(2)
+#define ANA_PLL_FRL_MODE_EN		BIT(3)
+#define ANA_PLL_TX_HS_CLK_EN		BIT(2)
 /* CMN_REG(0089) */
 #define LCPLL_ALONE_MODE		BIT(1)
 /* CMN_REG(0097) */
-- 
2.34.1


