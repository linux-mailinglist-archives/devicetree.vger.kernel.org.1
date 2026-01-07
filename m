Return-Path: <devicetree+bounces-252345-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E9F81CFDDBD
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 14:13:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 90162309BC06
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 13:05:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D179B3246E3;
	Wed,  7 Jan 2026 13:05:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="ewS7wwGI"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA6D131A552
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 13:05:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.171.202.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767791124; cv=none; b=IrkrEaOrNoXeNv+gNJ7A4VioZsAmDuVBRF13ijZkT6stYJZp2fBc1fxxHmozkla+zVr/TQc9+LurjOvWQMdzaqW9MJsIGVDGeQKGRQjXRD3PjmPkFKs76+L3hcuk8/Lv6W4zZlaX9WHa5+LhdKa8xFltT4ZOc7vin9O+9BJ8iA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767791124; c=relaxed/simple;
	bh=XCP/FOFK72L8E2QDh/6XCwQgAkV01L+/PzWMTRRC2G8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=CYVG6l9F8TqYzPusOKJIexWQnqGCnNnzaD2DLc/4kksVGxUwJf8Czo7ie5JscT+lTtc1BR7Pr+IfYYw/KBeEtrvb2R4aQed2IYK7x+BPmQFsa67928rKVCIvToX7B3coCSb5g8+6smFW4ObLwkw2ZqWNfyRWP0CiUu9xH0+CRnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=ewS7wwGI; arc=none smtp.client-ip=185.171.202.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 0B87BC1EC8B;
	Wed,  7 Jan 2026 13:04:55 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 293AC606F8;
	Wed,  7 Jan 2026 13:05:21 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 1DC51103C821A;
	Wed,  7 Jan 2026 14:05:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1767791120; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=v86K00C2fNx5hWbvxkan6t0DbijjMzvVsdWXGbU7/lY=;
	b=ewS7wwGIxnLGvlW1n7rbyYVE272yKtFwMLpXA5dQxwBgkXDCDIjJ/00Crbfj/yjvQoF3KO
	Tx11D+DGgmI67oFQcEmX+DLOztgWjbGAhymtnaevZ/myz5iv283sMxkj7DacsQAV4NEdVC
	nBRLthQpl9T4htROsyNVba4lV3jZbja1UpM5F/XhsaEeDHxzwnPPzt2CBAlpzfU7JrGBr5
	fuhxbzmg80sngjZygGzgi8Usi8M9d/2iqtt0Ua/gkP6KNf8aAtw82k6Ff+QZgxrkxijLu/
	FJnMWcTNqpIBmus89VnLtyDYJww8qXlPXa7us9UgAMbcfqPZtc96NXcaVqYQ0g==
From: Gregory CLEMENT <gregory.clement@bootlin.com>
Date: Wed, 07 Jan 2026 14:04:54 +0100
Subject: [PATCH v3 3/4] dt-bindings: mtd: physmap: Allow using
 memory-region to access memory resources
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260107-mtd-memregion-v3-3-f9fc9107b992@bootlin.com>
References: <20260107-mtd-memregion-v3-0-f9fc9107b992@bootlin.com>
In-Reply-To: <20260107-mtd-memregion-v3-0-f9fc9107b992@bootlin.com>
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
 .../devicetree/bindings/mtd/mtd-physmap.yaml       | 69 ++++++++++++++++------
 1 file changed, 52 insertions(+), 17 deletions(-)

diff --git a/Documentation/devicetree/bindings/mtd/mtd-physmap.yaml b/Documentation/devicetree/bindings/mtd/mtd-physmap.yaml
index a9ec3ca002c7d..98d45982d8eb9 100644
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
@@ -141,19 +139,37 @@ required:
   - compatible
   - reg
 
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
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: cortina,gemini-flash
+    then:
+      properties:
+        syscon:
+          $ref: /schemas/types.yaml#/definitions/phandle
+          description:
+            Phandle to the syscon controller
+          required:
+            - syscon
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - mtd-mem
+              - mtd-memro
+    then:
+      $ref: /schemas/reserved-memory/reserved-memory.yaml
+      required:
+        - no-map
+      properties:
+        addr-gpios: false
+    else:
+      allOf:
+        - $ref: /schemas/mtd/mtd.yaml
+        - $ref: /schemas/memory-controllers/mc-peripheral-props.yaml#
 
 unevaluatedProperties: false
 
@@ -233,4 +249,23 @@ examples:
             reg = <0 0x04000000>;
         };
     };
+
+  - |
+    /* An example using mtd-mem/mtd-memro */
+    reserved-memory {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        bm_logs_reserved: bm_logs_reserved@10000800 {
+            compatible = "mtd-mem";
+            reg = <0x1 0x0000800 0x0 0x0010000>;
+            no-map;
+        };
+
+        sys_logs_reserved: sys_logs_reserved@100120000  {
+            compatible = "mtd-memro";
+            reg = <0x1 0x00120000 0x0 0x0010000>;
+            no-map;
+        };
+    };
 ...

-- 
2.51.0


