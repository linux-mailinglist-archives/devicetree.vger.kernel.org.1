Return-Path: <devicetree+bounces-3370-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 02B057AE92C
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 11:29:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 8A77FB20956
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 09:29:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D1C3134B2;
	Tue, 26 Sep 2023 09:29:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 419FC134A4
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 09:29:01 +0000 (UTC)
Received: from mx07-00178001.pphosted.com (mx08-00178001.pphosted.com [91.207.212.93])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D8EBF120;
	Tue, 26 Sep 2023 02:28:54 -0700 (PDT)
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 38Q6x9Cm001756;
	Tue, 26 Sep 2023 11:28:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding:content-type; s=
	selector1; bh=tU4y4rww+u+vWpGqbMDb1c4BTepYhbJ/N2yy4RTD7j8=; b=vY
	cocHuS+0kK/uHhyzDGnbCSzU7deJ9AAE5acP+Q2lDij71l+1TcBTWno+URTIleca
	DVPw1amFgUQr5oKAhxSTGuzCjCQmd0no+qi1sQcWO3Xk+vr2TfHbNw2buxg4QKl0
	EKkO7C7F7BVH3bp8Pig7LbkpC6gF0Lp+VBn3m5hQM11NnkcPGq+Yikp1piymSFkG
	BSj67wryss3TRfgtv749xpR8bAha9FB7XcO7MHdSoaSu+lrZUwISV3qBbHKuJwiO
	NioP15c7UMKd2WPM8c23IpuQZOfjh+s4Baj6Q6ytI5FlSTdX/vIUjesLWs9qtRp5
	VliNxSzA+5A9tffR9Deg==
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3t9pwd453p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 26 Sep 2023 11:28:47 +0200 (MEST)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 22219100059;
	Tue, 26 Sep 2023 11:28:47 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 1656222FA51;
	Tue, 26 Sep 2023 11:28:47 +0200 (CEST)
Received: from localhost (10.129.178.213) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Tue, 26 Sep
 2023 11:28:46 +0200
From: Alain Volmat <alain.volmat@foss.st.com>
To: Alain Volmat <alain.volmat@foss.st.com>,
        Mauro Carvalho Chehab
	<mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
CC: Andrey Skvortsov <andrej.skvortzov@gmail.com>,
        Rob Herring
	<robh@kernel.org>, <linux-media@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH 1/2] dt-bindings: media: i2c: add galaxycore,gc2145 dt-bindings
Date: Tue, 26 Sep 2023 11:28:19 +0200
Message-ID: <20230926092825.819229-2-alain.volmat@foss.st.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230926092825.819229-1-alain.volmat@foss.st.com>
References: <20230926092825.819229-1-alain.volmat@foss.st.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.129.178.213]
X-ClientProxiedBy: SHFCAS1NODE2.st.com (10.75.129.73) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-09-26_07,2023-09-25_01,2023-05-22_02
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Introduction of the Galaxy Core GC2145 XVGA CMOS camera sensor.

Signed-off-by: Alain Volmat <alain.volmat@foss.st.com>
---
 .../bindings/media/i2c/galaxycore,gc2145.yaml | 108 ++++++++++++++++++
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 2 files changed, 110 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/galaxycore,gc2145.yaml

diff --git a/Documentation/devicetree/bindings/media/i2c/galaxycore,gc2145.yaml b/Documentation/devicetree/bindings/media/i2c/galaxycore,gc2145.yaml
new file mode 100644
index 000000000000..e80b581498fc
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/i2c/galaxycore,gc2145.yaml
@@ -0,0 +1,108 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/i2c/galaxycore,gc2145.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Galaxy Core 1/5'' UXGA CMOS Image Sensor
+
+maintainers:
+  - Alain Volmat <alain.volmat@foss.st.com>
+
+description: |
+  The Galaxy Core GC2145 is a high quality 2 Mega CMOS image sensor, for mobile
+  phone camera applications and digital camera products. GC2145 incorporates a
+  1616V x 1232H active pixel array, on-chip 10-bit ADC, and image signal
+  processor. It is programmable through an I2C interface. Image data is sent
+  either through a parallel interface or through MIPI CSI-2.
+
+allOf:
+  - $ref: ../video-interface-devices.yaml#
+
+properties:
+  compatible:
+    const: galaxycore,gc2145
+
+  reg:
+    enum:
+      - 0x3c
+
+  clocks:
+    description: Reference to the xclk clock.
+    maxItems: 1
+
+  powerdown-gpios:
+    description: GPIO descriptor for the powerdown pin.
+    maxItems: 1
+
+  reset-gpios:
+    description: GPIO descriptor for the reset pin.
+    maxItems: 1
+
+  IOVDD-supply:
+    description: Power Supply for I/O circuits (1.7 - 3V).
+
+  AVDD-supply:
+    description: Power for analog circuit/sensor array (2.7 - 3V).
+
+  DVDD-supply:
+    description: Power for digital core (1.7 - 1.9V).
+
+  orientation: true
+
+  rotation: true
+
+  port:
+    $ref: /schemas/graph.yaml#/$defs/port-base
+
+    properties:
+      endpoint:
+        $ref: /schemas/media/video-interfaces.yaml#
+        unevaluatedProperties: false
+
+    required:
+      - endpoint
+
+    additionalProperties: false
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - powerdown-gpios
+  - reset-gpios
+  - IOVDD-supply
+  - AVDD-supply
+  - DVDD-supply
+  - port
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    i2c5 {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        gc2145@3c {
+            compatible = "galaxycore,gc2145";
+            reg = <0x3c>;
+            clocks = <&clk_ext_camera>;
+            IOVDD-supply = <&scmi_v3v3_sw>;
+            AVDD-supply = <&scmi_v3v3_sw>;
+            DVDD-supply = <&scmi_v3v3_sw>;
+            powerdown-gpios = <&mcp23017 3 (GPIO_ACTIVE_LOW | GPIO_PUSH_PULL)>;
+            reset-gpios = <&mcp23017 4 (GPIO_ACTIVE_LOW | GPIO_PUSH_PULL)>;
+
+            port {
+                endpoint {
+                    remote-endpoint = <&mipid02_0>;
+                    data-lanes = <1 2>;
+                };
+            };
+        };
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 573578db9509..d9df03bba5bb 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -494,6 +494,8 @@ patternProperties:
     description: Fujitsu Ltd.
   "^fxtec,.*":
     description: FX Technology Ltd.
+  "^galaxycore,.*":
+    description: Galaxy Core Inc.
   "^gardena,.*":
     description: GARDENA GmbH
   "^gateworks,.*":
-- 
2.25.1


