Return-Path: <devicetree+bounces-81890-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E75A291DDE0
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 13:30:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A29D2281005
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 11:30:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42B7E13DDA7;
	Mon,  1 Jul 2024 11:30:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rOlbWRpK"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E9742B9C6
	for <devicetree@vger.kernel.org>; Mon,  1 Jul 2024 11:30:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719833429; cv=none; b=bM9Yy/YEd95F8f6drBlB2hHulbst/HBYieERmDeQkW1av3Az5F2YcY/U6f2OtbfCpWyLMh7767sHSfjMMr70a5AInVhIoZjfLSAhU90VObvboYwU7n8TqJyMKaUj1Mv1XIzebrFgUq8+5E6+0LKpgLMyMuMGcAJzj8PKzsG7nc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719833429; c=relaxed/simple;
	bh=q2YjRmUir1aiAl/k4LwkYLq9quRlecYb+uj2zNUnYKE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=aWl90NEF3Zxkxzl3Pgz4J/JMycsC8RU6tAqVN1v2VbnNEbeezHfX4GBv9N7+4mnKq/F37CatUAd4Zbm2/9my6DEDU0hcCAYJw3nOoAhyUzbK/qvqgoOauvsKKbrabR1rZStZzFtxT3RlQiVov+KjgK7fOz7lQrA67vpqzPucEyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rOlbWRpK; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A4D9CC116B1;
	Mon,  1 Jul 2024 11:30:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719833428;
	bh=q2YjRmUir1aiAl/k4LwkYLq9quRlecYb+uj2zNUnYKE=;
	h=From:List-Id:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=rOlbWRpKDN49oHJknz5nZDcp7Pwgr9X+B3AD7OG3gM7nl8qgNTRqeWJ7zSNQInE2d
	 F0gpl3qk1UezStjdek4MGeWzMaiNw7Szs1ntkbMLH6ynpPvBlkYuqnb15BKRvjoTDQ
	 Ro+l0uwhS7m6MmFLztv5RuKQp6EyC3dXBj316fjReNS+2PkvsSM62OdSEaUUtGy2ms
	 5ddC0va7XU2nyQ6NosTcnbEB+blb4ron44IbjE+W5eu9UoBqPwuEErx5HEXJW5QNX3
	 Kl0++48dflBxCOcRUdlQO48YiMD18KBCyMdD/tvfVGAUh7uWgBtXDgNAHpTVZA3xlE
	 qJrVng4idE50g==
From: =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>,
	soc@kernel.org
Cc: Gregory CLEMENT <gregory.clement@bootlin.com>,
	arm@kernel.org,
	Andy Shevchenko <andy@kernel.org>,
	Hans de Goede <hdegoede@redhat.com>,
	=?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
	=?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v13 1/8] dt-bindings: firmware: add cznic,turris-omnia-mcu binding
Date: Mon,  1 Jul 2024 13:30:03 +0200
Message-ID: <20240701113010.16447-2-kabel@kernel.org>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240701113010.16447-1-kabel@kernel.org>
References: <20240701113010.16447-1-kabel@kernel.org>
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
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
---
 .../firmware/cznic,turris-omnia-mcu.yaml      | 86 +++++++++++++++++++
 MAINTAINERS                                   |  1 +
 2 files changed, 87 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/firmware/cznic,turris-omnia-mcu.yaml

diff --git a/Documentation/devicetree/bindings/firmware/cznic,turris-omnia-mcu.yaml b/Documentation/devicetree/bindings/firmware/cznic,turris-omnia-mcu.yaml
new file mode 100644
index 000000000000..af9249695ef5
--- /dev/null
+++ b/Documentation/devicetree/bindings/firmware/cznic,turris-omnia-mcu.yaml
@@ -0,0 +1,86 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/firmware/cznic,turris-omnia-mcu.yaml#
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
index 3c4fdf74a3f9..37da14d4fb4f 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2210,6 +2210,7 @@ F:	Documentation/ABI/testing/sysfs-bus-moxtet-devices
 F:	Documentation/ABI/testing/sysfs-firmware-turris-mox-rwtm
 F:	Documentation/devicetree/bindings/bus/moxtet.txt
 F:	Documentation/devicetree/bindings/firmware/cznic,turris-mox-rwtm.txt
+F:	Documentation/devicetree/bindings/firmware/cznic,turris-omnia-mcu.yaml
 F:	Documentation/devicetree/bindings/gpio/gpio-moxtet.txt
 F:	Documentation/devicetree/bindings/leds/cznic,turris-omnia-leds.yaml
 F:	Documentation/devicetree/bindings/watchdog/armada-37xx-wdt.txt
-- 
2.44.2


