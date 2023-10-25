Return-Path: <devicetree+bounces-11848-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E6F8C7D6D8A
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 15:44:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9A6C8281A1B
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 13:44:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DEC92286B9;
	Wed, 25 Oct 2023 13:44:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="T2eNObRo"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0639826E08
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 13:44:38 +0000 (UTC)
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D87A913D;
	Wed, 25 Oct 2023 06:44:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1698241477; x=1729777477;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=a9ypiX+SDR4b3cxwKKOrAMbEE7xPUJwX0R6Z5CRRadY=;
  b=T2eNObRo8vfoS7KSn5/wGt/jNvR7t4TXJMNTahnUSjZNdKwFzDhTBGiv
   vKR2PgDwjygYX2AjdPHO+O/tj+KFeeMwo5OhWHANYmLhxKzghj5pvwzjB
   2586dacm0HIgDH5az/lpTnFW+6w3LYLipj2zRhUUELyu9yoq10hueqgQw
   y2n4DT/at58FHwnPtvvUPZho5V+iFaYx8Nl9cc7qJnPZuqgRsCnVtdcTB
   VJwUUsnmdTp66KwZUn69pk606kCawhdLaag/mgk2HMTB80X6EQ69tdTy9
   IhbvRpM+eENfxwv8Sh7jLm6h032cMOJ2rBLgNTm5vzy7cmd8c+l6BWJmy
   Q==;
X-CSE-ConnectionGUID: 0glr9WvsTTKB7/1tnc1ysA==
X-CSE-MsgGUID: dwCoq9ftRqC0sU3ss26Syw==
X-ThreatScanner-Verdict: Negative
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; 
   d="scan'208";a="241332153"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa5.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 25 Oct 2023 06:44:36 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 25 Oct 2023 06:44:20 -0700
Received: from marius-VM.mshome.net (10.10.85.11) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.2507.21 via Frontend
 Transport; Wed, 25 Oct 2023 06:44:18 -0700
From: <marius.cristea@microchip.com>
To: <jic23@kernel.org>, <lars@metafoo.de>, <robh+dt@kernel.org>
CC: <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
	<linux-iio@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <marius.cristea@microchip.com>
Subject: [PATCH v2 1/2] dt-bindings: iio: adc: adding dt-bindings for PAC193X
Date: Wed, 25 Oct 2023 16:44:03 +0300
Message-ID: <20231025134404.131485-2-marius.cristea@microchip.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231025134404.131485-1-marius.cristea@microchip.com>
References: <20231025134404.131485-1-marius.cristea@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

From: Marius Cristea <marius.cristea@microchip.com>

This is the device tree schema for iio driver for
Microchip PAC193X series of Power Monitors with Accumulator.

Signed-off-by: Marius Cristea <marius.cristea@microchip.com>
---
 .../bindings/iio/adc/microchip,pac1934.yaml   | 146 ++++++++++++++++++
 1 file changed, 146 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/iio/adc/microchip,pac1934.yaml

diff --git a/Documentation/devicetree/bindings/iio/adc/microchip,pac1934.yaml b/Documentation/devicetree/bindings/iio/adc/microchip,pac1934.yaml
new file mode 100644
index 000000000000..837053ed8a71
--- /dev/null
+++ b/Documentation/devicetree/bindings/iio/adc/microchip,pac1934.yaml
@@ -0,0 +1,146 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/iio/adc/microchip,pac1934.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Microchip PAC1934 Power Monitors with Accumulator
+
+maintainers:
+  - Marius Cristea <marius.cristea@microchip.com>
+
+description: |
+  Bindings for the Microchip family of Power Monitors with Accumulator.
+  The datasheet for PAC1931, PAC1932, PAC1933 and PAC1934 can be found here:
+    https://ww1.microchip.com/downloads/aemDocuments/documents/OTH/ProductDocuments/DataSheets/PAC1931-Family-Data-Sheet-DS20005850E.pdf
+
+properties:
+  compatible:
+    enum:
+      - microchip,pac1931
+      - microchip,pac1932
+      - microchip,pac1933
+      - microchip,pac1934
+
+  reg:
+    maxItems: 1
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 0
+
+  interrupts:
+    description: IRQ line of the ADC
+    maxItems: 1
+
+  drive-open-drain:
+    description: The IRQ signal is configured as open-drain.
+    type: boolean
+    maxItems: 1
+
+  microchip,slow-io:
+    type: boolean
+    description: |
+      A GPIO used to trigger a change is sampling rate (lowering the chip power consumption).
+      In default mode, if this pin is forced high, sampling rate is forced to eight
+      samples/second. When it is forced low, the sampling rate is 1024 samples/second unless
+      a different sample rate has been programmed.
+
+required:
+  - compatible
+  - reg
+  - "#address-cells"
+  - "#size-cells"
+
+patternProperties:
+  "^channel@[1-4]+$":
+    type: object
+    $ref: adc.yaml
+    description: Represents the external channels which are connected to the ADC.
+
+    properties:
+      reg:
+        description: |
+          The channel number.
+          It can have up to 4 channels, numbered from 1 to 4.
+        items:
+          - minimum: 1
+            maximum: 4
+
+      shunt-resistor-micro-ohms:
+        description: |
+          Value in micro Ohms of the shunt resistor connected between
+          the SENSE+ and SENSE- inputs, across which the current is measured. Value
+          is needed to compute the scaling of the measured current.
+
+      label:
+        $ref: /schemas/types.yaml#/definitions/string
+        description: Name of the monitored power rail.
+
+      bipolar:
+        description: Whether the channel is bi-directional.
+        type: boolean
+
+    required:
+      - reg
+      - shunt-resistor-micro-ohms
+
+    additionalProperties: false
+
+allOf:
+  - if:
+      required:
+        - interrupts
+    then:
+      required:
+        - drive-open-drain
+    else:
+      properties:
+        drive-open-drain: false
+
+additionalProperties: false
+
+examples:
+  - |
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        pac193x: pac193x@10 {
+            compatible = "microchip,pac1934";
+            reg = <0x10>;
+
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            channel@1 {
+                reg = <0x1>;
+                shunt-resistor-micro-ohms = <24900000>;
+                label = "CPU";
+            };
+
+            channel@2 {
+                reg = <0x2>;
+                shunt-resistor-micro-ohms = <49900000>;
+                label = "GPU";
+            };
+
+            channel@3 {
+                reg = <0x3>;
+                shunt-resistor-micro-ohms = <75000000>;
+                label = "MEM";
+                bipolar;
+            };
+
+            channel@4 {
+                reg = <0x4>;
+                shunt-resistor-micro-ohms = <100000000>;
+                label = "NET";
+                bipolar;
+            };
+        };
+    };
+
+...
-- 
2.34.1


