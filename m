Return-Path: <devicetree+bounces-12348-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BD8127D902C
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 09:46:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 76EF0280DE4
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 07:46:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E7A4CA47;
	Fri, 27 Oct 2023 07:46:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tweaklogic.com header.i=@tweaklogic.com header.b="Ft24V1OF"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC60FC2FE
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 07:46:03 +0000 (UTC)
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com [IPv6:2607:f8b0:4864:20::433])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 80AE7194
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 00:46:01 -0700 (PDT)
Received: by mail-pf1-x433.google.com with SMTP id d2e1a72fcca58-6b20a48522fso1761572b3a.1
        for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 00:46:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tweaklogic.com; s=google; t=1698392761; x=1698997561; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tZM7mEbym++2u+NU79QX4ZHMRGx0lVPkdpZQMaBrXSg=;
        b=Ft24V1OFnLpvslK6+YTzMQi/tdIlNytIjOEbhu8m4apjFGtJGd/ZnGAB8Ti4ztD1uf
         egm31OUUsLZ2rUyqVDPC4VSqZjyNfDP7F1/4b6aYhFlcIqs/IjnBpTgttmAfttyetH9f
         6VoRACoQDd6RZRaRtywcHfeS8obPbDtlBxT9NC+9Az2YgJySesM5+Ys9GFN83uEc/6d0
         YIoglZqf45+owgeJ+WyiZMSsXtJw3GWMfkVm4lv+tFjZK2JDer9UU/DKMIfmE4+wyv8n
         mSnxpILTyNNIexY0jDZtFB9/Yes1WHhOrrYVWWBLx4m40yiQYq2yRLBCT2QcRbl3IOAu
         RwjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698392761; x=1698997561;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tZM7mEbym++2u+NU79QX4ZHMRGx0lVPkdpZQMaBrXSg=;
        b=s6W/fmQ6yZU69dUHzY1KYrqYXIbBhSgR6CNUnh/xcF0nrTvHG1E7ZCbBFrm0eChmzq
         0WQE0Uch/MWRbHJi6GSKqLK0eb3SqMmvi+so2z+VaRVX8Th+dtB8+uJWJ5T7oi7HIkJs
         RcpsAeOZYtyGPuLxTc3ZZVNmZh0A7Fmp0uWoJrMwxq35XAndNMQm441V/1EOD3BIf+TA
         ozfpI/6J1ufy+lDyvSjwJZBiR2ED4qlzTUpCkaDlOc5B4XoqWiRICC8a7k87EAkK40DZ
         96AQ/XGtupiRzaQ1Cw7dYhY8bTOarxBmwxnGQzNxhP0wokVjh5aeeEDNCstKDUEvfWEz
         j8AA==
X-Gm-Message-State: AOJu0Yz4ulxcEYEnJJ+g+rwt7NG9yFZ4hv4cauZ3w/IiaTgY3v0wJdGC
	3n4WGUGGljpxEvJG/SyedUWW8Q==
X-Google-Smtp-Source: AGHT+IEIfDvnLnrrWUgUvOg/jUERDroViV38HLoZeYqt750GTS4ajzfl7eGgNONF2qRlvbQB6bBxjg==
X-Received: by 2002:a05:6a21:7906:b0:174:af85:91fc with SMTP id bg6-20020a056a21790600b00174af8591fcmr2034147pzc.48.1698392761014;
        Fri, 27 Oct 2023 00:46:01 -0700 (PDT)
Received: from localhost.localdomain (2403-580d-82f4-0-bfe6-93ca-47b7-e8ec.ip6.aussiebb.net. [2403:580d:82f4:0:bfe6:93ca:47b7:e8ec])
        by smtp.gmail.com with ESMTPSA id v12-20020a17090ac90c00b00277832fbf4esm684835pjt.16.2023.10.27.00.45.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Oct 2023 00:46:00 -0700 (PDT)
From: Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>
To: Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matti Vaittinen <mazziesaccount@gmail.com>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Paul Gazzillo <paul@pgazz.com>
Cc: Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>,
	Matt Ranostay <matt@ranostay.sg>,
	Stefan Windfeldt-Prytz <stefan.windfeldt-prytz@axis.com>,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/2] dt-bindings: iio: light: Avago APDS9306
Date: Fri, 27 Oct 2023 18:15:44 +1030
Message-Id: <20231027074545.6055-2-subhajit.ghosh@tweaklogic.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231027074545.6055-1-subhajit.ghosh@tweaklogic.com>
References: <20231027074545.6055-1-subhajit.ghosh@tweaklogic.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

v1 -> v2
- No change

v0 -> v1
- Squashing Avago (Broadcom) APDS9300 and APDS9960 schemas into one as
  they look similar
- Adding support for APDS9306 in the same schema file
- Adding mandatory interrupt property requirement for APDS9960 as per the
  driver's probe method which fails if interrupt bindings are not defined.
  Both APDS9300 and APDS9306 (this patch set) supports sensors with and
  without hardware interrupt bindings
- In the device tree example, replacing interrupt type number with macro
  from irq.h
- Updated the vin to vdd which is the same for all the three sensors
- Used proper "Datasheet:" tags

Signed-off-by: Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>
---
 .../bindings/iio/light/avago,apds9300.yaml    | 35 ++++++++++++---
 .../bindings/iio/light/avago,apds9960.yaml    | 44 -------------------
 2 files changed, 30 insertions(+), 49 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/iio/light/avago,apds9960.yaml

diff --git a/Documentation/devicetree/bindings/iio/light/avago,apds9300.yaml b/Documentation/devicetree/bindings/iio/light/avago,apds9300.yaml
index 206af44f2c43..7a24a97d0594 100644
--- a/Documentation/devicetree/bindings/iio/light/avago,apds9300.yaml
+++ b/Documentation/devicetree/bindings/iio/light/avago,apds9300.yaml
@@ -4,17 +4,26 @@
 $id: http://devicetree.org/schemas/iio/light/avago,apds9300.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Avago APDS9300 ambient light sensor
+title: Avago Gesture, RGB, ALS and Proximity sensors
 
 maintainers:
   - Jonathan Cameron <jic23@kernel.org>
+  - Matt Ranostay <matt@ranostay.sg>
+  - Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>
 
 description: |
-  Datasheet at https://www.avagotech.com/docs/AV02-1077EN
+  Avago (Broadcom) optical and proximity sensors with I2C interfaces.
+  Datasheet: https://docs.broadcom.com/doc/AV02-1077EN
+  Datasheet: https://docs.broadcom.com/doc/AV02-4191EN
+  Datasheet: https://docs.broadcom.com/doc/AV02-4755EN
 
 properties:
   compatible:
-    const: avago,apds9300
+    oneOf:
+      - enum:
+          - avago,apds9300
+          - avago,apds9306
+          - avago,apds9960
 
   reg:
     maxItems: 1
@@ -22,14 +31,30 @@ properties:
   interrupts:
     maxItems: 1
 
-additionalProperties: false
+  vdd-supply: true
 
 required:
   - compatible
   - reg
 
+allOf:
+  - $ref: ../common.yaml#
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - avago,apds9960
+    then:
+      required:
+        - interrupts
+
+additionalProperties: false
+
 examples:
   - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+
     i2c {
         #address-cells = <1>;
         #size-cells = <0>;
@@ -38,7 +63,7 @@ examples:
             compatible = "avago,apds9300";
             reg = <0x39>;
             interrupt-parent = <&gpio2>;
-            interrupts = <29 8>;
+            interrupts = <29 IRQ_TYPE_EDGE_FALLING>;
         };
     };
 ...
diff --git a/Documentation/devicetree/bindings/iio/light/avago,apds9960.yaml b/Documentation/devicetree/bindings/iio/light/avago,apds9960.yaml
deleted file mode 100644
index f06e0fda5629..000000000000
--- a/Documentation/devicetree/bindings/iio/light/avago,apds9960.yaml
+++ /dev/null
@@ -1,44 +0,0 @@
-# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
-%YAML 1.2
----
-$id: http://devicetree.org/schemas/iio/light/avago,apds9960.yaml#
-$schema: http://devicetree.org/meta-schemas/core.yaml#
-
-title: Avago APDS9960 gesture/RGB/ALS/proximity sensor
-
-maintainers:
-  - Matt Ranostay <matt.ranostay@konsulko.com>
-
-description: |
-  Datasheet at https://www.avagotech.com/docs/AV02-4191EN
-
-properties:
-  compatible:
-    const: avago,apds9960
-
-  reg:
-    maxItems: 1
-
-  interrupts:
-    maxItems: 1
-
-additionalProperties: false
-
-required:
-  - compatible
-  - reg
-
-examples:
-  - |
-    i2c {
-        #address-cells = <1>;
-        #size-cells = <0>;
-
-        light-sensor@39 {
-            compatible = "avago,apds9960";
-            reg = <0x39>;
-            interrupt-parent = <&gpio1>;
-            interrupts = <16 1>;
-        };
-    };
-...
-- 
2.34.1


