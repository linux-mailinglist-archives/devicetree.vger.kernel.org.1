Return-Path: <devicetree+bounces-98241-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C7469657B0
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 08:35:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4177AB21F44
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 06:35:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4273B1531F5;
	Fri, 30 Aug 2024 06:35:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="urphI+MH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C411B1D131D
	for <devicetree@vger.kernel.org>; Fri, 30 Aug 2024 06:35:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724999709; cv=none; b=MIpvVpDBgW4tGyqs9c2XrIu0IxzKM68TWtULB21qr853nV2aRJwyprOe9QU1TpskPSzT9O3vW3ZeMGgsXaETxmGvW7bByKz/RlpmYQV/V8BYBZrwbpWsKvSnmGO38D2jSAvWEikDghhCrEVQkEASfp3DonvjMXvKoK9dxQd66Yg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724999709; c=relaxed/simple;
	bh=yYQ6acehCyW1zLMUki14le2kpNm27i0RtoBcCYQ15Tw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=IUhhd1r/rY/7CbMFtgp6C58TeKbrVp7OEbONKkCcoLWB53Ajm52wi3OCAU+stFSBL1X6L6TCkGy9UzuU3iQKtZYXoq11tj46yYhpiMMy65jkovJD4CMrFZvswv396hzcxI6KKWkhRMBjNR4u5ajXSQGT7StmVVwTLKk+a+NMq2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=urphI+MH; arc=none smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2f3f26aad32so1015971fa.0
        for <devicetree@vger.kernel.org>; Thu, 29 Aug 2024 23:35:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724999704; x=1725604504; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SDnDU3kgVwS7LsssVzzQefO3+iiD2Zk1z7JTxz0bJKQ=;
        b=urphI+MH3FfZe6MLYbCloWgjOsWDVsnfzttyqs+UElSvOA/M6hbslnsO8j7GFXK0RF
         QXJZLU/mLTPX1Kev2MrLiX/HbZv48aggX3O0RSVza9NTU4IB/tjDb7F08ZRLBGoQwcTX
         ggrAv1H642gU7xf3Ekd1bRvRTZDfsPx5ch1a2zHUq5G2XFVIMfg5tUJYt+5zVxF1kQT7
         hE9bhI7idD8IFOU94Z2WsDpUyR+/yXTyiiaOlPBaKrwm2pkDO4h49bZXVTv0w9WXts38
         KvS8SjJqO7wjgqJfAoTvuwHoeR/uXQ1lAg9mPTHzS2XBOIOMuQfL8NTzBcNP27v3vOFg
         vwQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724999704; x=1725604504;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SDnDU3kgVwS7LsssVzzQefO3+iiD2Zk1z7JTxz0bJKQ=;
        b=cM87KcIKa9ZMmzn0wLskH1BL6Ydz3qu1EHX9pJh5c46w6vXvhtZeZ8MeeJ8+nU9HjL
         gbbsgkutntdq6YU3BM0jZiVXkizlFfPxQEZI00ZhzmdEqwSJq/aI59n/Pe/U+AHlxb0F
         cHrDJOa+A61RIY3+CEqAUuwcEaIm2o+qdNvl26+Vf6nTSVnPB0hOQWN2l6A26sscwr3r
         MVJG6+daIphMP7n9pG6I0ZwDtEe8Yd/uVQGxiHY6eD4XyvARyUqvK4Kk7bFQJsxDiMtD
         ja7jpq4TuALvsYWbCpccBJ/krXYs3ABRsG9e3BbmVEUOwgj8Cid5ry8I3MUEWDiVtL/m
         Sr9A==
X-Forwarded-Encrypted: i=1; AJvYcCUXyG+lymGpXK9l2oPL3Runj37YLj8UW0DM5R4qhcHyHW21+w/oL3MqN7JG+WW/ZPWHaZw689XzRuGE@vger.kernel.org
X-Gm-Message-State: AOJu0YxXOTCCJncG7jtWBMgsFMLsOuhmAjOhkt+WCpV1BtOR0GNawph2
	uanMXg4O00z9+tIhp9t19NCaZIC+GWNHBNWLSKWrac0PCbpynKJ3mYFM1WuVVXg=
X-Google-Smtp-Source: AGHT+IHUyvr8pXivZtsQv1J3akeFVxkHJVKRhZ/KiVVOTyEeBR306kHbWJatGH85ERomac9zgh9sqQ==
X-Received: by 2002:a2e:bc0b:0:b0:2ef:226e:bc6d with SMTP id 38308e7fff4ca-2f61e023cf2mr4806181fa.2.1724999703575;
        Thu, 29 Aug 2024 23:35:03 -0700 (PDT)
Received: from localhost.localdomain (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2f614f00860sm4879441fa.45.2024.08.29.23.35.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Aug 2024 23:35:03 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Sakari Ailus <sakari.ailus@linux.intel.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v4 1/6] media: dt-bindings: Add OmniVision OG01A1B image sensor
Date: Fri, 30 Aug 2024 09:34:54 +0300
Message-ID: <20240830063459.3088895-2-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240830063459.3088895-1-vladimir.zapolskiy@linaro.org>
References: <20240830063459.3088895-1-vladimir.zapolskiy@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add device tree bindings documentation for OmniVision OG01A1B image
sensor.

Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
---
 .../bindings/media/i2c/ovti,og01a1b.yaml      | 107 ++++++++++++++++++
 MAINTAINERS                                   |   1 +
 2 files changed, 108 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/ovti,og01a1b.yaml

diff --git a/Documentation/devicetree/bindings/media/i2c/ovti,og01a1b.yaml b/Documentation/devicetree/bindings/media/i2c/ovti,og01a1b.yaml
new file mode 100644
index 000000000000..ca57c01739d2
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/i2c/ovti,og01a1b.yaml
@@ -0,0 +1,107 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+# Copyright (c) 2023-2024 Linaro Ltd.
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/i2c/ovti,og01a1b.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: OmniVision OG01A1B Image Sensor
+
+maintainers:
+  - Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
+
+description:
+  The OmniVision OG01A1B is black and white CMOS 1.3 Megapixel (1280x1024)
+  image sensor controlled over an I2C-compatible SCCB bus.
+  The sensor transmits images on a MIPI CSI-2 output interface with one or
+  two data lanes.
+
+allOf:
+  - $ref: /schemas/media/video-interface-devices.yaml#
+
+properties:
+  compatible:
+    const: ovti,og01a1b
+
+  reg:
+    maxItems: 1
+
+  clocks:
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
+    description: Analogue circuit voltage supply.
+
+  dovdd-supply:
+    description: I/O circuit voltage supply.
+
+  dvdd-supply:
+    description: Digital circuit voltage supply.
+
+  port:
+    $ref: /schemas/graph.yaml#/$defs/port-base
+    additionalProperties: false
+    description:
+      Output port node, single endpoint describing the CSI-2 transmitter.
+
+    properties:
+      endpoint:
+        $ref: /schemas/media/video-interfaces.yaml#
+        unevaluatedProperties: false
+
+        properties:
+          data-lanes:
+            minItems: 1
+            maxItems: 2
+            items:
+              enum: [1, 2]
+
+          link-frequencies: true
+
+        required:
+          - data-lanes
+          - link-frequencies
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
+        sensor@60 {
+            compatible = "ovti,og01a1b";
+            reg = <0x60>;
+            clocks = <&clk 0>;
+            reset-gpios = <&gpio 117 GPIO_ACTIVE_LOW>;
+            avdd-supply = <&vreg_3v3>;
+            dovdd-supply = <&vreg_1p8>;
+            dvdd-supply = <&vreg_1p2>;
+
+            port {
+                og01a1b_ep: endpoint {
+                    remote-endpoint = <&csiphy_ep>;
+                    data-lanes = <1 2>;
+                    link-frequencies = /bits/ 64 <500000000>;
+                };
+            };
+        };
+    };
+...
diff --git a/MAINTAINERS b/MAINTAINERS
index cf9c9221c388..9b0d1db35b7d 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -16507,6 +16507,7 @@ OMNIVISION OG01A1B SENSOR DRIVER
 M:	Sakari Ailus <sakari.ailus@linux.intel.com>
 L:	linux-media@vger.kernel.org
 S:	Maintained
+F:	Documentation/devicetree/bindings/media/i2c/ovti,og01a1b.yaml
 F:	drivers/media/i2c/og01a1b.c
 
 OMNIVISION OV01A10 SENSOR DRIVER
-- 
2.45.2


