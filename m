Return-Path: <devicetree+bounces-49701-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DC361877734
	for <lists+devicetree@lfdr.de>; Sun, 10 Mar 2024 14:54:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0CA0F1C2080D
	for <lists+devicetree@lfdr.de>; Sun, 10 Mar 2024 13:54:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D90C27721;
	Sun, 10 Mar 2024 13:54:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=paroga.com header.i=@paroga.com header.b="ZQv77Iyx";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=paroga.com header.i=@paroga.com header.b="ZQv77Iyx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx201.easyname.com (mx201.easyname.com [217.74.15.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C682F12B89
	for <devicetree@vger.kernel.org>; Sun, 10 Mar 2024 13:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.74.15.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710078878; cv=none; b=VtUrIDLwpkWF0Z4AuggvXKg+RjG2hfgsSY3He0RnyCLDTAMxskZryz/FLynhftx5RshzMRcBGuWoCQzr83TBwq0xQ23R0ej9XupxxcFEObMVQgla9Rb1hRIDUSRF+9rPxUxjdj+dEf7Rh6M+Nk7xNVownV7x0QBMXRy3FU90PpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710078878; c=relaxed/simple;
	bh=TUFtVQiVvHQhglJ9UpLpRFjWyNVBkGMY6q+sF9a3NdY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=WIH7OvlS7ykWTTGe8bTvqx7S2TmTyxrmKUhBsHGvrw8W3+FUqeuQZYIgQIejwk5w8MZ5x5JaI9TsRt/TexwsuYrwa3EPV65LyAPHXI1Lt79XV+iFrwxlPonFImtxP308zxQUAVYYc6pgaE9M1YWY1ihXB0y21und0o+5uPGHwnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=paroga.com; spf=pass smtp.mailfrom=paroga.com; dkim=pass (2048-bit key) header.d=paroga.com header.i=@paroga.com header.b=ZQv77Iyx; dkim=pass (2048-bit key) header.d=paroga.com header.i=@paroga.com header.b=ZQv77Iyx; arc=none smtp.client-ip=217.74.15.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=paroga.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=paroga.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=paroga.com;
	 s=easyname; h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject
	:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=6mTkC7aLR9O3BERrlv16sEF/7s4nimCvcvJAgjIFGpg=; b=ZQv77IyxLDIcbRkNayXC+OUGsI
	N9vNxQslxSv87tqcJybnbZuiI6JfYoqFjulf/bN2i8Fxrv+teMzXuNzrb+CewjaUqogMECdf4og83
	lCeqrNaLRSDz4rMBsXUG3P23ux+UkIUeu4xJIaVr6p9rmPsQy8dJnrfHZDNIXEju8vZoUFGbyiUjo
	WZDXBjGtVDGNTbLipYQ4/Vq+P756SCHbPLcgBB5Sx6nHkJN6V3JXnllXeYHqpdLF8qor3C9kdZrUx
	wDAcmQxxYImNtDUcewDvPmYa6dG3Jsko3NJTkNQ3K24gVsL1vZFqNx24i8DcodVlnWcqTW8R9ScDk
	5WKCC7zA==;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=paroga.com;
	 s=easyname; h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject
	:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=6mTkC7aLR9O3BERrlv16sEF/7s4nimCvcvJAgjIFGpg=; b=ZQv77IyxLDIcbRkNayXC+OUGsI
	N9vNxQslxSv87tqcJybnbZuiI6JfYoqFjulf/bN2i8Fxrv+teMzXuNzrb+CewjaUqogMECdf4og83
	lCeqrNaLRSDz4rMBsXUG3P23ux+UkIUeu4xJIaVr6p9rmPsQy8dJnrfHZDNIXEju8vZoUFGbyiUjo
	WZDXBjGtVDGNTbLipYQ4/Vq+P756SCHbPLcgBB5Sx6nHkJN6V3JXnllXeYHqpdLF8qor3C9kdZrUx
	wDAcmQxxYImNtDUcewDvPmYa6dG3Jsko3NJTkNQ3K24gVsL1vZFqNx24i8DcodVlnWcqTW8R9ScDk
	5WKCC7zA==;
Received: from 84-115-228-205.cable.dynamic.surfer.at ([84.115.228.205] helo=localhost.localdomain)
	by mx.easyname.com with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <paroga@paroga.com>)
	id 1rjJd8-0004yN-VW; Sun, 10 Mar 2024 13:54:27 +0000
From: Patrick Gansterer <paroga@paroga.com>
To: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org
Cc: Lee Jones <lee@kernel.org>,
	Daniel Thompson <daniel.thompson@linaro.org>,
	Jingoo Han <jingoohan1@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Patrick Gansterer <paroga@paroga.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v4 1/2] dt-bindings: backlight: Add Texas Instruments LM3509
Date: Sun, 10 Mar 2024 14:52:56 +0100
Message-ID: <20240310135344.3455294-1-paroga@paroga.com>
X-Mailer: git-send-email 2.44.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Easy-Autoreply: EN

Add Device Tree bindings for Texas Instruments LM3509 - a
High Efficiency Boost for White LED's and/or OLED Displays

Signed-off-by: Patrick Gansterer <paroga@paroga.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
Changes in v4:
  Use backlight_*() to access backlight_device
  Do not set backlight_properties.power

v3: https://lore.kernel.org/all/20240309132521.1290173-1-paroga@paroga.com/

Changes in v3:
  Improved device tree bindings documentation

v2: https://lore.kernel.org/all/20240308215617.1729664-1-paroga@paroga.com/

Changes in v2:
  Add device tree nodes for each output
  Addressed multiple smaller review comments

v1: https://lore.kernel.org/all/20240302212757.1871164-1-paroga@paroga.com/

 .../bindings/leds/backlight/ti,lm3509.yaml    | 139 ++++++++++++++++++
 1 file changed, 139 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/leds/backlight/ti,lm3509.yaml

diff --git a/Documentation/devicetree/bindings/leds/backlight/ti,lm3509.yaml b/Documentation/devicetree/bindings/leds/backlight/ti,lm3509.yaml
new file mode 100644
index 000000000000..b67f67648852
--- /dev/null
+++ b/Documentation/devicetree/bindings/leds/backlight/ti,lm3509.yaml
@@ -0,0 +1,139 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/leds/backlight/ti,lm3509.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: TI LM3509 High Efficiency Boost for White LED's and/or OLED Displays
+
+maintainers:
+  - Patrick Gansterer <paroga@paroga.com>
+
+description:
+  The LM3509 current mode boost converter offers two separate outputs.
+  https://www.ti.com/product/LM3509
+
+properties:
+  compatible:
+    const: ti,lm3509
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
+  reset-gpios:
+    maxItems: 1
+
+  ti,brightness-rate-of-change-us:
+    description: Brightness Rate of Change in microseconds.
+    enum: [51, 13000, 26000, 52000]
+
+  ti,oled-mode:
+    description: Enable OLED mode.
+    type: boolean
+
+patternProperties:
+  "^led@[01]$":
+    type: object
+    description: Properties for a string of connected LEDs.
+
+    allOf:
+      - $ref: common.yaml#
+
+    properties:
+      reg:
+        description:
+          The control register that is used to program the two current sinks.
+          The LM3509 has two registers (BMAIN and BSUB) and are represented
+          as 0 or 1 in this property. The two current sinks can be controlled
+          independently with both registers, or register BMAIN can be
+          configured to control both sinks with the led-sources property.
+        minimum: 0
+        maximum: 1
+
+      label: true
+
+      led-sources:
+        allOf:
+          - minItems: 1
+            maxItems: 2
+            items:
+              minimum: 0
+              maximum: 1
+
+      default-brightness:
+        minimum: 0
+        maximum: 31
+        default: 18
+
+      max-brightness:
+        minimum: 0
+        maximum: 31
+        default: 31
+
+    required:
+      - reg
+
+    additionalProperties: false
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        backlight@36 {
+            compatible = "ti,lm3509";
+            reg = <0x36>;
+            reset-gpios = <&gpio2 5 GPIO_ACTIVE_LOW>;
+
+            ti,oled-mode;
+            ti,brightness-rate-of-change-us = <52000>;
+
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            led@0 {
+                reg = <0>;
+                led-sources = <0 1>;
+                label = "lcd-backlight";
+                default-brightness = <12>;
+                max-brightness = <31>;
+            };
+        };
+    };
+  - |
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        backlight@36 {
+            compatible = "ti,lm3509";
+            reg = <0x36>;
+
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            led@0 {
+                reg = <0>;
+                default-brightness = <12>;
+            };
+
+            led@1 {
+                reg = <1>;
+                default-brightness = <15>;
+            };
+        };
+    };
-- 
2.44.0


