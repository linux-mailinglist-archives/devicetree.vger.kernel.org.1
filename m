Return-Path: <devicetree+bounces-136037-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A0AAA03909
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 08:49:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CA73A3A501A
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 07:49:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E670158868;
	Tue,  7 Jan 2025 07:49:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="hYHrX78d"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m127100.qiye.163.com (mail-m127100.qiye.163.com [115.236.127.100])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4A3E1DF740;
	Tue,  7 Jan 2025 07:49:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=115.236.127.100
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736236174; cv=none; b=Gvuwde9uNUBFowKqfRd5txybJuQgHhbtZBCT9STS+0AfVLgIIgRaSxwuzY2tWeB4yPewyn+4diTI9jTI6Rv6kkxRZiZu4FrMDSKtRQa6FOOrtbh+rYS8qEtK8yMmUs+EZsGQ7fDGGY7yTT4iPdNZTJNpTCDQoKFoWALJNIK/gdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736236174; c=relaxed/simple;
	bh=sfECFmrOdNvUXEEusnYkXHGUFQZw54Q174lWTS7V4yY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=GysQLLrNxzRLUpynTxcdmGj7ybrBlEBzjQsoPsKUTuiuOO3Ug0tSqHuWx3R83/vXKUQL5XPf2jOih9xQRL8xYz5IHvDwxrp7w/Y8Y0Iee6ecEAA2LHAUwKfEPh96mRdbz1exO6AQQbQ2sU1xRbiFKG8OJl3j6jrPpdtD9Oxw+V8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=hYHrX78d; arc=none smtp.client-ip=115.236.127.100
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 7f3b5a97;
	Tue, 7 Jan 2025 15:49:21 +0800 (GMT+08:00)
From: Kever Yang <kever.yang@rock-chips.com>
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org,
	Kever Yang <kever.yang@rock-chips.com>,
	Conor Dooley <conor.dooley@microchip.com>,
	devicetree@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>,
	Chris Morgan <macromorgan@hotmail.com>,
	Rob Herring <robh@kernel.org>,
	Dragan Simic <dsimic@manjaro.org>,
	Jonas Karlman <jonas@kwiboo.se>,
	linux-kernel@vger.kernel.org,
	Tim Lunn <tim@feathertop.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 5/7] dt-bindings: arm: rockchip: Sort for boards not in correct order
Date: Tue,  7 Jan 2025 15:49:09 +0800
Message-Id: <20250107074911.550057-6-kever.yang@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250107074911.550057-1-kever.yang@rock-chips.com>
References: <20250107074911.550057-1-kever.yang@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGR1CTFZLTUIaSx0fGh8YS01WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a943fbd59ba03afkunm7f3b5a97
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OE06Aio*FTIRAxM3SSo1SAEh
	Ti0aFD9VSlVKTEhNSUhNSk1JQ05LVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFISUpLNwY+
DKIM-Signature:a=rsa-sha256;
	b=hYHrX78dVT9Z2Cm3e9bxy0rM7H+FPJ5m+rpzZPbtOlTqP2WpeT33VTPzQ54M0yWDqdnMcm8NkR7gg99tTJNz0jIM9W039ZDiAP9EzNBTC5cVXJnAAff5oZVC3xhk9RsHSaEjPmM5sYnVPwuZr5vHADhsl0+SlUuDXkSfvh0zf7I=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=JdLym5gWP7Ggt3zKKLw5r/EC2/WqbZu0Dz4bqOTYEU0=;
	h=date:mime-version:subject:message-id:from;

The board entries should be sort in correct order by the description
string.

Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---

Changes in v4:
- Update the commit msg with sort rule per required by Krzysztof.

Changes in v3:
- sort for all the board entries instead of two rockchip boards
which suggested by Diederik

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


