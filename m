Return-Path: <devicetree+bounces-143700-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BAD74A2AFB4
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 19:04:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2F818188C11F
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 18:04:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A1D619E7F9;
	Thu,  6 Feb 2025 18:03:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="JxaYdUDN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86CE519CD13
	for <devicetree@vger.kernel.org>; Thu,  6 Feb 2025 18:03:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738865015; cv=none; b=KwiHtSFd8N3NSvZbCwymfM32WOwiF+mpdpRk3cr76iGpU7yWUZCc2RI/auMMm3f38KaWCyrOGzKK+4bnEEnYLmF/uc4S2UA4Hr1AbhnB42rux3IY6o17/U0tlGFjCVhsfLom5UIyYLkUle5B4OchZXdUr6ZjKOndVbaz1pvDZPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738865015; c=relaxed/simple;
	bh=r2UTtoxqsTQAE5NrTtzww1y1OS1gn30nWJe58icJu9M=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=WS4KjAjKmj15Z8jzDnw8bOs2UiPif5s2seRorRWpOyZq/JcnbAdfit4W1YnDy3LB1Ge3EvEzC6OODsBJXNDOulnQ0p9qJR2QZMG3oCcAEwSuX9WF8sZIHx8niOR+xGQccp0sXxUQUlFt1Rqmrc9/LxdqZhDvaDGYeFmg6rjsQ2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=JxaYdUDN; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-436341f575fso14699475e9.1
        for <devicetree@vger.kernel.org>; Thu, 06 Feb 2025 10:03:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1738865012; x=1739469812; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6+Ptm0oRwTnL3Ocb32TjntW1tAXUnQly4a1T7oh0b/g=;
        b=JxaYdUDNFTZI8/asHxe/B3i6GRJyIngeXJ+Nja3aACSHAcDL0uVFIGjf1zk9CEnQEx
         mejKQHX8tOJ/yKIwmP8NuvVoRGfjUk83dWyaaTqrWihtpOjcXWH1qboh6Ezs+SBe+mZl
         nOEBTOfLdkpYQh/+HfkVcSMVQYH+GTVbiXB5zsxm+8Ns0c2Er90U7+hsvJXxDa0lRndv
         DJvhePXLWGzCQ6CnfO3IM1QLokFCQ18MI5saWjE02UW/V74JXMFcYp/gB6TSqaZNmEcV
         ZC/fh4kjT+lugI44RXaBF26LqEvghSg1S8mAfsqzEdFZpAZvodCpPGNVyDVmFQ2VbfmZ
         /cyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738865012; x=1739469812;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6+Ptm0oRwTnL3Ocb32TjntW1tAXUnQly4a1T7oh0b/g=;
        b=b4RMVAu37U2tu5ZsgqZRr45KvYoWabW/oWOv+vlMydhGHAcYzvCPx4cYm1oaqaClNZ
         F5uBMjki/4DmTNDCncKnDR8SfqEuDZF6hB7LdYU2GRfpBUJDtSLwiiGxel3LwJrKWA+e
         OoFpZe3yJSBBt150wqpRfppQmr7X+V+U9eLsLsB9D2yPafnLCGF5eIBTdwTTaCnL72ro
         0WUhKB1W2xZCRFPo4YGFVgUqui3h4hWsAI6auSbkxL+FeYUl7I4ORVUNBWHoxdSXASA7
         kDAr7pbg4byfsvRY+N1MqZCCq00AajzJ5IyZ+R1MhY5d03rdQzzcYVDiYo56V3cchQ0+
         AI8g==
X-Forwarded-Encrypted: i=1; AJvYcCUCKOjXjolvetzaBDS1o5yAkXQA0HJKCMzbPEwQDBUsvWg37DdhiAb1Tfhr/68i6LPav7OTALH+m42p@vger.kernel.org
X-Gm-Message-State: AOJu0Yw5yz8umTsXf5UZD9rYF8a6Z0YyClJLGaRU7d/nF3EajKqQzPXZ
	rUGoFsY5ihL08D5b0N/iwkusk9DYnbqpT5mFPpH8R4+k8gM8BtvPfq5kSNAhqzdFRDCGOP1jeXR
	N
X-Gm-Gg: ASbGncu/z5yhBXGCZTzns493A3eVeKM5FxCbuZ7CfZjO/F9CiyEwksLuopuETEiQOQ7
	g58cH+WLDtjIK3ZNb7eqjNt6Zn/yGHSsL0YGa2wM/4mPaQzUQIlcCW9XNE5OLADCc2ILh+2/mIk
	ewNCHvNsHmbzJMdqE4oylcSmdBn1wY3BjeA4ocZKo4d38n4dA+AX+QYbjs2LIRULcB0Laz4+900
	ql+aV0HCxuei9mrDk1kAlkhhedvf1mV2PmIHx2aBLYu6G8LwDBCTPy2XAY3cOQrZkw2+2ebV/ji
	gh/I6sk=
X-Google-Smtp-Source: AGHT+IEc40ueYLTteR1KlQ3fnrgzcK1xfXxwFu0xmwqnVwELnnEw0h737ayS1xCS2yNyZ8/F36GDAA==
X-Received: by 2002:a05:600c:4f91:b0:436:916b:aaf4 with SMTP id 5b1f17b1804b1-4392498a1b5mr4704265e9.10.1738865010000;
        Thu, 06 Feb 2025 10:03:30 -0800 (PST)
Received: from [127.0.1.1] ([2a00:1098:3142:e::8])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-38dbdd3856fsm2278858f8f.28.2025.02.06.10.03.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Feb 2025 10:03:29 -0800 (PST)
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Thu, 06 Feb 2025 18:02:36 +0000
Subject: [PATCH v2 3/5] media: dt-bindings: media: Add binding for the
 Raspberry Pi HEVC decoder
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250206-media-rpi-hevc-dec-v2-3-69353c8805b2@raspberrypi.com>
References: <20250206-media-rpi-hevc-dec-v2-0-69353c8805b2@raspberrypi.com>
In-Reply-To: <20250206-media-rpi-hevc-dec-v2-0-69353c8805b2@raspberrypi.com>
To: Sakari Ailus <sakari.ailus@linux.intel.com>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 John Cox <john.cox@raspberrypi.com>, Dom Cobley <dom@raspberrypi.com>, 
 review list <kernel-list@raspberrypi.com>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc: John Cox <jc@kynesim.co.uk>, linux-media@vger.kernel.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 Dave Stevenson <dave.stevenson@raspberrypi.com>
X-Mailer: b4 0.14.1

Adds a binding for the HEVC decoder found on the BCM2711 / Raspberry Pi 4,
and BCM2712 / Raspberry Pi 5.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
---
 .../bindings/media/raspberrypi,hevc-dec.yaml       | 67 ++++++++++++++++++++++
 1 file changed, 67 insertions(+)

diff --git a/Documentation/devicetree/bindings/media/raspberrypi,hevc-dec.yaml b/Documentation/devicetree/bindings/media/raspberrypi,hevc-dec.yaml
new file mode 100644
index 000000000000..06db7004c765
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/raspberrypi,hevc-dec.yaml
@@ -0,0 +1,67 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/raspberrypi,hevc-dec.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Raspberry Pi HEVC Decoder
+
+maintainers:
+  - John Cox <john.cox@raspberrypi.com>
+  - Dom Cobley <dom@raspberrypi.com>
+  - Dave Stevenson <dave.stevenson@raspberrypi.com>
+  - Raspberry Pi internal review list <kernel-list@raspberrypi.com>
+
+description:
+  The Raspberry Pi HEVC decoder is a hardware video decode accelerator block
+  found in the BCM2711 and BCM2712 processors used on Raspberry Pi 4 and 5
+  boards respectively.
+
+properties:
+  compatible:
+    enum:
+      - raspberrypi,hevc-dec
+
+  reg:
+    items:
+      - description: The HEVC main register region
+      - description: The Interrupt control register region
+
+  reg-names:
+    items:
+      - const: hevc
+      - const: intc
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: The HEVC block clock
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - interrupts
+  - clocks
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    video-codec@7eb10000 {
+        compatible = "raspberrypi,hevc-dec";
+        reg = <0x7eb00000 0x10000>, /* HEVC */
+              <0x7eb10000 0x1000>;  /* INTC */
+        reg-names = "hevc",
+                    "intc";
+
+        interrupts = <GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>;
+
+        clocks = <&clk 0>;
+    };
+
+...

-- 
2.34.1


