Return-Path: <devicetree+bounces-217028-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 837F7B56B8C
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 21:26:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1137917B24B
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 19:26:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 711AB2DEA67;
	Sun, 14 Sep 2025 19:26:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="c9k1HhXF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E74132D0C94
	for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 19:26:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757877974; cv=none; b=BXs73YwH55GU+wrtnC9zdXEUOebccmcWMA0AjX1zB0aLRGKYnW1xdeatQ8VlbBPdN0pL5efmoT/jeyzHmG9MEnh0u7d1J0ucXWM2fHmvpGcUCZEmmeEj6PYN55sc79k19o63tcINP0X8taxeRx1AGnbPe9XnL4Wq9TeIGSoJDDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757877974; c=relaxed/simple;
	bh=IlBm5b7UCspR+SdN3LnBaqvywdtk3VF0w3OOARM/UfI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=c87Br+5DJNTT1ZXgorsclcJqzXK/4+bWHmGXOYY/4ViXlsRr1jnpMoqoaqLF9+ByKeSofRvw1bNJFVYHx1KLLsw57s5YpXTP0xxp8ZFWMGyaUaMLBbJ2TM0zw7xFR/6DmtxQ51uGQSSXeiV0Ti4xIo5EpYE4kKfX1n6dlnXXXGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=c9k1HhXF; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-b07d01fd4fbso288306666b.0
        for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 12:26:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757877970; x=1758482770; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jwW/R/A5xZwys01CvakVSoYRo/l13tkxSycHTGd+3aM=;
        b=c9k1HhXFaTv2djP4Ki2YJvv6R6iWlzlmol63dv8zEWmoMJluCVaOBFUGgpUHnm5gJG
         cgOntZ1zlBH5sJ7phtkCpCUrcSDGdwxaDqKmj76c6BO+vd3KgJLHee1ExWmwKslgyMpF
         e65V9JZbeJ1TqEqPRjpFlvRcq7J/L5Cy8711a1y5FGiKxSTfep4JazaH8iqdwEtppo7f
         8SmINon1vF6LwQWDa72joNwKXxi7MDU7+wsEvtDDbUke5sVDWwls1esoIGyjB+jQpIaR
         iTRmatWxpTu945N1v8dRFgjQAVX4CzEgii+TT0fXox1iS9taEO42QZYOT9prfskrm4mj
         OOdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757877970; x=1758482770;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jwW/R/A5xZwys01CvakVSoYRo/l13tkxSycHTGd+3aM=;
        b=Mfd/9yJGrScYcZmpJ5pOOOAHvRjnH+iuqgRV0zZRo+E0+qrDK6uFize3LhLaQ48sPX
         3IOel6CKut7UD0x1faVGqc24s82eXYXSMQ8HyU3ZOSKhDgi274Y6flDOXesK/z61J8yG
         3A21+w2bt6yR/QztF5mDcCmCnm8VhBu7LxVqo0eOUPzGIPv8IHY/K2MUT4+d+3mDp+oh
         nRKGlZAS+hFDMkjBw6dD9dOaJ4ONrhQh35VLx87izHN7ss4ZTJ3LE6YfP1SgqYM3a3Xk
         LTU+bzQdCgbD/rIy4jZyHV33lkcz/eWiRy9w7sIYqWGKc17be/Caod7lxkMB1iIPJ43g
         IalQ==
X-Forwarded-Encrypted: i=1; AJvYcCV9thF2wYmcg7NdbR0jx5Y0Xsf4esa5XaOZ8QIieFdgK+fSkexagUH0ig8ONAbqaGWmR7kVPtFhoTbN@vger.kernel.org
X-Gm-Message-State: AOJu0YxHT5eF1XWLcSqG+6E0xGRdvGcdhgrlROK6JjwTApbj7itnKoAf
	tiOyivN8jumBrLb55YfZbPlvk7BitTA1be+O+N22ce5J0Mq+k5TVuxo=
X-Gm-Gg: ASbGncuus/XhxT8rn2aVjp25sUIvXKiRSVpfcr4cpvk/ZAPFOT1bexfDNQzQo1hocN0
	P0kTlfec6oyAQBLVTcqZqLkce/IWgu6I5r7zpgnqy343dQy6bo+y48cxjCoThJuO8dXZNyy9CZo
	jgIt0G0o/btX5z7nZps9QVVKKvKlUPo/+fEeM3vKFUGuojHRFjgmV/vok0/obX+4HNWTcLlncSV
	eWtLLacABbAZCAdnkKenPlEcLYqgjgLGlUxcVvYgWLR1TRCS1JViVb6lcs4ryybZZdZ/DfoFdyI
	8UwQz3o52+Fr/Nu7WcBxYss2Xoxwzjn5WOY/iOX7cUm5LTZCaxAeoGdxiHPRHI5sQ0Yyj7jDvDz
	nFPftbxqCJQyjNz6cFsS2CuvuTc3uZgxx2z7GXFqH2O5MdpA=
X-Google-Smtp-Source: AGHT+IFPkXo/2uSLf/bLQytE5K26K7uGtcJArvk6tN2XySQCzXiYk+iOQ19HEsbYc9HThEh3KxPD8A==
X-Received: by 2002:a17:907:944b:b0:b04:21c9:ad83 with SMTP id a640c23a62f3a-b07c3662cf5mr936292466b.52.1757877970114;
        Sun, 14 Sep 2025 12:26:10 -0700 (PDT)
Received: from localhost.localdomain ([2a0d:e487:226e:7d72:f695:46fd:3aef:7487])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07baf35488sm707841066b.38.2025.09.14.12.26.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Sep 2025 12:26:09 -0700 (PDT)
From: Jihed Chaibi <jihed.chaibi.dev@gmail.com>
To: andreas@kemnade.info
Cc: lee@kernel.org,
	krzk+dt@kernel.org,
	tony@atomide.com,
	robh@kernel.org,
	conor+dt@kernel.org,
	ukleinek@kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pwm@vger.kernel.org,
	linux-omap@vger.kernel.org,
	jihed.chaibi.dev@gmail.com
Subject: [PATCH v8 1/3] dt-bindings: mfd: twl: Add missing sub-nodes for TWL4030 & TWL603x
Date: Sun, 14 Sep 2025 21:25:14 +0200
Message-Id: <20250914192516.164629-2-jihed.chaibi.dev@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250914192516.164629-1-jihed.chaibi.dev@gmail.com>
References: <20250914192516.164629-1-jihed.chaibi.dev@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Update the main TI TWL-family binding to be self-contained and to fix
pre-existing validation errors.

To ensure future patches are bisectable, child nodes whose bindings
are in other patches (audio, keypad, usb, etc.) are now defined using
a flexible 'additionalProperties: true' pattern. This removes hard
dependencies between the MFD and subsystem bindings.

The complete dtbs_check for this binding is clean except for two
warnings originating from pre-existing bugs in the OMAP DTS files,
for which fixes have already been submitted separately [1][2].

Reviewed-by: Rob Herring <robh@kernel.org>
Acked-by: Uwe Kleine-König <ukleinek@kernel.org>
Signed-off-by: Jihed Chaibi <jihed.chaibi.dev@gmail.com>

---
Changes in v8:
 - Moved all (new and pre-existing) sub-node definitions to
   the main properties node, per maintainer feedback.
 - Referenced the existing ti,twl6030-charger.yaml and
   ti,twl6030-gpadc.yaml schemas for the TWL603x charger
   and gpadc nodes.

Changes in v7:
  - Moved twl4030/twl6030-specific child node definitions (audio, usb..)
    into the conditional 'if/then' block to improve schema accuracy.

Changes in v6:
  - Refactored the ti,twl4030-power compatible schema to be much stricter,
    removing obsolete board-specific compatibles (-n900, -beagleboard-xm),
    that were added in v5. The schema now only permits specific, valid
    fallback combinations. This change is supported by subsequent patches
    in the same series (2/3) & (3/3), which update the affected DTS files.
  - Enforced the presence of the compatible property on all relevant
    sub-nodes by adding 'required: - compatible', closing a key validation
    loophole.
  - Applied various formatting cleanups for readability and correctness.

Changes in v5:
  - Restructured the entire binding to define properties at the top
    level instead of if/then blocks, per maintainer feedback.
  - Added specific compatible enums for new child nodes instead of a
    generic 'compatible: true'.
  - Set 'unevaluatedProperties: false' for 'pwm' and 'pwmled' nodes to
    enforce strict validation.
  - Expanded 'power' node compatible enum to include all board-specific
    compatible strings (used in existing device trees, e.g. OMAP3-based
    boards) for more complete coverage.
  - Corrected the schema for the 'power' node compatible to properly
    handle single and fallback entries.

Changes in v4:
  - Reworked binding to be independent and bisectable per maintainer
    feedback by using 'additionalProperties: true' for child nodes.
  - Added board-specific compatibles to the 'power' node enum.
  - Added definitions for 'clocks' and 'clock-names' properties.
  - Renamed 'twl6030-usb' child node to 'usb-comparator' to match
    existing Device Tree usage (twl6030.dtsi).
  - Fixed some spelling/grammar erros in the description.

Changes in v3:
  - New patch to consolidate simple bindings (power, pwm) and add
    definitions for all child nodes to fix dtbs_check validation
    errors found in v2.

Changes in v2:
  - This patch is split from larger series [3] per maintainer feedback.
  - Added missing sub-node definitions, resolving dtbs_check errors.

[1] https://lore.kernel.org/all/20250822222530.113520-1-jihed.chaibi.dev@gmail.com/
[2] https://lore.kernel.org/all/20250822225052.136919-1-jihed.chaibi.dev@gmail.com/
[3] https://lore.kernel.org/all/20250816021523.167049-1-jihed.chaibi.dev@gmail.com/
---
 .../devicetree/bindings/mfd/ti,twl.yaml       | 319 +++++++++++++++---
 .../devicetree/bindings/mfd/twl4030-power.txt |  48 ---
 .../devicetree/bindings/pwm/ti,twl-pwm.txt    |  17 -
 .../devicetree/bindings/pwm/ti,twl-pwmled.txt |  17 -
 4 files changed, 273 insertions(+), 128 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/mfd/twl4030-power.txt
 delete mode 100644 Documentation/devicetree/bindings/pwm/ti,twl-pwm.txt
 delete mode 100644 Documentation/devicetree/bindings/pwm/ti,twl-pwmled.txt

diff --git a/Documentation/devicetree/bindings/mfd/ti,twl.yaml b/Documentation/devicetree/bindings/mfd/ti,twl.yaml
index f162ab60c09..776b04e182c 100644
--- a/Documentation/devicetree/bindings/mfd/ti,twl.yaml
+++ b/Documentation/devicetree/bindings/mfd/ti,twl.yaml
@@ -11,9 +11,9 @@ maintainers:
 
 description: |
   The TWLs are Integrated Power Management Chips.
-  Some version might contain much more analog function like
+  Some versions might contain much more analog functions like
   USB transceiver or Audio amplifier.
-  These chips are connected to an i2c bus.
+  These chips are connected to an I2C bus.
 
 allOf:
   - if:
@@ -49,33 +49,14 @@ allOf:
             ti,retain-on-reset: false
 
       properties:
-        madc:
-          type: object
-          $ref: /schemas/iio/adc/ti,twl4030-madc.yaml
-          unevaluatedProperties: false
-
         charger:
-          type: object
           $ref: /schemas/power/supply/twl4030-charger.yaml
           unevaluatedProperties: false
 
-        pwrbutton:
-          type: object
-          additionalProperties: false
-          properties:
-            compatible:
-              const: ti,twl4030-pwrbutton
-            interrupts:
-              items:
-                - items:
-                    const: 8
-
-        watchdog:
-          type: object
-          additionalProperties: false
-          properties:
-            compatible:
-              const: ti,twl4030-wdt
+        gpadc: false
+
+        usb-comparator: false
+
   - if:
       properties:
         compatible:
@@ -106,15 +87,30 @@ allOf:
 
       properties:
         charger:
-          type: object
-          properties:
-            compatible:
-              const: ti,twl6030-charger
+          $ref: /schemas/power/supply/ti,twl6030-charger.yaml
+          unevaluatedProperties: false
+
         gpadc:
-          type: object
           properties:
             compatible:
               const: ti,twl6030-gpadc
+
+        pwrbutton: false
+
+        madc: false
+
+        watchdog: false
+
+        audio: false
+
+        keypad: false
+
+        twl4030-usb: false
+
+        gpio: false
+
+        power: false
+
   - if:
       properties:
         compatible:
@@ -142,23 +138,36 @@ allOf:
 
       properties:
         charger:
-          type: object
-          properties:
-            compatible:
-              items:
-                - const: ti,twl6032-charger
-                - const: ti,twl6030-charger
+          $ref: /schemas/power/supply/ti,twl6030-charger.yaml
+          unevaluatedProperties: false
+
         gpadc:
-          type: object
           properties:
             compatible:
               const: ti,twl6032-gpadc
 
+        pwrbutton: false
+
+        madc: false
+
+        watchdog: false
+
+        audio: false
+
+        keypad: false
+
+        twl4030-usb: false
+
+        gpio: false
+
+        power: false
+
 properties:
   compatible:
-    description:
-      TWL4030 for integrated power-management/audio CODEC device used in OMAP3
-      based boards
+    description: >
+      TWL4030 for integrated power-management/audio CODEC device used in
+      OMAP3 based boards.
+
       TWL6030/32 for integrated power-management used in OMAP4 based boards
     enum:
       - ti,twl4030
@@ -181,28 +190,221 @@ properties:
   "#clock-cells":
     const: 1
 
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    const: fck
+
   charger:
     type: object
-    additionalProperties: true
+
     properties:
       compatible: true
+
     required:
       - compatible
 
   rtc:
     type: object
     additionalProperties: false
+
     properties:
       compatible:
         const: ti,twl4030-rtc
       interrupts:
         maxItems: 1
 
+  madc:
+    type: object
+    $ref: /schemas/iio/adc/ti,twl4030-madc.yaml
+    unevaluatedProperties: false
+
+  pwrbutton:
+    type: object
+    additionalProperties: false
+
+    properties:
+      compatible:
+        const: ti,twl4030-pwrbutton
+      interrupts:
+        items:
+          - items:
+              const: 8
+
+  watchdog:
+    type: object
+    additionalProperties: false
+
+    properties:
+      compatible:
+        const: ti,twl4030-wdt
+
+  audio:
+    type: object
+    additionalProperties: true
+
+    properties:
+      compatible:
+        const: ti,twl4030-audio
+
+    required:
+      - compatible
+
+  keypad:
+    type: object
+    additionalProperties: true
+
+    properties:
+      compatible:
+        const: ti,twl4030-keypad
+
+    required:
+      - compatible
+
+  twl4030-usb:
+    type: object
+    additionalProperties: true
+
+    properties:
+      compatible:
+        const: ti,twl4030-usb
+
+    required:
+      - compatible
+
+  gpio:
+    type: object
+    additionalProperties: true
+
+    properties:
+      compatible:
+        const: ti,twl4030-gpio
+
+    required:
+      - compatible
+
+  power:
+    type: object
+    additionalProperties: false
+    description: >
+      The power management module inside the TWL4030 provides several
+      facilities to control the power resources, including power scripts.
+
+      For now, the binding only supports the complete shutdown of the
+      system after poweroff.
+
+      Board-specific compatible strings may be used for platform-specific
+      power configurations.
+
+      A board-specific compatible string (e.g., ti,twl4030-power-omap3-evm)
+      may be paired with a generic fallback (generally for power saving mode).
+
+    properties:
+      compatible:
+        oneOf:
+          # Case 1: A single compatible string is provided.
+          - enum:
+              - ti,twl4030-power
+              - ti,twl4030-power-reset
+              - ti,twl4030-power-idle
+              - ti,twl4030-power-idle-osc-off
+              - ti,twl4030-power-omap3-sdp
+              - ti,twl4030-power-omap3-ldp
+              - ti,twl4030-power-omap3-evm
+
+          # Case 2: The specific, valid fallback for 'idle-osc-off'.
+          - items:
+              - const: ti,twl4030-power-idle-osc-off
+              - const: ti,twl4030-power-idle
+
+          # Case 3: The specific, valid fallback for 'omap3-evm'.
+          - items:
+              - const: ti,twl4030-power-omap3-evm
+              - const: ti,twl4030-power-idle
+
+      ti,system-power-controller:
+        type: boolean
+        deprecated: true
+        description: >
+          DEPRECATED. The standard 'system-power-controller'
+          property on the parent node should be used instead.
+
+      ti,use_poweroff:
+        type: boolean
+        deprecated: true
+        description: DEPRECATED, to be removed.
+
+    required:
+      - compatible
+
+  gpadc:
+    type: object
+    $ref: /schemas/iio/adc/ti,twl6030-gpadc.yaml
+    unevaluatedProperties: false
+
+    properties:
+      compatible: true
+
+  usb-comparator:
+    type: object
+    additionalProperties: true
+
+    properties:
+      compatible:
+        const: ti,twl6030-usb
+
+    required:
+      - compatible
+
+  pwm:
+    type: object
+    $ref: /schemas/pwm/pwm.yaml#
+    unevaluatedProperties: false
+    description:
+      PWM controllers (PWM1 and PWM2 on TWL4030, PWM0 and PWM1 on TWL6030/32).
+
+    properties:
+      compatible:
+        enum:
+          - ti,twl4030-pwm
+          - ti,twl6030-pwm
+
+      '#pwm-cells':
+        const: 2
+
+    required:
+      - compatible
+      - '#pwm-cells'
+
+  pwmled:
+    type: object
+    $ref: /schemas/pwm/pwm.yaml#
+    unevaluatedProperties: false
+    description: >
+      PWM controllers connected to LED terminals (PWMA and PWMB on TWL4030.
+
+      LED PWM on TWL6030/32, mainly used as charging indicator LED).
+
+    properties:
+      compatible:
+        enum:
+          - ti,twl4030-pwmled
+          - ti,twl6030-pwmled
+
+      '#pwm-cells':
+        const: 2
+
+    required:
+      - compatible
+      - '#pwm-cells'
+
 patternProperties:
   "^regulator-":
     type: object
     unevaluatedProperties: false
     $ref: /schemas/regulator/regulator.yaml
+
     properties:
       compatible: true
       regulator-initial-mode:
@@ -211,12 +413,13 @@ patternProperties:
                  # with low power consumption with low load current capability
           - 0x0e # Active mode, the regulator can deliver its nominal output
                  # voltage with full-load current capability
+
       ti,retain-on-reset:
-        description:
-          Does not turn off the supplies during warm
-          reset. Could be needed for VMMC, as TWL6030
-          reset sequence for this signal does not comply
-          with the SD specification.
+        description: >
+          Does not turn off the supplies during warm reset.
+
+          Could be needed for VMMC, as TWL6030 reset sequence for
+          this signal does not comply with the SD specification.
         type: boolean
 
 unevaluatedProperties: false
@@ -271,6 +474,16 @@ examples:
           compatible = "ti,twl6030-vmmc";
           ti,retain-on-reset;
         };
+
+        pwm {
+          compatible = "ti,twl6030-pwm";
+          #pwm-cells = <2>;
+        };
+
+        pwmled {
+          compatible = "ti,twl6030-pwmled";
+          #pwm-cells = <2>;
+        };
       };
     };
 
@@ -325,6 +538,20 @@ examples:
         watchdog {
           compatible = "ti,twl4030-wdt";
         };
+
+        power {
+          compatible = "ti,twl4030-power";
+        };
+
+        pwm {
+          compatible = "ti,twl4030-pwm";
+          #pwm-cells = <2>;
+        };
+
+        pwmled {
+          compatible = "ti,twl4030-pwmled";
+          #pwm-cells = <2>;
+        };
       };
     };
 ...
diff --git a/Documentation/devicetree/bindings/mfd/twl4030-power.txt b/Documentation/devicetree/bindings/mfd/twl4030-power.txt
deleted file mode 100644
index 3d19963312c..00000000000
--- a/Documentation/devicetree/bindings/mfd/twl4030-power.txt
+++ /dev/null
@@ -1,48 +0,0 @@
-Texas Instruments TWL family (twl4030) reset and power management module
-
-The power management module inside the TWL family provides several facilities
-to control the power resources, including power scripts. For now, the
-binding only supports the complete shutdown of the system after poweroff.
-
-Required properties:
-- compatible : must be one of the following
-	"ti,twl4030-power"
-	"ti,twl4030-power-reset"
-	"ti,twl4030-power-idle"
-	"ti,twl4030-power-idle-osc-off"
-
-The use of ti,twl4030-power-reset is recommended at least on
-3530 that needs a special configuration for warm reset to work.
-
-When using ti,twl4030-power-idle, the TI recommended configuration
-for idle modes is loaded to the tlw4030 PMIC.
-
-When using ti,twl4030-power-idle-osc-off, the TI recommended
-configuration is used with the external oscillator being shut
-down during off-idle. Note that this does not work on all boards
-depending on how the external oscillator is wired.
-
-Optional properties:
-
-- ti,system-power-controller: This indicates that TWL4030 is the
-  power supply master of the system. With this flag, the chip will
-  initiate an ACTIVE-to-OFF or SLEEP-to-OFF transition when the
-  system poweroffs.
-
-- ti,use_poweroff: Deprecated name for ti,system-power-controller
-
-Example:
-&i2c1 {
-	clock-frequency = <2600000>;
-
-	twl: twl@48 {
-		reg = <0x48>;
-		interrupts = <7>; /* SYS_NIRQ cascaded to intc */
-		interrupt-parent = <&intc>;
-
-		twl_power: power {
-			compatible = "ti,twl4030-power";
-			ti,use_poweroff;
-		};
-	};
-};
diff --git a/Documentation/devicetree/bindings/pwm/ti,twl-pwm.txt b/Documentation/devicetree/bindings/pwm/ti,twl-pwm.txt
deleted file mode 100644
index d97ca1964e9..00000000000
--- a/Documentation/devicetree/bindings/pwm/ti,twl-pwm.txt
+++ /dev/null
@@ -1,17 +0,0 @@
-Texas Instruments TWL series PWM drivers
-
-Supported PWMs:
-On TWL4030 series: PWM1 and PWM2
-On TWL6030 series: PWM0 and PWM1
-
-Required properties:
-- compatible: "ti,twl4030-pwm" or "ti,twl6030-pwm"
-- #pwm-cells: should be 2. See pwm.yaml in this directory for a description of
-  the cells format.
-
-Example:
-
-twl_pwm: pwm {
-	compatible = "ti,twl6030-pwm";
-	#pwm-cells = <2>;
-};
diff --git a/Documentation/devicetree/bindings/pwm/ti,twl-pwmled.txt b/Documentation/devicetree/bindings/pwm/ti,twl-pwmled.txt
deleted file mode 100644
index 31ca1b032ef..00000000000
--- a/Documentation/devicetree/bindings/pwm/ti,twl-pwmled.txt
+++ /dev/null
@@ -1,17 +0,0 @@
-Texas Instruments TWL series PWM drivers connected to LED terminals
-
-Supported PWMs:
-On TWL4030 series: PWMA and PWMB (connected to LEDA and LEDB terminals)
-On TWL6030 series: LED PWM (mainly used as charging indicator LED)
-
-Required properties:
-- compatible: "ti,twl4030-pwmled" or "ti,twl6030-pwmled"
-- #pwm-cells: should be 2. See pwm.yaml in this directory for a description of
-  the cells format.
-
-Example:
-
-twl_pwmled: pwmled {
-	compatible = "ti,twl6030-pwmled";
-	#pwm-cells = <2>;
-};
-- 
2.39.5


