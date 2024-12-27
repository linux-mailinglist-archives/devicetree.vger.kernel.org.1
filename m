Return-Path: <devicetree+bounces-134347-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B0A299FD46E
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 14:03:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2768F3A1BCE
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 13:02:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CC301F470F;
	Fri, 27 Dec 2024 13:01:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b="R7Us6umv"
X-Original-To: devicetree@vger.kernel.org
Received: from omta38.uswest2.a.cloudfilter.net (omta38.uswest2.a.cloudfilter.net [35.89.44.37])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F05C81F429E
	for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 13:01:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=35.89.44.37
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735304516; cv=none; b=j2z8AIVD+25yjPpme30gNu3H0lhkjTRzlrt4WOPTh8Lr12C61s3J1l7VEd5BVNbTSGAd3cAXwu81gXHrODv+ZwP916OWhe21hp3uyK54wQ9i36ua1z1ItLJDyNmwjW3r8FIFX9Z8XjYkRSoZBHRYtq2E2FCTVogHwQ/OqS3BNNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735304516; c=relaxed/simple;
	bh=CRTcqeTXRyDN3TGUF8oORkuSGchQveTRlcokaVR1eww=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=EZtwSOVE0Gn5aubRqg8gTRbaf7QxwdVgeNwYKjhTKMnCrwyGiys2f6qRmZnvO0FrX/f8Ir7HKgvGmSpTKWZWO2BoqH2aL7G5miaY9E0Jk4FC6a2Jy0W/zjL4h+jg3qwaKcsuklTxhs2PNzePg5Bg6yDec+qbZ8a+RhhO7dPmYdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com; spf=pass smtp.mailfrom=linumiz.com; dkim=pass (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b=R7Us6umv; arc=none smtp.client-ip=35.89.44.37
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linumiz.com
Received: from eig-obgw-5010a.ext.cloudfilter.net ([10.0.29.199])
	by cmsmtp with ESMTPS
	id R46ftHqpNumtXR9yUt0Ihj; Fri, 27 Dec 2024 13:01:54 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id R9ySt4B1NT3CkR9yTtxwVs; Fri, 27 Dec 2024 13:01:54 +0000
X-Authority-Analysis: v=2.4 cv=EYHOQumC c=1 sm=1 tr=0 ts=676ea542
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=kofhyyBXuK/oEhdxNjf66Q==:17
 a=IkcTkHD0fZMA:10 a=RZcAm9yDv7YA:10 a=-pn6D5nKLtMA:10 a=vU9dKmh3AAAA:8
 a=hmV1tqqUXjKF9vlo9u0A:9 a=QEXdDO2ut3YA:10 a=rsP06fVo5MYu2ilr0aT5:22
 a=ZCPYImcxYIQFgLOT52_G:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Cc:To:In-Reply-To:References:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=obwp4Uet5DlEIt0J2ySMGAkOAswbOhVFXBB3XZ5Jqiw=; b=R7Us6umv47cGLWN96p+n2kuilt
	T4xbbAnWSMZSIFwCduIatoDSNmy+JQa2ridc6dRf8Pt1mykb3W//+qZV9GrvaC1lmGpUqAoxMuByi
	28xqI5wh/nMG0uwq6FLlG26edxLNAnTUeNbd6SgVKCV77g1zgM1dJ8TScb1oKAtfJMHB4BrCU+5BW
	e/GoPh0elRPKqPimnIr1g5WEBDTasHtPeG0hBCyynjEPRKPyusEVu7oKHwnLGAYCwx8irWwlwG0dV
	dJJeFsp1+bOgY5Bbbce+6sTRvwghy9bp4BaJhBoIQQWxQsmDGUG3vgWPGOxjdQ9/xCfDFH2+lICLA
	ehZxlm1w==;
Received: from [122.165.245.213] (port=58270 helo=[127.0.1.1])
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <parthiban@linumiz.com>)
	id 1tR9yN-002EaQ-34;
	Fri, 27 Dec 2024 18:31:47 +0530
From: Parthiban Nallathambi <parthiban@linumiz.com>
Date: Fri, 27 Dec 2024 18:30:55 +0530
Subject: [PATCH RESEND 06/22] dt-bindings: display: sun4i: add a100/a133
 tcon lcd
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241227-a133-display-support-v1-6-abad35b3579c@linumiz.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1735304469; l=1081;
 i=parthiban@linumiz.com; s=20241125; h=from:subject:message-id;
 bh=CRTcqeTXRyDN3TGUF8oORkuSGchQveTRlcokaVR1eww=;
 b=q6BzgLGnGYveQnnmHVz6+J3ibLxVLdkr11DjytwaQY3TlWzBtbvPJD+B3rwNv9fc+tfY6Aece
 zCQBGTM8D6YAgqZUDnZE+z0AVaLKEpyEs00l4L7O0A05eNwUzZd3jNJ
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
X-Exim-ID: 1tR9yN-002EaQ-34
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([127.0.1.1]) [122.165.245.213]:58270
X-Source-Auth: parthiban@linumiz.com
X-Email-Count: 200
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfIRBs+xcu3PzQLFPEWUsW84jp6EYcEWez0/bG613hYCmz62Rf6cFZvuZV4FBF4kDpJouEOF3AjUJIhwb1GVgrT9+SlX02h+Xd30ZizRFOngn7mkHDbKQ
 KZg8TG3G0/GNLa5jX+sQHZl7WB1Rh/cZi5/5VE7DYFfMFJaWfVe4jn+X44Zj9njzBjWp4X5ZM9aSkTSNgv6iOhkaxXPV6G2Rc2M=

A100/A133 has one 18 bit LCD / 2 x LVDS / 1 x DSI. All the controller
shares the same GPIO D block, where LVDS controller can co-exits.

Although 2 LVDS controller is available, there is no document details
for the second. Add compatible for a100 lcd controller.

Signed-off-by: Parthiban Nallathambi <parthiban@linumiz.com>
---
 Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tcon.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tcon.yaml b/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tcon.yaml
index 6d8ae781c230..7ea45a0a2073 100644
--- a/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tcon.yaml
+++ b/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tcon.yaml
@@ -35,6 +35,7 @@ properties:
       - const: allwinner,sun9i-a80-tcon-tv
       - const: allwinner,sun20i-d1-tcon-lcd
       - const: allwinner,sun20i-d1-tcon-tv
+      - const: allwinner,sun50i-a100-tcon-lcd
 
       - items:
           - enum:

-- 
2.39.5


