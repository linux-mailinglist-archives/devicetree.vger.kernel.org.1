Return-Path: <devicetree+bounces-53350-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 70D8888C02D
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 12:07:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A239D1C2CE4D
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 11:07:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28FF2321B4;
	Tue, 26 Mar 2024 11:07:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=siemens.com header.i=diogo.ivo@siemens.com header.b="NxZE38hV"
X-Original-To: devicetree@vger.kernel.org
Received: from mta-64-226.siemens.flowmailer.net (mta-64-226.siemens.flowmailer.net [185.136.64.226])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A84171BC46
	for <devicetree@vger.kernel.org>; Tue, 26 Mar 2024 11:07:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.136.64.226
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711451242; cv=none; b=DfjAnNQPZ0HOPjqP52neVY7kGA81jcXciuHBDJNYmJq9WHVO17wqB8nVlRgnEqUedltZ1Bso32+hCz04GzL9AgLALrYTvIDZ9m8iw9aegsM4blyB6Nns0C9NABtvDGw3HbfIeBJBvuSgQDh6hC8kRQJOAnSlBgK2grq62U+fDws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711451242; c=relaxed/simple;
	bh=/vMw2qCC/Ah99HVliofDvJtVPRgbrytUvUlzZ7QouTg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=aNfhv2Ih/Qxf6nePO+Nu/WgFQCpJOPcLq2+aXahQwoDsrmfonWX8CYQF6TcnwYSSR8/EOMr5klbIgA6YhNKJTJmm2k+7Y9qVnOj0g22z7osRIyAnQZkZsQab38+t11xOytMeyVmdSTdI72tfjaNXO4lQo5oTYiblnJ3iDV8YqJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com; dkim=pass (1024-bit key) header.d=siemens.com header.i=diogo.ivo@siemens.com header.b=NxZE38hV; arc=none smtp.client-ip=185.136.64.226
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com
Received: by mta-64-226.siemens.flowmailer.net with ESMTPSA id 202403261107140c71155f7b2dd89958
        for <devicetree@vger.kernel.org>;
        Tue, 26 Mar 2024 12:07:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm1;
 d=siemens.com; i=diogo.ivo@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc:References:In-Reply-To;
 bh=qsn/5Z0uBeHeNKhLSJ/nmRd0suyQe67+872/QeVzwMY=;
 b=NxZE38hVTZMCPuDuMEY4jftRD0k6B74wSbU7DL3v4lU30/kx7Oc1U4QUUC30Dd3D8ZYN9N
 yj7g1d5/1FJdfB9agJuB7wSKfxVmHX4yluksXICqiN45MOrx7puw/8wTpGJsvC6UJ17tEmXc
 JDwIuf+kJ9xxOjdhB3O8ZZ8O/o6pk=;
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
Date: Tue, 26 Mar 2024 11:06:51 +0000
Message-ID: <20240326110709.26165-2-diogo.ivo@siemens.com>
In-Reply-To: <20240326110709.26165-1-diogo.ivo@siemens.com>
References: <20240326110709.26165-1-diogo.ivo@siemens.com>
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


