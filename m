Return-Path: <devicetree+bounces-133136-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B86A9F95ED
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 16:59:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4AD59161564
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 15:59:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 384EF218E9F;
	Fri, 20 Dec 2024 15:58:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="KNgWgvQe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m15594.qiye.163.com (mail-m15594.qiye.163.com [101.71.155.94])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E1AB219A8C;
	Fri, 20 Dec 2024 15:58:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=101.71.155.94
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734710339; cv=none; b=CJpeseQtRvO6S2qQbh0k0SQXT1LYOVhggiHY1ScO7iLev0cRT9a302pAfmyGUwPwXUU9T8zNGcmc5aTJLYaJii+TQBD+4Ie3LLKnJ2aHp/s+Is4UlPGLle0utI+3y0jY4JljrT6oFahKevJnMTN5a6qu/iwzx3iTIIOkfDt59yA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734710339; c=relaxed/simple;
	bh=m0C2vIDcVbGWdNUTJDB1x5Fp1bZywQHuTe0TzMICUj0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=RsVOkXwhmC+22jZhSGRM044o8GDW1yhIr+sLEbCcV22kHGNkQZtw1xjLw4rESyIbKZGnbKkbD8iI+IDU2RFn23u5HM5882SPq7TaT6fOVnYnw1eEyCMSinaXKCJ1tSHj44joihDTH3pCcwTJCvxfMXQF2Y7BJPlc91LDHKvKifU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=KNgWgvQe; arc=none smtp.client-ip=101.71.155.94
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 655ee91d;
	Fri, 20 Dec 2024 18:16:00 +0800 (GMT+08:00)
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
	linux-arm-kernel@lists.infradead.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Jianfeng Liu <liujianfeng1994@gmail.com>,
	Andy Yan <andyshrk@163.com>
Subject: [PATCH v2 5/7] dt-bindings: arm: rockchip: Sort for rk3568 evb
Date: Fri, 20 Dec 2024 18:15:49 +0800
Message-Id: <20241220101551.3505917-6-kever.yang@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241220101551.3505917-1-kever.yang@rock-chips.com>
References: <20241220101551.3505917-1-kever.yang@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGR0fQ1ZCTkgZSU9PQx9JHUNWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a93e39125ff03afkunm655ee91d
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PEk6Lzo6ATIUUQgRCj4UMitR
	QgwaCQNVSlVKTEhPTUNCTE1JSUpOVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFKTE1KNwY+
DKIM-Signature:a=rsa-sha256;
	b=KNgWgvQeYFvSxv/FK+q6QnhfM247mnWi4DkigIfRkDMWOPtmJFdXb/9srfQdgzA8f12XmgV0UGGK5sCYGxvtKS62hc4IB0oGddS6LIP4X+bIFguYxRJ8St1TQG9TTZ9sPrhD6pwlcuoWsvaQdZ1OTcF3DrnKZGC/xfDN8ZUgu3s=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=gytLW1uJzuhhxQEZKDdgGHtaJwCeWoAiEDihz80BX/Y=;
	h=date:mime-version:subject:message-id:from;

The info for rk3568 should before rk3588.

Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---

Changes in v2:
- collect acked-by tag

 .../devicetree/bindings/arm/rockchip.yaml     | 20 +++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 753199a12923..45ee4bf7c80c 100644
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
@@ -1099,16 +1109,6 @@ properties:
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
       - description: Sinovoip RK3308 Banana Pi P2 Pro
         items:
           - const: sinovoip,rk3308-bpi-p2pro
-- 
2.25.1


