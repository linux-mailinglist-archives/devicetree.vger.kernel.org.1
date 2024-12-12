Return-Path: <devicetree+bounces-130418-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D64A9EFB26
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 19:37:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D4E2E16B4B7
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 18:36:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C70D223E9D;
	Thu, 12 Dec 2024 18:36:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="Qy0ayegu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96C83223338
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 18:36:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734028606; cv=none; b=cst/eyRMpxZv4HDpVETcFu9UbrYt5Fi2zIo/cxCnjX2JVCN4tjAlTW5TRrOjiZj+APGmSwx8wr2Bik0jxwH5md5EYh65Rd2gF9OESNGo0x0/orvR+4y7Mhz/kT44U9tWvvQqxvsRfpnrjmKCHJVPUbajRB23vSa6S14My1sCzcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734028606; c=relaxed/simple;
	bh=rkPNOS/CThHiZ6WlZSF0eZPRzkaH0woMbTCR+SPr3t8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=UECJLWRBxkoB6zw2gEi/oETTE9c4zHHqcDaq8zr6p8ZkK08Cr+UiuWJA3iO6vtWvs3RZ1hb9sEItTUWtbMsPcJaSZpF657WXxxGCam7PQj80dbOw1dTV+LdviJboXVKdAeT/TaUTTHqEIWy4uvKU9b9O1/P9P1+CuXvcQZtexXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=Qy0ayegu; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-385deda28b3so688843f8f.0
        for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 10:36:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1734028603; x=1734633403; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZmY4nSeOHfUAeSRoOGUYAdGnJvM3BDuelhiAae/7ZWg=;
        b=Qy0ayeguk99iHuVBTkCZmC2a7Li07bPTqYCO5V3AEUKu1TSRAnFaG4J4rw1GkNmgBl
         w27SGhfvY2PMQf9E8kR3MOeH7f13bbAPD+CvOkyx7UlONsPDYF23dk/9Swv3v5vuvt/x
         R5pcslEhKgvahfs5YGtMfFEM7mln48pBFtKgTli0O1aruXbJOSDao2Xql5QC+AHz/wh5
         lFmpX4kz5pVRvj+oEWoPQ6yvsmLXNGfBKaNMZAYk/oRPfFCpqsDuYKKzrpzsazU8XI4h
         DcA4kEJsLIVXI0Upv55dTSuw4XhXUtJhNFgc7BdSzLE6Tu9KYLUNXL+9u1QVxF54c78T
         wcwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734028603; x=1734633403;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZmY4nSeOHfUAeSRoOGUYAdGnJvM3BDuelhiAae/7ZWg=;
        b=p8L1zbGitKam+F8HvZZTC8NLTzL6zKt2Ky0dGvbjoP/D1DERJagOB5dzAxfP5rU8Fj
         BQq84JFuWNSSvO189e7L6PVacie7Vgou4eXLnmnI+Ko608AwePGsYFFuWZUw0kyb3ABJ
         tQSBeAzPsvdYpvQGlJ5D2uKkzYzCGPj6O5MaOO4JZkCQgzF4q+og1vbsuw+/XKI4/Urr
         NkchSesJ7vBRCoqOwoiGVmgpCpPiPXCbG+Sh0xJet1q3uhs8o4MZoBnZikKmtFHJkG3H
         LqVZHHwHZTrh13QSkswDsFsWm0a12rM3IBkpI7XluvjZquZ2GRc7skLX2qzk1KddU0RX
         yPIw==
X-Forwarded-Encrypted: i=1; AJvYcCX5djNZ3ioWiTN/YWvjCF+JMCyMb0TNlgBxdFx3XDCMiRiaXlJ/NHuef1tpbDDPuWn8+rqTcS25BzrB@vger.kernel.org
X-Gm-Message-State: AOJu0Yz7K2a8kY51vC0GmYztlA/7uRIP0mR7pqA+Qo+vj0dYGYgSup5M
	+TtUW6BJhz0hxvf8ua6iW2U16DRjU4nr11vPDOHmriy74+s260abzmMNKyNXTP8=
X-Gm-Gg: ASbGncv952bKakzP04Yqj5Nqx4o3ZCx4clX1JhAkY55UGab4lbWb8R64Q6Ifb0CxsLs
	gqsItuSPw+k8ekzHhQAU27p1XnTiCXOlLfXFy7XPHGXqUDoAPUf6QEWbQVwissoZDLg8DKKCzQb
	9ENPJ9loqqZ1N+sgyoF+ZFsWWS7HsWv3iEmKWr6XkfCa69PJ2xe26nrLxXyWee3c87Ia0ZqAyU+
	jGyQ1dSFFjJWmwNwMYKNmp52yRuD21E2YdaFTPB30oMWd/e
X-Google-Smtp-Source: AGHT+IFU9uMnmpDGMa3W5FkV+Zbg8mGPNRBLqmRp7s6rNpHHpbC4TqWxpZPj4otDLO2FaOF1TjZ6vQ==
X-Received: by 2002:a05:6000:70e:b0:386:3864:5cf2 with SMTP id ffacd0b85a97d-38787691302mr4172021f8f.19.1734028602901;
        Thu, 12 Dec 2024 10:36:42 -0800 (PST)
Received: from [127.0.1.1] ([2a00:1098:3142:e::8])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-436257178e3sm24651995e9.41.2024.12.12.10.36.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Dec 2024 10:36:41 -0800 (PST)
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Thu, 12 Dec 2024 18:36:29 +0000
Subject: [PATCH v3 2/7] dt-bindings: display: Fix BCM2835 HVS bindings for
 BCM2712
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241212-dt-bcm2712-fixes-v3-2-44a7f3390331@raspberrypi.com>
References: <20241212-dt-bcm2712-fixes-v3-0-44a7f3390331@raspberrypi.com>
In-Reply-To: <20241212-dt-bcm2712-fixes-v3-0-44a7f3390331@raspberrypi.com>
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


