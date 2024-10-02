Return-Path: <devicetree+bounces-107257-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 68C8698D876
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2024 16:00:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D8BA31F2147B
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2024 14:00:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3EB261D0F70;
	Wed,  2 Oct 2024 13:58:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PpymQSe5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 448591D07B8
	for <devicetree@vger.kernel.org>; Wed,  2 Oct 2024 13:58:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727877532; cv=none; b=o0+iIiT+WcKbXPPtEfsOBGr1Rl4frn+81GNAHnLFXmygG1qu7EKiegeMF3IeJKNhxm/zFMWV1ip9QSXLnCBQ629mIqruVU+qM2HTdQN5Ga9JjxkuAJjImzAA4c7Hrfi0A2EQ/HweD7IPzK7MXrGsnQGAxjyerzSJ0QqosxAY7s4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727877532; c=relaxed/simple;
	bh=fIo5orNyLLEFPtJb5oz4IDtLey/l+6Bpn6HZ72/3cCA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Kn4d3miUtyMu7Hb8RMvJGWfftg47LfhIPWXSxJdAjB7k73lBSUCqKoxhC2o8onfRNL4Y/DbF+qkGA7YWMAVwa208bcMbE/8J0l4zzaFSvSS/LE/g8vs6DvPXzagOtN0RPNGhsNe6BAfeH0JNjEHOY2JMqC2nim299BpeEaX8RpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PpymQSe5; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-5398e4ae9efso4639830e87.1
        for <devicetree@vger.kernel.org>; Wed, 02 Oct 2024 06:58:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727877528; x=1728482328; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Z+tYln/WYLGMsq4JdI9qtiUzKuDrsrfKpk26EEW8Tg8=;
        b=PpymQSe5ePQMCuq3W0SBo+zRdg8Q3QfV4NjFYZQfk9a/b8d62JSkcBZwM44HWiXfpj
         +GJC7jY3KocuMxCqG7UE8+E4jiW1d85zG5XQsRuKti6+X4K4tIdbWRo8uZ4Yy0F2XcgP
         5fI1hsMfrukVOYt2NkRsMAm7q6bf/Jr26LAbb8+ChvtMoS/yFmg/tqxgDwOFQVbsyLrv
         +7nhNA+YOiXDCWwj2qaGq4Qc3e6vWYM8nRYrzoekzLJ2oKMSSSorGagoyYIoXWoNpy00
         93tVbSZoqZ385ZmBK5nyNliRhkf3yzaZJELbOlXPjtljrE/NKYCLjaTbqt0O9zq+yu13
         w9RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727877528; x=1728482328;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Z+tYln/WYLGMsq4JdI9qtiUzKuDrsrfKpk26EEW8Tg8=;
        b=QB9Wnsd0SW5E7Y+2cjNeBPYpOu4XkRvMYHmhu+3i1eeUd4l4UiZCUlKGVbK3PT6ogc
         opUnOSwszIoh0+UCLxZBn4c+vjU9GtKYqtOrEOON6c3VQSZcc8Iej7ZGA+Gjt61JZfX0
         FqYz+n+mLc7KtbSt7VQOEmqnbfZmoVcpi4IKYMGv/Hdnq0rXyz7FklgmzD5UCOBv5Dq8
         TVPEZVuWsRIeAx2hbWioQ+vjtZck/yOR2tFBICx+P+nriS8ovefC5Jj7MD07fN1Qb+KN
         q1CAKGOEQCUSiKFTYhm/J6TozSz9BdtZi7olUuwGcfwQ15b/pqduWitkRjrgF9Gd6aSB
         rPrQ==
X-Forwarded-Encrypted: i=1; AJvYcCXk2eXVPa29vI7fjMkf9cOuiRgilXt5CRw1k+752S5cX5prnmbTXOlzIh7G5ke8sAhv4ekR77w8BlMe@vger.kernel.org
X-Gm-Message-State: AOJu0YzktcN4J8vZHXsDKbJ0El2wh1O4eYqQ1jbUpDBELBNmlrs5Gkhd
	6bcEs8RX4YD+LZtOlnF9jgIrSp54msKDXFH+VuGtZy7RwFNvFn2TfDB2Pyq+c/cpXl0jSgRLaXT
	x7HU=
X-Google-Smtp-Source: AGHT+IFCgyh8+Qb5va2P+FCDk6hJ8gP0zOs45xyIB7dsI22CUb5NA/DAJZ9Nc26i9yRNcfg3mK9j3Q==
X-Received: by 2002:a05:6512:b12:b0:539:921a:44af with SMTP id 2adb3069b0e04-539a07a134fmr1752530e87.48.1727877528068;
        Wed, 02 Oct 2024 06:58:48 -0700 (PDT)
Received: from [127.0.0.1] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5c882405b19sm7577346a12.11.2024.10.02.06.58.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Oct 2024 06:58:47 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Wed, 02 Oct 2024 14:58:44 +0100
Subject: [PATCH v3 2/4] media: dt-bindings: Add OmniVision OV08X40
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241002-b4-master-24-11-25-ov08x40-v3-2-483bcdcf8886@linaro.org>
References: <20241002-b4-master-24-11-25-ov08x40-v3-0-483bcdcf8886@linaro.org>
In-Reply-To: <20241002-b4-master-24-11-25-ov08x40-v3-0-483bcdcf8886@linaro.org>
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
 .../bindings/media/i2c/ovti,ov08x40.yaml           | 116 +++++++++++++++++++++
 1 file changed, 116 insertions(+)

diff --git a/Documentation/devicetree/bindings/media/i2c/ovti,ov08x40.yaml b/Documentation/devicetree/bindings/media/i2c/ovti,ov08x40.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..74b33a083efbe91db0fa4e7e7bb6008a95e4e4d6
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/i2c/ovti,ov08x40.yaml
@@ -0,0 +1,116 @@
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
+        unevaluatedProperties: false
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
+additionalProperties: false
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


