Return-Path: <devicetree+bounces-163030-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 82590A7B22A
	for <lists+devicetree@lfdr.de>; Fri,  4 Apr 2025 00:55:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BAABC188D9FC
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 22:55:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4EB651DB34E;
	Thu,  3 Apr 2025 22:55:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kAxC7HtQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69FB81C84DD
	for <devicetree@vger.kernel.org>; Thu,  3 Apr 2025 22:55:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743720912; cv=none; b=mXl00cj2BthQ8jfx/Ztl9jxNGVk5oY5GLm0D2PIvo3OkuI9eGQzyB1/+lsCfPonGdq0z2Mr7fDiAYtlAByZgS4+3sCSlSRT26rvQnMv/UYAazerPJMW8Ra/CJ5VYpMPfkVyG6t97RYWu6wwj6jp88otXj5P8Cm40+Ylq5Htt/6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743720912; c=relaxed/simple;
	bh=ffRvJE/4BkyQpmYML9g9ITvn94Gn2ipUOTX9D0Ct3KU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ExvPdDTsjbFqYUNvo8F1H50CAoNvxqh8cT4mcvOg93JBfLdpLE1v+/pJqMx2TQNzCGIpfCu/BUKBpsTcZpVGK48HkLb7jaBlPp4XTmNU/qXKPgo+rzrZ/xXCgVJjAQAqaUY8RF7hhPRPXU4aZbt6gp5ukrFerERFfSKzQFJ1nKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kAxC7HtQ; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-39bf44be22fso1036832f8f.0
        for <devicetree@vger.kernel.org>; Thu, 03 Apr 2025 15:55:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743720908; x=1744325708; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DhCv4j7CCOy4gHHp9VAGi9s30D/BhAAdMeNmK1XUyNQ=;
        b=kAxC7HtQx8gAsQnM8FjgwxAg33iZlVtOf6fjk+21+0tKakKAk0zIc+nbdwkoQOJqWa
         YXM5p9Ap19+/AKq6kzv2nlMGy93kJUhu4Fl7Z0UzNGuMqyop5u+cRyGTScjW/LTNjLyP
         O2yYFGSFaXn/L9Jaq2bcfiIEbGplG1hRn8WeRepsq8jVRdbzgufAmTj11rc+gpKvHiKD
         o9ENQNvZSF4SVySOpbsYzhNXCpQgR5G4BMpsXVRtSotMchrTJe+jdf4Bfgd9gjuZeN4S
         s52GEY6rE87XNOVbyBJpomqVto/EjZSMFG5XA5Fsnrzbh1SOEBD/7aASoORzu2C7YfGt
         R0xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743720908; x=1744325708;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DhCv4j7CCOy4gHHp9VAGi9s30D/BhAAdMeNmK1XUyNQ=;
        b=Uce2PbV72KejXbEGeFzakxsr/XJYS0xsnMjg+nBrMsfEUX7Me4gBgBys3vtP16dzDY
         kUJQKWmNbeTKCYyuyl5AS0r3dSV1OSuizsNLM7akNLt7yYki2aIGvboNiAIJZV6R90V8
         OX2jpiFqyNcmFUBF/6erm6H8Rrok3DAaW/I1rA0ZHRhiAP0Zoo0iDfyMNb1gKuK5JqLQ
         utLQ/c37nvscqLxjXE8BHOyQS5DRSuYQ3lu04sSLZXFsQGR/v+3SKNe825Uf9cPMotKq
         vS6b9U9uEd3da2+XaQ8QdF6G6eY/7WuPrQLjunALh6QTTS9Hzg1VmYvyF6RyfLXLODPl
         8pYQ==
X-Forwarded-Encrypted: i=1; AJvYcCUKy3AcOQD4pRz0+vwn+PeZHPjkfinNnxxnsTbI89msPhcIzfg8TVX/4KeF6tfcLFCyn8TQ3Y1M09Yb@vger.kernel.org
X-Gm-Message-State: AOJu0Yz6T5chFyaendWMyWYxR0/iW8JGEVLmoC6ILrsSpsGgQsdpqOI7
	5irT6eMzQronvjS2DURWhYYyg+19loatNlbN5oaOwsv8podQTom+yo+0btfIZAE=
X-Gm-Gg: ASbGncvXGKij38xE8sKUeMtIyaGkRelRS5WYU55y3IeSsgWCaFO5D7cNiYE3gx+5nuJ
	pIomsLWB/kAvhexuDVaSuEjNYE2pA2WkXa2akqYqI6pMdyR4o13/ileGM7KinCs+yZXpMEQ83tD
	5Vs8tNGvuQ3DRDZIco5l+YBJlNEwidztsmgXteMw2rYRnvpqu7jJ8JVFEfzcVqWS9kOt2vGaX56
	ZfbD7Fnmb//1nc5o2VCN7+pAJKE5tTs1TZplOdrSpbzTTySDfJy5I1tRiwppRPyMs1BdXTRs3Tf
	+uCxLgPLlqzFPfrTOfaNxWp0l7IfvX20nn5lJxBoq9KK6ZzVue+5za0DkVoHpni4dr64Kt8c3XL
	khwPaT1DxCA==
X-Google-Smtp-Source: AGHT+IF/tQuvPH6MHbSfEnJMZa9wiBR8v2f+K4Vpyqfm6aM31m7jVUX3Xbswaw0ht1di3fpRjRlfOg==
X-Received: by 2002:a05:6000:40dd:b0:38d:d701:419c with SMTP id ffacd0b85a97d-39cba977784mr776597f8f.41.1743720908568;
        Thu, 03 Apr 2025 15:55:08 -0700 (PDT)
Received: from [192.168.0.34] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39c301b8ae1sm2936829f8f.51.2025.04.03.15.55.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Apr 2025 15:55:08 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Thu, 03 Apr 2025 23:55:05 +0100
Subject: [PATCH v3 1/2] media: dt-bindings: Add OmniVision OV02E10
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250403-b4-media-comitters-next-25-03-13-ov02e10-v3-1-b30d5693688c@linaro.org>
References: <20250403-b4-media-comitters-next-25-03-13-ov02e10-v3-0-b30d5693688c@linaro.org>
In-Reply-To: <20250403-b4-media-comitters-next-25-03-13-ov02e10-v3-0-b30d5693688c@linaro.org>
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
 devicetree@vger.kernel.org, Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2

Add bindings for OVO2E10 a two lane MIPI CSI, two megapixel 1080p RGB sensor.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
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


