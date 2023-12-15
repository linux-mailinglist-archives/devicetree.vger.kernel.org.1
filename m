Return-Path: <devicetree+bounces-25640-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 58F7481417B
	for <lists+devicetree@lfdr.de>; Fri, 15 Dec 2023 06:47:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8BAA81C22404
	for <lists+devicetree@lfdr.de>; Fri, 15 Dec 2023 05:47:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BEF416AA6;
	Fri, 15 Dec 2023 05:47:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="WHMR8htq"
X-Original-To: devicetree@vger.kernel.org
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com [198.47.23.249])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0050FD266;
	Fri, 15 Dec 2023 05:47:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3BF5lQ2P025894;
	Thu, 14 Dec 2023 23:47:26 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1702619246;
	bh=7A27bnkq/YPvUJRBGKKNkhpKPuydlLKX445lS/WVm1k=;
	h=From:To:CC:Subject:Date;
	b=WHMR8htqybt5NPW711/q2x2BZRPV2nSot3Y5TASB4PWuw/1udMHuQo8guBqNI/OmD
	 pb8V4w8a4xJuW6vth4cFLTgVPPSBmih+oxcY+MQfHgjo7sqxOHV0mnhAvcv6feqxfS
	 5E668IOk4IPdYo9sXshyfNPwJtyReNn/brQ+6kIY=
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3BF5lQvx005968
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 14 Dec 2023 23:47:26 -0600
Received: from DFLE100.ent.ti.com (10.64.6.21) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 14
 Dec 2023 23:47:26 -0600
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 14 Dec 2023 23:47:26 -0600
Received: from uda0492258.dhcp.ti.com (uda0492258.dhcp.ti.com [172.24.227.9])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3BF5lLfp076019;
	Thu, 14 Dec 2023 23:47:22 -0600
From: Siddharth Vadapalli <s-vadapalli@ti.com>
To: <nm@ti.com>, <vigneshr@ti.com>, <kristo@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>
CC: <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <danishanwar@ti.com>,
        <r-gunasekaran@ti.com>, <srk@ti.com>, <s-vadapalli@ti.com>
Subject: [PATCH v3] arm64: dts: ti: k3-am654-icssg2: Enable PHY interrupt for ICSSG2 PHY0
Date: Fri, 15 Dec 2023 11:17:21 +0530
Message-ID: <20231215054721.1975642-1-s-vadapalli@ti.com>
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

The GPIO1_87 interrupt line is shared by both the PHYs used by ICSSG2 due
to the board design. Since the SoC only supports Edge-Triggered interrupts
and Edge-Triggered interrupts cannot be shared, enable interrupt mode of
operation for ICSSG2 PHY0 alone while ICSSG2 PHY1 shall continue operating
in polled mode.

Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>
Reviewed-by: MD Danish Anwar <danishanwar@ti.com>
---
Hello,

This patch is based on linux-next tagged next-20231215.

v2:
https://lore.kernel.org/r/20231213080216.1710730-1-s-vadapalli@ti.com/
Changes since v2:
- Rebased patch on next-20231215.
- As pointed out by Nishanth Menon <nm@ti.com> at:
  https://lore.kernel.org/r/20231213123819.tqh3lm2ceir3qjbk@swimmer/
  the interrupt being shared between both the PHYs is an Edge-Triggered
  interrupt, due to which it shouldn't be shared. Thus, as discussed at:
  https://lore.kernel.org/r/0cef8f50-6608-cf3d-ad62-1afd3f5560ea@ti.com/
  the interrupt shall be dedicated to ICSSG2 PHY0 while ICSSG2 PHY1 shall
  continue operating in polled mode.
- Removed interrupt specific configuration from icssg2_phy1 which was
  present in the v2 patch.
- Added comment above icssg2_phy0 indicating why the interrupt mode of
  operation is only being enabled for icssg2_phy0 and not for icssg2_phy1.
- Updated commit message to match the new implementation.

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

 arch/arm64/boot/dts/ti/k3-am654-icssg2.dtso | 23 +++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am654-icssg2.dtso b/arch/arm64/boot/dts/ti/k3-am654-icssg2.dtso
index ec8cf20ca3ac..cce3f60904f1 100644
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
@@ -131,8 +141,21 @@ &icssg2_mdio {
 	#address-cells = <1>;
 	#size-cells = <0>;
 
+	/*
+	 * icssg2_phy0 and icssg2_phy1 share the same interrupt:
+	 * "GPIO1_87" due to the board design.
+	 * Since the SoC only supports Edge-Triggered interrupts and
+	 * Edge-Triggered interrupts cannot be shared, the interrupt will
+	 * be dedicated solely for icssg2_phy0's use while icssg2_phy1
+	 * shall continue operating in polled mode.
+	 */
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
-- 
2.34.1


