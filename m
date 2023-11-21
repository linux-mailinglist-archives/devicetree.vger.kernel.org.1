Return-Path: <devicetree+bounces-17434-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id DC39B7F287A
	for <lists+devicetree@lfdr.de>; Tue, 21 Nov 2023 10:13:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6C0E3B21620
	for <lists+devicetree@lfdr.de>; Tue, 21 Nov 2023 09:13:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04A903218A;
	Tue, 21 Nov 2023 09:13:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from rtits2.realtek.com.tw (rtits2.realtek.com [211.75.126.72])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C56910E;
	Tue, 21 Nov 2023 01:13:42 -0800 (PST)
X-SpamFilter-By: ArmorX SpamTrap 5.78 with qID 3AL9CLOM01506726, This message is accepted by code: ctloc85258
Received: from mail.realtek.com (rtexh36506.realtek.com.tw[172.21.6.27])
	by rtits2.realtek.com.tw (8.15.2/2.95/5.92) with ESMTPS id 3AL9CLOM01506726
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 21 Nov 2023 17:12:21 +0800
Received: from RTEXDAG01.realtek.com.tw (172.21.6.100) by
 RTEXH36506.realtek.com.tw (172.21.6.27) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.17; Tue, 21 Nov 2023 17:12:21 +0800
Received: from RTEXH36506.realtek.com.tw (172.21.6.27) by
 RTEXDAG01.realtek.com.tw (172.21.6.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.7; Tue, 21 Nov 2023 17:12:19 +0800
Received: from localhost.localdomain (172.21.252.101) by
 RTEXH36506.realtek.com.tw (172.21.6.27) with Microsoft SMTP Server id
 15.1.2507.17 via Frontend Transport; Tue, 21 Nov 2023 17:12:19 +0800
From: Jyan Chou <jyanchou@realtek.com>
To: <ulf.hansson@linaro.org>, <adrian.hunter@intel.com>,
        <jh80.chung@samsung.com>, <riteshh@codeaurora.org>,
        <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>
CC: <conor+dt@kernel.org>, <asutoshd@codeaurora.org>, <p.zabel@pengutronix.de>,
        <linux-mmc@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <arnd@arndb.de>,
        <briannorris@chromium.org>, <doug@schmorgal.com>,
        <tonyhuang.sunplus@gmail.com>, <abel.vesa@linaro.org>,
        <william.qiu@starfivetech.com>, <jyanchou@realtek.com>
Subject: [PATCH v7][4/4] dt-bindings: mmc: Add dt-bindings for realtek mmc driver
Date: Tue, 21 Nov 2023 17:11:01 +0800
Message-ID: <20231121091101.5540-5-jyanchou@realtek.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231121091101.5540-1-jyanchou@realtek.com>
References: <20231121091101.5540-1-jyanchou@realtek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-KSE-ServerInfo: RTEXDAG01.realtek.com.tw, 9
X-KSE-AntiSpam-Interceptor-Info: fallback
X-KSE-Antivirus-Interceptor-Info: fallback
X-KSE-AntiSpam-Interceptor-Info: fallback

Document the device-tree bindings for Realtek SoCs mmc driver.

Signed-off-by: Jyan Chou <jyanchou@realtek.com>

---
v6 -> v7:
- Drop reset-names and realtek,m2tmx since it is not needed in our driver.

v5 -> v6:
- Drop the incorrect, generic compatible and modify it to specific.
- Drop useless properties.
- Modify bindings to make DTS and driver match.

v4 -> v5:
- Remove unused property, e.g.,cqe, resets, clock-freq-min-max.
- Fix indentation.

v3 -> v4:
- Describe the items to make properties and item easy to understand.
- Fix examples' indentation and compiling error.
- Drop useless properties.

v2 -> v3:
- Modify dt-bindings' content and description.
- Fix coding style.
- Update the list of maintainers.

v1 -> v2:
- Add dt-bindings.
---
---
 .../bindings/mmc/realtek,rtd-dw-cqe-emmc.yaml | 153 ++++++++++++++++++
 1 file changed, 153 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mmc/realtek,rtd-dw-cqe-emmc.yaml

diff --git a/Documentation/devicetree/bindings/mmc/realtek,rtd-dw-cqe-emmc.yaml b/Documentation/devicetree/bindings/mmc/realtek,rtd-dw-cqe-emmc.yaml
new file mode 100644
index 000000000000..ae063fcae365
--- /dev/null
+++ b/Documentation/devicetree/bindings/mmc/realtek,rtd-dw-cqe-emmc.yaml
@@ -0,0 +1,153 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mmc/realtek,rtd-dw-cqe-emmc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Realtek DesignWare mobile storage host controller
+
+description:
+  Realtek uses the Synopsys DesignWare mobile storage host controller
+  to interface a SoC with storage medium. This file documents the Realtek
+  specific extensions.
+
+maintainers:
+  - Jyan Chou <jyanchou@realtek.com>
+
+allOf:
+  - $ref: synopsys-dw-mshc-common.yaml#
+
+properties:
+  compatible:
+    enum:
+      - realtek,rtd1325-dw-cqe-emmc
+      - realtek,rtd1319-dw-cqe-emmc
+      - realtek,rtd1315e-dw-cqe-emmc
+      - realtek,rtd1619b-dw-cqe-emmc
+
+  reg:
+    items:
+      - description: emmc base address
+      - description: cqhci base address
+
+  reg-names:
+    items:
+      - const: emmc
+      - const: cqhci
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 4
+
+  clock-names:
+    items:
+      - const: biu
+      - const: ciu
+      - const: vp0
+      - const: vp1
+
+  resets:
+    maxItems: 1
+
+  pinctrl-0:
+    description:
+      should contain default/high speed pin ctrl.
+    maxItems: 1
+
+  pinctrl-1:
+    description:
+      should contain sdr50 pin ctrl.
+    maxItems: 1
+
+  pinctrl-2:
+    description:
+      should contain ddr50 mode pin ctrl.
+    maxItems: 1
+
+  pinctrl-3:
+    description:
+      should contain hs200 speed pin ctrl.
+    maxItems: 1
+
+  pinctrl-4:
+    description:
+      should contain hs400 speed pin ctrl.
+    maxItems: 1
+
+  pinctrl-5:
+    description:
+      should contain tune0 pin ctrl.
+    maxItems: 1
+
+  pinctrl-6:
+    description:
+      should contain tune1 pin ctrl.
+    maxItems: 1
+
+  pinctrl-7:
+    description:
+      should contain tune2 pin ctrl.
+    maxItems: 1
+
+  pinctrl-8:
+    description:
+      should contain tune3 pin ctrl.
+    maxItems: 1
+
+  pinctrl-9:
+    description:
+      should contain tune4 pin ctrl.
+    maxItems: 1
+
+  pinctrl-names:
+    maxItems: 10
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - interrupts
+  - clocks
+  - clock-names
+  - vmmc-supply
+  - pinctrl-names
+  - pinctrl-0
+  - pinctrl-1
+  - pinctrl-3
+  - pinctrl-4
+  - pinctrl-5
+  - pinctrl-6
+  - pinctrl-7
+  - pinctrl-8
+  - pinctrl-9
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    emmc: mmc@12000 {
+      compatible = "realtek,rtd1315e-dw-cqe-emmc";
+      reg = <0x00012000 0x00600>,
+            <0x00012180 0x00060>;
+      reg-names = "emmc", "cqhci";
+      interrupts = <0 42 4>;
+      clocks = <&cc 22>, <&cc 26>, <&cc 121>, <&cc 122>;
+      clock-names = "biu", "ciu", "vp0", "vp1";
+      resets = <&rst 20>;
+      vmmc-supply = <&reg_vcc1v8>;
+      pinctrl-names = "default", "sdr50", "ddr50", "hs200", "hs400",
+                      "tune0","tune1", "tune2","tune3", "tune4";
+      pinctrl-0 = <&emmc_pins_sdr50>;
+      pinctrl-1 = <&emmc_pins_sdr50>;
+      pinctrl-2 = <&emmc_pins_ddr50>;
+      pinctrl-3 = <&emmc_pins_hs200>;
+      pinctrl-4 = <&emmc_pins_hs400>;
+      pinctrl-5 = <&emmc_pins_tune0>;
+      pinctrl-6 = <&emmc_pins_tune1>;
+      pinctrl-7 = <&emmc_pins_tune2>;
+      pinctrl-8 = <&emmc_pins_tune3>;
+      pinctrl-9 = <&emmc_pins_tune4>;
+      supports-cqe;
+    };
-- 
2.42.0


