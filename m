Return-Path: <devicetree+bounces-104313-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C64697DF5E
	for <lists+devicetree@lfdr.de>; Sun, 22 Sep 2024 00:21:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3F7391F210BC
	for <lists+devicetree@lfdr.de>; Sat, 21 Sep 2024 22:21:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F027D1547CD;
	Sat, 21 Sep 2024 22:21:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="KAyi3mxc"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [207.246.76.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 116317DA6E
	for <devicetree@vger.kernel.org>; Sat, 21 Sep 2024 22:21:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=207.246.76.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726957270; cv=none; b=c9AertB12d0RCTK7LL2WE3WBY/kOLPV3oNzRUjGw5nus/6pZUtnOFhMaMGzrMGbbSmz3YTaM2pKn9Ba+oa3EHKmpBKrIocOfAzBKP9Xb9NHQWsPsJOaL/atZxoTPw3m1tTBy1phUjiOoliMhQ0RVuoErUkmSVdeLIrfA0VlgDv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726957270; c=relaxed/simple;
	bh=p+1BIaT8kSMswDxJwX1gQqgeENAGd1miWO8oxKnxVXI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=BHvew+S4d4dwjSdcGwAKd5C379uY/PqLR7tMagTXn/iYjCFSnysFw3FRnW+KR8WyORlb/obx8o9L5HnTnYu05C4dLekIDcnW0jHhqsTdf8nL2Fd0imclkEij4EAi6BDnHBAN86U0lWgOJS2PgFJGBkh8SkIJesDCZseOIBaON7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=KAyi3mxc; arc=none smtp.client-ip=207.246.76.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1726957241; bh=83YVW5OYUCMyv+K4hF+rZLCGivVi+6ztPahHaGSzq38=;
 b=KAyi3mxcuaykdnHyb/UcXZwcOTQhrHtUXCiA3t2a6b+m6FCoVYmLQLRSj41xFiYCpsqFZjVCq
 Bs2HLZl1byfOqRM+DEMs8F+h7KFdrwTE6NIgtpjclzLVVJbSUnkGq+k6jnhar0kKaoyT6cQoBjS
 e1wk35rqqCadBcwggWnFBJP+vctxOBgaYII6l/NPPuRtqrI4fmWQ2CeiHEr7jfgJY/fLoBUHNtH
 gXdGgAcusIulsjpIqBsUWCdjdNhFYD6U7cNiWJ+PFUYwQ/0g+mnrohFiUhGHs9//iqn5q4/uTP4
 3D226GaR2jzNj7BBQB7tMliyh0glhJ4w3MPwE8g4dr0A==
From: Jonas Karlman <jonas@kwiboo.se>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sandy Huang <hjc@rock-chips.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH 1/3] dt-bindings: display: rockchip-vop: Split rk3288-vop into big and lit
Date: Sat, 21 Sep 2024 22:20:01 +0000
Message-ID: <20240921222007.2301868-2-jonas@kwiboo.se>
X-Mailer: git-send-email 2.46.1
In-Reply-To: <20240921222007.2301868-1-jonas@kwiboo.se>
References: <20240921222007.2301868-1-jonas@kwiboo.se>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 207.246.76.47
X-ForwardEmail-ID: 66ef46b718c10b4d4a165d05

The Rockchip RK3288 SoC contain two different Visual Output Processor
(VOP) blocks, VOP_BIG and VOP_LIT. The VOP blocks support different max
output resolution, 3840x2160 and 2560x1600.

Add compatible to differentiate between the two VOP blocks.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 .../display/rockchip/rockchip-vop.yaml        | 36 +++++++++++--------
 1 file changed, 21 insertions(+), 15 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop.yaml
index b339b7e708c6..ce4169b030af 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop.yaml
@@ -17,21 +17,27 @@ maintainers:
 
 properties:
   compatible:
-    enum:
-      - rockchip,px30-vop-big
-      - rockchip,px30-vop-lit
-      - rockchip,rk3036-vop
-      - rockchip,rk3066-vop
-      - rockchip,rk3126-vop
-      - rockchip,rk3188-vop
-      - rockchip,rk3228-vop
-      - rockchip,rk3288-vop
-      - rockchip,rk3328-vop
-      - rockchip,rk3366-vop
-      - rockchip,rk3368-vop
-      - rockchip,rk3399-vop-big
-      - rockchip,rk3399-vop-lit
-      - rockchip,rv1126-vop
+    oneOf:
+      - items:
+          - enum:
+              - rockchip,rk3288-vop-big
+              - rockchip,rk3288-vop-lit
+          - const: rockchip,rk3288-vop
+      - enum:
+          - rockchip,px30-vop-big
+          - rockchip,px30-vop-lit
+          - rockchip,rk3036-vop
+          - rockchip,rk3066-vop
+          - rockchip,rk3126-vop
+          - rockchip,rk3188-vop
+          - rockchip,rk3228-vop
+          - rockchip,rk3288-vop
+          - rockchip,rk3328-vop
+          - rockchip,rk3366-vop
+          - rockchip,rk3368-vop
+          - rockchip,rk3399-vop-big
+          - rockchip,rk3399-vop-lit
+          - rockchip,rv1126-vop
 
   reg:
     minItems: 1
-- 
2.46.1


