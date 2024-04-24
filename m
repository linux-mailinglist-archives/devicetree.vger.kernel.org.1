Return-Path: <devicetree+bounces-62417-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BD5C8B113C
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 19:38:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BC9BF2891C2
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 17:38:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CA00143894;
	Wed, 24 Apr 2024 17:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a6dSxMYu"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAED716D4E7
	for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 17:38:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713980302; cv=none; b=IbKtSxpaiLF0VHuKXPv11EHoUV2WTcR4HZ2jNkBbbOCtr1ZxZ5s8QvRacSjaMxtL15ZyztxSevF5Yybb09dRIQdtOlI2gDETjb0cgESepWie5yQV7Opa1A4t2qsKaoe1hXcI6E05fLpKgwRpiq7yBa3xFwKI8ZAIDPuVabsA0FE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713980302; c=relaxed/simple;
	bh=rpdXP8YrpKHtxsoxwqtTPtY3EMHNjZIHg+wLDvjBCGU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=mYv0Za7XMSHWe4t42ktyO3GJTSzD+KIz5nrhZxT16vd98Vj7zzq1XSlfUsxorExtiBdHTf1nlmt3K9OFIinPhnL5PPaOU6HjvL+S/42odWpZU8X9oeqs1PvIiEO4lALiC9isjHwSL4MpQJHX64+evGV4UPcFQYHO5R9lvOguFb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a6dSxMYu; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DA96FC32782;
	Wed, 24 Apr 2024 17:38:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713980302;
	bh=rpdXP8YrpKHtxsoxwqtTPtY3EMHNjZIHg+wLDvjBCGU=;
	h=From:List-Id:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=a6dSxMYu7a7zSUPfaAzTH8888TuvdU0g46v7L9cgcVE9M1+mTkT3zKVD3yI13bImn
	 bm45TFC0K5DKXRV0HEhqs9j7FAPVMomlSnIXObj236reMhYbqf5ze1O0c7hBhml6DO
	 OrW8pczvyNaA65BanA6TGJ0zpzsG8SySNNL7oJQdywhNQM5Hgp3lpjDMx+zKSBO4VW
	 X1NEGhhQQK4HmCeX91dd/U83gxksIWklPBbWPmg3rkvscwavO26cTIZ62Yt/Gyb1Zw
	 QYYg3mUS1oxnEI4i+lON4ySqAZjkGcLrckASLaUeu/LTRG2B91zVb9+lD3eJw3NepZ
	 5na6lVaU2WUNw==
From: =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>
To: Gregory CLEMENT <gregory.clement@bootlin.com>,
	Arnd Bergmann <arnd@arndb.de>,
	soc@kernel.org,
	arm@kernel.org,
	Andy Shevchenko <andy@kernel.org>,
	Hans de Goede <hdegoede@redhat.com>,
	=?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
Cc: =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v7 1/9] dt-bindings: arm: add cznic,turris-omnia-mcu binding
Date: Wed, 24 Apr 2024 19:38:00 +0200
Message-ID: <20240424173809.7214-2-kabel@kernel.org>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240424173809.7214-1-kabel@kernel.org>
References: <20240424173809.7214-1-kabel@kernel.org>
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
 .../firmware/cznic,turris-omnia-mcu.yaml      | 86 +++++++++++++++++++
 MAINTAINERS                                   |  1 +
 2 files changed, 87 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/firmware/cznic,turris-omnia-mcu.yaml

diff --git a/Documentation/devicetree/bindings/firmware/cznic,turris-omnia-mcu.yaml b/Documentation/devicetree/bindings/firmware/cznic,turris-omnia-mcu.yaml
new file mode 100644
index 000000000000..dd9ee21ee24d
--- /dev/null
+++ b/Documentation/devicetree/bindings/firmware/cznic,turris-omnia-mcu.yaml
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
index c0bfad334623..bb869d5b7d4e 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2143,6 +2143,7 @@ F:	Documentation/ABI/testing/sysfs-bus-moxtet-devices
 F:	Documentation/ABI/testing/sysfs-firmware-turris-mox-rwtm
 F:	Documentation/devicetree/bindings/bus/moxtet.txt
 F:	Documentation/devicetree/bindings/firmware/cznic,turris-mox-rwtm.txt
+F:	Documentation/devicetree/bindings/firmware/cznic,turris-omnia-mcu.yaml
 F:	Documentation/devicetree/bindings/gpio/gpio-moxtet.txt
 F:	Documentation/devicetree/bindings/leds/cznic,turris-omnia-leds.yaml
 F:	Documentation/devicetree/bindings/watchdog/armada-37xx-wdt.txt
-- 
2.43.2


