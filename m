Return-Path: <devicetree+bounces-246063-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CC3BDCB8573
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 09:57:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 72BF6303C9BB
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 08:56:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D1263112A1;
	Fri, 12 Dec 2025 08:56:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="U0sONwsm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B28F730E0E7
	for <devicetree@vger.kernel.org>; Fri, 12 Dec 2025 08:56:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765529807; cv=none; b=C+Ch/8Moz6gNr52p5z2YLRE9t5jod0RS9UqF1KylOeOOHG407akmCVTPIqcQkVELmcdek7vROU+8fq8UlXHxoxmLOUSG+/4U8TDe8GDJS0PZLAuq+9a0G5gkb/zOe+6xpPJuuUZqJ0Yk4FTz+k003215UWam8YUPUfnBnMjgYbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765529807; c=relaxed/simple;
	bh=SvHp0h8NsklocbzdYY7aO2MNGJqdaiMnGBPKE+inQoo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=pHd6G5vCx1ISqPOeDXch9i6HMSCQbUS72KJ/d1/6Aydy9slfBRLzGtlCLn+Uo1SQfSDyBsYmNyNr7DL7E6REQIzQeiy8eeD8uUThtiWo4is1K4xypudm+iJk46grJze+JKB+yWUvu+11Dr6rERHd8BwOUI+K6KFbnrGWnBBB3fw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=U0sONwsm; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-47796a837c7so7300935e9.0
        for <devicetree@vger.kernel.org>; Fri, 12 Dec 2025 00:56:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765529804; x=1766134604; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=z0OD6Tul6N7Ac9c9vQK1/GWaIUr26ez2juaXAYXKN8s=;
        b=U0sONwsm8mglivLN3DVULEXP31FVytoFlRJlg+SJdoI4Adqlf9CDn7SwtJIOi/HtxR
         FcLXqVl1fVgXjuJ6qrw64i619mz8QfH+rRDe35ykvcODLovfGzK1oKGSpBsCx8+xrLdV
         AkhT0bYEqcBddWvmI5L2ur9ZG5P0gUVdm4zVHX1qzgSFUkTdeYGgHSAFIt1kqa+0Kvzg
         azb31mRf3HGw4rRJ9NH3B4lvvW13GNR1ow351B8vr2k8M15k8VUBEIXgdh89Q3Ha8pqX
         eyboGEBK4ma4RV4rjrZaVoICBcFdmwvT7pQj0ebSz2++TziyYQYGnK4d4r8L5EZZD+0P
         d8LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765529804; x=1766134604;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=z0OD6Tul6N7Ac9c9vQK1/GWaIUr26ez2juaXAYXKN8s=;
        b=QWxD3WJLcTERDH4dPDp6zbptpYFig19S6JDoVghLmZ3GcPTXP0Qw1xT1CPRuyrxjBJ
         3t0zqQBbT3bNMP+W9SgXWjPoz0oIUZfkvuQANt9wi8XsDouwqboTY8s3cClPM6AeMlFd
         +Ad9SNSSjvjYtMVW276ympFa5nssaZs0i7GfRj+9mPvIld3TqOJ43L24bhBqsksMATRI
         Xal4yeS5Wjo3ENAKm+OO3dUTgLTP/jCp5+0bGlVgn64qKUj2v5kehDVHby6Q33SMaT26
         9rQoMzEtfQBaBwBWMzDM8v4kBJNsrKYYZwCUUowDalXnvy24veHcIZx2JemSWTTHdToU
         bjEQ==
X-Forwarded-Encrypted: i=1; AJvYcCXHmROGEOx+lWestM1D8xRqT2OdnL+w8WOcO7wl8aEMC17GG7sObZm0i5nNYc8gI87qS4wBqgm8khLS@vger.kernel.org
X-Gm-Message-State: AOJu0YysN5RfZzTptDTo191P7MqhrJoS9duAKX0168M+Yz15dFMFfIKz
	18vVuFpikBeopJbIYjzXdr6UgSXk9nNJT0XVWYaxhgKIm7CV9LEEtJv5
X-Gm-Gg: AY/fxX6DN8sLFvqrFUJnExnWEV2dREc4vAH+3P+WC0//Q+d3qjwa9QBXlFP5nirh9yb
	So0fAzqs0OVpuWE4gyPpq8unQAHZ3rYgDEvQWlqDCCIcL1goBBkj381h3MaPDPdOzTgHsCG5hCj
	O8aMorGNscb4NBhQJR1QNNQdAIu/uPHGkFNmwLKdqzztxaNRc+FIgKyAIqH7DXzt4TMDDJZlxy1
	mBihf/Gj5v2N/Q1JBkhDAlHJ9CYBLTSlpysxvJSJVSjtADdfGZMpwbePXejjK0ZpgNGsVL6ncKA
	+Xbi72gy13GQLtLMf5RKm5TPLSXrqbqi7/+WSONWEeTLN6JeOqPBlot0Xx7zJt2DrwBF+ghGPYp
	bwLwK91PIhacy9FJyL9aJyLDhKh3M6YI4GXaSw6hKNl7oWOCQsTqRAJfRMq8xYp3R4DGrhuVDFe
	47/2v242CRDX+j5TCz51vQg7VrHKcgHE6+q8UygOUj6+RgoTwhqsiUja9FSg==
X-Google-Smtp-Source: AGHT+IFmXYiSLQj87nLeQmFDWekCNP9ctv2fCyzAcsDytW0W06jV7mNDkwob74x/eZBohgcebOgFNQ==
X-Received: by 2002:a05:6000:2411:b0:42f:8816:c01b with SMTP id ffacd0b85a97d-42fb48e773dmr1244823f8f.63.1765529803714;
        Fri, 12 Dec 2025 00:56:43 -0800 (PST)
Received: from ipedrosa-thinkpadx1carbongen12.rmtes.csb ([89.7.8.79])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42fa8a09fbesm10501696f8f.0.2025.12.12.00.56.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Dec 2025 00:56:43 -0800 (PST)
From: Iker Pedrosa <ikerpedrosam@gmail.com>
Date: Fri, 12 Dec 2025 09:56:08 +0100
Subject: [PATCH v6 1/3] dt-bindings: display: sitronix,st7920: Add DT
 schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251212-st7920-v6-1-4d3067528072@gmail.com>
References: <20251212-st7920-v6-0-4d3067528072@gmail.com>
In-Reply-To: <20251212-st7920-v6-0-4d3067528072@gmail.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Javier Martinez Canillas <javierm@redhat.com>, 
 Iker Pedrosa <ikerpedrosam@gmail.com>
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2

Add binding for Sitronix ST7920 display.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Iker Pedrosa <ikerpedrosam@gmail.com>
---
 .../bindings/display/sitronix,st7920.yaml          | 58 ++++++++++++++++++++++
 1 file changed, 58 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/sitronix,st7920.yaml b/Documentation/devicetree/bindings/display/sitronix,st7920.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..c4f006fc41e1f472939725bd82b86a649f9b3f56
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/sitronix,st7920.yaml
@@ -0,0 +1,58 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/sitronix,st7920.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Sitronix ST7920 LCD Display Controllers
+
+maintainers:
+  - Iker Pedrosa <ikerpedrosam@gmail.com>
+
+description:
+  The Sitronix ST7920 is a controller for monochrome dot-matrix graphical LCDs,
+  most commonly used for 128x64 pixel displays.
+
+properties:
+  compatible:
+    const: sitronix,st7920
+
+  reg:
+    maxItems: 1
+
+  vdd-supply:
+    description: Regulator that provides 5V Vdd power supply
+
+  reset-gpios:
+    maxItems: 1
+
+  spi-max-frequency:
+    maximum: 600000
+
+required:
+  - compatible
+  - reg
+  - spi-max-frequency
+
+allOf:
+  - $ref: /schemas/spi/spi-peripheral-props.yaml#
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    spi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        display@0 {
+            compatible = "sitronix,st7920";
+            reg = <0>;
+            vdd-supply = <&reg_5v>;
+            reset-gpios = <&gpio 25 GPIO_ACTIVE_LOW>;
+            spi-max-frequency = <600000>;
+            spi-cs-high;
+        };
+    };

-- 
2.52.0


