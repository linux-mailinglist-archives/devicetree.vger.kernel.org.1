Return-Path: <devicetree+bounces-134004-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 486FE9FC7B8
	for <lists+devicetree@lfdr.de>; Thu, 26 Dec 2024 03:47:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CE9D0162AFF
	for <lists+devicetree@lfdr.de>; Thu, 26 Dec 2024 02:47:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A63E128DD0;
	Thu, 26 Dec 2024 02:47:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8971C133
	for <devicetree@vger.kernel.org>; Thu, 26 Dec 2024 02:47:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735181256; cv=none; b=UlZ64HtvULjXMZfYSfSiIai+1lcdllmlGYu1Qtk9kZwBENPpUBDg2rYbIuscs5GhLZzy2BQOIZORtBV7lu6AXWKXhDVkD+V2JdedbE00F0cGAWQvYMO0SwbqqxuJpgr12j24gZ1h+wcezFD2tujX7DsKvYmrhmhjREVnabhTHBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735181256; c=relaxed/simple;
	bh=M/kf36A/UUzBW9olSYqSZVS6Mui1Pve31SEe0MYqZII=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Di96oOV6s6414sA3e5Qy9m7IvfwFqafHqtoG5DTUsQs55yyvHriA+I6HaPmBoBUU3w29bPSlu4mODKo9iyxRgasLutFm8TTuExD20Hx+nTtei5Kc1BrlwcC6ViWWY0lXHwlKjJVMba/CHrJem2m6u4RTKTNr1v1gaolZLoHvzW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4BQ2kbEL004300;
	Thu, 26 Dec 2024 11:46:39 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, jonas@kwiboo.se,
        macromorgan@hotmail.com, dmt.yashin@gmail.com,
        liujianfeng1994@gmail.com, dsimic@manjaro.org, tim@feathertop.org,
        marcin.juszkiewicz@linaro.org, michael.riesch@wolfvision.net,
        cfsworks@gmail.com, cristian.ciocaltea@collabora.com, jing@jing.rocks,
        jbx6244@gmail.com, sebastian.reichel@collabora.com,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 1/2] dt-bindings: arm: rockchip: Add Radxa E52C
Date: Thu, 26 Dec 2024 02:46:29 +0000
Message-ID: <20241226024630.13702-2-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241226024630.13702-1-naoki@radxa.com>
References: <20241226024630.13702-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add devicetree binding for the Radxa E52C.

Radxa E52C is a compact network computer based on the Rockchip RK3582
SoC.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changes in v3:
- Collect A-b tag
Changes in v2:
- Add "rockchip,rk3588s"
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 753199a12923..2152d170524a 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -812,6 +812,12 @@ properties:
           - const: radxa,e20c
           - const: rockchip,rk3528
 
+      - description: Radxa E52C
+        items:
+          - const: radxa,e52c
+          - const: rockchip,rk3582
+          - const: rockchip,rk3588s
+
       - description: Radxa Rock
         items:
           - const: radxa,rock
-- 
2.43.0


