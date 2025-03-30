Return-Path: <devicetree+bounces-161829-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F848A75A88
	for <lists+devicetree@lfdr.de>; Sun, 30 Mar 2025 17:14:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E377E1885C08
	for <lists+devicetree@lfdr.de>; Sun, 30 Mar 2025 15:14:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C3CB1D5CF8;
	Sun, 30 Mar 2025 15:14:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kemnade.info header.i=@kemnade.info header.b="gIFg83vV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.andi.de1.cc (mail.andi.de1.cc [178.238.236.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC09B282F1;
	Sun, 30 Mar 2025 15:14:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.238.236.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743347661; cv=none; b=oAc7qAIWIltSM3Deui7pbZC8hWc0K93mjf6/o9avsaMpDqPjlM0FQVLZurdANhVAiemJo9f6JokZTPtoCaBNhwSgSHYAMioepXWvMHx9ceKH2VdG6UM54Gg14ZwlLSiZvP+F/bz4zpbGYVHRD9JyKraVUegoozVLK7TpNiAZiMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743347661; c=relaxed/simple;
	bh=gtpTeJAyVh2tCHrxmM65BdmvIiaLR2bSwUXFso9IaBo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=e9fgyIeNAKLnAVRSUekhP0HEtEwf0HZLmkUAQG/47rOvzYY8u7s6uKUzytpIqmNQ2P3rowuSfZcjpH0sBsT5l4pOXd4qG0+b6xIr42dS34fRPsHkp3iJDZD5LO5ZA4jSReXKHG9fF05fgN0iV4VWVesE8JamASldiP4MaXATupc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kemnade.info; spf=pass smtp.mailfrom=kemnade.info; dkim=pass (2048-bit key) header.d=kemnade.info header.i=@kemnade.info header.b=gIFg83vV; arc=none smtp.client-ip=178.238.236.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kemnade.info
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=kemnade.info
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=kemnade.info; s=20220719; h=References:In-Reply-To:Cc:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=qxTT7T9dmsRD0amhjvl2ly2uQgh016it59V6DZc0Zz4=; b=gIFg83vV6qXVU6y5e6BJsAB3g4
	eLt0botegGaW/dy09nlj5RNkIXE8CoO9tqbkqCHCdg2oTpbO0pxPW0P5sRty47VDdmiDZdb6RIA2l
	me8OCX3P9TmQqqUaaj8BNvQ03u6NBJAd9FjSNvj655bxFT8iEn02WeaAuB2u9etKKQyttaSIpMIMS
	5aabbvnHS7by3fgOptb3a8+M7FVbPtml+GLD259+Vc2NcMPU37VmM/YL+obMHj02meD0hMo8onjUv
	Br8+rm6P4Qz2MNkUfiQ9Ui/8lB3BaESaD5A/ycjTbTUch/MDiIEYxCtjrWEHEGjMUsI+h8LaKs1I1
	FyZWghWA==;
From: Andreas Kemnade <andreas@kemnade.info>
To: Rob Herring <robh@kernel.org>,
	Kevin Hilman <khilman@baylibre.com>,
	linux-omap@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>,
	Roger Quadros <rogerq@kernel.org>,
	linux-kernel@vger.kernel.org,
	Aaro Koskinen <aaro.koskinen@iki.fi>,
	devicetree@vger.kernel.org,
	Tony Lindgren <tony@atomide.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Andreas Kemnade <andreas@kemnade.info>
Subject: [PATCH v2 2/2] ARM: dts: omap4: panda: cleanup bluetooth
Date: Sun, 30 Mar 2025 17:14:01 +0200
Message-Id: <20250330151401.444956-3-andreas@kemnade.info>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250330151401.444956-1-andreas@kemnade.info>
References: <20250330151401.444956-1-andreas@kemnade.info>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Bluetooth is available on the other Panda board versions, too, so move
stuff to common and specify the needed clock properly.

Signed-off-by: Andreas Kemnade <andreas@kemnade.info>
---
 .../boot/dts/ti/omap/omap4-panda-common.dtsi  | 31 ++++++++++++++++--
 arch/arm/boot/dts/ti/omap/omap4-panda-es.dts  | 32 -------------------
 2 files changed, 28 insertions(+), 35 deletions(-)

diff --git a/arch/arm/boot/dts/ti/omap/omap4-panda-common.dtsi b/arch/arm/boot/dts/ti/omap/omap4-panda-common.dtsi
index c860b590142a..05c871d31d7b 100644
--- a/arch/arm/boot/dts/ti/omap/omap4-panda-common.dtsi
+++ b/arch/arm/boot/dts/ti/omap/omap4-panda-common.dtsi
@@ -367,10 +367,8 @@ OMAP4_IOPAD(0x130, PIN_INPUT_PULLUP | MUX_MODE0)	/* i2c4_sda */
 	 */
 	wl12xx_gpio: wl12xx-gpio-pins {
 		pinctrl-single,pins = <
-			OMAP4_IOPAD(0x066, PIN_OUTPUT | MUX_MODE3)		/* gpmc_a19.gpio_43 */
-			OMAP4_IOPAD(0x06c, PIN_OUTPUT | MUX_MODE3)		/* gpmc_a22.gpio_46 */
+			OMAP4_IOPAD(0x066, PIN_OUTPUT | MUX_MODE3)		/* gpmc_a19.gpio_43 - WLAN_EN */
 			OMAP4_IOPAD(0x070, PIN_OUTPUT_PULLUP | MUX_MODE3)	/* gpmc_a24.gpio_48 */
-			OMAP4_IOPAD(0x072, PIN_OUTPUT_PULLUP | MUX_MODE3)	/* gpmc_a25.gpio_49 */
 		>;
 	};
 
@@ -393,6 +391,22 @@ button_pins: button-pins {
 			OMAP4_IOPAD(0x114, PIN_INPUT_PULLUP | MUX_MODE3)	/* gpio_121 */
 		>;
 	};
+
+	bt_pins: bt-pins {
+		pinctrl-single,pins = <
+			OMAP4_IOPAD(0x06c, PIN_OUTPUT | MUX_MODE3)	  /* gpmc_a22.gpio_46 - BTEN */
+			OMAP4_IOPAD(0x072, PIN_OUTPUT_PULLUP | MUX_MODE3) /* gpmc_a25.gpio_49 - BTWAKEUP */
+		>;
+	};
+
+	uart2_pins: uart2-pins {
+		pinctrl-single,pins = <
+			OMAP4_IOPAD(0x118, PIN_INPUT_PULLUP | MUX_MODE0)  /* uart2_cts.uart2_cts - HCI */
+			OMAP4_IOPAD(0x11a, PIN_OUTPUT | MUX_MODE0)	  /* uart2_rts.uart2_rts */
+			OMAP4_IOPAD(0x11c, PIN_INPUT_PULLUP | MUX_MODE0)  /* uart2_rx.uart2_rx */
+			OMAP4_IOPAD(0x11e, PIN_OUTPUT | MUX_MODE0)	  /* uart2_tx.uart2_tx */
+		>;
+	};
 };
 
 &omap4_pmx_wkup {
@@ -531,8 +545,19 @@ &twl_usb_comparator {
 };
 
 &uart2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart2_pins>;
 	interrupts-extended = <&wakeupgen GIC_SPI 73 IRQ_TYPE_LEVEL_HIGH
 			       &omap4_pmx_core OMAP4_UART2_RX>;
+
+	bluetooth {
+		compatible = "ti,wl1271-st";
+		pinctrl-names = "default";
+		pinctrl-0 = <&bt_pins>;
+		enable-gpios = <&gpio2 14 GPIO_ACTIVE_HIGH>;	/* GPIO_46 */
+		clocks = <&twl 0>;
+		clock-names = "ext_clock";
+	};
 };
 
 &uart3 {
diff --git a/arch/arm/boot/dts/ti/omap/omap4-panda-es.dts b/arch/arm/boot/dts/ti/omap/omap4-panda-es.dts
index fe7b156d10ed..a933fe560834 100644
--- a/arch/arm/boot/dts/ti/omap/omap4-panda-es.dts
+++ b/arch/arm/boot/dts/ti/omap/omap4-panda-es.dts
@@ -49,22 +49,6 @@ button_pins: button-pins {
 			OMAP4_IOPAD(0x0fc, PIN_INPUT_PULLUP | MUX_MODE3) /* gpio_113 */
 		>;
 	};
-
-	bt_pins: bt-pins {
-		pinctrl-single,pins = <
-			OMAP4_IOPAD(0x06c, PIN_OUTPUT | MUX_MODE3)		/* gpmc_a22.gpio_46 - BTEN */
-			OMAP4_IOPAD(0x072, PIN_OUTPUT_PULLUP | MUX_MODE3)	/* gpmc_a25.gpio_49 - BTWAKEUP */
-		>;
-	};
-
-	uart2_pins: uart2-pins {
-		pinctrl-single,pins = <
-			OMAP4_IOPAD(0x118, PIN_INPUT_PULLUP | MUX_MODE0)	/* uart2_cts.uart2_cts - HCI */
-			OMAP4_IOPAD(0x11a, PIN_OUTPUT | MUX_MODE0)		/* uart2_rts.uart2_rts */
-			OMAP4_IOPAD(0x11c, PIN_INPUT_PULLUP | MUX_MODE0)	/* uart2_rx.uart2_rx */
-			OMAP4_IOPAD(0x11e, PIN_OUTPUT | MUX_MODE0)		/* uart2_tx.uart2_tx */
-		>;
-	};
 };
 
 &led_wkgpio_pins {
@@ -96,19 +80,3 @@ buttonS2 {
 &gpio1_target {
 	 ti,no-reset-on-init;
 };
-
-&wl12xx_gpio {
-	pinctrl-single,pins = <
-		OMAP4_IOPAD(0x066, PIN_OUTPUT | MUX_MODE3)		/* gpmc_a19.gpio_43 */
-		OMAP4_IOPAD(0x070, PIN_OUTPUT_PULLUP | MUX_MODE3)	/* gpmc_a24.gpio_48 */
-	>;
-};
-
-&uart2 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&uart2_pins &bt_pins>;
-	bluetooth: tiwi {
-		compatible = "ti,wl1271-st";
-		enable-gpios = <&gpio2 14 GPIO_ACTIVE_HIGH>;	/* GPIO_46 */
-	};
-};
-- 
2.39.5


