Return-Path: <devicetree+bounces-134355-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C9C39FD48E
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 14:05:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B0ABF165A6F
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 13:04:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 896231F666F;
	Fri, 27 Dec 2024 13:02:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b="Por5VnV3"
X-Original-To: devicetree@vger.kernel.org
Received: from omta38.uswest2.a.cloudfilter.net (omta38.uswest2.a.cloudfilter.net [35.89.44.37])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13AB41F63F9
	for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 13:02:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=35.89.44.37
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735304563; cv=none; b=WUY1cbX+8+l3oBzUg8vkkbvYdkqXm4s535+EBgYvAqfZZLIST3sNnTX4LZvxNGx4BLyYES+hwBcDoKS5dfG9QjTqD3JBljrWz9T6p5te/JP454ENAZnuAjg/u2E2WhyqOpH+FbyTcJ4feTZcbzAB84mTU0//rS8i9SW3MhTiYTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735304563; c=relaxed/simple;
	bh=Z1yBsrhc1T8q3fTFow1RSmWl9UXwRZd8FWpkoLs2A1A=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=KCluY0C9+v36wHf6TVSu2y1sC6MbI7pbrPjiDmNpzIFTdrwjWNJC9DJfW5jZ9jdkC3YGzsbvpwwKFlNPSFexd4c7U2ng1/9IinU8gNDUvN3UwyDlHPWtc9u5fKbEk6bIUlcmajyTZC9ctgdLWBZoZm0m9aLwxNx+yoEaeBBNOiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com; spf=pass smtp.mailfrom=linumiz.com; dkim=pass (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b=Por5VnV3; arc=none smtp.client-ip=35.89.44.37
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linumiz.com
Received: from eig-obgw-5006a.ext.cloudfilter.net ([10.0.29.179])
	by cmsmtp with ESMTPS
	id R46ltHqriumtXR9zEt0J3L; Fri, 27 Dec 2024 13:02:40 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id R9zBtQC1z7mBqR9zDtwu4q; Fri, 27 Dec 2024 13:02:40 +0000
X-Authority-Analysis: v=2.4 cv=Fewxxo+6 c=1 sm=1 tr=0 ts=676ea570
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=kofhyyBXuK/oEhdxNjf66Q==:17
 a=IkcTkHD0fZMA:10 a=RZcAm9yDv7YA:10 a=-pn6D5nKLtMA:10 a=vU9dKmh3AAAA:8
 a=U3DMF0o1PY4y7HjVE7sA:9 a=QEXdDO2ut3YA:10 a=lcdGsAA1t286La22BbtU:22
 a=rsP06fVo5MYu2ilr0aT5:22 a=ZCPYImcxYIQFgLOT52_G:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Cc:To:In-Reply-To:References:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=dbYyqDxlPnUOcenlEsyd1+KMbnZL6BSy8ly64QBKbVQ=; b=Por5VnV35tosi3+JJ7NTnryKFJ
	UZ3i/aCSsN8ASDSsooEu1dnjn6lqUjDe42kZCTnJmK9Iday3mVbCRQ00+zD6WtmdW1rUy2G8tydQ2
	tduvd+W7th/UfYa3I5TJGh8z/879dsE6lMQ3siODjZpE73PPlyLPx1qd2rfRN2/djaz/Y26+Ka4X/
	kzDiJeSLlRd4JzbQvAMbGC3Dw+ijajl8gXgSz8wLUyKtzmIgJmB9fQy6ySu6fL09qQ4mh2r4UrpIl
	9rnVZzDxOiC4V0g1uSZy6KFE368UBTyys54uzzz6IihbYUxS5xjXFoJzF0u3JrCFw13axwFBks9YX
	5TC9frQQ==;
Received: from [122.165.245.213] (port=58270 helo=[127.0.1.1])
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <parthiban@linumiz.com>)
	id 1tR9z3-002EaQ-2x;
	Fri, 27 Dec 2024 18:32:29 +0530
From: Parthiban Nallathambi <parthiban@linumiz.com>
Date: Fri, 27 Dec 2024 18:31:02 +0530
Subject: [PATCH RESEND 13/22] drm/sun4i: make tcon top tv0 optional
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241227-a133-display-support-v1-13-abad35b3579c@linumiz.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1735304469; l=2767;
 i=parthiban@linumiz.com; s=20241125; h=from:subject:message-id;
 bh=Z1yBsrhc1T8q3fTFow1RSmWl9UXwRZd8FWpkoLs2A1A=;
 b=d9QdVen3zcO2vxcUSjbW8STNjFQd/Fya6B9N47bAWh3SbRj3wHmlor7MKAsKcq+kliww2MjaD
 8hgcJHZVT3SCJjubJ72pmYS56EWz8ZMwjPeWk9Ap8R4VpZW+hN7PVi3
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
X-Exim-ID: 1tR9z3-002EaQ-2x
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([127.0.1.1]) [122.165.245.213]:58270
X-Source-Auth: parthiban@linumiz.com
X-Email-Count: 410
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfIIck4NEh/k5v/rwpjVq5x/ZZb2TKvyBO74VKmaYAm2fYICjCiv4NedJhEaGhI7cGYdOZwLnp7QWB2BSlgqdQQieyV7gj2+BLcCYyAmfOC8j+2JFu391
 jAVBkewGP9s8m0H/zS7Hk9IKEptd1dLKEzAbKBG/H3owCnpdda69Nbuc4KhChXMkn9LpipZ9AsTbaB8eVvvW3ejT+UnOAL/WgXw=

current implementation of tcon top assumes tv0 is always present, which
isn't case in A100/A133 SoC's. Make tv0 optional by introducing another
control similar to tv1 and make existing users with true/present.

Signed-off-by: Parthiban Nallathambi <parthiban@linumiz.com>
---
 drivers/gpu/drm/sun4i/sun8i_tcon_top.c | 34 ++++++++++++++++++++--------------
 1 file changed, 20 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/sun4i/sun8i_tcon_top.c b/drivers/gpu/drm/sun4i/sun8i_tcon_top.c
index 8adda578c51b..bd9d0840ead7 100644
--- a/drivers/gpu/drm/sun4i/sun8i_tcon_top.c
+++ b/drivers/gpu/drm/sun4i/sun8i_tcon_top.c
@@ -16,6 +16,7 @@
 #include "sun8i_tcon_top.h"
 
 struct sun8i_tcon_top_quirks {
+	bool has_tcon_tv0;
 	bool has_tcon_tv1;
 	bool has_dsi;
 };
@@ -191,10 +192,11 @@ static int sun8i_tcon_top_bind(struct device *dev, struct device *master,
 	 * to TVE clock parent.
 	 */
 	i = 0;
-	clk_data->hws[CLK_TCON_TOP_TV0] =
-		sun8i_tcon_top_register_gate(dev, "tcon-tv0", regs,
-					     &tcon_top->reg_lock,
-					     TCON_TOP_TCON_TV0_GATE, i++);
+	if (quirks->has_tcon_tv0)
+		clk_data->hws[CLK_TCON_TOP_TV0] =
+			sun8i_tcon_top_register_gate(dev, "tcon-tv0", regs,
+						     &tcon_top->reg_lock,
+						     TCON_TOP_TCON_TV0_GATE, i++);
 
 	if (quirks->has_tcon_tv1)
 		clk_data->hws[CLK_TCON_TOP_TV1] =
@@ -208,16 +210,18 @@ static int sun8i_tcon_top_bind(struct device *dev, struct device *master,
 						     &tcon_top->reg_lock,
 						     TCON_TOP_TCON_DSI_GATE, i++);
 
-	for (i = 0; i < CLK_NUM; i++)
-		if (IS_ERR(clk_data->hws[i])) {
-			ret = PTR_ERR(clk_data->hws[i]);
-			goto err_unregister_gates;
-		}
+	if (i) {
+		for (i = 0; i < CLK_NUM; i++)
+			if (IS_ERR(clk_data->hws[i])) {
+				ret = PTR_ERR(clk_data->hws[i]);
+				goto err_unregister_gates;
+			}
 
-	ret = of_clk_add_hw_provider(dev->of_node, of_clk_hw_onecell_get,
-				     clk_data);
-	if (ret)
-		goto err_unregister_gates;
+		ret = of_clk_add_hw_provider(dev->of_node, of_clk_hw_onecell_get,
+				clk_data);
+		if (ret)
+			goto err_unregister_gates;
+	}
 
 	dev_set_drvdata(dev, tcon_top);
 
@@ -266,16 +270,18 @@ static void sun8i_tcon_top_remove(struct platform_device *pdev)
 }
 
 static const struct sun8i_tcon_top_quirks sun8i_r40_tcon_top_quirks = {
+	.has_tcon_tv0	= true,
 	.has_tcon_tv1	= true,
 	.has_dsi	= true,
 };
 
 static const struct sun8i_tcon_top_quirks sun20i_d1_tcon_top_quirks = {
+	.has_tcon_tv0	= true,
 	.has_dsi	= true,
 };
 
 static const struct sun8i_tcon_top_quirks sun50i_h6_tcon_top_quirks = {
-	/* Nothing special */
+	.has_tcon_tv0	= true,
 };
 
 /* sun4i_drv uses this list to check if a device node is a TCON TOP */

-- 
2.39.5


