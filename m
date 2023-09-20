Return-Path: <devicetree+bounces-1916-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EB397A8F72
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 00:31:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C8A60281F40
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 22:31:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E51442C0D;
	Wed, 20 Sep 2023 22:24:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5F7042C02
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 22:24:02 +0000 (UTC)
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 09C641B0
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 15:23:53 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-50336768615so644775e87.0
        for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 15:23:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695248631; x=1695853431; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+hF1P02ld7wbeNQyU0l4vMbS0kxuoLz56i7vh22oekU=;
        b=pekvhvRm2nAeOEhRPpFYIyJ4uauLjaLnSl+6VyFguEG9LU73WAugob/Nwnjr9eU4mi
         Kb+4neR7ZSduQjneO+iCpmDeX+7R8kaunMq0B//SpeqkMHQ7FI/AQy9EKqY6KBZYR0Iy
         rYPsVFBUA/ncH2MGsDM2t1L1lb5G0CVhx8akiPOXD5qmZnlUA2y6lsBMVKLcNNte92Yl
         L55q+XCvFHVceM5GknuF3JuV40o34/wUqQAaK6LgrOfaH/7QeonQxNzf2WG3dChOWug6
         EX27V3H9ZdnG2KkL+Pw035cZZLufPf7f2xnIW65m3waky0JlVhxeXsgMakhyzvDslmes
         /5iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695248631; x=1695853431;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+hF1P02ld7wbeNQyU0l4vMbS0kxuoLz56i7vh22oekU=;
        b=V8t1MfGLLBZt0SobAkZA9mBeskpThtopgDm+hI1GxQwmW5t6ZAZZzedtutz1Rka+s5
         SgihaYDDuq1Xi2hOHPktc9me7vjV06KdWzBvcELZfteEVGFUgSX9Z7NGadJ+pfaJ2ya7
         3Xn3gZYbnvGlkhDyJzbpa4WD0urE5M4IAh1vLA2afMAStvgTbbXHjyonyWmtNyTJ9KmB
         IlFvEQoCQ03v7TQkZKdVbU9H4aX+6ladnUiqp1SHu4SLSXb4Ph1kzFJBGN6sJlti0u+u
         hTlyho5h4UKgZ1+by9guIbBmDhvDc/H8JfxNj/Lj2DCp3MLXh9mTVptkKirPiUoM7zBv
         5UkQ==
X-Gm-Message-State: AOJu0YxSOCKLfTyX+NvsNaXcwPt+nNeIkpdlKH7n/cJDLOZqkvb05tSg
	TwtH6Y1Btnu5/wIyY2MUc23cnNTYhhuE4qdchB0=
X-Google-Smtp-Source: AGHT+IEZJGrEPB6Ohe0IImVhtr4rOFsci1rM/dBFgJNHI1rqUiaIuxPUVtgJp9An4uh6Dlh1g2JO4w==
X-Received: by 2002:ac2:5e65:0:b0:503:555:4000 with SMTP id a5-20020ac25e65000000b0050305554000mr3150963lfr.25.1695248631051;
        Wed, 20 Sep 2023 15:23:51 -0700 (PDT)
Received: from [192.168.1.2] (c-05d8225c.014-348-6c756e10.bbcust.telenor.se. [92.34.216.5])
        by smtp.gmail.com with ESMTPSA id u14-20020ac2518e000000b004fe0fead9e2sm14557lfi.165.2023.09.20.15.23.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Sep 2023 15:23:50 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 21 Sep 2023 00:23:45 +0200
Subject: [PATCH 1/2] gpio: Rewrite IXP4xx GPIO bindings in schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230921-ixp4xx-gpio-clocks-v1-1-574942bf944a@linaro.org>
References: <20230921-ixp4xx-gpio-clocks-v1-0-574942bf944a@linaro.org>
In-Reply-To: <20230921-ixp4xx-gpio-clocks-v1-0-574942bf944a@linaro.org>
To: Linus Walleij <linusw@kernel.org>, Imre Kaloz <kaloz@openwrt.org>, 
 Krzysztof Halasa <khalasa@piap.pl>, Bartosz Golaszewski <brgl@bgdev.pl>, 
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-gpio@vger.kernel.org, 
 devicetree@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.12.3
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

This rewrites the IXP4xx GPIO bindings to use YAML schema,
and adds two new properties to enable fixed clock output on
pins 14 and 15.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 .../devicetree/bindings/gpio/intel,ixp4xx-gpio.txt | 38 ------------
 .../bindings/gpio/intel,ixp4xx-gpio.yaml           | 70 ++++++++++++++++++++++
 MAINTAINERS                                        |  2 +-
 3 files changed, 71 insertions(+), 39 deletions(-)

diff --git a/Documentation/devicetree/bindings/gpio/intel,ixp4xx-gpio.txt b/Documentation/devicetree/bindings/gpio/intel,ixp4xx-gpio.txt
deleted file mode 100644
index 8dc41ed99685..000000000000
--- a/Documentation/devicetree/bindings/gpio/intel,ixp4xx-gpio.txt
+++ /dev/null
@@ -1,38 +0,0 @@
-Intel IXP4xx XScale Networking Processors GPIO
-
-This GPIO controller is found in the Intel IXP4xx processors.
-It supports 16 GPIO lines.
-
-The interrupt portions of the GPIO controller is hierarchical:
-the synchronous edge detector is part of the GPIO block, but the
-actual enabling/disabling of the interrupt line is done in the
-main IXP4xx interrupt controller which has a 1:1 mapping for
-the first 12 GPIO lines to 12 system interrupts.
-
-The remaining 4 GPIO lines can not be used for receiving
-interrupts.
-
-The interrupt parent of this GPIO controller must be the
-IXP4xx interrupt controller.
-
-Required properties:
-
-- compatible : Should be
-  "intel,ixp4xx-gpio"
-- reg : Should contain registers location and length
-- gpio-controller : marks this as a GPIO controller
-- #gpio-cells : Should be 2, see gpio/gpio.txt
-- interrupt-controller : marks this as an interrupt controller
-- #interrupt-cells : a standard two-cell interrupt, see
-  interrupt-controller/interrupts.txt
-
-Example:
-
-gpio0: gpio@c8004000 {
-	compatible = "intel,ixp4xx-gpio";
-	reg = <0xc8004000 0x1000>;
-	gpio-controller;
-	#gpio-cells = <2>;
-	interrupt-controller;
-	#interrupt-cells = <2>;
-};
diff --git a/Documentation/devicetree/bindings/gpio/intel,ixp4xx-gpio.yaml b/Documentation/devicetree/bindings/gpio/intel,ixp4xx-gpio.yaml
new file mode 100644
index 000000000000..bb1fc393bd8c
--- /dev/null
+++ b/Documentation/devicetree/bindings/gpio/intel,ixp4xx-gpio.yaml
@@ -0,0 +1,70 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/gpio/intel,ixp4xx-gpio.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Intel IXP4xx XScale Networking Processors GPIO Controller
+
+description: This GPIO controller is found in the Intel IXP4xx
+  processors. It supports 16 GPIO lines.
+  The interrupt portions of the GPIO controller is hierarchical.
+  The synchronous edge detector is part of the GPIO block, but the
+  actual enabling/disabling of the interrupt line is done in the
+  main IXP4xx interrupt controller which has a 1-to-1 mapping for
+  the first 12 GPIO lines to 12 system interrupts.
+  The remaining 4 GPIO lines can not be used for receiving
+  interrupts.
+  The interrupt parent of this GPIO controller must be the
+  IXP4xx interrupt controller.
+  GPIO 14 and 15 can be used as clock outputs rather than GPIO,
+  and this can be enabled by a special flag.
+
+maintainers:
+  - Linus Walleij <linus.walleij@linaro.org>
+
+properties:
+  compatible:
+    const: intel,ixp4xx-gpio
+
+  reg:
+    maxItems: 1
+
+  gpio-controller: true
+  "#gpio-cells":
+    const: 2
+
+  interrupt-controller: true
+  "#interrupt-cells":
+    const: 2
+
+  intel,ixp4xx-gpio14-clkout:
+    description: If defined, enables clock output on GPIO 14
+      instead of GPIO.
+    type: boolean
+
+  intel,ixp4xx-gpio15-clkout:
+    description: If defined, enables clock output on GPIO 15
+      instead of GPIO.
+    type: boolean
+
+required:
+  - compatible
+  - reg
+  - "#gpio-cells"
+  - interrupt-controller
+  - "#interrupt-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    gpio@c8004000 {
+        compatible = "intel,ixp4xx-gpio";
+        reg = <0xc8004000 0x1000>;
+        gpio-controller;
+        #gpio-cells = <2>;
+        interrupt-controller;
+        #interrupt-cells = <2>;
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index 90f13281d297..4e216887eb76 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2215,7 +2215,7 @@ M:	Krzysztof Halasa <khalasa@piap.pl>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 S:	Maintained
 F:	Documentation/devicetree/bindings/arm/intel-ixp4xx.yaml
-F:	Documentation/devicetree/bindings/gpio/intel,ixp4xx-gpio.txt
+F:	Documentation/devicetree/bindings/gpio/intel,ixp4xx-gpio.yaml
 F:	Documentation/devicetree/bindings/interrupt-controller/intel,ixp4xx-interrupt.yaml
 F:	Documentation/devicetree/bindings/memory-controllers/intel,ixp4xx-expansion*
 F:	Documentation/devicetree/bindings/timer/intel,ixp4xx-timer.yaml

-- 
2.41.0


