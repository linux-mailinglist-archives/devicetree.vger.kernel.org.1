Return-Path: <devicetree+bounces-139891-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1210DA1774B
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 07:24:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4703016B066
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 06:23:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58FDC1AAE0B;
	Tue, 21 Jan 2025 06:23:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="hYurvvgz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m32118.qiye.163.com (mail-m32118.qiye.163.com [220.197.32.118])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6601F19E999;
	Tue, 21 Jan 2025 06:23:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.118
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737440635; cv=none; b=RD+a0xSI6FJbL6x51KtxEosNcwHPkrrB6/ZA4TpByMl4BPkxvkcXvDRBDuwAWonYuByJJCgj1eo6E7FPRbdFBaW2cqfnJEO+G6aL4T9HDcu+ibkgz87nYM7MifaXmRJeLHuj9sPNyE1CwLNkQF5fE8sap+8ksAwI+SeATRn2JCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737440635; c=relaxed/simple;
	bh=uYVX31WQvKbJf5Vv9FAqP25Z+20t/h4HS7NDrI4cczE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=rldiraHthODluM77BMlk8CXc+NtFyCjjqhEn+gVnVT4veyy2F59MHAh83XrhKvkMWFK7va42op/eBDvT8vsWiavFXoCQ+TZDnWSm+rsavHD8AWSgEezR2jtC4bdzv3q3pG7RtTTR2TiEoWYGxIzWe8bRmtR9C6RYq8F5EFSmMno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=hYurvvgz; arc=none smtp.client-ip=220.197.32.118
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 9456a2f1;
	Tue, 21 Jan 2025 14:23:41 +0800 (GMT+08:00)
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
Subject: [PATCH v6 1/6] phy: phy-rockchip-samsung-hdptx: Swap the definitions of LCPLL_REF and ROPLL_REF
Date: Tue, 21 Jan 2025 14:23:19 +0800
Message-Id: <20250121062324.309592-2-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250121062324.309592-1-damon.ding@rock-chips.com>
References: <20250121062324.309592-1-damon.ding@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGh9OQ1YeTEkYSk4dSkhOGB9WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a948787f40603a3kunm9456a2f1
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NQg6KAw6HjIUTzQBGREDDwkz
	SD0wFAtVSlVKTEhMT09LTUlISEtIVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFCQkw3Bg++
DKIM-Signature:a=rsa-sha256;
	b=hYurvvgzS4CbFQquNWuUFbScZmrKeIM1uhOxG73RGBUFBFZSVYTuWqCrUpYmNt91F+aR4wYZ3xFoWq3NLnmGejUe6Y86J1BAQ9a7X4fEYKi/nR+kIYX0yt1Zru4zSaxzihjGX/k8KmjpBSuODKJ5D2MYKBde1W2UqHUVbWjF1Nc=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=nhjzsZ5DuSkGPzq8vUSDqW2fpa7f+NUoENjEMTPrzW0=;
	h=date:mime-version:subject:message-id:from;

According to the datasheet, setting the dig_clk_sel bit of CMN_REG(0097)
to 1'b1 selects LCPLL as the reference clock, while setting it to 1'b0
selects the ROPLL.

Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
index 0965b9d4f9cf..efbea5b67c89 100644
--- a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
+++ b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
@@ -94,8 +94,8 @@
 #define LCPLL_ALONE_MODE		BIT(1)
 /* CMN_REG(0097) */
 #define DIG_CLK_SEL			BIT(1)
-#define ROPLL_REF			BIT(1)
-#define LCPLL_REF			0
+#define LCPLL_REF			BIT(1)
+#define ROPLL_REF			0
 /* CMN_REG(0099) */
 #define CMN_ROPLL_ALONE_MODE		BIT(2)
 #define ROPLL_ALONE_MODE		BIT(2)
-- 
2.34.1


