Return-Path: <devicetree+bounces-109893-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BDF2998619
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2024 14:33:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D3B031F21F8A
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2024 12:33:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 725401C68BD;
	Thu, 10 Oct 2024 12:33:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tOUKZjjY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A49FB1C462B
	for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 12:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728563605; cv=none; b=ILigarrO8kAenwHCij88CBPwANt2DCkbBzu/SJWnYYlj3b0SWOhM1NCR3hQ7hxyJn1vL/W5CeJyWuN2v9jZL+3XRKOOia+6bOuknpRI4ojPCx2MFiuLBFxmuvLAhaEBVrqN3LuLfW61J6y/WA1u6ldNUXPpmNiiip8KU5IKUD8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728563605; c=relaxed/simple;
	bh=fCv2ql3x5MRYj+V94Droy/AZAMcQ97gJ5jPEcJz0y8c=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=l/Ze7rauNg0By+5gP0t2ePzYbMUZoL9vpV/ibKyraFtTT8cTP3gW0CNkg+S8ioSrMCVqIq/A0yHb2kw/2esHztn6F2fof7E+7iPn5iWMX9YM29S7cMkClI8NrZf0SgcydoTUgzRhaC65bNDZzIKFBDGzn1DaJTSJYZx+cpFFRg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tOUKZjjY; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-5c883459b19so946545a12.2
        for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 05:33:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728563602; x=1729168402; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FCl/oQotG7Ck6NtzjioXPnOyFASYLcPzzgeAry7FXvU=;
        b=tOUKZjjYtIa54LTxqTIkiLk+S9Rccq6e7HiciRFh+Q8kyEL5KvvKJlzCJ+//jdCM1i
         HuruiQubn2wtSj4oEPoryoBsmLFUBXn0yFzXZNir7vu9+PGoUXaYA8GfWunKCawjVegR
         A80uN+BdexxJQIQoa/iPqZzyb+QDYvsNk5uFXKP5OI7MJ+ag0r9ggzPaLApiOjkD7gTT
         D3k2PILwjKBOS86qY8vdwsHpp2bmlVuW1qe2XRr8V4F+yWXm2LARgmXl3SGusVbqMYQx
         zu1opxXBH0fam6T1Sq1TeYdofOIWDzRDH2dzcf+QxBSP735juoTdUE9bhstEwBsTF7fX
         93rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728563602; x=1729168402;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FCl/oQotG7Ck6NtzjioXPnOyFASYLcPzzgeAry7FXvU=;
        b=bqYP2238fm5iLjUXj8hatXqw7+gD/hu9nJwglJQ0CY/vv1WVL02iw8akZFgiS1yZFX
         CpPGTpkJddaw/d9tdXikWtmKoMCWrJC9BuuqnGkIkShpWBE+CStzma/Ms5w+SL1U1uPW
         n6yaOASABhho7NwNPP/D2nmKam+uLMWfyy3/zHwZ+UbjvUTaM+MNXp4D6o+VDm6N48z3
         kja63AtmI5hNs8ETjv9KW7i+x8ZsI7K/y4oGRnawtNQRURjlNldTNLMoIUcGj2QmKqWY
         YSvFHTArzEmBK0u1Myt92sEp4J4fOpukpng4kXzMTRjWkYtYzbGD6gK2q/xWzxzbof0N
         8txw==
X-Forwarded-Encrypted: i=1; AJvYcCWuboeVzrx4T9LCNLzktym5p3gVaiMdnIUH6bHcNDdSbWv3t+BqaQdoJz2LkXB12bNEbVRTOmVbAicN@vger.kernel.org
X-Gm-Message-State: AOJu0Ywauiro8f78KPNBQ2OkfEH4pvVJaf4WtG1KVqSCeO9Om+s4y/wM
	jEqOZZmVqK9eVjcdLI7j4iPTXl/okOdPhabKZWxa6ZNYNTAmnrwlYnOOaPIMWGQ=
X-Google-Smtp-Source: AGHT+IEN8tvLkNd2SXFiSFvvdTshSPJa0h2Z7P/ZCsSDK9uL+ad6NWD80/M3p3V1zOus1/1nyuyRDg==
X-Received: by 2002:a17:907:60d6:b0:a99:4982:da46 with SMTP id a640c23a62f3a-a998d3299a8mr448933766b.63.1728563601693;
        Thu, 10 Oct 2024 05:33:21 -0700 (PDT)
Received: from [127.0.0.1] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a99a80c0723sm82416666b.135.2024.10.10.05.33.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2024 05:33:21 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Thu, 10 Oct 2024 13:33:18 +0100
Subject: [PATCH v6 2/4] media: dt-bindings: Add OmniVision OV08X40
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241010-b4-master-24-11-25-ov08x40-v6-2-cf966e34e685@linaro.org>
References: <20241010-b4-master-24-11-25-ov08x40-v6-0-cf966e34e685@linaro.org>
In-Reply-To: <20241010-b4-master-24-11-25-ov08x40-v6-0-cf966e34e685@linaro.org>
To: Sakari Ailus <sakari.ailus@linux.intel.com>, 
 Jason Chen <jason.z.chen@intel.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Sergey Senozhatsky <senozhatsky@chromium.org>, 
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Bryan O'Donoghue <bryan.odonoghue@linaro.org>
X-Mailer: b4 0.15-dev-dedf8

Add bindings for the already upstream OV08X40 to enable usage of this
sensor on DTS based systems.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 .../bindings/media/i2c/ovti,ov08x40.yaml           | 120 +++++++++++++++++++++
 1 file changed, 120 insertions(+)

diff --git a/Documentation/devicetree/bindings/media/i2c/ovti,ov08x40.yaml b/Documentation/devicetree/bindings/media/i2c/ovti,ov08x40.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..552efdf8934f73f8f202f5555351f1123b91a252
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/i2c/ovti,ov08x40.yaml
@@ -0,0 +1,120 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright (c) 2024 Linaro Ltd.
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/i2c/ovti,ov08x40.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Omnivision OV08X40 CMOS Sensor
+
+maintainers:
+  - Bryan O'Donoghue <bryan.odonoghue@linaro.org>
+
+description: |
+  The Omnivision OV08X40 is a 9.2 megapixel, CMOS image sensor which supports:
+  - Automatic black level calibration (ABLC)
+  - Programmable controls for frame rate, mirror and flip, binning, cropping
+    and windowing
+  - Output formats 10-bit 4C RGB RAW, 10-bit Bayer RAW
+  - 4-lane MIPI D-PHY TX @ 1 Gbps per lane
+  - 2-lane MPIP D-PHY TX @ 2 Gbps per lane
+  - Dynamic defect pixel cancellation
+  - Standard SCCB command interface
+
+allOf:
+  - $ref: /schemas/media/video-interface-devices.yaml#
+
+properties:
+  compatible:
+    const: ovti,ov08x40
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  avdd-supply:
+    description: Analogue circuit voltage supply.
+
+  dovdd-supply:
+    description: I/O circuit voltage supply.
+
+  dvdd-supply:
+    description: Digital circuit voltage supply.
+
+  reset-gpios:
+    description: Active low GPIO connected to XSHUTDOWN pad of the sensor.
+
+  port:
+    $ref: /schemas/graph.yaml#/$defs/port-base
+    additionalProperties: false
+
+    properties:
+      endpoint:
+        $ref: /schemas/media/video-interfaces.yaml#
+        additionalProperties: false
+
+        properties:
+          data-lanes:
+            oneOf:
+              - items:
+                  - const: 1
+                  - const: 2
+              - items:
+                  - const: 1
+                  - const: 2
+                  - const: 3
+                  - const: 4
+          link-frequencies: true
+          remote-endpoint: true
+
+        required:
+          - data-lanes
+          - link-frequencies
+          - remote-endpoint
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - port
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        ov08x40: camera@36 {
+            compatible = "ovti,ov08x40";
+            reg = <0x36>;
+
+            reset-gpios = <&tlmm 111 GPIO_ACTIVE_LOW>;
+            pinctrl-names = "default";
+            pinctrl-0 = <&cam_rgb_defaultt>;
+
+            clocks = <&ov08x40_clk>;
+
+            assigned-clocks = <&ov08x40_clk>;
+            assigned-clock-parents = <&ov08x40_clk_parent>;
+            assigned-clock-rates = <19200000>;
+
+            avdd-supply = <&vreg_l7b_2p8>;
+            dvdd-supply = <&vreg_l7b_1p8>;
+            dovdd-supply = <&vreg_l3m_1p8>;
+
+            port {
+                ov08x40_ep: endpoint {
+                    remote-endpoint = <&csiphy4_ep>;
+                    data-lanes = <1 2 3 4>;
+                    link-frequencies = /bits/ 64 <400000000>;
+                };
+            };
+        };
+    };
+...

-- 
2.46.2


