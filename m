Return-Path: <devicetree+bounces-133521-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B2A0D9FAD88
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 12:12:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 13795166549
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 11:12:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22EEA199FD3;
	Mon, 23 Dec 2024 11:12:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="iGkxeeFC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m12787.qiye.163.com (mail-m12787.qiye.163.com [115.236.127.87])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A7BC19342E;
	Mon, 23 Dec 2024 11:12:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=115.236.127.87
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734952328; cv=none; b=BXuFvsNCVg8tEUc9OmjmzCoTaipTo0sVMkoR6vYAjvqOFWYeVkjKFUvoeIaBXLHmNzhSTnZ8QgEZlCQG6xuZwrrV/o8jfRKM2yILJ4SFyQmFcdqj3JgXDGvIdPcnrdqgH9i05HaT2lZiFlyXqhbWY/0ml+k9C2OoshqLx72wyQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734952328; c=relaxed/simple;
	bh=LfKwwyl7alD9CnNMSzVwUAxzAaK3cVDkkjEX0h1oMPA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=N9j3ByzJdUHptodk/UW6dZyfDNrwLhbIHuR/BDLfG9T9Sq76gzEck/idxDVmLER13JC+8JPx7D5FE/HJGGBqU7NbPGB4IiE3J5a3VKoZksDIAb+G07Et8gonYk6dOAiH4O9QqwFIteXEJa+GzLnYmutGTQeMN1eGFa9Zte/9NbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=iGkxeeFC; arc=none smtp.client-ip=115.236.127.87
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 68ea0150;
	Mon, 23 Dec 2024 19:06:46 +0800 (GMT+08:00)
From: Kever Yang <kever.yang@rock-chips.com>
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org,
	Kever Yang <kever.yang@rock-chips.com>,
	devicetree@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>,
	Chris Morgan <macromorgan@hotmail.com>,
	Rob Herring <robh@kernel.org>,
	Dragan Simic <dsimic@manjaro.org>,
	Jonas Karlman <jonas@kwiboo.se>,
	linux-kernel@vger.kernel.org,
	Tim Lunn <tim@feathertop.org>,
	linux-arm-kernel@lists.infradead.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Andy Yan <andyshrk@163.com>
Subject: [PATCH v3 5/7] dt-bindings: arm: rockchip: Sort for boards not in correct order
Date: Mon, 23 Dec 2024 19:06:35 +0800
Message-Id: <20241223110637.3697974-6-kever.yang@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241223110637.3697974-1-kever.yang@rock-chips.com>
References: <20241223110637.3697974-1-kever.yang@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQkxDHVYZTB0dSkkdHhhJQhhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a93f332b4d603afkunm68ea0150
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NTY6NCo6QjIXTQEVN0guGQsT
	SAEaCwtVSlVKTEhPQk5JS0tDSk1CVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFIS0pNNwY+
DKIM-Signature:a=rsa-sha256;
	b=iGkxeeFCpdUTv3bKp+wW/NH4IVC6EgAjB050YMY/aswBEt2pQWHpTUPXLNF+2YaPxx4LQ+e44RR8vtTwZMltD+zAxxA4FMigEXBQZfjjT6qm0cp3JFsJeM7ujmY/6T62L7pRv7vVgb7YGXdd/ZEnWKYGsiysuaDJFmpUSq7mor8=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=N1K2VnyUOqJ4B5E/eD8RKPLqp0gDhXgfq2tw0oZIl3A=;
	h=date:mime-version:subject:message-id:from;

The board entries should be sort in correct order.

Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
---

Changes in v3:
- sort for all the board entries instead of two rockchip boards

Changes in v2:
- collect acked-by tag

 .../devicetree/bindings/arm/rockchip.yaml     | 54 +++++++++----------
 1 file changed, 27 insertions(+), 27 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 753199a12923..01439d7bbde9 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -1006,6 +1006,16 @@ properties:
           - const: rockchip,rk3399-sapphire-excavator
           - const: rockchip,rk3399
 
+      - description: Rockchip RK3566 BOX Evaluation Demo board
+        items:
+          - const: rockchip,rk3566-box-demo
+          - const: rockchip,rk3566
+
+      - description: Rockchip RK3568 Evaluation board
+        items:
+          - const: rockchip,rk3568-evb1-v10
+          - const: rockchip,rk3568
+
       - description: Rockchip RK3588 Evaluation board
         items:
           - const: rockchip,rk3588-evb1-v10
@@ -1026,6 +1036,23 @@ properties:
           - const: rockchip,rk3588-toybrick-x0
           - const: rockchip,rk3588
 
+      - description: Sinovoip RK3308 Banana Pi P2 Pro
+        items:
+          - const: sinovoip,rk3308-bpi-p2pro
+          - const: rockchip,rk3308
+
+      - description: Sinovoip RK3568 Banana Pi R2 Pro
+        items:
+          - const: sinovoip,rk3568-bpi-r2pro
+          - const: rockchip,rk3568
+
+      - description: Sonoff iHost Smart Home Hub
+        items:
+          - const: itead,sonoff-ihost
+          - enum:
+              - rockchip,rv1126
+              - rockchip,rv1109
+
       - description: Theobroma Systems PX30-uQ7 with Haikou baseboard
         items:
           - const: tsd,px30-ringneck-haikou
@@ -1099,33 +1126,6 @@ properties:
           - const: zkmagic,a95x-z2
           - const: rockchip,rk3318
 
-      - description: Rockchip RK3566 BOX Evaluation Demo board
-        items:
-          - const: rockchip,rk3566-box-demo
-          - const: rockchip,rk3566
-
-      - description: Rockchip RK3568 Evaluation board
-        items:
-          - const: rockchip,rk3568-evb1-v10
-          - const: rockchip,rk3568
-
-      - description: Sinovoip RK3308 Banana Pi P2 Pro
-        items:
-          - const: sinovoip,rk3308-bpi-p2pro
-          - const: rockchip,rk3308
-
-      - description: Sinovoip RK3568 Banana Pi R2 Pro
-        items:
-          - const: sinovoip,rk3568-bpi-r2pro
-          - const: rockchip,rk3568
-
-      - description: Sonoff iHost Smart Home Hub
-        items:
-          - const: itead,sonoff-ihost
-          - enum:
-              - rockchip,rv1126
-              - rockchip,rv1109
-
 additionalProperties: true
 
 ...
-- 
2.25.1


