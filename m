Return-Path: <devicetree+bounces-234427-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BA999C2CC60
	for <lists+devicetree@lfdr.de>; Mon, 03 Nov 2025 16:34:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 423D31894FD1
	for <lists+devicetree@lfdr.de>; Mon,  3 Nov 2025 15:26:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CC6332AAC8;
	Mon,  3 Nov 2025 15:15:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="e8cyg3t2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CF5F313E2B
	for <devicetree@vger.kernel.org>; Mon,  3 Nov 2025 15:15:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762182919; cv=none; b=ODEW0lwiMDV/tqq6SMp8PueW6jFGQ7LOgKs4rI/RrWbWQZRzmzhUOUXqlq29qV95WkjcJQXDCtP3pO5hx1Z9B1Pv3/EhfDMSWhZ+qs8T7hMd+scWVTKcFO8h5WL//Prbc6h0qLJQNUcha/wqgkg0HIjT8a0qe8TlbeaIUX0Te84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762182919; c=relaxed/simple;
	bh=WnS2bYSTX7sA623WUpRuAinBa1d19n2RdHWvwrXW8uY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=PsARoI0mT7mQrqGPu9lYcxYb2dPp8xUMsYVukKp4jmZIrfjfsWWid4RyPt6+RhrjwnHWZOLbIpwPW1OFuIwm9D8c4UYhmKXS65OhxRIjZjbWUO10/u102U28lr9t2tegduLOTXqKUADgVbpbkXWXKirywwPrUYD8WjDOSZw8KNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=e8cyg3t2; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-b70b40e0284so11078366b.1
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 07:15:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762182914; x=1762787714; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DB7GGJ12GRBspGlSV1Cb9EY3AAP9j5lCvHlknIm8YgI=;
        b=e8cyg3t2BeHKpWxkhc0O+O+X1+IwsADSz7aieMOO7UwG08XBTEfwzLNlaNK9DK8GJt
         NYlx0NCURJIO5/rw9isyR9hSQVwUt/WDZQtc/EsFEGoSkSflhpIiN1iW3y3f52s0WBAc
         1lTg2BFZUQHG5l1O0CCA+K6IGUsdGL1jaiuT0QoIeUT6CPD/wDq2P3hXxucDTdEZQU2n
         KrdUc0+9FlIvXae80rXmb06Mm2nwy2maH5OuKk79rtvMZ4g1Zwvxj0tVKVDUn+RLEJMx
         gRQTetC3Y89JqoZfuxF2AzzIcqzR0yicyNtnZuCWiTqmFYB706BwnpYYXPAhJAO31Ydy
         Cl+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762182914; x=1762787714;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DB7GGJ12GRBspGlSV1Cb9EY3AAP9j5lCvHlknIm8YgI=;
        b=Y778tmsAwCz/xh4cbcEijAdcgXu09MR+gJNxEGM4acoAnEMYdWn+Sk0ap3cUXsHwEg
         jEACMpZffV+efD6XTdtRXKo5G/8hq+hu7XW3i5O0AeuE7HcgUJ9uxiwXdKMAFqLozpOX
         o9FL267vsOq4D7iU+wQVYRC8TZ7wPnWwkSyG5DkUUf9PaImycM1Qe2HKxKSCTO+nocqX
         rVVlIBcd8xCjB59NrNA11rx+JLGr1n5tpeipgkGpZJTuRb/B837b+zzuUIADvtSocskB
         1lJvTqVeSZZ5qJAFU5/wU+UyVikO9raomx5b3uW1j5aeT8CYqKiPf9Az3sTdLrDXGAnY
         aB1Q==
X-Forwarded-Encrypted: i=1; AJvYcCWWl5eDQZKIXE+L72UeTUXzDQYpCnGuZllO6rRhYBnwN5vcpD/XlqPslh+zRkxj6VB990r+e2jaBYdk@vger.kernel.org
X-Gm-Message-State: AOJu0Yx6s89AcNbgvYY/6cimC5IbgYuThYKDph7cbO6zGSvY+QPGmQqT
	aowOHk+phNwghxW+Vco1yJ55z7X1L9N+XvQ23RChTAEoUlWBVXsjgKusPF6wv4T+wqc5bUST9+6
	uAilN
X-Gm-Gg: ASbGncvxvsUzHggBZjCk4u8e6XIr3TbETzRDmznenVwTtEzHwFixuLIN+WhGrQC5I/l
	oxSc1CiFeOQTKWddClWrxVgwXY8M7o7QmpHcnEDPxxCBo+CTopg+IPYLY6C1KXYb2IAFdnhvc0I
	C7zQ8LGLWrBUUB5IiKDwWpUoLz9SH5s5w4DtBPZMlATWH2WFNU5g9NiUobwuiSK7PNom6CanUAh
	sD8NUsti32bkmUvpRjCGjBjbaraRL8BrIB/fgTdvohxO32nKYkCdTAhl17k4uOLIOrN3AVweCVa
	JgDsBpFilIgyCvFyLK7P9o3oWP4uDfFRmDW7H82oC/NOgSZNulXyO1J4XyvCcVzdxbND4ZL0H1m
	jyPH4tX5j/gS5hrGnNiqq2GXXl8abfKJxNG1NUcYm5wwDqv9m7NO2Z09JMhFGFg/mSJiimi8aOd
	TKhzNSiEwnjnNbxnk7
X-Google-Smtp-Source: AGHT+IEw2hrZtaelRDjrKFKWpOD0S5MLlKmwcsMQoFfWjSlEGptMfJfpkwobg2ecV6tGysmgp5yP7w==
X-Received: by 2002:a17:907:3d0c:b0:b3f:331a:a98c with SMTP id a640c23a62f3a-b70701934ffmr727209766b.4.1762182914083;
        Mon, 03 Nov 2025 07:15:14 -0800 (PST)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7077975dfdsm1045203066b.13.2025.11.03.07.15.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 07:15:13 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Mon, 03 Nov 2025 16:14:49 +0100
Subject: [PATCH 09/12] dt-bindings: PCI: qcom,pcie-ipq9574: Move IPQ9574 to
 dedicated schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251103-dt-bindings-pci-qcom-v1-9-c0f6041abf9b@linaro.org>
References: <20251103-dt-bindings-pci-qcom-v1-0-c0f6041abf9b@linaro.org>
In-Reply-To: <20251103-dt-bindings-pci-qcom-v1-0-c0f6041abf9b@linaro.org>
To: Bjorn Helgaas <bhelgaas@google.com>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=9892;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=WnS2bYSTX7sA623WUpRuAinBa1d19n2RdHWvwrXW8uY=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpCMbr2soV7EcYSCfzrkS3JWU+1OQik3qjZ5ZAU
 FZ2uLF0HbqJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaQjG6wAKCRDBN2bmhouD
 1wQvD/9c9OfojUceaw5dSAQF3OvDIs0EdDGx67egP3XJKjin60/oAcB3Nvu5E/fqyFxTXe6SAZA
 VnRD8/c+NLYaSbo0vAyHvNJsqqvQbMhq8BpMMf1dKhsgLiAdyKrZghzSe1GdVmoP8MhJb0WugI8
 VjkxltlNZ58Po7bDjxeCcW8HpdNRaHSp+JxweVJew0lMI3/2YJqt85fqmaOwTK8XFNrTTenbVQ/
 yPwfLhLX1Kdmf8HnBqomUP5nqf2NA9hDHd3Pz26ZmtUpUYk9tjOlSIl4d0XEMgddXOvxGZu4kWN
 sZqsj3scGyytFwVCckrFCdmCdT1bs+fsYT7hgXkfCBbfZuDnmZKmUwtIoS1FMS8jyBOKYsbMcxV
 i9AFjpeDP39z1M7Vtex7zYW69V8qnCgccW1m9Q3FZfZH1ZsXKPlNliQLcJisEEnBvwaFM22MmOO
 GKdtqSFiI9AHC1KcT0pyJT0ALbE/crTTDeW16xg5Kp05U5NnECbDZCAn5Aq/36Q3+JVjOOwRnCP
 DCqpWCchuqJAfRs/V9/6sj3n93H8E+XbQlv59D8bWQBWtKAcv0r7TQaGJ+0pHcUetLP5xC+gC/6
 xMo7zAU9cFn9fF5UhOmKqVz05WLmpZH3pBtbFwFkSn2aiBMkOxkJ6PcV/RR+O6g4PIeQyS5965J
 Jr4uFday9cJe6xA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Move IPQ9574 and compatible PCIe devices from qcom,pcie.yaml binding to
a dedicated file to make reviewing and maintenance easier.

New schema is equivalent to the old one with few changes:
 - Adding a required compatible, which is actually redundant.
 - Drop the really obvious comments next to clock/reg/reset-names items.
 - Make last "reg" entry "mhi" a required one, because all in-tree DTS
   were updated to include it.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/pci/qcom,pcie-ipq9574.yaml | 183 +++++++++++++++++++++
 .../devicetree/bindings/pci/qcom,pcie.yaml         |  77 ---------
 2 files changed, 183 insertions(+), 77 deletions(-)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-ipq9574.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-ipq9574.yaml
new file mode 100644
index 000000000000..4be342cc04e1
--- /dev/null
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie-ipq9574.yaml
@@ -0,0 +1,183 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pci/qcom,pcie-ipq9574.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm IPQ9574 PCI Express Root Complex
+
+maintainers:
+  - Bjorn Andersson <andersson@kernel.org>
+  - Manivannan Sadhasivam <mani@kernel.org>
+
+properties:
+  compatible:
+    oneOf:
+      - enum:
+          - qcom,pcie-ipq9574
+      - items:
+          - enum:
+              - qcom,pcie-ipq5332
+              - qcom,pcie-ipq5424
+          - const: qcom,pcie-ipq9574
+
+  reg:
+    maxItems: 6
+
+  reg-names:
+    items:
+      - const: dbi
+      - const: elbi
+      - const: atu
+      - const: parf
+      - const: config
+      - const: mhi
+
+  clocks:
+    maxItems: 6
+
+  clock-names:
+    items:
+      - const: axi_m # AXI Master clock
+      - const: axi_s # AXI Slave clock
+      - const: axi_bridge
+      - const: rchng
+      - const: ahb
+      - const: aux
+
+  interrupts:
+    minItems: 8
+    maxItems: 9
+
+  interrupt-names:
+    minItems: 8
+    items:
+      - const: msi0
+      - const: msi1
+      - const: msi2
+      - const: msi3
+      - const: msi4
+      - const: msi5
+      - const: msi6
+      - const: msi7
+      - const: global
+
+  resets:
+    maxItems: 8
+
+  reset-names:
+    items:
+      - const: pipe
+      - const: sticky # Core sticky reset
+      - const: axi_s_sticky # AXI Slave Sticky reset
+      - const: axi_s # AXI slave reset
+      - const: axi_m_sticky # AXI Master Sticky reset
+      - const: axi_m # AXI master reset
+      - const: aux
+      - const: ahb
+
+required:
+  - resets
+  - reset-names
+
+allOf:
+  - $ref: qcom,pcie-common.yaml#
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,ipq9574-gcc.h>
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/interconnect/qcom,ipq9574.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/reset/qcom,ipq9574-gcc.h>
+
+    pcie@10000000 {
+        compatible = "qcom,pcie-ipq9574";
+        reg = <0x10000000 0xf1d>,
+              <0x10000f20 0xa8>,
+              <0x10001000 0x1000>,
+              <0x000f8000 0x4000>,
+              <0x10100000 0x1000>,
+              <0x000fe000 0x1000>;
+        reg-names = "dbi",
+                "elbi",
+                "atu",
+                "parf",
+                "config",
+                "mhi";
+        ranges = <0x01000000 0x0 0x00000000 0x10200000 0x0 0x100000>,
+                 <0x02000000 0x0 0x10300000 0x10300000 0x0 0x7d00000>;
+
+        device_type = "pci";
+        linux,pci-domain = <1>;
+        bus-range = <0x00 0xff>;
+        num-lanes = <1>;
+        #address-cells = <3>;
+        #size-cells = <2>;
+
+        clocks = <&gcc GCC_PCIE1_AXI_M_CLK>,
+                 <&gcc GCC_PCIE1_AXI_S_CLK>,
+                 <&gcc GCC_PCIE1_AXI_S_BRIDGE_CLK>,
+                 <&gcc GCC_PCIE1_RCHNG_CLK>,
+                 <&gcc GCC_PCIE1_AHB_CLK>,
+                 <&gcc GCC_PCIE1_AUX_CLK>;
+        clock-names = "axi_m",
+                      "axi_s",
+                      "axi_bridge",
+                      "rchng",
+                      "ahb",
+                      "aux";
+
+        interconnects = <&gcc MASTER_ANOC_PCIE1 &gcc SLAVE_ANOC_PCIE1>,
+                        <&gcc MASTER_SNOC_PCIE1 &gcc SLAVE_SNOC_PCIE1>;
+        interconnect-names = "pcie-mem", "cpu-pcie";
+
+        interrupts = <GIC_SPI 26 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 27 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 28 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 29 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 30 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 31 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>;
+        interrupt-names = "msi0",
+                          "msi1",
+                          "msi2",
+                          "msi3",
+                          "msi4",
+                          "msi5",
+                          "msi6",
+                          "msi7";
+
+        #interrupt-cells = <1>;
+        interrupt-map-mask = <0 0 0 0x7>;
+        interrupt-map = <0 0 0 1 &intc 0 GIC_SPI 35 IRQ_TYPE_LEVEL_HIGH>,
+                        <0 0 0 2 &intc 0 GIC_SPI 49 IRQ_TYPE_LEVEL_HIGH>,
+                        <0 0 0 3 &intc 0 GIC_SPI 84 IRQ_TYPE_LEVEL_HIGH>,
+                        <0 0 0 4 &intc 0 GIC_SPI 85 IRQ_TYPE_LEVEL_HIGH>;
+
+        resets = <&gcc GCC_PCIE1_PIPE_ARES>,
+                 <&gcc GCC_PCIE1_CORE_STICKY_ARES>,
+                 <&gcc GCC_PCIE1_AXI_S_STICKY_ARES>,
+                 <&gcc GCC_PCIE1_AXI_S_ARES>,
+                 <&gcc GCC_PCIE1_AXI_M_STICKY_ARES>,
+                 <&gcc GCC_PCIE1_AXI_M_ARES>,
+                 <&gcc GCC_PCIE1_AUX_ARES>,
+                 <&gcc GCC_PCIE1_AHB_ARES>;
+        reset-names = "pipe",
+                      "sticky",
+                      "axi_s_sticky",
+                      "axi_s",
+                      "axi_m_sticky",
+                      "axi_m",
+                      "aux",
+                      "ahb";
+
+        phys = <&pcie1_phy>;
+        phy-names = "pciephy";
+
+        perst-gpios = <&tlmm 26 GPIO_ACTIVE_LOW>;
+        wake-gpios = <&tlmm 27 GPIO_ACTIVE_LOW>;
+    };
diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
index 65caf5b5623d..8be10d950616 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
@@ -22,13 +22,7 @@ properties:
           - qcom,pcie-apq8084
           - qcom,pcie-ipq8064
           - qcom,pcie-ipq8064-v2
-          - qcom,pcie-ipq9574
           - qcom,pcie-msm8996
-      - items:
-          - enum:
-              - qcom,pcie-ipq5332
-              - qcom,pcie-ipq5424
-          - const: qcom,pcie-ipq9574
       - items:
           - const: qcom,pcie-msm8998
           - const: qcom,pcie-msm8996
@@ -153,27 +147,6 @@ allOf:
             - const: parf # Qualcomm specific registers
             - const: config # PCIe configuration space
 
-  - if:
-      properties:
-        compatible:
-          contains:
-            enum:
-              - qcom,pcie-ipq9574
-    then:
-      properties:
-        reg:
-          minItems: 5
-          maxItems: 6
-        reg-names:
-          minItems: 5
-          items:
-            - const: dbi # DesignWare PCIe registers
-            - const: elbi # External local bus interface registers
-            - const: atu # ATU address space
-            - const: parf # Qualcomm specific registers
-            - const: config # PCIe configuration space
-            - const: mhi # MHI registers
-
   - if:
       properties:
         compatible:
@@ -277,55 +250,6 @@ allOf:
         resets: false
         reset-names: false
 
-  - if:
-      properties:
-        compatible:
-          contains:
-            enum:
-              - qcom,pcie-ipq9574
-    then:
-      properties:
-        clocks:
-          minItems: 6
-          maxItems: 6
-        clock-names:
-          items:
-            - const: axi_m # AXI Master clock
-            - const: axi_s # AXI Slave clock
-            - const: axi_bridge
-            - const: rchng
-            - const: ahb
-            - const: aux
-
-        resets:
-          minItems: 8
-          maxItems: 8
-        reset-names:
-          items:
-            - const: pipe # PIPE reset
-            - const: sticky # Core Sticky reset
-            - const: axi_s_sticky # AXI Slave Sticky reset
-            - const: axi_s # AXI Slave reset
-            - const: axi_m_sticky # AXI Master Sticky reset
-            - const: axi_m # AXI Master reset
-            - const: aux # AUX Reset
-            - const: ahb # AHB Reset
-
-        interrupts:
-          minItems: 8
-        interrupt-names:
-          minItems: 8
-          items:
-            - const: msi0
-            - const: msi1
-            - const: msi2
-            - const: msi3
-            - const: msi4
-            - const: msi5
-            - const: msi6
-            - const: msi7
-            - const: global
-
   - if:
       not:
         properties:
@@ -335,7 +259,6 @@ allOf:
                 - qcom,pcie-apq8064
                 - qcom,pcie-ipq8064
                 - qcom,pcie-ipq8064v2
-                - qcom,pcie-ipq9574
     then:
       required:
         - power-domains

-- 
2.48.1


