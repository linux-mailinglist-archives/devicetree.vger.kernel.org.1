Return-Path: <devicetree+bounces-207109-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 143A5B2E845
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 00:47:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BE200A07F16
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 22:47:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E12A2D9780;
	Wed, 20 Aug 2025 22:46:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ofUA6xzD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 392B32D0C8A
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 22:46:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755730014; cv=none; b=lUmuL2sfKUOUkY/lhGxtShhs7dinDcqqW7vVd1qvf2jD0AAZD/WRxjFF3+D1hdfCkfrwVwxMsx8jzhGXt5JxkTWGJvc2H+l9k2tq/iX/uWSar/9Y4R8zEsZ5gWRJEXu+p+CmwqNV3t2Dq5ercy6J4zjCQ27DkEVX9fkgzcNcSVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755730014; c=relaxed/simple;
	bh=zOgRx3Yn+m3MfNCZ7/Efr194CRiUaVpUkdYD9qKDHU8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=SWoCe5uGKnh4AzkY0p0tHiNMwwBh2hECz5yS1hiFSXy1+rS99zmXvKqCNMOnKHof6gS8MhA5WJvvDb28kqQJln7RcQkMaOf+24LrV1Kk50LnTZOdWRugkFa1CP8zCrkPT3XcCR5tPr5Yx6RZe1wD3i0eEeLfANbRY/t3utRHaDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ofUA6xzD; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-333f9044198so554591fa.2
        for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 15:46:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755730010; x=1756334810; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GLcjM5uGCEzuVCUayytEkMUXVcJWRwPsKtnPCq0+CZU=;
        b=ofUA6xzDiW+msqPrzzsIaG8249eLuMggfhO+Yk+n0jSAIxLbgw3ABHJ/iZjvwDX3HR
         3tUtywWVlf+EG67mlB23CjmkwvdUC/OBS4tf8CyAtxWvYGUqJcofMAveW1b438tZ8ELB
         UCp8Q63QyUKc7zs8Knx7ZLPX42C9JH259nLreGfUgW1xNWCgLCh9CdwyA8tzFz7iHGF4
         kmQSOKAzFdQMvaqGJcYnhV2megU9OfPknRt8bMEo4lxe4PtNFRpT6ORN/TNYH95/owJ3
         EjawH3MheYwPfMoKdwzHix3ZtAZnkaMdWnihznwoLELXSdEngIsrIAET9+xFXCWANkJF
         MVOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755730010; x=1756334810;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GLcjM5uGCEzuVCUayytEkMUXVcJWRwPsKtnPCq0+CZU=;
        b=qvOVcmVhele5yHp/ezXNyh/QXO/8f8ENX0WpCjx5C/Rwy38GH3TgcYaFIgSsTcYp6K
         QwwvSUX5PTtxbWq13C25wpsnyxm0CAsqgONB3jq/7b2svTSPEH6OjDZ8Sf0pfJA892Xb
         UVBnG1zDQzOMmg51vI1dW3zmzZO6wHgP02VKRQD5pFnS/OIYMoV/WaembdVk9tC++ZtN
         GttyBqVzOqiv2ezym6Qje/D5DLSfQqiTDyjcYDRs//4q2q5OQd7UIrZCrLyn0UknSiMi
         bztwfn3BDyVNRZlwMKo5yUGh7G05azZ9W3OyiKdWzpGAvb8JAb41YynZlrdKCFx2jAcU
         GMCQ==
X-Forwarded-Encrypted: i=1; AJvYcCWf7FAs4EZtW/2eqvr39FkdxG5xq5cy4gJVb5KCnucST3iLumH98v/gPJNFciRx9ko0idjcAzG3zfRp@vger.kernel.org
X-Gm-Message-State: AOJu0YwQuS8GhgDdpbT4P2JhT6JakttOXTy14zOOQHtFisb95BBGRxqu
	poF/wdzXk5JBZtjoLQxNQV2VuQz74j2b/S0+Hf3qTiZqbn5GiBKevlNmQjBBU2m0mDs=
X-Gm-Gg: ASbGncs4/WhSZ9FA1hS4zJSGGYqEQSgMFWClFRyqaz0FCjhehxwDea1V/mTaFUJFLif
	QYuKfG0Iaa6wPmSzUfb90puvjaebj8xE25VE3DpidrRJ5eYGOv4IJiPpuiL1cRjZH7Km0f6jVmf
	moGUi5r3Ak9p88Nuw6uTavfBPnEzWJfbEYVaUPzY2AEy+XzTNlWOMJl5ZU0Rxk6Ti/XFQCc/A0R
	xSM4SV1fc2J2KP8KSwZMou+2L9vpqdaOcA67JgVWS9Ht6Qpej9AIcIpvViZ7N7pQueV4VH6RMuc
	AUhvvQfdY6o6gwujAjlWATbQUC9Nkh6hNkPGvDBwGPsHfDjSIYgFTwZtxdEHTH33QBd9w/hxHg5
	Fm4fVbIzMDmJpNLJTqfksHK9bAtmNrSCyFuOOilxi+9Hif8TiuHygfdDye13rfKSkHw9DNTg=
X-Google-Smtp-Source: AGHT+IGlNgZqMzMUeyWdr3GjHyIK7XYOFyI6yiuXPQ3nSeXzvDl9tt2rHtDkm90kEgAC23venGfYAg==
X-Received: by 2002:a05:6512:3c82:b0:55b:8038:ffb9 with SMTP id 2adb3069b0e04-55e0d502211mr83735e87.2.1755730010285;
        Wed, 20 Aug 2025 15:46:50 -0700 (PDT)
Received: from thyme.local (88-112-128-43.elisa-laajakaista.fi. [88.112.128.43])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55cef3ccdfesm2841413e87.91.2025.08.20.15.46.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Aug 2025 15:46:49 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Hans Verkuil <hverkuil@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Rob Herring <robh@kernel.org>,
	Tarang Raval <tarang.raval@siliconsignals.io>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Conor Dooley <conor+dt@kernel.org>,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: media: i2c: Add OmniVision OG0VE1B camera sensor
Date: Thu, 21 Aug 2025 01:46:45 +0300
Message-ID: <20250820224646.130270-2-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250820224646.130270-1-vladimir.zapolskiy@linaro.org>
References: <20250820224646.130270-1-vladimir.zapolskiy@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add device tree bindings documentation for OmniVision OG0VE1B camera
sensor.

Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 .../bindings/media/i2c/ovti,og0ve1b.yaml      | 97 +++++++++++++++++++
 1 file changed, 97 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/ovti,og0ve1b.yaml

diff --git a/Documentation/devicetree/bindings/media/i2c/ovti,og0ve1b.yaml b/Documentation/devicetree/bindings/media/i2c/ovti,og0ve1b.yaml
new file mode 100644
index 000000000000..692b06472ea4
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/i2c/ovti,og0ve1b.yaml
@@ -0,0 +1,97 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/i2c/ovti,og0ve1b.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: OmniVision OG0VE1B Image Sensor
+
+description:
+  OmniVision OG0VE1B image sensor is a low power consuming monochrome
+  image sensor. The sensor is controlled over a serial camera control
+  bus protocol (SCCB), the widest supported image size is 640x480 at
+  120 frames per second rate, data output format is 8/10-bit RAW
+  transferred over one-lane MIPI D-PHY at up to 800 Mbps.
+
+maintainers:
+  - Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
+
+allOf:
+  - $ref: /schemas/media/video-interface-devices.yaml#
+
+properties:
+  compatible:
+    const: ovti,og0ve1b
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    description: XVCLK supply clock, 6MHz to 27MHz frequency.
+    maxItems: 1
+
+  reset-gpios:
+    description: Active low GPIO connected to XSHUTDOWN pad of the sensor.
+    maxItems: 1
+
+  strobe-gpios:
+    description: Input GPIO connected to strobe pad of the sensor.
+    maxItems: 1
+
+  avdd-supply:
+    description: Analog voltage supply, 2.6 to 3.0 volts.
+
+  dovdd-supply:
+    description: Digital I/O voltage supply, 1.7 to 3.0 volts.
+
+  dvdd-supply:
+    description: Digital core voltage supply.
+
+  port:
+    $ref: /schemas/graph.yaml#/$defs/port-base
+    additionalProperties: false
+
+    properties:
+      endpoint:
+        $ref: /schemas/media/video-interfaces.yaml#
+        unevaluatedProperties: false
+
+        required:
+          - link-frequencies
+
+required:
+  - compatible
+  - reg
+  - port
+
+unevaluatedProperties: false
+
+examples:
+  - |
+      #include <dt-bindings/gpio/gpio.h>
+
+      i2c {
+          #address-cells = <1>;
+          #size-cells = <0>;
+
+          camera@3e {
+              compatible = "ovti,og0ve1b";
+              reg = <0x3e>;
+              clocks = <&camera_clk 0>;
+              assigned-clocks = <&camera_clk 0>;
+              assigned-clock-rates = <24000000>;
+              reset-gpios = <&gpio1 10 GPIO_ACTIVE_LOW>;
+              avdd-supply = <&vreg_2p8>;
+              dovdd-supply = <&vreg_1p8>;
+              dvdd-supply = <&vreg_1p2>;
+
+              port {
+                  endpoint {
+                      link-frequencies = /bits/ 64 <500000000>;
+                      remote-endpoint = <&mipi_csi2_ep>;
+                  };
+              };
+          };
+      };
+
+...
-- 
2.49.0


