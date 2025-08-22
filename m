Return-Path: <devicetree+bounces-208357-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DC3CCB321D5
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 19:56:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 148E8AC4FF1
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 17:56:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB400298CAB;
	Fri, 22 Aug 2025 17:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="L1M/lka7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B87EA298991
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 17:56:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755885383; cv=none; b=WeXOWm6bJMSzc/eeH9aGniCWVxjODqFoK7miGjiDt+Pz+pVyzkqxfRJlnX80SyDIOHkdcdewXyBqrD3GObai5MJMI/G32vFH3FJveJcwSsQ5u9mwSgOYpcZPhdnn0bxnhGppBgVw85+6PXkIFkB6wC/GOiBB/2oSBtMJ0cBvfNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755885383; c=relaxed/simple;
	bh=cpA9oOaaUP4XjY4cHxSr/9TfLcp9Z4+o7bqBwbCS0uI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=PP+BqTa/XsyTX4DRthKyI93oD1rw2p1D45I/1Vp8vrLGFsx+nL0jUIbx2EJ9NqwZwcr1Ow79Y4uOH+Ky09HZMZuwtsd9EVTfJk2AWaaCWEm8L2MwJRkSWal3AE8dzCi4mfWlO1D113le/nKHIdjvUOI1/0vHgHrQSYHDa0ezpkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=L1M/lka7; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-333f8f0dd71so18733931fa.1
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 10:56:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755885380; x=1756490180; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HBQf3BSWaYdmOMzVughu0pHqvB6sLYCexnZqM0Rj8Sk=;
        b=L1M/lka7feySQqoAc5/5VT+A2KrjbLXE0MVu3QSoPz6s/EkJZ2iKpm0oiYKVT2MM5W
         G9tLP9+P0eZvRDk7yp5MLJkh2ur3L4yxFvN1Dr6tiA7zcFcpWb2C6lmuh4x00euH+6GP
         WHBm1b7Ar43+BU2ZdG0JPC1ywDgteLMSZNdE1Wjty13BtLOWjwjMsMmH1kWZTTsCTgxq
         8RXeJlO8UJExqXdA4C5EVa80v7oVfrJ0L74ns5QmDEd7et4quOsCchWkpsUElyFG2Lpg
         csjGLQU1dr5GWlqSG7a7MTaaNvnCbKqTHcJhR2joPhU5yh9dI/kIjxm1mnY0/v35KnUs
         nKRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755885380; x=1756490180;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HBQf3BSWaYdmOMzVughu0pHqvB6sLYCexnZqM0Rj8Sk=;
        b=FleKrtYssZN9x7ofrwMpA0yngaC4e3yircn4HCJzCzbicty87KhSD+4rRyIdLASwWJ
         d5AIEqoFGC9y7e3RprtLHzJR4kcdAHeTQGZSaqs8VPSh0R3WBd9I9O66t2zAYcfwoeGj
         vBSLu2FYXxtpgY77eJ9KbBf4p2RnvEGpiXM0a/eDoS47m1YMznYZTsPu0rNT1WXR4vpK
         qpmhguJg+EiCcnHqzjZ9Uy9BFZw3cdUDUzI9UpBFkuuPafjyC8HomgDbTxJvTzOGtvRJ
         4boec3itaiyqgst/uwJSyiIdxIYTZR9Vcll2/rogM3m1OGLjvgJTbrgct/d1SZOwnd8h
         jVdA==
X-Gm-Message-State: AOJu0Yw+zka9/fokeqO/Kpnk1QiCWVI5OlWf55bxKrv3onSyZ9+HpfKD
	tQ1NoGoiP5GdPlm7Ea+pYCbJcfJ2jm5Fwasv9zhmtmh774wxOUjtse2OnyDsDFoq0iU=
X-Gm-Gg: ASbGncsY1AVU0kXVh4YgRbAZOjjfSZMFbvy/iayoBNHwI9+gFjaVr7WlYkDWP9vLbEH
	ZlKKUQw9wK08sBTeADAHgWWnxQi0En0wECUcpcIsluhEBQxKpxUgZZGJw4Bz92dN68eAZQwX6xi
	FJ9eAVbi3abM3L20knVsFaRb8+s4AQhaHPLjZD3BO5V3WcF4U1Efyna6Mk8+qfQkUYKU4ShYfzA
	r3WsLQ7H5Ijm4vYpipz7Nki02kAnKiY5yrtngP0eK4afqUIHXyGXKBiNOGUE9KXyX3zw6nYE2Iu
	odQEt0PVtmNJKVOXpq3rRt2AQA26lHLttbZE6vujnBVYgdsnBkyVY2biwkb+BfwgPrIWdgMxvni
	/98RZe1zfvknM76Sb8psy2tZGyV+TNyzmvt/kPc6FmzM=
X-Google-Smtp-Source: AGHT+IEnkDZI2+I3s6Jq42rU03lqIJS6l0gXs6ltDJpTCW6GO8sbaw1UPZiYKNGG114V7bPnboAdHQ==
X-Received: by 2002:a05:651c:1109:10b0:332:1de5:c513 with SMTP id 38308e7fff4ca-33650e380ddmr7713791fa.4.1755885379760;
        Fri, 22 Aug 2025 10:56:19 -0700 (PDT)
Received: from [192.168.1.140] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3365e20d2e1sm605121fa.1.2025.08.22.10.56.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 10:56:18 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 22 Aug 2025 19:56:16 +0200
Subject: [PATCH v2 3/3] ARM: dts: Add ixp4xx Actiontec MI424WR device trees
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250822-ixp4xx-mi424wr-dts-v2-3-cc804884474d@linaro.org>
References: <20250822-ixp4xx-mi424wr-dts-v2-0-cc804884474d@linaro.org>
In-Reply-To: <20250822-ixp4xx-mi424wr-dts-v2-0-cc804884474d@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Linus Walleij <linusw@kernel.org>, 
 Imre Kaloz <kaloz@openwrt.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.14.2

The Actiontex MI424WR is a pretty widespread home router, made
in many different revisions.

Revisions A, C and D are based on IXP42x. We add a device tree
for the A/C variant and one for the D variant as these differ in
the location of the WAN PHY on the MDIO bus, and the ethernet
interfaces for the WAN PHY and the DSA switch are switched around.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm/boot/dts/intel/ixp/Makefile               |   2 +
 .../ixp/intel-ixp42x-actiontec-mi424wr-ac.dts      |  37 +++
 .../intel/ixp/intel-ixp42x-actiontec-mi424wr-d.dts |  38 +++
 .../intel/ixp/intel-ixp42x-actiontec-mi424wr.dtsi  | 272 +++++++++++++++++++++
 4 files changed, 349 insertions(+)

diff --git a/arch/arm/boot/dts/intel/ixp/Makefile b/arch/arm/boot/dts/intel/ixp/Makefile
index ab8525f1ea1d25abe72fca4dd323d97e2d3c5bb4..cb30d8d55016fbe00848242d9d1a017f7e48c6db 100644
--- a/arch/arm/boot/dts/intel/ixp/Makefile
+++ b/arch/arm/boot/dts/intel/ixp/Makefile
@@ -1,5 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0
 dtb-$(CONFIG_ARCH_IXP4XX) += \
+	intel-ixp42x-actiontec-mi424wr-ac.dtb \
+	intel-ixp42x-actiontec-mi424wr-d.dtb \
 	intel-ixp42x-linksys-nslu2.dtb \
 	intel-ixp42x-linksys-wrv54g.dtb \
 	intel-ixp42x-freecom-fsg-3.dtb \
diff --git a/arch/arm/boot/dts/intel/ixp/intel-ixp42x-actiontec-mi424wr-ac.dts b/arch/arm/boot/dts/intel/ixp/intel-ixp42x-actiontec-mi424wr-ac.dts
new file mode 100644
index 0000000000000000000000000000000000000000..413b9255f9e3cf24fd1dde6a300a8295e3fdee0f
--- /dev/null
+++ b/arch/arm/boot/dts/intel/ixp/intel-ixp42x-actiontec-mi424wr-ac.dts
@@ -0,0 +1,37 @@
+// SPDX-License-Identifier: ISC
+/*
+ * Device Tree file for the IXP425-based Actiontec MI424WR revision A and C
+ * Based on a board file from OpenWrt by Jose Vasconcellos.
+ */
+
+/dts-v1/;
+
+#include "intel-ixp42x-actiontec-mi424wr.dtsi"
+
+/ {
+	model = "Actiontec MI424WR rev A/C";
+	compatible = "actiontec,mi424wr-ac", "intel,ixp42x";
+
+	soc {
+		/* EthB used for WAN */
+		ethernet@c8009000 {
+			phy-handle = <&phy17>; // 17 on revision A-C
+
+			mdio {
+				phy17: ethernet-phy@17 {
+					/* WAN */
+					reg = <17>;
+				};
+			};
+		};
+
+		/* EthC used for LAN */
+		ethernet@c800a000 {
+			/* Fixed link to the CPU MII port on the KS8995 */
+			fixed-link {
+				speed = <100>;
+				full-duplex;
+			};
+		};
+	};
+};
diff --git a/arch/arm/boot/dts/intel/ixp/intel-ixp42x-actiontec-mi424wr-d.dts b/arch/arm/boot/dts/intel/ixp/intel-ixp42x-actiontec-mi424wr-d.dts
new file mode 100644
index 0000000000000000000000000000000000000000..3619c6411a5c04b78d32aac5f2fc0c42a99e7acd
--- /dev/null
+++ b/arch/arm/boot/dts/intel/ixp/intel-ixp42x-actiontec-mi424wr-d.dts
@@ -0,0 +1,38 @@
+// SPDX-License-Identifier: ISC
+/*
+ * Device Tree file for the IXP425-based Actiontec MI424WR revision D
+ * Based on a board file from OpenWrt by Jose Vasconcellos.
+ */
+
+/dts-v1/;
+
+#include "intel-ixp42x-actiontec-mi424wr.dtsi"
+
+/ {
+	model = "Actiontec MI424WR rev D";
+	compatible = "actiontec,mi424wr-d", "intel,ixp42x";
+
+	soc {
+		/* EthB used for LAN */
+		ethernet@c8009000 {
+			/* Fixed link to the CPU MII port on the KS8995 */
+			fixed-link {
+				speed = <100>;
+				full-duplex;
+			};
+
+			mdio {
+				/* PHY ID 0x00221450 */
+				phy5: ethernet-phy@5 {
+					/* WAN */
+					reg = <5>;
+				};
+			};
+		};
+
+		/* EthC used for WAN */
+		ethernet@c800a000 {
+			phy-handle = <&phy5>; // 5 on revision D
+		};
+	};
+};
diff --git a/arch/arm/boot/dts/intel/ixp/intel-ixp42x-actiontec-mi424wr.dtsi b/arch/arm/boot/dts/intel/ixp/intel-ixp42x-actiontec-mi424wr.dtsi
new file mode 100644
index 0000000000000000000000000000000000000000..76fd97c5beb69d4cd682392a7e659590cb331be4
--- /dev/null
+++ b/arch/arm/boot/dts/intel/ixp/intel-ixp42x-actiontec-mi424wr.dtsi
@@ -0,0 +1,272 @@
+// SPDX-License-Identifier: ISC
+/*
+ * Device Tree file for the IXP425-based Actiontec MI424WR
+ * Based on a board file from OpenWrt by Jose Vasconcellos.
+ */
+
+#include "intel-ixp42x.dtsi"
+#include <dt-bindings/input/input.h>
+#include <dt-bindings/leds/common.h>
+
+/ {
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	memory@0 {
+		device_type = "memory";
+		reg = <0x00000000 0x02000000>;
+	};
+
+	chosen {
+		bootargs = "console=ttyS0,115200n8";
+		stdout-path = "uart1:115200n8";
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		led-wan-coax {
+			color = <LED_COLOR_ID_GREEN>;
+			function = "wan-coax";
+			gpios = <&gpio0 11 GPIO_ACTIVE_HIGH>;
+			default-state = "off";
+		};
+		led-power-alarm {
+			color = <LED_COLOR_ID_RED>;
+			function = LED_FUNCTION_ALARM;
+			gpios = <&gpio1 0 GPIO_ACTIVE_HIGH>;
+			default-state = "off";
+		};
+		led-power {
+			color = <LED_COLOR_ID_GREEN>;
+			function = LED_FUNCTION_POWER;
+			gpios = <&gpio1 1 GPIO_ACTIVE_HIGH>;
+			default-state = "on";
+			linux,default-trigger = "heartbeat";
+		};
+		led-wireless {
+			color = <LED_COLOR_ID_GREEN>;
+			function = LED_FUNCTION_WLAN;
+			gpios = <&gpio1 2 GPIO_ACTIVE_LOW>;
+			default-state = "off";
+		};
+		led-internet-down {
+			color = <LED_COLOR_ID_RED>;
+			function = "internet-down";
+			gpios = <&gpio1 3 GPIO_ACTIVE_HIGH>;
+			default-state = "off";
+		};
+		led-internet-up {
+			color = <LED_COLOR_ID_GREEN>;
+			function = "internet-up";
+			gpios = <&gpio1 4 GPIO_ACTIVE_HIGH>;
+			default-state = "off";
+		};
+		led-lan-coax {
+			color = <LED_COLOR_ID_GREEN>;
+			function = "lan-coax";
+			gpios = <&gpio1 5 GPIO_ACTIVE_HIGH>;
+			default-state = "off";
+		};
+		led-wan-ethernet-alarm {
+			color = <LED_COLOR_ID_RED>;
+			function = "wan-ethernet-alarm";
+			gpios = <&gpio1 6 GPIO_ACTIVE_HIGH>;
+			default-state = "off";
+		};
+		/* The last three LEDs are not mounted but traces exist on the PCB */
+		led-phone-1 {
+			color = <LED_COLOR_ID_GREEN>;
+			function = "phone-1";
+			gpios = <&gpio1 8 GPIO_ACTIVE_LOW>;
+			default-state = "off";
+		};
+		led-phone-2 {
+			color = <LED_COLOR_ID_GREEN>;
+			function = "phone-2";
+			gpios = <&gpio1 9 GPIO_ACTIVE_LOW>;
+			default-state = "off";
+		};
+		led-voip {
+			color = <LED_COLOR_ID_GREEN>;
+			function = "voip";
+			gpios = <&gpio1 10 GPIO_ACTIVE_LOW>;
+			default-state = "off";
+		};
+	};
+
+	gpio_keys {
+		compatible = "gpio-keys";
+
+		button-reset {
+			wakeup-source;
+			linux,code = <KEY_RESTART>;
+			label = "reset";
+			gpios = <&gpio0 10 GPIO_ACTIVE_LOW>;
+		};
+	};
+
+	spi {
+		compatible = "spi-gpio";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		sck-gpios = <&gpio0 2 GPIO_ACTIVE_HIGH>;
+		mosi-gpios = <&gpio0 4 GPIO_ACTIVE_HIGH>;
+		miso-gpios = <&gpio0 3 GPIO_ACTIVE_HIGH>;
+		cs-gpios = <&gpio0 9 GPIO_ACTIVE_LOW>;
+		num-chipselects = <1>;
+
+		ethernet-switch@0 {
+			compatible = "micrel,ks8995";
+			reg = <0>;
+			spi-max-frequency = <50000000>;
+
+			ethernet-ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				ethernet-port@0 {
+					reg = <0>;
+					label = "lan1";
+					phy-mode = "mii";
+					phy-handle = <&phy1>;
+				};
+				ethernet-port@1 {
+					reg = <1>;
+					label = "lan2";
+					phy-mode = "mii";
+					phy-handle = <&phy2>;
+				};
+				ethernet-port@2 {
+					reg = <2>;
+					label = "lan3";
+					phy-mode = "mii";
+					phy-handle = <&phy3>;
+				};
+				ethernet-port@3 {
+					reg = <3>;
+					label = "lan4";
+					phy-mode = "mii";
+					phy-handle = <&phy4>;
+				};
+				ethernet-port@4 {
+					reg = <4>;
+					ethernet = <&ethc>;
+					phy-mode = "mii";
+					fixed-link {
+						speed = <100>;
+						full-duplex;
+					};
+				};
+
+			};
+		};
+	};
+
+	soc {
+		bus@c4000000 {
+			flash@0,0 {
+				compatible = "intel,ixp4xx-flash", "cfi-flash";
+				bank-width = <2>;
+				/*
+				 * 8 MB of Flash in 64 0x20000 sized blocks
+				 * mapped in at CS0.
+				 */
+				reg = <0 0x00000000 0x0800000>;
+
+				/* Configure expansion bus to allow writes */
+				intel,ixp4xx-eb-write-enable = <1>;
+
+				partitions {
+					compatible = "redboot-fis";
+					fis-index-block = <0x3f>;
+				};
+			};
+			gpio1: gpio@1,0 {
+				/* MMIO GPIO at CS1 */
+				compatible = "intel,ixp4xx-expansion-bus-mmio-gpio";
+				gpio-controller;
+				#gpio-cells = <2>;
+				big-endian;
+				reg = <1 0x00000000 0x2>;
+				reg-names = "dat";
+				/* Expansion bus settings */
+				intel,ixp4xx-eb-write-enable = <1>;
+
+				pci-reset-hog {
+					gpio-hog;
+					gpios = <7 GPIO_ACTIVE_HIGH>;
+					output-high;
+					line-name = "PCI reset";
+				};
+				pstn-relay-hog-1 {
+					gpio-hog;
+					gpios = <11 GPIO_ACTIVE_HIGH>;
+					output-low;
+					line-name = "PSTN relay control 1";
+				};
+				pstn-relay-hog-2 {
+					gpio-hog;
+					gpios = <12 GPIO_ACTIVE_HIGH>;
+					output-low;
+					line-name = "PSTN relay control 2";
+				};
+			};
+		};
+
+		pci@c0000000 {
+			status = "okay";
+
+			#interrupt-cells = <1>;
+			interrupt-map-mask = <0xf800 0 0 7>;
+			interrupt-map =
+			/* IDSEL 13 */
+			<0x6800 0 0 1 &gpio0 8 IRQ_TYPE_LEVEL_LOW>, /* INT A on slot 13 is irq 8 */
+			<0x6800 0 0 2 &gpio0 6 IRQ_TYPE_LEVEL_LOW>, /* INT B on slot 13 is irq 6 */
+			/* IDSEL 14 */
+			<0x7000 0 0 1 &gpio0 8 IRQ_TYPE_LEVEL_LOW>, /* INT A on slot 14 is irq 7 */
+			<0x7000 0 0 2 &gpio0 6 IRQ_TYPE_LEVEL_LOW>, /* INT B on slot 14 is irq 8 */
+			/* IDSEL 15 */
+			<0x7800 0 0 1 &gpio0 8 IRQ_TYPE_LEVEL_LOW>, /* INT A on slot 15 is irq 6 */
+			<0x7800 0 0 2 &gpio0 6 IRQ_TYPE_LEVEL_LOW>; /* INT B on slot 15 is irq 7 */
+		};
+
+		ethb: ethernet@c8009000 {
+			status = "okay";
+			queue-rx = <&qmgr 3>;
+			queue-txready = <&qmgr 20>;
+			phy-mode = "mii";
+
+			mdio {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				/* 1, 2, 3 and 4 are ports on the KS8995 switch */
+				phy1: ethernet-phy@1 {
+					/* LAN1 */
+					reg = <1>;
+				};
+				phy2: ethernet-phy@2 {
+					/* LAN2 */
+					reg = <2>;
+				};
+				phy3: ethernet-phy@3 {
+					/* LAN3 */
+					reg = <3>;
+				};
+				phy4: ethernet-phy@4 {
+					/* LAN4 */
+					reg = <4>;
+				};
+			};
+		};
+
+		ethc: ethernet@c800a000 {
+			status = "okay";
+			queue-rx = <&qmgr 4>;
+			queue-txready = <&qmgr 21>;
+			phy-mode = "mii";
+		};
+	};
+};

-- 
2.50.1


