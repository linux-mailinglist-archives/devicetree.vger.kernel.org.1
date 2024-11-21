Return-Path: <devicetree+bounces-123547-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EC209D511B
	for <lists+devicetree@lfdr.de>; Thu, 21 Nov 2024 17:59:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1425F1F26ADC
	for <lists+devicetree@lfdr.de>; Thu, 21 Nov 2024 16:59:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 509551C7292;
	Thu, 21 Nov 2024 16:58:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=remote-tech-co-uk.20230601.gappssmtp.com header.i=@remote-tech-co-uk.20230601.gappssmtp.com header.b="y3+KSqpn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58EBC1C4A00
	for <devicetree@vger.kernel.org>; Thu, 21 Nov 2024 16:58:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732208326; cv=none; b=Nsf62rw1/iTPPw3x3SkDQ4bjqHjgthsYEEbFMgjDH0j3htCfP7Du3vzg2NTl3FMgx1lnxf9LaTrKFU+8ezHnG8aDtuBA2upMroSbBx9xX54HZgxzEgB2ptwBeneTk+G1NoN2fMPdIR7J57e9a896n/1ux40ZG9d/RrkpTGdP6qQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732208326; c=relaxed/simple;
	bh=/rk98YphhHbe/ZYSTzfJFAmQ84Ek4SJoyxchXfYoArI=;
	h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=OcgaB/udJafbf63ZSvprS4GmpWTtKtjqT4hOUSuCIv6uTpa1JC+q5gnOZ1SAepJCn3Fz+NCmLAKKGbD0ANzSv92IrXfoa3/IXH/KWSJQMMn2YaYaUtodxPgPQfiI40fhQUf8C2fgK2zRm1pdfzphsFDw+Rsw2KnUmI1aqqffqOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=remote-tech.co.uk; spf=pass smtp.mailfrom=remote-tech.co.uk; dkim=pass (2048-bit key) header.d=remote-tech-co-uk.20230601.gappssmtp.com header.i=@remote-tech-co-uk.20230601.gappssmtp.com header.b=y3+KSqpn; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=remote-tech.co.uk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=remote-tech.co.uk
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-a9f1c590ecdso211437466b.1
        for <devicetree@vger.kernel.org>; Thu, 21 Nov 2024 08:58:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=remote-tech-co-uk.20230601.gappssmtp.com; s=20230601; t=1732208323; x=1732813123; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Xjtc7Bjar9DjwKzmJO26f3PuO3HlGp9yAOlHl5sQvtU=;
        b=y3+KSqpnzejBbQJ8bsZ9p+/y/aUgk/jiUKEBzU5/GikkFPj5IdiU8tKg8x4GHLxtq+
         rx0chZSiccV4NhHgcjIFGRzbwW+WQF13bYarB0sHXrnYzGpzD5FfOHTwErjO1Sal1gOJ
         sB5qvgX7QLO0HaiSqqtr5bDgQqWAKrTE6BibS3lj1FjfQ41H0fgx7jYHXAmzRptUhHzc
         HN9JsPPa/9asbP8ICccUv6XWfluSsBk5m4VfNz265X6XuOyH93BVHZbpNDaIkzERPErK
         HnjqkV+I06SMkbK7M4IXM5vZEKyMKH4Uh8As59TGtbJwZH7jJuLXiKYMrkvTYUC98+iq
         Slvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732208323; x=1732813123;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Xjtc7Bjar9DjwKzmJO26f3PuO3HlGp9yAOlHl5sQvtU=;
        b=huW5QH+p3sukDfI64+3rEshmOWKQBOwhTHCCiQPcR59IacHVwKu79/rtPFxNzVDoNY
         LPotZu+TKZV+8HZgLgmOWZyvltxDLrlGt3fyw+KM9w9Ud4vOoqqo8HdTNdgNs2NDVqbJ
         An3Yo8QH0oyw61sFfdnVWChHdXPY50fiimZbxS+T9B8Vb3Nsd1nAYqb2/BMaXrCRgUE1
         ZFuzT4mD1wFqQZelIr7mvpuUMFk+0IhP5C1YvHUj7+kE2AA/D9B6Dmwe4YTe8slu/T1W
         T68qN7mJoV2PM8n96a8qJ5/zWoCqOiOsd3fb/ELKF+wAdHi1QZr3/G9HBHM4kVoC4hk/
         +HLA==
X-Forwarded-Encrypted: i=1; AJvYcCUJuasdZIzTly0ySIQczY7gs+4kq6CH878WbXcMRxC6XoEB2wujbJn0QyWVDWo30UX8AhmgD8bWdbeF@vger.kernel.org
X-Gm-Message-State: AOJu0YxHWpZDEOGh7B5fqQCWK7q2AfjXyig4cbWnuG+Fr6wmtYFJxUgj
	KADX5QtAdMZUI0kDCl5APF8ZzOZoHDVnhd/ZxrBTG9PmGLoFkj5mA0epSw9B+SdNOANyEHt1hJo
	EntX7XhgfYeCvATv/Bo0LcnAm8hwgjVDIY8uHhpcgTwEMm+QqGG938ZJFbAG7rWXH3o1wClpRtj
	nLsPc+KJngWKYU9nlkLdUn7l3s
X-Gm-Gg: ASbGncsks6MtsuEASRAnuS6muJYB2woPvR1Y/r9t/BTnf+yi9x8jShFMkelbWpMQIwQ
	MxxpCCHBQWvcejrcApWYgrxLf6IgMNwelQcv0nCdyEAw0tLFu+URydRslteYRfnWZpd5YCHCV/1
	eVI2mE6gMeKnH8u12W2eDZj0R9mjXXRZoGAeJ7LL18WXGwJZHtlTe+V4Mq+WLiSwCeEnclR0QfF
	1An5PbukPid4/csXoiaw2Dzo5za7IfCx0wYAv1L95iywYsEubVOhoHFhMelfiTchnYx7qJGPNd8
	DAOwTkBff6yUgc760bFl
X-Google-Smtp-Source: AGHT+IGLS3KmQ7W38uHkAUt5viZ2Av6E/2C/dV0BXFOoBaL8NmcaVp/OqwnPRW9xtIPS0QThu5bqjw==
X-Received: by 2002:a17:907:97c9:b0:a9a:1792:f1a with SMTP id a640c23a62f3a-aa4dd52c6femr719914166b.7.1732208322610;
        Thu, 21 Nov 2024 08:58:42 -0800 (PST)
Received: from localhost.localdomain ([178.27.36.125])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa4f41536d3sm101502766b.24.2024.11.21.08.58.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Nov 2024 08:58:42 -0800 (PST)
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
Subject: [PATCH v9 2/3] dt-bindings: leds: Add LED1202 LED Controller
Date: Thu, 21 Nov 2024 16:58:24 +0000
Message-Id: <20241121165829.8210-3-vicentiu.galanopulo@remote-tech.co.uk>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241121165829.8210-1-vicentiu.galanopulo@remote-tech.co.uk>
References: <20241121165829.8210-1-vicentiu.galanopulo@remote-tech.co.uk>
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


