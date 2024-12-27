Return-Path: <devicetree+bounces-134332-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8594E9FD3BA
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 12:12:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 32A5D3A2DC9
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 11:12:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10C8F1F3D24;
	Fri, 27 Dec 2024 11:10:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b="dKHwIouw"
X-Original-To: devicetree@vger.kernel.org
Received: from omta036.useast.a.cloudfilter.net (omta036.useast.a.cloudfilter.net [44.202.169.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FEE91F37C6
	for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 11:10:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=44.202.169.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735297807; cv=none; b=IMrVLHFQlPIN8ch2hWo5CL4hpciviqBs3TZ4bCP0hzXjR4byofRTtPAKNrc9s8tHgz3Wmw5cD+nLCji7wKPFj1uFaUad/H1LrvnCCCrtV7j3uPuURgpG+EeSkVM4Y2QyNiCU8WPWlwxpW8Xqhk0ejTpJU62o8YOmrWaZpCGlP+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735297807; c=relaxed/simple;
	bh=buj54CCUt17f1cf4Nx7HHyU6fji1O8F3QBNHBtjCt58=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Iow8q1oD9uen8C6NuCh0HDzFzWPqwI9COy54NhtJUaT+GoImjiOdxsYjiNtXNVnG0PZhnQJQQ0dztJMri8UYwAm49Amrw78z6CnSM8pINMyUXcVjj7UR+ZdVX2BoHYmHa4iKNPhPgBtalAgQj1gDy+q1UWBWq5UH6jSwwOtWikQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com; spf=pass smtp.mailfrom=linumiz.com; dkim=pass (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b=dKHwIouw; arc=none smtp.client-ip=44.202.169.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linumiz.com
Received: from eig-obgw-5005a.ext.cloudfilter.net ([10.0.29.234])
	by cmsmtp with ESMTPS
	id R493tX9VixoE1R8Cptkiie; Fri, 27 Dec 2024 11:08:35 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id R8Cntt8ApjcdmR8CotMBCl; Fri, 27 Dec 2024 11:08:35 +0000
X-Authority-Analysis: v=2.4 cv=DrWd+3/+ c=1 sm=1 tr=0 ts=676e8ab3
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=kofhyyBXuK/oEhdxNjf66Q==:17
 a=IkcTkHD0fZMA:10 a=RZcAm9yDv7YA:10 a=-pn6D5nKLtMA:10 a=vU9dKmh3AAAA:8
 a=108W9xlQDzoLNeXj7ooA:9 a=QEXdDO2ut3YA:10 a=rsP06fVo5MYu2ilr0aT5:22
 a=ZCPYImcxYIQFgLOT52_G:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Cc:To:In-Reply-To:References:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=iaG89kv/nDQri6+AUj/VvYcWX2dPo9unZTW0isixi4Q=; b=dKHwIouw1A+LZ6vBeMsK53gexU
	4EoZpenXJyapemVe6BFpR2uqs1R/HDUNA11e8yHDqmAksF33Hk/R+H8pgOtmMIetXaks7bW8djeDR
	TM+tF6tdaJFTqkri2Bg/GXlYgXAcuBUxz++Rc+YeK79t131RLVok2Ed8LsRSGmIXYCD/fDV9n23Pt
	N/ZjZUlPf+SMeCzwV7jLO/p7e25HBry6zKYqtUOuLNz3EFH0or324RJJVur/73mwc1ks4VQS28s9k
	uoQ3b47aiwKrO3pxx1sGl2+5hHl/atp6EcNfD0g1zhyI78p8KSH47ujfDKyOVUBXszyMgP2zoTvi3
	4NUaLgwQ==;
Received: from [122.165.245.213] (port=50828 helo=[127.0.1.1])
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <parthiban@linumiz.com>)
	id 1tR8Cf-000bEK-2b;
	Fri, 27 Dec 2024 16:38:25 +0530
From: Parthiban Nallathambi <parthiban@linumiz.com>
Date: Fri, 27 Dec 2024 16:37:49 +0530
Subject: [PATCH 02/22] dt-bindings: display: sunxi: Add a100/a133 display
 engine compatibles
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241227-a133-display-support-v1-2-13b52f71fb14@linumiz.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1735297689; l=3186;
 i=parthiban@linumiz.com; s=20241125; h=from:subject:message-id;
 bh=buj54CCUt17f1cf4Nx7HHyU6fji1O8F3QBNHBtjCt58=;
 b=7f+/2lyNtA9ClRxNFGVgsbDuLVrtbMyTSgWSUOLHllta6RR9vdbcWmnBbk8oYinrrI2Urjlxr
 dSK9Ulbi6HyCqoOLw6YMdLZf9yXIihNokZw4UP2j+Rk0IEKN+oZzglG
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
X-Exim-ID: 1tR8Cf-000bEK-2b
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([127.0.1.1]) [122.165.245.213]:50828
X-Source-Auth: parthiban@linumiz.com
X-Email-Count: 77
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfAB4Pll3dN8DQqKkTCRTgHZUft2kEm3cZcZtWnrg4FmqoT/rmfsePfFDscIeys+B+SlTY7ol3anIX5jhyoGfQUcizxZtn1pPyIk4oAO7VLSKyRfj8bwz
 QxxYFfyV9T5IEX6YtuVgFhw9Tvtw4/9H7pvje8YebkIs9l9MzZXJE9hT7tkRUpZWQP0n0K+OdScBfW5XP/YtcaKG1mPTCyQdsb0=

A100/A133 comes with display enginer 2.0 with 1 x Mixer with write
back support and 1 tcon top. Mixer can be used with lcd/lvds/dsi,
but shares the same GPIO bank.

Signed-off-by: Parthiban Nallathambi <parthiban@linumiz.com>
---
 .../display/allwinner,sun4i-a10-display-engine.yaml     |  2 ++
 .../display/allwinner,sun8i-a83t-de2-mixer.yaml         |  1 +
 .../bindings/display/allwinner,sun8i-r40-tcon-top.yaml  | 17 +++++++++++++++++
 3 files changed, 20 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-display-engine.yaml b/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-display-engine.yaml
index e6088f379f70..dc47c684fcb0 100644
--- a/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-display-engine.yaml
+++ b/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-display-engine.yaml
@@ -64,6 +64,7 @@ properties:
       - allwinner,sun9i-a80-display-engine
       - allwinner,sun20i-d1-display-engine
       - allwinner,sun50i-a64-display-engine
+      - allwinner,sun50i-a100-display-engine
       - allwinner,sun50i-h6-display-engine
 
   allwinner,pipelines:
@@ -96,6 +97,7 @@ if:
           - allwinner,sun9i-a80-display-engine
           - allwinner,sun20i-d1-display-engine
           - allwinner,sun50i-a64-display-engine
+          - allwinner,sun50i-a100-display-engine
 
 then:
   properties:
diff --git a/Documentation/devicetree/bindings/display/allwinner,sun8i-a83t-de2-mixer.yaml b/Documentation/devicetree/bindings/display/allwinner,sun8i-a83t-de2-mixer.yaml
index b75c1ec686ad..ebcddca2efb3 100644
--- a/Documentation/devicetree/bindings/display/allwinner,sun8i-a83t-de2-mixer.yaml
+++ b/Documentation/devicetree/bindings/display/allwinner,sun8i-a83t-de2-mixer.yaml
@@ -23,6 +23,7 @@ properties:
       - allwinner,sun20i-d1-de2-mixer-1
       - allwinner,sun50i-a64-de2-mixer-0
       - allwinner,sun50i-a64-de2-mixer-1
+      - allwinner,sun50i-a100-de2-mixer-0
       - allwinner,sun50i-h6-de3-mixer-0
 
   reg:
diff --git a/Documentation/devicetree/bindings/display/allwinner,sun8i-r40-tcon-top.yaml b/Documentation/devicetree/bindings/display/allwinner,sun8i-r40-tcon-top.yaml
index 7d849c4095a3..9b14b7fb2d2f 100644
--- a/Documentation/devicetree/bindings/display/allwinner,sun8i-r40-tcon-top.yaml
+++ b/Documentation/devicetree/bindings/display/allwinner,sun8i-r40-tcon-top.yaml
@@ -42,6 +42,7 @@ properties:
     enum:
       - allwinner,sun8i-r40-tcon-top
       - allwinner,sun20i-d1-tcon-top
+      - allwinner,sun50i-a100-tcon-top
       - allwinner,sun50i-h6-tcon-top
 
   reg:
@@ -179,6 +180,22 @@ allOf:
             - description: TCON TV0 output clock name
             - description: DSI output clock name
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: allwinner,sun50i-a100-tcon-top
+
+    then:
+      properties:
+        clocks:
+          items:
+            - description: The TCON TOP interface clock
+
+        clock-names:
+          items:
+            - const: bus
+
   - if:
       properties:
         compatible:

-- 
2.39.5


