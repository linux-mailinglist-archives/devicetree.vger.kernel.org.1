Return-Path: <devicetree+bounces-270331-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SIXoOvKNpmnxRAAAu9opvQ
	(envelope-from <devicetree+bounces-270331-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 08:29:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E6641EA2F3
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 08:29:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0763A3023E2E
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 07:29:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C59A1382288;
	Tue,  3 Mar 2026 07:29:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VMJvEQo9"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A347E32E126
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 07:29:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772522992; cv=none; b=jX5ccNrygs2Oc3AG/YIok/BEbGAcLbGuA+E+Ca9/umw31f721P3JybWS7LJt+WgV9qHko8fqvus+Ups0J54fr8R/4hR/K4VFyUb8+jvz9GkrwHWN/ud7cQubNmS+s5q9E1wrE8zXd5j7cDsn4PPcsq5UznIB6/RoRE+/r632d/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772522992; c=relaxed/simple;
	bh=9p7mEMFwI0uT2Kge54+JeVOVj4NaXv5pJH3iDDElDm4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=IAk3AZTTiUUVeGt69MMeJh5aoLp+I4uGDQZ47lo2FzoHqsIQKdt5Lba7YCVVGda0NVbXIu9jB5Td8V/vWnTWF22nqt/ztvuZwqfGqmp41TPGeI5Pn1ISdLR8VPGUgWv3HNbY07/MBfE/ycJIUJeW52Q+idGwrLVln/KroMzQd08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VMJvEQo9; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E7A8FC19425;
	Tue,  3 Mar 2026 07:29:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772522992;
	bh=9p7mEMFwI0uT2Kge54+JeVOVj4NaXv5pJH3iDDElDm4=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=VMJvEQo9q8s0aoP7cBW2C0R+1frCC1yfEOUcUEEMo+LFPbj6e44M4jR92vNnlBlrk
	 TgejCB8tYMuU7c05BLy0qVee6TdGCYMPf0CW0sdkcGZ2Mr5h3Snx7Gvz6lQaef3aGF
	 NhbZx/v/6ngIYrOp6plgETyXHkK0MeTr5aDn1iWW0cMsB4Gt6I/o3IUJTTFyWvWOWM
	 N7b/SKQ7HaKWIP1u2t+uDKxiLEd0QVAm1+ul8j2LEbBlpkjOHJ7zj6yLXFkxmeBIuT
	 34d/guLv0NZl4M5b1OD5GFBQJ4C43MMCJXUnqzix4BVvjWREDLW+kQatL9TfQBpwjG
	 SsYEhIJLchMCg==
From: Linus Walleij <linusw@kernel.org>
Date: Tue, 03 Mar 2026 08:29:38 +0100
Subject: [PATCH v2 6/8] ARM: dts: Add a Verbatim Gigabit NAS DTS
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260303-gemini-dts-fixes-v2-6-5b92ced841ce@kernel.org>
References: <20260303-gemini-dts-fixes-v2-0-5b92ced841ce@kernel.org>
In-Reply-To: <20260303-gemini-dts-fixes-v2-0-5b92ced841ce@kernel.org>
To: Hans Ulli Kroll <ulli.kroll@googlemail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 Linus Walleij <linusw@kernel.org>
X-Mailer: b4 0.14.3
X-Rspamd-Queue-Id: 3E6641EA2F3
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
	TAGGED_FROM(0.00)[bounces-270331-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[googlemail.com,kernel.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
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


