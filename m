Return-Path: <devicetree+bounces-12198-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E6BF7D84DB
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 16:35:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2304C2820BB
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 14:35:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9DD42DF68;
	Thu, 26 Oct 2023 14:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tweaklogic.com header.i=@tweaklogic.com header.b="W9Y5WaIc"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B9B928E17
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 14:35:52 +0000 (UTC)
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com [IPv6:2607:f8b0:4864:20::1036])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 048BD1AA
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 07:35:50 -0700 (PDT)
Received: by mail-pj1-x1036.google.com with SMTP id 98e67ed59e1d1-27d0a173e61so816152a91.0
        for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 07:35:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tweaklogic.com; s=google; t=1698330949; x=1698935749; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GADNeU8VMeN+ZUsjhqFuupJrDh+gDckp8FVMntouBr8=;
        b=W9Y5WaIcN4awD9r+6ORw9C5n5X3EVu+JK9PDLClR41b1f4msKxyTpfFe5/NNqamxO2
         ndfDbIAOk3WUOzR4nX9d+iiMsEVd7Lp98i0zMptSjMeXs/ZHA74gNfRjadan0Kg753zI
         Bf4k/MX8EL6blJE93xlhlwKt6svpIQwVHznuCOQS5Fbj/UVF8dZ2rBsCW6uX92Yi1W9V
         hTCYBDoXkssRTiRp/iU3CgF1UEIiDK8iQOYpbQ8E5XR/CogHGMAPfwTM2/AxptVQrCER
         6mHlFDQaWxLAsc8jExi78KKtm6LwRglwFenokUZ0KFP6vE2e7319X6aDIwng/7XeWzvg
         0DrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698330949; x=1698935749;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GADNeU8VMeN+ZUsjhqFuupJrDh+gDckp8FVMntouBr8=;
        b=mLt3DzbJ56Q+Y1bszdaTDr2o31ceJS5E713RWhyHOhOhk83EYhg8sKDlDHkR1IayPY
         juFuQhvRAX6JCV0b7VGBPus060FpVOa6vBROiSqxB1Ep6mlRCmAlzstyO5OHh0a4o8v0
         rWlBFaWJF1QYetxcix64swdDB7JqOQUY9XsmQtgTx3kas0oDoMktJXQ7GCsUSw+KQheO
         275Ndpk0+5nSSY++y4waX9jo9zCGZUCp7gVEjfeEwavT1MWUfDYkmtbZvzAuP9hlvgmq
         baVt59yiSCj21T5k3Muh83jrukPX7PUnNkgTCPJHsNbANyB+QU5K/gF9dQ++MDVdMP9n
         fyCA==
X-Gm-Message-State: AOJu0YzBofYC4G/aLdC8zFMW4Wn55leBRzLrL7ZIkVARjZR1hSn3/1Ae
	DuMQ4821wCD1963oN60SZC+eeA==
X-Google-Smtp-Source: AGHT+IHP5gsv0gW18Tmg8C3ceRMS/SpMC1HPwLXEy6DtWHIfi4mrXfn77tau1E4st7x7akwUSL2umA==
X-Received: by 2002:a17:90a:35c:b0:27f:fa4c:ebaf with SMTP id 28-20020a17090a035c00b0027ffa4cebafmr1423484pjf.14.1698330949399;
        Thu, 26 Oct 2023 07:35:49 -0700 (PDT)
Received: from localhost.localdomain (2403-580d-82f4-0-16bf-4026-a446-e128.ip6.aussiebb.net. [2403:580d:82f4:0:16bf:4026:a446:e128])
        by smtp.gmail.com with ESMTPSA id iq11-20020a17090afb4b00b00256b67208b1sm1727519pjb.56.2023.10.26.07.35.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Oct 2023 07:35:49 -0700 (PDT)
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
Subject: [PATCH v1 1/2] dt-bindings: iio: light: Avago APDS9306
Date: Fri, 27 Oct 2023 01:05:31 +1030
Message-Id: <20231026143532.39660-2-subhajit.ghosh@tweaklogic.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231026143532.39660-1-subhajit.ghosh@tweaklogic.com>
References: <20231026143532.39660-1-subhajit.ghosh@tweaklogic.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

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


