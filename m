Return-Path: <devicetree+bounces-2097-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E03307A99F0
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 20:34:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8DCD6282BCE
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 18:34:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DC49134BF;
	Thu, 21 Sep 2023 17:31:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10FF7134A9
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 17:31:16 +0000 (UTC)
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8360C5AE19
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 10:29:26 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-50336768615so2236428e87.0
        for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 10:29:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1695317356; x=1695922156; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SZXK6IdVBTSXcGTIHRUU/WhDyCqjH/rftizzn5sbxAE=;
        b=lN1aichdVaLMuz94tfSaI2jtHprIQPx+BAihb0V+9ZaHJPLX60PKBGpjd3ewj8CYrK
         gI/biScY5Ru0spzZPdRiGdztaC8tXQ4S483il5wo54gvAOC8uqhIKziDTCL33XayMlro
         J0TjcE+ODwE3tgt6qau7x6Vfii5YZ6H5J/uU5sW+KrZATz93CTPLpPMPOvWuC4WjePQD
         pFztsLqYvUJnh1pDFFdbVrio5zSv9xHd9JwKV9r4maIixr/PNX8GyJtpr4+lS5dXjYZR
         4RrUHCLje3vABtT2PP0z/NJ7Upx6Uez4Ye90+pd4z/WgYhZNA3IVV6f7VcWtHscdp1Zq
         KdQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695317356; x=1695922156;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SZXK6IdVBTSXcGTIHRUU/WhDyCqjH/rftizzn5sbxAE=;
        b=BcpBMt7t8EUg/jomBZvmtb9soWlzdzcYhYmAyAbuFZQQysdLFQZ27SpOBG4zI49aXy
         atVSN3WfQX3vQOZFTvwcwLzDo4y8mqJgh+ePkzZXI151NGtKYxtmRRPh9zgXb2oeeYju
         KAmw0gN8CMEjUAZvtQlralzVIC7wCnPR5bj9RKn4aquhnDk/A3uB6MoJkigCtCh3x9WN
         jkhcxmx1DRj3a9kH62CbciiSLX4jwYWx3Tj8zOhOQ6Fnr6zfBQFsILMcTTmK78Wu8Jll
         QEhB2vc0cq+hsplNIpg3zdvQ72u6f8Mr1dymsV0M1ZLTt1PmZORmuVpi9O0xqnZoufHq
         aqNA==
X-Gm-Message-State: AOJu0YxqDCjdxzjRG3tSJx4ECaeWw9YY87QAUxS6I1P9Hm7ykMBqHQm+
	4fAxoo0grqUb5ENFVc8OBlLKZ9G6rxgspJXQ1e99YQhK
X-Google-Smtp-Source: AGHT+IFEoId9dhUAMXkJBPEIyyf6kDoS3FhAfCiTp3N7TsdUJvie1QeO4TIHK8ErhC7KtOLF/MPK6w==
X-Received: by 2002:a5d:4292:0:b0:31f:f753:5897 with SMTP id k18-20020a5d4292000000b0031ff7535897mr4864012wrq.59.1695306150891;
        Thu, 21 Sep 2023 07:22:30 -0700 (PDT)
Received: from localhost.localdomain (abordeaux-655-1-129-86.w90-5.abo.wanadoo.fr. [90.5.10.86])
        by smtp.gmail.com with ESMTPSA id n11-20020a5d4c4b000000b0031fbbe347ebsm1901426wrt.22.2023.09.21.07.22.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Sep 2023 07:22:30 -0700 (PDT)
From: David Lechner <dlechner@baylibre.com>
To: linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-staging@lists.linux.dev
Cc: linux-kernel@vger.kernel.org,
	Jonathan Cameron <jic23@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	=?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>,
	Axel Haslam <ahaslam@baylibre.com>,
	Philip Molloy <pmolloy@baylibre.com>,
	David Lechner <dlechner@baylibre.com>,
	Apelete Seketeli <aseketeli@baylibre.com>
Subject: [v2 01/19] dt-bindings: iio: resolver: add devicetree bindings for ad2s1210
Date: Thu, 21 Sep 2023 09:19:27 -0500
Message-Id: <20230921141947.57784-2-dlechner@baylibre.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230921141947.57784-1-dlechner@baylibre.com>
References: <20230921141947.57784-1-dlechner@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

This adds new DeviceTree bindings for the Analog Devices, Inc. AD2S1210
resolver-to-digital converter.

Co-developed-by: Apelete Seketeli <aseketeli@baylibre.com>
Signed-off-by: Apelete Seketeli <aseketeli@baylibre.com>
Signed-off-by: David Lechner <dlechner@baylibre.com>
---

v2 changes:
* Add Co-developed-by:
* Remove extraneous quotes on strings
* Remove extraneous pipe on some multi-line descriptions

 .../bindings/iio/resolver/adi,ad2s1210.yaml   | 150 ++++++++++++++++++
 1 file changed, 150 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/iio/resolver/adi,ad2s1210.yaml

diff --git a/Documentation/devicetree/bindings/iio/resolver/adi,ad2s1210.yaml b/Documentation/devicetree/bindings/iio/resolver/adi,ad2s1210.yaml
new file mode 100644
index 000000000000..f55c9652cfb7
--- /dev/null
+++ b/Documentation/devicetree/bindings/iio/resolver/adi,ad2s1210.yaml
@@ -0,0 +1,150 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/iio/resolver/adi,ad2s1210.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Analog Devices AD2S1210 Resolver-to-Digital Converter
+
+maintainers:
+  - Michael Hennerich <michael.hennerich@analog.com>
+
+description: |
+  The AD2S1210 is a complete 10-bit to 16-bit resolution tracking
+  resolver-to-digital converter, integrating an on-board programmable
+  sinusoidal oscillator that provides sine wave excitation for
+  resolvers.
+
+  The AD2S1210 allows the user to read the angular position or the
+  angular velocity data directly from the parallel outputs or through
+  the serial interface.
+
+    A1  A0  Result
+     0   0  Normal mode - position output
+     0   1  Normal mode - velocity output
+     1   0  Reserved
+     1   1  Configuration mode
+
+  In normal mode, the resolution of the digital output is selected using
+  the RES0 and RES1 input pins. In configuration mode, the resolution is
+  selected by setting the RES0 and RES1 bits in the control register.
+
+  RES1  RES0  Resolution (Bits)
+     0     0  10
+     0     1  12
+     1     0  14
+     1     1  16
+
+  Note on SPI connections: The CS line on the AD2S1210 should hard-wired to
+  logic low and the WR/FSYNC line on the AD2S1210 should be connected to the
+  SPI CSn output of the SPI controller.
+
+  Datasheet:
+  https://www.analog.com/media/en/technical-documentation/data-sheets/ad2s1210.pdf
+
+properties:
+  compatible:
+    const: adi,ad2s1210
+
+  reg:
+    maxItems: 1
+
+  spi-max-frequency:
+    maximum: 25000000
+
+  spi-cpha: true
+
+  clocks:
+    maxItems: 1
+    description: External oscillator clock (CLKIN).
+
+  reset-gpios:
+    description:
+      GPIO connected to the /RESET pin. As the line needs to be low for the
+      reset to be active, it should be configured as GPIO_ACTIVE_LOW.
+    maxItems: 1
+
+  sample-gpios:
+    description:
+      GPIO connected to the /SAMPLE pin. As the line needs to be low to trigger
+      a sample, it should be configured as GPIO_ACTIVE_LOW.
+    maxItems: 1
+
+  mode-gpios:
+    description:
+      GPIO lines connected to the A0 and A1 pins. These pins select the data
+      transfer mode.
+    minItems: 2
+    maxItems: 2
+
+  resolution-gpios:
+    description:
+      GPIO lines connected to the RES0 and RES1 pins. These pins select the
+      resolution of the digital output. If omitted, it is assumed that the
+      RES0 and RES1 pins are hard-wired to match the assigned-resolution-bits
+      property.
+    minItems: 2
+    maxItems: 2
+
+  fault-gpios:
+    description:
+      GPIO lines connected to the LOT and DOS pins. These pins combined indicate
+      the type of fault present, if any. As these pins a pulled low to indicate
+      a fault condition, they should be configured as GPIO_ACTIVE_LOW.
+    minItems: 2
+    maxItems: 2
+
+  adi,fixed-mode:
+    description:
+      This is used to indicate the selected mode if A0 and A1 are hard-wired
+      instead of connected to GPIOS (i.e. mode-gpios is omitted).
+    $ref: /schemas/types.yaml#/definitions/string
+    enum: [config, velocity, position]
+
+  assigned-resolution-bits:
+    description:
+      Resolution of the digital output required by the application. This
+      determines the precision of the angle and/or the maximum speed that can
+      be measured. If resolution-gpios is omitted, it is assumed that RES0 and
+      RES1 are hard-wired to match this value.
+    enum: [10, 12, 14, 16]
+
+required:
+  - compatible
+  - reg
+  - spi-cpha
+  - clocks
+  - sample-gpios
+  - assigned-resolution-bits
+
+oneOf:
+  - required:
+      - mode-gpios
+  - required:
+      - adi,fixed-mode
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
+        resolver@0 {
+            compatible = "adi,ad2s1210";
+            reg = <0>;
+            spi-max-frequency = <20000000>;
+            spi-cpha;
+            clocks = <&ext_osc>;
+            sample-gpios = <&gpio0 90 GPIO_ACTIVE_LOW>;
+            mode-gpios = <&gpio0 86 0>, <&gpio0 87 0>;
+            resolution-gpios = <&gpio0 88 0>, <&gpio0 89 0>;
+            assigned-resolution-bits = <16>;
+        };
+    };
-- 
2.34.1


