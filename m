Return-Path: <devicetree+bounces-51973-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AC34881394
	for <lists+devicetree@lfdr.de>; Wed, 20 Mar 2024 15:43:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0F03D1F228B7
	for <lists+devicetree@lfdr.de>; Wed, 20 Mar 2024 14:43:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 054954879E;
	Wed, 20 Mar 2024 14:42:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=siemens.com header.i=diogo.ivo@siemens.com header.b="O6vQk0VR"
X-Original-To: devicetree@vger.kernel.org
Received: from mta-64-226.siemens.flowmailer.net (mta-64-226.siemens.flowmailer.net [185.136.64.226])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E682B4D11D
	for <devicetree@vger.kernel.org>; Wed, 20 Mar 2024 14:42:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.136.64.226
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710945774; cv=none; b=mXNT3KWpcoY8ha+8lXzuIFayZq4N9j3Z9wBQBiN4CjRJY0Vo7NZnjWuFvJLZsXYMirjIt1NgEI3vKvjnXGP0UO2HNBJOnkQD+25Uj5Dppd20NbHTaKKwtAkqQ6wp34SDtUKX2qN43HeAF87i0RecJINseWMgFbfxxR+unxC3A40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710945774; c=relaxed/simple;
	bh=/vMw2qCC/Ah99HVliofDvJtVPRgbrytUvUlzZ7QouTg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=hV2Dn9wBVR7RXTlU7NCkfvzTg6PrrMsjVrYu814hsPuzhfpDgrZcuka0JOCwY+ztGNhc5ix4JxHKxCisjninJFFWCrQV0gnUlDtqvKr1KDHsjecH8uZ/6OuXNmMtLmjz6T9/HVosM7HOjo6Otode0f6sJnMU7q7uGo0E2FW9y48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com; dkim=pass (1024-bit key) header.d=siemens.com header.i=diogo.ivo@siemens.com header.b=O6vQk0VR; arc=none smtp.client-ip=185.136.64.226
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com
Received: by mta-64-226.siemens.flowmailer.net with ESMTPSA id 2024032014424474f225f1e0cd81b438
        for <devicetree@vger.kernel.org>;
        Wed, 20 Mar 2024 15:42:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm1;
 d=siemens.com; i=diogo.ivo@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc:References:In-Reply-To;
 bh=qsn/5Z0uBeHeNKhLSJ/nmRd0suyQe67+872/QeVzwMY=;
 b=O6vQk0VRJlUym3ggNeijIIDZF3LnYVRAmIkUaboHTWla1hTlYgvgFSEpuDGqk09CI0OFBe
 FEl9kCtpt01YC2R/JFKxhKnx7RJVKntip+JVm2UIxgMpMg5ybjHLR7MDBDcgKYE/6q5CSEtv
 P5LfMkAlQ8X6IIKAHleE43yHxOpAg=;
From: Diogo Ivo <diogo.ivo@siemens.com>
To: danishanwar@ti.com,
	rogerq@kernel.org,
	davem@davemloft.net,
	edumazet@google.com,
	kuba@kernel.org,
	pabeni@redhat.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Diogo Ivo <diogo.ivo@siemens.com>,
	jan.kiszka@siemens.com,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH net-next v5 01/10] dt-bindings: net: Add support for AM65x SR1.0 in ICSSG
Date: Wed, 20 Mar 2024 14:42:23 +0000
Message-ID: <20240320144234.313672-2-diogo.ivo@siemens.com>
In-Reply-To: <20240320144234.313672-1-diogo.ivo@siemens.com>
References: <20240320144234.313672-1-diogo.ivo@siemens.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-1320519:519-21489:flowmailer

Silicon Revision 1.0 of the AM65x came with a slightly different ICSSG
support: Only 2 PRUs per slice are available and instead 2 additional
DMA channels are used for management purposes. We have no restrictions
on specified PRUs, but the DMA channels need to be adjusted.

Co-developed-by: Jan Kiszka <jan.kiszka@siemens.com>
Signed-off-by: Jan Kiszka <jan.kiszka@siemens.com>
Signed-off-by: Diogo Ivo <diogo.ivo@siemens.com>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
Reviewed-by: Roger Quadros <rogerq@kernel.org>
Reviewed-by: MD Danish Anwar <danishanwar@ti.com>
---
Changes in v5: 
 - Added Reviewed-by tag from Danish 

Changes in v4: 
 - Added Reviewed-by tags from Roger and Conor

Changes in v3:
 - Fixed dt_binding_check error by moving allOf

Changes in v2:
 - Removed explicit reference to SR2.0
 - Moved sr1 to the SoC name
 - Expand dma-names list and adjust min/maxItems depending on SR1.0/2.0

 .../bindings/net/ti,icssg-prueth.yaml         | 35 +++++++++++++++----
 1 file changed, 29 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/ti,icssg-prueth.yaml b/Documentation/devicetree/bindings/net/ti,icssg-prueth.yaml
index 229c8f32019f..e253fa786092 100644
--- a/Documentation/devicetree/bindings/net/ti,icssg-prueth.yaml
+++ b/Documentation/devicetree/bindings/net/ti,icssg-prueth.yaml
@@ -13,14 +13,12 @@ description:
   Ethernet based on the Programmable Real-Time Unit and Industrial
   Communication Subsystem.
 
-allOf:
-  - $ref: /schemas/remoteproc/ti,pru-consumer.yaml#
-
 properties:
   compatible:
     enum:
-      - ti,am642-icssg-prueth  # for AM64x SoC family
-      - ti,am654-icssg-prueth  # for AM65x SoC family
+      - ti,am642-icssg-prueth      # for AM64x SoC family
+      - ti,am654-icssg-prueth      # for AM65x SoC family
+      - ti,am654-sr1-icssg-prueth  # for AM65x SoC family, SR1.0
 
   sram:
     $ref: /schemas/types.yaml#/definitions/phandle
@@ -28,9 +26,11 @@ properties:
       phandle to MSMC SRAM node
 
   dmas:
-    maxItems: 10
+    minItems: 10
+    maxItems: 12
 
   dma-names:
+    minItems: 10
     items:
       - const: tx0-0
       - const: tx0-1
@@ -42,6 +42,8 @@ properties:
       - const: tx1-3
       - const: rx0
       - const: rx1
+      - const: rxmgm0
+      - const: rxmgm1
 
   ti,mii-g-rt:
     $ref: /schemas/types.yaml#/definitions/phandle
@@ -132,6 +134,27 @@ required:
   - interrupts
   - interrupt-names
 
+allOf:
+  - $ref: /schemas/remoteproc/ti,pru-consumer.yaml#
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: ti,am654-sr1-icssg-prueth
+    then:
+      properties:
+        dmas:
+          minItems: 12
+        dma-names:
+          minItems: 12
+    else:
+      properties:
+        dmas:
+          maxItems: 10
+        dma-names:
+          maxItems: 10
+
 unevaluatedProperties: false
 
 examples:
-- 
2.44.0


