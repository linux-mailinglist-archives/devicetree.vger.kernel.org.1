Return-Path: <devicetree+bounces-134334-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 377BC9FD3BD
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 12:12:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D9B1716583B
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 11:12:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D89601F3D2D;
	Fri, 27 Dec 2024 11:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b="pd53rFz9"
X-Original-To: devicetree@vger.kernel.org
Received: from omta036.useast.a.cloudfilter.net (omta036.useast.a.cloudfilter.net [44.202.169.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35F921F1931
	for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 11:10:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=44.202.169.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735297823; cv=none; b=eRRY0+y4SRXftscJ0qSgjIBqYZm89Gn1Z8VZBmvfa4Ho7TWntgpxzDGApeJWr6spcxk9OLl2ppqIxwkJjpKUG9cs2sc76GurY8PRR/obhBjmQkvbbijkzEr7LG4o29ZJgnlxiC0U/ZhqjnXcuyQ4JzalyF6Qfw0jcFWzlU8pxu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735297823; c=relaxed/simple;
	bh=m2A1ofv8GeCezN3hco6q0KsR/PZlS1bM75pboayywLg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=XfVuow85PrJ7gzhOE3os0UhxPpjEAxFsyIl2gAEFDdiFbejQPrY3kF+w5gD/TRMeEwv04zxAd8dtKi7Wi4nqWhVnvAIS5dBh+LjjEmvMhbsaWCgcSAq8T5TnXu0MSdz9hVsd6QE+7o0U0p/rqXOrxCxPhz52Hfcgma84zwe4XwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com; spf=pass smtp.mailfrom=linumiz.com; dkim=pass (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b=pd53rFz9; arc=none smtp.client-ip=44.202.169.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linumiz.com
Received: from eig-obgw-5008a.ext.cloudfilter.net ([10.0.29.246])
	by cmsmtp with ESMTPS
	id R46etX9ACxoE1R8D6tkinO; Fri, 27 Dec 2024 11:08:52 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id R8D4twrobN0LRR8D5tphSD; Fri, 27 Dec 2024 11:08:52 +0000
X-Authority-Analysis: v=2.4 cv=erfZzJpX c=1 sm=1 tr=0 ts=676e8ac4
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=kofhyyBXuK/oEhdxNjf66Q==:17
 a=IkcTkHD0fZMA:10 a=RZcAm9yDv7YA:10 a=-pn6D5nKLtMA:10 a=vU9dKmh3AAAA:8
 a=WudEoZjip3EUb6QGksoA:9 a=QEXdDO2ut3YA:10 a=rsP06fVo5MYu2ilr0aT5:22
 a=ZCPYImcxYIQFgLOT52_G:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Cc:To:In-Reply-To:References:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=GlbwVthHYeKY8tBVeUkULV/njVfk66cYvdQ4ontQNdE=; b=pd53rFz9ZJkDS0ouaO8nXwdKE6
	FgHRYmxghu8/C2Gp48uQWw6OKQebOjoXn7jZ9y8lBK8YVJjA3R4durg3pUII9J6hSf32+h3Xuaxbt
	fktY7zl4Y/Q2rzuzMG/ecJ3Ed3nu5m4iCzwmJmvHrwiGdu2sWc6XkmVsAOQFm5Dxy/r1oZHF/yLhg
	xTL6KMMrF6xpBfxwrjjTlf843o3Zt2nC8likCcUGyfsGi42eXcpVneaurhz76z0//74z1WFUwdeds
	ygywXvgDVaBnNoxWdSeJRJSeKpxrElC9Nx38eF8u5VNpV60ORO7KdQvQ+HMwwUaa9FaiMnk78hM1R
	KozSPnMg==;
Received: from [122.165.245.213] (port=50828 helo=[127.0.1.1])
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <parthiban@linumiz.com>)
	id 1tR8Cv-000bEK-2Y;
	Fri, 27 Dec 2024 16:38:41 +0530
From: Parthiban Nallathambi <parthiban@linumiz.com>
Date: Fri, 27 Dec 2024 16:37:52 +0530
Subject: [PATCH 05/22] dt-bindings: display: sun4i: add phy property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241227-a133-display-support-v1-5-13b52f71fb14@linumiz.com>
References: <20241227-a133-display-support-v1-0-13b52f71fb14@linumiz.com>
In-Reply-To: <20241227-a133-display-support-v1-0-13b52f71fb14@linumiz.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1735297689; l=924;
 i=parthiban@linumiz.com; s=20241125; h=from:subject:message-id;
 bh=m2A1ofv8GeCezN3hco6q0KsR/PZlS1bM75pboayywLg=;
 b=aS5TfkN0UGdAKzZY1tjWhZEUGcD56oslubatdE1FDBJANXReuqtfiSMZ4B9utGqfWXKwtPxyQ
 ZFLVdqscNOMAmDrol5bN4AAZxErDo7g2KTOdZCrfzstRqCYADh93TL3
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
X-Exim-ID: 1tR8Cv-000bEK-2Y
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([127.0.1.1]) [122.165.245.213]:50828
X-Source-Auth: parthiban@linumiz.com
X-Email-Count: 164
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfPZxo1QXPmMO+D2iAB30FL2wolvU+aFEGLbwsxNjlrp7tz7m+LHlM1IJBBr3kc6diMZP/onvRrONTctaYYm64acHfy0rmGSTAuq/XaItkkNqYNVqzDcU
 OPP3/XotllNFOP2sTESUdim2YvHShC84usUq8XupL4l7T37ijeHmGrE6dq2RmseBjOPyp8P8V8KwPQ3iwIfd6acDjt2fP25HMWw=

lvds in A100/A133 platform uses phy from DSI block, which needs
to be handled in phy driver. Add phy property to tcon with
generic name 'phy'.

Signed-off-by: Parthiban Nallathambi <parthiban@linumiz.com>
---
 .../devicetree/bindings/display/allwinner,sun4i-a10-tcon.yaml       | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tcon.yaml b/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tcon.yaml
index 724d93b9193b..6d8ae781c230 100644
--- a/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tcon.yaml
+++ b/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tcon.yaml
@@ -115,6 +115,12 @@ properties:
           - const: edp
           - const: lvds
 
+  phys:
+    maxItems: 1
+
+  phy-names:
+    const: phy
+
   ports:
     $ref: /schemas/graph.yaml#/properties/ports
 

-- 
2.39.5


