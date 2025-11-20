Return-Path: <devicetree+bounces-240686-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FA52C740C9
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 13:55:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sea.lore.kernel.org (Postfix) with ESMTPS id 20D03289EB
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 12:55:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 936CC33710C;
	Thu, 20 Nov 2025 12:55:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Tr0PIsWT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D39C8337BB6
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 12:55:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763643342; cv=none; b=enoFzWJF74MdZwXmzj6AuUPnylAxVZGzO6VvTo71JHANc0EZtugJVSWaRvdSEzmk/HtEQPldR7ncMQdfUaUczUNhOcElakUn50Z6M6utgovQorqaewigrJgaDnbWRhWUsucl7QrS1knv0G6J474yKJUIeDkuOPvUuzomto6hv48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763643342; c=relaxed/simple;
	bh=7Qop9pQOba4WavvdpVLkW1HzG/gkZvlgTI8mQYbwu8s=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=X4CKt4d0PkTNepgB3Wr1e0Wg1CBC4brnnbTQg1gyvncWziq0Nh5wf8FPPou1pd6DHYMXWUGzM+l470AD/JYm7KlwIPmqX7hR6s5+0L2QzIBTbOOMdqsPPswudJUWkq66isdEE1rim4ctDa+JjQCWsGElx8s17Y2nnlQ0p2wc/Ws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Tr0PIsWT; arc=none smtp.client-ip=209.85.216.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f54.google.com with SMTP id 98e67ed59e1d1-3436d6aa66dso1122166a91.1
        for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 04:55:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763643340; x=1764248140; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RT4QXy2Xbpg+0ghciHdo8WcFPq/mhKF8gSFMuIRCiIg=;
        b=Tr0PIsWTqYidsSwWk9AuKbtimWlzYoqS3TGZr2agdJznHMKVgq6jwKdY+AKjDJ/YKJ
         btU8ncG5jz8SvWt6omAnsiWaWnhYg0yGom9Q8ZuGQdcs6BFAZpXsRNj+N6VSgx1kF1Jn
         VHLOQtvLDoKqyPTjAR78M8LqBPfhVtF1ZqCLye5Xa+fIlWQjUyOYNy6YN0kzMtlHOVmk
         nqH6eHwBicYygGn9T0u7IHuHZWmhrfbotdLTIYt2aun2kTmwtZqtzwa+sL+lfHOEKzla
         4uvYONCh2b5WUsTb998A1+OeMDSEefXySzcwsuAW29qOcm6LJlr1aQ7fXEe/+F7ZaDb+
         M78A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763643340; x=1764248140;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=RT4QXy2Xbpg+0ghciHdo8WcFPq/mhKF8gSFMuIRCiIg=;
        b=sQ2YHApz3ZmUw8aMA2TKCd6tjh7jLTGiGMqk9L6am+BY7XVudHxGhG6SWDAKsh39Na
         HI8GnyD9l7/OoATGTJyOusiLSUDYB63/Cl02t2cobtduHPrKW5geGUyGc9xlK/eMdb1C
         yszYp43BAlikRxz6x6kNgkDNYNB7EnT2jb1xhCcsnVFvCnj/jKje7mnE+PRFaamXStx8
         7lvzBKNWF2Z3nxnoNZrZ3a5O/az9+l1tRqbzkUvsoly7ZlqtWZLrx5biAC+5Az+ac2aP
         ku2VTcx50qqJHrWDhXeS9jPZeNtaMwCVzaMpwK0AxyuRoEK8WpG6jMppjYPEYbniKKhx
         NosA==
X-Forwarded-Encrypted: i=1; AJvYcCXISuy+Q5SDLBAcVRqD1xCGD0ARQ2GjgAMKPi67y2Ijdidnyiujx665yR93Ff6k+HaJvDifv1o7/P2A@vger.kernel.org
X-Gm-Message-State: AOJu0YxD1yU2YTHb6iTN/rsocUJhtOROp5yrEJAykCEfXIlPmRvs4jYj
	oNcqnU5Kz1dzSzPcmjJ/otYsVEa+fVb3Eo5pzrZ2MwdimMWCbuo3nfij
X-Gm-Gg: ASbGncvq0SN+VezemqGaus31/Lhz2EwD2ocV3+U4VbjUVppk6j8VtSHI5QYjlbHo0b9
	UAyHvngr1RWKfS4ihDW04M+SeSCzqcrxq/AJz43CNVIDTvgWj+T8GAtArm9YwFgMVlr8xHisj5i
	3xRkcsurNJ2XuhbQSfVW/WJjbm+NDZ3OcHXCHmamM7X5+t0xZ8857yeSpRd6cbaJlJMZsaAjOUy
	ZfPA1q9P3Fs/eAHy6ZwnzV1kSWiVpX0KSymtowpnrbGm2snWXsNhBY7Qpd7EyF9iHIRH2jqgRI1
	M0EYJZydKePhRDj6pRSLLzbv1d1OLveiy2BMVhtwTItSZ5htBkhbUUEQA2uIYymSoKiDH9Rwrs3
	Wr75Vnub426mTp3o86HMfitlSO2/64fV/B7nGv3wS7Q4eMRL7iiyw72YO/3gVtdrE4skBtkDVFG
	nX7fTrEDOBAWichAFlrdgXRvFLS30Ylg==
X-Google-Smtp-Source: AGHT+IEB2LOc/vPb8PA7yWNBC8M3aZXFReRgFhNjQzoIAbwNm9dOdzdw2FZf6jVb2r+s5SUHlS8PYg==
X-Received: by 2002:a17:90b:5210:b0:343:6a63:85d5 with SMTP id 98e67ed59e1d1-3472988d12cmr2798067a91.16.1763643340150;
        Thu, 20 Nov 2025 04:55:40 -0800 (PST)
Received: from HYB-iPCgmhaB8Cy.ad.analog.com ([59.9.235.253])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34726696b52sm2586746a91.1.2025.11.20.04.55.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Nov 2025 04:55:39 -0800 (PST)
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
Subject: [PATCH v6 1/2] regulator: dt-bindings: Add MAX77675 regulator
Date: Thu, 20 Nov 2025 21:54:48 +0900
Message-Id: <20251120125449.26530-2-joan.na@analog.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251120125449.26530-1-joan.na@analog.com>
References: <20251120125449.26530-1-joan.na@analog.com>
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
 .../bindings/regulator/adi,max77675.yaml      | 188 ++++++++++++++++++
 1 file changed, 188 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/regulator/adi,max77675.yaml

diff --git a/Documentation/devicetree/bindings/regulator/adi,max77675.yaml b/Documentation/devicetree/bindings/regulator/adi,max77675.yaml
new file mode 100644
index 000000000000..54cbbd59ff5b
--- /dev/null
+++ b/Documentation/devicetree/bindings/regulator/adi,max77675.yaml
@@ -0,0 +1,188 @@
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
+    default: false
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
+      The debounce time set by 'adi,debounce-time-us' applies to
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
+    default: false
+
+  adi,simo-ldo-always-on:
+    type: boolean
+    description: Set internal LDO to always supply 1.8V
+    default: false
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
+            default: true
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


