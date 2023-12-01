Return-Path: <devicetree+bounces-20682-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 67C6F800916
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 11:53:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1FFA2280FEA
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 10:53:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8687A20B26;
	Fri,  1 Dec 2023 10:53:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from rtits2.realtek.com.tw (rtits2.realtek.com [211.75.126.72])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5D6D210FF;
	Fri,  1 Dec 2023 02:53:02 -0800 (PST)
X-SpamFilter-By: ArmorX SpamTrap 5.78 with qID 3B1AqFGZ1299709, This message is accepted by code: ctloc85258
Received: from mail.realtek.com (rtexh36506.realtek.com.tw[172.21.6.27])
	by rtits2.realtek.com.tw (8.15.2/2.95/5.92) with ESMTPS id 3B1AqFGZ1299709
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 1 Dec 2023 18:52:15 +0800
Received: from RTEXMBS02.realtek.com.tw (172.21.6.95) by
 RTEXH36506.realtek.com.tw (172.21.6.27) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.17; Fri, 1 Dec 2023 18:52:15 +0800
Received: from RTEXH36505.realtek.com.tw (172.21.6.25) by
 RTEXMBS02.realtek.com.tw (172.21.6.95) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.7; Fri, 1 Dec 2023 18:52:14 +0800
Received: from localhost.localdomain (172.21.252.101) by
 RTEXH36505.realtek.com.tw (172.21.6.25) with Microsoft SMTP Server id
 15.1.2375.32 via Frontend Transport; Fri, 1 Dec 2023 18:52:14 +0800
From: Tzuyi Chang <tychang@realtek.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
CC: <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>,
        Stanley Chang <stanley_chang@realtek.com>,
        Tzuyi Chang <tychang@realtek.com>
Subject: [PATCH 1/2] dt-bindings: phy: realtek: Add Realtek DHC RTD SoC PCIe PHY
Date: Fri, 1 Dec 2023 18:52:06 +0800
Message-ID: <20231201105207.11786-2-tychang@realtek.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231201105207.11786-1-tychang@realtek.com>
References: <20231201105207.11786-1-tychang@realtek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-KSE-ServerInfo: RTEXMBS02.realtek.com.tw, 9
X-KSE-AntiSpam-Interceptor-Info: fallback
X-KSE-Antivirus-Interceptor-Info: fallback
X-KSE-AntiSpam-Interceptor-Info: fallback

Add the device tree bindings for the Realtek DHC(Digital Home Center)
RTD SoCs PCIe PHY.

Signed-off-by: Tzuyi Chang <tychang@realtek.com>
---
 .../bindings/phy/realtek,rtd-pcie-phy.yaml    | 61 +++++++++++++++++++
 1 file changed, 61 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/realtek,rtd-pcie-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/realtek,rtd-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/realtek,rtd-pcie-phy.yaml
new file mode 100644
index 000000000000..44ff23f698e6
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/realtek,rtd-pcie-phy.yaml
@@ -0,0 +1,61 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright 2023 Realtek Semiconductor Corporation
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/realtek,rtd-pcie-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Realtek DHC PCIe PHY
+
+maintainers:
+  - Tzuyi Chang <tychang@realtek.com>
+
+description:
+  Realtek PCIe PHY supports the DHC(Digital Home Center) RTD series SoCs.
+  The PCIe PHY driver is designed to support physical layer functionality
+  of the PCIe controller.
+
+properties:
+  compatible:
+    enum:
+      - realtek,rtd1319-pcie0-phy
+      - realtek,rtd1319-pcie1-phy
+      - realtek,rtd1319-pcie2-phy
+      - realtek,rtd1619b-pcie1-phy
+      - realtek,rtd1619b-pcie2-phy
+      - realtek,rtd1319d-pcie1-phy
+      - realtek,rtd1315e-pcie1-phy
+
+  "#phy-cells":
+    const: 0
+
+  nvmem-cells:
+    maxItems: 1
+    description:
+      Phandle to nvmem cell that contains 'Tx swing trim'
+      tuning parameter value for PCIe phy.
+
+  nvmem-cell-names:
+    items:
+      - const: tx_swing_trim
+
+  realtek,pcie-syscon:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description: phandle of syscon used to control PCIe MDIO register.
+
+required:
+  - compatible
+  - realtek,pcie-syscon
+  - "#phy-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    pcie1_phy {
+        compatible = "realtek,rtd1319d-pcie1-phy";
+        realtek,pcie-syscon = <&pcie1>;
+        #phy-cells = <0>;
+        nvmem-cells = <&otp_pcie_tx_swing_trim>;
+        nvmem-cell-names = "tx_swing_trim";
+    };
-- 
2.43.0


