Return-Path: <devicetree+bounces-2316-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 708C17AA8BE
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 08:08:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id E30EB282EDE
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 06:08:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 919AB154A7;
	Fri, 22 Sep 2023 06:08:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 822D11548A
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 06:08:05 +0000 (UTC)
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0F2111A2
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 23:08:03 -0700 (PDT)
Received: by mail-lj1-x22a.google.com with SMTP id 38308e7fff4ca-2bb9a063f26so27360201fa.2
        for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 23:08:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695362881; x=1695967681; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+/S5F/94lzE+JzXRkckvi7oOP9RR2RmQ+CAb+mf1D9Y=;
        b=gEv9gZKGOqMDxliZreFetzCoAe7ewePqsldWF2XoGUEBuKHUgLjY788ekFCbgjCWGm
         zHv5qCfnl7cBD2eIJmYMuu3Q/+0J+KNnGB5QQUCJgs+hx8E1ign+ikGCCRnfXs63M9Nv
         bIr8BP3z0iDKRFu6E3JHh/osFbGvSJg0ohFJmC1akbwSHVmdy5kMNGH6dhUzOkM6f82I
         LjdbUXUOXY5wZj8uslqOPy/Dv+KTfeZUwwJpQ2AaL5gK7LKANvTrnTlwGpt26kiY8PYh
         mrezOgsFLqCbQP5PkP4x6YViJa0Tf80QfjPeI8roQ6nYJS/vlnhKYC+yLPQ5sD3yT2JP
         Slcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695362881; x=1695967681;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+/S5F/94lzE+JzXRkckvi7oOP9RR2RmQ+CAb+mf1D9Y=;
        b=rC5FuDwCMv9fQOYiigmQa1HKPc1CMIzgsK4TgT1aObXvve7awSbflDqfBEx9UsK8bY
         2W2HgSJ3w23YNtI8TL2iEWOs1KJLLOW3ELEfhzW46elbx+l6HaH1sV1lTFCiKkMxDmm9
         FWPupjJ17HcHRKlO5YaJPvkIoo+D6z+NUrMGYpnbVq5meQvg2H3TfiwAAuIZMQX9JdOa
         AmqGbDxQaLYvLxtVuOrGNFInQpJLg2nd21RszRjY+ol6gPL8OC7BkuVQUwqVyLD8VPSi
         ZnBJyPV+DcGZpyD6d7UDC/2PY9+72p99bUaNWegCN+9taVFsC3yfz4yjwfznaOejd0Jr
         AbPw==
X-Gm-Message-State: AOJu0YxKTkxHZuv/PkcYqoBo/n0HUn5GbKqP6yQYHu+hbl/WzM0UwxD1
	7GyLLbmM2lRx3Pi5ciW0DGl7oQ==
X-Google-Smtp-Source: AGHT+IHBp89OIbC4TGiKcIUQi24CkXikre13ErfJbelFpRJ1wSI42Wf8MoUBJiXAd/vbx7JP0ZYcRQ==
X-Received: by 2002:a2e:8941:0:b0:2c0:7d6:570a with SMTP id b1-20020a2e8941000000b002c007d6570amr6912060ljk.33.1695362881301;
        Thu, 21 Sep 2023 23:08:01 -0700 (PDT)
Received: from [192.168.1.2] (c-05d8225c.014-348-6c756e10.bbcust.telenor.se. [92.34.216.5])
        by smtp.gmail.com with ESMTPSA id w22-20020a05651c103600b002b9f4841913sm754329ljm.1.2023.09.21.23.08.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Sep 2023 23:08:00 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 22 Sep 2023 08:07:56 +0200
Subject: [PATCH v2 1/2] gpio: Rewrite IXP4xx GPIO bindings in schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230922-ixp4xx-gpio-clocks-v2-1-0215ee10976d@linaro.org>
References: <20230922-ixp4xx-gpio-clocks-v2-0-0215ee10976d@linaro.org>
In-Reply-To: <20230922-ixp4xx-gpio-clocks-v2-0-0215ee10976d@linaro.org>
To: Linus Walleij <linusw@kernel.org>, Imre Kaloz <kaloz@openwrt.org>, 
 Krzysztof Halasa <khalasa@piap.pl>, Bartosz Golaszewski <brgl@bgdev.pl>, 
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-gpio@vger.kernel.org, 
 devicetree@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>, 
 Rob Herring <robh@kernel.org>
X-Mailer: b4 0.12.3
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

This rewrites the IXP4xx GPIO bindings to use YAML schema,
and adds two new properties to enable fixed clock output on
pins 14 and 15.

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 .../devicetree/bindings/gpio/intel,ixp4xx-gpio.txt | 38 -----------
 .../bindings/gpio/intel,ixp4xx-gpio.yaml           | 73 ++++++++++++++++++++++
 MAINTAINERS                                        |  2 +-
 3 files changed, 74 insertions(+), 39 deletions(-)

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
index 000000000000..bfcb1f364c3a
--- /dev/null
+++ b/Documentation/devicetree/bindings/gpio/intel,ixp4xx-gpio.yaml
@@ -0,0 +1,73 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/gpio/intel,ixp4xx-gpio.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Intel IXP4xx XScale Networking Processors GPIO Controller
+
+description: |
+  This GPIO controller is found in the Intel IXP4xx
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
+
+  "#gpio-cells":
+    const: 2
+
+  interrupt-controller: true
+
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


