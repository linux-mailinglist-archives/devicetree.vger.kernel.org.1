Return-Path: <devicetree+bounces-132321-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FDD29F6916
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 15:52:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8D91D16795B
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 14:48:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E5ED1D47BB;
	Wed, 18 Dec 2024 14:48:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="OliAWIQP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D0D01ACEAC
	for <devicetree@vger.kernel.org>; Wed, 18 Dec 2024 14:48:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734533330; cv=none; b=Gfb4dCgnYVV7spt3bsfLrjVTQ0rT2XY5FzRk+uQ+9BP7ymFEVsOm56PPyNu7YS/2qjRnJHF+ty1buGhT9F3vVM4TpTkL8NnfY51RP87IguzO3CpvXxZRDqmYN40C3twJMZxuK5VcLePM7touUydn40hV8U5S3aWT26xsYCVSSWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734533330; c=relaxed/simple;
	bh=obHcyfNRXnhgSZAtJjJHu9uLZYv2OBdT8Zf1ANvMXhg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=k4PYoIQnqXIWmse8ENg5WO6oA3EKz17IhXB2mTxfb268rBDGSvPFrRpuY0bTx4kiy8MSr2cDn5tYg6EFdXTiDP6VmB9uYuQMy/GYLnGctbT/WuWazc20Jsg0XVU5wAch+lj9qAZrRD3WMbJrzSgX3gLo1KWUOcbGiOTJK/qHiMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=OliAWIQP; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-43635796b48so5842705e9.0
        for <devicetree@vger.kernel.org>; Wed, 18 Dec 2024 06:48:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1734533326; x=1735138126; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0HhuvChnZxHEKbDR0wzjSlhppXuk6dBcqGjZkLEJAX4=;
        b=OliAWIQPkeVUjKIOl8HeS9G0/GgDn+Ovo/O8dnscdpsILH7C0nNFQfAMSpgBCbp5uP
         8kWiybVby9IW8ya4ocWOW120kbjsyfKuqKKOtI2/3SUOxQ4aU2QurKUrOePjmxboEHAN
         YBdRR4pnc4WU+ryDNnBthtAIPRC6nBDMQMlooGd9H2asoZkEE9HNKzg3PtlaoTFhbZqh
         bLjQ+aIjQoqq147MDOlZEJA5Zc1aaxZHB48MLy7hBR/4SNSlx1+Lcshfln9JL+c9Hs37
         RY/zAkbw8bLa5hLtOO9SRpLgElqgfZJzUnXNzRohfivGcrII9DBSnWBq8k388hjPb5fx
         vozA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734533326; x=1735138126;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0HhuvChnZxHEKbDR0wzjSlhppXuk6dBcqGjZkLEJAX4=;
        b=nbbJNc0jKh4iP1vy7gMQsJhG+bb3rOWKJzWY42WJkDNfGIL06g/ptvIxTFPGPxB5Nb
         5bzGGAOukg5XplXLL4hA/oadJSdHpcpGRewYJV5/EJDgZ5IN26idQ0Of88Y+RAYee0ZO
         277pvyFyDvxAty/NzPQjdKnCIr4AIeb5a3ZWQ/k9sLj0xxL2PgxeFDFvswqW+oZIF85t
         k1K5ly7wCGkTLTKLuw5bk7/SToZc7PX3lrn6WmxGEwqdnAmIlPoczvJhhab2AsyFuO7J
         mV/RytulqFacUi3PYlxq5JVg2kZjUutZ7Tvisq2GB0Z+JQ2cC+E7+v/Vj0DQALyHr9kg
         vpuQ==
X-Forwarded-Encrypted: i=1; AJvYcCWY18bKf+cQD57vR72CQVleE+lCx8i4mvZKan+8dr/64/qJRy4CsumeswVewz8Azz9dKfw459ia1AlC@vger.kernel.org
X-Gm-Message-State: AOJu0YzQyaSNmjPLkZ+/U4w5YnWO/lSMgsWTfLG2MQuUGPnsp8A0R+Q+
	F3WToYFohY+fwTshT1naSY49inQo/QQd3CGCkLDxD0ortWUhvfirDZ7H9dMXK3w=
X-Gm-Gg: ASbGncvaGxrouLkWiyhPOigWMaEu11tPm0YFhnVxLUo30kpk9s55e/hZpLBsU3FmBvB
	WYk7GoMaorQdGj6U62ChB67BzS2yt5geM6mSqcCANPB+4Q1RFuoNQfzhhOr7TFQpxsY76GjxVDy
	7ipd0YQRc77OXshrjsvgHzk4orWdA/vqbpqjg4kKn7eXjOO+vmf0HBgRkxn8uN8vUSVNWgcpE3U
	558S+Kfm5KhxG0aYULVGUqyVduUv/PPnoJ3UI6wCa/HbtfI
X-Google-Smtp-Source: AGHT+IHW10MOxS28loaYz58hcigl3Ail1h5qTPK70DcVM/fvNy/4Wh1EKi45+y5z3iUCnn9N7rshPw==
X-Received: by 2002:a05:600c:35cb:b0:434:fa73:a906 with SMTP id 5b1f17b1804b1-436553052fbmr27423205e9.4.1734533326478;
        Wed, 18 Dec 2024 06:48:46 -0800 (PST)
Received: from [127.0.1.1] ([2a00:1098:3142:e::8])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-388c80613a9sm14165163f8f.101.2024.12.18.06.48.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Dec 2024 06:48:46 -0800 (PST)
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Wed, 18 Dec 2024 14:48:32 +0000
Subject: [PATCH v4 1/3] dt-bindings: display: bcm2711-hdmi: Add interrupt
 details for BCM2712
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241218-dt-bcm2712-fixes-v4-1-54cc88b6c229@raspberrypi.com>
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

Commit 62948c62abca ("dt-bindings: display: Add BCM2712 HDMI bindings")
added the compatible strings for BCM2712, but missed out that the
number of interrupts changed.

Update the schema to include the interrupt requirements.

Fixes: 62948c62abca ("dt-bindings: display: Add BCM2712 HDMI bindings")
Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
---
 .../bindings/display/brcm,bcm2711-hdmi.yaml        | 81 ++++++++++++++++++----
 1 file changed, 67 insertions(+), 14 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/brcm,bcm2711-hdmi.yaml b/Documentation/devicetree/bindings/display/brcm,bcm2711-hdmi.yaml
index 6d11f5955b51..83c058728ef1 100644
--- a/Documentation/devicetree/bindings/display/brcm,bcm2711-hdmi.yaml
+++ b/Documentation/devicetree/bindings/display/brcm,bcm2711-hdmi.yaml
@@ -56,22 +56,12 @@ properties:
       - const: cec
 
   interrupts:
-    items:
-      - description: CEC TX interrupt
-      - description: CEC RX interrupt
-      - description: CEC stuck at low interrupt
-      - description: Wake-up interrupt
-      - description: Hotplug connected interrupt
-      - description: Hotplug removed interrupt
+    minItems: 5
+    maxItems: 6
 
   interrupt-names:
-    items:
-      - const: cec-tx
-      - const: cec-rx
-      - const: cec-low
-      - const: wakeup
-      - const: hpd-connected
-      - const: hpd-removed
+    minItems: 5
+    maxItems: 6
 
   ddc:
     $ref: /schemas/types.yaml#/definitions/phandle
@@ -112,6 +102,66 @@ required:
 
 additionalProperties: false
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - brcm,bcm2711-hdmi0
+              - brcm,bcm2711-hdmi1
+    then:
+      properties:
+        interrupts:
+          items:
+            - description: CEC TX interrupt
+            - description: CEC RX interrupt
+            - description: CEC stuck at low interrupt
+            - description: Wake-up interrupt
+            - description: Hotplug connected interrupt
+            - description: Hotplug removed interrupt
+        interrupt-names:
+          items:
+            - const: cec-tx
+            - const: cec-rx
+            - const: cec-low
+            - const: wakeup
+            - const: hpd-connected
+            - const: hpd-removed
+
+
+      required:
+        - interrupts
+        - interrupt-names
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - brcm,bcm2712-hdmi0
+              - brcm,bcm2712-hdmi1
+    then:
+      properties:
+        interrupts:
+          items:
+            - description: CEC TX interrupt
+            - description: CEC RX interrupt
+            - description: CEC stuck at low interrupt
+            - description: Hotplug connected interrupt
+            - description: Hotplug removed interrupt
+        interrupts-names:
+          items:
+            - const: cec-tx
+            - const: cec-rx
+            - const: cec-low
+            - const: hpd-connected
+            - const: hpd-removed
+
+      required:
+        - interrupts
+        - interrupt-names
+
 examples:
   - |
     hdmi0: hdmi@7ef00700 {
@@ -136,6 +186,9 @@ examples:
                     "hd";
         clocks = <&firmware_clocks 13>, <&firmware_clocks 14>, <&dvp 1>, <&clk_27MHz>;
         clock-names = "hdmi", "bvb", "audio", "cec";
+        interrupts = <0>, <1>, <2>, <3>, <4>, <5>;
+        interrupt-names = "cec-tx", "cec-rx", "cec-low", "wakeup",
+                "hpd-connected", "hpd-removed";
         resets = <&dvp 0>;
         ddc = <&ddc0>;
     };

-- 
2.34.1


