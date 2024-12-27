Return-Path: <devicetree+bounces-134320-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4595E9FD372
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 12:08:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9EDD51884012
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 11:08:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B8B21F1308;
	Fri, 27 Dec 2024 11:08:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b="aR1jYGqF"
X-Original-To: devicetree@vger.kernel.org
Received: from omta36.uswest2.a.cloudfilter.net (omta36.uswest2.a.cloudfilter.net [35.89.44.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA4451F130B
	for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 11:08:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=35.89.44.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735297710; cv=none; b=TzqfMSrFjZrjJT7vsMpgxfLPiBBpGC2m7aDC7wxoCL/Kg61Q5cTKBmwoc7i487PzbF3ORR+sdMDVMoUZ8PGdyYXnXgUQA2zso3X+ZTP2sBJHY3z/2Z696HiIDRyj4nwgZhpZ0NvfTF3IetcU0DqJgzGHh9hT11oOQxzfg/Q2TPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735297710; c=relaxed/simple;
	bh=qHYIlw5q2Ro5I852QrjEef3P3GktuZk2GSnSTYiauwE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=hhxDptcVoA3wXYDF7HLAlGjNS/Fju9VHyt60irOOSbVQAe573XQ/hH0FJmQmEhXr1Q8jMEHuHzNKYZtPaxJVYd9Fm52y4Zb7t+Hz4Rwd7egbmA9dJSQf0/H5G2YeldmOvEuySADvYWiZ9YQtlZEbVf23luLGEcXwGAYMu/8cbi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com; spf=pass smtp.mailfrom=linumiz.com; dkim=pass (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b=aR1jYGqF; arc=none smtp.client-ip=35.89.44.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linumiz.com
Received: from eig-obgw-5010a.ext.cloudfilter.net ([10.0.29.199])
	by cmsmtp with ESMTPS
	id R46ftd7yJqvuoR8Citxj5u; Fri, 27 Dec 2024 11:08:28 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id R8Cft35tNT3CkR8Chtx0L6; Fri, 27 Dec 2024 11:08:27 +0000
X-Authority-Analysis: v=2.4 cv=EYHOQumC c=1 sm=1 tr=0 ts=676e8aac
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=kofhyyBXuK/oEhdxNjf66Q==:17
 a=IkcTkHD0fZMA:10 a=RZcAm9yDv7YA:10 a=-pn6D5nKLtMA:10 a=vU9dKmh3AAAA:8
 a=mFyXD75C-Rjc5bRUbP4A:9 a=QEXdDO2ut3YA:10 a=rsP06fVo5MYu2ilr0aT5:22
 a=ZCPYImcxYIQFgLOT52_G:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Cc:To:In-Reply-To:References:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=VbcHXTdEmafcZ26pOm95idNdvsDgKQdu1LnTvG4534s=; b=aR1jYGqFxE14XmkOrq/76hPtQB
	au0Grwe3xgx909T0xRFjZlXa+/3+Z6CQ17G84Ui7maz9MYDpTgj74qkxG9P4fdCXP4ncHztCRI1IL
	wurYZykNTA6gJ0Hd9nRTaK0HcUQ91MSkUEantmr7gKBvzA68fbh5Qrm7dsvKZ/FuWcoObWI6kPTpe
	mPeHLjR6BS8trmdA9kIudsOspf3OJ5/dSTYFJHMyUJKL7NcL10i+f8AdwuwrqQ3zrmoR7H8sLkNP1
	mwJoqq5V8OMVUjIVjABolpfsjSu29RluhCmFn29RaEflwknGZgqTAFfLiIINfLl/9S+gJXXRPPhu5
	mez65dKA==;
Received: from [122.165.245.213] (port=50828 helo=[127.0.1.1])
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <parthiban@linumiz.com>)
	id 1tR8CY-000bEK-17;
	Fri, 27 Dec 2024 16:38:18 +0530
From: Parthiban Nallathambi <parthiban@linumiz.com>
Date: Fri, 27 Dec 2024 16:37:48 +0530
Subject: [PATCH 01/22] dt-bindings: iommu: sun50i: remove resets from
 required property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241227-a133-display-support-v1-1-13b52f71fb14@linumiz.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1735297689; l=774;
 i=parthiban@linumiz.com; s=20241125; h=from:subject:message-id;
 bh=qHYIlw5q2Ro5I852QrjEef3P3GktuZk2GSnSTYiauwE=;
 b=O5SY6H4NC2t4rq4YdgxJ/KyACtqKhJClzXGuk+2y0VCP72rvetJ78xEibxuXr/Vu+8AkycYTF
 hJluk6T9TLHBvflSwFkx0fX4bYYj8F50/P1cZaRlTszKcnEKBbA0Cbj
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
X-Exim-ID: 1tR8CY-000bEK-17
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([127.0.1.1]) [122.165.245.213]:50828
X-Source-Auth: parthiban@linumiz.com
X-Email-Count: 48
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfHQycIc3xabeHJBkIQrcWbSdhz52ROa9Ty9sP67c4XdGJlet3/B6V0agPTOvhs/YPqB9PrLHeLLH1gPLLu0+Cyax2VCPu/AK5WCE39cyqCq9hLNZpoG3
 uHTcRnJ6Dj5TiCUfb+YymqXQGFIXc+WLIOWB2iQuwqvBmTxbWvTACPtNOV0YdPkfWO74Tya3YNak4DImQXOK1QGX7o1iUv0BRlY=

iommu in a133/a100 does not have reset control. remove it
from required property to make it optional.

Signed-off-by: Parthiban Nallathambi <parthiban@linumiz.com>
---
 Documentation/devicetree/bindings/iommu/allwinner,sun50i-h6-iommu.yaml | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/iommu/allwinner,sun50i-h6-iommu.yaml b/Documentation/devicetree/bindings/iommu/allwinner,sun50i-h6-iommu.yaml
index a8409db4a3e3..03176f68485b 100644
--- a/Documentation/devicetree/bindings/iommu/allwinner,sun50i-h6-iommu.yaml
+++ b/Documentation/devicetree/bindings/iommu/allwinner,sun50i-h6-iommu.yaml
@@ -42,7 +42,6 @@ required:
   - reg
   - interrupts
   - clocks
-  - resets
 
 additionalProperties: false
 

-- 
2.39.5


