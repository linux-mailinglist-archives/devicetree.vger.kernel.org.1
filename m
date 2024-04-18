Return-Path: <devicetree+bounces-60527-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 078FB8A9988
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 14:11:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 393851C2185D
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 12:11:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5CD7415F418;
	Thu, 18 Apr 2024 12:11:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SinvESmt"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3874A15DBD6
	for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 12:11:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713442289; cv=none; b=IGKfm8GtkG8yF265zYOPQXM06NTBPD3Vso8owkg/CTgT2lUzJuYGCcH6NieqfLyzDMDoyx31fFYGPxMFvXu/pZyYvMPlY8B6w4IBuI6kDl4WOUYPaXIVwblmiwjBMFQCOLNRhRSASLFVCnZUMy7P5bpP2s7YIYni2hS0YOj6enk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713442289; c=relaxed/simple;
	bh=uWP8fGgyCVsmw8cRYLqGdItnyBU/yaCTnCyJ/52vTKk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=CnFeEGmg+vJ2gaalcq7ArcyJQG0W/Ai3EAAEeHPBNmtqitnNNIL2Tm5ChqrU/0To5Z8PmsKfYfdo6MLvmHnZXcWZtvFrHlpklteK1gItq3GaGDWWzN8TY+I4bavZ+MfztbcsWEATvcfTzAFywOWZdfHKL3v8oa4Xvk5yg2uIM9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SinvESmt; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D1F1DC32783;
	Thu, 18 Apr 2024 12:11:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713442288;
	bh=uWP8fGgyCVsmw8cRYLqGdItnyBU/yaCTnCyJ/52vTKk=;
	h=From:List-Id:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=SinvESmt6MrjLQW2YDbGdgJJJPOs1PLYDEbOKPrEmSFBfUQaeM+uM3PmjDUIC9DvZ
	 oZbvmZzN/lo2CPm1+oZ3ooXtpNMWZ6zanjAJcGtrX1ZKxwk+DT7p5bCaxtJ/r7HO6+
	 Z5oRzTNVq2/4jJIbFy0SKO5Oii7gf9tiV12imLEJl52UnHwF/XfyHXBl56W8JFVHyS
	 ary+raYq+y1oR56c6UONwjmT4C8a383quVIQ7AavdgljFFQG3yo/q03gc6bsXL1Rkr
	 6nV53un/b7n+liuZbBfKY9YrxhoNQ9dPfs3eZe5vM4J7Qngx/HQazscqOnN18F/edk
	 xFcJ0x3t4gCVw==
From: =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>
To: Gregory CLEMENT <gregory.clement@bootlin.com>,
	Arnd Bergmann <arnd@arndb.de>,
	soc@kernel.org
Cc: arm@kernel.org,
	=?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v6 01/11] dt-bindings: arm: add cznic,turris-omnia-mcu binding
Date: Thu, 18 Apr 2024 14:11:06 +0200
Message-ID: <20240418121116.22184-2-kabel@kernel.org>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240418121116.22184-1-kabel@kernel.org>
References: <20240418121116.22184-1-kabel@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Add binding for cznic,turris-omnia-mcu, the device-tree node
representing the system-controller features provided by the MCU on the
Turris Omnia router.

Signed-off-by: Marek Behún <kabel@kernel.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/arm/cznic,turris-omnia-mcu.yaml  | 86 +++++++++++++++++++
 MAINTAINERS                                   |  1 +
 2 files changed, 87 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/cznic,turris-omnia-mcu.yaml

diff --git a/Documentation/devicetree/bindings/arm/cznic,turris-omnia-mcu.yaml b/Documentation/devicetree/bindings/arm/cznic,turris-omnia-mcu.yaml
new file mode 100644
index 000000000000..dd9ee21ee24d
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/cznic,turris-omnia-mcu.yaml
@@ -0,0 +1,86 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/cznic,turris-omnia-mcu.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: CZ.NIC's Turris Omnia MCU
+
+maintainers:
+  - Marek Behún <kabel@kernel.org>
+
+description:
+  The MCU on Turris Omnia acts as a system controller providing additional
+  GPIOs, interrupts, watchdog, system power off and wakeup configuration.
+
+properties:
+  compatible:
+    const: cznic,turris-omnia-mcu
+
+  reg:
+    description: MCU I2C slave address
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  interrupt-controller: true
+
+  '#interrupt-cells':
+    const: 2
+    description: |
+      The first cell specifies the interrupt number (0 to 63), the second cell
+      specifies interrupt type (which can be one of IRQ_TYPE_EDGE_RISING,
+      IRQ_TYPE_EDGE_FALLING or IRQ_TYPE_EDGE_BOTH).
+      The interrupt numbers correspond sequentially to GPIO numbers, taking the
+      GPIO banks into account:
+        IRQ number   GPIO bank   GPIO pin within bank
+           0 - 15      0           0 - 15
+          16 - 47      1           0 - 31
+          48 - 63      2           0 - 15
+      There are several exceptions:
+        IRQ number   meaning
+          11           LED panel brightness changed by button press
+          13           TRNG entropy ready
+          14           ECDSA message signature computation done
+
+  gpio-controller: true
+
+  '#gpio-cells':
+    const: 3
+    description:
+      The first cell is bank number (0, 1 or 2), the second cell is pin number
+      within the bank (0 to 15 for banks 0 and 2, 0 to 31 for bank 1), and the
+      third cell specifies consumer flags.
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - interrupt-controller
+  - gpio-controller
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
+        system-controller@2a {
+            compatible = "cznic,turris-omnia-mcu";
+            reg = <0x2a>;
+
+            interrupt-parent = <&gpio1>;
+            interrupts = <11 IRQ_TYPE_NONE>;
+
+            gpio-controller;
+            #gpio-cells = <3>;
+
+            interrupt-controller;
+            #interrupt-cells = <2>;
+        };
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index c23fda1aa1f0..23637ff1e0bc 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2141,6 +2141,7 @@ W:	https://www.turris.cz/
 F:	Documentation/ABI/testing/debugfs-moxtet
 F:	Documentation/ABI/testing/sysfs-bus-moxtet-devices
 F:	Documentation/ABI/testing/sysfs-firmware-turris-mox-rwtm
+F:	Documentation/devicetree/bindings/arm/cznic,turris-omnia-mcu.yaml
 F:	Documentation/devicetree/bindings/bus/moxtet.txt
 F:	Documentation/devicetree/bindings/firmware/cznic,turris-mox-rwtm.txt
 F:	Documentation/devicetree/bindings/gpio/gpio-moxtet.txt
-- 
2.43.2


