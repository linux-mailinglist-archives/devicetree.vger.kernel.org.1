Return-Path: <devicetree+bounces-127924-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E79A9E6B32
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 11:00:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 51C2618846BA
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 10:00:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D311A1F6676;
	Fri,  6 Dec 2024 09:59:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Rs8ZjZ5i"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CD781F541A
	for <devicetree@vger.kernel.org>; Fri,  6 Dec 2024 09:59:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733479198; cv=none; b=jtejHGW9SOEOsb8ocXwspVlrgAmZdwpZJgM5DVZlrNd56UUvzD7VHv8rmwLd4PdFrWkDgeyZMvSokOySH+J73eqSyY6UoOzmuNInU0dLTZBwmIJGNF2bbbQdmG4oUnTgN+cESpIA3KOJQYuQXgZ6o+PWvBAitquKVG+LnVSRgIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733479198; c=relaxed/simple;
	bh=nrzJEQmtWgyIa662GaswKBXiM7mjIxWE1BKWWphanis=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=N0t2WVvpQIs7gfaoRzQ5LRmjZbPv9eFSV/9rAw2Y9ncz17GIyIWb/JNtGGdAwbzQc4hrtAeGUVegaVBEIDyR54/A3R9koshUp+8NS84dwZ5dePqktwgyNduBSW22ItrvAXTzJ2rGL1Vqo3GyPg1PUpOlTRgZQ2fPPzApmSMMypk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Rs8ZjZ5i; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-434a736518eso20805815e9.1
        for <devicetree@vger.kernel.org>; Fri, 06 Dec 2024 01:59:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733479194; x=1734083994; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=KIPWWhLaFD/pa7K6EoIQLr2qHmjZpGD+8SKC8sQ/214=;
        b=Rs8ZjZ5iTGeOYpOIaCoRicsMrFBYAv/dthPK4AWJYeNQXw4Ql7hYn2xQEGv65LDXOU
         2P4o5GfNXks9IednrIymhSggeGlfF4nMcMHeiYjknyVRalLEt9jtuDo0b1o0MJ8882bQ
         X+ekrC+X9PUtWK7GCLANNAxJ83K4XX9TpdpTSYHy9+NCZ7cciJ3OYyCX+SemOHb1eYc+
         xQ0XzcbokDwkHUuxpW61Ur84DzqQeipGPB4TWf0oRzvpeqq38YQF7U4+cKW3AQL/R2mn
         QKxFNty8R66aOze2Ecu407gAtUJF7K9LjK4MEALoDLAH1/tA54k5ri0I0hd9Vhw8ZMO+
         wwJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733479194; x=1734083994;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KIPWWhLaFD/pa7K6EoIQLr2qHmjZpGD+8SKC8sQ/214=;
        b=DDcbOT9eEnnzCAOoF9/59p+a8FsFs/dqBXeH6pVX8RM1fvdBpYd0wLbPMPgFSFxPFa
         /ncLkSjlDKG0BgGN4xZeZPPYOC8Lp7oZQD//HfvZE7qBskdbFtikT2VPDrDlj5m2G1/j
         5Yd04IlhTBF6jtyYG8O6/4g3Q/NlWEdWojgx8WYHqPDT+fn62jvxXYbrMPJIvJ4WLdZ2
         EbgRkzVDzfivjw6VrJc90UYlK35fgfYg5SRcbdr4/JtCvvZNnpi2qj7mWoCl52732rAi
         VsBdiG9C41FbA/SoF8klYx7Klqmqfue8Kdnyi3dCDAWjpTegD9RtGzbQWNTo6Rb9kejh
         tCKg==
X-Forwarded-Encrypted: i=1; AJvYcCURiGW9aNCeMIwsXSmPEI11WeoxWHckuA1bhbCqwakkBlzuw6XpB+epqAAAXZCTPpqWflxnrwdnLcPE@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0AYuTu+QxpGUBn54+v/oJ+0ke6vNhNgpZlO2Js0vrqtuKTyBM
	j+5G+cTFe3ocP8BvCCCqgrIB8mYJXeyU26K7NMjykuO0u1qQqmudHFpey5o2JlA=
X-Gm-Gg: ASbGnctFlm7/QPYGF4sLoWpzdIpCpKiypScCgiSYp6Q+dlFI/wignylJklRebYmlfsR
	pe6nfkrNXEPj7EXgDZRP00kG8n+sXI6kJCR6k5koP0Z05ZjCmUkZZiDfDYPjr782y0qgczfYQkS
	QoUAIYxwckEQQFmbcK6l4eCeHhY8+TybwMj6mjSPQH0q25d/WnB9VobSiW6W5zSaefilaYY8i85
	aamy4SqJ+n8dBEYSbeUcLKBjaqx8fa4MHf4KJ08VIE+WV7wsycschMuVIaSVdFIC9RTm+0=
X-Google-Smtp-Source: AGHT+IFAbxN2o8PzoBdTMbjoasAoTa0taTqUslKGqoyUHhpm2/0AGw3NWC8D/TBwJ1a5Wft5lnqzqQ==
X-Received: by 2002:a05:600c:1e16:b0:434:a5c2:53c1 with SMTP id 5b1f17b1804b1-434dded7e5fmr19122045e9.23.1733479193712;
        Fri, 06 Dec 2024 01:59:53 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434d52cc2fdsm87908905e9.42.2024.12.06.01.59.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Dec 2024 01:59:53 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Fri, 06 Dec 2024 10:59:52 +0100
Subject: [PATCH v2] dt-bindings: input: convert dlg,da7280.txt to dt-schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241206-topic-misc-da7280-convert-v2-1-1c3539f75604@linaro.org>
X-B4-Tracking: v=1; b=H4sIABfLUmcC/42NQQrCMBBFr1Jm7UgSKk1deQ/pYkyn7YAmJQlBK
 b27sSdw+R789zdIHIUTXJsNIhdJEnwFc2rALeRnRhkrg1Gm1Ua1mMMqDl+SHI7UGavQBV84ZjS
 KJ6LxYq0jqPs18iTvo30fKi+Scoif46ron/2nWjRqVJPt+04/2FF/e4qnGM4hzjDs+/4FGwSPJ
 8MAAAA=
X-Change-ID: 20241204-topic-misc-da7280-convert-20efaad588ca
To: Support Opensource <support.opensource@diasemi.com>, 
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Roy Im <roy.im.opensource@diasemi.com>
Cc: linux-input@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=13369;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=nrzJEQmtWgyIa662GaswKBXiM7mjIxWE1BKWWphanis=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBnUssYnsWH0wH8s387Fk6DXOv3gmG7zx60ChvErFja
 ZuUBLOuJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZ1LLGAAKCRB33NvayMhJ0Y97D/
 9y+kN7oF706eqoNGP3la8yCCijzCQMJhpZ4Wjd1nMomRlqqBluT9kllVJyCB3yE5C5s4i9F61onrlZ
 WTpwIuAtY9hsANTNcfwxLgBgmDivUp6Eqo/iaWZgzeuX4/XtuB9JsTezyRBKmJh5jmRc1ZVJjZ9Kj0
 AFqFPXvkefP4v6gtG6YFjorM7S5+3+hcTMVtQ6Xh6KNwIz4+0ZQ7wdbXMTAqQb+jxQt5jIV+G+z07M
 R/eu32zG4xXrl8448/5YC67m6Qzfg+7gedVRq4KkqNwwiTRTSlYzMi2kAZ2dvvi8SvJHwB1InfzG9O
 5s9rWvEYrLkQoWh1pylGQxuUchqIzyExbUL6AyOVgZi1k3IMcalN+hheoXGICrsD4krYYVgh4VMW3D
 qIZVe6At8VAQ7oHZ4Vxh/XMsRFiP5fMKyKwDkMTid8OTjEKdhdgQj1dp7TAc4cxfnh2+MywYmlDpRB
 Y6sZ4u7dQMKelI6u81US2vwj8rYL/RnqLGR0usm4kx6t/ocute8TPDDFaEk9JPipUl2WQmDriWPUzx
 h4UgwI0GjEUGGK6X71l+P0y38ih+O04AyHGXL/9fi8s8ag5e7oSz/rLihjiaGxJeN56F0WVwx2WYRW
 DiNHvYNEvwOvtTFeaoPc/w/OiRXKZVQnMFsczGA8IQhYqr1cHiJf13UXsyBw==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Convert the Dialog Semiconductor DA7280 Low Power High-Definition
Haptic Driver bindings to dt-schema.

Due to the implementation and usage in DT the array must be
an uint32 array.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
Changes in v2:
- Switched to flag instead of boolean
- Switched the array to unit32_t, because this is how it was defined in the txt, DT and driver
- Link to v1: https://lore.kernel.org/r/20241204-topic-misc-da7280-convert-v1-1-0f89971beca9@linaro.org
---
 .../devicetree/bindings/input/dlg,da7280.txt       | 108 ---------
 .../devicetree/bindings/input/dlg,da7280.yaml      | 248 +++++++++++++++++++++
 2 files changed, 248 insertions(+), 108 deletions(-)

diff --git a/Documentation/devicetree/bindings/input/dlg,da7280.txt b/Documentation/devicetree/bindings/input/dlg,da7280.txt
deleted file mode 100644
index 96ee5d50e111b85ce680eadd0276280e706bb4cf..0000000000000000000000000000000000000000
--- a/Documentation/devicetree/bindings/input/dlg,da7280.txt
+++ /dev/null
@@ -1,108 +0,0 @@
-Dialog Semiconductor DA7280 Haptics bindings
-
-Required properties:
-- compatible: Should be "dlg,da7280".
-- reg: Specifies the I2C slave address.
-
-- interrupt-parent : Specifies the phandle of the interrupt controller to
-  which the IRQs from DA7280 are delivered to.
-
-- dlg,actuator-type: Set Actuator type. it should be one of:
-  "LRA" - Linear Resonance Actuator type.
-  "ERM-bar" - Bar type Eccentric Rotating Mass.
-  "ERM-coin" - Coin type Eccentric Rotating Mass.
-
-- dlg,const-op-mode: Haptic operation mode for FF_CONSTANT.
-  Possible values:
-	1 - Direct register override(DRO) mode triggered by i2c(default),
-	2 - PWM data source mode controlled by PWM duty,
-- dlg,periodic-op-mode: Haptic operation mode for FF_PERIODIC.
-  Possible values:
-	1 - Register triggered waveform memory(RTWM) mode, the pattern
-	    assigned to the PS_SEQ_ID played as much times as PS_SEQ_LOOP,
-	2 - Edge triggered waveform memory(ETWM) mode, external GPI(N)
-	    control are required to enable/disable and it needs to keep
-	    device enabled by sending magnitude (X > 0),
-	    the pattern is assigned to the GPI(N)_SEQUENCE_ID below.
-	The default value is 1 for both of the operation modes.
-	For more details, please see the datasheet.
-
-- dlg,nom-microvolt: Nominal actuator voltage rating.
-  Valid values: 0 - 6000000.
-- dlg,abs-max-microvolt: Absolute actuator maximum voltage rating.
-  Valid values: 0 - 6000000.
-- dlg,imax-microamp: Actuator max current rating.
-  Valid values: 0 - 252000.
-  Default: 130000.
-- dlg,impd-micro-ohms: the impedance of the actuator in micro ohms.
-  Valid values: 0 - 1500000000.
-
-Optional properties:
-- pwms : phandle to the physical PWM(Pulse Width Modulation) device.
-  PWM properties should be named "pwms". And number of cell is different
-  for each pwm device.
-  (See Documentation/devicetree/bindings/pwm/pwm.txt
-   for further information relating to pwm properties)
-
-- dlg,ps-seq-id: the PS_SEQ_ID(pattern ID in waveform memory inside chip)
-  to play back when RTWM-MODE is enabled.
-  Valid range: 0 - 15.
-- dlg,ps-seq-loop: the PS_SEQ_LOOP, Number of times the pre-stored sequence
-  pointed to by PS_SEQ_ID or GPI(N)_SEQUENCE_ID is repeated.
-  Valid range: 0 - 15.
-- dlg,gpiN-seq-id: the GPI(N)_SEQUENCE_ID, pattern to play
-  when gpi0 is triggered, 'N' must be 0 - 2.
-  Valid range: 0 - 15.
-- dlg,gpiN-mode: the pattern mode which can select either
-  "Single-pattern" or "Multi-pattern", 'N' must be 0 - 2.
-- dlg,gpiN-polarity: gpiN polarity which can be chosen among
-  "Rising-edge", "Falling-edge" and "Both-edge",
-  'N' must be 0 - 2
-  Haptic will work by this edge option in case of ETWM mode.
-
-- dlg,resonant-freq-hz: use in case of LRA.
-  the frequency range: 50 - 300.
-  Default: 205.
-
-- dlg,bemf-sens-enable: Enable for internal loop computations.
-- dlg,freq-track-enable: Enable for resonant frequency tracking.
-- dlg,acc-enable: Enable for active acceleration.
-- dlg,rapid-stop-enable: Enable for rapid stop.
-- dlg,amp-pid-enable: Enable for the amplitude PID.
-- dlg,mem-array: Customized waveform memory(patterns) data downloaded to
-  the device during initialization. This is an array of 100 values(u8).
-
-For further information, see device datasheet.
-
-======
-
-Example:
-
-	haptics: da7280-haptics@4a {
-		compatible = "dlg,da7280";
-		reg = <0x4a>;
-		interrupt-parent = <&gpio6>;
-		interrupts = <11 IRQ_TYPE_LEVEL_LOW>;
-		dlg,actuator-type = "LRA";
-		dlg,dlg,const-op-mode = <1>;
-		dlg,dlg,periodic-op-mode = <1>;
-		dlg,nom-microvolt = <2000000>;
-		dlg,abs-max-microvolt = <2000000>;
-		dlg,imax-microamp = <170000>;
-		dlg,resonant-freq-hz = <180>;
-		dlg,impd-micro-ohms = <10500000>;
-		dlg,freq-track-enable;
-		dlg,rapid-stop-enable;
-		dlg,mem-array = <
-		  0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00
-		  0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00
-		  0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00
-		  0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00
-		  0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00
-		  0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00
-		  0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00
-		  0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00
-		  0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00
-		  0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00
-		>;
-	};
diff --git a/Documentation/devicetree/bindings/input/dlg,da7280.yaml b/Documentation/devicetree/bindings/input/dlg,da7280.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..0d06755aaaa8177eaa8b2951c4c387ef2ce53d43
--- /dev/null
+++ b/Documentation/devicetree/bindings/input/dlg,da7280.yaml
@@ -0,0 +1,248 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/input/dlg,da7280.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Dialog Semiconductor DA7280 Low Power High-Definition Haptic Driver
+
+maintainers:
+  - Roy Im <roy.im.opensource@diasemi.com>
+
+properties:
+  compatible:
+    const: dlg,da7280
+
+  reg:
+    maxItems: 1
+    description: I2C address of the device.
+
+  interrupts:
+    maxItems: 1
+
+  dlg,actuator-type:
+    enum:
+      - LRA # Linear Resonance Actuator type
+      - ERM-bar # Bar type Eccentric Rotating Mass
+      - ERM-coin # Coin type Eccentric Rotating Mass
+
+  dlg,const-op-mode:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum:
+      - 1 # Direct register override (DRO) mode triggered by i2c (default)
+      - 2 # PWM data source mode controlled by PWM duty
+    description:
+      Haptic operation mode for FF_CONSTANT
+
+  dlg,periodic-op-mode:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum:
+      - 1 # Register triggered waveform memory(RTWM) mode, the pattern
+          # assigned to the PS_SEQ_ID played as much times as PS_SEQ_LOOP
+      - 2 # Edge triggered waveform memory(ETWM) mode, external GPI(N)
+          # control are required to enable/disable and it needs to keep
+          # device enabled by sending magnitude (X > 0),
+          # the pattern is assigned to the GPI(N)_SEQUENCE_ID below
+    default: 1
+    description:
+      Haptic operation mode for FF_PERIODIC.
+      The default value is 1 for both of the operation modes.
+      For more details, please see the datasheet
+
+  dlg,nom-microvolt:
+    minimum: 0
+    maximum: 6000000
+    description:
+      Nominal actuator voltage rating
+
+  dlg,abs-max-microvolt:
+    minimum: 0
+    maximum: 6000000
+    description:
+      Absolute actuator maximum voltage rating
+
+  dlg,imax-microamp:
+    minimum: 0
+    maximum: 252000
+    default: 130000
+    description:
+      Actuator max current rating
+
+  dlg,impd-micro-ohms:
+    minimum: 0
+    maximum: 1500000000
+    description:
+      Impedance of the actuator
+
+  pwms:
+    maxItems: 1
+
+  dlg,ps-seq-id:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    minimum: 0
+    maximum: 15
+    description:
+      The PS_SEQ_ID(pattern ID in waveform memory inside chip)
+      to play back when RTWM-MODE is enabled
+
+  dlg,ps-seq-loop:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    minimum: 0
+    maximum: 15
+    description:
+      The PS_SEQ_LOOP, Number of times the pre-stored sequence pointed to by
+      PS_SEQ_ID or GPI(N)_SEQUENCE_ID is repeated
+
+  dlg,gpi0-seq-id:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    minimum: 0
+    maximum: 15
+    description:
+      the GPI0_SEQUENCE_ID, pattern to play when gpi0 is triggered
+
+  dlg,gpi1-seq-id:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    minimum: 0
+    maximum: 15
+    description:
+      the GPI1_SEQUENCE_ID, pattern to play when gpi1 is triggered
+
+  dlg,gpi2-seq-id:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    minimum: 0
+    maximum: 15
+    description:
+      the GPI2_SEQUENCE_ID, pattern to play when gpi2 is triggered
+
+  dlg,gpi0-mode:
+    enum:
+      - Single-pattern
+      - Multi-pattern
+    description:
+      Pattern mode for gpi0
+
+  dlg,gpi1-mode:
+    enum:
+      - Single-pattern
+      - Multi-pattern
+    description:
+      Pattern mode for gpi1
+
+  dlg,gpi2-mode:
+    enum:
+      - Single-pattern
+      - Multi-pattern
+    description:
+      Pattern mode for gpi2
+
+  dlg,gpi0-polarity:
+    enum:
+      - Rising-edge
+      - Falling-edge
+      - Both-edge
+    description:
+      gpi0 polarity, Haptic will work by this edge option in case of ETWM mode
+
+  dlg,gpi1-polarity:
+    enum:
+      - Rising-edge
+      - Falling-edge
+      - Both-edge
+    description:
+      gpi1 polarity, Haptic will work by this edge option in case of ETWM mode
+
+  dlg,gpi2-polarity:
+    enum:
+      - Rising-edge
+      - Falling-edge
+      - Both-edge
+    description:
+      gpi2 polarity, Haptic will work by this edge option in case of ETWM mode
+
+  dlg,resonant-freq-hz:
+    minimum: 50
+    maximum: 300
+    default: 205
+
+  dlg,bemf-sens-enable:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description:
+      Enable for internal loop computations
+
+  dlg,freq-track-enable:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description:
+      Enable for resonant frequency tracking
+
+  dlg,acc-enable:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description:
+      Enable for active acceleration
+
+  dlg,rapid-stop-enable:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description:
+      Enable for rapid stop
+
+  dlg,amp-pid-enable:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description:
+      Enable for the amplitude PID
+
+  dlg,mem-array:
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    minItems: 100
+    description:
+      Customized waveform memory (patterns) data downloaded to the device during initialization.
+      Each entry value must be included between 0 and 255.
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - dlg,actuator-type
+  - dlg,const-op-mode
+  - dlg,periodic-op-mode
+  - dlg,nom-microvolt
+  - dlg,abs-max-microvolt
+  - dlg,imax-microamp
+  - dlg,impd-micro-ohms
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        haptics@4a {
+            compatible = "dlg,da7280";
+            reg = <0x4a>;
+            interrupt-parent = <&gpio6>;
+            interrupts = <11 IRQ_TYPE_LEVEL_LOW>;
+            dlg,actuator-type = "LRA";
+            dlg,const-op-mode = <1>;
+            dlg,periodic-op-mode = <1>;
+            dlg,nom-microvolt = <2000000>;
+            dlg,abs-max-microvolt = <2000000>;
+            dlg,imax-microamp = <170000>;
+            dlg,resonant-freq-hz = <180>;
+            dlg,impd-micro-ohms = <10500000>;
+            dlg,freq-track-enable;
+            dlg,rapid-stop-enable;
+            dlg,mem-array = <0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00
+                             0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00
+                             0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00
+                             0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00
+                             0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00
+                             0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00
+                             0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00
+                             0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00
+                             0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00
+                             0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00>;
+        };
+    };

---
base-commit: c245a7a79602ccbee780c004c1e4abcda66aec32
change-id: 20241204-topic-misc-da7280-convert-20efaad588ca

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


