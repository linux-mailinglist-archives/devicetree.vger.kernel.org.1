Return-Path: <devicetree+bounces-137736-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D011A0A7F5
	for <lists+devicetree@lfdr.de>; Sun, 12 Jan 2025 10:23:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 449DC188759C
	for <lists+devicetree@lfdr.de>; Sun, 12 Jan 2025 09:23:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD70D1922F8;
	Sun, 12 Jan 2025 09:23:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="B2jlZ1nF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m12757.qiye.163.com (mail-m12757.qiye.163.com [115.236.127.57])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54B71219FC;
	Sun, 12 Jan 2025 09:23:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=115.236.127.57
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736673788; cv=none; b=aVDk8nbyES4fcf7nY2eG/2aAcAPKDjLMvyk6qFgtda6LhyD+aq4En6QsUagNWZ/9ofOsmxTh5v7uk8kTH8L7Ldo1jmBgvlNTWOme0GIcyPoorCZrjwZ1T0IS+3X6zpVg6LfDTMUGA//ml7ZrQDUq5GQTJ62WgZQEIVHk+pU+aGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736673788; c=relaxed/simple;
	bh=uYVX31WQvKbJf5Vv9FAqP25Z+20t/h4HS7NDrI4cczE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ZVjCwpUl2UZIuqUHSdPyhgoNlAqWRGUrX988xyBQFOvndW/tZ5N0XAKtN+UIDnDezF/0qS2PYitCOK+uM22QAu+zPVXIM13oLLWyYMNMyGGx22mjSmp3qslgcLIaZFtXerWwXJ/UC5TvxhYE4K1voenVYn7WVOF1mun/5zsvrBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=B2jlZ1nF; arc=none smtp.client-ip=115.236.127.57
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 8700929b;
	Sun, 12 Jan 2025 17:07:37 +0800 (GMT+08:00)
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
Subject: [PATCH v1 1/6] phy: phy-rockchip-samsung-hdptx: Swap the definitions of LCPLL_REF and ROPLL_REF
Date: Sun, 12 Jan 2025 17:07:09 +0800
Message-Id: <20250112090714.1564158-2-damon.ding@rock-chips.com>
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
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ0IYH1ZLGExDHR5JSUhCGEJWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a9459c4cd0103a3kunm8700929b
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OC46Tio5AzIWOQM#Vh8RIRxR
	LUwKCzxVSlVKTEhNTUxJQ05CS0lPVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFCQkw3Bg++
DKIM-Signature:a=rsa-sha256;
	b=B2jlZ1nFIP6xXLHOhfpxkgP2O+n9a1Jedxl5eXcZTnwH3XQvCEUu9kb6Cu27etUevQbnZVWgQB0idxA8ERPoMGt0RTfhdW5KKYF7bOWVRD2Tfgh/HHQjuCkwKjAah3/9oQZiXkbns0QijEAZ6IQ6hAkQj3SLiq3mCA+jptpEVgQ=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
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


