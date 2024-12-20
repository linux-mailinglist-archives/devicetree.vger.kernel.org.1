Return-Path: <devicetree+bounces-133149-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DABC39F965C
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 17:23:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B320916C16B
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 16:23:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4D4D21B90F;
	Fri, 20 Dec 2024 16:21:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="S3ayqxD5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BB3821C16B
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 16:21:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734711701; cv=none; b=nIxfCWunUzxylxFnEwtEZa42/d7aqvS4hfevjhJjHImIkVZ3lKiRWqFitef1E66T/Gouk8+SzGQHAsd8TSBfw9pf6Us1o6kn/e/a6U+p8S2jN7CCW4HC4vfOrCSIQPyqXg70+WygGnFm07PpeA+BOrl86gZ2gV9TFg6vo87MeMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734711701; c=relaxed/simple;
	bh=rZNoT9AhjH+pqpQo4eatUoJtht9ocxF7O8AVWhOlfpQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=FBidKpJcolLhAj8R+FtGqrDysU38dN64Jg9NPqFZC0CEnCwRiG3M0ipZiC7S7u0NyWgX1zLkedUxeAMpf0d/EmBYW2WKt0m9kS9nfGiE+XpNvsrXO/YJUJOdLbfd8jXbbUjoq73/7bdEzO8kND0lHK8HCURv069dNHDileF6G/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=S3ayqxD5; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4361d5dcf5bso22687085e9.3
        for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 08:21:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1734711698; x=1735316498; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dRQf5pCtS98olBDfm75Y/wTQJYSNQxlX5eEUv/v7GTM=;
        b=S3ayqxD5DuVtaQl7zBH2hxWxnbVxmaLQCFQK9frmyaD4nWqZEvyy7pnWWDxtx2517d
         TH4nynqWoMgp8yd+EqXLqKLliu0m7tmaYZflhfM2Q2z6ONNHfxavA9QX3aiXA5+fO/5r
         690011sif7L6uU3SGjsJ84UOV+dWANWbDAykGhWpTQmYxiYgd+P4PbWY9EmMYE4Gjuk1
         8BmGKmnZwaBtHHHu/3DR2cWkeh1E4h5cE+cyVW8AnF9B2GQJke08vKZMP940lbg/oFGE
         SFpVN9Xx+DZ42suOYBCk0TGxapv5GKjkPu4pvoZN0NRIRPqrJCIDItV9A1pnNH4teOj+
         DTIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734711698; x=1735316498;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dRQf5pCtS98olBDfm75Y/wTQJYSNQxlX5eEUv/v7GTM=;
        b=Bjo3ozQcfnlMYqwXFAhVI6wPEWCrwAZnGtbHl4NnXEltNRuFPlqAsJMtsjZLfGT0+1
         Vm50CWpS9tbtI53tkeLz12Mk5RluB3YK2gfgCLob/fPVHqtLT9qprdBNoKY8tCrAr3Kz
         laM9wd5kcseSiBSDLc/zrpeMUIL2w7iMrGiGH140EweHbbrf8t1FR9WSxGv8/EBNy0Ak
         yRASArDeBwSSxzPdJyARurYZUYLuEJADpFM5Y8XfM3JO0IJWiyfq7VG/WHV43TyfybyS
         /wk13jYpYaH3pCfpS4yLZFjpIBtZrAYib4EHP9FO0Pf8Qw5jqB0f763PONFNS5G49XtG
         /2uQ==
X-Forwarded-Encrypted: i=1; AJvYcCWqvJgmxHZdLeIDanJusQwfxsnrLbmu983ANy21eqRTJlKWXQd+Z4RRkCvcbQR/RRZ8gy0mbPCVAHu7@vger.kernel.org
X-Gm-Message-State: AOJu0YzhKCGEuWLl+hl02aWc+j/L93GX58J0lwSdB6jaDhx2DQlSaQR8
	PMQzovuIvotc0+Rnx+elnj8nE0y4gczCxsngjbZxYh9MnVq3flrWL2l6F/aeXb8=
X-Gm-Gg: ASbGnctsCnm+6QBaMEgylqcZ3A9PG4604PKw0kcLIAVrpXIpvZ4LHt5afpHnWMjqwZl
	3zfvQWQQdn+ruU8MiaPdGjV+kwdlAysbPibokNE3t7kTce10jiG6hyhsQJO6kfvtKxw6SMk4AHk
	4Aqr8ZbNzF8PE7dLM9sjITcwCNgt53qQgdoPf0vILrUL+oTxLNNsuSs76/cIJ9halbIxAcUj+f6
	CUQ6F/g4CT7Vx9jWqAbriPTFDzU5/Vi1QLYeHbfrVulWRto
X-Google-Smtp-Source: AGHT+IFxW+RopysqEF8jPbYWDmorW73wBvGIWAYULKR3uETdewbravBIGqJ2B2OrN6Kmdympczu2lQ==
X-Received: by 2002:a05:6000:1fab:b0:385:e30a:394e with SMTP id ffacd0b85a97d-38a221e2066mr4017975f8f.3.1734711697793;
        Fri, 20 Dec 2024 08:21:37 -0800 (PST)
Received: from [127.0.1.1] ([2a00:1098:3142:e::8])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-43656b013e1sm82824045e9.12.2024.12.20.08.21.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Dec 2024 08:21:37 -0800 (PST)
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Fri, 20 Dec 2024 16:21:15 +0000
Subject: [PATCH 4/7] media: dt-bindings: media: Add binding for the
 Raspberry Pi HEVC decoder
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241220-media-rpi-hevc-dec-v1-4-0ebcc04ed42e@raspberrypi.com>
References: <20241220-media-rpi-hevc-dec-v1-0-0ebcc04ed42e@raspberrypi.com>
In-Reply-To: <20241220-media-rpi-hevc-dec-v1-0-0ebcc04ed42e@raspberrypi.com>
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
 .../bindings/media/raspberrypi,hevc-dec.yaml       | 72 ++++++++++++++++++++++
 1 file changed, 72 insertions(+)

diff --git a/Documentation/devicetree/bindings/media/raspberrypi,hevc-dec.yaml b/Documentation/devicetree/bindings/media/raspberrypi,hevc-dec.yaml
new file mode 100644
index 000000000000..d9e804300297
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/raspberrypi,hevc-dec.yaml
@@ -0,0 +1,72 @@
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
+description: |-
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
+      - const: intc
+      - const: hevc
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: The HEVC block clock
+
+  clock-names:
+    items:
+      - const: hevc
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
+        reg = <0x7eb10000 0x1000>,	/* INTC */
+              <0x7eb00000 0x10000>; /* HEVC */
+        reg-names = "intc",
+                    "hevc";
+
+        interrupts = <GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>;
+
+        clocks = <&clk 0>;
+        clock-names = "hevc";
+    };
+
+...

-- 
2.34.1


