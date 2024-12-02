Return-Path: <devicetree+bounces-126127-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DD2559E055A
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 15:45:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 032B416CD8F
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 14:37:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D9AB20C015;
	Mon,  2 Dec 2024 14:32:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="d3x+UxdZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC7F320B7F7
	for <devicetree@vger.kernel.org>; Mon,  2 Dec 2024 14:32:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733149940; cv=none; b=P/5TW2mgoo18Ry4JDDw2UwErDRRUEGUyxW3X171iU0s8kkq9xqbyxT3xy2mtqXGsSiAFyL0lDpNcjp3OIpvYBeC1s34CNMvcR4x6wIl+AZDLPlV9PRZmNweR+WxN8HADM8W9AZ8XtU7qfL06t42tXesEHNfUE56I0utGfIq7z1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733149940; c=relaxed/simple;
	bh=FQOZmUNicupuaj+h7+nIqZLEwfVhlNCxkDeqgMBEpIo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kniyfjDiTI8w1BdzeWViS8TfhcjZJFxUUoRrV+O/Xuklo0ACBRQ2NgOR+YAdE9Av5U87aNZKZf46iUPow5CIxZwOM6qwAjj9fdhfn+F0ioXOX5wYfkRS2DCSD1SfMcLiQdfVdE3BrSN7t9t3Ooin6dCZsVhg9xeD+8N1r1r7JME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=d3x+UxdZ; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-385f4a4093eso661515f8f.1
        for <devicetree@vger.kernel.org>; Mon, 02 Dec 2024 06:32:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1733149937; x=1733754737; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7AFVILEGG6inA8zYmU/doFUBGD/IkzUATf3B1mIzQMQ=;
        b=d3x+UxdZbLevh/ZBKcrsuOUyjOFQULhVF14UVtAk757k+6YDMiVWbX5ICak/lR8ihr
         BsaH3S41avVqHG6VEgaVzL54U4Db7YaslfJ50wOcQzV5Q/PVa3dAf11jhz52X4IaQ7pu
         WCXsgVcGkIuk+n1bYZ/C8cC34jpfv/qjsg+0vw1CroP8ZVZ2UA+blKW8tqrGrlPnrF6c
         vm54BkjHlBzRfY/Mu5vmTCZ5/EQIzhwGzmxNHKUCJuh4rKdUP3LFPA+5Pm9+f7xXHPir
         iDzw36qMwgYc+9cFRhYP2WJt7956NL1VOO8Gk7kQ7rP6xRB5XFPl2Ig77eRpJ7oNHqAI
         sSMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733149937; x=1733754737;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7AFVILEGG6inA8zYmU/doFUBGD/IkzUATf3B1mIzQMQ=;
        b=skMBdNNB2ZLZns08f/GYAj1FnHLpW8oOnGa09Yo7GbkNAEoSex+v+MHAzdfafEMdRt
         dSm5EWf7l+DzyViHY3hHvCqyjbnEMeveMhDaqxJsV/90Fi/CTo94JAquORmqtWo8eivG
         0buJb6DLkjYH57ibgYfkCkYUPu4FYEyD7cuIV+6KTrLyOuhOrnyn3AkC1jZVISRXf/93
         fd3txCMTmaRyzL+F3hQnDLwaBUpsOQ78pnP3+bsT+yCjZMADGTy5xQXP1DqjcMyD2rAy
         kwOzWNxH9HtrC0Owfaop8LAkjrfZ2l+CKxcYkdT5H18JRrILhpR0c20n6eHpW/dQqEho
         RURA==
X-Forwarded-Encrypted: i=1; AJvYcCVXB/xz0dl3TjOTZtn3faLbD/SsE+pT9ZYIjY4ppGvGgb3EPEar0oVEtOPuIQi0ubjIhZ28mF7Mmupp@vger.kernel.org
X-Gm-Message-State: AOJu0YyxDsrvxFnzF7bZMMSGugVYT9cT4kbS67Wq9BnPOeLon011Uw7J
	rEoxDZ2rohTjzWf4JaNfAFIcQPJDzNAPvPhz4XNwoHHBz/eDqnSIQfjUAWZNjPw=
X-Gm-Gg: ASbGncsbgU2ohhqdDWxothKf9prWF1blw1QlY008xrwrqy0dFocXPeIRl+RbUQ0DqNo
	TOfUE5+iEA75BJIsTNqTJGqxvX4M3yfJelWNuu2RU1axlmvmad+PSR27kPjEOR6GaHuYjiO3Xn2
	Eyh8JGYcrbFcWt+Iiur+qtiMvU10+z4F0AUVTW+qYzUtRYdXOuWUaISG2QjZi4l6Xi6m8ulu+z4
	uuTadZDbbnNZLuFEbmDxXoFCuhTOlV1qfylDg1dvw==
X-Google-Smtp-Source: AGHT+IEh8wUvPPp6fmiu8qi70G2dLIyR2cy0B8DQH6XpxZjumKSN1WVLLU9bXrhtMfH6hCylA9amQQ==
X-Received: by 2002:a05:6000:4024:b0:385:e4a7:df07 with SMTP id ffacd0b85a97d-385e4a7e08dmr6305010f8f.42.1733149937090;
        Mon, 02 Dec 2024 06:32:17 -0800 (PST)
Received: from [127.0.1.1] ([2a00:1098:3142:e::8])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-434aa74f1e6sm188429555e9.9.2024.12.02.06.32.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Dec 2024 06:32:16 -0800 (PST)
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Mon, 02 Dec 2024 14:31:55 +0000
Subject: [PATCH 2/7] dtbindings: display: Fix BCM2835 HVS bindings for
 BCM2712
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241202-dt-bcm2712-fixes-v1-2-fac67cc2f98a@raspberrypi.com>
References: <20241202-dt-bcm2712-fixes-v1-0-fac67cc2f98a@raspberrypi.com>
In-Reply-To: <20241202-dt-bcm2712-fixes-v1-0-fac67cc2f98a@raspberrypi.com>
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
 Bartosz Golaszewski <brgl@bgdev.pl>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>, 
 linux-gpio@vger.kernel.org, Dave Stevenson <dave.stevenson@raspberrypi.com>
X-Mailer: b4 0.14.1

The previous patch adding the compatible string missed out that
the number of interrupts and clocks changed with BCM2712 too.

Update to validate clock and interrupts for the variants.

Fixes: 6cfcbe548a3a ("dt-bindings: display: Add BCM2712 HVS bindings")
Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
---
 .../bindings/display/brcm,bcm2835-hvs.yaml         | 77 +++++++++++++++++-----
 1 file changed, 61 insertions(+), 16 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/brcm,bcm2835-hvs.yaml b/Documentation/devicetree/bindings/display/brcm,bcm2835-hvs.yaml
index f91c9dce2a44..ab59edbcf32c 100644
--- a/Documentation/devicetree/bindings/display/brcm,bcm2835-hvs.yaml
+++ b/Documentation/devicetree/bindings/display/brcm,bcm2835-hvs.yaml
@@ -19,12 +19,13 @@ properties:
   reg:
     maxItems: 1
 
-  interrupts:
-    maxItems: 1
+  interrupts: true
 
-  clocks:
-    maxItems: 1
-    description: Core Clock
+  interrupt-names: true
+
+  clocks: true
+
+  clock-names: true
 
 required:
   - compatible
@@ -33,17 +34,61 @@ required:
 
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


