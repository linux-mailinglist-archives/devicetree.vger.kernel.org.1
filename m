Return-Path: <devicetree+bounces-156800-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D0E60A5D95C
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 10:26:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5AE3E3B5DF3
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 09:26:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 950E623BD1D;
	Wed, 12 Mar 2025 09:26:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ik4Jjyd3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D600423AE84
	for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 09:26:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741771579; cv=none; b=ucqvuDzqNDC9wk0e+ziJTCz3/kkZsmPr9BYRXJ8f4281TVkouq+/2GO54c5UAtxKCOGv5a8YeES7tS/MdARxkUSQPgewz86GGY9MKEeHIodnXYWKFSTwue/Qtcj/bmLIc48U9+bYoSQdkfQh6clqNH88/GXS94KRgtzBirt8MEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741771579; c=relaxed/simple;
	bh=kxHzYlD4Q7ouIup6NnoChAXZHHmMaS1kTRKj6jvl4Gw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ZqMum3lqwM4c9jbmBr8GRnTdYBtAgs8P3La5uA1BbXblE0xzXZSthTKqY3Ut8UlQj7s5rnSkiUNNB+FcCnwsQh7V+UbWB8WHiOn4rszE+RlzCqj0asoh9wB4q4gQ/XwkiLAY6CuNpsgALhwELcOwzdf5bhmGQi3eTax/bBzxe2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ik4Jjyd3; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-5e5deb6482cso1305048a12.1
        for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 02:26:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741771575; x=1742376375; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NpG4SN8+SswQB9WTTY/KhrQ2hSRzm3/LAyaIh8poviQ=;
        b=ik4Jjyd3MjaIjHdhdqlWNF2fUvp0KT4S0KQwZZvPGnT5c0RJVyr/C4Kd2UreJgIMYh
         xLf3inY88BnaUi787eBVohPRXDjwW4in8VEizqhDWXYb4oG1vie51WTeKZ7hyhpjcoDU
         RN440RU4FPIBLlP/pUWar4rwBBy2JepgaljiuFp2JWC3kvew7tuz3bNzycYVTertz+oj
         K2Sb8ySI0HzfAx2b8aZ8jYWwcQYtPxTSIw5Fj2iIJLzETg3/GjZVjKadwi21xgrLr6XG
         WBTp1jtA9Z/SXCxBAlnibr7F8NJqGB5E10bLBoQJAO6x1kunbnRvncVqpPd4linD/xyk
         DJlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741771575; x=1742376375;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NpG4SN8+SswQB9WTTY/KhrQ2hSRzm3/LAyaIh8poviQ=;
        b=wsBFShV2iq6IehIJD9LsDzzWsDhQ3pzBrUK9h9aSk4uGfCeuCN3dBYtz589R5Hp6G7
         bUcCkrio1YVX43k+GsdL4Lqmp19xtaUcd+KvHhwmjT3LNRvR6wXm/JFonAUjGOxrA3XJ
         pvmyfFECkHfD3+7gxNd78cycv0jONMOq84ebm5Iw7oSSlnZWsu+DYy1wGYkiVDMJ4NyN
         zmN2sSwNqELUEyMmgCrbrPNjR/Toz4Q6rplgoz/lEqonIJB9SOhq7PCRK5n2Jc87JxUh
         WDDur4x4AR5gmd3GdpZOCJNmc8ng6pwzBnDmX6TyszeP93OJwncUoUyb+nMoNTfZKZaG
         OmQw==
X-Forwarded-Encrypted: i=1; AJvYcCVjejykQOVuvgw1OzeuAFRCp1zjWKYoNxcgkdA4fl10t1EgCpF5aFGDWPPTKtEIhYIbMhRCWHvV7v5i@vger.kernel.org
X-Gm-Message-State: AOJu0YyVGpnUzjpDie5T1WAw7RDsD7m9ACUTM0UVW2fcRNxuA7FvnjMq
	lgbklP8TkQxY16gU0Dou10+MlXbFLP9YYxmX9DcpDL4in0c8hWZvuBE9XtdHP1s=
X-Gm-Gg: ASbGnctNHa3Fty1rUoYCt5jVw/EtPuoGU0rwI2wJFKCxsolO/T3kD9Lmgk9PBuyK0Bs
	8l77EwsMKoEJ+2aY5uPYekqdJmsNqlPzyYrahkFd418OJyGKi4YivwmALK1M7230qWNUNptiU0i
	JmMUSyn10xVFMRalmgDFkg8beCJcgHiYG6VBQM0fSHysn/Ymnbhs7ad8F0TqmvnB7a4J9YKS+4G
	FZPRK/V2k0fSN04IcntbSaGWB3Zf4FBBNPAHZ1eX6cSkD43cDIkQ7/9fusGJ1wh6sby9ALEaa+O
	QRqzr2dvRzNoqiCRgwlfjl+3S2bXo94xIwnFl2LIq5mCEfH3/5gwrnlBMjZEYNQIJBtVKS0WJ12
	v0qpIemoHsPlr7UhOkU1gFYskUlIyAZuSyW65sZs=
X-Google-Smtp-Source: AGHT+IGMTylQyff6vU9GdrAYd99Xs9o2ZI+8BDiTPyKAU8vPNdImCoElshfShEdRpTQwXFn9jHo+tg==
X-Received: by 2002:a17:906:628a:b0:abf:27ac:2cf8 with SMTP id a640c23a62f3a-ac2ba563d91mr826133366b.21.1741771575046;
        Wed, 12 Mar 2025 02:26:15 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac25777c748sm894535266b.2.2025.03.12.02.26.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Mar 2025 02:26:14 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Wed, 12 Mar 2025 09:26:01 +0000
Subject: [PATCH v4 3/6] dt-bindings: mfd: add max77759 binding
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250312-max77759-mfd-v4-3-b908d606c8cb@linaro.org>
References: <20250312-max77759-mfd-v4-0-b908d606c8cb@linaro.org>
In-Reply-To: <20250312-max77759-mfd-v4-0-b908d606c8cb@linaro.org>
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>, 
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, 
 Kees Cook <kees@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-gpio@vger.kernel.org, linux-hardening@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2

The Maxim MAX77759 is a companion PMIC for USB Type-C applications and
includes Battery Charger, Fuel Gauge, temperature sensors, USB Type-C
Port Controller (TCPC), NVMEM, and a GPIO expander.

This describes the top-level device.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
v3:
* drop gpio-controller and gpio-cells, GPIO is provided by the child
  (Rob)

v2:
* rename expected nvmem subdev nodename to 'nvmem-0'
  I'd have preferred just 'nvmem', but that matches nvmem-consumer.yaml
  and fails validation.

Note: MAINTAINERS doesn't need updating, the binding update for the
first leaf device (gpio) adds a wildcard matching all max77759 bindings
---
 .../devicetree/bindings/mfd/maxim,max77759.yaml    | 99 ++++++++++++++++++++++
 1 file changed, 99 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/maxim,max77759.yaml b/Documentation/devicetree/bindings/mfd/maxim,max77759.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..525de9ab3c2b7b431e48497330640857540625b1
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/maxim,max77759.yaml
@@ -0,0 +1,99 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mfd/maxim,max77759.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Maxim Integrated MAX77759 PMIC for USB Type-C applications
+
+maintainers:
+  - André Draszik <andre.draszik@linaro.org>
+
+description: |
+  This is a part of device tree bindings for the MAX77759 companion Power
+  Management IC for USB Type-C applications.
+
+  The MAX77759 includes Battery Charger, Fuel Gauge, temperature sensors, USB
+  Type-C Port Controller (TCPC), NVMEM, and a GPIO expander.
+
+properties:
+  compatible:
+    const: maxim,max77759
+
+  interrupts:
+    maxItems: 1
+
+  interrupt-controller: true
+
+  "#interrupt-cells":
+    const: 2
+
+  reg:
+    maxItems: 1
+
+  gpio:
+    $ref: /schemas/gpio/maxim,max77759-gpio.yaml
+
+  nvmem-0:
+    $ref: /schemas/nvmem/maxim,max77759-nvmem.yaml
+
+required:
+  - compatible
+  - interrupts
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        pmic@66 {
+            compatible = "maxim,max77759";
+            reg = <0x66>;
+            interrupts-extended = <&gpa8 3 IRQ_TYPE_LEVEL_LOW>;
+
+            interrupt-controller;
+            #interrupt-cells = <2>;
+
+            gpio {
+                compatible = "maxim,max77759-gpio";
+
+                gpio-controller;
+                #gpio-cells = <2>;
+
+                interrupt-controller;
+                #interrupt-cells = <2>;
+            };
+
+            nvmem-0 {
+                compatible = "maxim,max77759-nvmem";
+
+                nvmem-layout {
+                    compatible = "fixed-layout";
+                    #address-cells = <1>;
+                    #size-cells = <1>;
+
+                    reboot-mode@0 {
+                        reg = <0x0 0x4>;
+                    };
+
+                    boot-reason@4 {
+                        reg = <0x4 0x4>;
+                    };
+
+                    shutdown-user-flag@8 {
+                        reg = <0x8 0x1>;
+                    };
+
+                    rsoc@10 {
+                        reg = <0xa 0x2>;
+                    };
+                };
+            };
+        };
+    };

-- 
2.49.0.rc0.332.g42c0ae87b1-goog


