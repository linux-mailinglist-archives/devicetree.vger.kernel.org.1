Return-Path: <devicetree+bounces-206860-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EE73B2DC56
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 14:26:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4900558496E
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 12:25:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F08433002CB;
	Wed, 20 Aug 2025 12:25:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="cNekxlfo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25E892D24BD
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 12:25:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755692734; cv=none; b=mX1lX2G0DesqCwErOrilXUzKgAiza9RLt18kv0uzPYm0TlfNGqFrydUqK9YJsdD5Pkclhnak1ikfZdjqxDvmQhG3fZhs28CRYFLx5cxN3S/wNXY5+QJfHQzUsKcVVxk+fGRrIdqElJMkjEn3CWkr1wh7YWGc+FIU7yVAQlygK6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755692734; c=relaxed/simple;
	bh=5y5lyKH1/hkTYyDy0RGC/8IY1XSLp6p75tDi/3+y9J4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Qt5vmGB/gGW8S0afbFep9DG3XlA6AuutGJi+YMaLKz6hPLCwRW6OZvcJ0JJfW/kt31yn7zv4UJ+MLel0Mvpyb6vrK7qK9D2dvkGUa3wcNT9qK9PcRWbFbA3y9VJLIQ/k7SZGDYgK7BXI6+u6eRZ8me2IKclNb+oiBpfeShNU4lU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=cNekxlfo; arc=none smtp.client-ip=209.85.215.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pg1-f173.google.com with SMTP id 41be03b00d2f7-b47173749dbso4385609a12.1
        for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 05:25:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1755692732; x=1756297532; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cDVo17AEiZBayUfTjsimRdU07RT7bA4wzSPxYn34tGU=;
        b=cNekxlfoGjQnRlP8zrqf36EWkHzcnuKcFs+ekel+UwC+E+zjuwcz8CmFDY+mNLwUKu
         EvvHx690ASh7x+j6STSJR/6wuUvLafIAxt+ANSpRNFJGDc2/zDcI6zgFodDs/hqKQfue
         SJC9pzyZ09rtZ567BJxuGyOQGlwW2uPuqTKZcju2EuPLlqzJt6T/ToxSUhsSigTJA/u1
         wiSKF5RWOR0F40s6LptD7WKbhm61qjOMbtPXnpgIfuMatJshV2kWlMMCktngTKeLKVk7
         AQYEXspP4okU5fkHDRo4LO0fz8TBUp8ndwJCKu12XL3UXmnLJTRW9UCvlnSj31xavztR
         RO6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755692732; x=1756297532;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cDVo17AEiZBayUfTjsimRdU07RT7bA4wzSPxYn34tGU=;
        b=grOVKw/0eZ45Ec84gFvg9gc9mDiKRIu1KgPxH8yNjXVp0hqUFTJhCgqH1aURoTePfV
         ks6miaO7taMQgeXzg9kujVm8jBsGY+D4P2meCprQ8ol2cCyQcWYUSfRvlgWrW5c2nqIC
         soAlBVuO6VAdiOPj2vFynhCw5DV/CUU7t/wgQihKDUd5T1BKsX/D3FqyTsWgWIdGYZ7U
         m16fSgyd3hT2W+OajBhSj/z2mTHOHhJrWu5QXDrJLir9Gou/mGCw+U3S8ZfdIpceoRN3
         4rQ7mSNk+HX6qNDyueb4jaelcetfAx6HzsjXG3fJ9O5lpXSfAHwlWyE+iG6yIq5Whvvu
         kU8A==
X-Forwarded-Encrypted: i=1; AJvYcCU4SHitxXA90Te17eMmCZqlmkga4tHBp28ZlUsaN0JJgoC9xp1ISissWPerpr3/sg8jt7g0IKINHH9s@vger.kernel.org
X-Gm-Message-State: AOJu0Yx2bJA903piXww2d8kiMiXRsgcvfnk400gVU74mDjpNFPsSPV9i
	/RsxnJzxEbvsyHsFZ9oz6y5ENILbMNPj6tvIMjWFuRaNoCTG605Vj7jELxY2J3GG9xFDvjpOjLu
	Kjs7i
X-Gm-Gg: ASbGncufbyZWOIg3OSQLdJW6wR8PNQaNJG4/I2I6tGraQAqhb5Hilo+lf6UTxPiMM76
	7qT1stcicapTxtpfZZZ/LljJq7c4vb9dnZ3Vl1zRjcElUwvJxl5dQllvE19n8yuItPsLWDcPp3t
	Vermx2wfIrENgSpvefDsVRlnUWqfeGsj36qPfg6OAVolMVB+Tt9CYz7pALvDCiy5I2ZeXUcyzyr
	dZvFAaqv312cpf6birbBGIY536gWWIn3kGIsPNMlfTIydhuxeo7v4xqJXHhrNM4Z0PHWCULjCNL
	JBnsR+fuXxo4iS7/0KD6zsoHEYO2lF+VC+hAb01riUFeR/g4kfG9NS/pJhKiicT/DVVDzsnjChX
	nIMIHgbRd+QNW6rb/JO9WMHRA+MrEY7VuGm86Zo5IuUbciAe9ODlhw4ojwNxXZ7Jq3HroZQ==
X-Google-Smtp-Source: AGHT+IEx9O55cYKi9Uh808obEjpVhsZk0ACrWNpbOz63pRgF26JlfxtJTcbiypz4Elqho4hRYYczIw==
X-Received: by 2002:a17:903:1a2f:b0:240:3ef:e17d with SMTP id d9443c01a7336-245ef23b5f4mr32288545ad.40.1755692732392;
        Wed, 20 Aug 2025 05:25:32 -0700 (PDT)
Received: from dgp100339560-01.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-245ed4c745dsm25450135ad.73.2025.08.20.05.25.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Aug 2025 05:25:32 -0700 (PDT)
From: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
To: dmitry.torokhov@gmail.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	jikos@kernel.org,
	bentiss@kernel.org
Cc: dianders@chromium.org,
	linux-input@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
Subject: [PATCH v2 1/2] dt-bindings: input: Add Parade TC3408 touchscreen controller
Date: Wed, 20 Aug 2025 20:25:19 +0800
Message-Id: <20250820122520.3356738-2-yelangyan@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250820122520.3356738-1-yelangyan@huaqin.corp-partner.google.com>
References: <20250820122520.3356738-1-yelangyan@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The tc3408 touch screen chip same as Elan eKTH6915 controller
has a reset gpio. The difference is that they have different
post_power_delay_ms.

Signed-off-by: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
---
 .../bindings/input/parade,tc3408.yaml         | 68 +++++++++++++++++++
 1 file changed, 68 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/input/parade,tc3408.yaml

diff --git a/Documentation/devicetree/bindings/input/parade,tc3408.yaml b/Documentation/devicetree/bindings/input/parade,tc3408.yaml
new file mode 100644
index 000000000000..30ffefb96c68
--- /dev/null
+++ b/Documentation/devicetree/bindings/input/parade,tc3408.yaml
@@ -0,0 +1,68 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/input/parade,tc3408.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Parade TC3408 touchscreen controller
+
+maintainers:
+  - Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
+
+description: |
+  Parade TC3408 is a touchscreen controller supporting the I2C-HID protocol.
+  It requires a reset GPIO and two power supplies (3.3V and 1.8V).
+
+allOf:
+  - $ref: /schemas/input/touchscreen/touchscreen.yaml#
+
+properties:
+  compatible:
+    const: parade,tc3408
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  reset-gpios:
+    maxItems: 1
+
+  vcc33-supply:
+    description: The 3.3V supply to the touchscreen.
+
+  vccio-supply:
+    description: The 1.8V supply to the touchscreen.
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - reset-gpios
+  - vcc33-supply
+  - vccio-supply
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    i2c {
+      #address-cells = <1>;
+      #size-cells = <0>;
+
+      touchscreen: touchscreen@24 {
+        compatible = "parade,tc3408";
+        reg = <0x24>;
+
+        interrupt-parent = <&pio>;
+        interrupts = <15 IRQ_TYPE_LEVEL_LOW>;
+
+        reset-gpios = <&pio 126 GPIO_ACTIVE_LOW>;
+        vcc33-supply = <&pp3300_tchscr_x>;
+        vccio-supply = <&pp1800_tchscr_report_disable>;
+      };
+    };
-- 
2.34.1


