Return-Path: <devicetree+bounces-237125-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 69C0AC4D218
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 11:43:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1DBD01897AE9
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 10:43:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42D9334E763;
	Tue, 11 Nov 2025 10:42:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HLVPssYf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C0BB34F472
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 10:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762857775; cv=none; b=RDhBQ8w6BgtmC7j1de4+E3doGC63eZc8wiSC0Ok5rsVyVhMXO1vmLI3dF9nHSGJ96NdEawOY4wK4xzOfUVDSZylqNUwJL3R8T9C5geH0lYZDjSSvBECOHmZk6+wwnEbJjd+aao6+4X64ACbdqgljEG4XqJIO0BFjODxBM4pDTmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762857775; c=relaxed/simple;
	bh=07HBWmrT/H7zno+mG0Fc4iUEDkZr7DmZa2LvkHNFOQU=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=hSJ0kv+xuvDot+TlXSkI5tYk8metC7zcaN31chOxtgD7MO5Ertsaxe2zsMMFdJ9+q3dNV/ZeHh3W1WJdtGHksaEyg9FdCfmarUshHpiAIevYE9cG7YzNda0VspFgJ6skf4MoBPyYPX/rO4kNAc1f5Mr51ELWItgkkfJ5PGbWnjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HLVPssYf; arc=none smtp.client-ip=209.85.215.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f172.google.com with SMTP id 41be03b00d2f7-b556284db11so3152639a12.0
        for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 02:42:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762857773; x=1763462573; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fYUsDbsuuzTOSOtHBw8aAUbI3zAG5zqYtHfT8rBYa7k=;
        b=HLVPssYftnHHNoapg3S2CqXrYMBkcu5mTq50K2WuFegHFT782sdFkBgXDclUscFsEB
         FVm8iLMyj4O+navQXXvrXBFtUJ23yXKkPZxc+9aPFXYIv5yoJcBAMj5H+v+Iyrk2y0hL
         /qSUdKroU9dP3tFuq4Mxm95FgMp/RF1VaqgRDSITHREpA1c/K5ptW6ZDKFhdgxpV11n4
         OXCc/sgrI071IkdjBTplSWL5z+VuSLUmnuuxBEGieNWrVHT0cSijpUERXHBlEC8/CTJ/
         XgTEj8OujyGezYSCfYM41EktMdo7PzOi4Nf7PekP3c++X7Ms5dziSdqyKEMS7SVqhSrN
         ITPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762857773; x=1763462573;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fYUsDbsuuzTOSOtHBw8aAUbI3zAG5zqYtHfT8rBYa7k=;
        b=MEg8o0ZJT4gtwxfvxBOM1R5ahi1zPbS/A4hdRHg+oGPN0TVIz5bzYWa6pebGANuHN6
         2+6lcDrOyQPSzIel5VgGuFAVGPRFupywSs+IFMY7bTkTc/4zBg3PS1/cvX2KRHUk2Dd8
         44MXhXjAfCvYE7H5WGV4Zv1wST6oklzUWbwifD44WkPkQ6vzrRUN9fsDujAhJcQW5YBx
         RTMY+/OyPufBHcxoUbzmwfOE/E5Tdn6Y2uqjMi1Ai4/kQaSY3fR/Zu9nTwL2+Khd7+WI
         72XzMfGjMEUsjhfssvIeIcRDsvKUOdhPxRASW2QeehcwXucwZhnzC74AzmKEojs+szil
         nKag==
X-Forwarded-Encrypted: i=1; AJvYcCWm3vF79x6PLyegxv+e6WJHQ4Q36NttL0iIutGCjFX29gi4y8CTT1RLQW0dRDwKo2kagzV+rCoynbbv@vger.kernel.org
X-Gm-Message-State: AOJu0Ywm53JOdpe4epxn0U6UOUw7p9Y7OutnuHTb/sWNZAX9IvFkhDxc
	XnQrIYCxfDnfSwKcZQTo29mM754yeNrbYYKEewAEgcFdeZ4YKxkgi7id
X-Gm-Gg: ASbGnctnNgHsuCKmz0Q51S2vHhXhHZUyXHEXnxuzK9f5Zvw8FkmRXUsv7snhbTatbBG
	O0/CXcpKuUsIgIL1TLx+yXxjpeHP7+thYT2VV4NQWqSe+QOP0ICs0wjp/8yFuVbB5c6BrS3px5l
	AK2pOZg5+5u44fAtnbE9VSeOhCom4ABHzUjZxj3JpiwhltrCc3dgxEJq3AZcWiQOPL8nrROQ1JP
	H9XCYO99kATIPxFbDccaHgjtvbNUOeHHKjazzVcuR/lSlc7NKH2uDDH5yH961dEjVjaf2yc1Jw+
	3ArSOX9wTUUAHn4nqeIOVobp0jrJ1tRNaSxFlik4KKo2D83SEeWv5tFWUD5aDt3ctUDYB9JGzXs
	DpBH+Col/Nu8SDX/rWcuWuW0Cukhitv85Pdvos1UqqBSHe+LANSFmBGnGOvX+ZZlRMIrKeHZH+3
	9yOcJenl9lQ26mpmLuKtxvLupMDA==
X-Google-Smtp-Source: AGHT+IHKKW8uq/mixyYVwcE/GpKbjkb15Z3bYzo5IdPyn+w9o2ptPT8ipRXj2MXgq6Fk0DjaNvvO6g==
X-Received: by 2002:a17:902:e78f:b0:28d:18d3:46ca with SMTP id d9443c01a7336-297e56df08emr157512625ad.49.1762857772692;
        Tue, 11 Nov 2025 02:42:52 -0800 (PST)
Received: from test-HP-Desktop-Pro-G3.. ([103.218.174.23])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29846334db5sm9875235ad.32.2025.11.11.02.42.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Nov 2025 02:42:52 -0800 (PST)
From: Sudarshan Shetty <tessolveupstream@gmail.com>
To: andersson@kernel.org,
	konradybcio@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sudarshan Shetty <tessolveupstream@gmail.com>
Subject: [PATCH v1 1/2] dt-bindings: arm: qcom: Add waveshare MIPI-DSI panels support
Date: Tue, 11 Nov 2025 16:12:44 +0530
Message-Id: <20251111104245.3420041-1-tessolveupstream@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Device tree bindings for Waveshare MIPI-DSI panels
of various sizes (5.0, 5.5, 7.0, 8.0, and 10.1).
These panels require proper power sequencing via an external
regulator and a backlight node for brightness control.

Signed-off-by: Sudarshan Shetty <tessolveupstream@gmail.com>
---
 .../display/panel/waveshare,dsi-panel.yaml    | 84 +++++++++++++++++++
 ...waveshare,touchscreen-panel-regulator.yaml | 72 ++++++++++++++++
 2 files changed, 156 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/waveshare,dsi-panel.yaml
 create mode 100644 Documentation/devicetree/bindings/regulator/waveshare,touchscreen-panel-regulator.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/waveshare,dsi-panel.yaml b/Documentation/devicetree/bindings/display/panel/waveshare,dsi-panel.yaml
new file mode 100644
index 000000000000..a42ce065124f
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/waveshare,dsi-panel.yaml
@@ -0,0 +1,84 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/waveshare,dsi-panel.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Waveshare 10.1" DSI Touch Display Panel
+
+maintainers:
+  - Sudarshan Shetty <tessolveupstream@gmail.com>
+
+allOf:
+  - $ref: panel-common.yaml#
+
+properties:
+  compatible:
+    enum:
+      - waveshare,12.3-dsi-touch-a,4lane
+      - waveshare,10.1-dsi-touch-a
+      - waveshare,10.1-dsi-touch-a-4lane
+      - waveshare,10.1-dsi-touch-b
+      - waveshare,10.1-dsi-touch-b,4lane
+      - waveshare,9.0-dsi-touch-b
+      - waveshare,9.0-dsi-touch-b,4lane
+      - waveshare,8.8-dsi-touch-a
+      - waveshare,8.0-dsi-touch-a
+      - waveshare,8.0-dsi-touch-a-4lane
+      - waveshare,7.0-dsi-touch-a
+      - waveshare,7.0-dsi-touch-b
+      - waveshare,5.5-dsi-touch-a
+      - waveshare,5.0-dsi-touch-a
+      - waveshare,4.0-dsi-touch-c
+      - waveshare,3.4-dsi-touch-c
+
+  reg:
+    description: DSI virtual channel
+    maxItems: 1
+
+  vdd-supply:
+    description: Power supply regulator for the panel
+
+  reset-gpios:
+    maxItems: 1
+    description: GPIO to control panel reset
+
+  enable-gpios:
+    maxItems: 1
+    description: GPIO to control panel power enable
+
+required:
+  - compatible
+  - reg
+  - vdd-supply
+  - reset-gpios
+  - enable-gpios
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    dsi@ae94000 {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        panel@1 {
+            compatible = "waveshare,10.1-dsi-touch-a";
+            reg = <1>;
+            vdd-supply = <&vreg_l11a>;
+            reset-gpios = <&display_mcu 1 GPIO_ACTIVE_HIGH>;
+            enable-gpios = <&display_mcu 2 GPIO_ACTIVE_HIGH>;
+
+            port {
+                panel_in: endpoint {
+                    remote-endpoint = <&mdss_dsi0_out>;
+                };
+            };
+        };
+    };
+
+    mdss_dsi0_out: endpoint {
+        remote-endpoint = <&panel_in>;
+    };
diff --git a/Documentation/devicetree/bindings/regulator/waveshare,touchscreen-panel-regulator.yaml b/Documentation/devicetree/bindings/regulator/waveshare,touchscreen-panel-regulator.yaml
new file mode 100644
index 000000000000..be81be5d2d74
--- /dev/null
+++ b/Documentation/devicetree/bindings/regulator/waveshare,touchscreen-panel-regulator.yaml
@@ -0,0 +1,72 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/regulator/waveshare,touchscreen-panel-regulator.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Waveshare Touchscreen Panel Regulator
+
+maintainers:
+  - Sudarshan Shetty <tessolveupstream@gmail.com>
+
+description: |
+  Regulator driver for Waveshare touchscreen display units.
+  This regulator enables and disables panel power and provides
+  backlight control over I2C.
+
+properties:
+  compatible:
+    const: waveshare,touchscreen-panel-regulator
+
+  reg:
+    maxItems: 1
+    description: I2C address of the regulator device
+
+  vin-supply:
+    description: Input supply regulator for the panel
+
+  enable-gpios:
+    maxItems: 1
+    description: GPIO to enable/disable regulator
+
+required:
+  - compatible
+  - reg
+  - vin-supply
+
+additionalProperties: false
+
+examples:
+  - |
+    /dts-v1/;
+    /plugin/;
+
+    / {
+        #address-cells = <1>;
+        #size-cells = <1>;
+
+        gpio: gpio-controller {
+            compatible = "test,gpio";
+            #gpio-cells = <2>;
+        };
+
+        vdd_3v3: regulator {
+            compatible = "regulator-fixed";
+            regulator-name = "vdd_3v3";
+            regulator-min-microvolt = <3300000>;
+            regulator-max-microvolt = <3300000>;
+        };
+
+        i2c@980000 {
+            #address-cells = <1>;
+            #size-cells = <0>;
+            compatible = "test,i2c";
+
+            panel-regulator@3c {
+                compatible = "waveshare,touchscreen-panel-regulator";
+                reg = <0x3c>;
+                vin-supply = <&vdd_3v3>;
+                enable-gpios = <&gpio 2 0>; /* active high */
+            };
+        };
+    };
-- 
2.34.1


