Return-Path: <devicetree+bounces-306792-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id WbUrJkpqIWpaGAEAu9opvQ
	(envelope-from <devicetree+bounces-306792-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 14:06:34 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ED3E63FB2C
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 14:06:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=netcube.li header.s=s1 header.b=fcRZBKX+;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306792-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-306792-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=netcube.li;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CF457305A892
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2026 11:53:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6EA61407590;
	Thu,  4 Jun 2026 11:53:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.netcube.li (mail.netcube.li [173.249.15.149])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83A9F41B343;
	Thu,  4 Jun 2026 11:53:24 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780574006; cv=none; b=rjTrmtO+wD2Dz73GBxSNQiq7jyrZRvGWizVJL0VWO8Kak5p2Tk/pXQ9C35SZ1aY54xtjv+6YCDr9xHPCztOAIOYA6YlyhsGxb/dbObLzswe1CfWb3LLMzYHSPDEB/7t5pHtiUMxSe0pYXXQALsPahKMuNrPHYAMMvbmq3m3nh6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780574006; c=relaxed/simple;
	bh=W1L7lM7ONfZVZduFgqKNqCLCyNE31WGvZ657G3Z6HQk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=NCvw7jMmMgC0/AuOlsTW2R5YefOfsvDV/ljkH7jtHLlFIddY7IasY5MxbzkGLpFwprTgrdnSaB6t3kWGpRaqNxvsMKDNzrOaW8+Fx82Xu5/D/alEFDY0HUaCyKoNKGPfhhoI19trPqpGGhkaVDqCJ6tobf0LNQLEve0xR7f1490=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=netcube.li; spf=pass smtp.mailfrom=netcube.li; dkim=pass (1024-bit key) header.d=netcube.li header.i=@netcube.li header.b=fcRZBKX+; arc=none smtp.client-ip=173.249.15.149
dkim-signature: v=1; a=rsa-sha256; d=netcube.li; s=s1;
	c=relaxed/relaxed; q=dns/txt; h=From:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Transfer-Encoding:In-Reply-To:References;
	bh=PMXI3AsiaIZvGy6ZmQ2drOYiduPnjH0X2ReiBFm1rns=;
	b=fcRZBKX+aHuUMs8bqNVVXdKJSg23d4Karw0mjYOyudzNYgMFb8rjj9zyZHB6pzOx+blIrUYt77hI100yF6CxbMsgHtpo8lLVutz7rk2PKXEVyB1cHqz3aL2beFYa5vnTD6OI3YX1b6UgWrnS/WsfXhij/Jo9giSghS0lIE43dDk=
Received: from lukas-hpz440workstation.lan.sk100508.local (194-166-56-114.hdsl.highway.telekom.at [194.166.56.114])
	by mail.netcube.li with ESMTPA
	; Thu, 4 Jun 2026 13:53:12 +0200
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
Subject: [PATCH v1 3/3] ARM: dts: sunxi: add support for NetCube Systems OpenNMC (dobermann)
Date: Thu,  4 Jun 2026 13:52:34 +0200
Message-ID: <20260604115241.1358528-4-lukas.schmid@netcube.li>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260604115241.1358528-1-lukas.schmid@netcube.li>
References: <20260604115241.1358528-1-lukas.schmid@netcube.li>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[netcube.li:s=s1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-306792-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,netcube.li:mid,netcube.li:dkim,netcube.li:from_mime,netcube.li:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2ED3E63FB2C

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
 .../sun8i-t113s-netcube-dobermann.dts         | 149 ++++++++++++++++++
 1 file changed, 149 insertions(+)
 create mode 100644 arch/arm/boot/dts/allwinner/sun8i-t113s-netcube-dobermann.dts

diff --git a/arch/arm/boot/dts/allwinner/sun8i-t113s-netcube-dobermann.dts b/arch/arm/boot/dts/allwinner/sun8i-t113s-netcube-dobermann.dts
new file mode 100644
index 000000000000..97dd4b950dd8
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
+			  "I2C3_SCL", "I2C3_SDA", "TUSB320_nINT", "",
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
+			  "uSD_D1", "uSD_D0", "uSD_CLK", "uSD_CLK", // PF
+			  "uSD_D3", "uSD_D2", "TUSB320_ID", "",
+			  "", "", "", "",
+			  "", "", "", "",
+			  "", "", "", "",
+			  "", "", "", "",
+			  "", "", "", "",
+			  "", "", "", "",
+			  "ESP_CLK", "ESP_CMD", "ESP_D0", "ESP_D1", // PG
+			  "ESP_D2", "ESP_D3", "ESP_TXD", "ESP_RXD",
+			  "ESP_nBOOT", "ESP_nRST", "I2C2_SCL", "I2C2_SDA",
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



