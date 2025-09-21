Return-Path: <devicetree+bounces-219776-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 04CE6B8E242
	for <lists+devicetree@lfdr.de>; Sun, 21 Sep 2025 19:40:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A2E5617A507
	for <lists+devicetree@lfdr.de>; Sun, 21 Sep 2025 17:40:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2ADA23A9A8;
	Sun, 21 Sep 2025 17:40:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="KCXtcQuh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFCD427281D
	for <devicetree@vger.kernel.org>; Sun, 21 Sep 2025 17:40:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758476410; cv=none; b=enBAMwmw4CvyyqoiXvwH6Vkn1I2w7nmuCIdB+v3CgLmfVZ9etzsC29z9eRKf3F4/fC9hSSVIYRVIBdT8oDYWLJ1wqOQ7TFvVYok/U+q/np1iiwaad05b7B0cbpwrRPBo34gmqyMrNM6peAByvoG/8NHAWYPh7D0tX7bZZHAmU4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758476410; c=relaxed/simple;
	bh=s0wtb16+WYtZYmqbQuhwOOKqXNOpQ/C9gSRHXahTcjo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=b3FbNdAwj/CQcCTQNY2ZayJ0lFfyqBoJlpcjKZSsuhnRrSqaYkqBrFTpbFVOXpVUONdNKXy2X+/a78nigs4eCvA99tgmN71Nay65m5cBNIr8nqSekDrUhdUvVyYCBlykUS9c++c2FpEMR9o2L3YhUZSy5a4aXSCu+bQ9C3XY6mM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=KCXtcQuh; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-b0473327e70so685306566b.3
        for <devicetree@vger.kernel.org>; Sun, 21 Sep 2025 10:40:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1758476407; x=1759081207; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=VlMcTg6rrPiR0yGZcHHVwQeIzN9BkasZ+MFuim5ZowE=;
        b=KCXtcQuh+tkhs+nEamRYJZ992/D6adRTbMKkkO0RSfh722i/gJm8X5mLcKbPKocS8n
         s2wwpdZcymrnGc15qjTvIW0KORtU9EUIoaf2uPoUHxuK+75KxGNKwfjBBh9aY7M1ZYXo
         aAJDDhF5HjT4+nI4gm9C2ls9hQYVkQXuA5dAU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758476407; x=1759081207;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VlMcTg6rrPiR0yGZcHHVwQeIzN9BkasZ+MFuim5ZowE=;
        b=J6Q/nPdB9dGwgXC5ogpVEbjvqiYgJ8iMGOW0eSvlJJQfxEtU+jdoHSNb8N1Xewa7pA
         mpyotdpiSRVZ2lLFVP9KAygnoVg47GKKJUsIawmHWJmnW8eP67vXegqp0YhEtFBVHK9C
         ufKrHdd5CJHHQCaL7wCmD8Aw12gXvTOCgx4Kzmx+OBBcF/jt8n/I15Nyawv02XW+pW91
         YaRnGxVVnAa9sp0khK4jV02qeEm1dyN+NvMY63MVxaA3NL+AVYl1owPLqG1PNnZw1jI5
         dBNELiFUbCNnH1FkWcIwmotHeoAbQh8kDhY4Pu3JIyD7W98UdmVK6y0W+cwPgMf0Zpe7
         Fl9w==
X-Forwarded-Encrypted: i=1; AJvYcCWzbW0WG5VMqcXlAxC9zTgsu4rL4Qpd6rzHu7rjAXHPNObyq+jSMElRr3PLyMi0rmwYx9halISs7jvH@vger.kernel.org
X-Gm-Message-State: AOJu0YxCthyAbtv+zr7cUYOYZD4+U0cMPxSamg6EP7gzMGYQID0R5BIj
	zzlj0T2FjuxyAjlnEKMt8mIqenoI+WjKYHDGzGWrrdrOLrxLbQRXKU+dbCsCVrgrtGvr1GBYO/O
	C/0Iv
X-Gm-Gg: ASbGncveYA4DXW68GWNKAmnsVkzuH8K39ESymwW8A/NLHGtsTOGgpWgAOvI+aIOhpK2
	1DfiGR0WFp4JV5J57gi3q+Q/0kYbcaMvyojb6AoHISPXMmf+lfUrVOyq9uyJmCg4k+0rrj0FiIK
	DM1MlV93L4i5yP957aXqF/w+/T/TIvI76nk+PDyXY1ZFEvYMLDs63w6pygf0LAX3QpWL9yI9Hgx
	2+gb6+Oo/15bOgo/y5XFi92aA7xB68CbSkahUI2GfY6bEizRclG5NES13/eybjlXCdOgvm3CHVg
	ottCyVRARw4tTYRHibFabzRbyLJ94RtjGPAluyWzQgqRUgYM6Th6vF6RkJBMKrG+WZg/70XTBHz
	YJROhj4WgXYxUbsOI82ChHLMhz3IZsmOc6Y4xW5i7ogMY3BqyH5wQy+vPJpylmeC3DKNI+s38KQ
	oVR8vZ9fRVxdhaaiXBwIFOJ6gqPLHTjHjtzBHmj6WHNjnFl5gDSkMhgWcbhJFQrRDtQkPa3p4zh
	vg=
X-Google-Smtp-Source: AGHT+IHxamUkl30RF3owHcmhG83KfUakWGC62WX2ylNqw9YsGCV4aiWsbPmH7Wal0ci05bSxKrJ0Nw==
X-Received: by 2002:a17:906:a99:b0:b27:95f9:e20b with SMTP id a640c23a62f3a-b2795f9e3camr589661166b.33.1758476036375;
        Sun, 21 Sep 2025 10:33:56 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-82-56-38-125.retail.telecomitalia.it. [82.56.38.125])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b2928cd31a6sm324347266b.102.2025.09.21.10.33.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Sep 2025 10:33:55 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	sebastian.reichel@collabora.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-input@vger.kernel.org
Subject: [PATCH v6 1/3] dt-bindings: touchscreen: convert eeti bindings to json schema
Date: Sun, 21 Sep 2025 19:33:42 +0200
Message-ID: <20250921173353.2641438-1-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Convert EETI touchscreen controller device tree binding to json-schema.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

---

Changes in v6:
- Add deprected to the compatible string and attn-gpios
  property
- Put const 0x2a i2c address for reg property only in case
  of not eeti,exc3000-i2c.
- Put false the attn-gpios property in case of not
  eeti,exc3000-i2c..
- Drop example for eeti,exc3000-i2c.

Changes in v5:
- Move bindings into eeti,exc3000.yaml
- Remove eeti.yaml

Changes in v2:
- Added in v2

 .../input/touchscreen/eeti,exc3000.yaml       | 33 +++++++++++++++----
 .../bindings/input/touchscreen/eeti.txt       | 30 -----------------
 2 files changed, 27 insertions(+), 36 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/input/touchscreen/eeti.txt

diff --git a/Documentation/devicetree/bindings/input/touchscreen/eeti,exc3000.yaml b/Documentation/devicetree/bindings/input/touchscreen/eeti,exc3000.yaml
index 1c7ae05a8c15..517ec721e724 100644
--- a/Documentation/devicetree/bindings/input/touchscreen/eeti,exc3000.yaml
+++ b/Documentation/devicetree/bindings/input/touchscreen/eeti,exc3000.yaml
@@ -9,39 +9,59 @@ title: EETI EXC3000 series touchscreen controller
 maintainers:
   - Dmitry Torokhov <dmitry.torokhov@gmail.com>
 
-allOf:
-  - $ref: touchscreen.yaml#
-
 properties:
   compatible:
     oneOf:
       - const: eeti,exc3000
       - const: eeti,exc80h60
       - const: eeti,exc80h84
+      - const: eeti,exc3000-i2c
+        deprecated: true
       - items:
           - enum:
               - eeti,exc81w32
           - const: eeti,exc80h84
   reg:
-    const: 0x2a
+    maxItems: 1
   interrupts:
     maxItems: 1
   reset-gpios:
     maxItems: 1
   vdd-supply:
     description: Power supply regulator for the chip
+  attn-gpios:
+    deprecated: true
+    maxItems: 1
+    description: Phandle to a GPIO to check whether interrupt is still
+                 latched. This is necessary for platforms that lack
+                 support for level-triggered IRQs.
   touchscreen-size-x: true
   touchscreen-size-y: true
   touchscreen-inverted-x: true
   touchscreen-inverted-y: true
   touchscreen-swapped-x-y: true
 
+allOf:
+  - $ref: touchscreen.yaml#
+  - if:
+      not:
+        properties:
+          compatible:
+            contains:
+              const: eeti,exc3000-i2c
+    then:
+      properties:
+        attn-gpios: false
+        reg:
+          const: 0x2a
+      required:
+        - touchscreen-size-x
+        - touchscreen-size-y
+
 required:
   - compatible
   - reg
   - interrupts
-  - touchscreen-size-x
-  - touchscreen-size-y
 
 additionalProperties: false
 
@@ -51,6 +71,7 @@ examples:
     i2c {
         #address-cells = <1>;
         #size-cells = <0>;
+
         touchscreen@2a {
                 compatible = "eeti,exc3000";
                 reg = <0x2a>;
diff --git a/Documentation/devicetree/bindings/input/touchscreen/eeti.txt b/Documentation/devicetree/bindings/input/touchscreen/eeti.txt
deleted file mode 100644
index 32b3712c916e..000000000000
--- a/Documentation/devicetree/bindings/input/touchscreen/eeti.txt
+++ /dev/null
@@ -1,30 +0,0 @@
-Bindings for EETI touchscreen controller
-
-Required properties:
-- compatible:	should be "eeti,exc3000-i2c"
-- reg:		I2C address of the chip. Should be set to <0xa>
-- interrupts:	interrupt to which the chip is connected
-
-Optional properties:
-- attn-gpios:	A handle to a GPIO to check whether interrupt is still
-		latched. This is necessary for platforms that lack
-		support for level-triggered IRQs.
-
-The following optional properties described in touchscreen.txt are
-also supported:
-
-- touchscreen-inverted-x
-- touchscreen-inverted-y
-- touchscreen-swapped-x-y
-
-Example:
-
-i2c-master {
-	touchscreen@a {
-		compatible = "eeti,exc3000-i2c";
-		reg = <0xa>;
-		interrupt-parent = <&gpio>;
-		interrupts = <123 IRQ_TYPE_EDGE_RISING>;
-		attn-gpios = <&gpio 123 GPIO_ACTIVE_HIGH>;
-	};
-};
-- 
2.43.0

base-commit: f975f08c2e899ae2484407d7bba6bb7f8b6d9d40
branch: drop-touchscreen.txt

