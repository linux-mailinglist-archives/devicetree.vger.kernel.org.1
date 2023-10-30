Return-Path: <devicetree+bounces-12918-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id BB5227DBE99
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 18:14:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2F335B20F0F
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 17:14:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A7BE1946E;
	Mon, 30 Oct 2023 17:14:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="dnkuBXmB"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B79919454
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 17:14:02 +0000 (UTC)
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com [IPv6:2607:f8b0:4864:20::b49])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8966699
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 10:14:00 -0700 (PDT)
Received: by mail-yb1-xb49.google.com with SMTP id 3f1490d57ef6-da033914f7cso4068140276.0
        for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 10:14:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1698686040; x=1699290840; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=z8iKDVNsfQwoRxvvaiYCTHXcr4RTujdFfq5CMELZsH0=;
        b=dnkuBXmBEng6TyQi9oKbkeeiXz7SZVRKOHuqElRgAZQy+14HPuTf4oUstfyka50zht
         B2WX87SkdQQD6IdvwD+miiJHLvg0u4d5+aVDO0vBu1hXEwOtlpWqEcSsx8be5pZPHmY1
         dCCJYU5xmWzVb0OxJ2N/ojYorcCuuahlUH+d09sVTwkm04PYgSIEEGs7gvYZRyN4N1eP
         e3bv+yX6xuDLUfvIHG1nmv5PDkstz7KoiMAKe/47yPsM3P1hn7GzJ2XZ2veppQr0kEN+
         n5W2F/BfIWBaYh1ZC19Yi/j9h2ACUIXLJJjvMI9JVfxE9z6nLiFWvNYy8nghTdjLYU8J
         qBqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698686040; x=1699290840;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=z8iKDVNsfQwoRxvvaiYCTHXcr4RTujdFfq5CMELZsH0=;
        b=YYPhRWNvy5kpaMATEsMO91yGxn+uoP80YYI1a236hqWGD308Bp792A4DU5AY7ksCZv
         5k5uCimTqzhLxD4+lLc7BFxvYOGTblMaT7gJfspoxdt8E5K9TFQJWV0ONkhUnlitP07Y
         10lLspg4sTh87SKOY6JzemDwE4XIKgoCJjqgDDM5rpDIXOAnUamek7FK1l6ogyHlwT8m
         YAst+fgpofZUdfZrKYSNe0FrnkS+tifWRseUU4O1kVFkR5Gfm1rF52HIKPaoSoGCWt+5
         aRN9N5zOx0YxkfBq57wbKE8MbcuYKT27rsfC9yFI7xROAU2WYymWxb7f+dxI1dOD/lsB
         5BGw==
X-Gm-Message-State: AOJu0YxBPepkc1thuQU0f0rwZ9iMcpOWDNUIEhgiETGwpzkWnVdn65P4
	lk/D4g4cM5Ea7eU37+GKe5X6PEFttEqT
X-Google-Smtp-Source: AGHT+IFCobSs7f7lUn7grteQL7zVQdPUD6EkBGNh9TaVbwF6QkbcBHQPOXcg4Ka4yeDKsnRZpGaTk4xXD+dN
X-Received: from kyletso-p620lin01.ntc.corp.google.com ([2401:fa00:fc:202:99ae:e3b5:518:c5b4])
 (user=kyletso job=sendgmr) by 2002:a25:9841:0:b0:d9a:3a14:a5a2 with SMTP id
 k1-20020a259841000000b00d9a3a14a5a2mr212052ybo.13.1698686039808; Mon, 30 Oct
 2023 10:13:59 -0700 (PDT)
Date: Tue, 31 Oct 2023 01:13:47 +0800
In-Reply-To: <20231030171348.600621-1-kyletso@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20231030171348.600621-1-kyletso@google.com>
X-Mailer: git-send-email 2.42.0.820.g83a721a137-goog
Message-ID: <20231030171348.600621-2-kyletso@google.com>
Subject: [PATCH v3 1/2] dt-bindings: connector: Add child nodes for multiple
 PD capabilities
From: Kyle Tso <kyletso@google.com>
To: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	linux@roeck-us.net, heikki.krogerus@linux.intel.com, 
	gregkh@linuxfoundation.org
Cc: badhri@google.com, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	Kyle Tso <kyletso@google.com>
Content-Type: text/plain; charset="UTF-8"

Commit 662a60102c12 ("usb: typec: Separate USB Power Delivery from USB
Type-C") allows userspace to configure the PD of a port by selecting
different set of predefined PD capabilities. Define the PD capability
sets in DT for better configurability in device modules.

Define a child node "capabilities" to contain multiple USB Power
Delivery capabilities.

Define a child node with pattern (e.g. caps-0, caps-1) under
"capabilities". Each node contains PDO data of a selectable Power
Delivery capability.

Also define common properties for source-pdos, sink-pdos, and
op-sink-microwatt that can be referenced.

Signed-off-by: Kyle Tso <kyletso@google.com>
---
v2 -> v3
- Updated the commit message
- Remain unchanged for the comments about the property/node refactor

.../bindings/connector/usb-connector.yaml     | 80 +++++++++++++------
 1 file changed, 57 insertions(+), 23 deletions(-)

diff --git a/Documentation/devicetree/bindings/connector/usb-connector.yaml b/Documentation/devicetree/bindings/connector/usb-connector.yaml
index 7c8a3e8430d3..d7ece063cb2c 100644
--- a/Documentation/devicetree/bindings/connector/usb-connector.yaml
+++ b/Documentation/devicetree/bindings/connector/usb-connector.yaml
@@ -120,28 +120,10 @@ properties:
   # The following are optional properties for "usb-c-connector" with power
   # delivery support.
   source-pdos:
-    description: An array of u32 with each entry providing supported power
-      source data object(PDO), the detailed bit definitions of PDO can be found
-      in "Universal Serial Bus Power Delivery Specification" chapter 6.4.1.2
-      Source_Capabilities Message, the order of each entry(PDO) should follow
-      the PD spec chapter 6.4.1. Required for power source and power dual role.
-      User can specify the source PDO array via PDO_FIXED/BATT/VAR/PPS_APDO()
-      defined in dt-bindings/usb/pd.h.
-    minItems: 1
-    maxItems: 7
-    $ref: /schemas/types.yaml#/definitions/uint32-array
+    $ref: "#/$defs/source-pdos"
 
   sink-pdos:
-    description: An array of u32 with each entry providing supported power sink
-      data object(PDO), the detailed bit definitions of PDO can be found in
-      "Universal Serial Bus Power Delivery Specification" chapter 6.4.1.3
-      Sink Capabilities Message, the order of each entry(PDO) should follow the
-      PD spec chapter 6.4.1. Required for power sink and power dual role. User
-      can specify the sink PDO array via PDO_FIXED/BATT/VAR/PPS_APDO() defined
-      in dt-bindings/usb/pd.h.
-    minItems: 1
-    maxItems: 7
-    $ref: /schemas/types.yaml#/definitions/uint32-array
+    $ref: "#/$defs/sink-pdos"
 
   sink-vdos:
     description: An array of u32 with each entry, a Vendor Defined Message Object (VDO),
@@ -167,9 +149,7 @@ properties:
     $ref: /schemas/types.yaml#/definitions/uint32-array
 
   op-sink-microwatt:
-    description: Sink required operating power in microwatt, if source can't
-      offer the power, Capability Mismatch is set. Required for power sink and
-      power dual role.
+    $ref: "#/$defs/op-sink-microwatt"
 
   port:
     $ref: /schemas/graph.yaml#/properties/port
@@ -231,6 +211,30 @@ properties:
       SNK_READY for non-pd link.
     type: boolean
 
+  capabilities:
+    description: A child node to contain all the selectable USB Power Delivery capabilities.
+    type: object
+
+    patternProperties:
+      "^caps-[0-9]+$":
+        description: Child nodes under "capabilities" node. Each node contains a selectable USB
+          Power Delivery capability.
+        type: object
+
+        properties:
+          source-pdos:
+            $ref: "#/$defs/source-pdos"
+
+          sink-pdos:
+            $ref: "#/$defs/sink-pdos"
+
+          op-sink-microwatt:
+            $ref: "#/$defs/op-sink-microwatt"
+
+        additionalProperties: false
+
+    additionalProperties: false
+
 dependencies:
   sink-vdos-v1: [ sink-vdos ]
   sink-vdos: [ sink-vdos-v1 ]
@@ -238,6 +242,36 @@ dependencies:
 required:
   - compatible
 
+$defs:
+  source-pdos:
+    description: An array of u32 with each entry providing supported power
+      source data object(PDO), the detailed bit definitions of PDO can be found
+      in "Universal Serial Bus Power Delivery Specification" chapter 6.4.1.2
+      Source_Capabilities Message, the order of each entry(PDO) should follow
+      the PD spec chapter 6.4.1. Required for power source and power dual role.
+      User can specify the source PDO array via PDO_FIXED/BATT/VAR/PPS_APDO()
+      defined in dt-bindings/usb/pd.h.
+    minItems: 1
+    maxItems: 7
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+
+  sink-pdos:
+    description: An array of u32 with each entry providing supported power sink
+      data object(PDO), the detailed bit definitions of PDO can be found in
+      "Universal Serial Bus Power Delivery Specification" chapter 6.4.1.3
+      Sink Capabilities Message, the order of each entry(PDO) should follow the
+      PD spec chapter 6.4.1. Required for power sink and power dual role. User
+      can specify the sink PDO array via PDO_FIXED/BATT/VAR/PPS_APDO() defined
+      in dt-bindings/usb/pd.h.
+    minItems: 1
+    maxItems: 7
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+
+  op-sink-microwatt:
+    description: Sink required operating power in microwatt, if source can't
+      offer the power, Capability Mismatch is set. Required for power sink and
+      power dual role.
+
 allOf:
   - if:
       properties:
-- 
2.42.0.820.g83a721a137-goog


