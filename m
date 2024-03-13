Return-Path: <devicetree+bounces-50340-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B3E0487B12B
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 20:10:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 654DE28DD36
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 19:10:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2370F745DC;
	Wed, 13 Mar 2024 18:29:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Y5DOZNzi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA05E745CF
	for <devicetree@vger.kernel.org>; Wed, 13 Mar 2024 18:29:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710354544; cv=none; b=YLetC2WODCv93xy/TRA7vp4n2fTmH+6Y6tILTzO/hFJOvvAQx9/puMcWJ5zLLgG6pmQyC2nkoPL5K2MI+a7Zu0lrVQvAt2RojoU4HeclwaDbGnvE2PucNwAXsbI1ibBRoHUrVG1Ll6OEX7SVIC7fTwVUwdlYX85+CGWxWF042nE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710354544; c=relaxed/simple;
	bh=bO0kt7AO7t61PvpHXNNdrdrLQbOyPYBQGn8YDjEi9O8=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=anp342UurgZ+60WaSbJqCWIYB01/9z99W+egybfVpUb0l0shgqQ9iihNGOWrxU2w+BMM3NjOvV1EmvcyryOOH6chYWsmjqXCg0v001nHQuFAIClwHoEV70jQv4BSZ0fz1TA+jAiyiHWILPs6raV5GQpCT/1TuKscXLhyEDU5TOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Y5DOZNzi; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-33e92b3b5c9so81279f8f.2
        for <devicetree@vger.kernel.org>; Wed, 13 Mar 2024 11:29:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710354540; x=1710959340; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=cumHnSAU0uyTVlzJRc7lws76GfX96Vv3WFCUpPGbENc=;
        b=Y5DOZNzicwQW0DUFtIRfPHocyE3vXGq4ogAqLPrIlBdW0pS+n2viScDeEawc36n6zY
         tVqjO26k0qqi6dcwLJe5UBJL+60YuQt5YheIqg63h4Hkw/J+FX8kz4eFq8e8mHgmgxV7
         8ciP0wWTp8NFR2wJ8gMUeU2rFJqppb7RXVq20D/l7f3h6Y2yCwAyJGOlXHsascSXaNeu
         p9bEDuv+20ZcE+TQYxhGBXCS7/MNcCnm7AP/rlHGsym/EyE6qlSDBtjUKnxtM/2Et2mH
         v8C6ANSXEQuSXEXWsdjcOkU2NyHfC3GOFAo1nJ9YUfZj1EFh8ATdwkeHynxCNl4018By
         U1Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710354540; x=1710959340;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cumHnSAU0uyTVlzJRc7lws76GfX96Vv3WFCUpPGbENc=;
        b=i2PBVr/jYMrsPMrByXhti5mFVJq671u7D4DfiBH6IAnYu234x4KI69jTlVmQHRwjFy
         /6M/GJj/+Ie4tP7u0/ppGs8f8yAT5NiE5hbmBkXZb75uoldtdFgbnlDqKi3RHb/3e/Xb
         Zh1UUS5lh71h/CaKRWQhWzQ9VdlUlxTqhVZZD6RmoxeSUhPADvLxrbQEZzkyECLLTr3D
         ooCXCvepuvM0umWXaeRzf0TBOZK3AZpNcs6QdA5+R5BXJf/suMQlcGAwtj/MdZ+alOLA
         6FDVsC2/s32XgekrX5RV4dlzF2roCFosWfAzhRwzonyDfNVYciTH77jkQV9q+v/mdWL/
         zfsw==
X-Forwarded-Encrypted: i=1; AJvYcCVeuRiZ/9isNCoCjyW9MT5W6HBz2IDGtecS8IoblON4g5f6X+t7Zuh2UZ0XkBsIwJltoNbMv4aAx2M6RhcYKjZZM0Yv2gDPa0lW0A==
X-Gm-Message-State: AOJu0YweT/idd7XsZnrqUWKW7xlH5JeolM6ebWYLX1wjmx9qMT8KXwTW
	JolVs9efEZS799l+QZ33mhnrmlx8VzTpK8GMStdKqsOgQIVILnathblmcRKXWQY=
X-Google-Smtp-Source: AGHT+IGaE5/7m97Nm1cHOLOaHT9aDnr7ULEzW5g83EPcGdB1e1IkqWmmmUrcRYQgLIheC701iDYxBA==
X-Received: by 2002:a5d:6a52:0:b0:33e:7942:4139 with SMTP id t18-20020a5d6a52000000b0033e79424139mr2723567wrw.61.1710354540100;
        Wed, 13 Mar 2024 11:29:00 -0700 (PDT)
Received: from krzk-bin.. ([178.197.222.97])
        by smtp.gmail.com with ESMTPSA id z4-20020adff744000000b0033e7910ae23sm12218118wrp.49.2024.03.13.11.28.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Mar 2024 11:28:59 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Inki Dae <inki.dae@samsung.com>,
	Seung-Woo Kim <sw0312.kim@samsung.com>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2] dt-bindings: display: samsung,exynos5-dp: convert to DT Schema
Date: Wed, 13 Mar 2024 19:28:55 +0100
Message-Id: <20240313182855.14140-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Convert Samsung Exynos5250/5420 SoC Display Port Controller bindings to
DT schema with a change: add power-domains, already used in DTS.

This Display Port controller is actually variant of Analogix Display
Port bridge, however new DT Schema does not reference analogix,dp.yaml,
because of incompatibilities in the driver.  The analogix,dp.yaml
expects two ports, input and output, but Linux Exynos DP DRM driver and
DTS use only one port: output.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes in v2:
1. Document deprecated samsung,hpd-gpios
---
 .../bindings/display/exynos/exynos_dp.txt     | 112 ------------
 .../display/samsung/samsung,exynos5-dp.yaml   | 163 ++++++++++++++++++
 2 files changed, 163 insertions(+), 112 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/display/exynos/exynos_dp.txt
 create mode 100644 Documentation/devicetree/bindings/display/samsung/samsung,exynos5-dp.yaml

diff --git a/Documentation/devicetree/bindings/display/exynos/exynos_dp.txt b/Documentation/devicetree/bindings/display/exynos/exynos_dp.txt
deleted file mode 100644
index 3a401590320f..000000000000
--- a/Documentation/devicetree/bindings/display/exynos/exynos_dp.txt
+++ /dev/null
@@ -1,112 +0,0 @@
-The Exynos display port interface should be configured based on
-the type of panel connected to it.
-
-We use two nodes:
-	-dp-controller node
-	-dptx-phy node(defined inside dp-controller node)
-
-For the DP-PHY initialization, we use the dptx-phy node.
-Required properties for dptx-phy: deprecated, use phys and phy-names
-	-reg: deprecated
-		Base address of DP PHY register.
-	-samsung,enable-mask: deprecated
-		The bit-mask used to enable/disable DP PHY.
-
-For the Panel initialization, we read data from dp-controller node.
-Required properties for dp-controller:
-	-compatible:
-		should be "samsung,exynos5-dp".
-	-reg:
-		physical base address of the controller and length
-		of memory mapped region.
-	-interrupts:
-		interrupt combiner values.
-	-clocks:
-		from common clock binding: handle to dp clock.
-	-clock-names:
-		from common clock binding: Shall be "dp".
-	-phys:
-		from general PHY binding: the phandle for the PHY device.
-	-phy-names:
-		from general PHY binding: Should be "dp".
-
-Optional properties for dp-controller:
-	-interlaced:
-		interlace scan mode.
-			Progressive if defined, Interlaced if not defined
-	-vsync-active-high:
-		VSYNC polarity configuration.
-			High if defined, Low if not defined
-	-hsync-active-high:
-		HSYNC polarity configuration.
-			High if defined, Low if not defined
-	-samsung,hpd-gpio:
-		Hotplug detect GPIO.
-			Indicates which GPIO should be used for hotplug
-			detection
-	-video interfaces: Device node can contain video interface port
-			nodes according to [1].
-	- display-timings: timings for the connected panel as described by
-		Documentation/devicetree/bindings/display/panel/display-timing.txt
-
-For the below properties, please refer to Analogix DP binding document:
- * Documentation/devicetree/bindings/display/bridge/analogix,dp.yaml
-	-phys (required)
-	-phy-names (required)
-	-hpd-gpios (optional)
-	 force-hpd (optional)
-
-Deprecated properties for DisplayPort:
--interlaced:            deprecated prop that can parsed from drm_display_mode.
--vsync-active-high:     deprecated prop that can parsed from drm_display_mode.
--hsync-active-high:     deprecated prop that can parsed from drm_display_mode.
--samsung,ycbcr-coeff:   deprecated prop that can parsed from drm_display_mode.
--samsung,dynamic-range: deprecated prop that can parsed from drm_display_mode.
--samsung,color-space:   deprecated prop that can parsed from drm_display_info.
--samsung,color-depth:   deprecated prop that can parsed from drm_display_info.
--samsung,link-rate:     deprecated prop that can reading from monitor by dpcd method.
--samsung,lane-count:    deprecated prop that can reading from monitor by dpcd method.
--samsung,hpd-gpio:      deprecated name for hpd-gpios.
-
--------------------------------------------------------------------------------
-
-Example:
-
-SOC specific portion:
-	dp-controller {
-		compatible = "samsung,exynos5-dp";
-		reg = <0x145b0000 0x10000>;
-		interrupts = <10 3>;
-		interrupt-parent = <&combiner>;
-		clocks = <&clock 342>;
-		clock-names = "dp";
-
-		phys = <&dp_phy>;
-		phy-names = "dp";
-	};
-
-Board Specific portion:
-	dp-controller {
-		display-timings {
-			native-mode = <&lcd_timing>;
-			lcd_timing: 1366x768 {
-				clock-frequency = <70589280>;
-				hactive = <1366>;
-				vactive = <768>;
-				hfront-porch = <40>;
-				hback-porch = <40>;
-				hsync-len = <32>;
-				vback-porch = <10>;
-				vfront-porch = <12>;
-				vsync-len = <6>;
-			};
-		};
-
-		ports {
-			port@0 {
-				dp_out: endpoint {
-					remote-endpoint = <&bridge_in>;
-				};
-			};
-		};
-	};
diff --git a/Documentation/devicetree/bindings/display/samsung/samsung,exynos5-dp.yaml b/Documentation/devicetree/bindings/display/samsung/samsung,exynos5-dp.yaml
new file mode 100644
index 000000000000..dda9097a7911
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/samsung/samsung,exynos5-dp.yaml
@@ -0,0 +1,163 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/samsung/samsung,exynos5-dp.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Samsung Exynos5250/Exynos5420 SoC Display Port
+
+maintainers:
+  - Inki Dae <inki.dae@samsung.com>
+  - Seung-Woo Kim <sw0312.kim@samsung.com>
+  - Kyungmin Park <kyungmin.park@samsung.com>
+  - Krzysztof Kozlowski <krzk@kernel.org>
+
+properties:
+  compatible:
+    const: samsung,exynos5-dp
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    items:
+      - const: dp
+
+  display-timings:
+    $ref: /schemas/display/panel/display-timings.yaml#
+
+  interrupts:
+    maxItems: 1
+
+  hpd-gpios:
+    description:
+      Hotplug detect GPIO.
+      Indicates which GPIO should be used for hotplug detection
+
+  phys:
+    maxItems: 1
+
+  phy-names:
+    items:
+      - const: dp
+
+  power-domains:
+    maxItems: 1
+
+  interlaced:
+    type: boolean
+    deprecated: true
+    description:
+      Interlace scan mode. Progressive if defined, interlaced if not defined.
+
+  vsync-active-high:
+    type: boolean
+    deprecated: true
+    description:
+      VSYNC polarity configuration. High if defined, low if not defined
+
+  hsync-active-high:
+    type: boolean
+    deprecated: true
+    description:
+      HSYNC polarity configuration. High if defined, low if not defined
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+
+    properties:
+      port:
+        $ref: /schemas/graph.yaml#/properties/port
+        description:
+          Port node with one endpoint connected to a dp-connector node.
+
+    required:
+      - port
+
+  samsung,hpd-gpios:
+    maxItems: 1
+    deprecated: true
+
+  samsung,ycbcr-coeff:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    deprecated: true
+    description:
+      Deprecated prop that can parsed from drm_display_mode.
+
+  samsung,dynamic-range:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    deprecated: true
+    description:
+      Deprecated prop that can parsed from drm_display_mode.
+
+  samsung,color-space:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    deprecated: true
+    description:
+      Deprecated prop that can parsed from drm_display_info.
+
+  samsung,color-depth:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    deprecated: true
+    description:
+      Deprecated prop that can parsed from drm_display_info.
+
+  samsung,link-rate:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    deprecated: true
+    description:
+      Deprecated prop that can reading from monitor by dpcd method.
+
+  samsung,lane-count:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    deprecated: true
+    description:
+      Deprecated prop that can reading from monitor by dpcd method.
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - interrupts
+  - phys
+  - phy-names
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/exynos5250.h>
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    dp-controller@145b0000 {
+        compatible = "samsung,exynos5-dp";
+        reg = <0x145b0000 0x1000>;
+        clocks = <&clock CLK_DP>;
+        clock-names = "dp";
+        interrupts = <10 3>;
+        interrupt-parent = <&combiner>;
+        phys = <&dp_phy>;
+        phy-names = "dp";
+        pinctrl-0 = <&dp_hpd>;
+        pinctrl-names = "default";
+        power-domains = <&pd_disp1>;
+
+        samsung,color-space = <0>;
+        samsung,color-depth = <1>;
+        samsung,link-rate = <0x0a>;
+        samsung,lane-count = <2>;
+        hpd-gpios = <&gpx0 7 GPIO_ACTIVE_HIGH>;
+
+        ports {
+            port {
+                dp_out: endpoint {
+                    remote-endpoint = <&bridge_in>;
+                };
+            };
+        };
+    };
-- 
2.34.1


