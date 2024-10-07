Return-Path: <devicetree+bounces-108428-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F1719929D2
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2024 13:02:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 491D6282984
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2024 11:02:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BE021D0F6B;
	Mon,  7 Oct 2024 11:02:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="ZUm40TNo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A7E71D172E
	for <devicetree@vger.kernel.org>; Mon,  7 Oct 2024 11:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728298945; cv=none; b=TghRqb4aznGvl5kZgc81TfTDVp/9cBJehP3bWmudbRYg3JzyZNxZ72eMZX0jEczqEBtyv3aXvbl+5E2IGq4095O8zBtitbdRgfM3lGcr1YUDfhLeqeXtQD8v+vHiZCLnuIzrr/LbKv+4CshLUslGOjDGZ98fp1dQEKMomiTIxso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728298945; c=relaxed/simple;
	bh=nPDzpkhwnZneV4ZhOIuJ374ANgo/ZP1pDNP/dJMHxHk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=mLS0tdwMzulmDa1fShORo1buvmf80xH1Rj2ZcGGP3kL9FXKz/CnCaF8g6Snd9+/Oa5yoTENywXoxJFReTJuBMhqWGOLKoja0idoTaR3VLlbtdZsu/PiOJxOC2uC+RI4q8hHYZUc+4PCDNtD3VXp+Q+7Yiha209Q4/Fhc1zX+Obg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=ZUm40TNo; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:in-reply-to:references:mime-version:content-transfer-encoding;
	 s=k1; bh=8U4zbOHZPANN624Q6CgoQqtTEPcotZAd8bEERsFbJaw=; b=ZUm40T
	Norr6FCYURLVUfPQdkgFx+ylqixLSZr6JS1WOUrt+m5E2ZJCWWt+9cahqGlZ6nEv
	G4GXO9P94Axpyq5krUCY5QsEcqwtQLuNUoyt6NgOGhZxN088v+o3gdMk82G6+S2e
	3tNh1wxmRKX6NDquMpaCmnIa4VVP4TPCjSfATSTKVbADyFHybzDnWNh3NkeH4co0
	pWFWXlFdaDaJyqv9WdQigFm81sYQ5bn6x19X1cTeIlL+31OkAzcjTxWGOEc1k8LM
	PyDn+DX3RhPnazUrW8qpRZkXvYE6RFPsvYtX5yPRwRdPsjSF5L872fu1hfCJM0By
	EcYh6DP907TExxRg==
Received: (qmail 100829 invoked from network); 7 Oct 2024 13:02:17 +0200
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 7 Oct 2024 13:02:17 +0200
X-UD-Smtp-Session: l3s3148p1@4Wg59OAjuI0gAwDPXxi/APzxl2QXB/xr
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-renesas-soc@vger.kernel.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	dmaengine@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v3 2/3] dt-bindings: dma: rz-dmac: Document RZ/A1H SoC
Date: Mon,  7 Oct 2024 13:02:02 +0200
Message-ID: <20241007110200.43166-7-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241007110200.43166-5-wsa+renesas@sang-engineering.com>
References: <20241007110200.43166-5-wsa+renesas@sang-engineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document the Renesas RZ/A1H DMAC block. This one does not have clocks,
resets and power domains. Update the bindings accordingly. Introduce a
generic name in the header to make future additions easier.

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
 .../bindings/dma/renesas,rz-dmac.yaml         | 29 +++++++++++++------
 1 file changed, 20 insertions(+), 9 deletions(-)

diff --git a/Documentation/devicetree/bindings/dma/renesas,rz-dmac.yaml b/Documentation/devicetree/bindings/dma/renesas,rz-dmac.yaml
index ca24cf48769f..b356251de5a8 100644
--- a/Documentation/devicetree/bindings/dma/renesas,rz-dmac.yaml
+++ b/Documentation/devicetree/bindings/dma/renesas,rz-dmac.yaml
@@ -4,18 +4,16 @@
 $id: http://devicetree.org/schemas/dma/renesas,rz-dmac.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Renesas RZ/{G2L,G2UL,V2L} DMA Controller
+title: Renesas RZ DMA Controller
 
 maintainers:
   - Biju Das <biju.das.jz@bp.renesas.com>
 
-allOf:
-  - $ref: dma-controller.yaml#
-
 properties:
   compatible:
     items:
       - enum:
+          - renesas,r7s72100-dmac # RZ/A1H
           - renesas,r9a07g043-dmac # RZ/G2UL and RZ/Five
           - renesas,r9a07g044-dmac # RZ/G2{L,LC}
           - renesas,r9a07g054-dmac # RZ/V2L
@@ -93,13 +91,26 @@ required:
   - reg
   - interrupts
   - interrupt-names
-  - clocks
-  - clock-names
   - '#dma-cells'
   - dma-channels
-  - power-domains
-  - resets
-  - reset-names
+
+allOf:
+  - $ref: dma-controller.yaml#
+
+  - if:
+      not:
+        properties:
+          compatible:
+            contains:
+              enum:
+                - renesas,r7s72100-dmac
+    then:
+      required:
+        - clocks
+        - clock-names
+        - power-domains
+        - resets
+        - reset-names
 
 additionalProperties: false
 
-- 
2.45.2


