Return-Path: <devicetree+bounces-133173-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BBB09F9985
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 19:30:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8A94619829CF
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 18:12:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EDC8222069C;
	Fri, 20 Dec 2024 18:11:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="XFHbUPON"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0937521D5BB
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 18:11:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734718289; cv=none; b=m3cCDGxB59lW971ApG2UpjPb5QS2HXI6sPBkMltAbXKsAbR5ypxr10LHP74g2VvHm3YGbvHwxBSi2OOa3DuHTjg5ItjTk9+VSLXPB/7i/aI/ZOGJYD3u6sDdw1WUpveMmC20UycP5N3sXSZS+Eyxz3Q3begZ0AjJ63KnFsI1a7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734718289; c=relaxed/simple;
	bh=f++A39P0hC2PNYe2xMEbczHdYmf36DPvvwKlnSwS2e4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=qk3O+JA1UfmRE77Dy+9zF7aSuDcQpiRgGTE+6T5I6okjc121covrsbZqrQ4olUWeh3Vjh5gwO8QAwDys4DdHNUV8wEq3pXE4iY5+4HQI++hMMSM7oxx3bmfVAzcA28E01XEub2Toi79sV6epcRKTjvvTUTfzII3FGJw7IJXFkHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=XFHbUPON; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4361815b96cso15469435e9.1
        for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 10:11:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1734718285; x=1735323085; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9Sl5vZ6DuvY58dxwG3krkGImhGuVFYQY4MkC0DJ9Dic=;
        b=XFHbUPONFscyXnVZrdGr25THUfH5DRNoN2f4MpMqrx185l8XvIeCwMsYdZ3PlXJQE1
         aY6Vme/A8y676mji2NQyzmoy3J3KxoyHgfuwQOltiZGkjfA+zKRbu7UlEp5BrODck+n0
         zb5gB6GHFn+SyoVWfVpZyzkvAnUK0s+oaVl7YmyPhoHQZQ3nLEtJ/jwmTJu6DXFyz3PO
         pX+gvTgXSmSdVOh11kUqLd8rY1o5HMxK2zShMeaOwGGRCO07COsJ2xfuxaTddWi+L0jt
         AnD14nKp407NhZyEqajCZX5ehpozPpk1ikTSnj8esNoXerIqwz7lTwJLznyRBYAUYIPh
         1ywg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734718285; x=1735323085;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9Sl5vZ6DuvY58dxwG3krkGImhGuVFYQY4MkC0DJ9Dic=;
        b=u/s8G0iKcZtGSXOVQ+E1EG7OnlUDs7F6sFZmY5DMYWdXhQw6ZH9K5C1sOGiea5pEw3
         yoNtakFcTx/B+NuWcKOnRP63Iga8wBTO0q1yaIEedG3yAPobGPIX3VBcNe6QTnaJ5nqM
         5Blkn95ClIfuFcUTysJwO6YCHoG4/+jtVCNWaXvZrjGwihUEK7E9UU7tzx1Yrw21LHh5
         9CwkKzxrqq/KmYTyEozGBOTJ9IhPc0x7Lwue6il28VU+TsXareowOG8bQu3GX7TkNXAT
         mvylxuKkvLqMYA27uXIAhlWEmuiZ4S77WmYNGCRtrGYZqjSCEZz5j/iYjFmEyFCqUV4X
         VT1w==
X-Forwarded-Encrypted: i=1; AJvYcCVvHpIMF59FpcmaZ4LnQ9X43rv8x1CxRbmzBEEV5v6HTqW0Nr7a+bZFwXzRtJu7o1XKPr5RjQbs6mj/@vger.kernel.org
X-Gm-Message-State: AOJu0Yx0uGxG/IgV1XtPrBa/TK5a810CBU2TdCk/mEFx5CQCSBoMyIge
	7MOJchFCdUFIihjW5xAxsPVYijPGMPlKgr1DscCAGiknUESCLzzb6CeEgU8Yl5Q=
X-Gm-Gg: ASbGnct/TNqEpOdLata/TKatblMP62L3Ad72U42Ds2qogru9OUmZtz6un41XRU8DGHY
	+rEnsgGNGDYp76PeInvGB+eaZQczkRubMJFjjLRhpikdfAqBrpP17Yr1Dl/CPf0bheIqmb68V3V
	NpXpXu9j1k2EPbcGR8c8JcIGr0YmhQ2HvhCvuGxaWNBNuxKo835WdJ+cPnhFzxnXF1hh+Z3saFy
	Yv4qh2cC7QvkFik2TA8In/TLSgv+IZ5fEeEK+VVzXQoTn9j
X-Google-Smtp-Source: AGHT+IEvTWbavoXhQ6+vfbkOhG8cbDKYZMOKpzg5ZpuFE1J+Gc33Tj3rIi7Es/smHvmbL2/NSCBTrA==
X-Received: by 2002:a05:600c:1912:b0:434:a968:89a3 with SMTP id 5b1f17b1804b1-436686436f9mr40093445e9.9.1734718284772;
        Fri, 20 Dec 2024 10:11:24 -0800 (PST)
Received: from [127.0.1.1] ([2a00:1098:3142:e::8])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4366127c488sm51460075e9.27.2024.12.20.10.11.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Dec 2024 10:11:24 -0800 (PST)
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Fri, 20 Dec 2024 18:11:12 +0000
Subject: [PATCH v5 2/3] dt-bindings: display: Fix brcm,bcm2835-hvs bindings
 for BCM2712
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241220-dt-bcm2712-fixes-v5-2-cbbf13d2e97a@raspberrypi.com>
References: <20241220-dt-bcm2712-fixes-v5-0-cbbf13d2e97a@raspberrypi.com>
In-Reply-To: <20241220-dt-bcm2712-fixes-v5-0-cbbf13d2e97a@raspberrypi.com>
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

The driver commit adding support for BCM2712 [1] also requires that
both interrupts and clocks are named, so the relevant -names
properties are also added to "required" for BCM2712.

Update to validate clock, interrupts, and their names for the BCM2712
variant. (There should be no change in the binding requirements for
the other variants).

[1] Commit 7687a12153d3 ("drm/vc4: hvs: Add support for BCM2712 HVS")

Fixes: 6cfcbe548a3a ("dt-bindings: display: Add BCM2712 HVS bindings")
Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
---
 .../bindings/display/brcm,bcm2835-hvs.yaml         | 88 ++++++++++++++++++----
 1 file changed, 74 insertions(+), 14 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/brcm,bcm2835-hvs.yaml b/Documentation/devicetree/bindings/display/brcm,bcm2835-hvs.yaml
index f91c9dce2a44..9aca38a58a16 100644
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
@@ -33,17 +42,68 @@ required:
 
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
+        clock-names: false
+        interrupt-names: false
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
+          minItems: 2
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
+        clock-names: false
+        interrupt-names: false
 
 examples:
   - |

-- 
2.34.1


