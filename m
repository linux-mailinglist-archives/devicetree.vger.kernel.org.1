Return-Path: <devicetree+bounces-239484-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 48DB8C65587
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 18:09:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 1CD414F079A
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 17:03:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B7F730AAD7;
	Mon, 17 Nov 2025 17:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="bVNsauQ6"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E46D3093A7;
	Mon, 17 Nov 2025 17:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.84.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763398835; cv=none; b=QDEkvrw5fRiQ+VffxGgLq1pSUdPmyaMJ7Bt5FiC4wgW+s0ePsaRYc315d9fkbxR4xAnLgKyDk1CfRKjPP33nrd41PoQRJdU2oCYFImztv46qUuGWGMDOEnKwZ2i2spjHbUy84KWAduOYcpI1U42D+eWLY4u9CtPl1U3SX8xXcGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763398835; c=relaxed/simple;
	bh=8LydmFwIn++pnk4Eh32+bsCwIxMzSmTzcNtDrMu2kNo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=XB1w6TZo0waKwcysb4NyN4c9shoftxIkfygxNv02jH67LlW9VguY9fsC5/vFw7SqwzRwoENVw/9GEB+KRTvBoOSEBbBu/ME7UeT4XGBixUBxp49WY5ewR4deLdly+gdx50XwfwSj2/xhbSWLeBC3pBSAkVE/IBsrijyJY/87f3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=bVNsauQ6; arc=none smtp.client-ip=185.246.84.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id AB4B01A1B50;
	Mon, 17 Nov 2025 17:00:31 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 7D42A606B9;
	Mon, 17 Nov 2025 17:00:31 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 563AC10371D02;
	Mon, 17 Nov 2025 18:00:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1763398830; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=xCtNmtF9ftpetIg4Hf9F97yBZ1udfSvg+DWHKxu+fA8=;
	b=bVNsauQ6+aiQFNqm1gnrEKP1milOrr7eWGqqQrZ9N1KM/B02ZUVUNi3s1/8r4+pgZlWCLv
	K5o9fIxBJ4yQb+eHnsHDoKQZHwwbKJaZbUrI7kIDqw7SXoFA9M/SkBm5lz4pcKBiSybljy
	e3m19c3A3JU69+3lZDJvkeNzulJm0RpFO2nTm+fi3g5EIE5YQmJ8IPcL9jXytDVT5KEl2k
	b4I/KW1n+ItUf+G9KZI5TNSSUoydBrM97yut876R0QXKv4ihMd0QTFLdOSCpmzsrK6D5Qw
	kJzauURsHk5U/JpxSCFSjBPFfD+zOUqfkzy9DwcBVghKxyexXp438xB+iTpSNA==
From: Gregory CLEMENT <gregory.clement@bootlin.com>
Date: Mon, 17 Nov 2025 18:00:15 +0100
Subject: [PATCH 2/3] dt-bindings: mtd: physmap: Allow using memory-region
 to access memory resources
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251117-mtd-memregion-v1-2-7b35611c79a6@bootlin.com>
References: <20251117-mtd-memregion-v1-0-7b35611c79a6@bootlin.com>
In-Reply-To: <20251117-mtd-memregion-v1-0-7b35611c79a6@bootlin.com>
To: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, 
 Linus Walleij <linus.walleij@linaro.org>, 
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
index 1b375dee83b0c..0f75a1204b263 100644
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
+    sram {
+        compatible = "mtd-mem";
+        memory-region = <&mem_log>;
+        bank-width = <4>;
+        device-width = <1>;
+    };
+
 ...

-- 
2.51.0


