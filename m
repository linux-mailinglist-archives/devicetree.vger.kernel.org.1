Return-Path: <devicetree+bounces-93725-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AC364952026
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2024 18:37:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6A7D92830F3
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2024 16:37:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0095B1BA877;
	Wed, 14 Aug 2024 16:37:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=siemens.com header.i=jan.kiszka@siemens.com header.b="CDWrCbB7"
X-Original-To: devicetree@vger.kernel.org
Received: from mta-64-227.siemens.flowmailer.net (mta-64-227.siemens.flowmailer.net [185.136.64.227])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6DCA1B9B26
	for <devicetree@vger.kernel.org>; Wed, 14 Aug 2024 16:37:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.136.64.227
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723653450; cv=none; b=X2QxrhTbAWfwDfGmDRhOR2YON9mfWlqq+CC7+lGEB9TrYPncDJO0CilJey3/inYk8cYDPC9ilBrDztYlLwhAU6OMVgL/Mdrv/rBdPuutcahBrix00MCnbm1ORDXok5BpywPA3uJE5HbTM4wB0roA3Xl2VcwK1k6O6Neh/6+CxNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723653450; c=relaxed/simple;
	bh=sKghzG0RX+rgDeN0hOcvIlG/KV7gZFIviIsTSldbKQs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=NCUoq+97jHPxRxhmlLC0VSwao5AdftRwLLuNJOhJoNLy+YjO5JTKYYR8grQSw3BO75JdgGyvOi9knxmHCmIAFEnSK4kDbASMoB0oGs1YoB7ueYnVE6I51YnsncGGSELuLeioOoBRe2Kr3MWIm8tcOc8amHs3X186FrvvgbaY6cs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com; dkim=pass (2048-bit key) header.d=siemens.com header.i=jan.kiszka@siemens.com header.b=CDWrCbB7; arc=none smtp.client-ip=185.136.64.227
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com
Received: by mta-64-227.siemens.flowmailer.net with ESMTPSA id 20240814163721e03c7ef21b4de2c9aa
        for <devicetree@vger.kernel.org>;
        Wed, 14 Aug 2024 18:37:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm1;
 d=siemens.com; i=jan.kiszka@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc:References:In-Reply-To;
 bh=LVA0GFSxNECADZufp0g0Bta+YJBr8N9H6B10ZsamqQI=;
 b=CDWrCbB7x/M5Dmx3qa6y5UKGwcljEIvi75nf3ZRnJP7u7kCB/FUlTt+SWsSCoKVIhAQMbd
 5ymcAj6r7kwnVTDE5IliKzlacGysxOSg50Ze0Fj+Az9HxPOeDB9UQ/rE9uw4qJOa+Wrie0nv
 2jn63tRyWzjLL2hUUYzY/2886J+uGqEsy5IaDzFbVCFvUA0RmjRNL6dDVI98Iz+GXQvEn4+h
 /mD+8i2l5iMX9B541ZrJCFRpZwry7GryrQrpYoboagRg3+4Cy2s0L6e1e/XOKXpome587UEl
 Coy8uXHylr2P/dx11kHQaywkHYQ2Ucd4wenwOtnXmP0B4f4nd+peYWjg==;
From: Jan Kiszka <jan.kiszka@siemens.com>
To: Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Bao Cheng Su <baocheng.su@siemens.com>,
	Diogo Ivo <diogo.ivo@siemens.com>
Subject: [PATCH v4 2/3] dt-bindings: soc: ti: am645-system-controller: add child nodes used by main domain
Date: Wed, 14 Aug 2024 18:37:18 +0200
Message-ID: <c6bbb3884e9270a203ee39d298c34f6676b3911e.1723653439.git.jan.kiszka@siemens.com>
In-Reply-To: <cover.1723653439.git.jan.kiszka@siemens.com>
References: <cover.1723653439.git.jan.kiszka@siemens.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-294854:519-21489:flowmailer

From: Jan Kiszka <jan.kiszka@siemens.com>

Expand bindings to cover both the MCU and the main usage of the AM654
system controller.

Signed-off-by: Jan Kiszka <jan.kiszka@siemens.com>
---
 .../soc/ti/ti,am654-system-controller.yaml    | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/ti/ti,am654-system-controller.yaml b/Documentation/devicetree/bindings/soc/ti/ti,am654-system-controller.yaml
index e79803e586ca..cb9da3ec39a8 100644
--- a/Documentation/devicetree/bindings/soc/ti/ti,am654-system-controller.yaml
+++ b/Documentation/devicetree/bindings/soc/ti/ti,am654-system-controller.yaml
@@ -29,11 +29,30 @@ properties:
 
   ranges: true
 
+  dss-oldi-io-ctrl@41e0:
+    type: object
+    $ref: /schemas/mfd/syscon.yaml#
+    properties:
+      compatible:
+        items:
+          - const: ti,am654-dss-oldi-io-ctrl
+          - const: syscon
+
+  clock-controller@4140:
+    type: object
+    $ref: /schemas/clock/ti,am654-ehrpwm-tbclk.yaml#
+    description:
+      Clock provider for TI EHRPWM nodes.
+
 patternProperties:
   "^phy@[0-9a-f]+$":
     type: object
     $ref: /schemas/phy/ti,phy-gmii-sel.yaml#
 
+  "^clock@[0-9a-f]+$":
+    type: object
+    $ref: /schemas/soc/ti/ti,am654-serdes-ctrl.yaml#
+
 required:
   - compatible
   - reg
-- 
2.43.0


