Return-Path: <devicetree+bounces-159971-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AA5BA6D281
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 01:09:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 257417A4F2A
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 00:08:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CDBB2E3381;
	Mon, 24 Mar 2025 00:09:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WOU0RtbS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 716D063D
	for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 00:09:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742774961; cv=none; b=cvqWz9G2su1H9Spaskb/+rUu871BI7zBK1xM2QB2Ra+dcawyulfSU2u6EKbPv3VNSBiVWrEtKYeFw0j07DTrfVpU/qjbQhEi5KFgi7c+BBKqXJoq+G38oCoYeBildiREXErzmgC1KpTcH7f1qvppajPFd6CcOlXP29p/Z7Hs7R4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742774961; c=relaxed/simple;
	bh=xG7KMDmzZFEzMN+AkPk2HVIMj7xs9rXBgCDJ/MFJG+c=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=nIs+BOabytHmir8hPklLa7UlA6mYObDxMFGXDXVn2BmLbzW+JcbJ/L2QoHexURZ+Yu0IJhGjWd9S6XiQh2pypLAhuorQnf+r0a4LIoc+OfnfDzzOKI3IGfhKqB1jxHPQyL/2vu1UKP00su2k9rwKWLOSlgnRz4PniBYMijru9NU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WOU0RtbS; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-39141ffa9fcso3298978f8f.0
        for <devicetree@vger.kernel.org>; Sun, 23 Mar 2025 17:09:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742774957; x=1743379757; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=u4Yw/yIFJwPSRIFaWhDguD+3BszBLpL7OesKcw5YFc8=;
        b=WOU0RtbShGEeZvX4arWxIpH7nywv9kzFESLG2OsdEBgE3VwNxq2Lnll6uE7ws3zGhq
         tva4WGopmk0rv7bGn98BvC6ev4zIv3zH+BDjTpevl3aWY5CYOajUBrH3+En3DSuSpU47
         oMA7DbQ7ftD93gWrGuNDFHLweLtWivPZs/Vw2PvKQ37qi0OIUDyiVE9wjURmwr2Kx3jw
         bL0ZosCoazfCzne0ABNtOD8AIg/qnmFPX2RgKJ0MfDVgXyDPAMsmK8QlTqf4sCE2yVBm
         28e8Bs6ZB+vGqhpk5lfwKNS+TR6SBMkWzREpPwt9hhSuBEsbTgYZzVirSd+3Z5yzp3vb
         F0Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742774957; x=1743379757;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=u4Yw/yIFJwPSRIFaWhDguD+3BszBLpL7OesKcw5YFc8=;
        b=Xqk74l+qR7AF6Gv6MkGkNUiMXqWY1JaSF24BFFxnXZiR6W3v0Mb6Tme/AU7/A93Tsy
         nMNsMEJxGyRAd+M7BuqMj5t6vRZElGaWFZEMmT4TfhIP1eWi1JMkbbsLettTMI657USK
         afsPiEPTS95fxcc7b2zxBvB0/BbOdNS7IB0ZZUWj8+nenTkEIo9vDHtP2QFlbER9iz1H
         WnAEhNFusfMaWyT4RzXaMz3T3KUpBGuO4LLX+4lGJJ+J1yB7WDaSoCLoLg0gju3Pc+YD
         lzpcxfhoxlCGhZ4n2biQT12f3Bp7PBQ86UaSnQJ1Y5js/vBcizN4TUbswqhYWc8MiwbX
         ggUQ==
X-Forwarded-Encrypted: i=1; AJvYcCWS4lAYNjSaJQ1hE8LqjmjVt6r20tgaPa8XCPZFFVD0ZF5JNV/XVdDdL0QgbexgUAmN2vKkYSkZdP/R@vger.kernel.org
X-Gm-Message-State: AOJu0YwXEAZjZUUO4qPUg5zOdctdi++nQAIM8EDsiKSVKFAvxUwCH3i/
	Fr9EsbTdxmoybr1+LHd1xfgAIHtquoITkMs21c7omQCGePOEf3MRK5y0FfAS2ak=
X-Gm-Gg: ASbGncv2NepBembkFZB/8IU2lACy08G5tN0+57dcOdJy+xgxB3mnHA+F5GQebkCEaZZ
	JoamHcqkUnTW5WsyaI8HX/ZEsc9IZhzylyvllbp35/A/jt8o62BT7nOMZBBH+kufSKTcJVtH+OI
	uEjKV8oU7/R6a19kLb9Vu+mnpgNtmYN9338liilvn25k4cjlFbJsWj3fMw9++DCZGeSpYxQTlPi
	b5fE5ZTNQMmQe25+VJIj1dFa5RRMe2jZPLZ65F2OPatHxN5WcZW1jlT0H6d1ajH9qv/eyI/BpTH
	CoFpKQ6ayV3zAC2XUn0qFWA1dqSFVbj9V1rHcEUsCZ/8YgfVFnsjivIL34FJp/E3m+GpdWEIkyx
	BTkOML2ige3cc5a+jHRXDPhqi
X-Google-Smtp-Source: AGHT+IGY7VtMpwcOgN7vWpF0VeukoOJo86n8xPqYGzuZ9slPTAXMmzoVR8afEL0XrlDXByZw4H9iNw==
X-Received: by 2002:a5d:6c63:0:b0:38d:e304:7470 with SMTP id ffacd0b85a97d-3997f90aa79mr10650444f8f.25.1742774956693;
        Sun, 23 Mar 2025 17:09:16 -0700 (PDT)
Received: from inspiron14p-linux.ht.home (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43d4fcea6ecsm103160875e9.5.2025.03.23.17.09.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Mar 2025 17:09:16 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To: hdegoede@redhat.com,
	mchehab@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	sakari.ailus@linux.intel.com,
	hverkuil@xs4all.nl
Cc: linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: [PATCH 1/1] media: dt-bindings: Add OmniVision OV02C10
Date: Mon, 24 Mar 2025 00:09:12 +0000
Message-ID: <20250324000912.105662-2-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250324000912.105662-1-bryan.odonoghue@linaro.org>
References: <20250319145927.70534-1-hdegoede@redhat.com>
 <20250324000912.105662-1-bryan.odonoghue@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add bindings for OVO2C10 a two megapixel 1080p RGB sensor.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 .../bindings/media/i2c/ovti,ov02c10.yaml      | 117 ++++++++++++++++++
 1 file changed, 117 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/ovti,ov02c10.yaml

diff --git a/Documentation/devicetree/bindings/media/i2c/ovti,ov02c10.yaml b/Documentation/devicetree/bindings/media/i2c/ovti,ov02c10.yaml
new file mode 100644
index 000000000000..6380a17fe65f
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/i2c/ovti,ov02c10.yaml
@@ -0,0 +1,117 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright (c) 2025 Linaro Ltd.
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/i2c/ovti,ov02c10.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Omnivision OV02C10 CMOS Sensor
+
+maintainers:
+  - Bryan O'Donoghue <bryan.odonoghue@linaro.org>
+
+description: |
+  The Omnivision OV02C10 is a 2 megapixel, CMOS image sensor which supports:
+  - Automatic black level calibration (ABLC)
+  - Programmable controls for frame rate, mirror and flip, binning, cropping
+    and windowing
+  - Output formats 10-bit 4C RGB RAW, 10-bit Bayer RAW
+  - 2-lane MIPI D-PHY TX @ 800 Mbps per lane
+  - 1-lane MIPI D-PHY TX @ 1.5 Gbps per lane
+  - Dynamic defect pixel cancellation
+  - Standard SCCB command interface
+
+allOf:
+  - $ref: /schemas/media/video-interface-devices.yaml#
+
+properties:
+  compatible:
+    const: ovti,ov02c10
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
+              - items:
+                  - const: 1
+                  - const: 2
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
+        ov02c10: camera@36 {
+            compatible = "ovti,ov02c10";
+            reg = <0x36>;
+
+            reset-gpios = <&tlmm 237 GPIO_ACTIVE_LOW>;
+            pinctrl-names = "default";
+            pinctrl-0 = <&cam_rgb_defaultt>;
+
+            clocks = <&ov02c10_clk>;
+
+            assigned-clocks = <&ov02c10_clk>;
+            assigned-clock-parents = <&ov02c10_clk_parent>;
+            assigned-clock-rates = <19200000>;
+
+            avdd-supply = <&vreg_l7b_2p8>;
+            dvdd-supply = <&vreg_l7b_1p8>;
+            dovdd-supply = <&vreg_l3m_1p8>;
+
+            port {
+                ov02c10_ep: endpoint {
+                    remote-endpoint = <&csiphy4_ep>;
+                    data-lanes = <1 2>;
+                    link-frequencies = /bits/ 64 <400000000>;
+                };
+            };
+        };
+    };
+...
-- 
2.49.0


