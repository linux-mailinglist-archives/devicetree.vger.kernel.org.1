Return-Path: <devicetree+bounces-137254-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 136E5A08693
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 06:40:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2DBB63A972E
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 05:39:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 315262063F0;
	Fri, 10 Jan 2025 05:39:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Exyo91DN"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08F78290F;
	Fri, 10 Jan 2025 05:39:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736487596; cv=none; b=ts60iAwhVo2GQLUCHz9XykHMKg03XUg1umHQrPuKLW7G3z0C8Gsk8ZhLmfAuQO/TFmNzjvadurxMP7rOG7IvCIQUePqpjXZ7i+FN1hZrzmORPvmlmPJ4ZAwtx1AvQt3JLfvA9LLMfx63vQUFsZgk5qs6/RISj35TZGXQiGIhNeo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736487596; c=relaxed/simple;
	bh=frtywl3wLzeQuIyk3GJEqbgkTJRh2VIXvwLzzjzOTNM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ok35vrN1h9ebB+G7nvugQKaWG3Ey+Wz3YBpaBVP/kH2CklxewtDYyh6s9oVRaa4/lV/xNDLsDV+it08bPvK4QCmLDYSi9EV97TEysSZYsOOIcDLE6/b9k1E8STuf5NWBNHeQLwCN4uJ0GjOjxWbqUHr3xOFxWqiLs4cLv9pguto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Exyo91DN; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACE4CC4AF09;
	Fri, 10 Jan 2025 05:39:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736487595;
	bh=frtywl3wLzeQuIyk3GJEqbgkTJRh2VIXvwLzzjzOTNM=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=Exyo91DNOy1DaVs+EQxxa+V/bU0ZwmmlcgtCFQojGXWf/nDpY0EeAo6K+mPdEH9yl
	 +V+KIZHWQKyE64xNQMdIa4yn5EFfc3Ama5ZWrYSMCw15ph5SzMS4pcaH/4U6t0/4Z7
	 xMl+bEQRIWLkTw2sOazgpUXDlf6xq7vd5rV8/ZPWE5yfUsthZ0wPxC3obpvP11gcsT
	 k4omQ3nuNOQkjp/uyGaYoqf0B4Ny315lu1kZfBcc2vbHyWW6MFVvN3Ee+OVEqDU541
	 ti+GIGh7QgUlrBwxv8aVFDoohw2nA0C2IPFajON5iulcR8eUPuz/lAfVhhjjes0uj/
	 VXb89s0UCfOrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E0C8E7719E;
	Fri, 10 Jan 2025 05:39:55 +0000 (UTC)
From: Ao Xu via B4 Relay <devnull+ao.xu.amlogic.com@kernel.org>
Date: Fri, 10 Jan 2025 13:39:52 +0800
Subject: [PATCH 02/11] dt-bindings: display: meson-vpu: Add compatible for
 S4 display controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250110-drm-s4-v1-2-cbc2d5edaae8@amlogic.com>
References: <20250110-drm-s4-v1-0-cbc2d5edaae8@amlogic.com>
In-Reply-To: <20250110-drm-s4-v1-0-cbc2d5edaae8@amlogic.com>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: dri-devel@lists.freedesktop.org, linux-amlogic@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Ao Xu <ao.xu@amlogic.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1736487593; l=2203;
 i=ao.xu@amlogic.com; s=20250103; h=from:subject:message-id;
 bh=7+BtboC52S07wz4NFzmNC6kZHvkpp2eBKVt3C4Xqx5Y=;
 b=CfujSyzUv9OLLfUTtlU/ZasbtyNhObfGZZzeJqGPSuymCtEYkqty8iYTDGqEc3XrrmliBV6r1
 pypNDhmrAXdCOb1JDhpEygzsZ+uDPnUt6CnWrJ0A1eycBeCoOwfv2gV
X-Developer-Key: i=ao.xu@amlogic.com; a=ed25519;
 pk=c0TSXrwQuL4EhPVf3lJ676U27ax2yfFTqmRoseP/fA8=
X-Endpoint-Received: by B4 Relay for ao.xu@amlogic.com/20250103 with
 auth_id=308
X-Original-From: Ao Xu <ao.xu@amlogic.com>
Reply-To: ao.xu@amlogic.com

From: Ao Xu <ao.xu@amlogic.com>

Add devicetree document for S4 VPU

Signed-off-by: Ao Xu <ao.xu@amlogic.com>
---
 .../bindings/display/amlogic,meson-vpu.yaml        | 48 ++++++++++++++++++++--
 1 file changed, 44 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/amlogic,meson-vpu.yaml b/Documentation/devicetree/bindings/display/amlogic,meson-vpu.yaml
index cb0a90f0232190031430c08f936b8f0d3b217601..3d7eceb3724e81d9c911039507df072d332a028f 100644
--- a/Documentation/devicetree/bindings/display/amlogic,meson-vpu.yaml
+++ b/Documentation/devicetree/bindings/display/amlogic,meson-vpu.yaml
@@ -66,14 +66,13 @@ properties:
           - const: amlogic,meson-gx-vpu
       - enum:
           - amlogic,meson-g12a-vpu # G12A (S905X2, S905Y2, S905D2)
+          - amlogic,meson-s4-vpu # S4 (S905Y4)
 
   reg:
-    maxItems: 2
+    minItems: 2
 
   reg-names:
-    items:
-      - const: vpu
-      - const: hhi
+    minItems: 2
 
   interrupts:
     maxItems: 1
@@ -117,6 +116,47 @@ required:
   - "#size-cells"
   - amlogic,canvas
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: amlogic,meson-s4-vpu
+    then:
+      properties:
+        reg:
+          items:
+            - description: vcbus registers
+            - description: hhi registers
+            - description: clkctrl registers
+            - description: power control registers
+            - description: sysctrl registers
+        reg-names:
+          items:
+            - const: vpu
+            - const: hhi
+            - const: clkctrl
+            - const: pwctrl
+            - const: sysctrl
+        clocks:
+          items:
+            - description: vpu clock
+            - description: vapb clock
+        clock-names:
+          items:
+            - const: vpu
+            - const: vapb
+    else:
+      properties:
+        reg:
+          items:
+            - description: vcbus registers
+            - description: hhi registers
+        reg-names:
+          items:
+            - const: vpu
+            - const: hhi
+
 additionalProperties: false
 
 examples:

-- 
2.43.0



