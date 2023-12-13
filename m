Return-Path: <devicetree+bounces-24642-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8920C810BEF
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 09:02:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 459232815C2
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 08:02:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 731741C28C;
	Wed, 13 Dec 2023 08:02:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="YUK5ZNUq"
X-Original-To: devicetree@vger.kernel.org
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3DA2CD0;
	Wed, 13 Dec 2023 00:02:35 -0800 (PST)
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3BD82M9m002149;
	Wed, 13 Dec 2023 02:02:22 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1702454542;
	bh=MBKsgsuYGX4k9jFCM4rlwljZIghlRoJN70MfqBeb5vE=;
	h=From:To:CC:Subject:Date;
	b=YUK5ZNUqD6b2dti6512xGmw2HQ7IJkClY5Wpyzd6r6lQOaooZYgLPkoh7wEfrHFca
	 50RiyyjvAfQWnpbBrpF0leDLnRLpPfzfym7a/Y1Auhyf8Q7ZltCNNFpVjI1oUilbnO
	 Ob7bVL6A1/dulOtTp/8ms1hHKnAKelGWWiB4G90A=
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3BD82MmU126291
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 13 Dec 2023 02:02:22 -0600
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Wed, 13
 Dec 2023 02:02:21 -0600
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Wed, 13 Dec 2023 02:02:21 -0600
Received: from uda0492258.dhcp.ti.com (uda0492258.dhcp.ti.com [172.24.227.9])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3BD82HU8024879;
	Wed, 13 Dec 2023 02:02:18 -0600
From: Siddharth Vadapalli <s-vadapalli@ti.com>
To: <nm@ti.com>, <vigneshr@ti.com>, <kristo@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>
CC: <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <danishanwar@ti.com>,
        <r-gunasekaran@ti.com>, <srk@ti.com>, <s-vadapalli@ti.com>
Subject: [PATCH v2] arm64: dts: ti: k3-am654-icssg2: Enable PHY interrupts for ICSSG2
Date: Wed, 13 Dec 2023 13:32:16 +0530
Message-ID: <20231213080216.1710730-1-s-vadapalli@ti.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

Enable interrupt mode of operation of the DP83867 Ethernet PHY which is
used by ICSSG2. The DP83867 PHY driver already supports interrupt handling
for interrupts generated by the PHY. Thus, add the necessary device-tree
support to enable it.

Since the GPIO1_87 line is muxed with EXT_REFCLK1 and SYNC1_OUT, update
the pinmux to select GPIO1_87 for routing the interrupt.

As the same interrupt line and therefore the same pinmux configuration is
applicable to both Ethernet PHYs used by ICSSG2, allocate the pinmux
resource to the first Ethernet PHY alone.

Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>
Reviewed-by: MD Danish Anwar <danishanwar@ti.com>
---
Hello,

This patch is based on linux-next tagged next-20231213.

v1:
https://lore.kernel.org/r/20231120063159.539306-1-s-vadapalli@ti.com/
Changes since v1:
- Rebased patch on next-20231213.
- Collected Reviewed-by tag from
  MD Danish Anwar <danishanwar@ti.com>
- Moved pinctrl from MDIO node to Ethernet PHY node based on feedback from
  Nishanth Menon <nm@ti.com>
- Replaced the hard-coded value 0x2 with IRQ_TYPE_EDGE_FALLING for
  setting the interrupt trigger type and level flag based on feedback from
  Nishanth Menon <nm@ti.com>
- Included dt-bindings/interrupt-controller/irq.h in the overlay.
- Updated commit message with details of the pinmux resource allocation.

Regards,
Siddharth.

 arch/arm64/boot/dts/ti/k3-am654-icssg2.dtso | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am654-icssg2.dtso b/arch/arm64/boot/dts/ti/k3-am654-icssg2.dtso
index ec8cf20ca3ac..6eabdfa0d602 100644
--- a/arch/arm64/boot/dts/ti/k3-am654-icssg2.dtso
+++ b/arch/arm64/boot/dts/ti/k3-am654-icssg2.dtso
@@ -8,6 +8,7 @@
 /dts-v1/;
 /plugin/;
 
+#include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/net/ti-dp83867.h>
 #include "k3-pinctrl.h"
 
@@ -124,6 +125,15 @@ AM65X_IOPAD(0x0088, PIN_INPUT, 2) /* (AG17) PRG2_PRU0_GPO4.PRG2_RGMII1_RX_CTL */
 	};
 };
 
+&main_pmx1 {
+	/* Select GPIO1_87 for ICSSG2 PHY interrupt */
+	icssg2_phy_irq_pins_default: icssg2-phy-irq-default-pins {
+		pinctrl-single,pins = <
+			AM65X_IOPAD(0x0014, PIN_INPUT, 7) /* (A22) EXT_REFCLK1.GPIO1_87 */
+		>;
+	};
+};
+
 &icssg2_mdio {
 	status = "okay";
 	pinctrl-names = "default";
@@ -132,13 +142,20 @@ &icssg2_mdio {
 	#size-cells = <0>;
 
 	icssg2_phy0: ethernet-phy@0 {
+		pinctrl-names = "default";
+		pinctrl-0 = <&icssg2_phy_irq_pins_default>;
+
 		reg = <0>;
+		interrupt-parent = <&main_gpio1>;
+		interrupts = <87 IRQ_TYPE_EDGE_FALLING>;
 		ti,rx-internal-delay = <DP83867_RGMIIDCTL_2_00_NS>;
 		ti,fifo-depth = <DP83867_PHYCR_FIFO_DEPTH_4_B_NIB>;
 	};
 
 	icssg2_phy1: ethernet-phy@3 {
 		reg = <3>;
+		interrupt-parent = <&main_gpio1>;
+		interrupts = <87 IRQ_TYPE_EDGE_FALLING>;
 		ti,rx-internal-delay = <DP83867_RGMIIDCTL_2_00_NS>;
 		ti,fifo-depth = <DP83867_PHYCR_FIFO_DEPTH_4_B_NIB>;
 	};
-- 
2.34.1


