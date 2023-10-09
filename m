Return-Path: <devicetree+bounces-6957-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EFCB7BE0DF
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 15:44:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 503391C20848
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 13:44:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BE1634180;
	Mon,  9 Oct 2023 13:44:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="UBDHHLe7"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 687C8339BC
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 13:44:49 +0000 (UTC)
Received: from relay9-d.mail.gandi.net (relay9-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::229])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CACE6D8;
	Mon,  9 Oct 2023 06:44:45 -0700 (PDT)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 76C77FF811;
	Mon,  9 Oct 2023 13:44:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1696859084;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=qHnX1hKuf0W3w0/aS3zuVEv2E9sqxbYwmH6J6H8U86U=;
	b=UBDHHLe70aOJtzdz50gv1fxvR3XLLIg/uRS7wbJbVy2Orlr85gCHTWlYThH4G3ndtKD4gs
	WYt1uhegUjLYTOjEHlwIqyzY7cC0i0tHwHX7siOOFIIHWoLDpX+QukCoTTUOZdp1ipIsL+
	SLmIi4fchibCQMILQLu9aFCMMrFPBgkqjS7Jpv91nIZycUI5sx+/g2ilbGwxiA0K14Yyjl
	odJNzAJXL9qYwOXHYp624i9g1bgEM55wlTi+tgBXfsmZW2IpAOmxhm0atnvyJXFdwSnxMP
	fzlq+GItL9Ov4lIJ359KkeWBLtgjOUiDKM7pvm6jOToJt1esKguDFV8k5A1s4g==
From: Kamel Bouhara <kamel.bouhara@bootlin.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Henrik Rydberg <rydberg@bitmath.org>
Cc: linux-input@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	mark.satterthwaite@touchnetix.com,
	pedro.torruella@touchnetix.com,
	bartp@baasheep.co.uk,
	hannah.rossiter@touchnetix.com,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Gregory Clement <gregory.clement@bootlin.com>,
	bsp-development.geo@leica-geosystems.com,
	Kamel Bouhara <kamel.bouhara@bootlin.com>
Subject: [PATCH v2 2/3] dt-bindings: input: Add bindings for TouchNetix axiom touchscreen
Date: Mon,  9 Oct 2023 15:44:34 +0200
Message-Id: <20231009134435.36311-3-kamel.bouhara@bootlin.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231009134435.36311-1-kamel.bouhara@bootlin.com>
References: <20231009134435.36311-1-kamel.bouhara@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-GND-Sasl: kamel.bouhara@bootlin.com
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_PASS,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add the TouchNetix axiom I2C touchscreen device tree bindings
documentation.

Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
---
 .../touchscreen/touchnetix,axiom-ax54a.yaml   | 51 +++++++++++++++++++
 MAINTAINERS                                   |  6 +++
 2 files changed, 57 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/input/touchscreen/touchnetix,axiom-ax54a.yaml

diff --git a/Documentation/devicetree/bindings/input/touchscreen/touchnetix,axiom-ax54a.yaml b/Documentation/devicetree/bindings/input/touchscreen/touchnetix,axiom-ax54a.yaml
new file mode 100644
index 000000000000..41201d7112a6
--- /dev/null
+++ b/Documentation/devicetree/bindings/input/touchscreen/touchnetix,axiom-ax54a.yaml
@@ -0,0 +1,51 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/input/touchscreen/touchnetix,axiom-ax54a.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: TouchNetix Axiom series touchscreen controller
+
+maintainers:
+  - Kamel Bouhara <kamel.bouhara@bootlin.com>
+
+properties:
+  compatible:
+    const: touchnetix,axiom-ax54a
+
+  reg:
+    const: 0x66
+
+  interrupts:
+    maxItems: 1
+
+  irq-gpios:
+    maxItems: 1
+
+  reset-gpios:
+    maxItems: 1
+
+additionalProperties: false
+
+required:
+  - compatible
+  - reg
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    i2c {
+      #address-cells = <1>;
+      #size-cells = <0>;
+      axiom@66 {
+        compatible = "touchnetix,axiom-ax54a";
+        reg = <0x66>;
+        interrupt-parent = <&gpio2>;
+        interrupts = <2 IRQ_TYPE_EDGE_FALLING>;
+        irq-gpios = <&gpio2 0 GPIO_ACTIVE_LOW>;
+        reset-gpios = <&gpio1 1 GPIO_ACTIVE_HIGH>;
+      };
+    };
+
+...
diff --git a/MAINTAINERS b/MAINTAINERS
index 389fe9e38884..12ae8bc6b8cf 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -21410,6 +21410,12 @@ S:	Maintained
 F:	Documentation/ABI/testing/sysfs-class-firmware-attributes
 F:	drivers/platform/x86/think-lmi.?
 
+TOUCHNETIX AXIOM I2C TOUCHSCREEN DRIVER
+M:	Kamel Bouhara <kamel.bouhara@bootlin.com>
+L:	linux-input@vger.kernel.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/input/touchscreen/touchnetix,axiom-ax54a.yaml
+
 THUNDERBOLT DMA TRAFFIC TEST DRIVER
 M:	Isaac Hazan <isaac.hazan@intel.com>
 L:	linux-usb@vger.kernel.org
-- 
2.25.1


