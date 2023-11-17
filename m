Return-Path: <devicetree+bounces-16662-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B11C77EF32D
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 13:59:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4189A281116
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 12:59:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A22230D03;
	Fri, 17 Nov 2023 12:59:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="iFlL9k8y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 82714D5A
	for <devicetree@vger.kernel.org>; Fri, 17 Nov 2023 04:59:34 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-4083ac51d8aso16525435e9.2
        for <devicetree@vger.kernel.org>; Fri, 17 Nov 2023 04:59:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1700225973; x=1700830773; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ehKsq2eqEr9TyGMWxrUge7Kmly0yBlqo6X+P3u0B3wQ=;
        b=iFlL9k8y//xUTs+tOOYlyTZMbZa3ci8nw7R51ub3WXKV4ijOm9uUPKj4xrRJqEp6ui
         IynFk1gDTdfxQFbwgQCHCxHmZi0BtoFjUnYs0DoM1DL+jahyKsmFkzVpvUloSqyzNVTw
         cezQizlZjG6Ecy4EeHrGiJlE4EXt3A59awt1Jn2aZcuX2+50KqcG5vas6Li4SdKmpmWQ
         ItNnWQAJ+69beSJynK+TR6y1NLrsfc79TPhHu1ad6xg329eCQiAFo/bPPBSp+e5Dz4qz
         7rekA4uTI9UBmu/02Tkprcptp94cSogb7DXxxyEocpM+rfclEQb5CeQz4MVcWuswiXxB
         C/3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700225973; x=1700830773;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ehKsq2eqEr9TyGMWxrUge7Kmly0yBlqo6X+P3u0B3wQ=;
        b=cqw9yKcy1BNDiXhYgcO3keiKyb36jUgjhNW51++3jbA8BxMaeIono0TJlLlm6qTJk0
         csoqgi6KJHdZ0U5Txh+8V9cRZ7YCgURxlIgF36MMQ/IJuJxgKIlMV10lQ/ZqEBPCURpx
         eXxfSU90+UAVFxfL6QdZjVrUA0WnvtPA07ffEBx3LvO+KUGBKc+cF+CETTH2D8VBN54j
         YyqZL0Fdrp6ETEIP1d0Bu/pfXz9FvwlzlwDBYRaxEoqXMVHMX1dSpk1tqOqAWZAh5RbG
         czupOiyd1Mxv/WZsfQuMrQwXIJAL88T2rMtM2YTUWyDbKaagcwHlalwnzGzf+ZUFmz82
         Zneg==
X-Gm-Message-State: AOJu0YxBZPYVrFb7J+DVeu/resvZyDNK598Dtd+NtLn0AdTuDdyANQh2
	DIYCbwwYWgPsXLZOIw14CCAEow==
X-Google-Smtp-Source: AGHT+IFC0iXQHpwA92gius4GH87N+HDv/7i2pDfsJ6iqZJFZArhvP8c/3r0xnTjBxdG9b/nbBNWc2Q==
X-Received: by 2002:a05:600c:3548:b0:401:daf2:2737 with SMTP id i8-20020a05600c354800b00401daf22737mr14787836wmq.30.1700225972765;
        Fri, 17 Nov 2023 04:59:32 -0800 (PST)
Received: from toaster.lan ([2a01:e0a:3c5:5fb1:8196:e423:38cb:9a09])
        by smtp.googlemail.com with ESMTPSA id k21-20020a05600c1c9500b0040a487758dcsm2671343wms.6.2023.11.17.04.59.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Nov 2023 04:59:32 -0800 (PST)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Thierry Reding <thierry.reding@gmail.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Jerome Brunet <jbrunet@baylibre.com>,
	Kevin Hilman <khilman@baylibre.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-amlogic@lists.infradead.org,
	linux-pwm@vger.kernel.org,
	JunYi Zhao <junyi.zhao@amlogic.com>
Subject: [PATCH v2 1/6] dt-bindings: pwm: amlogic: fix s4 bindings
Date: Fri, 17 Nov 2023 13:59:11 +0100
Message-ID: <20231117125919.1696980-2-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231117125919.1696980-1-jbrunet@baylibre.com>
References: <20231117125919.1696980-1-jbrunet@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit

s4 has been added to the compatible list while converting the Amlogic PWM
binding documentation from txt to yaml.

However, on the s4, the clock bindings have different meaning compared to
the previous SoCs.

On the previous SoCs the clock bindings used to describe which input the
PWM channel multiplexer should pick among its possible parents.

This is very much tied to the driver implementation, instead of describing
the HW for what it is. When support for the Amlogic PWM was first added,
how to deal with clocks through DT was not as clear as it nowadays.
The Linux driver now ignores this DT setting, but still relies on the
hard-coded list of clock sources.

On the s4, the input multiplexer is gone. The clock bindings actually
describe the clock as it exists, not a setting. The property has a
different meaning, even if it is still 2 clocks and it would pass the check
when support is actually added.

Also the s4 cannot work if the clocks are not provided, so the property no
longer optional.

Finally, for once it makes sense to see the input as being numbered
somehow. No need to bother with clock-names on the s4 type of PWM.

Fixes: 43a1c4ff3977 ("dt-bindings: pwm: Convert Amlogic Meson PWM binding")
Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 .../devicetree/bindings/pwm/pwm-amlogic.yaml  | 69 ++++++++++++++++---
 1 file changed, 60 insertions(+), 9 deletions(-)

diff --git a/Documentation/devicetree/bindings/pwm/pwm-amlogic.yaml b/Documentation/devicetree/bindings/pwm/pwm-amlogic.yaml
index 527864a4d855..387976ed36d5 100644
--- a/Documentation/devicetree/bindings/pwm/pwm-amlogic.yaml
+++ b/Documentation/devicetree/bindings/pwm/pwm-amlogic.yaml
@@ -9,9 +9,6 @@ title: Amlogic PWM
 maintainers:
   - Heiner Kallweit <hkallweit1@gmail.com>
 
-allOf:
-  - $ref: pwm.yaml#
-
 properties:
   compatible:
     oneOf:
@@ -43,12 +40,8 @@ properties:
     maxItems: 2
 
   clock-names:
-    oneOf:
-      - items:
-          - enum: [clkin0, clkin1]
-      - items:
-          - const: clkin0
-          - const: clkin1
+    minItems: 1
+    maxItems: 2
 
   "#pwm-cells":
     const: 3
@@ -57,6 +50,57 @@ required:
   - compatible
   - reg
 
+allOf:
+  - $ref: pwm.yaml#
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - amlogic,meson8-pwm
+              - amlogic,meson8b-pwm
+              - amlogic,meson-gxbb-pwm
+              - amlogic,meson-gxbb-ao-pwm
+              - amlogic,meson-axg-ee-pwm
+              - amlogic,meson-axg-ao-pwm
+              - amlogic,meson-g12a-ee-pwm
+              - amlogic,meson-g12a-ao-pwm-ab
+              - amlogic,meson-g12a-ao-pwm-cd
+              - amlogic,meson-gx-pwm
+              - amlogic,meson-gx-ao-pwm
+    then:
+      # Historic bindings tied to the driver implementation
+      # The clocks provided here are meant to be matched with the input
+      # known (hard-coded) in the driver and used to select pwm clock
+      # source. Currently, the linux driver ignores this.
+      properties:
+        clock-names:
+          oneOf:
+            - items:
+                - enum: [clkin0, clkin1]
+            - items:
+                - const: clkin0
+                - const: clkin1
+
+  # Newer IP block take a single input per channel, instead of 4 inputs
+  # for both channels
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - amlogic,meson-s4-pwm
+    then:
+      properties:
+        clocks:
+          items:
+            - description: input clock of PWM channel A
+            - description: input clock of PWM channel B
+        clock-names: false
+      required:
+        - clocks
+
 additionalProperties: false
 
 examples:
@@ -68,3 +112,10 @@ examples:
       clock-names = "clkin0", "clkin1";
       #pwm-cells = <3>;
     };
+  - |
+    pwm@1000 {
+      compatible = "amlogic,meson-s4-pwm";
+      reg = <0x1000 0x10>;
+      clocks = <&pwm_src_a>, <&pwm_src_b>;
+      #pwm-cells = <3>;
+    };
-- 
2.42.0


