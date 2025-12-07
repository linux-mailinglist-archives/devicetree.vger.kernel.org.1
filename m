Return-Path: <devicetree+bounces-245002-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B8BCCAB0DF
	for <lists+devicetree@lfdr.de>; Sun, 07 Dec 2025 04:30:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D524230E67E2
	for <lists+devicetree@lfdr.de>; Sun,  7 Dec 2025 03:29:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CAFB327EC7C;
	Sun,  7 Dec 2025 03:29:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VdPm/OIM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1594C280A3B
	for <devicetree@vger.kernel.org>; Sun,  7 Dec 2025 03:29:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765078168; cv=none; b=gw2VQzxmLkWQPOFstOkt40NxLeZfDSECQPTIOgQqcY4NRClw4RWqLQEFCiyTxDYakQBK7PYQ0nA6nVrgmWU0f48b9iac1TwTMCGsQ4Ac6jGkHzVatZ4FdYDuzi7wiYuBidiXS4YM0iOlfkwEaaKsBPKAeQsN1oc7vqDvRjmTz58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765078168; c=relaxed/simple;
	bh=aVyhAwj08USspuhJUw/MNCjYLB+JDjh3dBDT+0Bkq9g=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=VaXQGF107x5pxXSGer3FslDrUj2DsaygWvjV/i0mT0ahnc3z8drvqQzPsSK/IZMWnnLzycmURl8K2c66Ou/9o0eUYB9L6ozwUzKDbZpkBpSEg8G3YtGJhEUmVw6SB1R3xrarLaWjMj6OJAQk80U4jy71Z7t4v+/H9ff09G9OdPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VdPm/OIM; arc=none smtp.client-ip=209.85.210.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-7ba55660769so2870986b3a.1
        for <devicetree@vger.kernel.org>; Sat, 06 Dec 2025 19:29:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765078166; x=1765682966; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Z1zFgKHnAZZAmKAurQwJ89AFEIFZ9UbXmFTE0V6kqGY=;
        b=VdPm/OIMLIa0c4xE53vqqUC7MXLk91646DOBWwol+s8dYj7VGwifGWOh1yrNCag75+
         aAckn9YSJ/ItURy4ADfYToRWR6p5//W9Rvyv/5G1L22VnaV52K7Dj5shI6c+18bSSbLn
         4hlob3dUZ0dPWYCmXSGSYTEhoH0E677CjSbRhNmGDAJN3K1KAC57mdqkY6keLWNqTJ+u
         tXpNEAqbo1YwxNGOOj+DnR6OsP1nS/ByXMCnUqfsB9GQvZHijqJR8wzpYXLim2urS0eU
         RIaUcTXSZpS8niDqOUosF5PZMbzsr3DNnwaAK+Mt0eSYqDcThm0xOJTWNQMB6OPjZ8fp
         RDPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765078166; x=1765682966;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Z1zFgKHnAZZAmKAurQwJ89AFEIFZ9UbXmFTE0V6kqGY=;
        b=fW0/Ti6MomiYiw7KA73e1eyO2l2qUC2ea/UEVHo55ik++22IpbPaxk+SSrLm3iCZpD
         80dLqw6XDKkZfOuSjqN5mDzep272K5ueCUKYLl5VahulT7oDYQ3/q6uOfwk6mjRWC4eX
         Witr6/2TN6Qw8vO9ClJ8CdHldMZy71o1NbigqDLCZochvChwdNE8osIWdjR+4JtyhW9M
         HdrB51O+961LsTqDsd4VHLoprveN/h2VtFuZJqNCCDhhNQGhqOJdEInjzkAPgqbULzTC
         y0GUiqInT+bGgAkQKVQoLUanB09aE+ydV+xoTG/jla81N4oOriMSlPw6817O4hsZszFS
         n+QQ==
X-Forwarded-Encrypted: i=1; AJvYcCVRpAwGn+9BhsVYqQYB+ylFiDgC26NyTRPxBNgjyqmMbFxLef58tDjFH4iQWpQGCyMYw8tB7uJWROcF@vger.kernel.org
X-Gm-Message-State: AOJu0YywA5WNvWkekbESr7YhbvITFZsihPvLqPefYR+nG4VSvloLBbBl
	SV+z/XmqpKeaCPLXiKUAZKIBnjHekg4GJqh3KyH+/3OwCwlsmBX/x0CU
X-Gm-Gg: ASbGncvCvmBHVIrVufU+9LHbKErTmO/wdXPR6mzZXIxZdcsZrJPYtHVOyyusKfcWkmI
	0Y1vxwkPHWeThPKEDrTdiMoktdwi/wxwUuksbHLmfN7KvGtJFlYmLVtcRJwHlixGA6SLvXFGMTU
	M0Rza2QNib88EgUXaWBhaB7NxP6DSTI+XMnNwaLFqeuXHQNdWKBvfaccCSkIjIEnOJnnz55wCgP
	0g2B4to9PDDooZ3/FW7sV0ULwl0TdB5HZwVOmtlys0Q1vgNYc5ZbVY0ZblW6X5qmIgIHQcQrfo8
	oFyHK+MVKiCwx/VoaltTVQgGv0o/8XvPBRM2IDHoypTuoOSH3I7kdCOfMQjbZ6OftBGVigxvklJ
	VhF//Nu5DXEh+KuzpdsWVPF0+V0RI8tbNZPOtMJWvqHI652N8keYPrrl8msg77pnZdWIxVYaVLP
	asJk27wZAISdXfIC4qQwRk8nEAJcUVsABiVdhr3k70ZA==
X-Google-Smtp-Source: AGHT+IHTI5x5ZjIeM1l2OON3tkvn8JiFPS7mp0m+cR2wmK9byD1ZRsbKXrUTUDAxuAFcpQM2YfHENQ==
X-Received: by 2002:a05:6a00:3ccd:b0:7a5:67cc:c837 with SMTP id d2e1a72fcca58-7e8c2f6e8c3mr3747915b3a.18.1765078166333;
        Sat, 06 Dec 2025 19:29:26 -0800 (PST)
Received: from HYB-iPCgmhaB8Cy.ad.analog.com ([122.35.77.229])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7e2adc5c355sm9036217b3a.33.2025.12.06.19.29.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 06 Dec 2025 19:29:26 -0800 (PST)
From: Joan-Na-adi <joan.na.devcode@gmail.com>
X-Google-Original-From: Joan-Na-adi <joan.na@analog.com>
To: Liam Girdwood <lgirdwood@gmail.com>
Cc: Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Joan Na <joan.na@analog.com>
Subject: [PATCH v8 1/2] regulator: dt-bindings: Add MAX77675 regulator
Date: Sun,  7 Dec 2025 12:29:06 +0900
Message-Id: <20251207032907.4850-2-joan.na@analog.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251207032907.4850-1-joan.na@analog.com>
References: <20251207032907.4850-1-joan.na@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Joan Na <joan.na@analog.com>

Add device tree binding YAML schema for the Maxim MAX77675 PMIC regulator.

Signed-off-by: Joan Na <joan.na@analog.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../bindings/regulator/adi,max77675.yaml      | 184 ++++++++++++++++++
 1 file changed, 184 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/regulator/adi,max77675.yaml

diff --git a/Documentation/devicetree/bindings/regulator/adi,max77675.yaml b/Documentation/devicetree/bindings/regulator/adi,max77675.yaml
new file mode 100644
index 000000000000..c138e61380a4
--- /dev/null
+++ b/Documentation/devicetree/bindings/regulator/adi,max77675.yaml
@@ -0,0 +1,184 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/regulator/adi,max77675.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Maxim MAX77675 PMIC Regulator
+
+maintainers:
+  - Joan Na <joan.na@analog.com>
+
+description:
+  The MAX77675 is a Power Management IC providing four switching buck
+  regulators (SBB0–SBB3) accessible via I2C. It supports configuration
+  of output voltages and enable controls for each regulator.
+
+allOf:
+  - $ref: /schemas/input/input.yaml
+  - $ref: /schemas/pinctrl/pincfg-node.yaml
+
+properties:
+  compatible:
+    const: adi,max77675
+
+  reg:
+    maxItems: 1
+
+  reset-time-sec:
+    description: Manual reset time in seconds
+    enum: [4, 8, 12, 16]
+    default: 4
+
+  bias-disable:
+    type: boolean
+    description: Disable internal pull-up for EN pin
+
+  input-debounce:
+    description: Debounce time for the enable pin, in microseconds
+    items:
+      - enum: [100, 30000]
+    default: 100
+
+  adi,en-mode:
+    description: |
+      Enable mode configuration.
+      The debounce time set by 'input-debounce' applies to
+      both push-button and slide-switch modes.
+      "push-button"  - A long press triggers power-on or power-down
+      "slide-switch" - Low : powers on, High : powers down
+      "logic"        - Low : powers on, High : powers down (no debounce time)
+    $ref: /schemas/types.yaml#/definitions/string
+    enum: [push-button, slide-switch, logic]
+    default: slide-switch
+
+  adi,voltage-change-latency-us:
+    description:
+      Specifies the delay (in microseconds) between an output voltage change
+      request and the start of the SBB voltage ramp.
+    enum: [10, 100]
+    default: 100
+
+  adi,drv-sbb-strength:
+    description: |
+      SIMO Buck-Boost Drive Strength Trim.
+      Controls the drive strength of the SIMO regulator's power MOSFETs.
+      This setting affects switching speed, impacting power efficiency and EMI.
+      "max"  – Maximum drive strength (~0.6 ns transition time)
+      "high" – High drive strength (~1.2 ns transition time)
+      "low"  – Low drive strength (~1.8 ns transition time)
+      "min"  – Minimum drive strength (~8 ns transition time)
+    $ref: /schemas/types.yaml#/definitions/string
+    enum: [max, high, low, min]
+    default: max
+
+  adi,dvs-slew-rate-mv-per-us:
+    description:
+      Dynamic rising slew rate for output voltage transitions, in mV/μs.
+      This setting is only used when 'adi,fixed-slew-rate' is not present.
+    enum: [5, 10]
+    default: 5
+
+  adi,bias-low-power-request:
+    type: boolean
+    description: Request low-power bias mode
+
+  adi,simo-ldo-always-on:
+    type: boolean
+    description: Set internal LDO to always supply 1.8V
+
+  regulators:
+    type: object
+    description: Regulator child nodes
+    patternProperties:
+      "^sbb[0-3]$":
+        type: object
+        $ref: regulator.yaml#
+        properties:
+          adi,fps-slot:
+            description: |
+              FPS (Flexible Power Sequencer) slot selection.
+              The Flexible Power Sequencer allows resources to power up under
+              hardware or software control. Additionally, each resource can
+              power up independently or among a group of other regulators with
+              adjustable power-up and power-down slots.
+              "slot0"   - Assign to FPS Slot 0
+              "slot1"   - Assign to FPS Slot 1
+              "slot2"   - Assign to FPS Slot 2
+              "slot3"   - Assign to FPS Slot 3
+              "default" - Use the default FPS slot value stored in register
+            $ref: /schemas/types.yaml#/definitions/string
+            enum: [slot0, slot1, slot2, slot3, default]
+            default: default
+
+          adi,fixed-slew-rate:
+            type: boolean
+            description:
+              When this property is present, the device uses a constant 2 mV/μs
+              slew rate and ignores any dynamic slew rate configuration.
+              When absent, the device uses the dynamic slew rate specified
+              by 'adi,dvs-slew-rate-mv-per-us'
+
+        unevaluatedProperties: false
+
+required:
+  - compatible
+  - reg
+  - regulators
+
+additionalProperties: false
+
+examples:
+  - |
+    i2c {
+      #address-cells = <1>;
+      #size-cells = <0>;
+
+      max77675: pmic@44 {
+        compatible = "adi,max77675";
+        reg = <0x44>;
+
+        reset-time-sec = <4>;
+        input-debounce = <100>;
+
+        adi,en-mode = "slide-switch";
+        adi,voltage-change-latency-us = <100>;
+        adi,drv-sbb-strength = "max";
+        adi,dvs-slew-rate-mv-per-us = <5>;
+
+        regulators {
+          sbb0: sbb0 {
+            regulator-name = "sbb0";
+            regulator-min-microvolt = <500000>;
+            regulator-max-microvolt = <5500000>;
+            adi,fps-slot = "default";
+            adi,fixed-slew-rate;
+          };
+
+          sbb1: sbb1 {
+            regulator-name = "sbb1";
+            regulator-min-microvolt = <500000>;
+            regulator-max-microvolt = <5500000>;
+            adi,fps-slot = "default";
+            adi,fixed-slew-rate;
+          };
+
+          sbb2: sbb2 {
+            regulator-name = "sbb2";
+            regulator-min-microvolt = <500000>;
+            regulator-max-microvolt = <5500000>;
+            adi,fps-slot = "default";
+            adi,fixed-slew-rate;
+          };
+
+          sbb3: sbb3 {
+            regulator-name = "sbb3";
+            regulator-min-microvolt = <500000>;
+            regulator-max-microvolt = <5500000>;
+            adi,fps-slot = "default";
+            adi,fixed-slew-rate;
+          };
+        };
+      };
+    };
+
--
2.34.1


