Return-Path: <devicetree+bounces-250420-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CA7A2CE9027
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 09:25:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A0B2530111B9
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 08:24:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC307303CB6;
	Tue, 30 Dec 2025 08:24:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jPZMf0j2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ECCE3043CF
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 08:24:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767083053; cv=none; b=j/E3Wy8YJbBF1jqnmuhIKCB5hu9U7zNm19H6Z1kXIl3caKmFPxsEA4xld/2muq67/9X+mTpceWeAvqc87zQ7l7bp5eyN6ibn300IvkgWOwJtJGo3r+oFkem7L+8O71KCKNHyF+NVUGmgvBszXgW8tWPAe/xmvXUkRfXM3LeoiHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767083053; c=relaxed/simple;
	bh=3pKuk8Mybw7TMm30Bo1zRUy6KDj71/Yw137ZvGyBXWY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ZVTfdeifsKWKE49T7Vhm4WggqmKE8cUeAAepvaJ/xSl7zcnS4dAmIsnpOr2Xg18F0sp0YkMQYFoLnnN4lKDSo7eMOaASqhpfAQb1jMRrgKUj6piSxOX69ZubPepXHAOR2pxphgHwh4v77I5ZDQoOKEh/GruJTPDdjJ9sf+jebAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jPZMf0j2; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-2a0fe77d141so105553875ad.1
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 00:24:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767083049; x=1767687849; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uxzCj7dEoeq0UKcYAHPRIErcvANPW2xJASyrOfZf5e8=;
        b=jPZMf0j2Gfj/TaBVfSUYJWv0BsCforBb3F83g2iygKCEuU8BchHwWtwpkEAqSKTOwt
         jVXk6+1SN17uMccbL3PC2jPR49L4WjlqM7jLa0rlCpKsWchQWZx5HVpSHVn9QZ6ejXB4
         fUF2hbAAlj5RnC/tKABBxpuAcH9ic0y+guwSe3TijKbufejMennKQEMOFaXWmoGqp/j3
         pPdnCy1UjOk0dNykw/Xu2Gy9YwI735dyeYGwJwH13U4GLtujjrJkGzHV8GIKdp1K1r8t
         wUptEsnaoNPYHV7UTw36Bockdgbw/HVoWng0JKCNz91T08XpGQr48wnXV8RH/I1aCXDt
         j1cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767083049; x=1767687849;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=uxzCj7dEoeq0UKcYAHPRIErcvANPW2xJASyrOfZf5e8=;
        b=e0eSa5pmSM8MQQn7ke7ftXDVNDJREPP4Cq1Z7KNfGiwOf7jf9wmm4JYcc/S/6S2obx
         gr3VRkRMgo4bRSxB2WYq7EdxrrhiYsjpYAqxQDV3T3rLOPknehM2jIa8lFowOglqWcqL
         tpJ56EB3Mz9EOSI34XlJQjr0Sc7eIvkSMrnhlT9zTO+M6J/KEhLAMp9zm3XEi0wNevxP
         CtFU6ionSR6pQyCsVtvwHgR0RxTDGFOcjSMfZWooEQBUUIY+YEo52RRA30mIdCnnHIEh
         v3FzKMdzlgia9+tpZWuh8d+2XLwtXzzwmZVV6j0JnebCFuO+THF/yRg1aNJfyWgae+BK
         95EQ==
X-Gm-Message-State: AOJu0Yw9mA4mDBdb5DVAwW3gbWukI6Mi5XdUguUcWfoa85k0rrMTYtPD
	+fa5W4MQx63Ugcj0+oIzsaKH9IefSFyT78NK5YDifoxA/v7vKB/77SUI
X-Gm-Gg: AY/fxX7Sb3apdVC/Y6GsfGFR4L9uVF/vL1wRoA6lSgUaeCwwGK17h5YArJTMajtLiqS
	mDJw/FByZjBY+1eam9q5Mk6IVs84hEwcI8+PezC9DYcGqiDp0WeVZZbPYmHSDMoUWrubmNSwjn0
	Xd0eqTmGZrlPIdTTpNGsj53S8scej9r9kPbVdviX5LF7uouDIZAJXECARD+gE6tD9AKK9I0fEAu
	Ht7UQu0krstQSTR0p071frF4tx7cEQ1JZcvis9p1Ce37lxH6fhPWDcpSb+CEc3Uam5dlTFAq6vk
	VBuXfQ6sqP7GkZ/eFgwsXe5asiuWwJiT82sNxvNqZ3zVzylMaPwAP3YD6gBzGlAY2h97a0ikj8G
	4GGikk3OWuGIMgrFmgMyEJNf5qPVSFuUAujGIS+uqr+BDTh+997IZ4ymaG2fcJcr+3MgZpqMqdn
	ciUikBuAzfZ2+4a4D505TxdUJWmxin7Cmz
X-Google-Smtp-Source: AGHT+IHq0ZWVPdAhexpY/oKmiMsAeM9ej2P2taNKWdIK1MV2wjUeNhgWpuVPof8pXBllb7D7/T7pXA==
X-Received: by 2002:a17:903:2442:b0:2a0:97d2:a265 with SMTP id d9443c01a7336-2a2f2231aafmr339509855ad.14.1767083049129;
        Tue, 30 Dec 2025 00:24:09 -0800 (PST)
Received: from MRSPARKLE.localdomain ([150.228.155.85])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3d76ceesm296667165ad.91.2025.12.30.00.24.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Dec 2025 00:24:08 -0800 (PST)
From: Jonathan Brophy <professorjonny98@gmail.com>
To: lee Jones <lee@kernel.org>,
	Pavel Machek <pavel@kernel.org>,
	Andriy Shevencho <andriy.shevchenko@linux.intel.com>,
	Jonathan Brophy <professor_jonny@hotmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Radoslav Tsvetkov <rtsvetkov@gradotech.eu>
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-leds@vger.kernel.org
Subject: [PATCH v5 3/7] dt-bindings: leds: Add virtual LED group controller bindings
Date: Tue, 30 Dec 2025 21:23:16 +1300
Message-ID: <20251230082336.3308403-4-professorjonny98@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251230082336.3308403-1-professorjonny98@gmail.com>
References: <20251230082336.3308403-1-professorjonny98@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Jonathan Brophy <professor_jonny@hotmail.com>

Add device tree bindings for the virtual LED group controller that
provides priority-based arbitration for shared physical LEDs across
multiple virtual LED instances.

Bindings for the virtual driver are not describing hardware LEDs they
describe virtual devices made from groups of hardware LEDs created from an array
of LED phandles.

Normally the device tree is used to describe hardware not virtual hardware
but it is particularly useful in situations where you require an LED to be a
specific color by mixing primary colors, such as multi element multi color LEDs
to be operated from a device tree binding or a single trigger.

It also becomes useful with multiple LEDs operating the same indicator such as
ring of light indicators, led rope where the LEDs are driven From different GPIO
outputs unifying the control that can give basic indication during system startup,
shutdown upgrade etc...
The controller implements winner-takes-all arbitration where only the
highest-priority active virtual LED controls the hardware at any given
time. This enables multiple subsystems (boot, error, status indicators)
to request LED control without explicit coordination.

Binding supports:
- Multiple virtual LED children with independent priorities
- GPIO, PWM, I2C, and SPI physical LED devices
- Multicolor and standard (fixed-color) operating modes
- Global ownership tracking to prevent conflicts

Example configurations include:
- High-priority emergency/error RGB indicator
- Medium-priority system state RGBW indicator
- Low-priority warm white fixed-color indicator

Co-developed-by: Radoslav Tsvetkov <rtsvetkov@gradotech.eu>
Signed-off-by: Radoslav Tsvetkov <rtsvetkov@gradotech.eu>
Signed-off-by: Jonathan Brophy <professor_jonny@hotmail.com>
---
 .../leds/leds-group-virtualcolor.yaml         | 170 ++++++++++++++++++
 1 file changed, 170 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/leds/leds-group-virtualcolor.yaml

diff --git a/Documentation/devicetree/bindings/leds/leds-group-virtualcolor.yaml b/Documentation/devicetree/bindings/leds/leds-group-virtualcolor.yaml
new file mode 100644
index 000000000000..88c044f42879
--- /dev/null
+++ b/Documentation/devicetree/bindings/leds/leds-group-virtualcolor.yaml
@@ -0,0 +1,170 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/leds/leds-group-virtualcolor.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Virtual LED Group Controller with Multicolor Support
+
+maintainers:
+  - Jonathan Brophy <professor_jonny@hotmail.com>
+
+description: |
+  The virtual LED group controller provides priority-based arbitration for
+  shared physical LEDs across multiple virtual LED instances. Each virtual LED
+  combines physical monochromatic LEDs into logical units with:
+
+  - Priority-based arbitration: Higher priority virtual LEDs take precedence
+    when multiple virtual LEDs compete for the same physical LEDs
+  - Sequence-based tie-breaking: Among equal priorities, most recent update wins
+  - Winner-takes-all: Only ONE virtual LED controls ALL physical LEDs at any time
+  - Color channel grouping: Organize LEDs by color for multicolor control
+  - Full multicolor ABI support: multi_intensity, multi_index, multi_multipliers
+  - Two operating modes:
+    * Multicolor mode: Dynamic per-channel intensity control (default)
+    * Standard mode: Fixed color ratios via multipliers (brightness only)
+  - Brightness scaling: Master brightness control with per-channel intensity
+  - Global ownership: Physical LEDs claimed exclusively per controller instance
+  - Update batching: Optional coalescing of rapid brightness changes
+
+  Key features:
+  - Supports GPIO, PWM, I2C, and SPI LED devices
+  - Automatic physical LED discovery and claiming
+  - Lock-free arbitration with atomic sequence numbers
+  - Suspend/resume with state preservation
+  - Comprehensive debugfs telemetry (when CONFIG_DEBUG_FS enabled)
+
+  Typical use cases:
+  - System status indicators with boot/update/error priority levels
+  - RGB lighting with priority-based overrides
+  - Multi-element LED arrays unified into single logical controls
+  - LED rings or strips with coordinated color control
+
+properties:
+  compatible:
+    const: leds-group-virtualcolor
+
+  '#address-cells':
+    const: 1
+
+  '#size-cells':
+    const: 0
+
+patternProperties:
+  "^virtual-led@[0-9a-f]+$":
+    type: object
+    $ref: leds-class-virtualcolor.yaml#
+
+required:
+  - compatible
+  - '#address-cells'
+  - '#size-cells'
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/leds/common.h>
+    #include <dt-bindings/gpio/gpio.h>
+
+    /* Physical LED definitions */
+    led-controller {
+        compatible = "gpio-leds";
+
+        led_red: led-red {
+            color = <LED_COLOR_ID_RED>;
+            function = LED_FUNCTION_STATUS;
+            gpios = <&gpio0 10 GPIO_ACTIVE_HIGH>;
+            default-state = "off";
+        };
+
+        led_green: led-green {
+            color = <LED_COLOR_ID_GREEN>;
+            function = LED_FUNCTION_STATUS;
+            gpios = <&gpio0 11 GPIO_ACTIVE_HIGH>;
+            default-state = "off";
+        };
+
+        led_blue: led-blue {
+            color = <LED_COLOR_ID_BLUE>;
+            function = LED_FUNCTION_STATUS;
+            gpios = <&gpio0 12 GPIO_ACTIVE_HIGH>;
+            default-state = "off";
+        };
+
+        led_white: led-white {
+            color = <LED_COLOR_ID_WHITE>;
+            function = LED_FUNCTION_STATUS;
+            gpios = <&gpio0 13 GPIO_ACTIVE_HIGH>;
+            default-state = "off";
+        };
+    };
+
+    pwm-led-controller {
+        compatible = "pwm-leds";
+
+        pwm_red: led-1 {
+            color = <LED_COLOR_ID_RED>;
+            function = LED_FUNCTION_STATUS;
+            pwms = <&pwm 0 7812500>;
+            max-brightness = <255>;
+        };
+
+        pwm_green: led-2 {
+            color = <LED_COLOR_ID_GREEN>;
+            function = LED_FUNCTION_STATUS;
+            pwms = <&pwm 1 7812500>;
+            max-brightness = <255>;
+        };
+
+        pwm_blue: led-3 {
+            color = <LED_COLOR_ID_BLUE>;
+            function = LED_FUNCTION_STATUS;
+            pwms = <&pwm 2 7812500>;
+            max-brightness = <255>;
+        };
+    };
+
+    /* virtual LED definitions */
+    virtual-led-controller {
+        compatible = "leds-group-virtualcolor";
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        /* High-priority RGB virtual LED (emergency/error indicator) */
+        virtual-led@0 {
+            reg = <0>;
+            color = <LED_COLOR_ID_MULTI>;
+            function = LED_FUNCTION_STATUS;
+            priority = <1000>;
+            led-mode = "multicolor";
+            leds = <&led_red>, <&led_green>, <&led_blue>;
+            /* Channels ordered by color ID: [0]=red, [1]=green, [2]=blue */
+        };
+
+        /* Medium-priority RGBW indicator (system state) */
+        virtual-led@1 {
+            reg = <1>;
+            color = <LED_COLOR_ID_MULTI>;
+            function = LED_FUNCTION_STATUS;
+            priority = <500>;
+            led-mode = "multicolor";
+            leds = <&pwm_red>, <&pwm_green>, <&pwm_blue>, <&led_white>;
+            /* Channels: [0]=white (ID=0), [1]=red, [2]=green, [3]=blue */
+        };
+
+        /* Low-priority warm white (fixed color ratios, standard mode) */
+        virtual-led@2 {
+            reg = <2>;
+            color = <LED_COLOR_ID_MULTI>;
+            function = LED_FUNCTION_STATUS;
+            priority = <10>;
+            led-mode = "standard";
+            leds = <&led_red>, <&led_green>, <&led_blue>;
+            /* Channels: [0]=red, [1]=green, [2]=blue */
+            mc-channel-multipliers = <255 180 100>;
+            /* Creates warm white: full red, 70% green, 40% blue */
+        };
+    };
+
+...
--
2.43.0

