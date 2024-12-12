Return-Path: <devicetree+bounces-130345-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A4F39EF12E
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 17:35:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 210F3189B218
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 16:29:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3621A231A58;
	Thu, 12 Dec 2024 16:19:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="pw0JJYUU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FC47231A2D
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 16:19:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734020349; cv=none; b=M3emAMMn23g6TtkxY6WKucVSDgSvGDyBOBSuwks6iYez5ypyNHsJJhY3jxPIUDW8zz24TSRfmNVF7h+0CggMIGdt/XhRLORka6siVfuOahPMcCSLOSUJWsDewSHbw8jD4Y/+mXk8XA0bCQFErUZXuuVGlOO130B7wb5C6HU0bc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734020349; c=relaxed/simple;
	bh=rkPNOS/CThHiZ6WlZSF0eZPRzkaH0woMbTCR+SPr3t8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=m5Znaf7duppZ7jKCjtDfdZcUJ4QckG4SkVf+0pSjxOBDPdbnw4t+mDuylMLhqewlVI0EnUlGyPQ6ViFOcDuXntlcfJG3LrdJqmPL0637r/bAWNGyRTExJ/hOqf+5JlBaxlVLCwV4wZdwzscPzH8IDdwpWbo+JB1AR4Yjc+8JPR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=pw0JJYUU; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-4361815b96cso5793005e9.1
        for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 08:19:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1734020345; x=1734625145; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZmY4nSeOHfUAeSRoOGUYAdGnJvM3BDuelhiAae/7ZWg=;
        b=pw0JJYUU8lSpKaYDG1xYEW30vvb8fR1NvawXdELQX9Y6mK70Y6/vu1rkkSu+eFdcaG
         YWF9nrKSZS5qbGTb8+/EJJD3HcedIwLxdHThtgVs/e45sJUT3Gh3Y31TNvv25NMvvZeY
         0YpX++blG3D9AQZ7p60v+tGpeyEGS645Bbro3tkPXVBthgbRIH8//RM2WisK7C5WPuTh
         uTVy/eCa+BKpM/nK14RuJ7FbXBrQ8VL2p0q7yUbNk4r30gyIUSHpgVvnPOEqWUr8DOUA
         r2ZFpZU/U4AhvuwAgx1vo73cpfmJSZ7q5wtwh9KL31wLQWo7sx0Sivl5mFoL+pR5qG6v
         NyGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734020345; x=1734625145;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZmY4nSeOHfUAeSRoOGUYAdGnJvM3BDuelhiAae/7ZWg=;
        b=cb7TfuPRw0IjoWS2ir5BrzgtrWijUllYpmCJCkHfWTHtQVNPcTaLLPzNdLQ0aejvNF
         iFNUumMzRHyzGgIJeXm5s8pEVncKcgjas02kpCknzNOcORFdH2ZN93A6m3JxHnUdoI7Y
         zNBqvddaVJgB0ZOS/v8BtpK2mVm4EDfhMisAlFvUZDfWmwDkIVbySBHXt+huyRVwu40l
         XlIn6XowRROUJ9FnU9XgtnTZr5dkDxKm7g7n8X7Pqnczwf9pRGSwbjg1cLB084l1YhLj
         g4NIBbj8F7ybmTxyGehQVFmrfPukleXOXvsqSG79/fMsPgaXhQ1kM1lQZMZqvHTbp2Ue
         mnqw==
X-Forwarded-Encrypted: i=1; AJvYcCVVc0Wi1y6KRslGQvKQoJ9VDkBU5WvaT3IBJdYXUevJfKUjha1vV6XDOU9DCU+7m4BJodH4AsEII2l/@vger.kernel.org
X-Gm-Message-State: AOJu0YwP7jcNH1cjRfwwFgu8l6FJrS7jAkoFCe+JIH7PFOQrvgALHzlZ
	5QOdfyRf7XXPNWSGl8U6d203l//BCgb3o7sFErtXLiCQalJl9LRjyDvS6DAmcrI=
X-Gm-Gg: ASbGncuX1jD+Oy6EzfHAS2tw/EtF57fjrH+8bxJB0ymq8q4x7q+oABTh3bni5YnukBM
	BgbyCpOLK6CMcdYud8y7HLN31LCmPlSSM7O3StWb8dzwRDuYTIpHqnomVA4evWbcgKyIPdIGgqt
	/WtfY+QucRnE719swF5VJNS2gODXUc+FPv8vo7pcmbeVLxg3kVpKFuDN5HA8mJtfvlTWChUKvgb
	7GJNgKFERo+1YCNF7BA5tDo5uXj7SwmR7917mYe50NGm/4P
X-Google-Smtp-Source: AGHT+IGaFVqNcAbsh2wXwykvgIG8wIvYr5xOyoWGcWi8bclbVOgLkhFW5BR0LdTPsNVGk8Tlgv5MLQ==
X-Received: by 2002:a05:600c:b86:b0:434:f2f4:4c07 with SMTP id 5b1f17b1804b1-4361c373f5fmr66829415e9.15.1734020345541;
        Thu, 12 Dec 2024 08:19:05 -0800 (PST)
Received: from [127.0.1.1] ([2a00:1098:3142:e::8])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4361e322328sm44336105e9.0.2024.12.12.08.19.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Dec 2024 08:19:04 -0800 (PST)
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Thu, 12 Dec 2024 16:18:52 +0000
Subject: [PATCH v2 2/7] dt-bindings: display: Fix BCM2835 HVS bindings for
 BCM2712
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241212-dt-bcm2712-fixes-v2-2-35986e04d0f4@raspberrypi.com>
References: <20241212-dt-bcm2712-fixes-v2-0-35986e04d0f4@raspberrypi.com>
In-Reply-To: <20241212-dt-bcm2712-fixes-v2-0-35986e04d0f4@raspberrypi.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Eric Anholt <eric@anholt.net>, 
 =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>, 
 Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>, 
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>, 
 Doug Berger <opendmb@gmail.com>, Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>, Thomas Gleixner <tglx@linutronix.de>, 
 Stefan Wahren <wahrenst@gmx.net>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>, 
 linux-gpio@vger.kernel.org, Dave Stevenson <dave.stevenson@raspberrypi.com>
X-Mailer: b4 0.14.1

Commit 6cfcbe548a3a ("dt-bindings: display: Add BCM2712 HVS bindings")
added the compatible string for BCM2712, but missed out that
the number of interrupts and clocks changed too.

Update to validate clock and interrupts for the variants.

Fixes: 6cfcbe548a3a ("dt-bindings: display: Add BCM2712 HVS bindings")
Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
---
 .../bindings/display/brcm,bcm2835-hvs.yaml         | 83 ++++++++++++++++++----
 1 file changed, 69 insertions(+), 14 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/brcm,bcm2835-hvs.yaml b/Documentation/devicetree/bindings/display/brcm,bcm2835-hvs.yaml
index f91c9dce2a44..36bf8eec88a6 100644
--- a/Documentation/devicetree/bindings/display/brcm,bcm2835-hvs.yaml
+++ b/Documentation/devicetree/bindings/display/brcm,bcm2835-hvs.yaml
@@ -20,11 +20,20 @@ properties:
     maxItems: 1
 
   interrupts:
-    maxItems: 1
+    minItems: 1
+    maxItems: 3
+
+  interrupt-names:
+    minItems: 1
+    maxItems: 3
 
   clocks:
-    maxItems: 1
-    description: Core Clock
+    minItems: 1
+    maxItems: 2
+
+  clock-names:
+    minItems: 1
+    maxItems: 2
 
 required:
   - compatible
@@ -33,17 +42,63 @@ required:
 
 additionalProperties: false
 
-if:
-  properties:
-    compatible:
-      contains:
-        enum:
-          - brcm,bcm2711-hvs
-          - brcm,bcm2712-hvs
-
-then:
-  required:
-    - clocks
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: brcm,bcm2711-hvs
+
+    then:
+      properties:
+        clocks:
+          items:
+            - description: Core Clock
+        interrupts:
+          maxItems: 1
+
+      required:
+        - clocks
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: brcm,bcm2712-hvs
+
+    then:
+      properties:
+        clocks:
+          maxItems: 2
+        clock-names:
+          items:
+            - const: core
+            - const: disp
+        interrupts:
+          items:
+            - description: Channel 0 End of frame
+            - description: Channel 1 End of frame
+            - description: Channel 2 End of frame
+        interrupt-names:
+          items:
+            - const: ch0-eof
+            - const: ch1-eof
+            - const: ch2-eof
+      required:
+        - clocks
+        - clock-names
+        - interrupt-names
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: brcm,bcm2835-hvs
+
+    then:
+      properties:
+        interrupts:
+          maxItems: 1
 
 examples:
   - |

-- 
2.34.1


