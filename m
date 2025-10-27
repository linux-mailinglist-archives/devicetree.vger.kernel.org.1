Return-Path: <devicetree+bounces-231481-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 52525C0D870
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 13:30:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id A0C9E4F6C08
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 12:29:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8092303A38;
	Mon, 27 Oct 2025 12:27:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE2ED2F83BC
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 12:27:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761568058; cv=none; b=UXb3g3D/a60jygGe/BeTPuP95d8UApCjPQfuiddIi66zrT1h3t4WKkm/j0OCQqMpAMIBh6ShZAGgqBsCHUj1HnxlVjCEV1NbybsWneTtjg0+jIFYmFEg/uSg/awkU5XbH2vpdkrg+mdeWBJKvHm4qXVWDrtOf1VaHA0uZTuJCXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761568058; c=relaxed/simple;
	bh=IX3IddAZ9zG8ldOL0KJpD6WXbZSN+SX47gofj8TjmFc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=AdCTJ3fvSS61T4dsMUKmwovrkv3rapb0rpWAcRvSuP3+PevaYSFSRqbzxg/WEUlzZ82R18AUC1qUB2Nkqv5R5D/03WckEIyQXWIbUs7Pr4gVwUBjB+B74UJczep39mziexMbq+Bg9Ahp86HI9k0jwr2D4UGKjduaikQezlxQ+js=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 59RCQuqb031809;
	Mon, 27 Oct 2025 21:27:01 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, jonas@kwiboo.se,
        dsimic@manjaro.org, amadeus@jmu.edu.cn, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 4/5] dt-bindings: arm: rockchip: Reorder the Radxa board entries
Date: Mon, 27 Oct 2025 12:26:40 +0000
Message-ID: <20251027122641.39396-5-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251027122641.39396-1-naoki@radxa.com>
References: <20251027122641.39396-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Reorder the Radxa board entries alphanumerically, with the following
exceptions:

- Place "Rock2 Square" immediately after "Rock".
- Place "ROCK Pi N10" immediately after "ROCK Pi N8".
- Treat "Compute Module 3" as "CM3" for sorting purposes.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 .../devicetree/bindings/arm/rockchip.yaml     | 112 +++++++++---------
 1 file changed, 56 insertions(+), 56 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 70be7966f4d3e..eef2b8061101b 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -918,6 +918,11 @@ properties:
           - const: radxa,rock
           - const: rockchip,rk3188
 
+      - description: Radxa Rock2 Square
+        items:
+          - const: radxa,rock2-square
+          - const: rockchip,rk3288
+
       - description: Radxa ROCK 2A/2F
         items:
           - enum:
@@ -925,16 +930,20 @@ properties:
               - radxa,rock-2f
           - const: rockchip,rk3528
 
-      - description: Radxa ROCK Pi 4A/A+/B/B+/C
+      - description: Radxa ROCK 3A
         items:
-          - enum:
-              - radxa,rockpi4a
-              - radxa,rockpi4a-plus
-              - radxa,rockpi4b
-              - radxa,rockpi4b-plus
-              - radxa,rockpi4c
-          - const: radxa,rockpi4
-          - const: rockchip,rk3399
+          - const: radxa,rock3a
+          - const: rockchip,rk3568
+
+      - description: Radxa ROCK 3B
+        items:
+          - const: radxa,rock-3b
+          - const: rockchip,rk3568
+
+      - description: Radxa ROCK 3C
+        items:
+          - const: radxa,rock-3c
+          - const: rockchip,rk3566
 
       - description: Radxa ROCK 4C+
         items:
@@ -951,48 +960,6 @@ properties:
           - const: radxa,rock-4se
           - const: rockchip,rk3399
 
-      - description: Radxa ROCK Pi E
-        items:
-          - const: radxa,rockpi-e
-          - const: rockchip,rk3328
-
-      - description: Radxa ROCK Pi N8
-        items:
-          - const: radxa,rockpi-n8
-          - const: vamrs,rk3288-vmarc-som
-          - const: rockchip,rk3288
-
-      - description: Radxa ROCK Pi N10
-        items:
-          - const: radxa,rockpi-n10
-          - const: vamrs,rk3399pro-vmarc-som
-          - const: rockchip,rk3399pro
-
-      - description: Radxa ROCK Pi S
-        items:
-          - const: radxa,rockpis
-          - const: rockchip,rk3308
-
-      - description: Radxa Rock2 Square
-        items:
-          - const: radxa,rock2-square
-          - const: rockchip,rk3288
-
-      - description: Radxa ROCK 3A
-        items:
-          - const: radxa,rock3a
-          - const: rockchip,rk3568
-
-      - description: Radxa ROCK 3B
-        items:
-          - const: radxa,rock-3b
-          - const: rockchip,rk3568
-
-      - description: Radxa ROCK 3C
-        items:
-          - const: radxa,rock-3c
-          - const: rockchip,rk3566
-
       - description: Radxa ROCK 5 ITX
         items:
           - const: radxa,rock-5-itx
@@ -1018,16 +985,49 @@ properties:
           - const: radxa,rock-5c
           - const: rockchip,rk3588s
 
-      - description: Radxa ROCK S0
-        items:
-          - const: radxa,rock-s0
-          - const: rockchip,rk3308
-
       - description: Radxa ROCK 5T
         items:
           - const: radxa,rock-5t
           - const: rockchip,rk3588
 
+      - description: Radxa ROCK Pi 4A/A+/B/B+/C
+        items:
+          - enum:
+              - radxa,rockpi4a
+              - radxa,rockpi4a-plus
+              - radxa,rockpi4b
+              - radxa,rockpi4b-plus
+              - radxa,rockpi4c
+          - const: radxa,rockpi4
+          - const: rockchip,rk3399
+
+      - description: Radxa ROCK Pi E
+        items:
+          - const: radxa,rockpi-e
+          - const: rockchip,rk3328
+
+      - description: Radxa ROCK Pi N8
+        items:
+          - const: radxa,rockpi-n8
+          - const: vamrs,rk3288-vmarc-som
+          - const: rockchip,rk3288
+
+      - description: Radxa ROCK Pi N10
+        items:
+          - const: radxa,rockpi-n10
+          - const: vamrs,rk3399pro-vmarc-som
+          - const: rockchip,rk3399pro
+
+      - description: Radxa ROCK Pi S
+        items:
+          - const: radxa,rockpis
+          - const: rockchip,rk3308
+
+      - description: Radxa ROCK S0
+        items:
+          - const: radxa,rock-s0
+          - const: rockchip,rk3308
+
       - description: Radxa ZERO 3E/3W
         items:
           - enum:
-- 
2.43.0


