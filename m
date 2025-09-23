Return-Path: <devicetree+bounces-220422-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BA067B95E71
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 14:57:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6DCEF17887B
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 12:57:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1EDB532341F;
	Tue, 23 Sep 2025 12:57:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="jcBS/4Hk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38376285058
	for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 12:57:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758632269; cv=none; b=Ae/bv6hlgAgc6JyF+pvKBydN5T7hXP6UvdukyRkJ/PrMFZdVd9Vxeau8h5whpANYtVO54gq/ORjmJjnXcQ68741IMZg/LNJqlCo1p0QJqjPNnUgdMbbQXLhVGSuI3R5yXw7bZQiAsc8/SGwxyQFCSWhCmLINh3WTgjTdGL2wGJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758632269; c=relaxed/simple;
	bh=bOH2KSQNcX9pxUCnDxahcsBi5ylbxqRTqqjLR9+z0oE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=oR8JrRxi3My54hUcCwGMq1cVKSPxIMZ9ZrdVXMY3iNlcuuWa0zcBwbAetDX/9CcwiMK1PCWQr81AZLcWRpHHpvtDU6MgL5891KdEuUTwKPpwMm2zYQkhLt3YiA+aw8YYGDNB8s2PZj9dtMLpO5Hl6Bb+IRKD21vxYqN4Ke5xHVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=jcBS/4Hk; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-61feb87fe26so7128942a12.1
        for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 05:57:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1758632265; x=1759237065; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8T5mtAenpRdsXTm6asG89Yn/1GY5YZzwi6jOzAE42aU=;
        b=jcBS/4HkYSA5+DsvpvTTOVHXf9JVyjhPlkEIVgmPdN7J/kefRpkyXkSQfkkYD5HPgw
         ukvQCERxvJjjhdyeXJ5N3w4AbQlWilyahrDKMhhaULWWY2EojUk5ggByn/lG9EAhRaI4
         oHzq9ch9ncEdDXCv0DVxj2PP751JimYxuCnDk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758632265; x=1759237065;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8T5mtAenpRdsXTm6asG89Yn/1GY5YZzwi6jOzAE42aU=;
        b=S71wXaFJqiIJPVgKjU7/1XD1FsBz8ujNsfueM1d5yC/az/iDFO4pSGx3+2AU9siqEA
         9owcTNKAcvLHibT1X9mybaEJDuRuHTZaa8oj4E9g4MBPkWTOuQ5wU92N0Cc6002MlmDZ
         +AHC2o0OHjzPySIT0WNRzyo37XyK3etSMJwPvGZTLNvyTfGDdfrGmt/1R08k2tSAKTKg
         AgqmL0yiHH9ftTOCwbpBvSMcXqgQdtuFlEOT9NR5Pz+p4r4G1vwsgt6NBSaJEukYqt/d
         ZT8Gy5YjezB1zntvAWCAOAb+ElMUmpDgG4Mm6sJ7ggLTGXD7QuN5DHBBrrvw68Qog4gK
         tgrw==
X-Forwarded-Encrypted: i=1; AJvYcCUHNasB/au/fF2dgV7TGvAKlfBdwzL9fdqztLshAbem2oCip8/YgIXLxz6MD87PrGmuIKdRVtUWnOpa@vger.kernel.org
X-Gm-Message-State: AOJu0YyaTgfIVLCYSs37UK7jKJLd5Sw8lDgT8ddXCKs3XURegPt16oIv
	HZ1Jelqvmqvmb8RdXAgRIgPNak/rZRaz6jPdRZ4Fa99rxrXpDwtsOp5mHP5ufERybxk=
X-Gm-Gg: ASbGnctxcQV1fsonDm4wxa1FW7xXwmPlR4k5ZqCs1i/cgsAYiigTIZwEppgEoFWrswc
	jvAw+DUK3R6VcKdl5VJcz0jkHFLV8PW5Qt0wYDNKxeblQvpA7xzonrv1wJ79SUiuWnW1FQTMmyi
	b3IeyIBI5l0yV1mIwidRd969GEE7rPVikkzdni+AlN9IH+vWY+yUXVG1PGgIwYfSa65FM87etQj
	Vnr9C8nOHG+pa7zVE8BMDruwozQvkQ7UISys9SiIv4MCVFmjm+7XLaQrqPMjpCNGZCfn724c2Wn
	RenOcr3eB7aS0ku632/IGHrS+VU9AE8/HNCgZ769RICPq04SV3fLvZm2FPMJlEOXgwRzpS3hP0+
	m9mWMadbUCvu9KwNmIo/bb/c+Iiiq6raOHiy6kTRxGptY8V1//S0dyT3fr8v5MZi8nu35LjWdi0
	EPkLrJJyAbOs+vluS7flemwiYukuKxiDhJkHkDUAcKp6shX1nAunahzOJS2IwrjS6Y
X-Google-Smtp-Source: AGHT+IE9dyXEU+4sIzb37ntgKzEhl/etTTX5O55ZjUK0LUKrfPAew1cNaQhAvZiNPHRN1ou00+1d9w==
X-Received: by 2002:a17:906:6a1e:b0:b2b:f498:e2f7 with SMTP id a640c23a62f3a-b302b80a6f0mr239115866b.47.1758632265504;
        Tue, 23 Sep 2025 05:57:45 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-82-56-38-125.retail.telecomitalia.it. [82.56.38.125])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b2761cb532esm872331166b.67.2025.09.23.05.57.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Sep 2025 05:57:45 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	sebastian.reichel@collabora.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-input@vger.kernel.org
Subject: [PATCH v7 1/3] dt-bindings: touchscreen: convert eeti bindings to json schema
Date: Tue, 23 Sep 2025 14:57:10 +0200
Message-ID: <20250923125741.2705551-1-dario.binacchi@amarulasolutions.com>
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
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>

---

Changes in v7:
- Add Reviewed-by tag of Rob Herring

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

base-commit: cec1e6e5d1ab33403b809f79cd20d6aff124ccfe
branch: drop-touchscreen.txt

