Return-Path: <devicetree+bounces-243267-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id ED1CFC9622A
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 09:29:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id DC4AA4E1908
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 08:29:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13B0A2F6914;
	Mon,  1 Dec 2025 08:29:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="OAtR8huL"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D5232EC093;
	Mon,  1 Dec 2025 08:29:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.153.233
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764577775; cv=none; b=Nka+pqhVK6V2L18Va742mIuSJgfqwYouGZeIqr7wmNOCyZ1x1/xrMqfpZFArTKDmEVwZHGA4bPb0fjYphMGXkP/Hf0HlxtPtwqSOM+c5G5z+gcXBZ9CcCNKq4rrYvCwLc1zU+c2DShUZ2tTT/QQcd+uqeg9z+Ds2JG/G045fYr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764577775; c=relaxed/simple;
	bh=eLVp9h+MDHg/5BJE4cUVZQ6UyUD/vG+2yLfmR0WZiR4=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=AWHMJDWz+vPRIiWJpd0dYsMAaqOMIA/1m2jJ+3PEQVyXfLlpyTig/hEmPUg9JPC/ItA44+F4DIs2I8owQQEps/0VY5kwYTIhcSmJI+mIUvF35mMm8hS2darDtfGPeVgkDEnj92wqrTM3Ps59uCjtzrzfoejigA7TUvSfswTNWGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=OAtR8huL; arc=none smtp.client-ip=68.232.153.233
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1764577773; x=1796113773;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=eLVp9h+MDHg/5BJE4cUVZQ6UyUD/vG+2yLfmR0WZiR4=;
  b=OAtR8huLQW6wwh+Ec/LKpx8EB5e9ZYJayYvjZ/r6R+legsHurpBgDPwJ
   oH2QvlPfcPw3SaT6kDrxiUXCuIQVvj3hBU2qGoX844y+J1Y3/iDk7uzLI
   SNkRLxI15jkAbL05RzxNQ3tMelqIi0qW1erAFvb1I/rSGv+PTFRSYlIcp
   Khi/cNXFYKWY15EzNOsFpEyxYvueRt6dy+x6yDkr9dNbs/RBfuVGwK1QM
   0J0WxkidSS2GKmI2eIpJe0HRc+vYaZBzTPGcezHZ/aCc3X7N2J8FMCNon
   93N29nt/XvNlRkBN26sr5J03GZSzw3VCaUmFkv8424z0t0LovFhTrbmqA
   w==;
X-CSE-ConnectionGUID: Jt19qymKQxqm5dx5AqyGaw==
X-CSE-MsgGUID: 48P1tEb2TSC62ymXNiwTHA==
X-IronPort-AV: E=Sophos;i="6.20,240,1758610800"; 
   d="scan'208";a="56483967"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa1.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 01 Dec 2025 01:29:25 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.58; Mon, 1 Dec 2025 01:29:24 -0700
Received: from DEN-DL-M31836.microchip.com (10.10.85.11) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.2507.58 via Frontend Transport; Mon, 1 Dec 2025 01:29:21 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
	<nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
	<claudiu.beznea@tuxon.dev>, <wsa+renesas@sang-engineering.com>,
	<romain.sioen@microchip.com>
CC: <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [PATCH v4 2/2] ARM: dts: Add support for pcb8385
Date: Mon, 1 Dec 2025 09:26:29 +0100
Message-ID: <20251201082629.2326339-3-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251201082629.2326339-1-horatiu.vultur@microchip.com>
References: <20251201082629.2326339-1-horatiu.vultur@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

Add basic support for pcb8385 [1]. It is a modular board which allows
to add different daughter cards on which there are different PHYs.
This adds support for UART, LEDs and I2C.

[1] https://www.microchip.com/en-us/development-tool/ev83e85a

Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
---
 arch/arm/boot/dts/microchip/Makefile          |   3 +-
 .../boot/dts/microchip/lan966x-pcb8385.dts    | 131 ++++++++++++++++++
 2 files changed, 133 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boot/dts/microchip/lan966x-pcb8385.dts

diff --git a/arch/arm/boot/dts/microchip/Makefile b/arch/arm/boot/dts/microchip/Makefile
index 79cd38fdc7dab..08986c24a4700 100644
--- a/arch/arm/boot/dts/microchip/Makefile
+++ b/arch/arm/boot/dts/microchip/Makefile
@@ -102,4 +102,5 @@ dtb-$(CONFIG_SOC_LAN966) += \
 	lan966x-kontron-kswitch-d10-mmt-8g.dtb \
 	lan966x-pcb8290.dtb \
 	lan966x-pcb8291.dtb \
-	lan966x-pcb8309.dtb
+	lan966x-pcb8309.dtb \
+	lan966x-pcb8385.dtb
diff --git a/arch/arm/boot/dts/microchip/lan966x-pcb8385.dts b/arch/arm/boot/dts/microchip/lan966x-pcb8385.dts
new file mode 100644
index 0000000000000..6bbe1222f9106
--- /dev/null
+++ b/arch/arm/boot/dts/microchip/lan966x-pcb8385.dts
@@ -0,0 +1,131 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * lan966x-pcb8385.dts - Device Tree file for PCB8385
+ */
+/dts-v1/;
+
+#include "lan966x.dtsi"
+#include "dt-bindings/phy/phy-lan966x-serdes.h"
+
+/ {
+	model = "Microchip EVB - LAN9668";
+	compatible = "microchip,lan9668-pcb8385", "microchip,lan9668", "microchip,lan966";
+
+	aliases {
+		serial0 = &usart3;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	gpio-restart {
+		compatible = "gpio-restart";
+		gpios = <&gpio 59 GPIO_ACTIVE_LOW>;
+		open-source;
+		priority = <200>;
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		led-p1-green {
+			label = "cu0:green";
+			gpios = <&sgpio_out 2 0 GPIO_ACTIVE_LOW>;
+			default-state = "off";
+		};
+
+		led-p1-yellow {
+			label = "cu0:yellow";
+			gpios = <&sgpio_out 2 1 GPIO_ACTIVE_LOW>;
+			default-state = "off";
+		};
+
+		led-p2-green {
+			label = "cu1:green";
+			gpios = <&sgpio_out 3 0 GPIO_ACTIVE_LOW>;
+			default-state = "off";
+		};
+
+		led-p2-yellow {
+			label = "cu1:yellow";
+			gpios = <&sgpio_out 3 1 GPIO_ACTIVE_LOW>;
+			default-state = "off";
+		};
+	};
+};
+
+&aes {
+	status = "disabled"; /* Reserved by secure OS */
+};
+
+&flx0 {
+	atmel,flexcom-mode = <ATMEL_FLEXCOM_MODE_TWI>;
+	status = "okay";
+};
+
+&flx3 {
+	atmel,flexcom-mode = <ATMEL_FLEXCOM_MODE_USART>;
+	status = "okay";
+};
+
+&gpio {
+	fc0_b_pins: fc0-b-pins {
+		/* SCL, SDA */
+		pins = "GPIO_25", "GPIO_26";
+		function = "fc0_b";
+	};
+
+	fc3_b_pins: fc3-b-pins {
+		/* RX, TX */
+		pins = "GPIO_52", "GPIO_53";
+		function = "fc3_b";
+	};
+
+	sgpio_a_pins: sgpio-a-pins {
+		/* SCK, D0, D1, LD */
+		pins = "GPIO_32", "GPIO_33", "GPIO_34", "GPIO_35";
+		function = "sgpio_a";
+	};
+};
+
+&i2c0 {
+	pinctrl-0 = <&fc0_b_pins>;
+	pinctrl-names = "default";
+	dmas = <0>, <0>;
+	i2c-analog-filter;
+	i2c-digital-filter;
+	i2c-digital-filter-width-ns = <35>;
+	i2c-sda-hold-time-ns = <1500>;
+	status = "okay";
+
+	eeprom@54 {
+		compatible = "atmel,24c01";
+		reg = <0x54>;
+	};
+
+	eeprom@55 {
+		compatible = "atmel,24c01";
+		reg = <0x55>;
+	};
+};
+
+&sgpio {
+	pinctrl-0 = <&sgpio_a_pins>;
+	pinctrl-names = "default";
+	microchip,sgpio-port-ranges = <0 3>;
+	status = "okay";
+
+	gpio@0 {
+		ngpios = <64>;
+	};
+	gpio@1 {
+		ngpios = <64>;
+	};
+};
+
+&usart3 {
+	pinctrl-0 = <&fc3_b_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+};
-- 
2.34.1


