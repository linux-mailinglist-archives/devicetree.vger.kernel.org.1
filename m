Return-Path: <devicetree+bounces-58690-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id F28208A2D31
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 13:20:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6957B1F22DD5
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 11:20:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA99C53E2B;
	Fri, 12 Apr 2024 11:20:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="ewDSaNlD"
X-Original-To: devicetree@vger.kernel.org
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com [198.47.23.249])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D078453811;
	Fri, 12 Apr 2024 11:20:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.23.249
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712920847; cv=none; b=PimrlBeYRvoFyVN4MtIJmTeM7ZEEay+0o/2ecgu9/6xG34AooGUjiZ/reIB8gskDUvLY9nKWtBakWMtrQAEj8Jqpgw2Y0P6E/i0O0gutHLuCONPuX7Y0llq5ABk1jQ6DxntVqW2TZIvLRUilKsNO4KTxJXnV9dALjSq7QjoZbjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712920847; c=relaxed/simple;
	bh=xMEl6xIBN3UJSYa3ztdRTvc6fQYA4DRvANhfTgBkv6U=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=GxND/fQ4aT5lhTbVzRR0FB+qLbWJIcNuxBGI/waUF9atYcA0lBLkjDA2500vt3ovXOKQeNgwUJSklFa8XQQdaKbDJgMu26WPY+4+PmEe3Kev3pdXBvOUwHT+n/aZ9Kd3bAB8NKt72m4wgNDdNJhvSQ5T67NuoUtcj95OPSIqL1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=ewDSaNlD; arc=none smtp.client-ip=198.47.23.249
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 43CBKUed037054;
	Fri, 12 Apr 2024 06:20:30 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1712920830;
	bh=d1maaB2MvaXISGJNrxbZnn4gNGefEUtmWWGu7P6XHCM=;
	h=From:To:CC:Subject:Date;
	b=ewDSaNlDoDqXfdndEYfzbyS+8lvkVR2i9yynPeElBk5WhU6BRAtAz5eyS3gx4i/ht
	 f7TjDZbmAUJZTk3jMPVoQUNZCpCg0BYKKrhfhoNw5+klmQB9lBHbLe5W+yRYO3HSth
	 3OfGQnaY9afbLWIcnV41N8oF9vI1eOap7H/AbhOc=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 43CBKUsI020558
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 12 Apr 2024 06:20:30 -0500
Received: from DLEE109.ent.ti.com (157.170.170.41) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Fri, 12
 Apr 2024 06:20:29 -0500
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Fri, 12 Apr 2024 06:20:29 -0500
Received: from uda0510294.dhcp.ti.com (uda0510294.dhcp.ti.com [10.24.69.66])
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 43CBKQtL115252;
	Fri, 12 Apr 2024 06:20:27 -0500
From: Beleswar Padhi <b-padhi@ti.com>
To: <nm@ti.com>
CC: <vigneshr@ti.com>, <kristo@kernel.org>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <b-kapoor@ti.com>, <u-kumar1@ti.com>
Subject: [PATCH v3] arm64: dts: ti: k3-j721e-sk: Add support for multiple CAN instances
Date: Fri, 12 Apr 2024 16:50:25 +0530
Message-ID: <20240412112025.201639-1-b-padhi@ti.com>
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

CAN instance 0 in the mcu domain is brought on the J721E-SK board
through header J1. Thus, add its respective transceiver 1 dt node to add
support for this CAN instance.

CAN instances 0, 5 and 9 in the main domain are brought on the J721E-SK
board through headers J5, J6 and J2 respectively. Thus, add their
respective transceivers 2, 3 and 4 dt nodes to add support for these CAN
instances.

Signed-off-by: Beleswar Padhi <b-padhi@ti.com>
---
Test logs: https://gist.github.com/3V3RYONE/2144fa883bf3a390981d25572971fcf3

v3: Changelog:
1) Updated board name in capital letters in commit message description
2) Updated test logs to include communication between all applicable CAN
instances

Link to v2:
https://lore.kernel.org/linux-arm-kernel/20240325103405.182692-1-b-padhi@ti.com/

v2: Changelog:
1) Re-ordered status = "okay" property to the end of all applicable dt
nodes following kernel documentation

Link to v1:
https://lore.kernel.org/linux-arm-kernel/20240315124728.490331-1-b-padhi@ti.com/

 arch/arm64/boot/dts/ti/k3-j721e-sk.dts | 116 +++++++++++++++++++++++++
 1 file changed, 116 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-j721e-sk.dts b/arch/arm64/boot/dts/ti/k3-j721e-sk.dts
index 0c4575ad8d7c..7170f0220afd 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e-sk.dts
+++ b/arch/arm64/boot/dts/ti/k3-j721e-sk.dts
@@ -210,6 +210,42 @@ vdd_sd_dv_alt: gpio-regulator-tps659411 {
 			 <3300000 0x1>;
 	};
 
+	transceiver1: can-phy0 {
+		compatible = "ti,tcan1042";
+		#phy-cells = <0>;
+		max-bitrate = <5000000>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&mcu_mcan0_gpio_pins_default>;
+		standby-gpios = <&wkup_gpio0 3 GPIO_ACTIVE_HIGH>;
+	};
+
+	transceiver2: can-phy1 {
+		compatible = "ti,tcan1042";
+		#phy-cells = <0>;
+		max-bitrate = <5000000>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&main_mcan0_gpio_pins_default>;
+		standby-gpios = <&main_gpio0 65 GPIO_ACTIVE_HIGH>;
+	};
+
+	transceiver3: can-phy2 {
+		compatible = "ti,tcan1042";
+		#phy-cells = <0>;
+		max-bitrate = <5000000>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&main_mcan5_gpio_pins_default>;
+		standby-gpios = <&main_gpio0 66 GPIO_ACTIVE_HIGH>;
+	};
+
+	transceiver4: can-phy3 {
+		compatible = "ti,tcan1042";
+		#phy-cells = <0>;
+		max-bitrate = <5000000>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&main_mcan9_gpio_pins_default>;
+		standby-gpios = <&main_gpio0 67 GPIO_ACTIVE_HIGH>;
+	};
+
 	dp_pwr_3v3: fixedregulator-dp-prw {
 		compatible = "regulator-fixed";
 		regulator-name = "dp-pwr";
@@ -367,6 +403,45 @@ J721E_IOPAD(0x164, PIN_OUTPUT, 7) /* (V29) RGMII5_TD2 */
 		>;
 	};
 
+	main_mcan0_pins_default: main-mcan0-default-pins {
+		pinctrl-single,pins = <
+			J721E_IOPAD(0x208, PIN_INPUT, 0) /* (W5) MCAN0_RX */
+			J721E_IOPAD(0x20c, PIN_OUTPUT, 0) /* (W6) MCAN0_TX */
+		>;
+	};
+
+	main_mcan0_gpio_pins_default: main-mcan0-gpio-default-pins {
+		pinctrl-single,pins = <
+			J721E_IOPAD(0x108, PIN_INPUT, 7) /* (AD27) PRG0_PRU1_GPO2.GPIO0_65 */
+		>;
+	};
+
+	main_mcan5_pins_default: main-mcan5-default-pins {
+		pinctrl-single,pins = <
+			J721E_IOPAD(0x050, PIN_INPUT, 6) /* (AE21) PRG1_PRU0_GPO18.MCAN5_RX */
+			J721E_IOPAD(0x04c, PIN_OUTPUT, 6) /* (AJ21) PRG1_PRU0_GPO17.MCAN5_TX */
+		>;
+	};
+
+	main_mcan5_gpio_pins_default: main-mcan5-gpio-default-pins {
+		pinctrl-single,pins = <
+			J721E_IOPAD(0x10c, PIN_INPUT, 7) /* (AC25) PRG0_PRU1_GPO3.GPIO0_66 */
+		>;
+	};
+
+	main_mcan9_pins_default: main-mcan9-default-pins {
+		pinctrl-single,pins = <
+			J721E_IOPAD(0x0d0, PIN_INPUT, 6) /* (AC27) PRG0_PRU0_GPO8.MCAN9_RX */
+			J721E_IOPAD(0x0cc, PIN_OUTPUT, 6) /* (AC28) PRG0_PRU0_GPO7.MCAN9_TX */
+		>;
+	};
+
+	main_mcan9_gpio_pins_default: main-mcan9-gpio-default-pins {
+		pinctrl-single,pins = <
+			J721E_IOPAD(0x110, PIN_INPUT, 7) /* (AD29) PRG0_PRU1_GPO4.GPIO0_67 */
+		>;
+	};
+
 	dp0_pins_default: dp0-default-pins {
 		pinctrl-single,pins = <
 			J721E_IOPAD(0x1c4, PIN_INPUT, 5) /* SPI0_CS1.DP0_HPD */
@@ -555,6 +630,19 @@ J721E_WKUP_IOPAD(0xfc, PIN_INPUT_PULLUP, 0) /* (H24) WKUP_I2C0_SDA */
 		>;
 	};
 
+	mcu_mcan0_pins_default: mcu-mcan0-default-pins {
+		pinctrl-single,pins = <
+			J721E_WKUP_IOPAD(0x0ac, PIN_INPUT, 0) /* (C29) MCU_MCAN0_RX */
+			J721E_WKUP_IOPAD(0x0a8, PIN_OUTPUT, 0) /* (D29) MCU_MCAN0_TX */
+		>;
+	};
+
+	mcu_mcan0_gpio_pins_default: mcu-mcan0-gpio-default-pins {
+		pinctrl-single,pins = <
+			J721E_WKUP_IOPAD(0x0bc, PIN_INPUT, 7) /* (F27) WKUP_GPIO0_3 */
+		>;
+	};
+
 	/* Reset for M.2 M Key slot on PCIe1  */
 	mkey_reset_pins_default: mkey-reset-pns-default-pins {
 		pinctrl-single,pins = <
@@ -1108,6 +1196,34 @@ &pcie1_rc {
 	num-lanes = <2>;
 };
 
+&mcu_mcan0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&mcu_mcan0_pins_default>;
+	phys = <&transceiver1>;
+	status = "okay";
+};
+
+&main_mcan0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&main_mcan0_pins_default>;
+	phys = <&transceiver2>;
+	status = "okay";
+};
+
+&main_mcan5 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&main_mcan5_pins_default>;
+	phys = <&transceiver3>;
+	status = "okay";
+};
+
+&main_mcan9 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&main_mcan9_pins_default>;
+	phys = <&transceiver4>;
+	status = "okay";
+};
+
 &ufs_wrapper {
 	status = "disabled";
 };
-- 
2.34.1


