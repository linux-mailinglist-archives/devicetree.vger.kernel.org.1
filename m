Return-Path: <devicetree+bounces-134333-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 79A909FD3BB
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 12:12:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 28D681886EC0
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 11:12:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D64D1F2C31;
	Fri, 27 Dec 2024 11:10:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b="OTLfmGq2"
X-Original-To: devicetree@vger.kernel.org
Received: from omta036.useast.a.cloudfilter.net (omta036.useast.a.cloudfilter.net [44.202.169.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B9351F193D
	for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 11:10:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=44.202.169.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735297814; cv=none; b=tx8E3KYAgYqRsl0fMV6vVJvWj7Q83Y7i7fVyp7AHe77al/G5sCc5l5GPpsPd1i7LnGzCtrmeLDIz0ibvPrr9sQqD7lh2lHbtOki5nnEFRnd2b9rlfw61URrVqot9KEYPnAdmi5MLvWAgZKkyqOr6BWRMGleuYREaNVba8/T1qBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735297814; c=relaxed/simple;
	bh=sPElRYsF0jt44ZqeUcZ4OkMgH7YItvc9UU2klf48oOk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=RUKzek4h1+7pntjMLWpc+Y+8OZ/wxR5nIU/C/0vR28I831A5V+DKZ/O0C0lbAdd7Kb6b2BHH/CmBmfO2ltJLHnVcQg1Sy44nCjDyoC9jRMB+e9v39xi91RD9Qeklmmt5XVBkxah4lvz4XPl3vkk79VLZDEVuYXCaHyCYdkpYS9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com; spf=pass smtp.mailfrom=linumiz.com; dkim=pass (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b=OTLfmGq2; arc=none smtp.client-ip=44.202.169.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linumiz.com
Received: from eig-obgw-5007a.ext.cloudfilter.net ([10.0.29.141])
	by cmsmtp with ESMTPS
	id R46jtX9BGxoE1R8Cxtkiku; Fri, 27 Dec 2024 11:08:43 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id R8CvtdwvH8PtxR8CwtlNOK; Fri, 27 Dec 2024 11:08:43 +0000
X-Authority-Analysis: v=2.4 cv=Fegxxo+6 c=1 sm=1 tr=0 ts=676e8abb
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=kofhyyBXuK/oEhdxNjf66Q==:17
 a=IkcTkHD0fZMA:10 a=RZcAm9yDv7YA:10 a=-pn6D5nKLtMA:10 a=vU9dKmh3AAAA:8
 a=fsIbZEiDhnbgyVT8DcoA:9 a=QEXdDO2ut3YA:10 a=rsP06fVo5MYu2ilr0aT5:22
 a=ZCPYImcxYIQFgLOT52_G:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Cc:To:In-Reply-To:References:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=OzWNauLbiAQJEp1e2/czwTEEh3hDEGYbQXYIOeAFLNM=; b=OTLfmGq2RQMMnqWoWjrMSSMtLp
	GQOf4i+JPvIookaSjiJMFScKVJ4xkrnEESNBdVbXEnz62Lva04q+UV107Uo6j6SkF+6oo/S2aK4ZR
	MKASbtnLwpHL+o8HeTwXb+dCMo/+UTuNSaaIYBzKa0/4wFMqjbA5kzpJ4L/CXJN70S3QcXxK9yQ1D
	gRpqsFQbpL0RF43ZAf7c8j+CBLkwkt7WLoVRy0a83zshXnNtWV9xlJDjL6hmVOGiSPEB33TrFsXy1
	ph3xCqNzGpV2sdZKKtP+6kvuIgZR3C7YlMaULMRrrrRycZppr71WxHIXxOUi51UNAmA7w3gHspS1G
	kQ9qO5Qg==;
Received: from [122.165.245.213] (port=50828 helo=[127.0.1.1])
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <parthiban@linumiz.com>)
	id 1tR8Cm-000bEK-0U;
	Fri, 27 Dec 2024 16:38:32 +0530
From: Parthiban Nallathambi <parthiban@linumiz.com>
Date: Fri, 27 Dec 2024 16:37:50 +0530
Subject: [PATCH 03/22] dt-bindings: clock: sun8i de2 clock: Add PLL com
 clock
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241227-a133-display-support-v1-3-13b52f71fb14@linumiz.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1735297689; l=1074;
 i=parthiban@linumiz.com; s=20241125; h=from:subject:message-id;
 bh=sPElRYsF0jt44ZqeUcZ4OkMgH7YItvc9UU2klf48oOk=;
 b=iYwmFT51XZcESh83cOKPv4w9+BXh77BqnSiRPMhS9ZBl1RhFKJt+zEKNXnIWnFH+wCrH5P8nX
 rlRXcA+xSHkB8X5+pmuVByKYzx16HMBmTyYrMCNdsigCWoicrncViqd
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
X-Exim-ID: 1tR8Cm-000bEK-0U
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([127.0.1.1]) [122.165.245.213]:50828
X-Source-Auth: parthiban@linumiz.com
X-Email-Count: 106
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfB3/khHVJiU7LSOtEfzLKMMeFky143GWtzdKhLwpGEOFAybDnyoXiD7hLSM0WnALLvtQ39LdQ2IQusq0xrOQ6OB/Qj96It1nHYtKkMp8DrsoekkTHf/w
 jA/JEQIXiwnrQNl8FyUqElaeuZ3LXufDh3bQ/bhdZoUPB8QjGdjrPgpw+u+GyMri7QpPKL3eUhU7xAOF8f6xl50GldEhg5GGAoM=

Some platforms like A100/A133 also uses pll-com clock as additional
clock source for the display clock. This is not documents both in
user manual and DE 2.0 specification. These changes are mainly from
vendor BSP.

Signed-off-by: Parthiban Nallathambi <parthiban@linumiz.com>
---
 .../devicetree/bindings/clock/allwinner,sun8i-a83t-de2-clk.yaml         | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/allwinner,sun8i-a83t-de2-clk.yaml b/Documentation/devicetree/bindings/clock/allwinner,sun8i-a83t-de2-clk.yaml
index 70369bd633e4..3e00905b66ca 100644
--- a/Documentation/devicetree/bindings/clock/allwinner,sun8i-a83t-de2-clk.yaml
+++ b/Documentation/devicetree/bindings/clock/allwinner,sun8i-a83t-de2-clk.yaml
@@ -39,11 +39,13 @@ properties:
     items:
       - description: Bus Clock
       - description: Module Clock
+      - description: PLL common clock
 
   clock-names:
     items:
       - const: bus
       - const: mod
+      - const: pll-com
 
   resets:
     maxItems: 1

-- 
2.39.5


