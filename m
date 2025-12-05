Return-Path: <devicetree+bounces-244536-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 80D69CA6208
	for <lists+devicetree@lfdr.de>; Fri, 05 Dec 2025 05:57:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DAB3F314A737
	for <lists+devicetree@lfdr.de>; Fri,  5 Dec 2025 04:57:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A3022DF13B;
	Fri,  5 Dec 2025 04:57:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="i0e01YZE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B76FE2DF15B
	for <devicetree@vger.kernel.org>; Fri,  5 Dec 2025 04:57:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764910642; cv=none; b=d49jq8gjb6IKECbg98dBdAqysCjknzJZ2Y8qGbOtO6aguvv5ssxB7F3TMIqZOXLq1f2IMGrutIN1LZXmCImihEck4KHrXESxz3fy6NZYX3n55eu76EBoQ43oXDUTZ/ZFih/TRvk9QloLIZXOePadFsWHfR4K1J+zGNWVHtrNLDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764910642; c=relaxed/simple;
	bh=odZcA19jVlGi8+rCxcCCR7FTAeYpE+Thsq2YMiv98H8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=AgNprmrHTl5BPKxHmnlLse/8q2fEFpWhvs5ceo0C0TmpZ+wbb7VbUvMVdq3bIa0eH71e/f/5tdUXLHzKp98jRDnkFchr1tViWPO0LbOLgOQIJry0ssNKcMddfMkM0BTZvND28nx7X9V98wfEI6ALzmbrCfIbz//OZIDor7J7m7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=i0e01YZE; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-7e1651ae0d5so1337950b3a.1
        for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 20:57:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764910640; x=1765515440; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Z0AujvcTL2WSwfyNlvlHZYB4UqH+/Clys4ABj2ZOK34=;
        b=i0e01YZERu2+2mBU8XrQZKMmw6JfhaevLHmE+lHnPpUbp9LTvb3Xuf9r6Y3uNVMKnh
         CJJ9tjwPMIWHnrMoQeVv6ee1xnRtMUP+Hx/EKL0gavqBTtNV+jod5D2xDIji1/VsOHwo
         PX/X04vm93f9ET6flh1hE/6OzR2ZhSR0G1PLThxjNT2rYxBoB/EE+GNHSGsGPflp6YOt
         m/TB8xowM69O9z4rU+u574z+jFILPZHd3zAyzLUQB1JXRXn+4Po7ocsR9RRLqLK4f5bD
         GBZjs96YSsBke6xXarlyvJydl4GsmTeWZF+mSHlzai+umJM766jnHJl2BDF0ybCy1mYX
         xaHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764910640; x=1765515440;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Z0AujvcTL2WSwfyNlvlHZYB4UqH+/Clys4ABj2ZOK34=;
        b=IgWdb/C5ohewzsovX29kbJSCEC52YUOtmEZb9GGkJwpDHt9pz5tdzOX9aHC8IaTJMe
         UXhdXHJce17KlvJTp60emiV4TuR/9c4ZQOYEP/fvywgETlyTn1h2KI40NY8/5WLO2di2
         FYz2vZUvVdrxAh7FB8+lrkU79K7CstoP8NgtILoi+Ydx+OANiSGRpN/ZHR3PJKxUH/6Y
         tNil/VxMTsX7bAg/s6H2xKQu5iD2jrgrl9tYh3mnqslrKOM5mYWiCRQNoAbkwmhw2vft
         zMZ0Bbtqs9OGE2crLWqmW2oC+55K0mEBnSvhPgPpWe1LiVONoQvsBhAlBX1x9gQFKUC6
         NCxQ==
X-Forwarded-Encrypted: i=1; AJvYcCXNqZ9fdsGRHR/yuwQNxVjdn+lMrWPrtWSfEGxt8LHVza9uLrho9UthMh2YAtq4nhKTJ06fAOsXwkjU@vger.kernel.org
X-Gm-Message-State: AOJu0YzO0/lX9Z1WUgPJmLZXnq1DZoIc8f/+LZatBj0JbZUVRx3XG1fN
	6kMzHFDUKCvxpZbwyZl5vGqe8kx8zkkZOFQJv5d6iWp06iB4x1TB9sar
X-Gm-Gg: ASbGncueAZN+Vhxd2/+CjpHw7zuzU9p2K/YUZGesN+O3eM1IZZL43j63yXrH4a6Pw5f
	GJpHciQ9I5qopO91Prpqor83DIqLFaIm0r2bP+iZUpb+UgYFpP2K4YLJz6w+NXGBF9vQ2Im67su
	6JMRongOHJhvKhjNH7d7hoHVNa8htgJCKnunp1pc8Ec2nvrLyy1dHVyl6aW1YLyDxMUwxLivvxo
	gKMMydJNceLyOP4O+RnAIqvZZg777lkC3LAYftDvgeEGNiBR4nlyPaPgU3eC8ypHuhb+0Ub/o9k
	kdDgTG5K/tT32+bmNJZOYvXeXILhls2N9cm8MNMEWXQu+rCjocN4+vf7oPf/Sky0xgO5B5JNGYG
	61xmGlDAppktzZCpEJKxxTcHDixA26EOAEVFGDkKglIHOvh4svrog1xTDQJByta/sBhm11HiPUM
	/HUsH7CWCDoTJv4FyRAwObluBsJJrXbxw=
X-Google-Smtp-Source: AGHT+IGdLKz8Amu7cvt4sLrq2PSpJ5wJiAdU3loKdyrQYadfUCjERxbKkcgTKc3E2o4VHjtshuk2Eg==
X-Received: by 2002:a05:6a21:99a5:b0:35f:aa4c:1b6f with SMTP id adf61e73a8af0-3640375cab8mr7054445637.3.1764910639813;
        Thu, 04 Dec 2025 20:57:19 -0800 (PST)
Received: from HYB-iPCgmhaB8Cy.ad.analog.com ([122.35.77.229])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-bf6a32deff0sm3315936a12.34.2025.12.04.20.57.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Dec 2025 20:57:19 -0800 (PST)
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
Subject: [PATCH v7 1/2] regulator: dt-bindings: Add MAX77675 regulator
Date: Fri,  5 Dec 2025 13:56:47 +0900
Message-Id: <20251205045648.3725-2-joan.na@analog.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251205045648.3725-1-joan.na@analog.com>
References: <20251205045648.3725-1-joan.na@analog.com>
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


