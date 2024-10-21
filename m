Return-Path: <devicetree+bounces-113533-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B53449A5FBB
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 11:12:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4958B281B83
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 09:12:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D69C1E22ED;
	Mon, 21 Oct 2024 09:12:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 621E91D04BB
	for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 09:12:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729501953; cv=none; b=TkMi5b1K1HXcoULXhTWu6iGLU+XIYaFMEmZEOK9LPW+x0d2xZYGhohWvQOnKF6Y5Ztk1bW+cJB1j2jyBeGMuPWWlvrYOe/xmWqZJApUxR58bhs3626ceJ/X6v9hOkKLHbAa0GOj50T/a0NpvvcHKSkI35RUr+8pCF8uJOu1Cx2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729501953; c=relaxed/simple;
	bh=cOK3R7LIzoyrGxhyGfb3ynyA8pE4U5iXdwh2nm5tp2k=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=VCbPwBqzop6047Reb2O4Gg7VNaYfeTLnJJs8cmelCGGF0EhRJ7V5XHBhVgnz01RF3fb/PhVw677CKAUSUoJ+nrUDOxmzhXCeI81qmdS0g6rCtWlVVf+pW02cZ/RwAHl9hfN/t0RuoC10SE79AOfCpGDhQQvcJBMm1cVZTorz9E8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 49L96G5j012440;
	Mon, 21 Oct 2024 18:06:16 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        macromorgan@hotmail.com, jonas@kwiboo.se, andyshrk@163.com,
        tim@feathertop.org, jagan@edgeble.ai, dsimic@manjaro.org,
        michael.riesch@wolfvision.net, sebastian.reichel@collabora.com,
        cfsworks@gmail.com, kever.yang@rock-chips.com, jing@jing.rocks,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v2 RESEND 1/3] dt-bindings: arm: rockchip: add Radxa ROCK 5C
Date: Mon, 21 Oct 2024 09:05:46 +0000
Message-ID: <20241021090548.1052-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add devicetree binding for the Radxa ROCK 5C.

Radxa ROCK 5C is a 8K computer for everything[1] using the Rockchip
RK3588S2 chip.

[1] https://radxa.com/products/rock5/5c

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changes in v2:
- none
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 70bd2e4d1195..01d03f2157e1 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -890,6 +890,11 @@ properties:
           - const: radxa,rock-5b
           - const: rockchip,rk3588
 
+      - description: Radxa ROCK 5C
+        items:
+          - const: radxa,rock-5c
+          - const: rockchip,rk3588s
+
       - description: Radxa ROCK S0
         items:
           - const: radxa,rock-s0
-- 
2.43.0


