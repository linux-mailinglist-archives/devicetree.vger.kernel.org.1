Return-Path: <devicetree+bounces-234426-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 08E63C2D04E
	for <lists+devicetree@lfdr.de>; Mon, 03 Nov 2025 17:13:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E0AD1561F3B
	for <lists+devicetree@lfdr.de>; Mon,  3 Nov 2025 15:25:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8316F32AABB;
	Mon,  3 Nov 2025 15:15:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hdiAQeK9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED71B329E72
	for <devicetree@vger.kernel.org>; Mon,  3 Nov 2025 15:15:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762182918; cv=none; b=LjqPcLPvW4jFfZ1gZq5qeBisFe4FEk2saZnYfvmvJcmz6pg8JSh8Y/1tw+5c5OG3ei4HyPoFMG5IgDdO5GMa3iuboIZi+NoxAIPwjrtncrM7oEHj2MKBIZOExfqT2KIVdRh6RAg2D9apSPwyWtPLruZaYQgcQnao6DGJnQio4iE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762182918; c=relaxed/simple;
	bh=EdqAb+QTLdzor0jomhHKcam0nKS8WZX2EFMgXyS87bo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=IB3ItKOlc3p0FJ6scvNjpgCxoCfM2BU8V1E2Qbg9726ARS4IYs9Ri+0Y6QP7rtYjucKcMFJkaIcVHOdwU8ALTPbn3BovgslQDEk0YKrCtUYIHvwOxdeWncnWgoV1ZAgYsuWZtTcRXRzmWM8Mk+/6eM+F6vWda0EY8uhjwu4/pxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hdiAQeK9; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-b3f5a6e114dso68047066b.0
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 07:15:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762182913; x=1762787713; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bP55BFojGLn6ZNuGYj2iTi5j3Dqka9a3d+sXrd5Rfu8=;
        b=hdiAQeK9Gx83jAorrqw+SBwYrru4IuJEDPn2a3Lrx4axWMtZ77p21+EDcykxPawun/
         NCFSOeLWe9m7o1XDx8f9ymagkemXpCHS/aTAsDZTfsSVwyZM/o0K9FQ6PPnty5evvogQ
         UWMjEMXGxVNEOevC+iFiFsAY8gReb0SG+GqHfcqO7zHE+lqSusQUb+/KWJ+ZVAgmiwj6
         oKKtkY0InHFFgLpFJtFIyTE2lT4S3nPa2ayykYQu6jgBx1/dJ0VNJoedc68J3QLmcS6O
         K4HgL74+qV8fkuKPTfbP5DzVMge0FHaZjkDpv52CTEqpuQlRLi7nkwCi5IYJUKBYRlYf
         y4yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762182913; x=1762787713;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bP55BFojGLn6ZNuGYj2iTi5j3Dqka9a3d+sXrd5Rfu8=;
        b=D6svu+XierMEkmlE4asZHw7Kn222lMefivOQRFe4uUwavwnsSXrY3q+YPhSqu2AVuE
         g2pj4MW83hET269WhdToA5Ub9NiTPZHHenL3Jtqctn0vAXbhf6WR7aKVKMP5Gn9vZHQI
         zcHKpfHmIbLLYFszvB9fiDblKj3hwxjj0yzaQ4uPFZ73aASRl1TiaO6JO+aHQUCG2Y1a
         lDX5BN18UCyAsFRRd4Zsj1U0W4c41tpusxkk53ygouYK5Y6UasDgWjMG3Gk4iqhr8Xd6
         ZGzQrW5uoKel8D8EswSSOLA04SxYQEQWILBaMT8w6OlbcgbEfab4Vxl7sJgppEMKJtfU
         5yLg==
X-Forwarded-Encrypted: i=1; AJvYcCXNcXKk6+3Vt8BuCm8YDLrZbo56ZlLeSB5kGhRaeGnm7+qRVIKNwUKBMsMcL+3XlJfL6AMUmi1dcVO2@vger.kernel.org
X-Gm-Message-State: AOJu0YyvagxWJRfWFNiYjbEwsq1Jux8vWJ9Q4Bwsv/2ovi01oJOtZPk0
	QZLSJiJWR7o+wXYmIEEfcv3wkxmhFvcpNPnuYVImlyQ3u/uWub1frVHTKrMTk8PK1nDfKCHG2GS
	crvpt
X-Gm-Gg: ASbGncss4qMWRZbPEoadcCsqlTu5GXsMfUeRDhTvimfl6h+gSAI/UNrDDEZBf+GniCg
	SDGjbHTqbewm32BP3C3WIdUL1RGCx9+Z2fvDGiKDrg8xwDG5nFRvU5B/k5KnMh0NEa0pNFrPOF0
	0KxBmjYIUV7tIo98KEAMhNdDBbaJTmVndPnh4djcsy8/1zDN8IlHXd4uBlg06f/irwknqkojDcq
	7XN77EcTabA0hr+t9FE78hm9AeV8CBKF6XWd0I+0sY6ED0AB+GjYr3PDYlBc7uhOSwQRfR1YF5/
	vzNeFFEuz2H8ej+YsH6PdqpaEX+jYT5/TYldq8NvcFxFObwEDrEVUahWVTqw6aU4N+2U2Adr0V4
	hEmLfnKR1EkH6z4WOKl/+oLHzmHeKGh2PIBs0w7nYpCDZzyZ6nc4+249TO3NFDp2AWwuIWMPiem
	qjBPr4BSG136cpQxlRxBa6F/PTJkk=
X-Google-Smtp-Source: AGHT+IHjbubUS+X+NEgxmES4CkHnwB6udchMGFD7akUPgmMm/FuvoavlSxK3tykSTHZPnBxbcCvWpg==
X-Received: by 2002:a17:907:3f13:b0:b65:c8b8:144f with SMTP id a640c23a62f3a-b70705fb91fmr581926566b.6.1762182912646;
        Mon, 03 Nov 2025 07:15:12 -0800 (PST)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7077975dfdsm1045203066b.13.2025.11.03.07.15.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 07:15:11 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Mon, 03 Nov 2025 16:14:48 +0100
Subject: [PATCH 08/12] dt-bindings: PCI: qcom,pcie-ipq4019: Move IPQ4019 to
 dedicated schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251103-dt-bindings-pci-qcom-v1-8-c0f6041abf9b@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=7615;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=EdqAb+QTLdzor0jomhHKcam0nKS8WZX2EFMgXyS87bo=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpCMbqqaZ9LTptcbEg4uhSefLjp+85I/Ut/mMVu
 H9nfwbNr06JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaQjG6gAKCRDBN2bmhouD
 1/7JD/sFEdKV1keZziofkPvYVBb8IX16CWFlZfjn8Ro/QQ2o80DxPldefYyUijIseFZr+KyWyYv
 URU14WcfYGjNStpjW5YE4dhkJwET1yvPMLMEnneOkkuVsHE+hzBvQwGA2mm/SYSI3EewvR+/ckH
 s1LIW6jQ8QR9D9pXXgpPTmE6qCpH/tjZ+wjuKy1/V1SMN8s4s02RJlWr9/K5RvpCKRGsl9xNmuz
 dAyFyjB3enxj9nSPy4K4kNy1Ct5dV+gN9FGcoUECxQUJ+v0yNLUkKT6CY8Zf4vD2xmvfoI/9iJs
 ATMFLPc+ate6t8OCqPxyFg2IoTlm/XCA7WnpdYdNf7EjFLSKFklMpGh2oBX6LjSvndDvzKn5lBr
 YhANiNu2uzvgL7ki9D29dy9HeYRrCuUia+P1RBEbOvnFxVuRzxNOsmBmKSqCI+hwReAUgZWHYbo
 hvWRs7NZNdTOhymuhJUE6qjml0pYBABzFiZmhNP8ctpFON/apYYEs+bVcRQrx57yGe3ZMs41bUA
 Jioq5QKu67A8xLt8FjBJk0IUV2aV4fjmWQVITvfxkbIJG96gKO7G3OuujDezw1AnMHfw+HpKKAL
 Kf/9jeIRB5sYsTmLOj5+EUcBbMarrIpG6u03IHGC8CsTaBkocCFj0z55aMwhZNBNnZFwrLAJJUP
 RrNXPot3NCn4QeA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Move IPQ4019 PCIe devices from qcom,pcie.yaml binding to a dedicated
file to make reviewing and maintenance easier.

New schema is equivalent to the old one with few changes:
 - Adding a required compatible, which is actually redundant.
 - Drop the really obvious comments next to clock/reg/reset-names items.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/pci/qcom,pcie-ipq4019.yaml | 146 +++++++++++++++++++++
 .../devicetree/bindings/pci/qcom,pcie.yaml         |  38 ------
 2 files changed, 146 insertions(+), 38 deletions(-)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-ipq4019.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-ipq4019.yaml
new file mode 100644
index 000000000000..fd6ecd1c43a1
--- /dev/null
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie-ipq4019.yaml
@@ -0,0 +1,146 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pci/qcom,pcie-ipq4019.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm IPQ4019 PCI Express Root Complex
+
+maintainers:
+  - Bjorn Andersson <andersson@kernel.org>
+  - Manivannan Sadhasivam <mani@kernel.org>
+
+properties:
+  compatible:
+    enum:
+      - qcom,pcie-ipq4019
+
+  reg:
+    maxItems: 4
+
+  reg-names:
+    items:
+      - const: dbi
+      - const: elbi
+      - const: parf
+      - const: config
+
+  clocks:
+    maxItems: 3
+
+  clock-names:
+    items:
+      - const: aux
+      - const: master_bus # Master AXI clock
+      - const: slave_bus # Slave AXI clock
+
+  interrupts:
+    maxItems: 1
+
+  interrupt-names:
+    items:
+      - const: msi
+
+  resets:
+    maxItems: 12
+
+  reset-names:
+    items:
+      - const: axi_m # AXI master reset
+      - const: axi_s # AXI slave reset
+      - const: pipe
+      - const: axi_m_vmid
+      - const: axi_s_xpu
+      - const: parf
+      - const: phy
+      - const: axi_m_sticky # AXI master sticky reset
+      - const: pipe_sticky
+      - const: pwr
+      - const: ahb
+      - const: phy_ahb
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
+    #include <dt-bindings/clock/qcom,gcc-ipq4019.h>
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    pcie@40000000 {
+        compatible = "qcom,pcie-ipq4019";
+        reg = <0x40000000 0xf1d>,
+              <0x40000f20 0xa8>,
+              <0x80000 0x2000>,
+              <0x40100000 0x1000>;
+        reg-names = "dbi", "elbi", "parf", "config";
+        ranges = <0x81000000 0x0 0x00000000 0x40200000 0x0 0x00100000>,
+                 <0x82000000 0x0 0x40300000 0x40300000 0x0 0x00d00000>;
+
+        device_type = "pci";
+        linux,pci-domain = <0>;
+        bus-range = <0x00 0xff>;
+        num-lanes = <1>;
+        #address-cells = <3>;
+        #size-cells = <2>;
+
+        clocks = <&gcc GCC_PCIE_AHB_CLK>,
+                 <&gcc GCC_PCIE_AXI_M_CLK>,
+                 <&gcc GCC_PCIE_AXI_S_CLK>;
+        clock-names = "aux",
+                      "master_bus",
+                      "slave_bus";
+
+        interrupts = <GIC_SPI 141 IRQ_TYPE_LEVEL_HIGH>;
+        interrupt-names = "msi";
+        #interrupt-cells = <1>;
+        interrupt-map-mask = <0 0 0 0x7>;
+        interrupt-map = <0 0 0 1 &intc GIC_SPI 142 IRQ_TYPE_LEVEL_HIGH>, /* int_a */
+                        <0 0 0 2 &intc GIC_SPI 143 IRQ_TYPE_LEVEL_HIGH>, /* int_b */
+                        <0 0 0 3 &intc GIC_SPI 144 IRQ_TYPE_LEVEL_HIGH>, /* int_c */
+                        <0 0 0 4 &intc GIC_SPI 145 IRQ_TYPE_LEVEL_HIGH>; /* int_d */
+
+        resets = <&gcc PCIE_AXI_M_ARES>,
+                 <&gcc PCIE_AXI_S_ARES>,
+                 <&gcc PCIE_PIPE_ARES>,
+                 <&gcc PCIE_AXI_M_VMIDMT_ARES>,
+                 <&gcc PCIE_AXI_S_XPU_ARES>,
+                 <&gcc PCIE_PARF_XPU_ARES>,
+                 <&gcc PCIE_PHY_ARES>,
+                 <&gcc PCIE_AXI_M_STICKY_ARES>,
+                 <&gcc PCIE_PIPE_STICKY_ARES>,
+                 <&gcc PCIE_PWR_ARES>,
+                 <&gcc PCIE_AHB_ARES>,
+                 <&gcc PCIE_PHY_AHB_ARES>;
+        reset-names = "axi_m",
+                      "axi_s",
+                      "pipe",
+                      "axi_m_vmid",
+                      "axi_s_xpu",
+                      "parf",
+                      "phy",
+                      "axi_m_sticky",
+                      "pipe_sticky",
+                      "pwr",
+                      "ahb",
+                      "phy_ahb";
+
+        perst-gpios = <&tlmm 38 GPIO_ACTIVE_LOW>;
+
+        pcie@0 {
+            device_type = "pci";
+            reg = <0x0 0x0 0x0 0x0 0x0>;
+            bus-range = <0x01 0xff>;
+
+            #address-cells = <3>;
+            #size-cells = <2>;
+            ranges;
+        };
+    };
diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
index 992a7654626c..65caf5b5623d 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
@@ -20,7 +20,6 @@ properties:
       - enum:
           - qcom,pcie-apq8064
           - qcom,pcie-apq8084
-          - qcom,pcie-ipq4019
           - qcom,pcie-ipq8064
           - qcom,pcie-ipq8064-v2
           - qcom,pcie-ipq9574
@@ -140,7 +139,6 @@ allOf:
           contains:
             enum:
               - qcom,pcie-apq8064
-              - qcom,pcie-ipq4019
               - qcom,pcie-ipq8064
               - qcom,pcie-ipq8064v2
     then:
@@ -258,40 +256,6 @@ allOf:
           items:
             - const: core # Core reset
 
-  - if:
-      properties:
-        compatible:
-          contains:
-            enum:
-              - qcom,pcie-ipq4019
-    then:
-      properties:
-        clocks:
-          minItems: 3
-          maxItems: 3
-        clock-names:
-          items:
-            - const: aux # Auxiliary (AUX) clock
-            - const: master_bus # Master AXI clock
-            - const: slave_bus # Slave AXI clock
-        resets:
-          minItems: 12
-          maxItems: 12
-        reset-names:
-          items:
-            - const: axi_m # AXI master reset
-            - const: axi_s # AXI slave reset
-            - const: pipe # PIPE reset
-            - const: axi_m_vmid # VMID reset
-            - const: axi_s_xpu # XPU reset
-            - const: parf # PARF reset
-            - const: phy # PHY reset
-            - const: axi_m_sticky # AXI sticky reset
-            - const: pipe_sticky # PIPE sticky reset
-            - const: pwr # PWR reset
-            - const: ahb # AHB reset
-            - const: phy_ahb # PHY AHB reset
-
   - if:
       properties:
         compatible:
@@ -369,7 +333,6 @@ allOf:
             contains:
               enum:
                 - qcom,pcie-apq8064
-                - qcom,pcie-ipq4019
                 - qcom,pcie-ipq8064
                 - qcom,pcie-ipq8064v2
                 - qcom,pcie-ipq9574
@@ -428,7 +391,6 @@ allOf:
             enum:
               - qcom,pcie-apq8064
               - qcom,pcie-apq8084
-              - qcom,pcie-ipq4019
               - qcom,pcie-ipq8064
               - qcom,pcie-ipq8064-v2
     then:

-- 
2.48.1


