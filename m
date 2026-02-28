Return-Path: <devicetree+bounces-269458-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cBAILG0xomke0wQAu9opvQ
	(envelope-from <devicetree+bounces-269458-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 01:06:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A7C11BF538
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 01:06:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C8262305BF53
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 00:05:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6EF512AEE4;
	Sat, 28 Feb 2026 00:05:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VpyGo/WS"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD99772634
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 00:05:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772237158; cv=none; b=pRBIdIwhrLztFA3k17UDU1petquHbuQp2DbvOnT3W+MFP/QIl9+eADqzjrUVieNI9Og5A/hl+A784sILFUxTncf5uolsL5Wty5+thwC8A7a1Gfqa0OBVZl/tEIRMkAQY3bM6ua7AcNHEYQ9axDIGYeq1l0tRCap8kaLOaHLKMsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772237158; c=relaxed/simple;
	bh=9p7mEMFwI0uT2Kge54+JeVOVj4NaXv5pJH3iDDElDm4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=l6ToPQVjwqRwuW8Mc6eXZBKPLoCoUJgj8Kx53cGZpPA06ufL/v0Z/CN2yk6ZvC7bkxvVUTDC4/wjxsfXAu2uLQtwrvPU6kUhbwqy+9kg6UzQJbDmhrjGVStxiAqLW8FXoSTuF8tSH+5sVny0SICmmPpqjHs9IWICQNOMyziqm+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VpyGo/WS; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5CA65C19422;
	Sat, 28 Feb 2026 00:05:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772237157;
	bh=9p7mEMFwI0uT2Kge54+JeVOVj4NaXv5pJH3iDDElDm4=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=VpyGo/WSp31SO8i4d0ibydEtt8LJOJZhWgMMTau0GuL61wh8UK9Pks5GPJCs8+WBg
	 kJPogk7XxKw3t/kyy4EeTyQFPpKg0vzyGWfnaql16uGuh8l+gPfDE7xwAVS07nLIWt
	 MVW53oygyl94l76LclnB53KG56u++z+AC+5w9hdsW08aGbOMh+BFomxT/6PV36mIhk
	 GEe/UUILh/2c82GokebIDkHtkElK4DXZYV/lm1psXmoYktN6cnsqXlgSGC/voo1ioV
	 eyXUvCsYbUHWXqfNG5GmUcx+o4KFWu8BTUhs3mK7tJ+9qAm2FhPASvHHfHdV7//Pul
	 CgCqfx+mcPFUg==
From: Linus Walleij <linusw@kernel.org>
Date: Sat, 28 Feb 2026 01:05:46 +0100
Subject: [PATCH 6/8] ARM: dts: Add a Verbatim Gigabit NAS DTS
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260228-gemini-dts-fixes-v1-6-0c6f6d0fb4bd@kernel.org>
References: <20260228-gemini-dts-fixes-v1-0-0c6f6d0fb4bd@kernel.org>
In-Reply-To: <20260228-gemini-dts-fixes-v1-0-0c6f6d0fb4bd@kernel.org>
To: Hans Ulli Kroll <ulli.kroll@googlemail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 Linus Walleij <linusw@kernel.org>
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269458-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[googlemail.com,kernel.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 2A7C11BF538
X-Rspamd-Action: no action

This adds a device tree for the Verbatim S08V1901-D1 NAS
which also has the product names "Gigabit Network Hard Drive"
"Gigabit NAS" and maybe other names.

Signed-off-by: Linus Walleij <linusw@kernel.org>
---
 arch/arm/boot/dts/gemini/Makefile                  |   1 +
 .../dts/gemini/gemini-verbatim-s08v1901-d1.dts     | 225 +++++++++++++++++++++
 2 files changed, 226 insertions(+)

diff --git a/arch/arm/boot/dts/gemini/Makefile b/arch/arm/boot/dts/gemini/Makefile
index f9f63ce3eb49..d5d32f02e232 100644
--- a/arch/arm/boot/dts/gemini/Makefile
+++ b/arch/arm/boot/dts/gemini/Makefile
@@ -8,5 +8,6 @@ dtb-$(CONFIG_ARCH_GEMINI) += \
 	gemini-sl93512r.dtb \
 	gemini-sq201.dtb \
 	gemini-ssi1328.dtb \
+	gemini-verbatim-s08v1901-d1.dtb \
 	gemini-wbd111.dtb \
 	gemini-wbd222.dtb
diff --git a/arch/arm/boot/dts/gemini/gemini-verbatim-s08v1901-d1.dts b/arch/arm/boot/dts/gemini/gemini-verbatim-s08v1901-d1.dts
new file mode 100644
index 000000000000..2a689d276863
--- /dev/null
+++ b/arch/arm/boot/dts/gemini/gemini-verbatim-s08v1901-d1.dts
@@ -0,0 +1,225 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Device Tree file for the Verbatim S08V1901-D1
+ * on product packaging called "Verbatim Gigabit Ethernet Hard Drive"
+ */
+
+/dts-v1/;
+
+#include "gemini.dtsi"
+#include <dt-bindings/leds/common.h>
+#include <dt-bindings/input/input.h>
+
+/ {
+	model = "Verbatim Gigabit Ethernet Hard Drive S08V1901-D1";
+	compatible = "verbatim,s08v1901-d1", "cortina,gemini";
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	memory@0 {
+		/* 64MB SDRAM in 2 x Hynix HY5DU561622ETP-D43 */
+		device_type = "memory";
+		reg = <0x00000000 0x4000000>;
+	};
+
+	chosen {
+		bootargs = "console=ttyS0,19200n8 root=/dev/sda1 rw rootwait";
+		stdout-path = &uart0;
+	};
+
+	gpio_keys {
+		compatible = "gpio-keys";
+
+		button-reset {
+			debounce-interval = <50>;
+			wakeup-source;
+			linux,code = <KEY_RESTART>;
+			label = "reset";
+			gpios = <&gpio1 31 GPIO_ACTIVE_LOW>;
+		};
+	};
+
+	leds {
+		compatible = "gpio-leds";
+		led-green-harddisk {
+			function = LED_FUNCTION_DISK_ACTIVITY;
+			color = <LED_COLOR_ID_GREEN>;
+			gpios = <&gpio0 1 GPIO_ACTIVE_LOW>;
+			default-state = "off";
+			linux,default-trigger = "disk-activity";
+		};
+	};
+
+	/*
+	 * Fan control candidates: gpio0 10, gpio1 28
+	 */
+
+	mdio0: mdio {
+		compatible = "virtual,mdio-gpio";
+		/* Uses MDC and MDIO */
+		gpios = <&gpio0 22 GPIO_ACTIVE_HIGH>, /* MDC */
+			<&gpio0 21 GPIO_ACTIVE_HIGH>; /* MDIO */
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		/* This is a Realtek RTL8211CL ethernet PHY */
+		phy0: ethernet-phy@1 {
+			reg = <1>;
+		};
+	};
+
+	/*
+	 * I haven't found a way to control the fan, it appears to be
+	 * always on.
+	 */
+	thermal-zones {
+		chassis-thermal {
+			/* Poll every 20 seconds */
+			polling-delay = <20000>;
+			/* Poll every 2nd second when cooling */
+			polling-delay-passive = <2000>;
+			/*  Use the thermal sensor in the hard drive */
+			thermal-sensors = <&drive0>;
+
+			/* Tripping points from the fan.script in the rootfs */
+			trips {
+				alert: chassis-alert {
+					/* At 43 degrees turn on the fan */
+					temperature = <43000>;
+					hysteresis = <3000>;
+					type = "active";
+				};
+				crit: chassis-crit {
+					/* Just shut down at 60 degrees */
+					temperature = <60000>;
+					hysteresis = <2000>;
+					type = "critical";
+				};
+			};
+		};
+	};
+
+	soc {
+		flash@30000000 {
+			/*
+			 * This is a Spansion S29GL128P11TFI01 852FB245 A
+			 * 128Mbit (16MB) Flash memory.
+			 */
+			status = "okay";
+			reg = <0x30000000 0x01000000>;
+
+			partitions {
+				compatible = "redboot-fis";
+				/* Eraseblock at 0xfe0000 */
+				fis-index-block = <0x7f>;
+			};
+		};
+
+		syscon: syscon@40000000 {
+			pinctrl {
+				/*
+				 * gpio0agrp cover line 0-4 as line 1 is used for the LED
+				 * gpio0hgrp cover line 21, 22 used by MDIO for Marvell PHY
+				 */
+				gpio0_default_pins: pinctrl-gpio0 {
+					mux {
+						function = "gpio0";
+						groups = "gpio0agrp", "gpio0hgrp";
+					};
+				};
+				gpio1_default_pins: pinctrl-gpio1 {
+					/*
+					 * Free up the TVC pins at GPIO1 offset 28,29,30,31
+					 * line 31 is used for reset key
+					 */
+					mux {
+						function = "gpio1";
+						groups = "gpio1dgrp";
+					};
+				};
+				pinctrl-gmii {
+					mux {
+						function = "gmii";
+						groups = "gmii_gmac0_grp";
+					};
+					/* TODO: investigate vendor registers on boot */
+					conf0 {
+						pins = "V8 GMAC0 RXDV";
+						skew-delay = <0>;
+					};
+					conf1 {
+						pins = "Y7 GMAC0 RXC";
+						skew-delay = <15>;
+					};
+					conf2 {
+						pins = "T8 GMAC0 TXEN";
+						skew-delay = <7>;
+					};
+					conf3 {
+						pins = "U8 GMAC0 TXC";
+						skew-delay = <10>;
+					};
+					conf4 {
+						/* The data lines all have default skew */
+						pins = "W8 GMAC0 RXD0", "V9 GMAC0 RXD1",
+						       "Y8 GMAC0 RXD2", "U9 GMAC0 RXD3",
+						       "T7 GMAC0 TXD0", "U6 GMAC0 TXD1",
+						       "V7 GMAC0 TXD2", "U7 GMAC0 TXD3";
+						skew-delay = <7>;
+					};
+				};
+			};
+		};
+
+		/* Both interfaces brought out on SATA connectors */
+		sata: sata@46000000 {
+			cortina,gemini-ata-muxmode = <0>;
+			cortina,gemini-enable-sata-bridge;
+			status = "okay";
+		};
+
+		gpio0: gpio@4d000000 {
+			pinctrl-names = "default";
+			pinctrl-0 = <&gpio0_default_pins>;
+		};
+
+		gpio1: gpio@4e000000 {
+			pinctrl-names = "default";
+			pinctrl-0 = <&gpio1_default_pins>;
+		};
+
+		ethernet@60000000 {
+			status = "okay";
+
+			ethernet-port@0 {
+				phy-mode = "rgmii";
+				phy-handle = <&phy0>;
+			};
+		};
+
+		ide@63000000 {
+			status = "okay";
+			/*
+			 * This drive may have a temperature sensor with a
+			 * thermal zone we can use for thermal control of the
+			 * chassis temperature using the fan.
+			 */
+			drive0: ide-port@0 {
+				reg = <0>;
+				#thermal-sensor-cells = <0>;
+			};
+		};
+
+		ide@63400000 {
+			status = "okay";
+		};
+
+		usb@68000000 {
+			status = "okay";
+		};
+
+		usb@69000000 {
+			status = "okay";
+		};
+	};
+};

-- 
2.53.0


