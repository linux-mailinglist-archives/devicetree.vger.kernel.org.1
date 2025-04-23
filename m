Return-Path: <devicetree+bounces-170025-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BF2CDA99663
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 19:21:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 04D097AF4F1
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 17:19:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99A9828C5D2;
	Wed, 23 Apr 2025 17:20:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="n8ugwoI0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B260228B516
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 17:20:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745428843; cv=none; b=K/IneK1oXJVRNjSOAwXyE1eh6IWQ91fWjlq+yn02jAu6nfJZH2AU8DEFBGE5uUwpmBcUh2EPoBbM4GchVU1rV4hoXBNFRxjEXo3ItS66AmVPZwxNSTbQtIZtwfmhZbufCwAZEkKQ4l+kmvDrv3OPbKVU0ljUwiSVv7hdfWkQIRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745428843; c=relaxed/simple;
	bh=ftFIstl1yhNalSsorIejsk2ReNc21T86IDQ90JSWiFw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=NkTNn/ltZ7JYuNcGLT0pOkEtE69Z3Qt1WI+ZrG45q2l67YafZMYaJJ+6e7xdFC5Y6PPhjM7IGbTguprLWF2E5AnuQIKl/V2PwR9qL+Pq9W2RRzVkEdTYm+V6FVNUqK8ll1mKIropqMsEom0s2O5+3204TWZDFP7fBmDGYOEyyKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=n8ugwoI0; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-43cef035a3bso542715e9.1
        for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 10:20:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1745428840; x=1746033640; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EAANU+XIZrUPIW6CAFfax2bnLKgdooprA5iPXyYE/lQ=;
        b=n8ugwoI02w5vKryJrkJxom4A1SfUp1SyVRWdYDDHaFsfO/rjST/TXaPwQmEgKoJHq0
         MVUfw348BP5iZ3DPepWAEWYOScLedzSWopEqX7hM+2rsDZdO1DEDJ2RS9DYb9+bT9o+a
         eWRcY7sp6B5qwvNAh0xVLoNDC/doyDPDBJkCp1oEZR3KzBgjDvO9NXyMolcqvLwTe0/p
         +VvBwOqMUfzqVpdDHQvp/xHlhE3RQbOOH+d/Fw3/hvJMHdWMdDOOXO4/TbtdRXMb+rBY
         cG/pUr3jDSE+OQXQfV/QRzLW0uue0nUiAb3Dt2Gbc94jkUZiMLfxfrbTowawNuPqOZhE
         i3kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745428840; x=1746033640;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EAANU+XIZrUPIW6CAFfax2bnLKgdooprA5iPXyYE/lQ=;
        b=itU4WFSbCl1l9EYhKo8ECbW5/sEGiN01abOagn+mqzDc/zRbGM3n7h38liMK9PGyYA
         5PUHHUvm6xF8aXeqfea1OlyoqDkXK07DB4gbsdg1TtllklX9GeUH6bSziC+OasHZmeMR
         l6SqMTwOHzSSz+uoMux6trWcx/I+v3m5eqiETniaa7HyobeUxnii7E0aMqmB6qKW6Lnu
         /B0lOolcOcV4y2CKl5k87Y8mjCbKQ/qMx27xLFOTCwFgydjGzXpxjaGXw6VoD5DTMyK0
         TSdPOEwvC4tG1nrCfvH9wMOwF3+v1imeCfX1Fg1NEYQs0NXv68rb4KIMJoQ5fXofODqf
         abXw==
X-Forwarded-Encrypted: i=1; AJvYcCUUyeNcBxBwaGj+wb0UYj34dEgZF3Sl3nv3qdKH6NV4AsqxgI8XLV1WM5zFfbnLLlipceYogbRDVV+d@vger.kernel.org
X-Gm-Message-State: AOJu0YzhyDxlBKlGUMP9NkUgKzbkLWWC8ojYZODAoMTqD+WoG8xomLd2
	AfWSYVXwGH1TG0ReEZoJRg+US1PQ3ehNCr/hlLjMILsryvklJreVKjA3zwdQ5tA=
X-Gm-Gg: ASbGncvG5vfFC1U/iwXVw173vp07b2U/smyqvAMNZuC2dPz+qOQkfHw8Luo490khNQI
	J4F+v38uQVC4D2Qym5CiB7yQRIrU3EP2W0gROp56UnveLYLdF5id/5SuDZmrpfmTvjxnfs4Hm27
	tu+pkBbx49jMg3h7GW/44kD4xRvtxjwHj9VSTr1W24xL0hRyyRIlXCVvDedIgQa6wEYKawBaftT
	7py9Gtu5DC+R5xkiBkdT+2S8672/M+CP5UsG5+ULC6MsjP7MG+UajZk1mbDCdg4e9HtlDkkfz4s
	dCj875jheXlhbdKHx4eBpYeLDrLwu3jT
X-Google-Smtp-Source: AGHT+IE6A6rGDK5+UwA4nNVAweDZRFVgbHEtVUgwIxRZIYBtxVB2yx8gDbY5T8+UpwH9WyHnBKi/mQ==
X-Received: by 2002:a05:600c:a363:b0:43d:2230:303b with SMTP id 5b1f17b1804b1-4406ac0a8b4mr165209425e9.20.1745428839881;
        Wed, 23 Apr 2025 10:20:39 -0700 (PDT)
Received: from [127.0.1.1] ([2a00:1098:3142:e::8])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-44092d18433sm32940945e9.1.2025.04.23.10.20.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Apr 2025 10:20:39 -0700 (PDT)
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Wed, 23 Apr 2025 18:20:20 +0100
Subject: [PATCH v3 3/5] media: dt-bindings: media: Add binding for the
 Raspberry Pi HEVC decoder
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250423-media-rpi-hevc-dec-v3-3-8fd3fad1d6fb@raspberrypi.com>
References: <20250423-media-rpi-hevc-dec-v3-0-8fd3fad1d6fb@raspberrypi.com>
In-Reply-To: <20250423-media-rpi-hevc-dec-v3-0-8fd3fad1d6fb@raspberrypi.com>
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
 .../bindings/media/raspberrypi,hevc-dec.yaml       | 70 ++++++++++++++++++++++
 1 file changed, 70 insertions(+)

diff --git a/Documentation/devicetree/bindings/media/raspberrypi,hevc-dec.yaml b/Documentation/devicetree/bindings/media/raspberrypi,hevc-dec.yaml
new file mode 100644
index 000000000000..b86534f2689f
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/raspberrypi,hevc-dec.yaml
@@ -0,0 +1,70 @@
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
+    items:
+      - enum:
+          - brcm,bcm2711-hevc-dec
+          - brcm,bcm2712-hevc-dec
+      - const: raspberrypi,hevc-dec
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
+        compatible = "brcm,bcm2711-hevc-dec", "raspberrypi,hevc-dec";
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


