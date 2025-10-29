Return-Path: <devicetree+bounces-232453-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CF04C180FE
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 03:34:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 317D53BF04F
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 02:33:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 225692EB866;
	Wed, 29 Oct 2025 02:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kaFTV6Wq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A4412EA743
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 02:33:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761705203; cv=none; b=iVZtnp94I71RN1RN9gamWw0mO4JJYf9zNpycKP7dlI8DVwDpAVCOO8dHgK0JUJRlihETxSiLJkXa+CkpBzQxiE/SfvhGCKwVqvk67fgGtSlQm93nCqaAFJhozX0J3x/lOYp8CO0+W8po1gZt8XQRsJag83O/AAGQ8YeUjHR4OmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761705203; c=relaxed/simple;
	bh=RG3VjxSuk1dPK3rWGefJjSSYxJn6F7W3FX+uCWi/X38=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=frU5exVZeQ44g6MxN3tgo1Lbuyb6qnBds2+L85nwIWJsYYKa2BnpEINuQB/w+Mpq6iFbVWQbbcBvWHCSEBQ1RRr+3DF8ng2rWfBjwnpBzyS/sKPx3EEzw6GuK2EzrUi/QmfYyZW6r879/Le3FVuJEYYr0aZzQ8g3N3kNBQ29TY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kaFTV6Wq; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-794e300e20dso388997b3a.1
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 19:33:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761705200; x=1762310000; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9d/kXcE3zchMHrpNlcXGlLJoWMLUpaE86fchVvnzwz0=;
        b=kaFTV6Wq01dkYhr0PveqNQDRDfkFOtiMQKuv7fDTsaURBzr+tqwblsaVitkGpKTQy+
         RVuwua5//V/ynws7C+jMalqOymtor0tP/tIBDdCgNp51ZUhhpaOun1HDgItMjnoyFHFT
         Nd0c7/4biLEXj/621eyW4CTbgk/h2U1dvuiLdUMewAOxAMqmuvxxuXO6D7z3w5RffFCF
         NTOZTyC/aRxEGO8P+QqZPA13wcrR6gPKa/SW5aMgbFydJ+j7Eps3EDYXtFRV2zJ9+RyQ
         0DZSkmAmIicPALlvbqbJSsJXUAR/3N7J9hPqVUbuvlDhdXTY2siTkO0nw2ZI0GPJU5H0
         KHBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761705200; x=1762310000;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9d/kXcE3zchMHrpNlcXGlLJoWMLUpaE86fchVvnzwz0=;
        b=lAelDC0apZY0tpOYp+0jpA+csu7fzWCRI9xyYE596AjL6Q1+YEMmTVUju/Pj7gNHk7
         asICcdR/L/Q/e2RIzOz7JBH+tlQsbjEYjklsBpsGlSR6q3FCgP/3owmgLPCs1eFskl27
         n8rbH8jat3dx10duH/h+RIQeMPZBcANTOXiEhGMdNePgU+3TJKJU+pEGsCGkE85XRuF3
         bRt7EfOrUK/NVgXOdI4WwVY5QPUAXBPU5Z2t9z6SX5MqfZnV9HeLSqBjPxemcbzS2CUI
         zLsuAvp2kIYqCW82bWNNTWAxRmoAyreR5yTe6/NeCALCydQPNHde9f+B8j+Wj7yOomgr
         6hIg==
X-Forwarded-Encrypted: i=1; AJvYcCXO5FvhB6z6gCPiM0psNDj9TXba70I0cq5tcEtsM9fOdGs9sbi6swBK+jE+o5jACFhSCtCVGETNZHEq@vger.kernel.org
X-Gm-Message-State: AOJu0YwwI8LJl1CH6wzdWtVS1IEjI5+xt0pG7dKnNbZyWnxACpy4GtkW
	SpO1/cGQpQoBNCcZnJrWhdO3gbGSmicUK4LleN1r70pfCoyuR7dvsIes
X-Gm-Gg: ASbGncu2m1HSx5NnGL/30/5DFkjiNTJAlSBC3vdywpBKnpb3U2sxBYXfClK1kjJF8HQ
	MoqrGo+cyXperYJlRnb4ewWlnVf+Qvuxv2DhI/YQdvdOTRwvysN1VFVCQi82WZ3QL3dsNwkoh0H
	aDKvCdQNwzAU/i91GfPTNv2Q5G/0/vaeOGjSuR3yYJ2QXi6Rq9v0LYECXgXZ6/fXfU/jz6+rrZ1
	Rz7FaDeUtLWq7N6dWGgP7kaF5RunfwZgWl/L7NSLrd1/VK7i//ecVEwDGvoXcJeRPBPM3MsNPak
	TnTs8PyGWgTtHORvxgNFqkjjq4blBVLKq+MjI0Vywpfi9CgLZcan0wMRDNq1cwVUkVIdbUHqTaD
	cgmw/r2ikJVcEegysTsxeNfLnjip6WVVKEYkDvdL7UriLtYovZD5FR7GEocP5IXyf0gIdVGCra+
	TRfb5v0heGuYTbzTh5j7sNJFO9snpjxQ==
X-Google-Smtp-Source: AGHT+IGWfPejzIWvEWLTpc+YxVSh6qwG2ZKdFfLW6QYjD6u0iPEqoRuk88tPfjcThSD7tSNu7dCc8Q==
X-Received: by 2002:a17:90b:2ecf:b0:33d:ad58:cb6a with SMTP id 98e67ed59e1d1-340286bc823mr3849615a91.8.1761705199443;
        Tue, 28 Oct 2025 19:33:19 -0700 (PDT)
Received: from HYB-iPCgmhaB8Cy.ad.analog.com ([59.9.235.253])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b7127bf47a1sm11826966a12.10.2025.10.28.19.33.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Oct 2025 19:33:17 -0700 (PDT)
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
Subject: [PATCH v5 1/2] regulator: dt-bindings: Add MAX77675 regulator binding
Date: Wed, 29 Oct 2025 11:32:52 +0900
Message-Id: <20251029023253.150257-2-joan.na@analog.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251029023253.150257-1-joan.na@analog.com>
References: <20251029023253.150257-1-joan.na@analog.com>
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
This defines the node properties and supported regulator names for use
in device tree sources.

Signed-off-by: Joan Na <joan.na@analog.com>
---
 .../bindings/regulator/maxim,max77675.yaml    | 186 ++++++++++++++++++
 1 file changed, 186 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/regulator/maxim,max77675.yaml

diff --git a/Documentation/devicetree/bindings/regulator/maxim,max77675.yaml b/Documentation/devicetree/bindings/regulator/maxim,max77675.yaml
new file mode 100644
index 000000000000..5d4a643ea5b1
--- /dev/null
+++ b/Documentation/devicetree/bindings/regulator/maxim,max77675.yaml
@@ -0,0 +1,186 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/regulator/maxim,max77675.yaml#
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
+
+properties:
+  compatible:
+    const: maxim,max77675
+
+  reg:
+    maxItems: 1
+
+  reset-time-sec:
+    description: Manual reset time in seconds
+    enum: [4, 8, 12, 16]
+    default: 4
+
+  maxim,en-mode:
+    description: |
+      Enable mode configuration.
+      The debounce time set by 'maxim,debounce-time-us' applies to
+      both push-button and slide-switch modes.
+      "push-button"  - A long press triggers power-on or power-down
+      "slide-switch" - Low level powers on, high level powers down
+      "logic"        - Low level powers on, high level powers down (no debounce time)
+    $ref: /schemas/types.yaml#/definitions/string
+    enum: [push-button, slide-switch, logic]
+    default: slide-switch
+
+  maxim,voltage-change-latency-us:
+    description:
+      Specifies the delay (in microseconds) between an output voltage change request
+      and the start of the SBB voltage ramp.
+    enum: [10, 100]
+    default: 100
+
+  maxim,drv-sbb-strength:
+    description: |
+      SIMO Buck-Boost Drive Strength Trim.
+      Controls the drive strength of the SIMO regulator's power MOSFETs.
+      This setting affects the switching speed, which impacts power efficiency and EMI.
+      "max"  – Maximum drive strength (~0.6 ns transition time)
+      "high" – High drive strength (~1.2 ns transition time)
+      "low"  – Low drive strength (~1.8 ns transition time)
+      "min"  – Minimum drive strength (~8 ns transition time)
+    $ref: /schemas/types.yaml#/definitions/string
+    enum: [max, high, low, min]
+    default: max
+
+  maxim,dvs-slew-rate-mv-per-us:
+    description:
+      Dynamic rising slew rate for output voltage transitions, in mV/μs.
+      This setting is only used when 'maxim,fixed-slew-rate' is not present.
+    enum: [5, 10]
+    default: 5
+
+  maxim,debounce-time-us:
+    description: Debounce time for the enable pin, in microseconds
+    enum: [100, 30000]
+    default: 100
+
+  maxim,en-pullup-disable:
+    type: boolean
+    description: Disable internal pull-up for EN pin
+    default: false
+
+  maxim,bias-low-power-request:
+    type: boolean
+    description: Request low-power bias mode
+    default: false
+
+  maxim,simo-int-ldo-always-on:
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
+          maxim,fps-slot:
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
+              "default" - Use the default FPS slot value stored in OTP and read from the register
+            $ref: /schemas/types.yaml#/definitions/string
+            enum: [slot0, slot1, slot2, slot3, default]
+            default: default
+
+          maxim,fixed-slew-rate:
+            type: boolean
+            description:
+              When this property is present, the device uses a constant 2 mV/μs
+              slew rate and ignores any dynamic slew rate configuration.
+              When absent, the device uses the dynamic slew rate specified
+              by 'maxim,dvs-slew-rate-mv-per-us'
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
+        compatible = "maxim,max77675";
+        reg = <0x44>;
+
+        reset-time-sec = <4>;
+
+        maxim,en-mode = "slide-switch";
+        maxim,voltage-change-latency-us = <100>;
+        maxim,drv-sbb-strength = "max";
+        maxim,dvs-slew-rate-mv-per-us = <5>;
+        maxim,debounce-time-us = <100>;
+
+        regulators {
+          sbb0: sbb0 {
+            regulator-name = "sbb0";
+            regulator-min-microvolt = <500000>;
+            regulator-max-microvolt = <5500000>;
+            maxim,fps-slot = "default";
+            maxim,fixed-slew-rate;
+          };
+
+          sbb1: sbb1 {
+            regulator-name = "sbb1";
+            regulator-min-microvolt = <500000>;
+            regulator-max-microvolt = <5500000>;
+            maxim,fps-slot = "default";
+            maxim,fixed-slew-rate;
+          };
+
+          sbb2: sbb2 {
+            regulator-name = "sbb2";
+            regulator-min-microvolt = <500000>;
+            regulator-max-microvolt = <5500000>;
+            maxim,fps-slot = "default";
+            maxim,fixed-slew-rate;
+          };
+
+          sbb3: sbb3 {
+            regulator-name = "sbb3";
+            regulator-min-microvolt = <500000>;
+            regulator-max-microvolt = <5500000>;
+            maxim,fps-slot = "default";
+            maxim,fixed-slew-rate;
+          };
+        };
+      };
+    };
+
--
2.34.1


