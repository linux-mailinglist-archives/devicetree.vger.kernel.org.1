Return-Path: <devicetree+bounces-160599-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B077A70439
	for <lists+devicetree@lfdr.de>; Tue, 25 Mar 2025 15:50:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D95B17A67FC
	for <lists+devicetree@lfdr.de>; Tue, 25 Mar 2025 14:48:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76A9D25BAB1;
	Tue, 25 Mar 2025 14:49:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Zbq+pd4P"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BEBD25A33A
	for <devicetree@vger.kernel.org>; Tue, 25 Mar 2025 14:49:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742914176; cv=none; b=SpiG38pmavlZNeUiRG7n1YPZgHhpcZ5fHPiBaljnb/3Gwhak7IlHPgr/8y5a6D6L5PvYjygWKjAGwlR73bOhENyrXYVNUIHNp4UD6z9K7Chr/EFN9REv9UKLt7Qm642ccl5pCTTGuxiax1ZdXPP7iAeO42e9Daz7r2Of3wU4SfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742914176; c=relaxed/simple;
	bh=4h90l3uCKnzIWFZ+vJClR6va3K7yLEzxfMXFVnVjwgE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=RYSI+BSp4KfR3IXoSeh7EnXem2yxxLlr5Iw35lWwh4T7dE+N4oCax8bRV/XOVX6EJqMSC78Om91SKqXM7ufZbi9Y7hVmb3RQCwA6wU7TNpEC1R3JsJfgrJ2FZCNiXsm0Jqe5ujCKvkUfvg5+OUUWLU0Kbs8XBJyKxzuxEo0Pzng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Zbq+pd4P; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-3914bc3e01aso3331445f8f.2
        for <devicetree@vger.kernel.org>; Tue, 25 Mar 2025 07:49:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742914172; x=1743518972; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SxNSfKs3qjdQU1MDAWHJDUTKqSXIO9sYXN3sPNJ2EKI=;
        b=Zbq+pd4P1ZvzXSaTwcQHkeHfuH60nWmGEOhJdARYHCdovphxX67jQwgdGFWYvjuhUG
         Di8CUonXyh1wK7hL0/yOSHauAgW4csdKSsywH5UXbUoYDkmkVqMQyUEBxWmuyORftaBT
         FmEkRJlfn7449mEtogy3ytrrbrbFqPNt7eGjii1wjTnMNlc5gKjRTHvQ+E0FuET2dfzJ
         xBkb6SLXjju79wrHANjQyt7zXnuuck2MmAH2k24QrC0ZPEz0ci6iuSmHg2FV/8w8gSBD
         /SLhk3d2GyXZvHop/f4IQVV5IEgrGpArtXSerbpm0TLTek20rG+XuJ0zvj0ymPdAY3xP
         iFtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742914173; x=1743518973;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SxNSfKs3qjdQU1MDAWHJDUTKqSXIO9sYXN3sPNJ2EKI=;
        b=Gjw6T515/NFoijAaJ41ygGUtRYanucygHqA3hAMQrkIgbVqkZ7zG/9Ys/GivUtb25U
         K7kEY3+olQ5F34lEhgNFpJsGH2Ro7nR9UEadrkz8L7TOfeWHZJSxOT0MEeLraf8/9b5L
         OM7+ycdsK0hTUt1x6/uaNtkpS9DW0KWLDgZ8f7wrMCnofwvDanC+rmV3snzu8czXmUNL
         910bQTKmqnoM/156cwijtFe60zRl7me8SRf0JOGVPudC2yaS2zu/80JRSjWcL69jJBn9
         y3B1OKWaErK3sVfDGo+VDowzr1C9WLMS1bHB1AXGYTgK79jNI/DmGT+JmpHXO/4ocDFa
         FG8Q==
X-Forwarded-Encrypted: i=1; AJvYcCVyQzsY1qapRvKx2Ls2X0jq3UCOqwDzt9tOemnnoJ4oZwJ6ygIcQylhA6Ki0za0Y7G0ibhu/roWFDe0@vger.kernel.org
X-Gm-Message-State: AOJu0YzZiCKLvqzB7ACgb3P6FzaMf7tgrVOrZ6iRPPnx87FB2nIg5QuY
	o+r7J0kfO1czIMmJ+pDo6HtU8UTuQca9fSUNU1NRASl7MIndLCyLsecKOvClzLA=
X-Gm-Gg: ASbGnctvP7M0MhT5JpVuIUVunlHXX0UofRz34jglSuy1ipJnAjHjkifr7iznHJpiRSC
	NWwdZ+8o4derRYr1CYTSK6Xy+cKfl4SF/zdaUgsm808xDk4lUzMixVzvy7WsbH8bGzOXWYZvmBC
	KCM2m+5OVi2og1iPzWVIq50HgvgF8M6bN1iiFnggUD0XfeAgjoCxPoGAqoeZjtVm3iZdqPG+k+8
	u+Jha9XfrtW24GOE7FdcpnTVa+UlCOlkSmXZa7OpM/NWytNeqYJC5irapyIjVZwviIBXWfrN9k3
	ng8IU8y/IDnFd58PL2byaDYc9Xqkoc/vMz4Ito9b+Gj85TkWv2kZSnutlFUjBe87bnhArJZXcKg
	QFOiR89qvZA==
X-Google-Smtp-Source: AGHT+IG4CKp1FZaRLBixTMuTyKNtj56FAP2yubtmsAabtieb/14MG43qeHYB8FO5lYDNkcZHx6+TIA==
X-Received: by 2002:a05:6000:1448:b0:391:253b:405d with SMTP id ffacd0b85a97d-3997f933da0mr16760940f8f.41.1742914172633;
        Tue, 25 Mar 2025 07:49:32 -0700 (PDT)
Received: from [192.168.0.34] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3997f9a3b4bsm13796071f8f.25.2025.03.25.07.49.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Mar 2025 07:49:32 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Tue, 25 Mar 2025 14:49:28 +0000
Subject: [PATCH v2 1/2] media: dt-bindings: Add OmniVision OV02E10
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250325-b4-media-comitters-next-25-03-13-ov02e10-v2-1-4d933ac8cff6@linaro.org>
References: <20250325-b4-media-comitters-next-25-03-13-ov02e10-v2-0-4d933ac8cff6@linaro.org>
In-Reply-To: <20250325-b4-media-comitters-next-25-03-13-ov02e10-v2-0-4d933ac8cff6@linaro.org>
To: Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Sakari Ailus <sakari.ailus@linux.intel.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bryan O'Donoghue <bod@kernel.org>, 
 Hans de Goede <hansg@kernel.org>
Cc: Jingjing Xiong <jingjing.xiong@intel.com>, Hao Yao <hao.yao@intel.com>, 
 Jim Lai <jim.lai@intel.com>, You-Sheng Yang <vicamo.yang@canonical.com>, 
 Alan Stern <stern@rowland.harvard.edu>, Hans de Goede <hdegoede@redhat.com>, 
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
 devicetree@vger.kernel.org, Bryan O'Donoghue <bryan.odonoghue@linaro.org>
X-Mailer: b4 0.14.2

Add bindings for OVO2E10 a two lane MIPI CSI, two megapixel 1080p RGB sensor.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 .../bindings/media/i2c/ovti,ov02e10.yaml           | 113 +++++++++++++++++++++
 1 file changed, 113 insertions(+)

diff --git a/Documentation/devicetree/bindings/media/i2c/ovti,ov02e10.yaml b/Documentation/devicetree/bindings/media/i2c/ovti,ov02e10.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..4ac4e11a16c8bb7a53db0c44289b1004dbdc282a
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/i2c/ovti,ov02e10.yaml
@@ -0,0 +1,113 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright (c) 2025 Linaro Ltd.
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/i2c/ovti,ov02e10.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Omnivision OV02E10 CMOS Sensor
+
+maintainers:
+  - Bryan O'Donoghue <bryan.odonoghue@linaro.org>
+
+description: |
+  The Omnivision OV02E10 is a 2 megapixel, CMOS image sensor which supports:
+  - Automatic black level calibration (ABLC)
+  - Programmable controls for frame rate, mirror and flip, binning, cropping
+    and windowing
+  - Output formats 10-bit 4C RGB RAW, 10-bit Bayer RAW
+  - 2-lane MIPI D-PHY TX @ 720 Mbps per lane
+  - Dynamic defect pixel cancellation
+  - Standard SCCB command interface
+
+allOf:
+  - $ref: /schemas/media/video-interface-devices.yaml#
+
+properties:
+  compatible:
+    const: ovti,ov02e10
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
+            items:
+              - const: 1
+              - const: 2
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
+        ov02e10: camera@10 {
+            compatible = "ovti,ov02e10";
+            reg = <0x10>;
+
+            reset-gpios = <&tlmm 237 GPIO_ACTIVE_LOW>;
+            pinctrl-names = "default";
+            pinctrl-0 = <&cam_rgb_defaultt>;
+
+            clocks = <&ov02e10_clk>;
+
+            assigned-clocks = <&ov02e10_clk>;
+            assigned-clock-parents = <&ov02e10_clk_parent>;
+            assigned-clock-rates = <19200000>;
+
+            avdd-supply = <&vreg_l7b_2p8>;
+            dvdd-supply = <&vreg_l7b_1p8>;
+            dovdd-supply = <&vreg_l3m_1p8>;
+
+            port {
+                ov02e10_ep: endpoint {
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


