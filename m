Return-Path: <devicetree+bounces-19816-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A627F7FCE73
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 06:44:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 61E8B2834BA
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 05:44:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56E336FD6;
	Wed, 29 Nov 2023 05:44:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from rtits2.realtek.com.tw (rtits2.realtek.com [211.75.126.72])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D398D19B7;
	Tue, 28 Nov 2023 21:44:41 -0800 (PST)
X-SpamFilter-By: ArmorX SpamTrap 5.78 with qID 3AT5iOiX52554686, This message is accepted by code: ctloc85258
Received: from mail.realtek.com (rtexh36506.realtek.com.tw[172.21.6.27])
	by rtits2.realtek.com.tw (8.15.2/2.95/5.92) with ESMTPS id 3AT5iOiX52554686
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 29 Nov 2023 13:44:24 +0800
Received: from RTEXMBS03.realtek.com.tw (172.21.6.96) by
 RTEXH36506.realtek.com.tw (172.21.6.27) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.17; Wed, 29 Nov 2023 13:44:24 +0800
Received: from james-bs01.realtek.com.tw (172.21.190.247) by
 RTEXMBS03.realtek.com.tw (172.21.6.96) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.7; Wed, 29 Nov 2023 13:44:23 +0800
From: James Tai <james.tai@realtek.com>
To: Thomas Gleixner <tglx@linutronix.de>, Marc Zyngier <maz@kernel.org>,
        "Rob
 Herring" <robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, James Tai <james.tai@realtek.com>
CC: <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
        "kernel test
 robot" <lkp@intel.com>
Subject: [PATCH v3 1/6] dt-bindings: interrupt-controller: Add support for Realtek DHC SoCs
Date: Wed, 29 Nov 2023 13:43:34 +0800
Message-ID: <20231129054339.3054202-2-james.tai@realtek.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231129054339.3054202-1-james.tai@realtek.com>
References: <20231129054339.3054202-1-james.tai@realtek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: RTEXH36506.realtek.com.tw (172.21.6.27) To
 RTEXMBS03.realtek.com.tw (172.21.6.96)
X-KSE-ServerInfo: RTEXMBS03.realtek.com.tw, 9
X-KSE-AntiSpam-Interceptor-Info: fallback
X-KSE-Antivirus-Interceptor-Info: fallback
X-KSE-AntiSpam-Interceptor-Info: fallback

Add the YAML documentation for Realtek DHC (Digital Home Center) SoCs.

Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202311180921.ayKhiFHL-lkp@intel.com/
CC: Thomas Gleixner <tglx@linutronix.de>
CC: Marc Zyngier <maz@kernel.org>
CC: Rob Herring <robh+dt@kernel.org>
CC: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
CC: Conor Dooley <conor+dt@kernel.org>
CC: linux-kernel@vger.kernel.org
CC: devicetree@vger.kernel.org
Signed-off-by: James Tai <james.tai@realtek.com>
---
v2 to v3 change:
- Retested the bindings using the new version of the dtschema
- Fixed the order of property items
- Removed redundant files and replaced them with 'realtek,intc.yaml'
- Replaced 'interrupts-extended' with 'interrupts'
- Added a description for 'interrupts'
- Reduced the example code

v1 to v2 change:
- Tested the bindings using 'make dt_binding_check'
- Fixed code style issues

 .../interrupt-controller/realtek,intc.yaml    | 76 +++++++++++++++++++
 1 file changed, 76 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/interrupt-controller/realtek,intc.yaml

diff --git a/Documentation/devicetree/bindings/interrupt-controller/realtek,intc.yaml b/Documentation/devicetree/bindings/interrupt-controller/realtek,intc.yaml
new file mode 100644
index 000000000000..3aa863b1549d
--- /dev/null
+++ b/Documentation/devicetree/bindings/interrupt-controller/realtek,intc.yaml
@@ -0,0 +1,76 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/interrupt-controller/realtek,intc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Realtek DHC SoCs Interrupt Controller
+
+maintainers:
+  - James Tai <james.tai@realtek.com>
+
+description:
+  This interrupt controller is a component of Realtek DHC (Digital Home Center)
+  SoCs and is designed to receive interrupts from peripheral devices.
+
+  Each DHC SoC has two sets of interrupt controllers, each capable of
+  handling up to 32 interrupts.
+
+allOf:
+  - $ref: /schemas/interrupt-controller.yaml#
+
+properties:
+  compatible:
+    enum:
+      - realtek,rtd1319-intc-iso
+      - realtek,rtd1319-intc-misc
+      - realtek,rtd1319d-intc-iso
+      - realtek,rtd1319d-intc-misc
+      - realtek,rtd1325-intc-iso
+      - realtek,rtd1325-intc-misc
+      - realtek,rtd1619b-intc-iso
+      - realtek,rtd1619b-intc-misc
+
+  reg:
+    maxItems: 1
+
+  interrupt-controller: true
+
+  '#interrupt-cells':
+    const: 1
+
+  '#address-cells':
+    const: 0
+
+  interrupts:
+    description: |
+      Contains the GIC SPI IRQs mapped to the external interrupt lines.
+    minItems: 2
+    maxItems: 4
+
+required:
+  - compatible
+  - reg
+  - interrupt-controller
+  - '#interrupt-cells'
+  - '#address-cells'
+  - interrupts
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    realtek_iso_intc: interrupt-controller@40 {
+      compatible = "realtek,rtd1319-intc-iso";
+      reg = <0x00 0x40>;
+      interrupt-parent = <&gic>;
+      interrupts = <GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>,
+                   <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH>;
+      interrupt-controller;
+      #address-cells = <0>;
+      #interrupt-cells = <1>;
+    };
+...
-- 
2.25.1


