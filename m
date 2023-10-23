Return-Path: <devicetree+bounces-10997-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9281A7D3B69
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 17:50:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DFDB7B20E7F
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 15:50:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A48651C6AA;
	Mon, 23 Oct 2023 15:50:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="dv9Llfqi"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C27A1C2A7;
	Mon, 23 Oct 2023 15:50:14 +0000 (UTC)
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::228])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D2A8F127;
	Mon, 23 Oct 2023 08:50:10 -0700 (PDT)
Received: by mail.gandi.net (Postfix) with ESMTPSA id E2FB91BF208;
	Mon, 23 Oct 2023 15:50:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1698076208;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=yuCpGuToREVg41/lmByogXykAGaEM+x67Szl0gpgQI4=;
	b=dv9LlfqineMcniEywwvOfYShADtiCDoO0eYL7fzbATZnKBu6/rlUCyAqxZgleo5oEcl1ES
	r18R4RouunwSRtYbFHhFN1R+lQDGfZ0IiTh5EquLEEFMmkPldMWSjCMxL/YEDBR9sHlJ6M
	F3lLF8udVJPbXd9tfc5YE5RTYO0KLBmlyDQCgDA+r3/OYouvO8ttr8RntvnCqpnMxuH7SU
	Pxter4DPidWvxDkzbrtMPZyw322PT4kS18O1CRAMF3Syir1XKbYKUCAlLpAKeFk8JPeUzp
	z1/RELsDbPl0ESyjqMSXD4Mxqcf43k1j2yOMY2RABxceE8Lg9/MBQfJy5l+kyQ==
From: Romain Gantois <romain.gantois@bootlin.com>
To: davem@davemloft.net,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Romain Gantois <romain.gantois@bootlin.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Eric Dumazet <edumazet@google.com>,
	Paolo Abeni <pabeni@redhat.com>,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	thomas.petazzoni@bootlin.com,
	Andrew Lunn <andrew@lunn.ch>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	linux-arm-kernel@lists.infradead.org,
	Vladimir Oltean <vladimir.oltean@nxp.com>,
	Luka Perkov <luka.perkov@sartura.hr>,
	Robert Marko <robert.marko@sartura.hr>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>
Subject: [PATCH net-next 1/5] net: dt-bindings: Introduce the Qualcomm IPQESS Ethernet switch
Date: Mon, 23 Oct 2023 17:50:08 +0200
Message-ID: <20231023155013.512999-2-romain.gantois@bootlin.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231023155013.512999-1-romain.gantois@bootlin.com>
References: <20231023155013.512999-1-romain.gantois@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-GND-Sasl: romain.gantois@bootlin.com

Add the DT binding for the IPQESS Ethernet switch subsystem, that
integrates a modified QCA8K switch and an EDMA MAC controller. It inherits
from a basic ethernet switch binding and adds three regmaps, a phandle and
reset line for the PSGMII, a phandle to the MDIO bus, a clock, and 32
interrupts.

Signed-off-by: Romain Gantois <romain.gantois@bootlin.com>
---
 .../bindings/net/qcom,ipq4019-ess.yaml        | 152 ++++++++++++++++++
 1 file changed, 152 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/qcom,ipq4019-ess.yaml

diff --git a/Documentation/devicetree/bindings/net/qcom,ipq4019-ess.yaml b/Documentation/devicetree/bindings/net/qcom,ipq4019-ess.yaml
new file mode 100644
index 000000000000..9bb6b010ea6a
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/qcom,ipq4019-ess.yaml
@@ -0,0 +1,152 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/qcom,ipq4019-ess.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm IPQ4019 Ethernet switch subsystem driver
+
+maintainers:
+  - Romain Gantois <romain.gantois@bootlin.com>
+
+$ref: ethernet-switch.yaml#
+
+properties:
+  compatible:
+    const: qca,ipq4019-qca8337n
+
+  reg:
+    maxItems: 3
+    description: Base ESS registers, PSGMII registers and EDMA registers
+
+  reg-names:
+    maxItems: 3
+
+  resets:
+    maxItems: 2
+    description: Handles to the PSGMII and ESS reset lines
+
+  reset-names:
+    maxItems: 2
+
+  clocks:
+    maxItems: 1
+    description: Handle to the GCC ESS clock
+
+  clock-names:
+    maxItems: 1
+
+  psgmii-ethphy:
+    maxItems: 1
+    description: Handle to the MDIO bus node corresponding to the PSGMII
+
+  mdio:
+    maxItems: 1
+    description: Handle to the IPQ4019 MDIO Controller
+
+  interrupts:
+    maxItems: 32
+    description: One interrupt per tx and rx queue, the first 16 are rx queues
+                 and the last 16 are the tx queues
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - resets
+  - reset-names
+  - clocks
+  - clock-names
+  - mdio
+  - interrupts
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,gcc-ipq4019.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    switch: switch@c000000 {
+        compatible = "qca,ipq4019-qca8337n";
+        reg = <0xc000000 0x80000>, <0x98000 0x800>, <0xc080000 0x80000>;
+        reg-names = "base", "psgmii_phy", "edma";
+        resets = <&gcc ESS_PSGMII_ARES>, <&gcc ESS_RESET>;
+        reset-names = "psgmii_rst", "ess";
+        clocks = <&gcc GCC_ESS_CLK>;
+        clock-names = "ess";
+        mdio = <&mdio>;
+        interrupts = <GIC_SPI  65 IRQ_TYPE_EDGE_RISING>,
+                     <GIC_SPI  66 IRQ_TYPE_EDGE_RISING>,
+                     <GIC_SPI  67 IRQ_TYPE_EDGE_RISING>,
+                     <GIC_SPI  68 IRQ_TYPE_EDGE_RISING>,
+                     <GIC_SPI  69 IRQ_TYPE_EDGE_RISING>,
+                     <GIC_SPI  70 IRQ_TYPE_EDGE_RISING>,
+                     <GIC_SPI  71 IRQ_TYPE_EDGE_RISING>,
+                     <GIC_SPI  72 IRQ_TYPE_EDGE_RISING>,
+                     <GIC_SPI  73 IRQ_TYPE_EDGE_RISING>,
+                     <GIC_SPI  74 IRQ_TYPE_EDGE_RISING>,
+                     <GIC_SPI  75 IRQ_TYPE_EDGE_RISING>,
+                     <GIC_SPI  76 IRQ_TYPE_EDGE_RISING>,
+                     <GIC_SPI  77 IRQ_TYPE_EDGE_RISING>,
+                     <GIC_SPI  78 IRQ_TYPE_EDGE_RISING>,
+                     <GIC_SPI  79 IRQ_TYPE_EDGE_RISING>,
+                     <GIC_SPI  80 IRQ_TYPE_EDGE_RISING>,
+                     <GIC_SPI 240 IRQ_TYPE_EDGE_RISING>,
+                     <GIC_SPI 241 IRQ_TYPE_EDGE_RISING>,
+                     <GIC_SPI 242 IRQ_TYPE_EDGE_RISING>,
+                     <GIC_SPI 243 IRQ_TYPE_EDGE_RISING>,
+                     <GIC_SPI 244 IRQ_TYPE_EDGE_RISING>,
+                     <GIC_SPI 245 IRQ_TYPE_EDGE_RISING>,
+                     <GIC_SPI 246 IRQ_TYPE_EDGE_RISING>,
+                     <GIC_SPI 247 IRQ_TYPE_EDGE_RISING>,
+                     <GIC_SPI 248 IRQ_TYPE_EDGE_RISING>,
+                     <GIC_SPI 249 IRQ_TYPE_EDGE_RISING>,
+                     <GIC_SPI 250 IRQ_TYPE_EDGE_RISING>,
+                     <GIC_SPI 251 IRQ_TYPE_EDGE_RISING>,
+                     <GIC_SPI 252 IRQ_TYPE_EDGE_RISING>,
+                     <GIC_SPI 253 IRQ_TYPE_EDGE_RISING>,
+                     <GIC_SPI 254 IRQ_TYPE_EDGE_RISING>,
+                     <GIC_SPI 255 IRQ_TYPE_EDGE_RISING>;
+
+        ports {
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            swport1: port@1 { /* MAC1 */
+                 reg = <1>;
+                 label = "lan1";
+                 phy-handle = <&ethphy0>;
+                 phy-mode = "psgmii";
+            };
+
+            swport2: port@2 { /* MAC2 */
+                 reg = <2>;
+                 label = "lan2";
+                 phy-handle = <&ethphy1>;
+                 phy-mode = "psgmii";
+            };
+
+            swport3: port@3 { /* MAC3 */
+                 reg = <3>;
+                 label = "lan3";
+                 phy-handle = <&ethphy2>;
+                 phy-mode = "psgmii";
+            };
+
+            swport4: port@4 { /* MAC4 */
+                 reg = <4>;
+                 label = "lan4";
+                 phy-handle = <&ethphy3>;
+                 phy-mode = "psgmii";
+            };
+
+            swport5: port@5 { /* MAC5 */
+                 reg = <5>;
+                 label = "wan";
+                 phy-handle = <&ethphy4>;
+                 phy-mode = "psgmii";
+            };
+        };
+    };
+
+...
-- 
2.42.0


