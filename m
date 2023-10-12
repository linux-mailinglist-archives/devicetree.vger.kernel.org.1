Return-Path: <devicetree+bounces-8198-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B52257C7165
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 17:27:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E64521C20A68
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 15:27:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2559273D5;
	Thu, 12 Oct 2023 15:27:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=hugovil.com header.i=@hugovil.com header.b="G3u0szbs"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8947D224CF
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 15:26:59 +0000 (UTC)
Received: from mail.hugovil.com (mail.hugovil.com [162.243.120.170])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D38D0E8;
	Thu, 12 Oct 2023 08:26:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=hugovil.com
	; s=x; h=Subject:Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Cc:To
	:From:subject:date:message-id:reply-to;
	bh=A4tcsRYv0zAR+IykEXFJLbmWdjR/S0UrKbdwgttyzoY=; b=G3u0szbsRjEx+Mk6e0l6H4z8GZ
	D5WQkbWCRIC/ZTViHUXZ//ez4L6jtw4nEJnxlRNk8xyC5fgBPSUvWGd2wODWo88GaNdvXFPxFLuWc
	1zve3NUjF1HuTcdQkaXz4nU94N+ZD6+6CmQgsuh1PI+YfkUxd3Js9UYDJJpi586XmMbk=;
Received: from modemcable168.174-80-70.mc.videotron.ca ([70.80.174.168]:41278 helo=pettiford.lan)
	by mail.hugovil.com with esmtpa (Exim 4.92)
	(envelope-from <hugo@hugovil.com>)
	id 1qqxaL-0003rP-GV; Thu, 12 Oct 2023 11:26:50 -0400
From: Hugo Villeneuve <hugo@hugovil.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Hugo Villeneuve <hvilleneuve@dimonoff.com>
Cc: hugo@hugovil.com,
	linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org,
	devicetree@vger.kernel.org
Date: Thu, 12 Oct 2023 11:26:47 -0400
Message-Id: <20231012152647.2607455-1-hugo@hugovil.com>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 70.80.174.168
X-SA-Exim-Mail-From: hugo@hugovil.com
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
Subject: [PATCH v2] dt-bindings: serial: max310x: convert to YAML
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on mail.hugovil.com)

From: Hugo Villeneuve <hvilleneuve@dimonoff.com>

Convert binding from text format to YAML.

Additions to original text binding:
  - add rs485 reference.

Signed-off-by: Hugo Villeneuve <hvilleneuve@dimonoff.com>

---
Changes for V2:
- Add serial prefix to log message title
- Move clock-name property after clocks
- Remove 'clock-frequency' property
- Move 'allOf' block after 'required'
- Remove examples 2 and 3

 .../bindings/serial/maxim,max310x.txt         | 48 ------------
 .../bindings/serial/maxim,max310x.yaml        | 74 +++++++++++++++++++
 2 files changed, 74 insertions(+), 48 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/serial/maxim,max310x.txt
 create mode 100644 Documentation/devicetree/bindings/serial/maxim,max310x.yaml

diff --git a/Documentation/devicetree/bindings/serial/maxim,max310x.txt b/Documentation/devicetree/bindings/serial/maxim,max310x.txt
deleted file mode 100644
index 79e10a05a96a..000000000000
--- a/Documentation/devicetree/bindings/serial/maxim,max310x.txt
+++ /dev/null
@@ -1,48 +0,0 @@
-* Maxim MAX310X advanced Universal Asynchronous Receiver-Transmitter (UART)
-
-Required properties:
-- compatible: Should be one of the following:
-  - "maxim,max3107" for Maxim MAX3107,
-  - "maxim,max3108" for Maxim MAX3108,
-  - "maxim,max3109" for Maxim MAX3109,
-  - "maxim,max14830" for Maxim MAX14830.
-- reg: SPI chip select number.
-- interrupts: Specifies the interrupt source of the parent interrupt
-  controller. The format of the interrupt specifier depends on the
-  parent interrupt controller.
-- clocks: phandle to the IC source clock.
-- clock-names: Should be "xtal" if clock is an external crystal or
-  "osc" if an external clock source is used.
-
-Optional properties:
-- gpio-controller: Marks the device node as a GPIO controller.
-- #gpio-cells: Should be two. The first cell is the GPIO number and
-  the second cell is used to specify the GPIO polarity:
-    0 = active high,
-    1 = active low.
-
-Example:
-
-/ {
-	clocks {
-		spi_uart_clk: osc_max14830 {
-			compatible = "fixed-clock";
-			#clock-cells = <0>;
-			clock-frequency = <3686400>;
-		};
-
-	};
-};
-
-&spi0 {
-	max14830: max14830@0 {
-		compatible = "maxim,max14830";
-		reg = <0>;
-		clocks = <&spi_uart_clk>;
-		clock-names = "osc";
-		interrupt-parent = <&gpio3>;
-		interrupts = <7 IRQ_TYPE_LEVEL_LOW>;
-		gpio-controller;
-		#gpio-cells = <2>;
-	};
-};
diff --git a/Documentation/devicetree/bindings/serial/maxim,max310x.yaml b/Documentation/devicetree/bindings/serial/maxim,max310x.yaml
new file mode 100644
index 000000000000..889eeaca64a0
--- /dev/null
+++ b/Documentation/devicetree/bindings/serial/maxim,max310x.yaml
@@ -0,0 +1,74 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/serial/maxim,max310x.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Maxim MAX310X Advanced Universal Asynchronous Receiver-Transmitter (UART)
+
+maintainers:
+  - Hugo Villeneuve <hvilleneuve@dimonoff.com>
+
+properties:
+  compatible:
+    enum:
+      - maxim,max3107
+      - maxim,max3108
+      - maxim,max3109
+      - maxim,max14830
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    enum:
+      - xtal # External crystal
+      - osc  # External clock source
+
+  gpio-controller: true
+
+  "#gpio-cells":
+    const: 2
+
+  gpio-line-names:
+    minItems: 1
+    maxItems: 16
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+
+allOf:
+  - $ref: /schemas/spi/spi-peripheral-props.yaml#
+  - $ref: /schemas/serial/serial.yaml#
+  - $ref: /schemas/serial/rs485.yaml#
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        serial@2c {
+            compatible = "maxim,max3107";
+            reg = <0x2c>;
+            clocks = <&xtal4m>;
+            clock-names = "xtal";
+            interrupt-parent = <&gpio3>;
+            interrupts = <7 IRQ_TYPE_LEVEL_LOW>;
+            gpio-controller;
+            #gpio-cells = <2>;
+        };
+    };

base-commit: 401644852d0b2a278811de38081be23f74b5bb04
-- 
2.39.2


