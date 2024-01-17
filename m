Return-Path: <devicetree+bounces-32811-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BA94E830AD7
	for <lists+devicetree@lfdr.de>; Wed, 17 Jan 2024 17:17:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9DAC01C20A41
	for <lists+devicetree@lfdr.de>; Wed, 17 Jan 2024 16:17:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 936E922EEF;
	Wed, 17 Jan 2024 16:16:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=siemens.com header.i=diogo.ivo@siemens.com header.b="RB4sQcLS"
X-Original-To: devicetree@vger.kernel.org
Received: from mta-64-228.siemens.flowmailer.net (mta-64-228.siemens.flowmailer.net [185.136.64.228])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF5F222635
	for <devicetree@vger.kernel.org>; Wed, 17 Jan 2024 16:16:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.136.64.228
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705508184; cv=none; b=iisp8FssxkTVhWQLjfQ6PFjAbhljC/EZjskHRdMyPsqCiZsMLkGKuKOYYobEIbl4kEOE7r7nWmOVcEwlfD31XGp0SzjM2vsZBWK0QpQna82SNRgl3g8QHpcO1rmhRs9a04zWq7vF2ffODL+7BNJXqb/kMk30XTLDlUfZz35OlkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705508184; c=relaxed/simple;
	bh=rMSakArWwe6ZD4iNvq+Rg+LYemlJwio3LiX4UzdjqAI=;
	h=Received:DKIM-Signature:From:To:Cc:Subject:Date:Message-ID:
	 In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:
	 X-Flowmailer-Platform:Feedback-ID; b=ggSjCvw+Lio+VajThlIlnG1uKNjpg4guPtrIlP6IVVNkuEmLbDY8jKnVUKIxF6UmaWa4mLY626uK3RgicO/wdMjnRgEHBYRmJRPpG99yBjdUXvzFnkZfRoCWdc/bTAANPrq1j0j+TJkzuDEkM93EBuy0X28XOovSc9G8fkgkJxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com; dkim=pass (1024-bit key) header.d=siemens.com header.i=diogo.ivo@siemens.com header.b=RB4sQcLS; arc=none smtp.client-ip=185.136.64.228
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com
Received: by mta-64-228.siemens.flowmailer.net with ESMTPSA id 2024011716161498ccb5eb07379a3e95
        for <devicetree@vger.kernel.org>;
        Wed, 17 Jan 2024 17:16:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm1;
 d=siemens.com; i=diogo.ivo@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc:References:In-Reply-To;
 bh=V3s9GK0OAb3raYOYAIncj1wCgS57eQxkjBGUikPp6W0=;
 b=RB4sQcLSvKLe8EBRQL3S8i2ZZjm5pTE+r05xsWSijLbO0i4/k8v+bl4TkMe6T67cBAkQ12
 u9f9/jTJdrW5nPd0YwJ7LTl1U04OYJ0JlUa6mOkNaUgDgPFoNN1diKnupv9HOWtu0Tji3yTl
 ONJfs9/tv/BSNEqbFbXMU+/BCgzwI=;
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
	Jan Kiszka <jan.kiszka@siemens.com>
Subject: [PATCH v2 1/8] dt-bindings: net: Add support for AM65x SR1.0 in ICSSG
Date: Wed, 17 Jan 2024 16:14:55 +0000
Message-ID: <20240117161602.153233-2-diogo.ivo@siemens.com>
In-Reply-To: <20240117161602.153233-1-diogo.ivo@siemens.com>
References: <20240117161602.153233-1-diogo.ivo@siemens.com>
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
---
Changes in v2:
 - Removed explicit reference to SR2.0
 - Moved sr1 to the SoC name
 - Expand dma-names list and adjust min/maxItems depending on SR1.0/2.0

 .../bindings/net/ti,icssg-prueth.yaml         | 29 ++++++++++++++++---
 1 file changed, 25 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/ti,icssg-prueth.yaml b/Documentation/devicetree/bindings/net/ti,icssg-prueth.yaml
index 229c8f32019f..59a3292191d9 100644
--- a/Documentation/devicetree/bindings/net/ti,icssg-prueth.yaml
+++ b/Documentation/devicetree/bindings/net/ti,icssg-prueth.yaml
@@ -19,8 +19,9 @@ allOf:
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
@@ -28,8 +29,7 @@ properties:
       phandle to MSMC SRAM node
 
   dmas:
-    maxItems: 10
-
+    minItems: 10
   dma-names:
     items:
       - const: tx0-0
@@ -42,6 +42,8 @@ properties:
       - const: tx1-3
       - const: rx0
       - const: rx1
+      - const: rxmgm0
+      - const: rxmgm1
 
   ti,mii-g-rt:
     $ref: /schemas/types.yaml#/definitions/phandle
@@ -132,6 +134,25 @@ required:
   - interrupts
   - interrupt-names
 
+allOf:
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
2.43.0


