Return-Path: <devicetree+bounces-6816-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 03AB07BCF2F
	for <lists+devicetree@lfdr.de>; Sun,  8 Oct 2023 17:49:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 357511C20445
	for <lists+devicetree@lfdr.de>; Sun,  8 Oct 2023 15:49:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A03611712;
	Sun,  8 Oct 2023 15:49:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tweaklogic.com header.i=@tweaklogic.com header.b="K6A4z8ac"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A14D849C
	for <devicetree@vger.kernel.org>; Sun,  8 Oct 2023 15:49:31 +0000 (UTC)
Received: from mail-oa1-x29.google.com (mail-oa1-x29.google.com [IPv6:2001:4860:4864:20::29])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 608BEF0
	for <devicetree@vger.kernel.org>; Sun,  8 Oct 2023 08:49:29 -0700 (PDT)
Received: by mail-oa1-x29.google.com with SMTP id 586e51a60fabf-1dd8304b980so2621299fac.2
        for <devicetree@vger.kernel.org>; Sun, 08 Oct 2023 08:49:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tweaklogic.com; s=google; t=1696780168; x=1697384968; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iNFoZA1zZW25lllOuroNi5vtVqqnAR6Pi3h82umCIA0=;
        b=K6A4z8acZrpTvMv+zgaMPMtkTpBQM9Rm36Sc6Q4X/2rgtkJ7QHbOMDPjs1dTYLWc/r
         6EuyDKs7c/QMHb+OEdxnLkYfuUbXihSqnhWq4RDA7zR3Oa+RW5CGr3kWkG+yyqvHi4gu
         ElG+NUzEEOPaYpcCHrZIhaPp8CEtHfuqgh7J+PJMQG4EBx16c81DrGZ8ho/QtjZyCThe
         jEodg4SkgP59Bgi5jzcsdETpvHW1KJnab40q4OzeOegosGRSCjmMUYoQ/CfoJQTXtBq+
         5yf8JbPWqkt2QJmjXDn21JkIWVBmEuk1+Y1UXdzs195SeXxhRFm8UAEMpWut6U7r5FjW
         AYbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696780168; x=1697384968;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iNFoZA1zZW25lllOuroNi5vtVqqnAR6Pi3h82umCIA0=;
        b=BvOZ8Qt/eeX43P1oAx1IN0NeSH1a70QGpt+2hk1uR4J1/eQ5YfA1MN4jEGlBjEQLNj
         a6NEqzIAjR7iBqNcOa6h0P4enf9BVON5xda5DM9pNog536m+5b5acHKeXLFtTrUVNRjl
         LP43J5/JXLHZNXsNkOJ85mnYqQayXhnxGPI4KqdIUASM6AY26SRUXJOzh+tHNoZ3GTGr
         95IlTGBuNjDF6Lmh8Ey1Cs5YjjBUQQ2OoykgTtn2Q85RAtCsiImM7HKBFWkWi4drA4LJ
         eD5QlwQVoy1ZZeWsfx5rzPpcKfEDYJdiFlP5f1R6Lc3y8oFa7lQ10zACUoVGFAlnN9VK
         LZlQ==
X-Gm-Message-State: AOJu0Yw/LFBij5Wa7H+2Ld4QcaXo6PGiaf1ReT2QsKgdgBXgDcnWJicx
	ee/TJIe7SFQYqcxpC3N7IkmyOg==
X-Google-Smtp-Source: AGHT+IFQLOBGkaHMmZgK6g6hooHkbLkh4BWJb0cto5MVI65HbfqcrKyNxGXFRUlDTYP88drtI+AZHg==
X-Received: by 2002:a05:6870:58e:b0:1bf:e1e9:a320 with SMTP id m14-20020a056870058e00b001bfe1e9a320mr16195606oap.13.1696780168680;
        Sun, 08 Oct 2023 08:49:28 -0700 (PDT)
Received: from localhost.localdomain (2403-580d-82f4-0-65d1-409f-dd8-4287.ip6.aussiebb.net. [2403:580d:82f4:0:65d1:409f:dd8:4287])
        by smtp.gmail.com with ESMTPSA id n26-20020aa7905a000000b0068fc48fcaa8sm4723374pfo.155.2023.10.08.08.49.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Oct 2023 08:49:28 -0700 (PDT)
From: Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>
To: Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Matti Vaittinen <mazziesaccount@gmail.com>
Cc: Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Paul Gazzillo <paul@pgazz.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Stefan Windfeldt-Prytz <stefan.windfeldt-prytz@axis.com>
Subject: [PATCH 1/2] dt-bindings: iio: light: Avago APDS9306
Date: Mon,  9 Oct 2023 02:18:56 +1030
Message-Id: <20231008154857.24162-2-subhajit.ghosh@tweaklogic.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231008154857.24162-1-subhajit.ghosh@tweaklogic.com>
References: <20231008154857.24162-1-subhajit.ghosh@tweaklogic.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add devicetree bindings for Avago APDS9306 Ambient Light Sensor.

Signed-off-by: Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>
---
 .../bindings/iio/light/avago,apds9306.yaml    | 49 +++++++++++++++++++
 1 file changed, 49 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/iio/light/avago,apds9306.yaml

diff --git a/Documentation/devicetree/bindings/iio/light/avago,apds9306.yaml b/Documentation/devicetree/bindings/iio/light/avago,apds9306.yaml
new file mode 100644
index 000000000000..e8bb897782fc
--- /dev/null
+++ b/Documentation/devicetree/bindings/iio/light/avago,apds9306.yaml
@@ -0,0 +1,49 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/iio/light/avago,apds9306.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Avago APDS9306 Ambient Light Sensor
+
+maintainers:
+  - Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>
+
+description:
+  Datasheet at https://docs.broadcom.com/doc/AV02-4755EN
+
+properties:
+  compatible:
+    const: avago,apds9306
+
+  reg:
+    maxItems: 1
+
+  vin-supply:
+    description: Regulator supply to the sensor
+
+  interrupts:
+    maxItems: 1
+
+required:
+  - compatible
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
+        light-sensor@52 {
+            compatible = "avago,apds9306";
+            reg = <0x52>;
+            interrupt-parent = <&gpiof>;
+            interrupts = <6 IRQ_TYPE_LEVEL_LOW>;
+        };
+    };
+...
-- 
2.34.1


