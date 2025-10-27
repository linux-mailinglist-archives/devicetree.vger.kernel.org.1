Return-Path: <devicetree+bounces-231480-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F1D0C0D882
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 13:31:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9F886188A7FF
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 12:29:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D7AB303A14;
	Mon, 27 Oct 2025 12:27:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D79B2F83BC
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 12:27:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761568052; cv=none; b=nea/0jWv6Zi0pRSi0UvcJGyLrNWS4xXJsX/+x4arsDeASvDyMWZuPF5iLvW52f8tYw71xwzVF2WKlJjIdZcKOcVl2ZN0mwY0D92kq0jknadCM8cAkeXtl/P3pUNmiGBBdIh1bh9PMnEO68Wj+ZDoC6p7IBUsdPF/23R2B0vrf5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761568052; c=relaxed/simple;
	bh=DXGsNZFhrZZo2drQYo1Qz5DrMz7xic8uC94m7YXl9uM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=PMrhrkv0xFBttUEwjAeTDvSW+qOUy+WBNRWifFJHlXzx2vQb8Js1QsbT+X/4C4wT/7JAYFqiCQxu4arM3T6QmcDThR371zD99dn290uyEFYtAlGHTQf4SK5bkGkcxtm/zG+3uMZO2Lhur2CPb3x3zLbb4nrGIiBzs6ekgnXsQ3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 59RCQuqY031809;
	Mon, 27 Oct 2025 21:27:00 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, jonas@kwiboo.se,
        dsimic@manjaro.org, amadeus@jmu.edu.cn, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 1/5] dt-bindings: arm: rockchip: Fix description for Radxa Rock2 Square
Date: Mon, 27 Oct 2025 12:26:37 +0000
Message-ID: <20251027122641.39396-2-naoki@radxa.com>
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

The name 'Rock 2' is incorrect; 'Rock2' is correct. Fix this.

Fixes: d78084cdb5a95 ("dt-bindings: arm: rockchip: Correct the descriptions for Radxa boards")
Link: https://wiki.radxa.com/Rock2
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index ba61ea7436132..6ef377e66b1fb 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -973,7 +973,7 @@ properties:
           - const: radxa,rockpis
           - const: rockchip,rk3308
 
-      - description: Radxa Rock 2 Square
+      - description: Radxa Rock2 Square
         items:
           - const: radxa,rock2-square
           - const: rockchip,rk3288
-- 
2.43.0


