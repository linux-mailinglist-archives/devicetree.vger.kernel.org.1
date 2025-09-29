Return-Path: <devicetree+bounces-222415-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 61380BA8EEA
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 12:57:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0CB241C2230
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 10:57:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE3542FF15F;
	Mon, 29 Sep 2025 10:57:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GHleWSt4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33E132FE059
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 10:56:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759143420; cv=none; b=JFTwKhw9wDr3LWPpcb3teOv8m+7oSgOH4ekHmshguTEkd2vL8Q7WmPoICA/btoyZzdyjxfXxKTKq1XfoniLhJaypz0juYoRZl8aOPJCS49S8+aJN/gEeWujTXF2sTArHTfCHSIu6a8Pe+5sfFaO4whIEYpuoQ7auhE9K8s6oXPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759143420; c=relaxed/simple;
	bh=es2eQE3djkxxO7Qk3efIm3x2FtzFs1v6bsaNQwYnZRE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=btCqSxV233cL7qlLpm6nXpZJp311SJ1oD9XRRiEvHrG70ZiGVPJxFIb7V+jgVhjNKnswZC6soIJRjTSmJQHzJ1jFwJoIK0fl65reL1X4LalmdOXlwUW5SrzgXVa7560r+8u4mU97h5lYOyo1zSO7HoO5WVbTYS9THJnJzkOk2HA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GHleWSt4; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-271d1305ad7so58986345ad.2
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 03:56:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759143418; x=1759748218; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4PY8OmxrnVOq+prHUYZH2nnjzosZ3Ye7L/hjac8Ucls=;
        b=GHleWSt4ZnBKyLp2zmL55jpvSW4cBnRoWlDEcEiJOhSb23gIelWQM3FqkuWM+6SKP9
         1/eoUchKd8o4jEcml7nyOMKFi9OhGejGn/Gjj8EG/+1Fdgd9G+AmZgpBMO/DZXIHXHZ7
         LlKXetBRV2qAgTEKJSBbMxBEoIA84wB/EDfgqqdO32ihwFT46g7P6M/FFPJ+nLoWxCRx
         Rhn8w0ERw1p/eUVrVU2y+Hot4Thpy5eU/RHjsu7HCU47/RpgS8QrDqRkfckrajH1a516
         n7XORpSzwgE5m8qkcC02CJg2fQl+0mfg6iIepbVAyG0mEKiVQvQDbuZWcFm/zekGhIEK
         Vcxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759143418; x=1759748218;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4PY8OmxrnVOq+prHUYZH2nnjzosZ3Ye7L/hjac8Ucls=;
        b=dcAoJbDr8q18d4wW1y2tAQ2cL5thwhBQjwr+9BHagFjgWlK1dnHk7WfSyj3lVeN6Mn
         5APtTZvpkPtyxTuU4bhvABAZc/vZzKQHpVghISUZ8HT+BDq6N3hJb7LIaMqdA/OJyoQK
         0snHyOgXsnSPRt2NEeL5ZDkBTVasx9nwAApRmcFy3qiK2VomH+BkNZn5faPV3wCC9nZF
         6zMK1L3TLz+K7EFPisXsh7nmb6NaTBedHcb2/0Ev0zLqh8oKzmF9ee9I5ga1JGV1LmQx
         YRBaK0yg6NINoED4R7JehtorJCpXrA+GJ904bhl/nhSFr+Gi6uuE0vO+A1qUB8IUfsmU
         NklA==
X-Forwarded-Encrypted: i=1; AJvYcCV/h/fU52qEYTB0+g2Pbj3/oeGd1dh4Lae6IPv3M+caFc2+SKAgxuTVCcwKwsRae6ekYoDCPoFWqgGk@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/36fwwnnQpCUKpI27M3J+h9jjmFqBA8Eb8uIwR/NK6/V4+1zy
	KiTJrHU9P76ux/g4Hb+JAcytcbFFhwEd7HAAc4A03/h4RnkH485ZO0a+
X-Gm-Gg: ASbGncu3a9ZBmwhdORVDsBVtIDXzUhorC/sJj0aY5OUrZqyaNAuHWg5jkOlHCk0wgkR
	2jleagmU2X1/eS5VaUYE9+0mQs+V63dNAGkZcWk0r+HGi8p0oWhjHWomH84cEjLaz6DCVaYYbJ6
	ZBtNpMELw9wskk7QDP9rwRnQfaSAeJNOAI4kQB214Gg2hLM6ynVgfzhl7KHk4FjOLzLGrN4G1En
	9tA5GWaVVZf9FI/xc5VLEdl17UE0fIuZWx7gasc3eP4LmA4EmyDN0helGQNSIncurev6PeLJq5M
	iHzt2h4M6qvY85NgechAaXCADcsEG+AMpmiWdZhX7NBUammkIk6mryX0ej07D2JEBrMpeqs+2or
	Loh405n+U40NGgtlR1S7p1b2vo4md8e0lhG8WGSnh5NGzzXCpa11A
X-Google-Smtp-Source: AGHT+IFjqe0V6bcffA7grVGYsuJAtlVGm62MbayVYnq93DK4PsVr92HZqeb0AfB8cpvkg7+9FmS0ww==
X-Received: by 2002:a17:903:2847:b0:269:4741:6d33 with SMTP id d9443c01a7336-27ed49d2c35mr115317405ad.23.1759143418232;
        Mon, 29 Sep 2025 03:56:58 -0700 (PDT)
Received: from HYB-iPCgmhaB8Cy.ad.analog.com ([59.9.235.253])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-28cef7db380sm4762325ad.107.2025.09.29.03.56.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Sep 2025 03:56:57 -0700 (PDT)
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
Subject: [PATCH v2 3/3] dt-bindings: regulator: Add MAX77675 regulator binding
Date: Mon, 29 Sep 2025 19:56:18 +0900
Message-Id: <20250929105618.177511-4-joan.na@analog.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250929105618.177511-1-joan.na@analog.com>
References: <20250929105618.177511-1-joan.na@analog.com>
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
 .../bindings/regulator/maxim,max77675.yaml    | 202 ++++++++++++++++++
 1 file changed, 202 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/regulator/maxim,max77675.yaml

diff --git a/Documentation/devicetree/bindings/regulator/maxim,max77675.yaml b/Documentation/devicetree/bindings/regulator/maxim,max77675.yaml
new file mode 100644
index 000000000000..f93dfdc499bc
--- /dev/null
+++ b/Documentation/devicetree/bindings/regulator/maxim,max77675.yaml
@@ -0,0 +1,202 @@
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
+description: |
+  The MAX77675 is a PMIC providing multiple switching buck regulators
+  (SBB0–SBB3), accessible via I2C. Each SBB can be configured individually
+  in the Device Tree. Additional PMIC settings can be configured through
+  device-specific properties.
+  Users should use the macros from dt-bindings/regulator/maxim,max77675-regulator.h
+
+allOf:
+  - $ref: regulator.yaml#
+
+properties:
+  compatible:
+    const: maxim,max77675
+
+  reg:
+    maxItems: 1
+
+  maxim,dvs-slew-rate:
+    description: |
+      DVS slew rate setting.
+      0 (MAX77675_DVS_SLEW_5MV) - 5 mV/μs
+      1 (MAX77675_DVS_SLEW_10MV) - 10 mV/μs
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [0, 1]
+
+  maxim,latency-mode:
+    description: |
+      Latency mode for voltage transition:
+      0 (MAX77675_LAT_MODE_HIGH_LATENCY) - Low quiescent current, high latency (~100μs)
+      1 (MAX77675_LAT_MODE_LOW_LATENCY) - High quiescent current, low latency (~10μs)
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [0, 1]
+
+  maxim,drv-sbb-strength:
+    description: |
+      SIMO Buck-Boost Drive Strength Trim.
+      0 (MAX77675_DRV_SBB_FASTEST) - Fastest transition (~0.6 ns)
+      1 (MAX77675_DRV_SBB_FAST) - Faster transition (~1.2 ns)
+      2 (MAX77675_DRV_SBB_MEDIUM) - Moderate transition (~1.8 ns)
+      3 (MAX77675_DRV_SBB_SLOWEST) - Slowest transition (~8 ns)
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [0, 1, 2, 3]
+
+  maxim,manual-reset-time:
+    description: |
+      Manual reset time in seconds:
+      0 (MAX77675_MRT_4S): 4 seconds
+      1 (MAX77675_MRT_8S): 8 seconds
+      2 (MAX77675_MRT_12S): 12 seconds
+      3 (MAX77675_MRT_16S): 16 seconds
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [0, 1, 2, 3]
+
+  maxim,en-pullup-disable:
+    description: |
+      Disable internal pull-up for EN pin.
+      0 (MAX77675_PU_EN): Internal pull-up enabled (default).
+      1 (MAX77675_PU_DIS): Internal pull-up disabled.
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [0, 1]
+
+  maxim,bias-low-power-request:
+    description: |
+      Controls the bias low-power mode setting.
+      0 (MAX77675_BIAS_NORMAL): Normal bias operation
+      1 (MAX77675_BIAS_LPM_REQ): Request low-power bias mode
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [0, 1]
+
+  maxim,simo-int-ldo-always-on:
+    description: |
+      SIMO internal channel disable configuration.
+      0 (MAX77675_SIMO_INT_NORMAL): SIMO channel enabled
+      1 (MAX77675_SIMO_INT_LDO): SIMO channel disabled
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [0, 1]
+
+  maxim,en-mode:
+    description: |
+      Enable mode configuration.
+      0 (MAX77675_EN_PUSH_BUTTON): Push button
+      1 (MAX77675_EN_SLIDE_SWITCH): Slide switch
+      2 (MAX77675_EN_LOGIC): Logic mode
+      3 (MAX77675_EN_RESERVED): Reserved
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [0, 1, 2, 3]
+
+  maxim,en-debounce-time:
+    description: |
+      Debounce timer enable.
+      0 (MAX77675_DBEN_100US): 100us
+      1 (MAX77675_DBEN_30MS): 30ms
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [0, 1]
+
+  regulators:
+    type: object
+    description: Regulator child nodes
+    patternProperties:
+      "^sbb[0-3]$":
+        type: object
+        $ref: regulator.yaml#
+    properties:
+      maxim,fps-slot:
+        description: |
+          FPS slot selection.
+          0 (MAX77675_FPS_SLOT_0): FPS Slot 0
+          1 (MAX77675_FPS_SLOT_1): FPS Slot 1
+          2 (MAX77675_FPS_SLOT_2): FPS Slot 2
+          3 (MAX77675_FPS_SLOT_3): FPS Slot 3
+          4 (MAX77675_FPS_NONE): No FPS Slot (disabled)
+          5 (MAX77675_FPS_DEF): Use the defaul
+        $ref: /schemas/types.yaml#/definitions/uint32
+        enum: [0, 1, 2, 3, 4, 5]
+
+      maxim,slew-rate-use-dvs:
+        description: |
+          0 (MAX77675_SR_2MV_PER_US): Fixed slew rate of 2mV/μs.
+          1 (MAX77675_SR_USE_DVS): Uses maxim,dvs-slew-rate for dynamic voltage scaling.
+        $ref: /schemas/types.yaml#/definitions/uint32
+        enum: [0, 1]
+    additionalProperties: false
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
+    #include <dt-bindings/regulator/maxim,max77675-regulator.h>
+
+    i2c {
+      #address-cells = <1>;
+      #size-cells = <0>;
+
+      max77675: pmic@44 {
+        compatible = "maxim,max77675";
+        reg = <0x44>;
+
+        maxim,dvs-slew-rate = <MAX77675_DVS_SLEW_5MV>;
+        maxim,latency-mode = <MAX77675_LAT_MODE_HIGH_LATENCY>;
+        maxim,drv-sbb-strength = <MAX77675_DRV_SBB_FASTEST>;
+        maxim,manual-reset-time = <MAX77675_MRT_4S>;
+        maxim,en-pullup-disable = <MAX77675_PU_EN>;
+        maxim,bias-low-power-request = <MAX77675_BIAS_NORMAL>;
+        maxim,simo-int-ldo-always-on = <MAX77675_SIMO_INT_NORMAL>;
+        maxim,en-mode = <MAX77675_EN_PUSH_BUTTON>;
+        maxim,en-debounce-time = <MAX77675_DBEN_100US>;
+
+        regulators {
+          sbb0: sbb0 {
+            regulator-name = "sbb0";
+            regulator-min-microvolt = <500000>;
+            regulator-max-microvolt = <5500000>;
+            maxim,fps-slot = <MAX77675_FPS_DEF>;
+            maxim,slew-rate-use-dvs = <MAX77675_SR_2MV_PER_US>;
+          };
+
+          sbb1: sbb1 {
+            regulator-name = "sbb1";
+            regulator-min-microvolt = <500000>;
+            regulator-max-microvolt = <5500000>;
+            regulator-allow-set-voltage;
+            maxim,fps-slot = <MAX77675_FPS_DEF>;
+            maxim,slew-rate-use-dvs = <MAX77675_SR_2MV_PER_US>;
+          };
+
+          sbb2: sbb2 {
+            regulator-name = "sbb2";
+            regulator-min-microvolt = <500000>;
+            regulator-max-microvolt = <5500000>;
+            regulator-allow-set-voltage;
+            maxim,fps-slot = <MAX77675_FPS_DEF>;
+            maxim,slew-rate-use-dvs = <MAX77675_SR_2MV_PER_US>;
+          };
+
+          sbb3: sbb3 {
+            regulator-name = "sbb3";
+            regulator-min-microvolt = <500000>;
+            regulator-max-microvolt = <5500000>;
+            regulator-allow-set-voltage;
+            maxim,fps-slot = <MAX77675_FPS_DEF>;
+            maxim,slew-rate-use-dvs = <MAX77675_SR_2MV_PER_US>;
+          };
+        };
+      };
+    };
+
--
2.34.1


