Return-Path: <devicetree+bounces-12390-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F1C07D93DB
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 11:37:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 565A828232E
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 09:37:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5337B1642A;
	Fri, 27 Oct 2023 09:37:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="C9nw4OXm"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C06F716412
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 09:37:28 +0000 (UTC)
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4884F11F
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 02:37:25 -0700 (PDT)
Received: by mail-lj1-x22e.google.com with SMTP id 38308e7fff4ca-2c514cbbe7eso26654201fa.1
        for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 02:37:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698399443; x=1699004243; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qf2NUAQLAKI7F389ZDRsoP6S/mfCGfk8XgxqPp6JMpE=;
        b=C9nw4OXmrJDWsKRke7YIiAjlPr+33ghiE0Zu+x15vg+oQZ42QCH/CYmGRsrOaVHIMk
         SG5Ol7gmUyHb03gBv9rLUt5NJMz/Fp3+rEAe2VnM3NZaJGZu7KIyM9k6CtbvSkMx6SQ5
         cHsgoL3rDXCnSrAeuMlA1zN49Urz9NwLoz511FlnDqxKzssL15ObRtUg1daHtBKR9hSF
         sS9DeHgcg2BSmQG++XbUihxU+oUZDU79EsQpNwWUq+H23shKuiz+LsVkRd3Cu2uoW9nD
         xN+XJeGcnTwVP638m6xzkyF89OdDPC5hmL6b2IUp8a+s+fcWt0DuxYCSjjecYTvM+vZq
         P9QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698399443; x=1699004243;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qf2NUAQLAKI7F389ZDRsoP6S/mfCGfk8XgxqPp6JMpE=;
        b=fneRF21C9CdsmSCShwFOWdhWZ6vyd4D1t+dHan2AhH33gzZEcUN+ElDRyvO4cwqDf6
         5WMVW8EO+W4tfb3CiAFogudaxM7txA/N3bYK7n71wFid7eMh0QaIA8jiaQoxOYfS+xcA
         Mk5baBaIU0Q0y1Z11dxv2cYEGWNIff8z+S4zLZwoMgKF8wF+SQ2DLDPONh46xu/v3+id
         8+2H2x22slCbXCbvJRIIMqKuVgNwbmA024G9N6d9C+P7qo6efALrxTZ9Gmqp+O1kaQI7
         vUPw1E0PEnddEM73uyuQw437WsdiiSKjpzRFjG3KB1V5GwlHOEaZcPqVmKASvDmczSZO
         1O4g==
X-Gm-Message-State: AOJu0YxWF/xKBrOHuwxHeTMdbVNe9i6MFf4UKJk6PbDDLp4OcPScH4XA
	dlu2D8M1lu4kaQb1OfujNI2tOw==
X-Google-Smtp-Source: AGHT+IG+4ju2+t0V03vBtXxTzz+jI0la47vGRo7IPpxWjep/Jp8pjV/VOfQkikTSprKVgvk9yNcY1g==
X-Received: by 2002:a2e:3c12:0:b0:2c5:1bfc:e60b with SMTP id j18-20020a2e3c12000000b002c51bfce60bmr1642254lja.50.1698399443626;
        Fri, 27 Oct 2023 02:37:23 -0700 (PDT)
Received: from krzk-bin.. ([78.10.206.168])
        by smtp.gmail.com with ESMTPSA id s26-20020a2e151a000000b002c12c2094e4sm223341ljd.74.2023.10.27.02.37.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Oct 2023 02:37:23 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/2] dt-bindings: pinctrl: qcom,sm8650-lpass-lpi-pinctrl: add SM8650 LPASS
Date: Fri, 27 Oct 2023 11:36:14 +0200
Message-Id: <20231027093615.140656-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231027093615.140656-1-krzysztof.kozlowski@linaro.org>
References: <20231027093615.140656-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add bindings for the pin controller in Low Power Audio SubSystem (LPASS)
of Qualcomm SM8650 SoC.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../qcom,sm8650-lpass-lpi-pinctrl.yaml        | 148 ++++++++++++++++++
 1 file changed, 148 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pinctrl/qcom,sm8650-lpass-lpi-pinctrl.yaml

diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,sm8650-lpass-lpi-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,sm8650-lpass-lpi-pinctrl.yaml
new file mode 100644
index 000000000000..f5736ed140ee
--- /dev/null
+++ b/Documentation/devicetree/bindings/pinctrl/qcom,sm8650-lpass-lpi-pinctrl.yaml
@@ -0,0 +1,148 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pinctrl/qcom,sm8650-lpass-lpi-pinctrl.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm SM8650 SoC LPASS LPI TLMM
+
+maintainers:
+  - Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
+  - Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
+
+description:
+  Top Level Mode Multiplexer pin controller in the Low Power Audio SubSystem
+  (LPASS) Low Power Island (LPI) of Qualcomm SM8650 SoC.
+
+properties:
+  compatible:
+    const: qcom,sm8650-lpass-lpi-pinctrl
+
+  reg:
+    items:
+      - description: LPASS LPI TLMM Control and Status registers
+
+  clocks:
+    items:
+      - description: LPASS Core voting clock
+      - description: LPASS Audio voting clock
+
+  clock-names:
+    items:
+      - const: core
+      - const: audio
+
+  gpio-controller: true
+
+  "#gpio-cells":
+    description: Specifying the pin number and flags, as defined in
+      include/dt-bindings/gpio/gpio.h
+    const: 2
+
+  gpio-ranges:
+    maxItems: 1
+
+patternProperties:
+  "-state$":
+    oneOf:
+      - $ref: "#/$defs/qcom-sm8650-lpass-state"
+      - patternProperties:
+          "-pins$":
+            $ref: "#/$defs/qcom-sm8650-lpass-state"
+        additionalProperties: false
+
+$defs:
+  qcom-sm8650-lpass-state:
+    type: object
+    description:
+      Pinctrl node's client devices use subnodes for desired pin configuration.
+      Client device subnodes use below standard properties.
+    $ref: /schemas/pinctrl/pincfg-node.yaml
+
+    properties:
+      pins:
+        description:
+          List of gpio pins affected by the properties specified in this
+          subnode.
+        items:
+          pattern: "^gpio([0-9]|1[0-9]|2[0-2])$"
+
+      function:
+        enum: [ dmic1_clk, dmic1_data, dmic2_clk, dmic2_data, dmic3_clk,
+                dmic3_data, dmic4_clk, dmic4_data, ext_mclk1_a, ext_mclk1_b,
+                ext_mclk1_c, ext_mclk1_d, ext_mclk1_e, gpio, i2s0_clk,
+                i2s0_data, i2s0_ws, i2s1_clk, i2s1_data, i2s1_ws, i2s2_clk,
+                i2s2_data, i2s2_ws, i2s3_clk, i2s3_data, i2s3_ws, i2s4_clk,
+                i2s4_data, i2s4_ws, qca_swr_clk, qca_swr_data, slimbus_clk,
+                slimbus_data, swr_rx_clk, swr_rx_data, swr_tx_clk, swr_tx_data,
+                wsa_swr_clk, wsa_swr_data, wsa2_swr_clk, wsa2_swr_data ]
+        description:
+          Specify the alternative function to be configured for the specified
+          pins.
+
+      drive-strength:
+        enum: [2, 4, 6, 8, 10, 12, 14, 16]
+        default: 2
+        description:
+          Selects the drive strength for the specified pins, in mA.
+
+      slew-rate:
+        enum: [0, 1, 2, 3]
+        default: 0
+        description: |
+          0: No adjustments
+          1: Higher Slew rate (faster edges)
+          2: Lower Slew rate (slower edges)
+          3: Reserved (No adjustments)
+
+      bias-bus-hold: true
+      bias-pull-down: true
+      bias-pull-up: true
+      bias-disable: true
+      input-enable: true
+      output-high: true
+      output-low: true
+
+    required:
+      - pins
+      - function
+
+    additionalProperties: false
+
+allOf:
+  - $ref: pinctrl.yaml#
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - gpio-controller
+  - "#gpio-cells"
+  - gpio-ranges
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/sound/qcom,q6dsp-lpass-ports.h>
+
+    lpass_tlmm: pinctrl@6e80000 {
+        compatible = "qcom,sm8650-lpass-lpi-pinctrl";
+        reg = <0x06e80000 0x20000>;
+
+        clocks = <&q6prmcc LPASS_HW_MACRO_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+                 <&q6prmcc LPASS_HW_DCODEC_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>;
+        clock-names = "core", "audio";
+
+        gpio-controller;
+        #gpio-cells = <2>;
+        gpio-ranges = <&lpass_tlmm 0 0 23>;
+
+        tx-swr-sleep-clk-state {
+            pins = "gpio0";
+            function = "swr_tx_clk";
+            drive-strength = <2>;
+            bias-pull-down;
+        };
+    };
-- 
2.34.1


