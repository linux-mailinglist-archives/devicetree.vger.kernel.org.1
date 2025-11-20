Return-Path: <devicetree+bounces-240731-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 515CEC748DE
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 15:28:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.lore.kernel.org (Postfix) with ESMTPS id 8FEE032403
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 14:23:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F25B3491F1;
	Thu, 20 Nov 2025 14:23:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3684B33A71C
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 14:23:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763648607; cv=none; b=QZRNXWrX0tOIkYexhlU37+2yDH1+fmlFocmRKJ/LFDMdX4H1AOON/3ch/BwiOgGjZzRLX1lJO+ZA6ISV4ptGp+gye2qMum3gq2y/JuS3LWC84XqHlYpn/6qgVOO2fow0XFjzMf53bVjNO3PzsCtqfQPNxVnWZHPDEOOwbGJ5hWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763648607; c=relaxed/simple;
	bh=G9RHyVr/qvQn4K67ZAEMoY/Z6a66EiYF2CKlHn9pDNg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=SrEyX8SxeWpjJlx71D5nKxsxkT63SSuvBM/ToubdheajDeZAJ4RiYWCMUW8cVkgxWbJb0CsAKX7qfYEBJMGcgH4vkw+FyIU1t3vhL4VCX7lxLm93bxULsmWuJJhkwcaYFiVMf8wEm4auVGoF6E4GDI+Or59cRdf87YuZUDAiTUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1vM5Z9-0004us-Ad; Thu, 20 Nov 2025 15:23:19 +0100
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Thu, 20 Nov 2025 15:22:53 +0100
Subject: [PATCH v3 1/4] media: dt-bindings: adi,adv7180: add VPP and CSI
 register maps
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251120-b4-adv7180-vpp-sub-device-v3-1-c9d80661e7d9@pengutronix.de>
References: <20251120-b4-adv7180-vpp-sub-device-v3-0-c9d80661e7d9@pengutronix.de>
In-Reply-To: <20251120-b4-adv7180-vpp-sub-device-v3-0-c9d80661e7d9@pengutronix.de>
To: Lars-Peter Clausen <lars@metafoo.de>, 
 =?utf-8?q?Niklas_S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org, 
 kernel@pengutronix.de, Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::54
X-SA-Exim-Mail-From: m.tretter@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Different variants of the ADV7280 chip have up to three register maps.
The availability of the CSI and VPP register maps depends on the chip
variant. The address of the additional register maps depends on the
board design and other chips on the I2C but. They may be programmed via
registers in the main register map.

Allow to specify the addresses of the VPP and CSI register maps in the
device tree to solve I2C address conflicts on a board level.

The CSI and VPP register maps are always optional to allow backwards
compatibility with existing device trees which may rely on the default
address.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
Changes in v3:
- add minItems to all if:then: cases
- make enums with one item const
Changes in v2:
- document backwards compatibility in commit message
- extend register maps in top level and define limits per variant
- define additional register maps for all variants
- document, why the programmable addresses are hardware description
---
 .../devicetree/bindings/media/i2c/adi,adv7180.yaml | 99 +++++++++++++++++++++-
 1 file changed, 98 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/media/i2c/adi,adv7180.yaml b/Documentation/devicetree/bindings/media/i2c/adi,adv7180.yaml
index dee8ce7cb7ba..c455da2b7912 100644
--- a/Documentation/devicetree/bindings/media/i2c/adi,adv7180.yaml
+++ b/Documentation/devicetree/bindings/media/i2c/adi,adv7180.yaml
@@ -30,7 +30,27 @@ properties:
           - adi,adv7282-m
 
   reg:
-    maxItems: 1
+    minItems: 1
+    items:
+      - description: main register map
+      - description: CSI register map
+      - description: VPP register map
+    description:
+      The ADV7180 family may have up to three register maps. All chips have
+      the main register map. The availability of the CSI and VPP register maps
+      depends on the chip variant.
+
+      The addresses of the CSI and VPP register maps are programmable by
+      software. They depend on the board layout and other devices on the I2C
+      bus and are determined by the hardware designer to avoid address
+      conflicts on the I2C bus.
+
+  reg-names:
+    minItems: 1
+    items:
+      - const: main
+      - enum: [ csi, vpp ]
+      - const: csi
 
   powerdown-gpios:
     maxItems: 1
@@ -138,6 +158,64 @@ allOf:
       required:
         - ports
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - adi,adv7180
+              - adi,adv7180cp
+              - adi,adv7180st
+              - adi,adv7182
+    then:
+      properties:
+        reg:
+          minItems: 1
+          maxItems: 1
+
+        reg-names:
+          minItems: 1
+          maxItems: 1
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - adi,adv7281
+              - adi,adv7281-m
+              - adi,adv7281-ma
+    then:
+      properties:
+        reg:
+          minItems: 1
+          maxItems: 2
+
+        reg-names:
+          minItems: 1
+          items:
+            - const: main
+            - const: csi
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - adi,adv7280
+              - adi,adv7282
+    then:
+      properties:
+        reg:
+          minItems: 1
+          maxItems: 2
+
+        reg-names:
+          minItems: 1
+          items:
+            - const: main
+            - const: vpp
+
 examples:
   - |
     i2c {
@@ -187,3 +265,22 @@ examples:
                     };
             };
     };
+
+  - |
+    i2c {
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            composite-in@20 {
+                    compatible = "adi,adv7280-m";
+                    reg = <0x20>, <0x42>, <0x44>;
+                    reg-names = "main", "vpp", "csi";
+
+                    port {
+                            adv7280_out: endpoint {
+                                    bus-width = <8>;
+                                    remote-endpoint = <&vin1ep>;
+                            };
+                    };
+            };
+    };

-- 
2.47.3


