Return-Path: <devicetree+bounces-31968-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 64BFC82D5F7
	for <lists+devicetree@lfdr.de>; Mon, 15 Jan 2024 10:29:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 10ED928320A
	for <lists+devicetree@lfdr.de>; Mon, 15 Jan 2024 09:29:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42DE3883B;
	Mon, 15 Jan 2024 09:29:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TPsdg61j"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51688EAF2
	for <devicetree@vger.kernel.org>; Mon, 15 Jan 2024 09:29:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-5592d72edecso1010659a12.0
        for <devicetree@vger.kernel.org>; Mon, 15 Jan 2024 01:29:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705310966; x=1705915766; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=VoDXqFFLk9wV6ltZ99cVwiQyTGhTczHKPc4pVMyihu8=;
        b=TPsdg61jtSV0YjC12KsS4M2mEn4vSfDQVUWkx71Mu0uy+zCn5XzeSibd20TxXAeHT7
         KBENF0v9/+4TI1KkEIUm3qpdHdF1tkwJwexwfTBgMbYKUBMnnAdClt2OPaeRXIJDKfi2
         kXWHCzKgerRuM0u0VmGJMx+g2/fg7cuIxPAC6i1ZIQ5K+xUzaqkzQXwJ1yG85X4KUzxu
         8L//EMFx/zFdkATJ5lV7YkYsm38gY4RQ/lM+kZKw7/56RcuvDqtIDo1yLNOzstdyfCbR
         ZrxX+8lcw9pABGKDE1muVR8nis4aH5FR1DizjMsm1CNQVfkV5iTcXBkAATzxiuu/HRHg
         Qvhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705310966; x=1705915766;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VoDXqFFLk9wV6ltZ99cVwiQyTGhTczHKPc4pVMyihu8=;
        b=rBHN7T/AiEGtzbarNL1wwq9YE6+WDF1thPV4oS/N8VFAcw+hVWJAtGwdIsnAJzSkZj
         9IoLpxc9HZ3sEwtXPuyGBn+qwqlhB4xWbF6mx13F9UcWa+PqqDFkQsNzcrSaZoxE4MVT
         zq85NFnQHJw8wIC+u1o9K8ZCqCfsVt500fYVjCd5M9muE88Pyl11VJn3hRykk6Y8CBep
         wQSP+lZqU3u639J1/DOMJ7U0QqXBLRZGR4j1cpPExlQ2YcvOXB3SGVp/tKdBtm6eRnke
         hOmeEMMGfx0CEjO7LqWnLZHpwdx7NuWuFui0cvzdaL1xnwrV7S0f+SyPeXrs3st7qBjO
         e/2w==
X-Gm-Message-State: AOJu0YwEP2cn66R2ieC3UMsUtQtVfSQxUMud2FF5pzAcheiu/+UTBF8Q
	NENr7cVcb6SbcsNiWvCtocueWN3FJfSa/Q==
X-Google-Smtp-Source: AGHT+IE9zqq24puqgCWgG7/Z1GO1TNVC+Q5I3mqjOagkZtncMyOLavJV1OOKm0yrJuUqktkc6HrPnA==
X-Received: by 2002:a05:6402:5148:b0:558:91c4:2e61 with SMTP id n8-20020a056402514800b0055891c42e61mr2544008edd.40.1705310966547;
        Mon, 15 Jan 2024 01:29:26 -0800 (PST)
Received: from krzk-bin.. ([178.197.215.66])
        by smtp.gmail.com with ESMTPSA id e10-20020a056402104a00b005593a4e1635sm1459143edu.11.2024.01.15.01.29.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jan 2024 01:29:26 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Luca Weiss <luca.weiss@fairphone.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-msm@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: usb: add common Type-C USB Switch schema
Date: Mon, 15 Jan 2024 10:29:23 +0100
Message-Id: <20240115092923.105275-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Several bindings implement parts of Type-C USB orientation and mode
switching, and retiming.  Keep definition of such properties in one
place, new usb-switch schema, to avoid duplicate defines.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/usb/fcs,fsa4480.yaml  | 12 ++--
 .../devicetree/bindings/usb/gpio-sbu-mux.yaml | 12 ++--
 .../devicetree/bindings/usb/nxp,ptn36502.yaml | 12 ++--
 .../bindings/usb/onnn,nb7vpq904m.yaml         | 13 ++--
 .../bindings/usb/qcom,wcd939x-usbss.yaml      | 12 ++--
 .../devicetree/bindings/usb/usb-switch.yaml   | 68 +++++++++++++++++++
 6 files changed, 93 insertions(+), 36 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/usb/usb-switch.yaml

diff --git a/Documentation/devicetree/bindings/usb/fcs,fsa4480.yaml b/Documentation/devicetree/bindings/usb/fcs,fsa4480.yaml
index f9410eb76a62..8b25b9a01ced 100644
--- a/Documentation/devicetree/bindings/usb/fcs,fsa4480.yaml
+++ b/Documentation/devicetree/bindings/usb/fcs,fsa4480.yaml
@@ -27,13 +27,8 @@ properties:
   vcc-supply:
     description: power supply (2.7V-5.5V)
 
-  mode-switch:
-    description: Flag the port as possible handle of altmode switching
-    type: boolean
-
-  orientation-switch:
-    description: Flag the port as possible handler of orientation switching
-    type: boolean
+  mode-switch: true
+  orientation-switch: true
 
   port:
     $ref: /schemas/graph.yaml#/$defs/port-base
@@ -79,6 +74,9 @@ required:
   - reg
   - port
 
+allOf:
+  - $ref: usb-switch.yaml#
+
 additionalProperties: false
 
 examples:
diff --git a/Documentation/devicetree/bindings/usb/gpio-sbu-mux.yaml b/Documentation/devicetree/bindings/usb/gpio-sbu-mux.yaml
index d3b2b666ec2a..88e1607cf053 100644
--- a/Documentation/devicetree/bindings/usb/gpio-sbu-mux.yaml
+++ b/Documentation/devicetree/bindings/usb/gpio-sbu-mux.yaml
@@ -33,13 +33,8 @@ properties:
   vcc-supply:
     description: power supply
 
-  mode-switch:
-    description: Flag the port as possible handle of altmode switching
-    type: boolean
-
-  orientation-switch:
-    description: Flag the port as possible handler of orientation switching
-    type: boolean
+  mode-switch: true
+  orientation-switch: true
 
   port:
     $ref: /schemas/graph.yaml#/properties/port
@@ -54,6 +49,9 @@ required:
   - orientation-switch
   - port
 
+allOf:
+  - $ref: usb-switch.yaml#
+
 additionalProperties: false
 
 examples:
diff --git a/Documentation/devicetree/bindings/usb/nxp,ptn36502.yaml b/Documentation/devicetree/bindings/usb/nxp,ptn36502.yaml
index eee548ac1abe..d805dde80796 100644
--- a/Documentation/devicetree/bindings/usb/nxp,ptn36502.yaml
+++ b/Documentation/devicetree/bindings/usb/nxp,ptn36502.yaml
@@ -20,13 +20,8 @@ properties:
   vdd18-supply:
     description: Power supply for VDD18 pin
 
-  retimer-switch:
-    description: Flag the port as possible handle of SuperSpeed signals retiming
-    type: boolean
-
-  orientation-switch:
-    description: Flag the port as possible handler of orientation switching
-    type: boolean
+  orientation-switch: true
+  retimer-switch: true
 
   ports:
     $ref: /schemas/graph.yaml#/properties/ports
@@ -49,6 +44,9 @@ required:
   - compatible
   - reg
 
+allOf:
+  - $ref: usb-switch.yaml#
+
 additionalProperties: false
 
 examples:
diff --git a/Documentation/devicetree/bindings/usb/onnn,nb7vpq904m.yaml b/Documentation/devicetree/bindings/usb/onnn,nb7vpq904m.yaml
index c0201da002f6..589914d22bf2 100644
--- a/Documentation/devicetree/bindings/usb/onnn,nb7vpq904m.yaml
+++ b/Documentation/devicetree/bindings/usb/onnn,nb7vpq904m.yaml
@@ -21,14 +21,8 @@ properties:
     description: power supply (1.8V)
 
   enable-gpios: true
-
-  retimer-switch:
-    description: Flag the port as possible handle of SuperSpeed signals retiming
-    type: boolean
-
-  orientation-switch:
-    description: Flag the port as possible handler of orientation switching
-    type: boolean
+  orientation-switch: true
+  retimer-switch: true
 
   ports:
     $ref: /schemas/graph.yaml#/properties/ports
@@ -95,6 +89,9 @@ required:
   - compatible
   - reg
 
+allOf:
+  - $ref: usb-switch.yaml#
+
 additionalProperties: false
 
 examples:
diff --git a/Documentation/devicetree/bindings/usb/qcom,wcd939x-usbss.yaml b/Documentation/devicetree/bindings/usb/qcom,wcd939x-usbss.yaml
index 7ddfd3313a18..96346723f3e9 100644
--- a/Documentation/devicetree/bindings/usb/qcom,wcd939x-usbss.yaml
+++ b/Documentation/devicetree/bindings/usb/qcom,wcd939x-usbss.yaml
@@ -35,13 +35,8 @@ properties:
   vdd-supply:
     description: USBSS VDD power supply
 
-  mode-switch:
-    description: Flag the port as possible handle of altmode switching
-    type: boolean
-
-  orientation-switch:
-    description: Flag the port as possible handler of orientation switching
-    type: boolean
+  mode-switch: true
+  orientation-switch: true
 
   ports:
     $ref: /schemas/graph.yaml#/properties/ports
@@ -63,6 +58,9 @@ required:
   - reg
   - ports
 
+allOf:
+  - $ref: usb-switch.yaml#
+
 additionalProperties: false
 
 examples:
diff --git a/Documentation/devicetree/bindings/usb/usb-switch.yaml b/Documentation/devicetree/bindings/usb/usb-switch.yaml
new file mode 100644
index 000000000000..0d0b60234d1f
--- /dev/null
+++ b/Documentation/devicetree/bindings/usb/usb-switch.yaml
@@ -0,0 +1,68 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/usb/usb-switch.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: USB Orientation and Mode Switches Common Properties
+
+maintainers:
+  - Greg Kroah-Hartman <gregkh@linuxfoundation.org>
+
+description:
+  Common properties for devices handling USB mode and orientation switching.
+
+properties:
+  mode-switch:
+    description: Possible handle of altmode switching
+    type: boolean
+
+  orientation-switch:
+    description: Possible handler of orientation switching
+    type: boolean
+
+  retimer-switch:
+    description: Possible handle of SuperSpeed signals retiming
+    type: boolean
+
+  port:
+    $ref: /schemas/graph.yaml#/properties/port
+    description:
+      A port node to link the device to a TypeC controller for the purpose of
+      handling altmode muxing and orientation switching.
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+    properties:
+      port@0:
+        $ref: /schemas/graph.yaml#/properties/port
+        description:
+          Super Speed (SS) Output endpoint to the Type-C connector
+
+      port@1:
+        $ref: /schemas/graph.yaml#/$defs/port-base
+        description:
+          Super Speed (SS) Input endpoint from the Super-Speed PHY
+        unevaluatedProperties: false
+
+        properties:
+          endpoint:
+            $ref: /schemas/graph.yaml#/$defs/endpoint-base
+            # additionalProperties: true
+            unevaluatedProperties: false
+            properties:
+              data-lanes:
+                $ref: /schemas/types.yaml#/definitions/uint32-array
+                minItems: 1
+                maxItems: 8
+                uniqueItems: true
+                items:
+                  maximum: 8
+
+oneOf:
+  - required:
+      - port
+  - required:
+      - ports
+
+additionalProperties: true
-- 
2.34.1


