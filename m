Return-Path: <devicetree+bounces-73278-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AE7778FE70F
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 15:04:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 42D62285B68
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 13:04:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D058F195F1C;
	Thu,  6 Jun 2024 13:04:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="joPzXi64"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06A9B1D696
	for <devicetree@vger.kernel.org>; Thu,  6 Jun 2024 13:04:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717679053; cv=none; b=G6gOhNeEEgYVidJxWK0xUxoxPP3xQImLQ+QUHukcqAOR2diTOv7zB6iUwM5Tfs9RyN41jXe1FekLx3UtjhMFeLJGX3mDNIgjh05ANXZE3EKNgIJZFIRrZItA8bqp0u90ZEYoLTdlTM1053A8QZSxxDr5gar6Ltb6T+XYFnrrM0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717679053; c=relaxed/simple;
	bh=GAPH2Z7eu9DetUGOatBhUGzqxV8I0ITlkgNM75wQwFo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=WU0UaCobrF8Q+2zzEkX//eqvasK5iL/lZvbdFT38f05BV2lI8ijWbeu+0iiZJvdf1mYR89a9+xEJZB6/M0eF10QGznzhr1Shx6SfAncYtgHPcHz4NgAFIiyEffcXLDvumyus/DAw3uYfBD8gmNF8ZN8pZpmZexGzFp7t5Hu8LO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=joPzXi64; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-35dd0c06577so966829f8f.2
        for <devicetree@vger.kernel.org>; Thu, 06 Jun 2024 06:04:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717679050; x=1718283850; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fuSq2gEANHXtmu+UUYCavqRwPgfGh0Xr65LspIuW5Dg=;
        b=joPzXi64Z2/YLInMpaXCxdHjsOFsx0X0m43XZbLLAR5wWeNqUMENSyT8G/0yunl0N9
         S/7vQ+6rRlmFonbgJviLyIye3UQ7bPuoOS1rpb1Zb/gxmKVO9aHs8O+rGFd+t2Bpj32w
         BYawKtZriWqnQmk4XMlS1iXm1lPsfIc8FzfJFozE1KVwkQ8CpuuWMBBZYfn5Cm1Rx7os
         2x8MN8hGaipFRsjTUfm83SSWU9xhYVI/vo9VCxrRRWYm61Ioep9uhfkK6jp79Re/g+/g
         lpo1zHXqZkydXNHRkTgiIV1ijlWIrQFldND3iTVLjyDatqGicMScEMuDIgKw1SxOOc1Q
         1x3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717679050; x=1718283850;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fuSq2gEANHXtmu+UUYCavqRwPgfGh0Xr65LspIuW5Dg=;
        b=tlzGaHyTBkHLvpXZFTbTdMXGU6n7jXtNFU/ZpdNPXDYflQgLI8GNX4/NL/3v1TMvdU
         iMBMqVe9hgdMEE38J0sxFq4y2aTKhTsVkTM/OhNLOFNoRJocl/6SUC17Eiw635uUSyqZ
         m5H44cnngboRPzeujgFWVDTMvoWjhYVXaHQzR0OfYmkZAwHX3EU/2ahFg0jF59bE3cXT
         zYaQ0r//HIYV8b4CLVMEPRqKkUB+DYl04uPrYpuKvISJFIMZXZ1TL/STZPmLksn72T74
         EGjFycub9fUVMkMxvwg6CRZGH+7A7IcHCi0XcTQnSyzmXG1yX1X4TVlhwBK7kG7FrAUY
         JeKA==
X-Forwarded-Encrypted: i=1; AJvYcCVRaLpF2nbq9gIwY4Qag96O2Rd+suhVaoanN7GKsJbvM/ex52PuLGSyhyrM1wNLuBc+mZDjlMjssjhcnou3YAkuUBwkUtR6YVD6/A==
X-Gm-Message-State: AOJu0Yy+9yU8QpkbwYYbCsz/wdZpM+R36JrA6DKBXxtqdHKHKSb7rvT7
	k3+NoM5/DO9NYRNkP6RpV3182mH1SWL/Ubnr6JsQ6nBUBtfJKRABFEIwETeH01dZt479Xj43fGx
	h
X-Google-Smtp-Source: AGHT+IEBDu4fKjtlUvZo4xyjG0F14PxqYikC/iFEFI9pus0lvqe+VPsmEhgBpXGCH7wsIKtLVgNf9g==
X-Received: by 2002:a5d:404d:0:b0:35e:7de9:bdb1 with SMTP id ffacd0b85a97d-35e8ef77e12mr4252978f8f.53.1717679050350;
        Thu, 06 Jun 2024 06:04:10 -0700 (PDT)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-35ef5d49dfcsm1505286f8f.39.2024.06.06.06.04.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Jun 2024 06:04:09 -0700 (PDT)
From: srinivas.kandagatla@linaro.org
To: andersson@kernel.org,
	linus.walleij@linaro.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	srinivas.kandagatla@linaro.org,
	linux-arm-msm@vger.kernel.org,
	inux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: pinctrl: qcom: Add SM4250 pinctrl
Date: Thu,  6 Jun 2024 14:03:22 +0100
Message-Id: <20240606130323.138970-2-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240606130323.138970-1-srinivas.kandagatla@linaro.org>
References: <20240606130323.138970-1-srinivas.kandagatla@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>

Add device tree binding Documentation details for Qualcomm SM4250 LPASS
LPI(Low power Island) pinctrl device.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 .../qcom,sm4250-lpass-lpi-pinctrl.yaml        | 119 ++++++++++++++++++
 1 file changed, 119 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pinctrl/qcom,sm4250-lpass-lpi-pinctrl.yaml

diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,sm4250-lpass-lpi-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,sm4250-lpass-lpi-pinctrl.yaml
new file mode 100644
index 000000000000..3968a363aa51
--- /dev/null
+++ b/Documentation/devicetree/bindings/pinctrl/qcom,sm4250-lpass-lpi-pinctrl.yaml
@@ -0,0 +1,119 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pinctrl/qcom,sm4250-lpass-lpi-pinctrl.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm SM4250 SoC LPASS LPI TLMM
+
+maintainers:
+  - Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
+
+description:
+  Top Level Mode Multiplexer pin controller in the Low Power Audio SubSystem
+  (LPASS) Low Power Island (LPI) of Qualcomm SM4250 SoC.
+
+properties:
+  compatible:
+    const: qcom,sm4250-lpass-lpi-pinctrl
+
+  reg:
+    maxItems: 2
+
+  clocks:
+    items:
+      - description: LPASS Audio voting clock
+
+  clock-names:
+    items:
+      - const: audio
+
+patternProperties:
+  "-state$":
+    oneOf:
+      - $ref: "#/$defs/qcom-sm4250-lpass-state"
+      - patternProperties:
+          "-pins$":
+            $ref: "#/$defs/qcom-sm4250-lpass-state"
+        additionalProperties: false
+
+$defs:
+  qcom-sm4250-lpass-state:
+    type: object
+    description:
+      Pinctrl node's client devices use subnodes for desired pin configuration.
+      Client device subnodes use below standard properties.
+    $ref: qcom,lpass-lpi-common.yaml#/$defs/qcom-tlmm-state
+    unevaluatedProperties: false
+
+    properties:
+      pins:
+        description:
+          List of gpio pins affected by the properties specified in this
+          subnode.
+        items:
+          oneOf:
+            - pattern: "^gpio([0-9]|1[0-8])$"
+        minItems: 1
+        maxItems: 19
+
+      function:
+        enum: [ gpio, dmic01_clk, dmic01_data, dmic23_clk, dmic23_data,
+                dmic4_clk, dmic4_data, ext_mclk0_a, ext_mclk0_b, ext_mclk1_a,
+                ext_mclk1_b, ext_mclk1_c, i2s1_clk, i2s1_data, i2s1_ws,
+                i2s2_clk, i2s2_data, i2s2_ws, i2s3_clk, i2s3_data, i2s3_ws,
+                qua_mi2s_data, qua_mi2s_sclk, qua_mi2s_ws, slim_clk, slim_data,
+                swr_rx_clk, swr_rx_data, swr_tx_clk, swr_tx_data, swr_wsa_clk,
+                swr_wsa_data ]
+        description:
+          Specify the alternative function to be configured for the specified
+          pins.
+
+allOf:
+  - $ref: qcom,lpass-lpi-common.yaml#
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/sound/qcom,q6afe.h>
+    lpi_tlmm: pinctrl@a7c0000 {
+        compatible = "qcom,sm4250-lpass-lpi-pinctrl";
+        reg = <0xa7c0000 0x20000>,
+              <0xa950000 0x10000>;
+        clocks = <&q6afecc LPASS_HW_DCODEC_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>;
+        clock-names = "audio";
+        gpio-controller;
+        #gpio-cells = <2>;
+        gpio-ranges = <&lpi_tlmm 0 0 19>;
+
+        i2s2-active-state {
+            clk-pins {
+                pins = "gpio10";
+                function = "i2s2_clk";
+                drive-strength = <2>;
+                slew-rate = <1>;
+                bias-disable;
+            };
+
+            data-pins {
+                pins = "gpio12";
+                function = "i2s2_data";
+                drive-strength = <2>;
+                slew-rate = <1>;
+            };
+        };
+
+        i2s2-sleep-clk-state {
+            pins = "gpio10";
+            function = "i2s2_clk";
+            drive-strength = <2>;
+            bias-pull-down;
+        };
+    };
-- 
2.25.1


