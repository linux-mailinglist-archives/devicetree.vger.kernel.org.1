Return-Path: <devicetree+bounces-250045-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5167DCE5F61
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 06:08:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C0BEB300D41F
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 05:08:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94F6C228CA9;
	Mon, 29 Dec 2025 05:08:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C66C2222D2
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 05:08:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766984910; cv=none; b=Izld0FMn70EjNoD/VjaXTnbL0/TLmBJgFTNtluuylqV5Wl/qammFCEWJEgGbh3CaYnLfT4LFEe17lFDfevhn6eEMck4lbiySbenKOnIKn0xqRWuumf9klSYfAi/xrdhbdcJ567RALT7+KVY/CoMDp8jmbCkqnDHtMwvc5DgtJkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766984910; c=relaxed/simple;
	bh=1AybcY9r1UpyryCQ3hjvXSxavGLhUTrQwKLRoj97obU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Z+LtX4rYtn3Og5EcGhRAbMQzougUkLOl6LXTIUqYORbelI1atbIssI+SPdW5YfirIhOawwmIEfysimDqJeNt7O3srZKpREukiWD6oe9XNJk3bI1DwqX3PIN5+vG1QpgSZaOsfMsND4EWcsxh0JU5Ve7mlab43NQewMkHr5gUy5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 5BT4wkSE012448;
	Mon, 29 Dec 2025 13:58:49 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, jonas@kwiboo.se,
        i@next.chainsx.cn, kever.yang@rock-chips.com,
        michael.opdenacker@rootcommit.com, honyuenkwun@gmail.com,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 2/2] dt-bindings: arm: rockchip: fix description for Radxa CM5
Date: Mon, 29 Dec 2025 04:58:38 +0000
Message-ID: <20251229045838.2917-2-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251229045838.2917-1-naoki@radxa.com>
References: <20251229045838.2917-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

"Radxa CM5" is the correct name[1], so fix the description. While at
it, move the CM5 entry after the CM3I.

[1] https://dl.radxa.com/cm5/radxa_cm5_product_brief.pdf

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 .../devicetree/bindings/arm/rockchip.yaml          | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 410a9715a0fc..59a7aed538b4 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -907,13 +907,6 @@ properties:
           - const: radxa,cm3
           - const: rockchip,rk3566
 
-      - description: Radxa Compute Module 5 (CM5)
-        items:
-          - enum:
-              - radxa,cm5-io
-          - const: radxa,cm5
-          - const: rockchip,rk3588s
-
       - description: Radxa CM3I
         items:
           - enum:
@@ -921,6 +914,13 @@ properties:
           - const: radxa,cm3i
           - const: rockchip,rk3568
 
+      - description: Radxa CM5
+        items:
+          - enum:
+              - radxa,cm5-io
+          - const: radxa,cm5
+          - const: rockchip,rk3588s
+
       - description: Radxa E20C
         items:
           - const: radxa,e20c
-- 
2.43.0


