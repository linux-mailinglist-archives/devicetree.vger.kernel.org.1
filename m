Return-Path: <devicetree+bounces-114349-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FE4E9AB580
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 19:53:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8E0F1281831
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 17:47:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82A011C2DB9;
	Tue, 22 Oct 2024 17:47:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="RyKLxyev"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com [209.85.210.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F6951C242B
	for <devicetree@vger.kernel.org>; Tue, 22 Oct 2024 17:47:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729619231; cv=none; b=R37B4EZO9m99hZWBk9pOuNkwSRqNz5RMd9Yo0S7fe+TSiqW81ZA8DrJ9SPrSyh9BKiR76hY3ADRZgmxhaO/I3DmXMzwgOPFEs3rxF8rrX+idcK5PluVoioJyNtWutNmRzXYrQ+fyHQ5kYtaOc27Re71E/CEyTBHs0c11IglLbY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729619231; c=relaxed/simple;
	bh=Umace2h19asdyoDC49tjz82utcFPoACkA96vDyQX7B4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=GLkxW4uYRJfCSEDd6VpfOvZsuHC6ElVxcbyupsqnKk4CO0emH3XWs9U6O+gTJz373qeoBH7n/0ff+w/LBhwQ2g3RpTTTPXzNzcU7itIPDwfSKRRAzyFx5RD1ty9DCQF2Sx+bO77NiQYJo8RIhwgY1ejJu+V33KLQf+FQM/6g5Pw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=RyKLxyev; arc=none smtp.client-ip=209.85.210.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f45.google.com with SMTP id 46e09a7af769-718123ec383so2988016a34.3
        for <devicetree@vger.kernel.org>; Tue, 22 Oct 2024 10:47:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1729619228; x=1730224028; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JFklfksVjmJpjLi/AL270X8ILCKmE3gcCHLKEG6h9pI=;
        b=RyKLxyevpMB2EXqxVEA2wQSlyGRcsHsySZVHsgKtTJgTlhyRzLdjGV4GPLrZKSQJr7
         rnKya4RZj9Kiz13XenDLT59efwsuC0EeObNNMaqp/PeyPt8UiIQfu1smG6BQJojAsp8w
         o7nVx0WqGsaBlnsVBjtqzo+mK22s6KUkaYjL/dsmhXJmQH7DMHr8Hv/ffjy7te0AceV7
         bDiAOlaHlesklFymRQInwN9b3HAfoDpyHHkH9jKpQwjSw4W7cWrff7DZmA3055ozsPI+
         8K2++ziZjwdphY99Gik+ZqlQ3gBwicI8HtG5/S7hgFI9kIwLCio3yqx5o6QScpihhbWd
         19rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729619228; x=1730224028;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JFklfksVjmJpjLi/AL270X8ILCKmE3gcCHLKEG6h9pI=;
        b=tgRe2KIOsfuU0tWfSa1CGVpWJErM1qu3qU20IB60XbyE9vPHYYJWwYH4z1INLS9juA
         +zd+G9IxpRlR0HH+I46D77p0OOSlscoQpcWArX828j9cL4faeo4igz7JACY7LEGUSs7E
         G11HYgaSBj1kni0WhiZq4Kh2pTdfP74Bx01QMkb1je72/gZ8bInPjPB2RBxa4KYTxHy9
         3e/Lo7upbXYibAzwLY5CP9hRDCmvpe1lZ79NN+9BtHQpKGV8ElSZh3SIMmtvp+F4hN/w
         2MFs4HXZOnYWZeZwUIM75VeNuhQgEnp0xY3njfsHs9JBjHLG0VvOnMhrjUUaiinkpPUq
         RoIw==
X-Forwarded-Encrypted: i=1; AJvYcCVx/1KszYX/tajsUEZ6SwkDYhKhUfOE78oPhZKryXeG+6xK1qMJwFZ00S5T66GaDU+3WwuPciAZKPV3@vger.kernel.org
X-Gm-Message-State: AOJu0YwnY4CH0SOxnyywnu+VwnNmzQHoMdonUTN0QGfn5VsYdvp4HGUV
	q00bca2X8zUvGJQQAKqX1tDQ2Mc4439XeiDNve7bFceFL1xwHI99LypXh8og/s4=
X-Google-Smtp-Source: AGHT+IHBhANvihcXaa/AJc62LdPHnpKOszr17rjWBK0xuz+3lAIw3kvGjZkP6QGx6mZZFXra+HEPNQ==
X-Received: by 2002:a05:6830:211a:b0:718:1284:fdc3 with SMTP id 46e09a7af769-7184b2bb6b1mr52100a34.18.1729619228111;
        Tue, 22 Oct 2024 10:47:08 -0700 (PDT)
Received: from [127.0.1.1] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7182eb22312sm1353300a34.13.2024.10.22.10.47.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Oct 2024 10:47:07 -0700 (PDT)
From: David Lechner <dlechner@baylibre.com>
Date: Tue, 22 Oct 2024 12:46:40 -0500
Subject: [PATCH 1/2] dt-bindings: dma: adi,axi-dmac: convert to yaml schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241022-axi-dma-dt-yaml-v1-1-68f2a2498d53@baylibre.com>
References: <20241022-axi-dma-dt-yaml-v1-0-68f2a2498d53@baylibre.com>
In-Reply-To: <20241022-axi-dma-dt-yaml-v1-0-68f2a2498d53@baylibre.com>
To: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Nuno Sa <nuno.sa@analog.com>
Cc: Lars-Peter Clausen <lars@metafoo.de>, dmaengine@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 David Lechner <dlechner@baylibre.com>
X-Mailer: b4 0.14.1

Convert the AXI DMAC bindings from .txt to .yaml.

Signed-off-by: David Lechner <dlechner@baylibre.com>
---

For the maintainer, Lars is the original author, but isn't really
active with ADI anymore, so I have added Nuno instead since he is the
most active ADI representative currently and is knowledgeable about this
hardware.

Also, the rob-bot is likely to complain. Locally, I am getting the
following warning from dt_bindings_check:

	Documentation/devicetree/bindings/dma/adi,axi-dmac.yaml: properties:adi,channels:type: 'boolean' was expected
		hint: A vendor boolean property can use "type: boolean"
		from schema $id: http://devicetree.org/meta-schemas/vendor-props.yaml#
	DTC [C] Documentation/devicetree/bindings/dma/adi,axi-dmac.example.dtb

I think this is telling me that object nodes should not have a vendor
prefix. However, since this is an existing bindings, we can't change
that.
---
 .../devicetree/bindings/dma/adi,axi-dmac.txt       |  61 ---------
 .../devicetree/bindings/dma/adi,axi-dmac.yaml      | 137 +++++++++++++++++++++
 2 files changed, 137 insertions(+), 61 deletions(-)

diff --git a/Documentation/devicetree/bindings/dma/adi,axi-dmac.txt b/Documentation/devicetree/bindings/dma/adi,axi-dmac.txt
deleted file mode 100644
index cd17684aaab5..000000000000
--- a/Documentation/devicetree/bindings/dma/adi,axi-dmac.txt
+++ /dev/null
@@ -1,61 +0,0 @@
-Analog Devices AXI-DMAC DMA controller
-
-Required properties:
- - compatible: Must be "adi,axi-dmac-1.00.a".
- - reg: Specification for the controllers memory mapped register map.
- - interrupts: Specification for the controllers interrupt.
- - clocks: Phandle and specifier to the controllers AXI interface clock
- - #dma-cells: Must be 1.
-
-Required sub-nodes:
- - adi,channels: This sub-node must contain a sub-node for each DMA channel. For
-   the channel sub-nodes the following bindings apply. They must match the
-   configuration options of the peripheral as it was instantiated.
-
-Required properties for adi,channels sub-node:
- - #size-cells: Must be 0
- - #address-cells: Must be 1
-
-Required channel sub-node properties:
- - reg: Which channel this node refers to.
- - adi,source-bus-width,
-   adi,destination-bus-width: Width of the source or destination bus in bits.
- - adi,source-bus-type,
-   adi,destination-bus-type: Type of the source or destination bus. Must be one
-   of the following:
-	0 (AXI_DMAC_TYPE_AXI_MM): Memory mapped AXI interface
-	1 (AXI_DMAC_TYPE_AXI_STREAM): Streaming AXI interface
-	2 (AXI_DMAC_TYPE_AXI_FIFO): FIFO interface
-
-Deprecated optional channel properties:
- - adi,length-width: Width of the DMA transfer length register.
- - adi,cyclic: Must be set if the channel supports hardware cyclic DMA
-   transfers.
- - adi,2d: Must be set if the channel supports hardware 2D DMA transfers.
-
-DMA clients connected to the AXI-DMAC DMA controller must use the format
-described in the dma.txt file using a one-cell specifier. The value of the
-specifier refers to the DMA channel index.
-
-Example:
-
-dma: dma@7c420000 {
-	compatible = "adi,axi-dmac-1.00.a";
-	reg = <0x7c420000 0x10000>;
-	interrupts = <0 57 0>;
-	clocks = <&clkc 16>;
-	#dma-cells = <1>;
-
-	adi,channels {
-		#size-cells = <0>;
-		#address-cells = <1>;
-
-		dma-channel@0 {
-			reg = <0>;
-			adi,source-bus-width = <32>;
-			adi,source-bus-type = <ADI_AXI_DMAC_TYPE_MM_AXI>;
-			adi,destination-bus-width = <64>;
-			adi,destination-bus-type = <ADI_AXI_DMAC_TYPE_FIFO>;
-		};
-	};
-};
diff --git a/Documentation/devicetree/bindings/dma/adi,axi-dmac.yaml b/Documentation/devicetree/bindings/dma/adi,axi-dmac.yaml
new file mode 100644
index 000000000000..e457630ec7c0
--- /dev/null
+++ b/Documentation/devicetree/bindings/dma/adi,axi-dmac.yaml
@@ -0,0 +1,137 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/dma/adi,axi-dmac.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Analog Devices AXI-DMAC DMA controller
+
+description: http://analogdevicesinc.github.io/hdl/library/axi_dmac/index.html
+
+maintainers:
+  - Nuno Sa <nuno.sa@analog.com>
+
+properties:
+  compatible:
+    const: adi,axi-dmac-1.00.a
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  "#dma-cells":
+    const: 1
+
+  adi,channels:
+    type: object
+    description: This sub-node must contain a sub-node for each DMA channel.
+
+    properties:
+      "#size-cells":
+        const: 0
+      "#address-cells":
+        const: 1
+
+    patternProperties:
+      "^dma-channel@[0-9a-f]+$":
+        type: object
+        description:
+          DMA channel properties based on HDL compile-time configuration.
+
+        properties:
+          reg:
+            maxItems: 1
+
+          adi,source-bus-width:
+            $ref: /schemas/types.yaml#/definitions/uint32
+            description: Width of the source bus in bits.
+            enum: [8, 16, 32, 64, 128]
+
+          adi,destination-bus-width:
+            $ref: /schemas/types.yaml#/definitions/uint32
+            description: Width of the destination bus in bits.
+            enum: [8, 16, 32, 64, 128]
+
+          # 0 (AXI_DMAC_TYPE_AXI_MM): Memory mapped AXI interface
+          # 1 (AXI_DMAC_TYPE_AXI_STREAM): Streaming AXI interface
+          # 2 (AXI_DMAC_TYPE_AXI_FIFO): FIFO interface
+
+          adi,source-bus-type:
+            $ref: /schemas/types.yaml#/definitions/uint32
+            description: Type of the source bus.
+            enum: [0, 1, 2]
+
+          adi,destination-bus-type:
+            $ref: /schemas/types.yaml#/definitions/uint32
+            description: Type of the destination bus.
+            enum: [0, 1, 2]
+
+          adi,length-width:
+            deprecated: true
+            $ref: /schemas/types.yaml#/definitions/uint32
+            description: Width of the DMA transfer length register.
+
+          adi,cyclic:
+            deprecated: true
+            type: boolean
+            description:
+              Must be set if the channel supports hardware cyclic DMA transfers.
+
+          adi,2d:
+            deprecated: true
+            type: boolean
+            description:
+              Must be set if the channel supports hardware 2D DMA transfers.
+
+        required:
+          - reg
+          - adi,source-bus-width
+          - adi,destination-bus-width
+          - adi,source-bus-type
+          - adi,destination-bus-type
+
+        additionalProperties: false
+
+    required:
+      - "#size-cells"
+      - "#address-cells"
+
+    additionalProperties: false
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - "#dma-cells"
+  - adi,channels
+
+additionalProperties: false
+
+examples:
+  - |
+    dma: dma@7c420000 {
+        compatible = "adi,axi-dmac-1.00.a";
+        reg = <0x7c420000 0x10000>;
+        interrupts = <0 57 0>;
+        clocks = <&clkc 16>;
+        #dma-cells = <1>;
+
+        adi,channels {
+            #size-cells = <0>;
+            #address-cells = <1>;
+
+            dma-channel@0 {
+                reg = <0>;
+                adi,source-bus-width = <32>;
+                adi,source-bus-type = <0>; /* AXI_DMAC_TYPE_AXI_MM */
+                adi,destination-bus-width = <64>;
+                adi,destination-bus-type = <2>; /* AXI_DMAC_TYPE_AXI_FIFO */
+            };
+        };
+    };

-- 
2.43.0


