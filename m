Return-Path: <devicetree+bounces-200599-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B56C9B155CA
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 01:15:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6CBD5542C17
	for <lists+devicetree@lfdr.de>; Tue, 29 Jul 2025 23:15:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67C91286884;
	Tue, 29 Jul 2025 23:15:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mhlrGFmk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 850D228541C
	for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 23:15:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753830912; cv=none; b=cd/ccaDK7B4KQo3PchmGcsTctLUqX0Fxq6RZY8jNMLY4XdVxyo4ez/aubjEC/b2YzNJFQMJZ0sa71MKaISZltOyqPlZF6KPcvDoqavp5I9lODSZlyPncm626mIZl1eNP3UGnA3SIAoItCXjdbd3PwiQWSZl8tCIQdCg+KxIEPD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753830912; c=relaxed/simple;
	bh=QaiQUqLouvjHeljXFqCtPfP7iBqF/ado6CVRD2clWXo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=GH/35S39EVmkm5+Wv60fkPKHM7XOA3jYsADW+JFDse+bE6FlGageh/iM5aht6sUs7ZI3PLY0CqTloSz5fYa15h179CejYW8gKskD+1mu0BLEhJ1mO3SWOl9tA9M/FmGPkwPU3yk/d1jwRdyfbe2acw4mw5BrYmVCTsTb6tW+q6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mhlrGFmk; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-558fd850d79so522818e87.0
        for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 16:15:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753830909; x=1754435709; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DXyxJz1QwaeqrSgC7ktODDASc0rDoCkzFWWOIOkTz44=;
        b=mhlrGFmkjtLThzxvaFyQRAxd33hAVpHwVEiGU5zorHBwuyQfv1KotMX9SZT5S6uERD
         YRNJyWM+K8bQn4OIXo4zW+wcyRcvzQ2k9ETrlbOLQkfSWdhz1RSL9uf4V0dEbUlBBhQh
         AFRu+ju1jg3nTMmNaZNuxHfD/3ct//kSXLPnnqCOO3eLuwxB+zGwnnh2It9y5F0wLpk2
         uSQC5DyN9KMAnSrSDok/3BstIUmlNtbnHB2pzi3LKWQpmA8sQ54zu7AtLE9dHfLyMcII
         3Sfr9xljyOZPot2/MDhc1K0mAjdiaZIK2RalWxAgWAcJBf6Jq8AVOTdDCCVXQ0XN8kX2
         AdJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753830909; x=1754435709;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DXyxJz1QwaeqrSgC7ktODDASc0rDoCkzFWWOIOkTz44=;
        b=TRllis8INAO81y8Wf8xfYhoVm9TmwcZQOVwIhZg2gutViukXAYqdgSftMtvPsGWafO
         5my7W4eau3ImW2jF7h9OBlH+YlCjRgaeL9a2xq1exqX85Epv0QudzRB0VTIVeJZJkFDZ
         nyf0wjEhkqk0n3fyzdCGYhlwfEyfE58RN2WPDdoJ2FuCOP5+EZwigmCwhhD5fDIHDcOz
         Xmp83bS4Xd+DmFtJm0M8sYtcu+BzaXe67Uhh2UcvOgbQOrnVGl9cn7uTrxqVprb0cjmf
         klBPYpf3Ju13whxhs+teIoRB7mfJyB6JB6AI//R61c+kC1KOK6emjtl5WAIH6YmDofSI
         mR/A==
X-Forwarded-Encrypted: i=1; AJvYcCULor57xGHro/quHPBcJpgexjLlnObzVDd4XdSs6Y3qNPdRmAYlbJ9Ohle4f2TZ3UhRX4M+fhqXOrtf@vger.kernel.org
X-Gm-Message-State: AOJu0YwCPe55YTNM9UaneEci0St9z/cNMZt55c+dFcNR8jVtZ/2R8Vwz
	pNSr/KmrTbgRkJ+GVUXVjsJT/5En4WUXgGUHyGYVnJ4PXmhYROXq55KTgcjRk8/dBag=
X-Gm-Gg: ASbGnctSAgeboJffGiEDsUDNiABwX7Qbfj9GKMqt/xgPHt6CID06wvW83dpdFsTZqwA
	8A334s/+DMZIVqBJwzS3MkRfFwY75Zp18ImonHYqn5/ZmdceW2kBY9xZpX3dwd4KqvrDwf+L/Rp
	4khee06PPpu4YXH2ZkxAe56K7FXLGC3J3U0flZikBFWyM/McJ9PTcdfCzW/AhRtgYjvFeGuCjpW
	oLdbHGWwkRv6YTrfz8zDZQkhP7OIzTqowFUT2t9aIUwtn10QJYH9nJE6k0oiWzvgkvSRN82Jx9O
	HQYtQ0G+zDwtzU8OybdcU7wsrHwQXKJo+5y/qMmiW//AgtCCwwTHpyifczVd/ttri4PYMXADpmf
	5zI3nEOL3aD3pjlgYsRAURf6R/DQiL2G7WPsKWeH/8obv61hR9reskP7MbtQI+mNgC4Zf/hkugm
	NDgYoL0YoT
X-Google-Smtp-Source: AGHT+IEmJF656Itd4v5emghqrsiL8IQ/+FdXHUie5DU/KY2g7Oe+sOax8EVgMto97SoObNMOHs7bKw==
X-Received: by 2002:ac2:4c47:0:b0:55b:75b3:dc97 with SMTP id 2adb3069b0e04-55b7c015c4dmr127218e87.5.1753830908665;
        Tue, 29 Jul 2025 16:15:08 -0700 (PDT)
Received: from localhost.localdomain (88-112-128-43.elisa-laajakaista.fi. [88.112.128.43])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55b63375a6bsm1871650e87.144.2025.07.29.16.15.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Jul 2025 16:15:08 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Hans Verkuil <hverkuil@kernel.org>,
	Dave Stevenson <dave.stevenson@raspberrypi.com>,
	Mehdi Djait <mehdi.djait@linux.intel.com>
Cc: linux-media@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 1/2] dt-bindings: media: i2c: Add OmniVision OV6211 image sensor
Date: Wed, 30 Jul 2025 02:14:53 +0300
Message-ID: <20250729231454.242748-2-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250729231454.242748-1-vladimir.zapolskiy@linaro.org>
References: <20250729231454.242748-1-vladimir.zapolskiy@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add device tree bindings documentation for OmniVision OV6211 image
sensor.

Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 .../bindings/media/i2c/ovti,ov6211.yaml       | 96 +++++++++++++++++++
 1 file changed, 96 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/ovti,ov6211.yaml

diff --git a/Documentation/devicetree/bindings/media/i2c/ovti,ov6211.yaml b/Documentation/devicetree/bindings/media/i2c/ovti,ov6211.yaml
new file mode 100644
index 000000000000..0c552421eea5
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/i2c/ovti,ov6211.yaml
@@ -0,0 +1,96 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/i2c/ovti,ov6211.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: OmniVision OV6211 Image Sensor
+
+description:
+  OmniVision OV6211 image sensor is a high performance monochrome image
+  sensor. The sensor is controlled over a serial camera control bus
+  protocol (SCCB), the widest supported output image frame size is 400x400
+  at 120 frames per second rate, data output format is 8/10-bit RAW
+  transferred over one-lane MIPI D-PHY interface.
+
+maintainers:
+  - Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
+
+allOf:
+  - $ref: /schemas/media/video-interface-devices.yaml#
+
+properties:
+  compatible:
+    const: ovti,ov6211
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
+    description: Analogue voltage supply, 2.6 to 3.0 volts.
+
+  dovdd-supply:
+    description: Digital I/O voltage supply, 1.7 to 3.0 volts.
+
+  dvdd-supply:
+    description: Digital core voltage supply, 1.2 volts.
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
+          camera@60 {
+              compatible = "ovti,ov6211";
+              reg = <0x60>;
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
+                      link-frequencies = /bits/ 64 <240000000>;
+                      remote-endpoint = <&mipi_csi2_ep>;
+                  };
+              };
+          };
+      };
+...
-- 
2.49.0


