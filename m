Return-Path: <devicetree+bounces-43315-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A1962859F1B
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 10:04:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D397C1C21AE8
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 09:04:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5EAD2225AE;
	Mon, 19 Feb 2024 09:04:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="Qk9k8S5/"
X-Original-To: devicetree@vger.kernel.org
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com [198.47.23.249])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D72C22338;
	Mon, 19 Feb 2024 09:04:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.23.249
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708333491; cv=none; b=n4WBF4vmdIrdz6H568d9rxhglCHHTzWy7yVyG60kJv5bxcPDF+BMjIcvGrTnw23JD2umP54XaHzw3pmdC5zhbkn6gCXN+H2Bb2oHl2B17T2y+eKW611e359uFRO7Tr5zatxuLbPzKzCdVDX8jGl1BfV7WpLgzBiy8rNIBTli9Ms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708333491; c=relaxed/simple;
	bh=wk1n0oWjh34QbIeqz7ZNkSxon2SKxcvJK+7DW2eQqgQ=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=h98HMjGCmOiPd3+dA6TSlreM9AphBLwSXC7+bcnBBZkBrIe8C4yDlLKoyT63Pp8MLOy67KjjlWye9ldDks/aplM8YGaE9g9W8fn4/gqDAOCuIJ+QIswqFFEURvMk3d4V78XLu6aykmkF6nqHk9d3VZc18HdvGEUJRs3uHiWxdkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=Qk9k8S5/; arc=none smtp.client-ip=198.47.23.249
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 41J94hDb097758;
	Mon, 19 Feb 2024 03:04:43 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1708333483;
	bh=F9VQ5cICpZyC3r18cZBGn07fwGkoD+GP7y8K4AAm+eI=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=Qk9k8S5/vHsfbglZEJKP+qlDjO+UIAW48ODAeaMvbO2EE9uUnadNlv2caQtHVARrG
	 LY0hMW43D+d8VcQWZKF45P8xh4HvhoFGGGzBdbcCHyMOIueYyhsQBOkqjNSui/+/gz
	 aHixgZ9D+aNooSBduyug6e3i4PrKQ/vAh5lWzexg=
Received: from DLEE114.ent.ti.com (dlee114.ent.ti.com [157.170.170.25])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 41J94haD084363
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 19 Feb 2024 03:04:43 -0600
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Mon, 19
 Feb 2024 03:04:42 -0600
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Mon, 19 Feb 2024 03:04:43 -0600
Received: from uda0490681.. ([10.24.69.142])
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 41J94ZnV011977;
	Mon, 19 Feb 2024 03:04:39 -0600
From: Vaishnav Achath <vaishnav.a@ti.com>
To: <nm@ti.com>, <vigneshr@ti.com>, <kristo@kernel.org>, <robh@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>
CC: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <vaishnav.a@ti.com>, <u-kumar1@ti.com>,
        <s-vadapalli@ti.com>
Subject: [PATCH v2 1/2] arm64: dts: ti: k3-j722s-evm: Enable CPSW3G RGMII1
Date: Mon, 19 Feb 2024 14:34:34 +0530
Message-ID: <20240219090435.934383-2-vaishnav.a@ti.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240219090435.934383-1-vaishnav.a@ti.com>
References: <20240219090435.934383-1-vaishnav.a@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

From: Siddharth Vadapalli <s-vadapalli@ti.com>

Enable MAC Port 1 of CPSW3G instance of CPSW Ethernet Switch in
RGMII-RXID mode of operation. Port 2 is not connected on the EVM,
thus keep it disabled.

Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>
Signed-off-by: Vaishnav Achath <vaishnav.a@ti.com>
---
 arch/arm64/boot/dts/ti/k3-j722s-evm.dts | 53 +++++++++++++++++++++++++
 1 file changed, 53 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-j722s-evm.dts b/arch/arm64/boot/dts/ti/k3-j722s-evm.dts
index b4f2fee53a97..9e12a6e9111f 100644
--- a/arch/arm64/boot/dts/ti/k3-j722s-evm.dts
+++ b/arch/arm64/boot/dts/ti/k3-j722s-evm.dts
@@ -8,6 +8,7 @@
 
 /dts-v1/;
 
+#include <dt-bindings/net/ti-dp83867.h>
 #include "k3-j722s.dtsi"
 
 / {
@@ -160,6 +161,58 @@ J722S_IOPAD(0x0240, PIN_INPUT, 0) /* (B24) MMC1_SDCD */
 		>;
 		bootph-all;
 	};
+
+	mdio_pins_default: mdio-default-pins {
+		pinctrl-single,pins = <
+			J722S_IOPAD(0x0160, PIN_OUTPUT, 0) /* (AC24) MDIO0_MDC */
+			J722S_IOPAD(0x015c, PIN_INPUT, 0) /* (AD25) MDIO0_MDIO */
+		>;
+	};
+
+	rgmii1_pins_default: rgmii1-default-pins {
+		pinctrl-single,pins = <
+			J722S_IOPAD(0x014c, PIN_INPUT, 0) /* (AC25) RGMII1_RD0 */
+			J722S_IOPAD(0x0150, PIN_INPUT, 0) /* (AD27) RGMII1_RD1 */
+			J722S_IOPAD(0x0154, PIN_INPUT, 0) /* (AE24) RGMII1_RD2 */
+			J722S_IOPAD(0x0158, PIN_INPUT, 0) /* (AE26) RGMII1_RD3 */
+			J722S_IOPAD(0x0148, PIN_INPUT, 0) /* (AE27) RGMII1_RXC */
+			J722S_IOPAD(0x0144, PIN_INPUT, 0) /* (AD23) RGMII1_RX_CTL */
+			J722S_IOPAD(0x0134, PIN_OUTPUT, 0) /* (AF27) RGMII1_TD0 */
+			J722S_IOPAD(0x0138, PIN_OUTPUT, 0) /* (AE23) RGMII1_TD1 */
+			J722S_IOPAD(0x013c, PIN_OUTPUT, 0) /* (AG25) RGMII1_TD2 */
+			J722S_IOPAD(0x0140, PIN_OUTPUT, 0) /* (AF24) RGMII1_TD3 */
+			J722S_IOPAD(0x0130, PIN_OUTPUT, 0) /* (AG26) RGMII1_TXC */
+			J722S_IOPAD(0x012c, PIN_OUTPUT, 0) /* (AF25) RGMII1_TX_CTL */
+		>;
+	};
+};
+
+&cpsw3g {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&rgmii1_pins_default>;
+};
+
+&cpsw3g_mdio {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&mdio_pins_default>;
+
+	cpsw3g_phy0: ethernet-phy@0 {
+		reg = <0>;
+		ti,rx-internal-delay = <DP83867_RGMIIDCTL_2_00_NS>;
+		ti,fifo-depth = <DP83867_PHYCR_FIFO_DEPTH_4_B_NIB>;
+		ti,min-output-impedance;
+	};
+};
+
+&cpsw_port1 {
+	phy-mode = "rgmii-rxid";
+	phy-handle = <&cpsw3g_phy0>;
+};
+
+&cpsw_port2 {
+	status = "disabled";
 };
 
 &main_gpio1 {
-- 
2.34.1


