Return-Path: <devicetree+bounces-92017-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 12DE694B979
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2024 11:04:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B2D871F20F60
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2024 09:04:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E7E9188004;
	Thu,  8 Aug 2024 09:04:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 075D1145B0C
	for <devicetree@vger.kernel.org>; Thu,  8 Aug 2024 09:04:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723107887; cv=none; b=jXlYCbSTctHJbyAanL2JNpcGD8VfFxHIPgtrHH1SRDQ8mQz+r7RlWfhpOOXiae8cSOYaPjx9SxTogJQhyvyzmcEJABJept1OTPYx8J3JTrbOqnPjASBmIimWrmMpNcj20pSq3QWtoAMPPBEZipPFEr7iJfMdDTS2tRUl1MNY7Rg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723107887; c=relaxed/simple;
	bh=i9Fl3rYGj31C97PrKD5bBecYCys2XfP2lMfgMGT2iok=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=exfBPWQ12f8QnjnoqiRQpA5vmX4lwA6KXdidBoxu02yen/KbJXuBiCH3loiomxUnq3k9nRp5Bf7eRFxw0jYkTV8hS1sIFUSDwhARu71akRwbeHXX/IdVVELvPaIoOWaBC81kR5X/7vKrtkwCMx1J31CMiBzC8ut5WqO4sr8GxGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 478949nr030069;
	Thu, 8 Aug 2024 18:04:10 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [RFC v2 1/2] dt-bindings: arm: rockchip: add Radxa E52C
Date: Thu,  8 Aug 2024 18:04:04 +0900
Message-ID: <20240808090405.738-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add devicetree binding for the Radxa E52C.

Radxa E52C is a compact network computer using the Rockchip RK3582
chip.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changes in v2:
- none
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 2ad835f4068e..ba6d03b37bef 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -759,6 +759,12 @@ properties:
           - const: radxa,cm3i
           - const: rockchip,rk3568
 
+      - description: Radxa E52C
+        items:
+          - enum:
+              - radxa,e52c
+          - const: rockchip,rk3588s
+
       - description: Radxa Rock
         items:
           - const: radxa,rock
-- 
2.43.0


