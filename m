Return-Path: <devicetree+bounces-81575-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F0CE091CCA6
	for <lists+devicetree@lfdr.de>; Sat, 29 Jun 2024 14:17:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 98A792834F3
	for <lists+devicetree@lfdr.de>; Sat, 29 Jun 2024 12:17:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 150B74F218;
	Sat, 29 Jun 2024 12:17:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from trabant.uid0.hu (trabant.uid0.hu [81.0.124.200])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6326B41C67
	for <devicetree@vger.kernel.org>; Sat, 29 Jun 2024 12:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=81.0.124.200
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719663446; cv=none; b=gNS0qt14jKMDRXy/4Dsqpo71GQF7/y9X7q0qRu3W45+a82TSzVBf3bXFI9g+gqzm+Wm1uzHxPvVPnJFFOxnHBUEHAuEiBNz7E5NbwEb9h+X4S7pyMFpMifMI/lGRXO9A+x/8ha5b+30hFDvnzT+Ufl1iA+2hzgIOPij6M5iRSIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719663446; c=relaxed/simple;
	bh=RTDUNEkC45t1a0G/s4C0t19aZtj7GB6pj2nzaGsKJuY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=i4ZdxovkFzw+EOc5INqwYQqujqfqt790EPQYHCGN04+s3FZpTX/N/4UPguIJY7teeQn0iuCsR4PfdaNPcYHKuAijfjcLIXIKnnDMk7519eFawjn0px5aTFks+iP3JHmg8EScMmNCa/efxz+6v7SI0sA5weIl5LQiK1cGLJ0P2k8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=uid0.hu; spf=none smtp.mailfrom=trabant.uid0.hu; arc=none smtp.client-ip=81.0.124.200
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=uid0.hu
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=trabant.uid0.hu
Received: from wigyori by trabant.uid0.hu with local (Exim 4.92 #3 (Debian))
	id 1sNWMi-000XYs-4H
	from <wigyori@trabant.uid0.hu>; Sat, 29 Jun 2024 13:35:36 +0200
From: Zoltan HERPAI <wigyori@uid0.hu>
To: andrew@lunn.ch,
	gregory.clement@bootlin.com,
	sebastian.hesselbarth@gmail.com,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	wigyori@uid0.hu
Subject: [PATCH 3/3] ARM: dts: marvell: add support for D-Link DNS-320L
Date: Sat, 29 Jun 2024 13:34:50 +0200
Message-Id: <20240629113450.127561-3-wigyori@uid0.hu>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20240629113450.127561-1-wigyori@uid0.hu>
References: <20240629113450.127561-1-wigyori@uid0.hu>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: Zoltan HERPAI <wigyori@trabant.uid0.hu>

Dual-slot NAS based on Marvell Kirkwood.

Specifications:
 - Marvell 88F6702 @1GHz
 - 256Mb RAM
 - 128Mb NAND
 - 1x GbE LAN (Marvell 88E1318R)
 - 1x USB 2.0
 - 2x SATA
 - Weltrend WT69P3 ("supervisor" MCU chip)
 - Serial on J2 (115200,8n1)
 - Newer bootROM so kwboot-ing via serial is possible

Signed-off-by: Zoltan HERPAI <wigyori@uid0.hu>
---
 arch/arm/boot/dts/marvell/Makefile            |   1 +
 .../arm/boot/dts/marvell/kirkwood-dns320l.dts | 197 ++++++++++++++++++
 2 files changed, 198 insertions(+)
 create mode 100644 arch/arm/boot/dts/marvell/kirkwood-dns320l.dts

diff --git a/arch/arm/boot/dts/marvell/Makefile b/arch/arm/boot/dts/marvell/Makefile
index 1e0f5ff492f7..cadd4039b783 100644
--- a/arch/arm/boot/dts/marvell/Makefile
+++ b/arch/arm/boot/dts/marvell/Makefile
@@ -92,6 +92,7 @@ dtb-$(CONFIG_MACH_KIRKWOOD) += \
 	kirkwood-db-88f6282.dtb \
 	kirkwood-dir665.dtb \
 	kirkwood-dns320.dtb \
+	kirkwood-dns320l.dtb \
 	kirkwood-dns325.dtb \
 	kirkwood-dockstar.dtb \
 	kirkwood-dreamplug.dtb \
diff --git a/arch/arm/boot/dts/marvell/kirkwood-dns320l.dts b/arch/arm/boot/dts/marvell/kirkwood-dns320l.dts
new file mode 100644
index 000000000000..82a2d60376f7
--- /dev/null
+++ b/arch/arm/boot/dts/marvell/kirkwood-dns320l.dts
@@ -0,0 +1,197 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Device Tree file for D-Link DNS-320L
+ *
+ * Copyright (C) 2024, Zoltan HERPAI <wigyori@uid0.hu>
+ * Copyright (C) 2015, Sunke Schluters <sunke-dev@schlueters.de>
+ *
+ * This file is based on the works of:
+ * - Sunke Schluters <sunke-dev@schlueters.de>
+ *   - https://github.com/scus1/dns320l/blob/master/kernel/dts/kirkwood-dns320l.dts
+ * - Andreas Bohler <dev@aboehler.at>:
+ *   - http://www.aboehler.at/doku/doku.php/projects:dns320l
+ *   - http://www.aboehler.at/hg/linux-dns320l/file/ba7a60ad7687/linux-3.12/kirkwood-dns320l.dts
+ */
+
+/dts-v1/;
+
+#include "kirkwood.dtsi"
+#include "kirkwood-6281.dtsi"
+
+/ {
+	model = "D-Link DNS-320L";
+	compatible = "dlink,dns320l", "marvell,kirkwood-88f6702", "marvell,kirkwood";
+
+	memory {
+		device_type = "memory";
+		reg = <0x00000000 0x10000000>;
+	};
+
+	chosen {
+		bootargs = "console=ttyS0,115200n8 earlyprintk";
+		stdout-path = &uart0;
+	};
+
+	gpio-keys {
+		compatible = "gpio-keys";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		pinctrl-0 = <&pmx_buttons>;
+		pinctrl-names = "default";
+
+		button@1 {
+			label = "Reset push button";
+			linux,code = <KEY_RESTART>;
+			gpios = <&gpio0 28 1>;
+		};
+
+		button@2 {
+			label = "USB unmount button";
+			linux,code = <KEY_EJECTCD>;
+			gpios = <&gpio0 27 1>;
+		};
+	};
+
+	gpio-leds {
+		compatible = "gpio-leds";
+		pinctrl-0 = <&pmx_leds>;
+		pinctrl-names = "default";
+
+		blue-usb {
+			label = "dns320l:usb:blue";
+			gpios = <&gpio0 25 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "usbport";
+		};
+
+		orange-usb {
+			label = "dns320l:usb:orange";
+			gpios = <&gpio0 26 GPIO_ACTIVE_HIGH>;
+		};
+
+		orange-l-hdd {
+			label = "dns320l:orange:l_hdd";
+			gpios = <&gpio0 23 GPIO_ACTIVE_HIGH>;
+		};
+
+		orange-r-hdd {
+			label = "dns320l:orange:r_hdd";
+			gpios = <&gpio0 22 GPIO_ACTIVE_HIGH>;
+		};
+	};
+
+	ocp@f1000000 {
+		sata@80000 {
+			status = "okay";
+			nr-ports = <2>;
+		};
+
+		serial@12000 {
+			status = "okay";
+		};
+
+		serial@12100 {
+			pinctrl-0 = <&pmx_uart1>;
+			pinctrl-names = "default";
+			status = "okay";
+		};
+	};
+
+	regulators {
+		compatible = "simple-bus";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		pinctrl-0 = <&pmx_power_sata>;
+		pinctrl-names = "default";
+
+		sata_power: regulator@1 {
+			compatible = "regulator-fixed";
+			reg = <1>;
+			regulator-name = "SATA Power";
+			regulator-min-microvolt = <5000000>;
+			regulator-max-microvolt = <5000000>;
+			enable-active-high;
+			regulator-always-on;
+			regulator-boot-on;
+			gpio = <&gpio0 24 0>;
+		};
+	};
+};
+
+&nand {
+	pinctrl-0 = <&pmx_nand>;
+	pinctrl-names = "default";
+	chip-delay = <40>;
+	status = "okay";
+
+	partition@0 {
+		label = "u-boot";
+		reg = <0x0000000 0x100000>;
+	};
+
+	partition@100000 {
+		label = "ubootenv";
+		reg = <0x100000 0x20000>;
+	};
+
+	partition@120000 {
+		label = "ubi";
+		reg = <0x120000 0x6de0000>;
+	};
+
+	partition@6f00000 {
+		label = "mini firmware";
+		reg = <0x6f00000 0xa00000>;
+	};
+
+	partition@7900000 {
+		label = "config";
+		reg = <0x7900000 0x500000>;
+	};
+
+	partition@7e00000 {
+		label = "my-dlink";
+		reg = <0x7e00000 0x200000>;
+	};
+};
+
+&mdio {
+	status = "okay";
+
+	ethphy0: ethernet-phy@0 {
+		reg = <0>;
+	};
+};
+
+&pinctrl {
+	pmx_sata1: pmx-sata1 {
+		marvell,pins = "mpp20";
+		marvell,function = "sata1";
+	};
+
+	pmx_sata0: pmx-sata0 {
+		marvell,pins = "mpp21";
+		marvell,function = "sata0";
+	};
+
+	pmx_power_sata: pmx-power-sata {
+		marvell,pins = "mpp24";
+		marvell,function = "gpio";
+	};
+
+	pmx_leds: pmx-leds {
+		marvell,pins = "mpp22", "mpp23", "mpp25", "mpp26";
+		marvell,function = "gpio";
+	};
+
+	pmx_buttons: pmx-buttons {
+		marvell,pins = "mpp27", "mpp28", "mpp29";
+		marvell,function = "gpio";
+	};
+};
+
+&eth0 {
+	status = "okay";
+	ethernet0-port@0 {
+		phy-handle = <&ethphy0>;
+	};
+};
-- 
2.30.2


