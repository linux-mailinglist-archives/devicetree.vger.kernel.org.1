Return-Path: <devicetree+bounces-307722-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id EX1rF2lzJGry6gEAu9opvQ
	(envelope-from <devicetree+bounces-307722-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 06 Jun 2026 21:22:17 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A752E64E1F2
	for <lists+devicetree@lfdr.de>; Sat, 06 Jun 2026 21:22:16 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=netcube.li header.s=s1 header.b=mcuVUmVF;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307722-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-307722-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=netcube.li;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CAA41301E3DE
	for <lists+devicetree@lfdr.de>; Sat,  6 Jun 2026 19:17:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E1233BB12E;
	Sat,  6 Jun 2026 19:17:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.netcube.li (mail.netcube.li [173.249.15.149])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8082E3B18A;
	Sat,  6 Jun 2026 19:17:44 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780773466; cv=none; b=ApCkiIdM38m7VJJ+YshtYBImuFwOLhWeG9u8XB3j/3kqov1Q/PF+yR1p4yKKmTbdsGXekv7ZIDr72j17tTSqLxZgkUN7g3OtHXJ4tN9+JYdhRZgJ3r1zJAjN6Ex+zjzgGJK5umnRcMnekBfwalVVMhWTzgXiLp4TD/EHXZfdb8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780773466; c=relaxed/simple;
	bh=1CwDfWv7a0O11A5Q5Lc7EFxGOFJYxTyi9xGjkhMfFCs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=fSrG0ogxcUCdJ56iOrkLcCZKBNQxhs09gBerOv8OdL6T8Gx16IsafWjlN/iTSHLg289fCKkq9NeX7PSh5xbrn6uQguRoKns8WTbMF7Don5/VO1xz8SGiRSgAMquzBcSci0K0DBMCrQFy15ndDYA+IZIm5Dlq91e9QR6mSesW1oU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=netcube.li; spf=pass smtp.mailfrom=netcube.li; dkim=pass (1024-bit key) header.d=netcube.li header.i=@netcube.li header.b=mcuVUmVF; arc=none smtp.client-ip=173.249.15.149
dkim-signature: v=1; a=rsa-sha256; d=netcube.li; s=s1;
	c=relaxed/relaxed; q=dns/txt; h=From:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Transfer-Encoding:In-Reply-To:References;
	bh=ffnXUd5LBhLAi8JREDtR4sxemQe4e7mHjc/Pb44ejsU=;
	b=mcuVUmVFeZzEnQXfAVAhzvp+Lz/3htFarmZ6wAHsZJwdXdIvKmqlry3WKqfKVU1suy2cww1roC89Dq1eWXKvEjZdfzdcw3sbVA5+NYtJqTUrFywmc82oenXGV97teHhBKH2XEPuBa6kI2iazBUWwHS8LY2MXGDZtmS7AcLfJrQk=
Received: from lukas-hpz440workstation.lan.sk100508.local (194-166-56-114.hdsl.highway.telekom.at [194.166.56.114])
	by mail.netcube.li with ESMTPA
	; Sat, 6 Jun 2026 21:17:18 +0200
From: Lukas Schmid <lukas.schmid@netcube.li>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@kernel.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Maxime Ripard <mripard@kernel.org>
Cc: Lukas Schmid <lukas.schmid@netcube.li>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: [PATCH v3 3/3] ARM: dts: sunxi: add support for NetCube Systems OpenNMC (dobermann)
Date: Sat,  6 Jun 2026 21:16:41 +0200
Message-ID: <20260606191649.2347704-4-lukas.schmid@netcube.li>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260606191649.2347704-1-lukas.schmid@netcube.li>
References: <20260606191649.2347704-1-lukas.schmid@netcube.li>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[netcube.li,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[netcube.li:s=s1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-307722-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:wens@kernel.org,m:jernej.skrabec@gmail.com,m:samuel@sholland.org,m:pjw@kernel.org,m:palmer@dabbelt.com,m:aou@eecs.berkeley.edu,m:alex@ghiti.fr,m:mripard@kernel.org,m:lukas.schmid@netcube.li,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-sunxi@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:linux-riscv@lists.infradead.org,m:krzk@kernel.org,m:conor@kernel.org,m:jernejskrabec@gmail.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[lukas.schmid@netcube.li,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,sholland.org,dabbelt.com,eecs.berkeley.edu,ghiti.fr];
	DKIM_TRACE(0.00)[netcube.li:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lukas.schmid@netcube.li,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[netcube.li:mid,netcube.li:dkim,netcube.li:from_mime,netcube.li:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A752E64E1F2

NetCube Systems OpenNMC is an open replacement for APC SmartSlot Management
Cards. It is based on the Nagami System-on-Module. It breaks out the
following interfaces:

- 10/100 Mbps Ethernet
- USB Type-C OTG using a TUSB320 (usb0)
- USB Type-C Console Port using a CH340 (uart3)
- USB Type-A Host with internal CH334 USB-Hub (usb1)
- MicroSD Slot with Card-Detect (mmc0)
- WiFi/Bluetooth using the modules built-in ESP32
- SmartSlot serial interface (uart4)
- DS3232 RTC with CR1220 Battery Backup
- Extension connector providing SPI,I2C,USB,CAN,UART for future use.

Signed-off-by: Lukas Schmid <lukas.schmid@netcube.li>
---
 arch/arm/boot/dts/allwinner/Makefile          |   2 +
 .../sun8i-t113s-netcube-dobermann.dts         | 149 ++++++++++++++++++
 2 files changed, 151 insertions(+)
 create mode 100644 arch/arm/boot/dts/allwinner/sun8i-t113s-netcube-dobermann.dts

diff --git a/arch/arm/boot/dts/allwinner/Makefile b/arch/arm/boot/dts/allwinner/Makefile
index f71392a55df8..220a20734dc2 100644
--- a/arch/arm/boot/dts/allwinner/Makefile
+++ b/arch/arm/boot/dts/allwinner/Makefile
@@ -201,6 +201,7 @@ DTC_FLAGS_sun8i-h3-orangepi-pc := -@
 DTC_FLAGS_sun8i-h3-bananapi-m2-plus-v1.2 := -@
 DTC_FLAGS_sun8i-h3-orangepi-pc-plus := -@
 DTC_FLAGS_sun8i-t113s-netcube-nagami-basic-carrier := -@
+DTC_FLAGS_sun8i-t113s-netcube-dobermann := -@
 DTC_FLAGS_sun8i-v3s-netcube-kumquat := -@
 dtb-$(CONFIG_MACH_SUN8I) += \
 	sun8i-a23-evb.dtb \
@@ -261,6 +262,7 @@ dtb-$(CONFIG_MACH_SUN8I) += \
 	sun8i-s3-lichee-zero-plus.dtb \
 	sun8i-s3-pinecube.dtb \
 	sun8i-t113s-mangopi-mq-r-t113.dtb \
+	sun8i-t113s-netcube-dobermann.dts \
 	sun8i-t113s-netcube-nagami-basic-carrier.dtb \
 	sun8i-t113s-netcube-nagami-keypad-carrier.dtb \
 	sun8i-t3-cqa3t-bv3.dtb \
diff --git a/arch/arm/boot/dts/allwinner/sun8i-t113s-netcube-dobermann.dts b/arch/arm/boot/dts/allwinner/sun8i-t113s-netcube-dobermann.dts
new file mode 100644
index 000000000000..d7765caffe2a
--- /dev/null
+++ b/arch/arm/boot/dts/allwinner/sun8i-t113s-netcube-dobermann.dts
@@ -0,0 +1,149 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (C) 2026 Lukas Schmid <lukas.schmid@netcube.li>
+ */
+
+/dts-v1/;
+#include "sun8i-t113s-netcube-nagami.dtsi"
+
+#include <dt-bindings/leds/common.h>
+
+/ {
+	model = "NetCube Systems OpenNMC (dobermann)";
+	compatible = "netcube,dobermann", "netcube,nagami",
+		     "allwinner,sun8i-t113s";
+
+	aliases {
+		serial2 = &uart4; // UART on SmartSlot
+		rtc0 = &ds3232;
+		rtc1 = &rtc; // not battery backed
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		led_heartbeat_green: led-heartbeat-green {
+			gpios = <&pio 6 14 GPIO_ACTIVE_HIGH>; /* PG14 */
+			linux,default-trigger = "heartbeat";
+			color = <LED_COLOR_ID_GREEN>;
+			function = LED_FUNCTION_HEARTBEAT;
+		};
+	};
+};
+
+&ehci0 {
+	status = "okay";
+};
+
+&ehci1 {
+	status = "okay";
+};
+
+&i2c2 {
+	status = "okay";
+
+	tusb320: typec@60 {
+		compatible = "ti,tusb320";
+		reg = <0x60>;
+		interrupts-extended = <&pio 3 22 IRQ_TYPE_LEVEL_LOW>;  /* PD22 */
+	};
+
+	ds3232: rtc@68 {
+		compatible = "dallas,ds3232";
+		reg = <0x68>;
+	};
+};
+
+/* microSD Card Slot on the board */
+&mmc0 {
+	vmmc-supply = <&reg_vcc3v3>;
+	disable-wp;
+	bus-width = <4>;
+	cd-gpios = <&pio 6 15 GPIO_ACTIVE_LOW>; /* PG15 */
+	status = "okay";
+};
+
+&ohci0 {
+	status = "okay";
+};
+
+&ohci1 {
+	status = "okay";
+};
+
+&pio {
+	gpio-line-names = "", "", "", "", // PA
+			  "", "", "", "",
+			  "", "", "", "",
+			  "", "", "", "",
+			  "", "", "", "",
+			  "", "", "", "",
+			  "", "", "", "",
+			  "", "", "", "",
+			  "", "", "SMART_TX", "SMART_RX", // PB
+			  "EXT_IO3", "EXT_IO2", "CONSOLE_TX", "CONSOLE_RX",
+			  "", "", "", "",
+			  "", "", "", "",
+			  "", "", "", "",
+			  "", "", "", "",
+			  "", "", "", "",
+			  "", "", "", "",
+			  "", "", "eMMC_CLK", "eMMC_CMD", // PC
+			  "eMMC_D2", "eMMC_D1", "eMMC_D0", "eMMC_D3",
+			  "", "", "", "",
+			  "", "", "", "",
+			  "", "", "", "",
+			  "", "", "", "",
+			  "", "", "", "",
+			  "", "", "", "",
+			  "", "", "", "", // PD
+			  "", "", "", "",
+			  "", "USB_SEC_EN", "EXT_SPI_nCS", "EXT_SPI_SCK",
+			  "EXT_SPI_MOSI", "EXT_SPI_MISO", "EXT_IO5", "EXT_IO4",
+			  "SMART_SEL", "", "", "",
+			  "I2C2_SCL", "I2C2_SDA", "TUSB320_nINT", "",
+			  "", "", "", "",
+			  "", "", "", "",
+			  "ETH_CRSDV", "ETH_RXD0", "ETH_RXD1", "ETH_TXCK", // PE
+			  "ETH_TXD0", "ETH_TXD1", "ETH_TXEN", "",
+			  "ETH_MDC", "ETH_MDIO", "I2C3_nINT", "",
+			  "", "", "", "",
+			  "", "", "", "",
+			  "", "", "", "",
+			  "", "", "", "",
+			  "", "", "", "",
+			  "uSD_D1", "uSD_D0", "uSD_CLK", "uSD_CMD", // PF
+			  "uSD_D3", "uSD_D2", "TUSB320_ID", "",
+			  "", "", "", "",
+			  "", "", "", "",
+			  "", "", "", "",
+			  "", "", "", "",
+			  "", "", "", "",
+			  "", "", "", "",
+			  "ESP_CLK", "ESP_CMD", "ESP_D0", "ESP_D1", // PG
+			  "ESP_D2", "ESP_D3", "ESP_TXD", "ESP_RXD",
+			  "ESP_nBOOT", "ESP_nRST", "I2C3_SCL", "I2C3_SDA",
+			  "EXT_IO1", "EXT_IO0", "LED_HEARTBEAT", "SD_DETECT",
+			  "", "", "", "",
+			  "", "", "", "",
+			  "", "", "", "",
+			  "", "", "", "";
+};
+
+/* SmartSlot serial */
+&uart4 {
+	pinctrl-0 = <&uart4_pb_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
+&usb_otg {
+	extcon = <&tusb320 0>;
+	dr_mode = "otg";
+	status = "okay";
+};
+
+&usbphy {
+	usb0_id_det-gpios = <&pio 5 6 GPIO_ACTIVE_HIGH>; /* PF6 */
+	status = "okay";
+};
-- 
2.47.3



