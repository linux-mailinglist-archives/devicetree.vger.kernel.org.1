Return-Path: <devicetree+bounces-227946-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B19CBE6304
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 05:11:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 44F3E353B93
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 03:11:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D5A75253351;
	Fri, 17 Oct 2025 03:11:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="C3uj6NKp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4143E25228C
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 03:11:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760670707; cv=none; b=XtOxD1WdYdRHjBZM/KJt7OVhfXKBUw/wgJ2qzJqA+yHJaSBOzDfJyq+vifGpzyxI1s/Dq8nS/JSXf1QrTIISnKaxyWMKt3JunnQ1sPHU7gC+V1F6xyNkSw+pmnMJOxapim4idDKUa8+rXsQ5pvyCZREl8PZJOTz1mn0j+KMoHls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760670707; c=relaxed/simple;
	bh=m+c0FB1l3jr19o8g1D/D4Np82Og3MGEw0sx+CkWReJM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=dJi/V+CQ3cwy7l7wjbLnPIvZak7opsQwT9ytzvXRFAj1eHS3j/m7nSM85U5yRPGJjJ+DGlrOOkcogPEJCzqFatt/yHBpe3oZ1b8bsn1rRNUrvR4waw6ZxGYvUxGS8W0oMPwyuFlf7E9ve9wvVhCHA6IMGfDFpLZ5vDIdpI3LqpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=C3uj6NKp; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-5903e6fc386so228905e87.2
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 20:11:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760670702; x=1761275502; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3YcrJP6tR8taNZVLdVeMsK85iu8DE4cQ7OinMyeEBvs=;
        b=C3uj6NKp1HS+5UVLRowM5FJKINDV1PFw02DpI18ylLOGTb3iSXQamXq7ELDWIOAPQC
         6gBEhYHJV3tH6WZ2xuudNZe+MP1goe4yh4QzY2DQYhAEzFjPHqlMTCa5g09iyANbkv1c
         wmoQ/BAhRY2+FnWDOGzNLCHbA6y0Q1/Geo9TsAQ9g29F9TtCXlpJiV/AQ6dIxZ2M7BCu
         Ph0E1RYZ0vwgvZ57VhkEOmN93O0DzYf0EMxMD0KHaM0AHBqdjDGps3WRPFP60HD0bYYY
         Hpx3Oo/PtU0HYjSZaQDKXkNfkkEuMi9YHZVN6Xi88YJUz3dqNAlkY13iV3gaW5PcAm5W
         F9jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760670702; x=1761275502;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3YcrJP6tR8taNZVLdVeMsK85iu8DE4cQ7OinMyeEBvs=;
        b=RrBNsbX8ZblsgZnPisUlC39bTgptnrxOUbjWmMjKEAQAAEU3ZG6KGHf+efuE0sXOy7
         1GbqHQ32Dmc1FSZTWWdzi76qM6oAQ8t69FiHlmgn0UulpmhdMr4asaVkPcjhej0AAhcy
         TINjbmSvaOxD39Vqb2zukVmF7rtp/5nK6MM9fkfxfFkfPzjQFPQUDPRcSYqPo/qX3qjF
         UjvATE27V/UhM0ClMAvYB1F4AgJkA2wdrfPXzATWCuu/S7PSgMjWdGrgQhyhaaP7t9Yb
         r+hzNctiMguN+zltR3MdNvhvtJHRM4gLFzJooSIPSByhUknuF357N7DG71LUUcrCeEKO
         5EEQ==
X-Forwarded-Encrypted: i=1; AJvYcCXRQCTLhR4DCEQkc8g0KJ01PEDt2G81G1AfYD5vS6aL0PQJRwOFhhfye8HznwxAyGC5UPYnWu2gTrcT@vger.kernel.org
X-Gm-Message-State: AOJu0YxIfDF9182jCi/LZC9pDGgcuekPRBXzfVUr9NlTtqRAs2gwZVYf
	buku7tvMM0lloRftWw4pIgcBDZFzRG19nZ18FrGGiM7xDkyX31AEBZDbsFhF8X6y8Q4=
X-Gm-Gg: ASbGncsmpk/yqqCoA5TnCnTHkOqq3uJYzCe9LtWgDsCNllPXeIVdBWACy33mpekC8fL
	lbx860WyGx45P3mXB7kpkwtPq9QOIZe4bfvHmXK/pk9MXVVU8yKY+oDWwTRhAE1z2DJsczaq7jL
	VYDNQPKy61CplEgvBdoxML19xIM7Iz3ZmYfY4K6OIJprD62QKdbJQHGG8fzNmF4uY0vuw9zGZ8J
	aeEq8fbNAYFuKvCWx8Wc1lwqI47AHR5XzoU5snljnwWHKt2xzdwaGpfFaYX510layTBduz3ottH
	WbfrzoS9p6Ehe9yOiaUdHa92gyj2ZXeyycLZ6LzS6DB6cJrtvdSSI45DxuUalZShV7QS2BzppYZ
	1ocZCQqCygrsgKJQOSUGY+a1SO5NPSAYEDkfOQ0wKl1OARA4MSf84nVGSa2zuXBI88UVn+ZCo9Q
	IWTPxMUWYSiFRsfRAWsPZ/7WVZTvEOvljruXiB7zndxZe4ormtH7zpaA==
X-Google-Smtp-Source: AGHT+IGcosLX2QR8xrte2gLtIYPDS8fN6c+8LwN9HAPKmCfTQEKUCc3lph7eCzU95DE3dEm69yN/MA==
X-Received: by 2002:a05:6512:39d6:b0:57a:6d7d:dd74 with SMTP id 2adb3069b0e04-591d8506be1mr483962e87.0.1760670702292;
        Thu, 16 Oct 2025 20:11:42 -0700 (PDT)
Received: from thyme.. (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59088563844sm7496077e87.69.2025.10.16.20.11.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Oct 2025 20:11:40 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Bryan O'Donoghue <bod@kernel.org>,
	Robert Foss <rfoss@kernel.org>,
	Todor Tomov <todor.too@gmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v3 1/4] dt-bindings: media: Describe Qualcomm SM8650 CAMSS IP
Date: Fri, 17 Oct 2025 06:11:28 +0300
Message-ID: <20251017031131.2232687-2-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20251017031131.2232687-1-vladimir.zapolskiy@linaro.org>
References: <20251017031131.2232687-1-vladimir.zapolskiy@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add device tree bindings for Qualcomm SM8650 camera subsystem.

Qualcomm SM8650 CAMSS IP contains the next subdevices:
* 6 x CSIPHY,
* 3 x CSID, 2 x CSID Lite,
* 3 x IFE, 2 x IFE Lite.

Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 .../bindings/media/qcom,sm8650-camss.yaml     | 375 ++++++++++++++++++
 1 file changed, 375 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/qcom,sm8650-camss.yaml

diff --git a/Documentation/devicetree/bindings/media/qcom,sm8650-camss.yaml b/Documentation/devicetree/bindings/media/qcom,sm8650-camss.yaml
new file mode 100644
index 000000000000..9c8de722601e
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/qcom,sm8650-camss.yaml
@@ -0,0 +1,375 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/qcom,sm8650-camss.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm SM8650 Camera Subsystem (CAMSS)
+
+maintainers:
+  - Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
+
+description:
+  The CAMSS IP is a CSI decoder and ISP present on Qualcomm platforms.
+
+properties:
+  compatible:
+    const: qcom,sm8650-camss
+
+  reg:
+    maxItems: 17
+
+  reg-names:
+    items:
+      - const: csid_wrapper
+      - const: csid0
+      - const: csid1
+      - const: csid2
+      - const: csid_lite0
+      - const: csid_lite1
+      - const: csiphy0
+      - const: csiphy1
+      - const: csiphy2
+      - const: csiphy3
+      - const: csiphy4
+      - const: csiphy5
+      - const: vfe0
+      - const: vfe1
+      - const: vfe2
+      - const: vfe_lite0
+      - const: vfe_lite1
+
+  clocks:
+    maxItems: 33
+
+  clock-names:
+    items:
+      - const: camnoc_axi
+      - const: cpas_ahb
+      - const: cpas_fast_ahb
+      - const: cpas_vfe0
+      - const: cpas_vfe1
+      - const: cpas_vfe2
+      - const: cpas_vfe_lite
+      - const: csid
+      - const: csiphy0
+      - const: csiphy0_timer
+      - const: csiphy1
+      - const: csiphy1_timer
+      - const: csiphy2
+      - const: csiphy2_timer
+      - const: csiphy3
+      - const: csiphy3_timer
+      - const: csiphy4
+      - const: csiphy4_timer
+      - const: csiphy5
+      - const: csiphy5_timer
+      - const: csiphy_rx
+      - const: gcc_axi_hf
+      - const: qdss_debug_xo
+      - const: vfe0
+      - const: vfe0_fast_ahb
+      - const: vfe1
+      - const: vfe1_fast_ahb
+      - const: vfe2
+      - const: vfe2_fast_ahb
+      - const: vfe_lite
+      - const: vfe_lite_ahb
+      - const: vfe_lite_cphy_rx
+      - const: vfe_lite_csid
+
+  interrupts:
+    maxItems: 16
+
+  interrupt-names:
+    items:
+      - const: csid0
+      - const: csid1
+      - const: csid2
+      - const: csid_lite0
+      - const: csid_lite1
+      - const: csiphy0
+      - const: csiphy1
+      - const: csiphy2
+      - const: csiphy3
+      - const: csiphy4
+      - const: csiphy5
+      - const: vfe0
+      - const: vfe1
+      - const: vfe2
+      - const: vfe_lite0
+      - const: vfe_lite1
+
+  interconnects:
+    maxItems: 2
+
+  interconnect-names:
+    items:
+      - const: ahb
+      - const: hf_mnoc
+
+  iommus:
+    maxItems: 3
+
+  power-domains:
+    items:
+      - description: IFE0 GDSC - Image Front End, Global Distributed Switch Controller.
+      - description: IFE1 GDSC - Image Front End, Global Distributed Switch Controller.
+      - description: IFE2 GDSC - Image Front End, Global Distributed Switch Controller.
+      - description: Titan GDSC - Titan ISP Block, Global Distributed Switch Controller.
+
+  power-domain-names:
+    items:
+      - const: ife0
+      - const: ife1
+      - const: ife2
+      - const: top
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+
+    description:
+      CSI input ports.
+
+    patternProperties:
+      "^port@[0-5]$":
+        $ref: /schemas/graph.yaml#/$defs/port-base
+        unevaluatedProperties: false
+
+        description:
+          Input port for receiving CSI data from a CSIPHY.
+
+        properties:
+          endpoint:
+            $ref: video-interfaces.yaml#
+            unevaluatedProperties: false
+
+            properties:
+              data-lanes:
+                minItems: 1
+                maxItems: 4
+
+              bus-type:
+                enum:
+                  - 1 # MEDIA_BUS_TYPE_CSI2_CPHY
+                  - 4 # MEDIA_BUS_TYPE_CSI2_DPHY
+
+            required:
+              - data-lanes
+
+  vdd-csiphy01-0p9-supply:
+    description:
+      Phandle to a 0.9V regulator supply to CSIPHY0 and CSIPHY1 IP blocks.
+
+  vdd-csiphy01-1p2-supply:
+    description:
+      Phandle to a 1.2V regulator supply to CSIPHY0 and CSIPHY1 IP blocks.
+
+  vdd-csiphy24-0p9-supply:
+    description:
+      Phandle to a 0.9V regulator supply to CSIPHY2 and CSIPHY4 IP blocks.
+
+  vdd-csiphy24-1p2-supply:
+    description:
+      Phandle to a 1.2V regulator supply to CSIPHY2 and CSIPHY4 IP blocks.
+
+  vdd-csiphy35-0p9-supply:
+    description:
+      Phandle to a 0.9V regulator supply to CSIPHY3 and CSIPHY5 IP blocks.
+
+  vdd-csiphy35-1p2-supply:
+    description:
+      Phandle to a 1.2V regulator supply to CSIPHY3 and CSIPHY5 IP blocks.
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - clocks
+  - clock-names
+  - interconnects
+  - interconnect-names
+  - interrupts
+  - interrupt-names
+  - iommus
+  - power-domains
+  - power-domain-names
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,sm8650-camcc.h>
+    #include <dt-bindings/clock/qcom,sm8650-gcc.h>
+    #include <dt-bindings/interconnect/qcom,sm8650-rpmh.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    soc {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        isp@acb6000 {
+            compatible = "qcom,sm8650-camss";
+            reg = <0 0x0acb6000 0 0x1000>,
+                  <0 0x0acb8000 0 0x1000>,
+                  <0 0x0acba000 0 0x1000>,
+                  <0 0x0acbc000 0 0x1000>,
+                  <0 0x0accb000 0 0x1000>,
+                  <0 0x0acd0000 0 0x1000>,
+                  <0 0x0ace4000 0 0x2000>,
+                  <0 0x0ace6000 0 0x2000>,
+                  <0 0x0ace8000 0 0x2000>,
+                  <0 0x0acea000 0 0x2000>,
+                  <0 0x0acec000 0 0x2000>,
+                  <0 0x0acee000 0 0x2000>,
+                  <0 0x0ac62000 0 0xf000>,
+                  <0 0x0ac71000 0 0xf000>,
+                  <0 0x0ac80000 0 0xf000>,
+                  <0 0x0accc000 0 0x2000>,
+                  <0 0x0acd1000 0 0x2000>;
+            reg-names = "csid_wrapper",
+                        "csid0",
+                        "csid1",
+                        "csid2",
+                        "csid_lite0",
+                        "csid_lite1",
+                        "csiphy0",
+                        "csiphy1",
+                        "csiphy2",
+                        "csiphy3",
+                        "csiphy4",
+                        "csiphy5",
+                        "vfe0",
+                        "vfe1",
+                        "vfe2",
+                        "vfe_lite0",
+                        "vfe_lite1";
+            clocks = <&camcc CAM_CC_CAMNOC_AXI_RT_CLK>,
+                     <&camcc CAM_CC_CPAS_AHB_CLK>,
+                     <&camcc CAM_CC_CPAS_FAST_AHB_CLK>,
+                     <&camcc CAM_CC_CPAS_IFE_0_CLK>,
+                     <&camcc CAM_CC_CPAS_IFE_1_CLK>,
+                     <&camcc CAM_CC_CPAS_IFE_2_CLK>,
+                     <&camcc CAM_CC_CPAS_IFE_LITE_CLK>,
+                     <&camcc CAM_CC_CSID_CLK>,
+                     <&camcc CAM_CC_CSIPHY0_CLK>,
+                     <&camcc CAM_CC_CSI0PHYTIMER_CLK>,
+                     <&camcc CAM_CC_CSI1PHYTIMER_CLK>,
+                     <&camcc CAM_CC_CSIPHY1_CLK>,
+                     <&camcc CAM_CC_CSI2PHYTIMER_CLK>,
+                     <&camcc CAM_CC_CSIPHY2_CLK>,
+                     <&camcc CAM_CC_CSI3PHYTIMER_CLK>,
+                     <&camcc CAM_CC_CSIPHY3_CLK>,
+                     <&camcc CAM_CC_CSI4PHYTIMER_CLK>,
+                     <&camcc CAM_CC_CSIPHY4_CLK>,
+                     <&camcc CAM_CC_CSI5PHYTIMER_CLK>,
+                     <&camcc CAM_CC_CSIPHY5_CLK>,
+                     <&camcc CAM_CC_CSID_CSIPHY_RX_CLK>,
+                     <&gcc GCC_CAMERA_HF_AXI_CLK>,
+                     <&camcc CAM_CC_QDSS_DEBUG_XO_CLK>,
+                     <&camcc CAM_CC_IFE_0_CLK>,
+                     <&camcc CAM_CC_IFE_0_FAST_AHB_CLK>,
+                     <&camcc CAM_CC_IFE_1_CLK>,
+                     <&camcc CAM_CC_IFE_1_FAST_AHB_CLK>,
+                     <&camcc CAM_CC_IFE_2_CLK>,
+                     <&camcc CAM_CC_IFE_2_FAST_AHB_CLK>,
+                     <&camcc CAM_CC_IFE_LITE_CLK>,
+                     <&camcc CAM_CC_IFE_LITE_AHB_CLK>,
+                     <&camcc CAM_CC_IFE_LITE_CPHY_RX_CLK>,
+                     <&camcc CAM_CC_IFE_LITE_CSID_CLK>;
+            clock-names = "camnoc_axi",
+                          "cpas_ahb",
+                          "cpas_fast_ahb",
+                          "cpas_vfe0",
+                          "cpas_vfe1",
+                          "cpas_vfe2",
+                          "cpas_vfe_lite",
+                          "csid",
+                          "csiphy0",
+                          "csiphy0_timer",
+                          "csiphy1",
+                          "csiphy1_timer",
+                          "csiphy2",
+                          "csiphy2_timer",
+                          "csiphy3",
+                          "csiphy3_timer",
+                          "csiphy4",
+                          "csiphy4_timer",
+                          "csiphy5",
+                          "csiphy5_timer",
+                          "csiphy_rx",
+                          "gcc_axi_hf",
+                          "qdss_debug_xo",
+                          "vfe0",
+                          "vfe0_fast_ahb",
+                          "vfe1",
+                          "vfe1_fast_ahb",
+                          "vfe2",
+                          "vfe2_fast_ahb",
+                          "vfe_lite",
+                          "vfe_lite_ahb",
+                          "vfe_lite_cphy_rx",
+                          "vfe_lite_csid";
+            interrupts = <GIC_SPI 601 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 603 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 431 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 605 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 376 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 477 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 478 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 479 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 448 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 122 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 89 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 602 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 604 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 688 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 606 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 377 IRQ_TYPE_EDGE_RISING>;
+            interrupt-names = "csid0",
+                              "csid1",
+                              "csid2",
+                              "csid_lite0",
+                              "csid_lite1",
+                              "csiphy0",
+                              "csiphy1",
+                              "csiphy2",
+                              "csiphy3",
+                              "csiphy4",
+                              "csiphy5",
+                              "vfe0",
+                              "vfe1",
+                              "vfe2",
+                              "vfe_lite0",
+                              "vfe_lite1";
+            interconnects = <&gem_noc MASTER_APPSS_PROC 0
+                             &config_noc SLAVE_CAMERA_CFG 0>,
+                            <&mmss_noc MASTER_CAMNOC_HF 0
+                             &mc_virt SLAVE_EBI1 0>;
+            interconnect-names = "ahb", "hf_mnoc";
+            iommus = <&apps_smmu 0x800 0x20>,
+                     <&apps_smmu 0x18a0 0x40>,
+                     <&apps_smmu 0x1860 0x00>;
+            power-domains = <&camcc CAM_CC_IFE_0_GDSC>,
+                            <&camcc CAM_CC_IFE_1_GDSC>,
+                            <&camcc CAM_CC_IFE_2_GDSC>,
+                            <&camcc CAM_CC_TITAN_TOP_GDSC>;
+            power-domain-names = "ife0", "ife1", "ife2", "top";
+            vdd-csiphy01-0p9-supply = <&vreg_0p9>;
+            vdd-csiphy01-1p2-supply = <&vreg_1p2>;
+
+            ports {
+                #address-cells = <1>;
+                #size-cells = <0>;
+
+                port@1 {
+                    reg = <1>;
+
+                    csiphy1_ep: endpoint {
+                        data-lanes = <0 1>;
+                        remote-endpoint = <&camera_sensor>;
+                    };
+                };
+            };
+        };
+    };
-- 
2.49.0


