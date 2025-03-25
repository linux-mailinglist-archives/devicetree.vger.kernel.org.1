Return-Path: <devicetree+bounces-160426-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ADDAA6EAFE
	for <lists+devicetree@lfdr.de>; Tue, 25 Mar 2025 09:03:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0DACF18919A2
	for <lists+devicetree@lfdr.de>; Tue, 25 Mar 2025 08:03:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68D68253F2A;
	Tue, 25 Mar 2025 08:02:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Sh/yOetQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66BE61A5BA6
	for <devicetree@vger.kernel.org>; Tue, 25 Mar 2025 08:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742889775; cv=none; b=Hi4dewH8dMhLBL9YlToSdmeiJ1qAr0JkIjQovh0H/V8yBZvo50zzAoP/KGoWgyU+ZP8cXs2nmvvKoChbcD0fU+LiuAJTeyHeFNQhny0drEwkE7cj+CWxg/SNMLYb3s8dRG9cSt23iHucpZEh0j0iXqayTWEOQRp6wbJnJ3B+xTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742889775; c=relaxed/simple;
	bh=Kyd5Vj5Wtgn7kWZUmlkSip+En4I9UUHkx0BnikIJZpI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ErJxt8LCfUZTlCqgjU9/lhLO+xipNgFnXR9u1EEblkFEt35zaH5neSpOFWvHxJHN11i/3Ug4CpqOd725npw/HY47cw+/OaMJsKvCC7Y5ldVb8S7HWJwU5j3YdI8rxBy0Jj9X4NPS50Q5+n6V/BRSid/mPT1rX2OmNZluNfZwy6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Sh/yOetQ; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-5ed1ac116e3so430198a12.3
        for <devicetree@vger.kernel.org>; Tue, 25 Mar 2025 01:02:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742889772; x=1743494572; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dExfc0LrUCiaYdxVn5B5O2p+BcM4AL59uS0XF6ohUVg=;
        b=Sh/yOetQx7qlE6xZ4IKElb55bK+IAdqaqOXkTk4T8ps6a1LUHbunvwJxpiL6nU7wKo
         OZ6ElVF1DuVoRrmzewl2K5dA8xUI1vE5dYL2nYC5VpL63d8DemfEUt5I6Alx2qgfdYN5
         ul+Ps42jrXGIpMB/98NAzaqjTpK5zm4ugJxafXVCVplFqFZZgS89IJRblUAoD3gq58v6
         6rpOlasXGgipT8b6SGme2tLcCdwtX7KEEA7MVqbC4LxILsd7Yem2dnpXtFkANzCwskwa
         25+JYJUsDWrCLyfqwVfhnbAI1pyfbkC6RNoPw6TYFLwJeggXkIs1UqhTWZMdpY6LfSzE
         KrGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742889772; x=1743494572;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dExfc0LrUCiaYdxVn5B5O2p+BcM4AL59uS0XF6ohUVg=;
        b=VCIgXXoAGJuXDw3Bz43P+q8jnE6nM4deGZ/AmlLpYS4j5qFrPUOrf2GvLV+hviefgw
         otaF6CFybutYpdG6Nl9il0tALIWGWzgjPCxMKSXacCRs9b/vP+ZrypoJWhGgyeV6eVUz
         23Al8UdI8pKvnDGL8zk1GtM0ZdA/C5N1BBerU5J4jKUemqzTm9T2DnSH0SZb5tMXA7dd
         /1rVhHUhhihXsS0EYoNpbak8QzD6Wt2Oy3/ko6VBb+FeeD4RinOm7r2tovW8PsCAKh3l
         gUzPSEiF8sTWkAfTOa0QdYE3NDh/HZZN3V7av0A+/JIiWOiNrd+afIWuliuCbR+4G1Z6
         4TfA==
X-Forwarded-Encrypted: i=1; AJvYcCV0M48hV2E6Op7JC4Hx5CHDqp55tSeixblBqO3WCLZAdqwdcDXe5O9g3WxMdbfRPJScgmo9eskvoqw3@vger.kernel.org
X-Gm-Message-State: AOJu0YzLEsQqrCaoZRZFzkzrCXzCoScKqMO/lha/qxG1ve3Zz5ACYGVF
	jk3xmtcq8R/sjNDDasCQY50kEhPHIax6/YMAzCbH5v66yVzpMXEUnQSqp1m/16RmOX6X+97lBAy
	tVcw=
X-Gm-Gg: ASbGncuziLXiV8XsT0ilvSK3DvBup/AMc7j+DAKykfDR3MSxur/p10JXPHwFW41pM6U
	nYnpfnSyWUp3sDq3tXLmZonh3VWRIbEBUyutifygp2N20z18FBOlNUnnBF4SpGGKLSwpbXyKRwt
	TBKR/Vc7NLideS/LZfwc1QhjuzGJz0PHp/8wYmNHyEVFjHqtnaf2FrQIxsuKAgyb9H8hh8suf+r
	Vh693D1fKJv2m8kWpGw8OmdsbNTZLilolikSmCqFI2UWx9/rckBGiGW6P6zzkVA6WvBNEgaXCgQ
	WTw3KQNZFaro7UBcIfu4rtfl35eIh0jQKpmMCyDTNUhj3IRIwJvsRqcyU0ntXRXyOwGTI8rc+B4
	vy7d7zGgxMaWz9O1RTIUhuHOFNzdt
X-Google-Smtp-Source: AGHT+IEqZqvkWsL1rJSlE/DLcPlmZaynYCxoREH4kRFmKv9BJrVDGJjfkKncZLOyDfxBKQoYgQpPWA==
X-Received: by 2002:a05:6402:4307:b0:5ec:cd7c:de55 with SMTP id 4fb4d7f45d1cf-5eccd7ce06dmr4085552a12.17.1742889771562;
        Tue, 25 Mar 2025 01:02:51 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5ebccfb004fsm7446785a12.40.2025.03.25.01.02.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Mar 2025 01:02:50 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Tue, 25 Mar 2025 08:02:26 +0000
Subject: [PATCH v5 3/6] dt-bindings: mfd: add max77759 binding
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250325-max77759-mfd-v5-3-69bd6f07a77b@linaro.org>
References: <20250325-max77759-mfd-v5-0-69bd6f07a77b@linaro.org>
In-Reply-To: <20250325-max77759-mfd-v5-0-69bd6f07a77b@linaro.org>
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
2.49.0.395.g12beb8f557-goog


