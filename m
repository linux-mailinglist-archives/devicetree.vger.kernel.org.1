Return-Path: <devicetree+bounces-68247-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 39E678CB540
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 23:15:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E9F56283C44
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 21:15:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 366E514A0B8;
	Tue, 21 May 2024 21:11:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="rNL+pzDm"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [167.172.40.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92E321514E4
	for <devicetree@vger.kernel.org>; Tue, 21 May 2024 21:11:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=167.172.40.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716325887; cv=none; b=Jfk4ZBRilvLQ1QZQUEmFo1XqCKZJQF5NPBZReewJo7PLDTrts6BCQ2epLOeeT1q0LmlpzDsfE6MdYBGv43GrLzVL1lA5vXy/1bLl8MzCwdCIzH1nbenGABXZSToEc/1ef02qkn6w8osT+PziaqrlsXlkwpBiymTabh8zrYP8m6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716325887; c=relaxed/simple;
	bh=Y30ceGqckoTbulkjj+006ptRCarsoInM1Ia0qkC6q8Q=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=OPIy/QbbJR9O3Qkt4Qo64zeXEIfQAhx9WfV4EDdSjWdBcsGVUqFNNxL8dCiGqFOS2cnFuSSlXznHaYkweD0ajJk+DIhDNhr7jnfdODwplNZ3KXXuZdetnkPXMJqXTZbf9YV3rwroXWOWSB6feaPwMWEU/931kLrWllLbS7Z5P0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=rNL+pzDm; arc=none smtp.client-ip=167.172.40.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1716325876; bh=K5yAjzEaLtFOa4kSsCuv53z0xE/nN5Eju4FGamxvgXQ=;
 b=rNL+pzDmC8uQ6XOIaFwDkSd/t0qyPl4sfX5cGEQ+fTvQdfaEXpxqOaytKGoouQDEUUoP/YY9d
 PkfVLAbKvaTRSQZobSd27BRlP7Fq/pybnTEl70pw4x0nUavL67KeHXoRk5RZU4qp8SL/XoE6pvF
 oRZiTaYhNBiwLrcPM/0fsQO9AX3iO6FUY6JyDKeFGiR5xisWpRHCtdqIYmLT1Z+vuBByT+7QKtM
 4GapiCfXprcNLM4ozimh6AQUlM9+y5FAY2uqNXsp1F7fPWite/9jgIC+lcP68FVOOSsCcDsaSxp
 4vlR4/2azrcgfP+RGJtrBIlIlg0kJItJMVa6+7ZiV0Fg==
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Jonas
 Karlman <jonas@kwiboo.se>
Subject: [PATCH 09/13] dt-bindings: power: rockchip: Document RK3308 IO voltage domains
Date: Tue, 21 May 2024 21:10:12 +0000
Message-ID: <20240521211029.1236094-10-jonas@kwiboo.se>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240521211029.1236094-1-jonas@kwiboo.se>
References: <20240521211029.1236094-1-jonas@kwiboo.se>
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
 167.172.40.54
X-ForwardEmail-ID: 664d0df08b6b0c828344af3d

Document dt-bindings for RK3308 IO voltage domains.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 .../bindings/power/rockchip-io-domain.yaml    | 24 +++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/Documentation/devicetree/bindings/power/rockchip-io-domain.yaml b/Documentation/devicetree/bindings/power/rockchip-io-domain.yaml
index d71fc72d4464..c434277218ea 100644
--- a/Documentation/devicetree/bindings/power/rockchip-io-domain.yaml
+++ b/Documentation/devicetree/bindings/power/rockchip-io-domain.yaml
@@ -50,6 +50,7 @@ properties:
       - rockchip,rk3188-io-voltage-domain
       - rockchip,rk3228-io-voltage-domain
       - rockchip,rk3288-io-voltage-domain
+      - rockchip,rk3308-io-voltage-domain
       - rockchip,rk3328-io-voltage-domain
       - rockchip,rk3368-io-voltage-domain
       - rockchip,rk3368-pmu-io-voltage-domain
@@ -71,6 +72,7 @@ allOf:
   - $ref: "#/$defs/rk3188"
   - $ref: "#/$defs/rk3228"
   - $ref: "#/$defs/rk3288"
+  - $ref: "#/$defs/rk3308"
   - $ref: "#/$defs/rk3328"
   - $ref: "#/$defs/rk3368"
   - $ref: "#/$defs/rk3368-pmu"
@@ -194,6 +196,28 @@ $defs:
         wifi-supply:
           description: The supply connected to APIO3_VDD. Also known as SDIO0.
 
+  rk3308:
+    if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rk3308-io-voltage-domain
+
+    then:
+      properties:
+        vccio0-supply:
+          description: The supply connected to VCCIO0.
+        vccio1-supply:
+          description: The supply connected to VCCIO1.
+        vccio2-supply:
+          description: The supply connected to VCCIO2.
+        vccio3-supply:
+          description: The supply connected to VCCIO3.
+        vccio4-supply:
+          description: The supply connected to VCCIO4.
+        vccio5-supply:
+          description: The supply connected to VCCIO5.
+
   rk3328:
     if:
       properties:
-- 
2.43.2


