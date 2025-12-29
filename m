Return-Path: <devicetree+bounces-250044-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 515C6CE5F5E
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 06:08:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E53A2300D42C
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 05:08:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B20EB2222D2;
	Mon, 29 Dec 2025 05:08:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 136301F5847
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 05:08:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766984904; cv=none; b=phLAG30sObu/leJ888JOivTdwIJGGOmUry93JwGdAIATNCSsjOKdlWSvaZZL6BHY5DbRUK6ZpMYPedGYr3bu4DZXRGTNRSFg47wx1eLA+d9MNJfZvGaarf+CE4ZlePbgos2UsaKw2cM09+XvjiG1gVgqQr9yJ8W1wYpx/CYwWGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766984904; c=relaxed/simple;
	bh=AdPjOugVHY0egQ/zN9xwQAAVPab8pPH3Rqz5raW+7tU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=gVyOVyHCVlflWMioPL8ZBjppAhc0KIuUBzw0G1oPuaQy38S9Gg7Shpe6c+HBxbk76QpCuz1OPdra4eoOExnI4OSGzrK+74rZrAlU33El4MzxiyUfq5AiuHHSZGEio/Wdz2kLeMOkaXhgVA3kjOdATUT64zuHn20wDaAv6V2xaiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 5BT4wkSD012448;
	Mon, 29 Dec 2025 13:58:46 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, jonas@kwiboo.se,
        i@next.chainsx.cn, kever.yang@rock-chips.com,
        michael.opdenacker@rootcommit.com, honyuenkwun@gmail.com,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 1/2] dt-bindings: arm: rockchip: fix description for Radxa CM3I
Date: Mon, 29 Dec 2025 04:58:37 +0000
Message-ID: <20251229045838.2917-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

"Radxa CM3I" is the correct name[1], so fix the description.

[1] https://dl.radxa.com/cm3i/docs/hw/radxa_cm3i_product_brief.pdf

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 79e99694577e..410a9715a0fc 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -914,7 +914,7 @@ properties:
           - const: radxa,cm5
           - const: rockchip,rk3588s
 
-      - description: Radxa CM3 Industrial
+      - description: Radxa CM3I
         items:
           - enum:
               - radxa,e25
-- 
2.43.0


