Return-Path: <devicetree+bounces-160439-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BEB87A6EB80
	for <lists+devicetree@lfdr.de>; Tue, 25 Mar 2025 09:27:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 41B04166F88
	for <lists+devicetree@lfdr.de>; Tue, 25 Mar 2025 08:27:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9888F253F1C;
	Tue, 25 Mar 2025 08:27:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vIt14Cgu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7246B1A5B86
	for <devicetree@vger.kernel.org>; Tue, 25 Mar 2025 08:27:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742891231; cv=none; b=omzj0iRD/dDjRSqHkrzEbZRDhfMpR9cF3fwiHq8VCufgcU8AuqqudZ1HZmIf7QrIDYa+lnYdNXtw2whwXo5E9X77OMdYO7O4AqlCRmZzHePmvo2I5/rQYZmvGXFbYgDnObSXsTxEFvxDTcTTxsyyd9zS2VU/vOqwJp+nBnSRfak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742891231; c=relaxed/simple;
	bh=Kyd5Vj5Wtgn7kWZUmlkSip+En4I9UUHkx0BnikIJZpI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=KP/6newPCI9R7ke80JQ7j/v6uMCyD7wbdRZemz4WoF+d7lAGjCUjnm8pGai4JsYtXGBLFmdNyIhJKXyHGLjgs8s/c3xHgVY68oYDkKFf4DxwR105j9lXu2yUHLxUadXOEol8PXWRVM9YkEkstkAWTEL5BPuDMA62qdS14WAuICM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vIt14Cgu; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-5dccaaca646so9875034a12.0
        for <devicetree@vger.kernel.org>; Tue, 25 Mar 2025 01:27:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742891228; x=1743496028; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dExfc0LrUCiaYdxVn5B5O2p+BcM4AL59uS0XF6ohUVg=;
        b=vIt14CguVwXaMo0BS+urTiCwPpHwgRWgrFQstHNlQ7cN6ZM5hBTN2kIZvPCUFV0o2Q
         VQYNmVPMoO8Jd4iIZUGtLSdFA8Sx1vZvN/ySLMzPMI9/hvgIJO1QNctCnlV1jg+A128D
         i13Fyx0Uyf39+91haPeRFZj2Mkwj8gnqR+MVWCiNRhwW4DoiItwqTDyIj1cEEKQRj4n2
         b4KaQ1MP28k2Ls1OsfuQa3TmFBU/H8TbfEEPufis+si/rq07EYIW1EzhjGAWMRvWpbDT
         f9jQljEDAMEWkykHLod0BEt5X5yESrl/TunuavR05Uy46vIjstcDVdH+lgH8LxwE4DcL
         KY8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742891228; x=1743496028;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dExfc0LrUCiaYdxVn5B5O2p+BcM4AL59uS0XF6ohUVg=;
        b=ESpKLENG6n3zaV3QqjGlA8MKyI2U0R+4pJvo/KCc6el05tRoEPHBaSg85O2Wy93YEW
         amPj0QL/is7uKmHVaiRTxKyDL2QyoVCSnkW0agR+vX2EK3jmDmpksy6ACMFJsVcVYgib
         1fAB+yUtAjF+mkna4tgQunNjoAUZHhstgn/IWQhIjX+tcFzoqJ4blGswLRAKC2+HoXls
         qmxd0we8XMsc0+/wxBCi1Ok2qQKvcVz+/+faNO9NLPYqr+jGseKHoOJY+V/dti7uGyIt
         hMkfWojxK2n/uUArJ6txzIyvir2QES6NGDZUXoNugkr2x+0RqgRWZsTdkdsW/jIepDeP
         H9UQ==
X-Forwarded-Encrypted: i=1; AJvYcCV3aG1yLi/RR24hAMIblOa/m6QDmUbNtTqSe3ARe6FkCq+aS0rwbJpQn4A/8qifDoxh7hSHhu1ciml+@vger.kernel.org
X-Gm-Message-State: AOJu0YxNNLoOHW8QIM2zM1bEwmLXxeCWINeoLW364tbKJMy6klCfMQbr
	/B1zXZunmlmc/J4c/TqB+ZprdpZBz7a9Mo4RTyZWQ7bsrNyB10V7yB2fli24LJ4Jy4noI2tee+y
	4czk=
X-Gm-Gg: ASbGncunY/DPZBJUnw0dJqBA/5jRHZvd0fTIQ/x4ef2yE8RKBXvNwAQ5CVvFEaJegjJ
	8RF3HY79r0NcUg1+LPuKTpTt7X1NUFGrHe3P/7gqtvXgJfjvdIQ7gAMGhfoEYAbpLHHGy38QaBm
	j1beGiIRGk7TwrXwp4doPFWOD9oNE9mM7WswgjcAQA7ibVgChIN7NxPDVp/t6z4EUjusXnJXJA4
	7Q4CnljZphMLXQtmyg96INXeZlV4+HYt+5Lh5SwTNbscSscGTyPGca+8/gaDV21QiZNo8pqcpCR
	wNDXtP9l0l2xGBr8YRqhUh63aUSxMBQJwOfrTrDe5bvENtiz8girkB/fvTfxWzTFj87YqsijEog
	UBnfSGZwy1b3kvjLPncq4Nvd0RM3N5gF3RmxKHGo=
X-Google-Smtp-Source: AGHT+IETS1Hu/UkyFfdpYieJJqw0ebd5k4Id4I4sC+Mits7qzvZBXwhUg/V2cJOY/PNffhsh09xSpA==
X-Received: by 2002:a05:6402:510a:b0:5e0:4c25:1491 with SMTP id 4fb4d7f45d1cf-5eb99739ed4mr17627285a12.7.1742891227664;
        Tue, 25 Mar 2025 01:27:07 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5ebcce36d66sm7377366a12.0.2025.03.25.01.27.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Mar 2025 01:27:07 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Tue, 25 Mar 2025 08:27:04 +0000
Subject: [PATCH v6 3/6] dt-bindings: mfd: add max77759 binding
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250325-max77759-mfd-v6-3-c0870ca662ba@linaro.org>
References: <20250325-max77759-mfd-v6-0-c0870ca662ba@linaro.org>
In-Reply-To: <20250325-max77759-mfd-v6-0-c0870ca662ba@linaro.org>
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


