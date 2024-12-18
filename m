Return-Path: <devicetree+bounces-132322-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F8A09F6918
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 15:52:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5E57F163982
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 14:49:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D3CA1DDC3C;
	Wed, 18 Dec 2024 14:48:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="rYxG6wVC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EDE11C5CCF
	for <devicetree@vger.kernel.org>; Wed, 18 Dec 2024 14:48:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734533331; cv=none; b=U4FbYpZ6DunSj8iBR4lfFjSRxVULkaeO65G4/bRRkfkubLdmNSz3ZPvKflmcKMSWkV4ZW+nLFTjDD0s7qCPpOxqTVWDZ3e5WlMEp3fTQMMQAHyb18oKdcgdbZP2HeAsLJcJZHY7Hs67KUkETyshNhS1xYMn9x2xTsMoBWwHf+lg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734533331; c=relaxed/simple;
	bh=dgUTEO5IJODWHuc652GdPAcw5MpYfTRtGhZ29mnXqV4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=L0EDZPys58H8VC0XdX3Pi6sRnR7i7ZKqzJOOc1E3ntNms2lGoStGKbp1A/8KQv57/mxIXb/HON0Yuv5NktQmpACQUb3blb3AeMDJuZ6ZnWIOP+jgPozwQ3Z8tvilp8WuTukTGGLwasAamgAQtsU2ILV5q4tvyRCcVHR1VzR6Y+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=rYxG6wVC; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-3862d16b4f5so634097f8f.0
        for <devicetree@vger.kernel.org>; Wed, 18 Dec 2024 06:48:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1734533327; x=1735138127; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yrY2pupmY3cS5kWrlBb91JoKbiwZO8QDmeo+1uchgEg=;
        b=rYxG6wVC+glELCzGk2fpWlEh5Y95OaZRTxq6PKKjHPUAKMvRaErJcFeZYeoIgcpd6N
         OQM7zTjkHeJUc8Abhcv1wPOq6Mbxd0xT33kGaHtEz0rbDEFgZ24dnoEq6uzA8K3pIXHZ
         KbFSiVXg5Piz0qJK8HHoIqjwHgzbrduCH5pK5qTdAzOqg/1mFhrU7xZI4WCho9Xcgr7Q
         v4yroi2uYsHNsSDindIxvfWPcvTlCB82FZnj1FxjfboDiBlzTp6GfhtbFqLWf3u6ox7S
         U4jSloPO6Q6Mmk9bclgDiCThxvArD7WHWnlqquina6ji/0hd7RY+Xyodqs1ZO51fVaTa
         DoAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734533327; x=1735138127;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yrY2pupmY3cS5kWrlBb91JoKbiwZO8QDmeo+1uchgEg=;
        b=mPUXI9kly7G9WKvmZ3NLReXtushJXApqfpi3jta5iw4rjCkYdLUJHYaOuHZuXUqPdu
         iL24vWXg6XYfMgWnTjMdpzHKnDZAIwsRl9MpxtZDuRCvKkZROPfqswA52Q4OqwOMitaR
         gxF4fKz3y9e+rEI1J9KhgjJz1ILzZFx3ZwMGKIIKCHMlqZYQy7kKRxDVeF81zw3wc+n2
         CBDAjLDgk65WW9kI0C5jCOdEbO8NadWtwQojDDHBn47YcJC0NP2E9EZZLDH/T/iWufs/
         OwmoqxeSaCZ/bzZKSM1DNzEug+/WkvowRMeBKCtD4pXu4733SHCikTTjr05sGULCpcyi
         Jbvw==
X-Forwarded-Encrypted: i=1; AJvYcCXKcNafeGZBycnhiXZARaj9sPZCwZJqBeW3BopUIA3yLQtkrNHFLDh85+HYCiwFsIEqFKWN+4zXGPW/@vger.kernel.org
X-Gm-Message-State: AOJu0YwwbKO8JlmxlJY9MvqQ+IkOZ/GCbiMl80k5pwCmfSsDxZvsBBEz
	gQxV0IRjIsaHZjUL3OH/8Rv41rAkHkVElS1dntTZ+zXwo41DkS3xUi5NBpee2+g=
X-Gm-Gg: ASbGncsH4b4QceKpvuSQle4GNDT68IexxLP+MfqjyfMoShc8BDZLl7kmi9OK2Rq/MG2
	2F4SnpU/zLCkbCcdRyahL2SHBC5w+nN8iXYE4neSQzF+bYoKxiOy4k3yxgYXI0a7wvFongYdZXi
	nO/zsBfu5t0G98I+Y6OjlaV0WW18tRhKEn7Itr3sBfkm6oRyO0Yzbll/eS2bSEFi3Y0gXf6OCt7
	C7O2vQu9sCEOP9kb6xDX/g8Nknm/YAiJdpNGOBnnFRmYkT7
X-Google-Smtp-Source: AGHT+IGVb9AVJbgLZf6oo7CR/UM/0zP05m4m7cxzr4ZQnmR8ihuiTVlaXnWyw/vXXHA60mapsdImEQ==
X-Received: by 2002:a05:6000:1ac9:b0:385:f64e:f177 with SMTP id ffacd0b85a97d-388e4e1d4f2mr2756907f8f.11.1734533327591;
        Wed, 18 Dec 2024 06:48:47 -0800 (PST)
Received: from [127.0.1.1] ([2a00:1098:3142:e::8])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-388c80613a9sm14165163f8f.101.2024.12.18.06.48.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Dec 2024 06:48:46 -0800 (PST)
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Wed, 18 Dec 2024 14:48:33 +0000
Subject: [PATCH v4 2/3] dt-bindings: display: Fix BCM2835 HVS bindings for
 BCM2712
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241218-dt-bcm2712-fixes-v4-2-54cc88b6c229@raspberrypi.com>
References: <20241218-dt-bcm2712-fixes-v4-0-54cc88b6c229@raspberrypi.com>
In-Reply-To: <20241218-dt-bcm2712-fixes-v4-0-54cc88b6c229@raspberrypi.com>
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
the number of interrupts and clocks changed too, and both need to be
named.

Update to validate clock, interrupts, and their names for the variants.

Fixes: 6cfcbe548a3a ("dt-bindings: display: Add BCM2712 HVS bindings")
Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
---
 .../bindings/display/brcm,bcm2835-hvs.yaml         | 84 ++++++++++++++++++----
 1 file changed, 70 insertions(+), 14 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/brcm,bcm2835-hvs.yaml b/Documentation/devicetree/bindings/display/brcm,bcm2835-hvs.yaml
index f91c9dce2a44..fd25ee5ce301 100644
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
@@ -33,17 +42,64 @@ required:
 
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
 
 examples:
   - |

-- 
2.34.1


