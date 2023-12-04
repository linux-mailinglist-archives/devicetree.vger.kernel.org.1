Return-Path: <devicetree+bounces-21469-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 512C1803B9D
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 18:33:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8158E1C20A37
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 17:33:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC3732E850;
	Mon,  4 Dec 2023 17:33:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="gXjqnBIB"
X-Original-To: devicetree@vger.kernel.org
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D3456A1
	for <devicetree@vger.kernel.org>; Mon,  4 Dec 2023 09:33:35 -0800 (PST)
Received: from localhost.localdomain (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: bbrezillon)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id AE5B966072C1;
	Mon,  4 Dec 2023 17:33:32 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1701711213;
	bh=s0j27NS0XOMJ0TBcmmxtCKHRTiRzZH+ZIQjQlYP4GNU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=gXjqnBIBZnDO+btFZXZb2zu2mjZuGNUgvlSTmf5BPRNGZ07cXwt58ltFUUv2Rmjzx
	 jyutO0+TdLC3kQ6d5Sr0+pmGrdam4D8WmW1u55l0VnCqnGESPRbTPScqjMu9X8eDY4
	 6gAPrphdtoxwKohy7kVW5GcxyswFNEov0B+HqSDgbWORVWGQRErcQ7pcyKbu37HZOd
	 ex5ljcI4lP8XH6WbdN9JS03iUpfduZcBeidO3F9pn76ESBCfseJnUtpjPTsuwOY4Y5
	 uQiKuiTj2AhwzQk7S4P1XZwwUmMO/ereBqLKWWaTxKFcFuY3zgdcITxuLi6xf+tmMM
	 e78GgheZ9YOug==
From: Boris Brezillon <boris.brezillon@collabora.com>
To: dri-devel@lists.freedesktop.org
Cc: "Marty E . Plummer" <hanetzer@startmail.com>,
	Rob Herring <robh@kernel.org>,
	=?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
	Nicolas Boichat <drinkcat@chromium.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Faith Ekstrand <faith.ekstrand@collabora.com>,
	Daniel Stone <daniels@collabora.com>,
	Liviu Dudau <Liviu.Dudau@arm.com>,
	Steven Price <steven.price@arm.com>,
	Robin Murphy <robin.murphy@arm.com>,
	kernel@collabora.com,
	Heiko Stuebner <heiko@sntech.de>,
	Liviu Dudau <liviu.dudau@arm.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH v3 13/14] dt-bindings: gpu: mali-valhall-csf: Add support for Arm Mali CSF GPUs
Date: Mon,  4 Dec 2023 18:33:06 +0100
Message-ID: <20231204173313.2098733-14-boris.brezillon@collabora.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231204173313.2098733-1-boris.brezillon@collabora.com>
References: <20231204173313.2098733-1-boris.brezillon@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Liviu Dudau <liviu.dudau@arm.com>

Arm has introduced a new v10 GPU architecture that replaces the Job Manager
interface with a new Command Stream Frontend. It adds firmware driven
command stream queues that can be used by kernel and user space to submit
jobs to the GPU.

Add the initial schema for the device tree that is based on support for
RK3588 SoC. The minimum number of clocks is one for the IP, but on Rockchip
platforms they will tend to expose the semi-independent clocks for better
power management.

v3:
- Cleanup commit message to remove redundant text
- Added opp-table property and re-ordered entries
- Clarified power-domains and power-domain-names requirements for RK3588.
- Cleaned up example

Note: power-domains and power-domain-names requirements for other platforms
are still work in progress, hence the bindings are left incomplete here.

v2:
- New commit

Signed-off-by: Liviu Dudau <liviu.dudau@arm.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org
---
 .../bindings/gpu/arm,mali-valhall-csf.yaml    | 147 ++++++++++++++++++
 1 file changed, 147 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/gpu/arm,mali-valhall-csf.yaml

diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-valhall-csf.yaml b/Documentation/devicetree/bindings/gpu/arm,mali-valhall-csf.yaml
new file mode 100644
index 000000000000..d72de094c8ea
--- /dev/null
+++ b/Documentation/devicetree/bindings/gpu/arm,mali-valhall-csf.yaml
@@ -0,0 +1,147 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/gpu/arm,mali-valhall-csf.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: ARM Mali Valhall GPU
+
+maintainers:
+  - Liviu Dudau <liviu.dudau@arm.com>
+  - Boris Brezillon <boris.brezillon@collabora.com>
+
+properties:
+  $nodename:
+    pattern: '^gpu@[a-f0-9]+$'
+
+  compatible:
+    oneOf:
+      - items:
+          - enum:
+              - rockchip,rk3588-mali
+          - const: arm,mali-valhall-csf   # Mali Valhall GPU model/revision is fully discoverable
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    items:
+      - description: Job interrupt
+      - description: MMU interrupt
+      - description: GPU interrupt
+
+  interrupt-names:
+    items:
+      - const: job
+      - const: mmu
+      - const: gpu
+
+  clocks:
+    minItems: 1
+    maxItems: 3
+
+  clock-names:
+    minItems: 1
+    items:
+      - const: core
+      - const: coregroup
+      - const: stacks
+
+  mali-supply: true
+
+  operating-points-v2: true
+  opp-table:
+    type: object
+
+  power-domains:
+    minItems: 1
+    maxItems: 5
+
+  power-domain-names:
+    minItems: 1
+    maxItems: 5
+
+  sram-supply: true
+
+  "#cooling-cells":
+    const: 2
+
+  dynamic-power-coefficient:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      A u32 value that represents the running time dynamic
+      power coefficient in units of uW/MHz/V^2. The
+      coefficient can either be calculated from power
+      measurements or derived by analysis.
+
+      The dynamic power consumption of the GPU is
+      proportional to the square of the Voltage (V) and
+      the clock frequency (f). The coefficient is used to
+      calculate the dynamic power as below -
+
+      Pdyn = dynamic-power-coefficient * V^2 * f
+
+      where voltage is in V, frequency is in MHz.
+
+  dma-coherent: true
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - interrupt-names
+  - clocks
+  - mali-supply
+
+additionalProperties: false
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rk3588-mali
+    then:
+      properties:
+        clocks:
+          minItems: 3
+	power-domains:
+	  maxItems: 1
+	power-domain-names: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/rockchip,rk3588-cru.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/power/rk3588-power.h>
+
+    gpu: gpu@fb000000 {
+        compatible = "rockchip,rk3588-mali", "arm,mali-valhall-csf";
+        reg = <0xfb000000 0x200000>;
+        interrupts = <GIC_SPI 92 IRQ_TYPE_LEVEL_HIGH 0>,
+                     <GIC_SPI 93 IRQ_TYPE_LEVEL_HIGH 0>,
+                     <GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH 0>;
+        interrupt-names = "job", "mmu", "gpu";
+        clock-names = "core", "coregroup", "stacks";
+        clocks = <&cru CLK_GPU>, <&cru CLK_GPU_COREGROUP>,
+                 <&cru CLK_GPU_STACKS>;
+        power-domains = <&power RK3588_PD_GPU>;
+        operating-points-v2 = <&gpu_opp_table>;
+        mali-supply = <&vdd_gpu_s0>;
+        sram-supply = <&vdd_gpu_mem_s0>;
+    };
+
+    gpu_opp_table: opp-table {
+        compatible = "operating-points-v2";
+        opp-300000000 {
+            opp-hz = /bits/ 64 <300000000>;
+            opp-microvolt = <675000 675000 850000>;
+        };
+        opp-400000000 {
+            opp-hz = /bits/ 64 <400000000>;
+            opp-microvolt = <675000 675000 850000>;
+        };
+    };
+
+...
-- 
2.43.0


