Return-Path: <devicetree+bounces-231482-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AEABC0D885
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 13:31:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E169619C01B1
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 12:29:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B8213009F7;
	Mon, 27 Oct 2025 12:27:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 900003016F5
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 12:27:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761568059; cv=none; b=JWyUMEVFXhWU2Wk/pwbHXVoN3xI3MOvw3HPg+X7CNsfhtfnQhPhgWhG2lbPWMPO/ifl/HgMLCxzdv+zDCRhmii49A56hxDmQfrrz+VY4MgypPjpAErYSR1Di8ATst4M/3k1pHo6yhtuhXMpCjEII/wepi8uR4Dfm/F+yngcPFVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761568059; c=relaxed/simple;
	bh=GOpHMpl3fmi6kDQ+uQvPRzFZsdWl+rrIYU6vfZMtDOo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=egZ91txNOjSpicDa37qNGPmBeY3E7TvdX1tYcOPxS/koogUrv8z4Y/zzKgDQQ407ZVh46GH39XL7AzOcROfEfnkphj0kUXNGES0w7rrMCdftHZ2wTYTWbXOXcYquSsu5qBrozqEWUFFqxCl91K3639jSCJG6HegwA/l231VOdZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 59RCQuqZ031809;
	Mon, 27 Oct 2025 21:27:00 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, jonas@kwiboo.se,
        dsimic@manjaro.org, amadeus@jmu.edu.cn, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 2/5] dt-bindings: arm: rockchip: Fix description for Radxa ZERO 3E/3W
Date: Mon, 27 Oct 2025 12:26:38 +0000
Message-ID: <20251027122641.39396-3-naoki@radxa.com>
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

"3E" precedes "3W" in alphanumeric order. Fix this.

Fixes: ad986e45ada99 ("dt-bindings: arm: rockchip: Add Radxa ZERO 3W/3E")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 6ef377e66b1fb..15153e08d3881 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -1028,7 +1028,7 @@ properties:
           - const: radxa,rock-5t
           - const: rockchip,rk3588
 
-      - description: Radxa ZERO 3W/3E
+      - description: Radxa ZERO 3E/3W
         items:
           - enum:
               - radxa,zero-3e
-- 
2.43.0


