Return-Path: <devicetree+bounces-12707-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D14D7DB33C
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 07:29:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 950C11C208AF
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 06:29:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E25C3201;
	Mon, 30 Oct 2023 06:29:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC68A1C32
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 06:29:36 +0000 (UTC)
Received: from rtits2.realtek.com.tw (rtits2.realtek.com [211.75.126.72])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 58C20C6;
	Sun, 29 Oct 2023 23:29:34 -0700 (PDT)
X-SpamFilter-By: ArmorX SpamTrap 5.78 with qID 39U6S3h842780490, This message is accepted by code: ctloc85258
Received: from mail.realtek.com (rtexh36506.realtek.com.tw[172.21.6.27])
	by rtits2.realtek.com.tw (8.15.2/2.93/5.92) with ESMTPS id 39U6S3h842780490
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 30 Oct 2023 14:28:03 +0800
Received: from RTEXMBS03.realtek.com.tw (172.21.6.96) by
 RTEXH36506.realtek.com.tw (172.21.6.27) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.17; Mon, 30 Oct 2023 14:28:03 +0800
Received: from RTEXH36506.realtek.com.tw (172.21.6.27) by
 RTEXMBS03.realtek.com.tw (172.21.6.96) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.7; Mon, 30 Oct 2023 14:28:02 +0800
Received: from localhost.localdomain (172.21.252.101) by
 RTEXH36506.realtek.com.tw (172.21.6.27) with Microsoft SMTP Server id
 15.1.2507.17 via Frontend Transport; Mon, 30 Oct 2023 14:28:02 +0800
From: Jyan Chou <jyanchou@realtek.com>
To: <ulf.hansson@linaro.org>, <adrian.hunter@intel.com>,
        <jh80.chung@samsung.com>, <riteshh@codeaurora.org>,
        <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <conor+dt@kernel.org>, <asutoshd@codeaurora.org>,
        <p.zabel@pengutronix.de>
CC: <linux-mmc@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <arnd@arndb.de>,
        <briannorris@chromium.org>, <doug@schmorgal.com>,
        <tonyhuang.sunplus@gmail.com>, <abel.vesa@linaro.org>,
        <william.qiu@starfivetech.com>, <jyanchou@realtek.com>
Subject: [PATCH V4][4/4] dt-bindings: mmc: Add dt-bindings for realtek mmc driver
Date: Mon, 30 Oct 2023 14:27:49 +0800
Message-ID: <20231030062749.2840-5-jyanchou@realtek.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231030062749.2840-1-jyanchou@realtek.com>
References: <20231030062749.2840-1-jyanchou@realtek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-KSE-ServerInfo: RTEXMBS03.realtek.com.tw, 9
X-KSE-AntiSpam-Interceptor-Info: fallback
X-KSE-Antivirus-Interceptor-Info: fallback
X-KSE-AntiSpam-Interceptor-Info: fallback

Document the device-tree bindings for Realtek SoCs mmc driver.

Signed-off-by: Jyan Chou <jyanchou@realtek.com>

---
v3 -> v4:
- Rename compatible(add SoC-specific part) to be different from filename.
- Describe the items to make properties and item easy to understand.
- Fix examples' indentation and compiling error.
- Drop useless properties.

v2 -> v3:
- Modify dt-bindings' content and description.
- Fix coding style.
- Update the list of maintainers.

v0 -> v2:
- Add dt-bindings.
---
---
 .../bindings/mmc/realtek-dw-mshc.yaml         | 161 ++++++++++++++++++
 1 file changed, 161 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mmc/realtek-dw-mshc.yaml

diff --git a/Documentation/devicetree/bindings/mmc/realtek-dw-mshc.yaml b/Documentation/devicetree/bindings/mmc/realtek-dw-mshc.yaml
new file mode 100644
index 000000000000..d238cf3b8b47
--- /dev/null
+++ b/Documentation/devicetree/bindings/mmc/realtek-dw-mshc.yaml
@@ -0,0 +1,161 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mmc/realtek-dw-mshc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Realtek DesignWare mobile storage host controller
+
+description:
+  Realtek uses the Synopsys DesignWare mobile storage host controller
+  to interface a SoC with storage medium. This file documents the Realtek
+  specific extensions.
+
+allOf:
+  - $ref: synopsys-dw-mshc-common.yaml#
+
+maintainers:
+  - Jyan Chou <jyanchou@realtek.com>
+
+properties:
+  compatible:
+    enum:
+      - realtek,rtd1325-dw-cqe-emmc
+
+  reg:
+    maxItems: 2
+    description:
+      Two regs are required, first reg specifies emmc base address, second reg
+      specifies cqhci base register address.
+
+  reg-names:
+    maxItems: 2
+    items:
+      - const: emmc
+      - const: cqhci
+
+  interrupts:
+    maxItems: 1
+
+  cqe:
+    maxItems: 1
+    description:
+      Cqe should set to 1 while using command queue feature, and set to 0 while
+      in legacy mode.
+
+  clocks:
+    minItems: 2
+    items:
+      - description: bus interface unit clock
+      - description: card interface unit clock
+      - description: select the phase for vpclk0 in realtek chip specified
+      - description: select the phase for vpclk1 in realtek chip specified
+
+  clock-names:
+    minItems: 2
+    items:
+      - const: biu
+      - const: ciu
+      - const: vp0
+      - const: vp1
+
+  resets:
+    maxItems: 1
+
+  reset-names:
+    const: reset
+
+  pinctrl-0:
+    description:
+      should contain default/high speed pin ctrl.
+    maxItems: 1
+
+  pinctrl-1:
+    description:
+      should contain sdr50 mode pin ctrl.
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
+  required:
+    - compatible
+    - reg
+    - reg-names
+    - interrupts
+    - clocks
+    - clock-names
+    - pinctrl-names
+
+  unevaluatedProperties: false
+
+  examples:
+    - |
+      emmc: mmc@12000 {
+        compatible = "realtek,rtd1325-dw-cqe-emmc";
+        reg = <0x00012000 0x00600>,
+              <0x00012180 0x00060>;
+        reg-names = "emmc", "cqhci";
+        interrupts = <0 42 4>;
+        clocks = <&cc 22>, <&cc 26>, <&cc 121>, <&cc 122>;
+        clock-names = "biu", "ciu", "vp0", "vp1";
+        clock-freq-min-max = <300000 400000000>;
+        clock-frequency = <400000>;
+        vmmc-supply = <&reg_vcc1v8>;
+        resets = <&rst 20>;
+        reset-names = "reset";
+        speed-step = <3>;
+        cqe = <1>;
+        pinctrl-names = "default", "sdr50", "ddr50", "hs200", "hs400",
+                        "tune0","tune1", "tune2","tune3", "tune4";
+        pinctrl-0 = <&emmc_pins_sdr50>;
+        pinctrl-1 = <&emmc_pins_sdr50>;
+        pinctrl-2 = <&emmc_pins_ddr50>;
+        pinctrl-3 = <&emmc_pins_hs200>;
+        pinctrl-4 = <&emmc_pins_hs400>;
+        pinctrl-5 = <&emmc_pins_tune0>;
+        pinctrl-6 = <&emmc_pins_tune1>;
+        pinctrl-7 = <&emmc_pins_tune2>;
+        pinctrl-8 = <&emmc_pins_tune3>;
+        pinctrl-9 = <&emmc_pins_tune4>;
+        };
-- 
2.42.0


