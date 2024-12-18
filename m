Return-Path: <devicetree+bounces-132386-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D1E769F6D6A
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 19:34:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 203E01689A6
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 18:34:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3A551FC0FF;
	Wed, 18 Dec 2024 18:34:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=remote-tech-co-uk.20230601.gappssmtp.com header.i=@remote-tech-co-uk.20230601.gappssmtp.com header.b="jZkLrQS4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B56B91F75B2
	for <devicetree@vger.kernel.org>; Wed, 18 Dec 2024 18:34:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734546856; cv=none; b=Wq8noabyFunv/Je/iIDsLlIk+iJUWZV8+48FrZBcJEnu+6PuRUp/sIlzzI2m6MjIDGG7vc24X5f//ReglYZAO17+CdIhjOXfMAtIQf3AriGXvx94oOkGszuof+Qnzry28Npho6wGK3PSPzNm92513/A4DlsrGqeBWx5STsPAA6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734546856; c=relaxed/simple;
	bh=7rngWZ9wiuEDCfmWqP6grwXXvwbRzum8pl+1rdwIHf0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=XqbiQ8yucQy2MpxazfBDFWKj/gv136Fe55mTJUSf/6S+8MGGERAhztk/HdFhKHD48FcuqRCkda/E6jizZnUEqGRB+5300jnhXnMpAVRp91WNzY0LjnLogBZ/nk0YoTt+ZPNdAeOhubHFRZn2etO+KCOu1THo9NHlbFqiwHd1EV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=remote-tech.co.uk; spf=pass smtp.mailfrom=remote-tech.co.uk; dkim=pass (2048-bit key) header.d=remote-tech-co-uk.20230601.gappssmtp.com header.i=@remote-tech-co-uk.20230601.gappssmtp.com header.b=jZkLrQS4; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=remote-tech.co.uk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=remote-tech.co.uk
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-aa543c4db92so92296666b.0
        for <devicetree@vger.kernel.org>; Wed, 18 Dec 2024 10:34:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=remote-tech-co-uk.20230601.gappssmtp.com; s=20230601; t=1734546852; x=1735151652; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SJ5HY36/J0ui11Dg7uaZuRRufGAN1US5gvTMU1EzA00=;
        b=jZkLrQS4PWZEgTP4ioQEU41ss7frw50ZHnu6NnvSR9kptFSuLcYG4INvHml8aTY02w
         RIbIslJRQQ35/CNi7LPULBBRQfugsp/pecAFfvc/n0vyvwVGC1Ce33mRuEC8Nv0K+TKi
         Z9ZQ2EpGOy/XPl0WzSd3olf6z11/xNdb80lOcns3fXf74EviEOJhqO3svWygIboUkqGf
         is7LwgGdpT0ttDorBFXHvdjLzOr+0PicQTlx2lYl6p9xvDh1zYUmTPgn1IZXmkyA3dnd
         Cpw3GVPkBstOrJkddr1X1ffwPXzp8cGmN533Zs6v1rPEYRD1XOHv8d33lXQ7cfILwQMU
         fSLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734546852; x=1735151652;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SJ5HY36/J0ui11Dg7uaZuRRufGAN1US5gvTMU1EzA00=;
        b=SXfXoE1WYSChCCkFPueggWC9owclHiGKYu44GVBfyPuQAX8Jrz3JiOb/GFMQLXzZFA
         YQupnowkU6QyT3VGh3PXR50N/HT6mxim3Z3EYLIELWC5GM0G24jJoBG5yqZ0rGQHCflu
         tCI9DvA/OJ4vfig3/Jfyo0UCS7j/qlq+LWa/YeptqZfZYdKkgwyJNldyLi3xA30WsTYJ
         3lmzAyI1iqqtHOYRoOPjaeZF3Ym9qWMqy8XuXYKTnYRDJK5T0I4jsRaLSat9y0TPQ7mB
         MeYz77jFxlLThCzN+MrJxtVi4RdX78o4yoUhmDjAiaKAR19NQE8RdJNd7jqIBgjgIMeR
         BANg==
X-Forwarded-Encrypted: i=1; AJvYcCXujU1ByI1RTdKXfse+plzwuO4wZlEDdpNCF51Eqpelwp8fXUmWatimWcYIXeUKO/cOdvjGbWI2eoTb@vger.kernel.org
X-Gm-Message-State: AOJu0YzD37Nfh9rMwGw5osy6oTDFxHSjNq8N2pNr5SxrNxwI2BUU5Tx/
	ipe0/CruJ0pbQoDnfsVT924qRNYSiw5HnjTF3XZr6qEjxkaOFq3c7Y0T0YJunvpOYQzkl9cuV6u
	1O76G0fWPeJMwdXO0E8iDy3HyMkYACKLQqrs79aLM9G08P0BYbP7pahlYRz2rYvO43e5z0gQg/L
	1wO5Phm8w2iEPaPBtOQoy1ramx
X-Gm-Gg: ASbGncupf2FyfF/vzfGCLaHyOXC5fpLw4YO4+caOe2kEfWyazxjEM1meRonc0giJQR/
	4RooEpUPDng7cazrcSYxyxMJbXWlbbA+gkrJzS1ND/bSLa/T97cmOkZjb+FAkjlGUrgfxJ4F5SJ
	AEeonze4lN/+8VIKLSfqzaGX1frDjG4JVq2pfD8Y7jRNRqWgO5lz0co2rE9uSFfCQ71JzMOtbVS
	UAYblJMM641s8IcCYk7SPAT9At9JbPq+i8nhNv2B/NBkurC9a4+Wq5/tJ2w20wo8mp8n2Qs1oaL
	yhU/nVNbRIqUljTXJm2RI44ZMan/GRv2QE4t0DAb0mgDBhF38glGgj0fL3rOljl1/CIP1KwXK3X
	T
X-Google-Smtp-Source: AGHT+IGCDn2MMew2mm6iT8vUhiznPmGDCq2Me/lyKwaCwBQSuyo6CyoKnToSJXEdjSDkLzDOIZQhtA==
X-Received: by 2002:a17:907:3f89:b0:aab:c35e:509b with SMTP id a640c23a62f3a-aac07afaf01mr41007666b.55.1734546852036;
        Wed, 18 Dec 2024 10:34:12 -0800 (PST)
Received: from localhost.localdomain (ipb21b247d.dynamic.kabel-deutschland.de. [178.27.36.125])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aab9638ec53sm583873366b.156.2024.12.18.10.34.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Dec 2024 10:34:11 -0800 (PST)
From: Vicentiu Galanopulo <vicentiu.galanopulo@remote-tech.co.uk>
To: Pavel Machek <pavel@ucw.cz>,
	Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jonathan Corbet <corbet@lwn.net>,
	Vicentiu Galanopulo <vicentiu.galanopulo@remote-tech.co.uk>,
	linux-leds@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-doc@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v11 2/3] dt-bindings: leds: Add LED1202 LED Controller
Date: Wed, 18 Dec 2024 18:33:58 +0000
Message-Id: <20241218183401.41687-3-vicentiu.galanopulo@remote-tech.co.uk>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241218183401.41687-1-vicentiu.galanopulo@remote-tech.co.uk>
References: <20241218183401.41687-1-vicentiu.galanopulo@remote-tech.co.uk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The LED1202 is a 12-channel low quiescent current LED driver with:
  * Supply range from 2.6 V to 5 V
  * 20 mA current capability per channel
  * 1.8 V compatible I2C control interface
  * 8-bit analog dimming individual control
  * 12-bit local PWM resolution
  * 8 programmable patterns

If the led node is present in the controller then the channel is
set to active.

Signed-off-by: Vicentiu Galanopulo <vicentiu.galanopulo@remote-tech.co.uk>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
    v1: https://lore.kernel.org/lkml/ZnCnnQfwuRueCIQ0@admins-Air/T/
    v2: https://lore.kernel.org/all/ZniNdGgKyUMV-hjq@admins-Air/T/
    v3: https://lore.kernel.org/all/ZniNdGgKyUMV-hjq@admins-Air/T/
    
    Changes in v4:
      - remove label property, use devm_led_classdev_register_ext instead
    Changes in v3:
      - remove active property
    Changes in v2:
      - renamed label to remove color from it
      - add color property for each node
      - add function and function-enumerator property for each node

 .../devicetree/bindings/leds/st,led1202.yaml  | 132 ++++++++++++++++++
 1 file changed, 132 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/leds/st,led1202.yaml

diff --git a/Documentation/devicetree/bindings/leds/st,led1202.yaml b/Documentation/devicetree/bindings/leds/st,led1202.yaml
new file mode 100644
index 000000000000..f1e5e4efaa3a
--- /dev/null
+++ b/Documentation/devicetree/bindings/leds/st,led1202.yaml
@@ -0,0 +1,132 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/leds/st,led1202.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: ST LED1202 LED controllers
+
+maintainers:
+  - Vicentiu Galanopulo <vicentiu.galanopulo@remote-tech.co.uk>
+
+description: |
+  The LED1202 is a 12-channel low quiescent current LED controller
+  programmable via I2C; The output current can be adjusted separately
+  for each channel by 8-bit analog and 12-bit digital dimming control.
+  Datasheet available at
+  https://www.st.com/en/power-management/led1202.html
+
+properties:
+  compatible:
+    const: st,led1202
+
+  reg:
+    maxItems: 1
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 0
+
+patternProperties:
+  "^led@[0-9a-f]$":
+    type: object
+    $ref: common.yaml#
+    unevaluatedProperties: false
+
+    properties:
+      reg:
+        minimum: 0
+        maximum: 11
+
+    required:
+      - reg
+
+required:
+  - compatible
+  - reg
+  - "#address-cells"
+  - "#size-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/leds/common.h>
+
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        led-controller@58 {
+            compatible = "st,led1202";
+            reg = <0x58>;
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            led@0 {
+                reg = <0x0>;
+                function = LED_FUNCTION_STATUS;
+                color = <LED_COLOR_ID_RED>;
+                function-enumerator = <1>;
+            };
+
+            led@1 {
+                reg = <0x1>;
+                function = LED_FUNCTION_STATUS;
+                color = <LED_COLOR_ID_GREEN>;
+                function-enumerator = <2>;
+            };
+
+            led@2 {
+                reg = <0x2>;
+                function = LED_FUNCTION_STATUS;
+                color = <LED_COLOR_ID_BLUE>;
+                function-enumerator = <3>;
+            };
+
+            led@3 {
+                reg = <0x3>;
+                function = LED_FUNCTION_STATUS;
+                color = <LED_COLOR_ID_RED>;
+                function-enumerator = <4>;
+            };
+
+            led@4 {
+                reg = <0x4>;
+                function = LED_FUNCTION_STATUS;
+                color = <LED_COLOR_ID_GREEN>;
+                function-enumerator = <5>;
+            };
+
+            led@5 {
+                reg = <0x5>;
+                function = LED_FUNCTION_STATUS;
+                color = <LED_COLOR_ID_BLUE>;
+                function-enumerator = <6>;
+            };
+
+            led@6 {
+                reg = <0x6>;
+                function = LED_FUNCTION_STATUS;
+                color = <LED_COLOR_ID_RED>;
+                function-enumerator = <7>;
+            };
+
+            led@7 {
+                reg = <0x7>;
+                function = LED_FUNCTION_STATUS;
+                color = <LED_COLOR_ID_GREEN>;
+                function-enumerator = <8>;
+            };
+
+            led@8 {
+                reg = <0x8>;
+                function = LED_FUNCTION_STATUS;
+                color = <LED_COLOR_ID_BLUE>;
+                function-enumerator = <9>;
+            };
+        };
+    };
+...
-- 
2.39.3 (Apple Git-145)


