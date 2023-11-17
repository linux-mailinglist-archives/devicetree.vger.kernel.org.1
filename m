Return-Path: <devicetree+bounces-16668-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BE6657EF34A
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 14:04:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EF9C71C20A42
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 13:04:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3139F30FA5;
	Fri, 17 Nov 2023 13:04:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from ex01.ufhost.com (ex01.ufhost.com [61.152.239.75])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AA235D55;
	Fri, 17 Nov 2023 05:04:27 -0800 (PST)
Received: from EXMBX165.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX165", Issuer "EXMBX165" (not verified))
	by ex01.ufhost.com (Postfix) with ESMTP id 34D3C24E269;
	Fri, 17 Nov 2023 21:04:24 +0800 (CST)
Received: from EXMBX171.cuchost.com (172.16.6.91) by EXMBX165.cuchost.com
 (172.16.6.75) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Fri, 17 Nov
 2023 21:04:24 +0800
Received: from yang-virtual-machine.localdomain (183.27.97.246) by
 EXMBX171.cuchost.com (172.16.6.91) with Microsoft SMTP Server (TLS) id
 15.0.1497.42; Fri, 17 Nov 2023 21:04:23 +0800
From: Shengyang Chen <shengyang.chen@starfivetech.com>
To: <devicetree@vger.kernel.org>, <linux-phy@lists.infradead.org>
CC: <vkoul@kernel.org>, <kishon@kernel.org>, <robh+dt@kernel.org>,
	<krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
	<p.zabel@pengutronix.de>, <minda.chen@starfivetech.com>,
	<changhuang.liang@starfivetech.com>, <rogerq@kernel.org>,
	<geert+renesas@glider.be>, <keith.zhao@starfivetech.com>,
	<shengyang.chen@starfivetech.com>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v1 1/2] dt-bindings: phy: Add starfive,jh7110-dphy-tx
Date: Fri, 17 Nov 2023 21:04:20 +0800
Message-ID: <20231117130421.79261-2-shengyang.chen@starfivetech.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20231117130421.79261-1-shengyang.chen@starfivetech.com>
References: <20231117130421.79261-1-shengyang.chen@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [183.27.97.246]
X-ClientProxiedBy: EXCAS066.cuchost.com (172.16.6.26) To EXMBX171.cuchost.com
 (172.16.6.91)
X-YovoleRuleAgent: yovoleflag

StarFive SoCs like the jh7110 use a MIPI D-PHY TX
controller based on a M31 IP. Add a binding for it.

Signed-off-by: Shengyang Chen <shengyang.chen@starfivetech.com>
---
 .../bindings/phy/starfive,jh7110-dphy-tx.yaml | 74 +++++++++++++++++++
 1 file changed, 74 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/starfive,jh7110-dphy-tx.yaml

diff --git a/Documentation/devicetree/bindings/phy/starfive,jh7110-dphy-tx.yaml b/Documentation/devicetree/bindings/phy/starfive,jh7110-dphy-tx.yaml
new file mode 100644
index 000000000000..850fe2e61d1d
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/starfive,jh7110-dphy-tx.yaml
@@ -0,0 +1,74 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/starfive,jh7110-dphy-tx.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Starfive SoC MIPI D-PHY Tx Controller
+
+maintainers:
+  - Keith Zhao <keith.zhao@starfivetech.com>
+  - Shengyang Chen <shengyang.chen@starfivetech.com>
+
+description:
+  The Starfive SoC uses the MIPI DSI D-PHY based on M31 IP to transfer
+  DSI data.
+
+properties:
+  compatible:
+    const: starfive,jh7110-dphy-tx
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    items:
+      - const: dphy_txesc
+
+  resets:
+    items:
+      - description: DSITX_TXBYTEHS reset
+      - description: MIPITX_DPHY_SYS reset
+      - description: MIPITX_DPHY_TXBYTEHS reset
+
+  reset-names:
+    items:
+      - const: dsi_txbytehs
+      - const: dphy_sys
+      - const: dphy_txbytehs
+
+  power-domains:
+    maxItems: 1
+
+  "#phy-cells":
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - resets
+  - reset-names
+  - power-domains
+  - "#phy-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    phy@295e0000 {
+      compatible = "starfive,jh7110-dphy-tx";
+      reg = <0x295e0000 0x10000>;
+      clocks = <&voutcrg 14>;
+      clock-names = "dphy_txesc";
+      resets = <&syscrg 7>,
+               <&syscrg 10>,
+               <&syscrg 11>;
+      reset-names = "dsi_txbytehs", "dphy_sys", "dphy_txbytehs";
+      power-domains = <&aon_syscon 0>;
+      #phy-cells = <0>;
+    };
-- 
2.17.1


