Return-Path: <devicetree+bounces-22041-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 85418806440
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 02:44:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 28675B211F5
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 01:44:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93C9115A1;
	Wed,  6 Dec 2023 01:44:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from pidgin.makrotopia.org (pidgin.makrotopia.org [185.142.180.65])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7F1D91B2;
	Tue,  5 Dec 2023 17:44:13 -0800 (PST)
Received: from local
	by pidgin.makrotopia.org with esmtpsa (TLS1.3:TLS_AES_256_GCM_SHA384:256)
	 (Exim 4.96.2)
	(envelope-from <daniel@makrotopia.org>)
	id 1rAgxC-0002ex-16;
	Wed, 06 Dec 2023 01:43:59 +0000
Date: Wed, 6 Dec 2023 01:43:55 +0000
From: Daniel Golle <daniel@makrotopia.org>
To: "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Felix Fietkau <nbd@nbd.name>, John Crispin <john@phrozen.org>,
	Sean Wang <sean.wang@mediatek.com>,
	Mark Lee <Mark-MC.Lee@mediatek.com>,
	Lorenzo Bianconi <lorenzo@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Alexander Couzens <lynxis@fe80.eu>,
	Daniel Golle <daniel@makrotopia.org>,
	Qingfang Deng <dqfext@gmail.com>,
	SkyLake Huang <SkyLake.Huang@mediatek.com>,
	Philipp Zabel <p.zabel@pengutronix.de>, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org
Subject: [RFC PATCH v2 1/8] dt-bindings: phy: mediatek,xfi-pextp: add new
 bindings
Message-ID: <f57cc2bfadca35219707a0af507ad6e2e354e311.1701826319.git.daniel@makrotopia.org>
References: <cover.1701826319.git.daniel@makrotopia.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1701826319.git.daniel@makrotopia.org>

Add bindings for the MediaTek PEXTP Ethernet SerDes PHY found in the
MediaTek MT7988 SoC which can operate at various interfaces modes:

 * USXGMII
 * 10GBase-R
 * 5GBase-R
 * 2500Base-X
 * 1000Base-X
 * Cisco SGMII (MAC side)

Signed-off-by: Daniel Golle <daniel@makrotopia.org>
---
 .../bindings/phy/mediatek,xfi-pextp.yaml      | 80 +++++++++++++++++++
 1 file changed, 80 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/mediatek,xfi-pextp.yaml

diff --git a/Documentation/devicetree/bindings/phy/mediatek,xfi-pextp.yaml b/Documentation/devicetree/bindings/phy/mediatek,xfi-pextp.yaml
new file mode 100644
index 0000000000000..58c93368141e2
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/mediatek,xfi-pextp.yaml
@@ -0,0 +1,80 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/mediatek,xfi-pextp.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: MediaTek XFI PEXTP SerDes PHY
+
+maintainers:
+  - Daniel Golle <daniel@makrotopia.org>
+
+description:
+  The MediaTek XFI PEXTP SerDes PHY provides the physical SerDes lanes
+  used by the MediaTek USXGMII PCS.
+
+properties:
+  $nodename:
+    pattern: "^phy@[0-9a-f]+$"
+
+  compatible:
+    const: mediatek,mt7988-xfi-pextp
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: XFI PHY clock
+      - description: XFI register clock
+
+  clock-names:
+    items:
+      - const: "xfipll"
+      - const: "topxtal"
+
+  resets:
+    items:
+      - description: PEXTP reset
+
+  mediatek,usxgmii-performance-errata:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description:
+      USXGMII0 on MT7988 suffers from a performance problem in 10GBase-R
+      mode which needs a work-around in the driver. The work-around is
+      enabled using this flag.
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
+  - "#phy-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/mediatek,mt7988-clk.h>
+    #include <dt-bindings/reset/mediatek,mt7988-resets.h>
+    soc {
+      #address-cells = <2>;
+      #size-cells = <2>;
+
+      phy@11f20000 {
+        compatible = "mediatek,mt7988-xfi-pextp";
+        reg = <0 0x11f20000 0 0x10000>;
+        clocks = <&xfi_pll CLK_XFIPLL_PLL_EN>,
+                 <&topckgen CLK_TOP_XFI_PHY_0_XTAL_SEL>;
+        clock-names = "xfipll", "topxtal";
+        resets = <&watchdog MT7988_TOPRGU_XFI_PEXTP0_GRST>;
+        mediatek,usxgmii-performance-errata;
+        #phy-cells = <0>;
+      };
+    };
+
+...
-- 
2.43.0

