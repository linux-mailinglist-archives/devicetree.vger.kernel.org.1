Return-Path: <devicetree+bounces-134350-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 51FBE9FD47B
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 14:03:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 01035164114
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 13:03:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F37771F4E3D;
	Fri, 27 Dec 2024 13:02:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b="nAvBZYSH"
X-Original-To: devicetree@vger.kernel.org
Received: from omta36.uswest2.a.cloudfilter.net (omta36.uswest2.a.cloudfilter.net [35.89.44.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82F011F37D8
	for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 13:02:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=35.89.44.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735304532; cv=none; b=CTSM5jJ/l5aVh14gx0w9dJ9KzmaQWaHAUHeDaF3EIdOv0/NEGoBkmth8F4BhpnJzzakZXU8d2VSHoMo3BegEYU2FLCLexIH/xjKtbMcezR0i2frQDg412lfLHS85nu4t72HbTry4T+FzNfIpGeVIvNBTf9deR04YekHdHDRRppY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735304532; c=relaxed/simple;
	bh=P54KA5XqlT/VEM0AcqfRzSVceip5YpdV+G0SVeiVvo8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=XKJgvy7NcGfZ+TI1uw41sOuOsgkpu/9FQSu+2mFgWhZyc2R5GJKDEmO70qjmo3VPLaAyL5lVy44eOL+Vy4+Cubg6sG1esTWEwWh9dQxGCt7W1xV96ieRTo2aISFUj9wvVfWunmggfWIIx2lV9+EgdhRRM9BdG3V7pcZrfblX1zQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com; spf=pass smtp.mailfrom=linumiz.com; dkim=pass (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b=nAvBZYSH; arc=none smtp.client-ip=35.89.44.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linumiz.com
Received: from eig-obgw-6002a.ext.cloudfilter.net ([10.0.30.222])
	by cmsmtp with ESMTPS
	id R2gltcwtTqvuoR9yltyHwf; Fri, 27 Dec 2024 13:02:11 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id R9yittjtN65gFR9yktg7Mm; Fri, 27 Dec 2024 13:02:10 +0000
X-Authority-Analysis: v=2.4 cv=Z58nH2RA c=1 sm=1 tr=0 ts=676ea552
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=kofhyyBXuK/oEhdxNjf66Q==:17
 a=IkcTkHD0fZMA:10 a=RZcAm9yDv7YA:10 a=-pn6D5nKLtMA:10 a=vU9dKmh3AAAA:8
 a=85KA4Hw53eMu32bbZw4A:9 a=QEXdDO2ut3YA:10 a=rsP06fVo5MYu2ilr0aT5:22
 a=ZCPYImcxYIQFgLOT52_G:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Cc:To:In-Reply-To:References:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=qiSM89V4SzYcC8gEAu73STXv5s6bgJIn4sStUDfq04o=; b=nAvBZYSHbVM62LJFidG3027XxF
	P1mTdQOMTI7WGFrHZ7SB/TQXd/qSHL9afyj7g+55u4Mo3fvffZ2Bqvgh+Qprf1K2Y5JSm2ZgEAbzh
	J5dcIX4wcBz18dE5gTYR6YPWeSBIxEX514UWoaxdgrGLzx8UbxPcPl0la7wXwrTWl1VOJEy43sXpZ
	GudsLc/zFvQSzaFXM+OZiJWlxRWaa8ix9rkMQ9sdt74F99oAhtz48NjAiqZlEIypv2GZp/kO+pt7/
	0QpOX9XxfrGL5CUTiI7SCRB2TqCD3chLgNoZ6C5Ey6jCZu5W7A15gWiSVU8Gm8V4VgdVcqelHu8a+
	l9Yf9Ekw==;
Received: from [122.165.245.213] (port=58270 helo=[127.0.1.1])
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <parthiban@linumiz.com>)
	id 1tR9yd-002EaQ-0T;
	Fri, 27 Dec 2024 18:32:03 +0530
From: Parthiban Nallathambi <parthiban@linumiz.com>
Date: Fri, 27 Dec 2024 18:30:58 +0530
Subject: [PATCH RESEND 09/22] iommu: sun50i: make reset control optional
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241227-a133-display-support-v1-9-abad35b3579c@linumiz.com>
References: <20241227-a133-display-support-v1-0-abad35b3579c@linumiz.com>
In-Reply-To: <20241227-a133-display-support-v1-0-abad35b3579c@linumiz.com>
To: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, 
 Robin Murphy <robin.murphy@arm.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, Maxime Ripard <mripard@kernel.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Linus Walleij <linus.walleij@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: iommu@lists.linux.dev, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org, 
 linux-phy@lists.infradead.org, 
 Parthiban Nallathambi <parthiban@linumiz.com>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1735304469; l=819;
 i=parthiban@linumiz.com; s=20241125; h=from:subject:message-id;
 bh=P54KA5XqlT/VEM0AcqfRzSVceip5YpdV+G0SVeiVvo8=;
 b=8wSi51Em0At7HsSz71oEg/YhUEgaqaYrkhUkAvLX2MM9QDxn8dPP28lwLddLbKktgDyWiU7Tc
 l3RwlzT+P5TCMp6XfAOhpTqm0j4VKJyRoKL3HrRZ2WA1jmVmAqjXW4O
X-Developer-Key: i=parthiban@linumiz.com; a=ed25519;
 pk=PrcMZ/nwnHbeXNFUFUS833wF3DAX4hziDHEbBp1eNb8=
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - md-in-79.webhostbox.net
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - linumiz.com
X-BWhitelist: no
X-Source-IP: 122.165.245.213
X-Source-L: No
X-Exim-ID: 1tR9yd-002EaQ-0T
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([127.0.1.1]) [122.165.245.213]:58270
X-Source-Auth: parthiban@linumiz.com
X-Email-Count: 287
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfPCqzyJ2H7uNu8Upb6dmrsNrTQ+2rfxR7qIF6HZ314GXm7PnD3Yspaj4YyT6lNSxT3diPfS1szmpI0SD5Lz+0xAG34KXNY7XeBoWJqbxwqINpcLedcJw
 3zEf918mSHi70Su1G16Jj5hUlC1qXpYi85/1HTQEOM9gEr6J1v9uwl544eeujeTuhqkEEHn31iZ3gpuNfNEGU0TqIxADqC6sETg=

A133/A100 SoC doesn't have reset control from the CCU. Get reset
control line optionally.

Signed-off-by: Parthiban Nallathambi <parthiban@linumiz.com>
---
 drivers/iommu/sun50i-iommu.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/iommu/sun50i-iommu.c b/drivers/iommu/sun50i-iommu.c
index 8d8f11854676..2ba804d682dc 100644
--- a/drivers/iommu/sun50i-iommu.c
+++ b/drivers/iommu/sun50i-iommu.c
@@ -1030,7 +1030,7 @@ static int sun50i_iommu_probe(struct platform_device *pdev)
 		goto err_free_cache;
 	}
 
-	iommu->reset = devm_reset_control_get(&pdev->dev, NULL);
+	iommu->reset = devm_reset_control_get_optional(&pdev->dev, NULL);
 	if (IS_ERR(iommu->reset)) {
 		dev_err(&pdev->dev, "Couldn't get our reset line.\n");
 		ret = PTR_ERR(iommu->reset);

-- 
2.39.5


