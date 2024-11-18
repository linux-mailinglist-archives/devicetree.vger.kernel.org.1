Return-Path: <devicetree+bounces-122610-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E33629D1424
	for <lists+devicetree@lfdr.de>; Mon, 18 Nov 2024 16:13:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A3EFF28479A
	for <lists+devicetree@lfdr.de>; Mon, 18 Nov 2024 15:13:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1EB91BCA0C;
	Mon, 18 Nov 2024 15:13:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=remote-tech-co-uk.20230601.gappssmtp.com header.i=@remote-tech-co-uk.20230601.gappssmtp.com header.b="VQ64PJJ2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA3971BAEDC
	for <devicetree@vger.kernel.org>; Mon, 18 Nov 2024 15:12:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731942780; cv=none; b=mNcYIZ4v3lewEWUSKDnD5myqtm3NrpqjeIi0Y/jFrO+4iq/99PmbS7ZV1RbaMIW5EjO2WozL+h4nk6GSyr4xcEuriq7xAI+KwwDK3Zl0q5i8KWXCO4Dpm/LnbPsWdgHXLCeFdHrl4SlvefbvG/RJCvNgBR0NfSEO4gVOy7MK3D8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731942780; c=relaxed/simple;
	bh=/rk98YphhHbe/ZYSTzfJFAmQ84Ek4SJoyxchXfYoArI=;
	h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=FeR5uQYQYuUWVpGuNV34QY/EKUVqgsigNnhFXL3zeaM5MZGIQEF4PS63K2xbcevP+Dufdbj+FKpv/+EO0EOHczNHa0DzG7iShGQh2yP1djEi4GSZFp2tjSJL4Od/Z0fGY7mkq6SzfXse4cQYR2Cgew2oBhVC60D7xprW2AZSDrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=remote-tech.co.uk; spf=pass smtp.mailfrom=remote-tech.co.uk; dkim=pass (2048-bit key) header.d=remote-tech-co-uk.20230601.gappssmtp.com header.i=@remote-tech-co-uk.20230601.gappssmtp.com header.b=VQ64PJJ2; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=remote-tech.co.uk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=remote-tech.co.uk
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-a9f1c590ecdso580628166b.1
        for <devicetree@vger.kernel.org>; Mon, 18 Nov 2024 07:12:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=remote-tech-co-uk.20230601.gappssmtp.com; s=20230601; t=1731942777; x=1732547577; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Xjtc7Bjar9DjwKzmJO26f3PuO3HlGp9yAOlHl5sQvtU=;
        b=VQ64PJJ2VrIDl8GtFFWl341z2SyBWFqyo6EvFDSCbPzqLL4PH2trew2xzGvoSfveHi
         2GeWVbUSj/VDPVjCposaj5CRK6kCpMsVgZ1XK1nWCi93UDy/mLlEx8b/fuLkCxn4KHs1
         +owQDPl6THTh8Eek5V/DUHn8wLdD6vbWiq/tiptikeEeyLi/6yoOq3RPOJgmvzF1gKEp
         fn0E62kRDpRz/N9vAp0UEi40dZaDn2WOfjE7bZVbXiFy31CyGe59URuqd5trSe/iIdK0
         Ci8PzO8+SKq8uiUDZ9DWfQEcLKYsSkoJaTcLTNjTM6ccB1oKZs7coPvsP2cx5HtLX9Hh
         igEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731942777; x=1732547577;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Xjtc7Bjar9DjwKzmJO26f3PuO3HlGp9yAOlHl5sQvtU=;
        b=o5rLMYjiOmknho+T3CLr1wm1c6zcqUQayl4rrVfZSbPklzkkZcp5Cbakx+cSkQ23v4
         hIWmnaRja7vIP+jBr/IhYbllt4EdeioDi7rqFzbfYGl5AaWAs4uI+HnDQStbx0hpOIYA
         nRHbBSkJp6aqRnanIy2OR9Tn02+t4IpgXcisQgG5sP2jTXGlxr6pytSfO48qXMX5bp7v
         HDvcCZIMgPoeiUXOsEjenQt+/5vPii1d3fQfvd44+gsvg2HC8h6AKXxo6dQOa0y2CA+q
         1ESYY64QHcNDaWNwKwTiD1hdvTqdIIrrQ7dn56iLWLCf84iEZ7o2qbD9v66K2vtgOoee
         SJzw==
X-Forwarded-Encrypted: i=1; AJvYcCVzv91fsXjuw7hFxChE2MAxxIVuSixuz4D+9JPLV1sZ4v+DbZufC3P/njGKs2kl3VF8XLsJASP64XxX@vger.kernel.org
X-Gm-Message-State: AOJu0YyQYRh4Hz914hHcaEpDSDquy72ApmFQEBRFLj3y3RisvPsBLgii
	C4Jn87Skv+/DikocZb4njvakM8WZJ7p1lsmt8QsAlKyq1glCSF9DhAbEP4II+A2f55c4V7ddUDo
	j6n8ij2eADfBSxR+NoL5MWDMBPd5nizVbBLA/97MGSvKqgS3FOzfcQ5H4AL7up8Fq+fuqbWUNOY
	voWMc6dcP0muQLkv1xwZa1pq4p
X-Google-Smtp-Source: AGHT+IGn01qYxrkcgGk2ByU6YeVaMXTuwkTdujmrjKD2QI8hgy9MH0U2YQBR+0wavI+Xp12OZASqug==
X-Received: by 2002:a17:907:3f8d:b0:a9a:597:8cca with SMTP id a640c23a62f3a-aa48350986bmr1111621366b.45.1731942777116;
        Mon, 18 Nov 2024 07:12:57 -0800 (PST)
Received: from localhost.localdomain ([178.27.36.125])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa20dffd7e7sm548980366b.119.2024.11.18.07.12.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Nov 2024 07:12:56 -0800 (PST)
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
Subject: [PATCH v8 2/3] dt-bindings: leds: Add LED1202 LED Controller
Date: Mon, 18 Nov 2024 15:12:42 +0000
Message-Id: <20241118151246.7471-3-vicentiu.galanopulo@remote-tech.co.uk>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241118151246.7471-1-vicentiu.galanopulo@remote-tech.co.uk>
References: <20241118151246.7471-1-vicentiu.galanopulo@remote-tech.co.uk>
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


