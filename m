Return-Path: <devicetree+bounces-252779-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id BA9E1D029BC
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 13:26:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 18F98382A31E
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 12:03:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7B1448A722;
	Thu,  8 Jan 2026 11:35:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85BE048A2DD
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 11:35:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767872107; cv=none; b=H7dsO76FjKKoCBdUPzsUQtnCPjpFB4r9zcblq7VE4qiw2SejkxpRz7yqjJ92zPtAxXyXyoBQQ19LpkJyUI4/JjN5aneSFrULvPw32mhsomSf731saSRebAAyVzgmIOv+AikKiEdjGK6eTR3Groc65I8xQd6fF/MQFpWmsNGxAOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767872107; c=relaxed/simple;
	bh=rkk+tMR+Y3s3gcREJ1yiYLsDh8dV7UbKUhnejyfW2i8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Ii6o/hS7Eyw0bMnqbAFiBFVvBo31w7+GjaCUTHth0gqTBDW8vnPPJeNbh7K8I4yM0ua0fKn1PxJHvCxP+/FfjqBOTrau96AXaJVfqoHuHpXLNXTsGCEx3zM5X1IKs7iQ7v4HHhWTOyErBn/gi957iW99ucBPgrLQgQK1XyyuJN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 608BXjVW009034;
	Thu, 8 Jan 2026 20:33:45 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        catalin.marinas@arm.com, will@kernel.org, jonas@kwiboo.se,
        honyuenkwun@gmail.com, inindev@gmail.com,
        michael.opdenacker@rootcommit.com, chaoyi.chen@rock-chips.com,
        quentin.schulz@cherry.de, dsimic@manjaro.org, andrew@lunn.ch,
        alchark@gmail.com, pbrobinson@gmail.com, ziyao@disroot.org,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v2 1/3] dt-bindings: arm: rockchip: Add Radxa CM3J on RPi CM4 IO Board
Date: Thu,  8 Jan 2026 11:33:39 +0000
Message-ID: <20260108113341.14037-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Radxa CM3J is a feature rich industrial compute module developed
by Radxa, based on the Rockchip RK3568 SoC. [1]

Add devicetree binding documentation for the Radxa CM3J on RPi CM4 IO
Board.

[1] https://dl.radxa.com/cm3j/docs/hw/radxa_cm3j_product_brief_Revision_1.0.pdf

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
---
Changes in v2:
- Collect A-b tag
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 59a7aed538b4..d344a284e538 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -914,6 +914,13 @@ properties:
           - const: radxa,cm3i
           - const: rockchip,rk3568
 
+      - description: Radxa CM3J
+        items:
+          - enum:
+              - radxa,cm3j-rpi-cm4
+          - const: radxa,cm3j
+          - const: rockchip,rk3568
+
       - description: Radxa CM5
         items:
           - enum:
-- 
2.43.0


