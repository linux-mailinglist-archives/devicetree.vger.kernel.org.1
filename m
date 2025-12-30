Return-Path: <devicetree+bounces-250419-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 70141CE9024
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 09:24:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 437C93026BFF
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 08:24:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6FFB230274B;
	Tue, 30 Dec 2025 08:24:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gwYPXjc7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com [209.85.214.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9462303A0A
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 08:24:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767083048; cv=none; b=ZRtd/liK695GxhN41Tzgml3GE5f6IiSwWCL5t/07h9oQtZdBewzwIK63bzYDkPWzqAZNzRrS/5aMuhIMXvLO/Zu1xyutWIAZff8S5TwtkLgfUn3u8xlIlzDvbQ/3Ql631Yf7pbMD8i/rR57tqmBWfSC6yqJK4mhItJsvMPy5znw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767083048; c=relaxed/simple;
	bh=OH5YDLvT7eFInoiNwMPu3oyYKH1FopxqgxlbMJ+9IBM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=G+LO9jrugCGkZeiRwdJpNpEliGUtvhEEyryKFAFLv9X5XIT8xorkC7M92gynxykKamCvx2eNGywnhZ4U2J0FXLm8yUTH+BjySLXTe2AP2xzDNr0RRZ3OJZ/37x6BNhVIAHSL0UkaBXfpMdYfGpLf3hhdGFrUOcgJx+FvrTg1lCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gwYPXjc7; arc=none smtp.client-ip=209.85.214.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f194.google.com with SMTP id d9443c01a7336-29f2676bb21so131098145ad.0
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 00:24:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767083044; x=1767687844; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VkbI+3IsRhcx6hKZzGBXpGmnt+yRxhw1HJp+AgA3hxo=;
        b=gwYPXjc7UsYyMUGvKQt1v4LuwZKL/ahQWTRddwPPJTbgxzZAwH7oZAhdRC4/2yqT7N
         YSGV6Nvce/uhthvJUNKInU1Pb20e8lihJli+vlDKP0INrkLHLiXOKnxyp5kOnTRjlkjY
         Sko2Fgkp1qsn0PMgFk+Ul6gFvDrSyvhUjm534cw+rn2ocpz3htOO/9KYosI49K8C1d7O
         UbKXch7zuuPQIyEqmn4L3jisr3Mqfud01LTHL871m13FLswISJ3qtZdkFyl+IgnSZ0ru
         mQXOn6bodIpJZTkQdz4gV+0q5tU4UwnMsN//9RNARFpGowFF+WV7vDM6rpYD4CFXtHrd
         tKjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767083044; x=1767687844;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=VkbI+3IsRhcx6hKZzGBXpGmnt+yRxhw1HJp+AgA3hxo=;
        b=RvYc6Biz7MmYXtyVhudjyjdu/mxzhR0uqD74ZCpNteN7UidJRdKKpV+Wf85cbJkZ7P
         96J3tdJ69s0uH4JkQlBArVMP/JO0rrMSOMYNuz+ath59Lv546rIQJPfMu2hr5WrgZAy8
         ss9c+DG/PGchbvhCuXc8IsExoGgO9XEe2/fZx4a0xCYUFGZi7OG3qSUX/vaqUuWRGG4T
         D4xhRE9gsccHwKw2AGlBgtlEg9w6lDJA3A1JFPpMBHCR6VcNA0mvW3FW5zHE8DEWFU2s
         TIP/rqSdMcKZVacUZmk0kXEg9UTKXwEp5e8nPf1VPK7KOfRtElkeQDqwnHPRHaG9itfd
         Ry7A==
X-Gm-Message-State: AOJu0YygDlizuMkH/mW/tZBHGdAeqFzQBOzkcMFMDbSUuyi5dLk9VWn6
	mQ60zRKRsB8e0gytoB4jPUP2cm2cyJ6EWfgoPZ8FCahPr7Z4sJYU/fks
X-Gm-Gg: AY/fxX7XznZDfaC4q2gsGHpZ6MeJylWb3SiUZkhvkCh5vEWaMBwmIExteAa1F78ApkD
	Jb+K+gw/xlLN527RlxMvLKASO2GWsg9BGcQORs8HG/sS6QAp4FXXCM2MO+fc/3Zo0fv9h0gDzg0
	CBOduavR/daaNUiKnfDfMSqLuzzPnFlNjQ+4CdrCiOk6xxpIibFtA6+avXIBGa8UGTbnIfELgw0
	Bvycqb6ndE3ULU2b2jpMXY1+mPl/URu/L0POgLlyBuygXk6RsSwWeeVHyMNdRDttpFn5HK3wrL/
	gxigQzdF6TXCXPuG2ZfS9mU1zZ9QYVP4PPRIHx80+EYPk6jZHQXv0m5GmAU63y0y/OLr2YRBCWo
	ItKlc3kZMLLzuPj9dhyI4EyatGNIFtdSC2R0gykpbWWBY+IaGYeT4cKbcSDIfLwRxZ5TZJMcGg7
	sRwlR9BtCQAESeUjcea2uALFvTP/J9waeu/x/a5AxEO+A=
X-Google-Smtp-Source: AGHT+IEpXx+1/9xAccF3LMXuAdIjDRce7eKrzDvVsd1Ni161trcdyhWaIN+5RBXPKj86BP3Q5hI8ew==
X-Received: by 2002:a17:902:d507:b0:2a0:b06d:1585 with SMTP id d9443c01a7336-2a2f2836801mr361122605ad.34.1767083043885;
        Tue, 30 Dec 2025 00:24:03 -0800 (PST)
Received: from MRSPARKLE.localdomain ([150.228.155.85])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3d76ceesm296667165ad.91.2025.12.30.00.23.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Dec 2025 00:24:03 -0800 (PST)
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
Subject: [PATCH v5 2/7] dt-bindings: leds: Add virtual LED class bindings
Date: Tue, 30 Dec 2025 21:23:15 +1300
Message-ID: <20251230082336.3308403-3-professorjonny98@gmail.com>
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

Add device tree bindings for the virtual LED class of led devices.
for representation of virtual LEDs that combine multiple physical monochromatic
LEDs into a group.

Usefull for representing complex system states without complex userspace scripting

Key binding properties:
- priority: Arbitration priority (0-2147483647, higher wins)
- led-mode: Operating mode (multicolor or standard/fixed-color)
- leds: Phandle array to physical LED devices
- mc-channel-multipliers: Per-channel brightness multipliers

Channel ordering is deterministic, sorted by ascending LED_COLOR_ID
value. The multi_index sysfs attribute allows runtime verification.

Co-developed-by: Radoslav Tsvetkov <rtsvetkov@gradotech.eu>
Signed-off-by: Radoslav Tsvetkov <rtsvetkov@gradotech.eu>
Signed-off-by: Jonathan Brophy <professor_jonny@hotmail.com>
---
 .../leds/leds-class-virtualcolor.yaml         | 197 ++++++++++++++++++
 1 file changed, 197 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/leds/leds-class-virtualcolor.yaml

diff --git a/Documentation/devicetree/bindings/leds/leds-class-virtualcolor.yaml b/Documentation/devicetree/bindings/leds/leds-class-virtualcolor.yaml
new file mode 100644
index 000000000000..4a3721455648
--- /dev/null
+++ b/Documentation/devicetree/bindings/leds/leds-class-virtualcolor.yaml
@@ -0,0 +1,197 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/leds/leds-class-virtualcolor.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Virtual LED class device with priority-based arbitration
+
+maintainers:
+  - Jonathan Brophy <professor_jonny@hotmail.com>
+
+description: |
+  Represents a single virtual LED that combines one or more physical monochromatic
+  LEDs. Multiple virtual LEDs can share the same physical LEDs, with priority-based
+  arbitration determining which virtual LED's state is displayed.
+
+  The driver implements winner-takes-all arbitration:
+  - Only virtual LEDs with brightness > 0 participate in arbitration
+  - Highest priority wins (ties broken by sequence number - most recent wins)
+  - Winner controls ALL physical LEDs
+  - Physical LEDs not used by winner are turned off
+
+  Two operating modes are supported:
+
+  1. Multicolor mode (default):
+     - Full multicolor LED ABI support
+     - Exposes multi_intensity, multi_index, multi_multipliers in sysfs
+     - Per-channel intensity control (0-255)
+     - Channel multipliers for color temperature adjustment
+     - Master brightness scales all channels proportionally
+
+  2. Standard mode:
+     - Fixed color ratios via mc-channel-multipliers
+     - Only brightness control available (no intensity changes)
+     - Useful for fixed-color LEDs (e.g., warm white, amber)
+
+  Sysfs interface (multicolor mode):
+  - /sys/class/leds/<led>/brightness - Master brightness (0-max_brightness)
+  - /sys/class/leds/<led>/mc/multi_intensity - Per-channel intensities (space-separated)
+  - /sys/class/leds/<led>/mc/multi_index - Color IDs per channel (read-only)
+  - /sys/class/leds/<led>/mc/multi_multipliers - Channel multipliers (read-only)
+
+properties:
+  $nodename:
+    pattern: "^virtual-led(@[0-9a-f])?$"
+
+  reg:
+    maxItems: 1
+    description: |
+      Unique index of this virtual LED within the controller. Used for node addressing.
+
+  function:
+    description: |
+      LED function identifier. recommended to use: LED_FUNCTION_VIRTUAL_STATUS,
+      See include/dt-bindings/leds/common.h
+
+  priority:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    default: 0
+    minimum: 0
+    maximum: 2147483647
+    description: |
+      Arbitration priority for this virtual LED (signed 32-bit integer).
+      When multiple virtual LEDs sharing physical LEDs are active (brightness > 0),
+      only the highest-priority LED's state is displayed.
+
+      Tie-breaking: If priorities are equal, the most recently updated virtual LED wins.
+
+      Suggested priority ranges:
+        0-99:   Normal operation indicators
+        100-499: System state indicators (boot, shutdown)
+        500-999: Warning/error indicators
+        1000+:   Critical alerts and emergency overrides
+
+  led-mode:
+    $ref: /schemas/types.yaml#/definitions/string
+    enum: [multicolor, standard]
+    default: multicolor
+    description: |
+      Operating mode for this virtual LED:
+
+      - "multicolor": (default) Full multicolor ABI with dynamic intensity control
+        * Exposes multi_intensity sysfs attribute for per-channel control
+        * Channels can be adjusted independently at runtime
+        * Suitable for RGB LEDs, color-changing indicators
+
+      - "standard": Fixed color ratios, brightness-only control
+        * Channel intensities fixed by mc-channel-multipliers
+        * Only brightness sysfs attribute available (no multi_intensity)
+        * Suitable for warm white, amber, or other fixed-color LEDs
+
+  leds:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    minItems: 1
+    maxItems: 255
+    description: |
+      Array of phandles to physical LED devices that compose this virtual LED.
+      LEDs are automatically grouped by their 'color' property into channels.
+
+      Channel ordering: Channels are ordered by ascending LED_COLOR_ID value.
+      Only colors present in the LED list are included (no sparse indices).
+
+      Color ID values (from include/dt-bindings/leds/common.h):
+        LED_COLOR_ID_WHITE = 0
+        LED_COLOR_ID_RED = 1
+        LED_COLOR_ID_GREEN = 2
+        LED_COLOR_ID_BLUE = 3
+        LED_COLOR_ID_AMBER = 4
+        LED_COLOR_ID_VIOLET = 5
+        LED_COLOR_ID_YELLOW = 6
+        LED_COLOR_ID_IR = 7
+        ... (see header for complete list)
+
+      The /sys/class/leds/<led>/mc/multi_index file reports the color ID for
+      each channel, allowing userspace to verify the ordering.
+
+      Supported LED types:
+      - GPIO LEDs (gpio-leds compatible)
+      - PWM LEDs (pwm-leds compatible)
+      - I2C/SPI LED controllers (any with brightness_set or brightness_set_blocking)
+
+      Example 1 - RGB LED:
+        leds = <&led_red>, <&led_green>, <&led_blue>;
+        Results in 3 channels: [0]=red (ID 1), [1]=green (ID 2), [2]=blue (ID 3)
+
+      Example 2 - RGBW LED:
+        leds = <&led_red>, <&led_green>, <&led_blue>, <&led_white>;
+        Results in 4 channels: [0]=white (ID 0), [1]=red (ID 1), [2]=green (ID 2), [3]=blue (ID 3)
+        Note: White comes first because LED_COLOR_ID_WHITE = 0
+
+      Example 3 - Non-contiguous IDs:
+        leds = <&led_amber>, <&led_red>;
+        Results in 2 channels: [0]=red (ID 1), [1]=amber (ID 4)
+
+      Userspace verification:
+        $ cat /sys/class/leds/status:multi/mc/multi_index
+        1 2 3
+        # Confirms: [0]=red, [1]=green, [2]=blue
+
+  mc-channel-multipliers:
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    minItems: 1
+    maxItems: 255
+    description: |
+      Per-channel brightness multipliers (0-255) for color temperature adjustment
+      and normalization. Array must have one entry per channel.
+
+      Channel ordering: Array indices must match the channel order, which is
+      determined by ascending LED_COLOR_ID value. Only colors present in the
+      'leds' property are included.
+
+      For predictable DT configuration, list multipliers in ascending color ID order.
+      The /sys/class/leds/<led>/mc/multi_index file can verify the ordering at runtime.
+
+      In multicolor mode:
+        - Scales the intensity value before applying brightness
+        - Formula: final = (intensity * multiplier / 255) * brightness / max_brightness
+        - Useful for: Color temperature control, vendor normalization, power limiting
+        - Default: 255 (no scaling) for all channels if omitted
+
+      In standard mode:
+        - Defines the FIXED color ratios (intensity changes not allowed)
+        - Formula: final = multiplier * brightness / max_brightness
+        - Useful for: Fixed-color LEDs (warm white, amber)
+        - REQUIRED in standard mode
+
+      Example 1 - RGB with equal scaling:
+        leds = <&red>, <&green>, <&blue>;
+        mc-channel-multipliers = <255 255 255>;
+        # Channels: [0]=red, [1]=green, [2]=blue - all at full scale
+
+      Example 2 - RGBW warm white (standard mode):
+        leds = <&red>, <&green>, <&blue>, <&white>;
+        mc-channel-multipliers = <180 255 200 100>;
+        # Channels: [0]=white:180, [1]=red:255, [2]=green:200, [3]=blue:100
+        # Note: White (ID=0) comes first, then red (ID=1), green (ID=2), blue (ID=3)
+
+      Example 3 - Color temperature adjustment:
+        leds = <&red>, <&green>, <&blue>;
+        mc-channel-multipliers = <255 180 100>;
+        # Creates warm white by reducing green/blue relative to red
+
+required:
+  - reg
+  - leds
+
+allOf:
+  - $ref: common.yaml#
+  - if:
+      properties:
+        led-mode:
+          const: standard
+    then:
+      required:
+        - mc-channel-multipliers
+
+unevaluatedProperties: false
--
2.43.0

