Return-Path: <devicetree+bounces-21454-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C3F04803B55
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 18:23:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E68391C20AFC
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 17:23:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76FD92E82F;
	Mon,  4 Dec 2023 17:23:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="iJHL+ain"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-x114a.google.com (mail-yw1-x114a.google.com [IPv6:2607:f8b0:4864:20::114a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F0BDB106
	for <devicetree@vger.kernel.org>; Mon,  4 Dec 2023 09:22:59 -0800 (PST)
Received: by mail-yw1-x114a.google.com with SMTP id 00721157ae682-5d33b70fce8so64762067b3.0
        for <devicetree@vger.kernel.org>; Mon, 04 Dec 2023 09:22:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1701710579; x=1702315379; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=QagWLgs2h5+JriAq/VG8W2CPIQLr8/EIksrOH5rGRok=;
        b=iJHL+ainzGbec5xnxYzL0+kGDHtG3jttn9tf8pvu0apBSrFXzhHpO1YylpaIQTkpsK
         eJSlsEf2q5/xvv0pKOocrI6a0h72GFWUxCNXc3SqwjoKybTD2Aj4eTzTqe0rFV6Y2DsQ
         c8uSx4mOFkIxRN1bJ33tboq33x0lhqsCAujr3dI7nAfJvzEAP4PlXjXCP49gU1q74KZ4
         y32O3BVUu+qSSQuB4Y0dSgjCdQN1/xi6VnEh98xRxT52pvMO2K9J+qPvSDx/zMt1LYsM
         LZjpjVsy4Lt9qA2HitMPf9Bf5Ygt5o33UgvU79NmEUx633kxMwSLKLH+W4wHBbc+shBb
         fqVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701710579; x=1702315379;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QagWLgs2h5+JriAq/VG8W2CPIQLr8/EIksrOH5rGRok=;
        b=jvgrhL17H82DaNsJb31hQw2/Ym29ND49bw8UPGTSmilPi4B/Q99jj3tuEQ7zgx82oU
         WjbgX3eRQzBmI6DOPSeR59eIy3x1VXzqOLGmR6H9rxGYfatg/SMS3ysi5C4Khv/j9G43
         BgaRak46SvDweJZVjlxEp1NHZEt/EU2NBpjDgzBjNnPt4JypvrecZwutRPGhbXV1YejY
         CDmnr3R+BHauPbe8wt/JNGifT5lUys0Q8Rw6IlLmPpgJqIyNKxZu+hiZ42y827gJKZxs
         58/FIoOCaDlDgwYl5AC08TzXMQ6/Jh2qsdVnVuvNXIPbL91LR19CG4mO/L47B6yd7FVE
         ltLQ==
X-Gm-Message-State: AOJu0Yy5cV3Li1ABq3rgvtUGPlvFdIFQNIqvVvNHGcqg/NtmlRR3n6Te
	LTwxP36RqMEF9mLF5pJBdY7QEvIOHg1W
X-Google-Smtp-Source: AGHT+IEd9vWzgDWbNklyIFzMD3b54MAcf1KAW0FQHYWTCA9FVIaju91gFmTJLgGBIMKSsG84zlbDdhS7HGBy
X-Received: from kyletso-p620lin01.ntc.corp.google.com ([2401:fa00:fc:202:ac51:a57:5e72:a957])
 (user=kyletso job=sendgmr) by 2002:a81:4425:0:b0:5d3:472b:3427 with SMTP id
 r37-20020a814425000000b005d3472b3427mr393951ywa.6.1701710579266; Mon, 04 Dec
 2023 09:22:59 -0800 (PST)
Date: Tue,  5 Dec 2023 01:22:46 +0800
In-Reply-To: <20231204172247.1087152-1-kyletso@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20231204172247.1087152-1-kyletso@google.com>
X-Mailer: git-send-email 2.43.0.rc2.451.g8631bc7472-goog
Message-ID: <20231204172247.1087152-2-kyletso@google.com>
Subject: [PATCH v4 1/2] dt-bindings: connector: Add child nodes for multiple
 PD capabilities
From: Kyle Tso <kyletso@google.com>
To: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	linux@roeck-us.net, heikki.krogerus@linux.intel.com, 
	gregkh@linuxfoundation.org
Cc: badhri@google.com, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	Kyle Tso <kyletso@google.com>
Content-Type: text/plain; charset="UTF-8"

The realtime Power Delivery capabilities of a port may not be always the
same under different hardware status such as the port usage of a
multiple port system or the status of the battery pack. Define the PD
capability sets in DT for better configurability in Type-C/PD port
drivers.

Define an optional child node "capabilities" to contain multiple USB
Power Delivery capabilities.

Define child nodes with pattern (e.g. caps-0, caps-1) under
"capabilities". Each node contains PDO data of a selectable Power
Delivery capability.

Also define common properties for source-pdos, sink-pdos, and
op-sink-microwatt that can be referenced.

Signed-off-by: Kyle Tso <kyletso@google.com>
---
v3 -> v4
 - modified the structure of the bindings as corrected in v2
 - modified the commit message to better describe the reason of this
   change

.../bindings/connector/usb-connector.yaml     | 78 ++++++++++++-------
 1 file changed, 49 insertions(+), 29 deletions(-)

diff --git a/Documentation/devicetree/bindings/connector/usb-connector.yaml b/Documentation/devicetree/bindings/connector/usb-connector.yaml
index 7c8a3e8430d3..50fec97436d8 100644
--- a/Documentation/devicetree/bindings/connector/usb-connector.yaml
+++ b/Documentation/devicetree/bindings/connector/usb-connector.yaml
@@ -14,6 +14,8 @@ description:
   of a USB interface controller or a separate node when it is attached to both
   MUX and USB interface controller.
 
+$ref: "#/$defs/capabilities"
+
 properties:
   compatible:
     oneOf:
@@ -119,30 +121,6 @@ properties:
 
   # The following are optional properties for "usb-c-connector" with power
   # delivery support.
-  source-pdos:
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
-
-  sink-pdos:
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
-
   sink-vdos:
     description: An array of u32 with each entry, a Vendor Defined Message Object (VDO),
       providing additional information corresponding to the product, the detailed bit
@@ -166,11 +144,6 @@ properties:
     maxItems: 6
     $ref: /schemas/types.yaml#/definitions/uint32-array
 
-  op-sink-microwatt:
-    description: Sink required operating power in microwatt, if source can't
-      offer the power, Capability Mismatch is set. Required for power sink and
-      power dual role.
-
   port:
     $ref: /schemas/graph.yaml#/properties/port
     description: OF graph bindings modeling a data bus to the connector, e.g.
@@ -231,6 +204,21 @@ properties:
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
+        $ref: "#/$defs/capabilities"
+
+        unevaluatedProperties: false
+
+    additionalProperties: false
+
 dependencies:
   sink-vdos-v1: [ sink-vdos ]
   sink-vdos: [ sink-vdos-v1 ]
@@ -238,6 +226,38 @@ dependencies:
 required:
   - compatible
 
+$defs:
+  capabilities:
+    properties:
+      source-pdos:
+        description: An array of u32 with each entry providing supported power
+          source data object(PDO), the detailed bit definitions of PDO can be found
+          in "Universal Serial Bus Power Delivery Specification" chapter 6.4.1.2
+          Source_Capabilities Message, the order of each entry(PDO) should follow
+          the PD spec chapter 6.4.1. Required for power source and power dual role.
+          User can specify the source PDO array via PDO_FIXED/BATT/VAR/PPS_APDO()
+          defined in dt-bindings/usb/pd.h.
+        minItems: 1
+        maxItems: 7
+        $ref: /schemas/types.yaml#/definitions/uint32-array
+
+    sink-pdos:
+      description: An array of u32 with each entry providing supported power sink
+        data object(PDO), the detailed bit definitions of PDO can be found in
+        "Universal Serial Bus Power Delivery Specification" chapter 6.4.1.3
+        Sink Capabilities Message, the order of each entry(PDO) should follow the
+        PD spec chapter 6.4.1. Required for power sink and power dual role. User
+        can specify the sink PDO array via PDO_FIXED/BATT/VAR/PPS_APDO() defined
+        in dt-bindings/usb/pd.h.
+      minItems: 1
+      maxItems: 7
+      $ref: /schemas/types.yaml#/definitions/uint32-array
+
+    op-sink-microwatt:
+      description: Sink required operating power in microwatt, if source can't
+        offer the power, Capability Mismatch is set. Required for power sink and
+        power dual role.
+
 allOf:
   - if:
       properties:
-- 
2.43.0.rc2.451.g8631bc7472-goog


