Return-Path: <devicetree+bounces-241195-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id AAAA9C7A9BA
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 16:47:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D71614EBA84
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 15:43:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A9FD3164D8;
	Fri, 21 Nov 2025 15:42:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="gvolDSzw"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28DC02EC0BD;
	Fri, 21 Nov 2025 15:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.171.202.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763739776; cv=none; b=jBQcUCTl/CL12VuQIjlaVLaYxiSYoWudZJk1rJcnwE2A2VJLtCNz8VhBaif0JK1qZ1h4xW/D8WI+q5YQ8yFEvjyqckXleFtwcmcayhMTKupzKwxgFVd9rXoZSm5BL86envDfqunotsQUJEQATZXfhXpCFRaA1N+y4kX/29GF60Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763739776; c=relaxed/simple;
	bh=gZqvFmuQgpTYT5A6ihr6YFdLxThPhtzNyCmkRuU0ndo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ar8DXlpAhwbBWkdKY46kcasKwQdouj7Lds+OQ4vGkLJ7Z0XpuIJoW9ACm61YvvofaI3pYV5d6V/xSm+2gY+VacDIbG74VjibKr8jbLOYdveHHcqxxZcNRb/10VLo4yK222TQdduQlcDf4TIcGAyQpPe9YwjMOviLjrVMgqc83oc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=gvolDSzw; arc=none smtp.client-ip=185.171.202.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 9C1C6C101A1;
	Fri, 21 Nov 2025 15:42:22 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 0707960719;
	Fri, 21 Nov 2025 15:42:45 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 038AD103721D4;
	Fri, 21 Nov 2025 16:42:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1763739764; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=vd05fhfs2qIh00fsYfg5TZpdIMO9uBjqduJxogccVqo=;
	b=gvolDSzwc4oz9CtQ9n9Ne+bvhUP9cWcSiXZQMTWfdlpF8D92vHrXO8g5UmdoKhbHoLiOzZ
	MUeEtzXz5+v7rMX9/zpl37C6JnoqmXL7LF2aBc6aux7vr3aabgLSqFT++fCEQiuqhwJSYF
	4L5sxyPcn0IGQVmP2C7SMNaPSD9VHmWlqbQWi2hp+E+hWKhNBpIgV3wRRUN0ECCC9BlE/D
	iOSNmc+iPYm16ZHpSVIWWV02HOSS7JgKeTOjwCzR35nqXf5/RcvcBJHTtOBFJc42cgEME1
	9UZWLLu+VKi6eK/hecmr5+rFspaYoaZDpKorHR+e5eCDjk5kyQXgRc7D3F6G8g==
From: Gregory CLEMENT <gregory.clement@bootlin.com>
Date: Fri, 21 Nov 2025 16:42:36 +0100
Subject: [PATCH v2 2/3] dt-bindings: mtd: physmap: Allow using
 memory-region to access memory resources
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251121-mtd-memregion-v2-2-c5535fdcebe4@bootlin.com>
References: <20251121-mtd-memregion-v2-0-c5535fdcebe4@bootlin.com>
In-Reply-To: <20251121-mtd-memregion-v2-0-c5535fdcebe4@bootlin.com>
To: Rob Herring <robh@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
 Miquel Raynal <miquel.raynal@bootlin.com>, 
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>, 
 =?utf-8?q?Beno=C3=AEt_Monin?= <benoit.monin@bootlin.com>, 
 =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mtd@lists.infradead.org, 
 Gregory CLEMENT <gregory.clement@bootlin.com>
X-Mailer: b4 0.14.3
X-Last-TLS-Session-Version: TLSv1.3

Enable access to memory resources not only via I/O address using reg,
but also through a portion of main memory using memory-region. To
achieve this, new compatible strings have been introduced: mtd-mem and
mtd-memro.

Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
---
 .../devicetree/bindings/mtd/mtd-physmap.yaml       | 59 +++++++++++++++-------
 1 file changed, 40 insertions(+), 19 deletions(-)

diff --git a/Documentation/devicetree/bindings/mtd/mtd-physmap.yaml b/Documentation/devicetree/bindings/mtd/mtd-physmap.yaml
index 1b375dee83b0c..323e89aacaacd 100644
--- a/Documentation/devicetree/bindings/mtd/mtd-physmap.yaml
+++ b/Documentation/devicetree/bindings/mtd/mtd-physmap.yaml
@@ -13,10 +13,6 @@ description: |
   Flash chips (Memory Technology Devices) are often used for solid state
   file systems on embedded devices.
 
-allOf:
-  - $ref: mtd.yaml#
-  - $ref: /schemas/memory-controllers/mc-peripheral-props.yaml#
-
 properties:
   compatible:
     oneOf:
@@ -61,6 +57,8 @@ properties:
           - jedec-flash
           - mtd-ram
           - mtd-rom
+          - mtd-mem
+          - mtd-memro
 
   reg:
     description: |
@@ -116,6 +114,10 @@ properties:
     minItems: 1
     maxItems: 8
 
+  memory-region:
+    items:
+      - description: Memory regions to map into mtd
+
   '#address-cells':
     const: 1
 
@@ -129,21 +131,25 @@ properties:
 
 required:
   - compatible
-  - reg
-
-if:
-  properties:
-    compatible:
-      contains:
-        const: cortina,gemini-flash
-then:
-  properties:
-    syscon:
-      $ref: /schemas/types.yaml#/definitions/phandle
-      description:
-        Phandle to the syscon controller
-  required:
-    - syscon
+
+allOf:
+  - $ref: mtd.yaml#
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - mtd-mem
+              - mtd-memro
+    then:
+      required:
+        - memory-region
+      properties:
+        addr-gpios: false
+    else:
+      $ref: /schemas/memory-controllers/mc-peripheral-props.yaml#
+      required:
+        - reg
 
 unevaluatedProperties: false
 
@@ -223,4 +229,19 @@ examples:
             reg = <0 0x04000000>;
         };
     };
+
+  - |
+    /* An example using mtd-mem */
+    mem_logs: mem_logs@10000800 {
+        reg = <0x1 0x0000800 0x0 0x000f800>;
+        no-map;
+    };
+
+    memlog {
+        compatible = "mtd-mem";
+        memory-region = <&mem_log>;
+        bank-width = <4>;
+        device-width = <1>;
+    };
+
 ...

-- 
2.51.0


