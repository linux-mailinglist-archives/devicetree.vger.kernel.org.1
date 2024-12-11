Return-Path: <devicetree+bounces-129600-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AF5B09EC49B
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 07:11:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A4FA0168491
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 06:11:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B66291C07DB;
	Wed, 11 Dec 2024 06:11:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 669405661
	for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 06:10:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733897463; cv=none; b=Fpo+8893AP8Xvju5YhYmcOlKbhPMRP2N9+ZGsHaArt3JqWQsoJjEERD06mpht6FNsI8KpvBGtmp0O7yaCewvKmZP81jmT+vwVe5nD5BeSzvDTrFbjLNmLowo1bhB/4v060jhSu2eT1DY//z9xbO2SNH+PDR2DMsVAotbREdTW6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733897463; c=relaxed/simple;
	bh=JmhkcVafcY7fE1DbsUrQwNfiKtkQOzp57Pe0KW1HbMA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Kg4BdF7IU9MGzXcMtxOF7K68Ksr/R/MCBswqUjlNNleRAojBA9cxk1b2oi8cgkQpc1220R8hOpdb4afciIb9H9m3PVIIuTUc/vAOm0F62r3NeL16a6yur3IVbf+hdEcdXWxpSyBMSnHWLuYIea9T5/BFYjnfHmGNCX6sM7+EhTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4BB69pr2006126;
	Wed, 11 Dec 2024 15:09:52 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        macromorgan@hotmail.com, jonas@kwiboo.se, andyshrk@163.com,
        liujianfeng1994@gmail.com, dsimic@manjaro.org, tim@feathertop.org,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH] dt-bindings: arm: rockchip: add Radxa ROCK 5C Lite
Date: Wed, 11 Dec 2024 06:09:36 +0000
Message-ID: <20241211060936.57452-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Radxa ROCK 5C Lite uses a different SoC (RK3582) compared to the
Radxa ROCK 5C (RK3588S2), but the two are compatible from a software
perspective.

Fixes: df4e08a5eed1 ("dt-bindings: arm: rockchip: add Radxa ROCK 5C")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 753199a12923..2254ee079094 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -895,7 +895,7 @@ properties:
           - const: radxa,rock-5b
           - const: rockchip,rk3588
 
-      - description: Radxa ROCK 5C
+      - description: Radxa ROCK 5C/5C Lite
         items:
           - const: radxa,rock-5c
           - const: rockchip,rk3588s
-- 
2.43.0


