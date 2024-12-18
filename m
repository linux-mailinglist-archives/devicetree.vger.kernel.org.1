Return-Path: <devicetree+bounces-132408-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 682E79F6F44
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 22:08:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B7D4F1686D4
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 21:08:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCEC81FCCEF;
	Wed, 18 Dec 2024 21:08:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=siemens.com header.i=alexander.sverdlin@siemens.com header.b="oZi1umMS"
X-Original-To: devicetree@vger.kernel.org
Received: from mta-64-225.siemens.flowmailer.net (mta-64-225.siemens.flowmailer.net [185.136.64.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D06AB1FC7C6
	for <devicetree@vger.kernel.org>; Wed, 18 Dec 2024 21:08:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.136.64.225
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734556123; cv=none; b=VofGB1N7MltBbXLGBoLD/duICv6d6s0tWD2Cqb6P4RrGR6Dd6y3P+rAtREgKW6OHXwRsrltlkuIB23icxkhXraSRwuNG6UnugJXQExqoPzroIttqYzkX0y/Uch19Y/M5FBBJet51SVn1onGRjB1MJnWS9gRVvkYnKJR8d+cLJa0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734556123; c=relaxed/simple;
	bh=sxigl/E5+vP1koTjRjhNPtNfgZBkM19NlZmBUAsERMk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=CySZKLZoEFJsnnB2liqJwquU4aXtoid6hhwIZbbb0hCMAHOP31IeSBvYewstpQd8ahIvQt0YWCqN1kCKwoUjEy8dVAdSb5UFrM6SltolzOHGSiB4ZPzF3RNZ/b/hddSHUcF5gTpsTziCDT3n9zZYl/OrPXZMX44+wYxUdE9W4o0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com; dkim=pass (2048-bit key) header.d=siemens.com header.i=alexander.sverdlin@siemens.com header.b=oZi1umMS; arc=none smtp.client-ip=185.136.64.225
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com
Received: by mta-64-225.siemens.flowmailer.net with ESMTPSA id 20241218210833accf032ee245c12ff6
        for <devicetree@vger.kernel.org>;
        Wed, 18 Dec 2024 22:08:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm1;
 d=siemens.com; i=alexander.sverdlin@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc:References:In-Reply-To;
 bh=lrclGjpAaQydp+GtJPf8SVVl+wVf9zg9DYg8fWohdro=;
 b=oZi1umMSDH1ahq0ebvM3sN6sbP9zRzsDutxel6vAtCa4SoqFcC+U67eI+rwOZKfUhd9e3q
 EX50j1M8egIeIZHVF2lzX2M7zRadlCwIv2cY1XAZp3lt6jAp6w0EiSTHEX1oci/r/LwhCDRq
 vOCHVvIaguxLpVUp+Ri7sVYx0JkjX0k+rXkvEOIKmcBOKKxs7Mbw/6X4nlz7jccvqfSPbZZA
 /rZYB8xmNjba39Qrl0Y0cTiODoQxh7z9Phyzy1mdBvz3ssYjRVS/jYnDCqwtIv2nSeCCbUE9
 gyh/nyGsGUVph5HXiwD4eS2dMJe8OyLQPGINQVkgWsQ5T7/QEyPyBCGQ==;
From: "A. Sverdlin" <alexander.sverdlin@siemens.com>
To: linux-leds@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Alexander Sverdlin <alexander.sverdlin@siemens.com>,
	dri-devel@lists.freedesktop.org,
	Lee Jones <lee@kernel.org>,
	Daniel Thompson <danielt@kernel.org>,
	Jingoo Han <jingoohan1@gmail.com>,
	Pavel Machek <pavel@ucw.cz>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Andrew Davis <afd@ti.com>
Subject: [PATCH v5 1/2] dt-bindings: backlight: add TI LP8864/LP8866 LED-backlight drivers
Date: Wed, 18 Dec 2024 22:08:26 +0100
Message-ID: <20241218210829.73191-2-alexander.sverdlin@siemens.com>
In-Reply-To: <20241218210829.73191-1-alexander.sverdlin@siemens.com>
References: <20241218210829.73191-1-alexander.sverdlin@siemens.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-456497:519-21489:flowmailer

From: Alexander Sverdlin <alexander.sverdlin@siemens.com>

Add bindings for Texas Instruments' LP8864/LP8866 LED-backlight drivers.
Note that multiple channels in these models are used for load-balancing and
brightness is controlled gobally, so from a user perspective it's only one
LED.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Alexander Sverdlin <alexander.sverdlin@siemens.com>
---
v5: no changes
v4: no changes
v3: no changes
v2: ti,8860 has been decoupled from this series and converted to YAML separately

 .../bindings/leds/backlight/ti,lp8864.yaml    | 80 +++++++++++++++++++
 1 file changed, 80 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/leds/backlight/ti,lp8864.yaml

diff --git a/Documentation/devicetree/bindings/leds/backlight/ti,lp8864.yaml b/Documentation/devicetree/bindings/leds/backlight/ti,lp8864.yaml
new file mode 100644
index 000000000000..d44232d462bd
--- /dev/null
+++ b/Documentation/devicetree/bindings/leds/backlight/ti,lp8864.yaml
@@ -0,0 +1,80 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/leds/backlight/ti,lp8864.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Texas Instruments - LP8864/LP8866 4/6-Channel LED Driver family
+
+maintainers:
+  - Andrew Davis <afd@ti.com>
+  - Alexander Sverdlin <alexander.sverdlin@siemens.com>
+
+description: |
+  LP8866-Q1, LP8866S-Q1, LP8864-Q1, LP8864S-Q1 are display LED-backlight drivers
+  with 4/6 channels. LED brightness can be controlled globally through the I2C
+  interface or PWM input.
+
+  For more product information please see the links below:
+    https://www.ti.com/product/LP8864-Q1
+    https://www.ti.com/product/LP8864S-Q1
+    https://www.ti.com/product/LP8866-Q1
+    https://www.ti.com/product/LP8866S-Q1
+
+properties:
+  compatible:
+    const: ti,lp8864
+
+  reg:
+    maxItems: 1
+    description: I2C slave address
+
+  enable-gpios:
+    maxItems: 1
+    description: GPIO pin to enable (active high) / disable the device
+
+  vled-supply:
+    description: LED supply
+
+  led:
+    type: object
+    $ref: common.yaml#
+    properties:
+      function: true
+      color: true
+      label: true
+      linux,default-trigger: true
+
+    additionalProperties: false
+
+required:
+  - compatible
+  - reg
+  - led
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/leds/common.h>
+
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        led-controller@3a {
+            compatible = "ti,lp8864";
+            reg = <0x3a>;
+            enable-gpios = <&gpio1 28 GPIO_ACTIVE_HIGH>;
+            vled-supply = <&vbatt>;
+
+            led {
+                function = LED_FUNCTION_BACKLIGHT;
+                color = <LED_COLOR_ID_WHITE>;
+                linux,default-trigger = "backlight";
+            };
+        };
+    };
+
+...
-- 
2.47.1


