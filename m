Return-Path: <devicetree+bounces-61776-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B342B8AE154
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 11:51:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 694EF287706
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 09:51:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D164B5FDA6;
	Tue, 23 Apr 2024 09:51:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LLjV27gj"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FA215DF3B;
	Tue, 23 Apr 2024 09:51:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713865860; cv=none; b=W+RIuavuiS+2VPV67197t4NVhA3UJG3cXBjj+BjhheETsvhwuHFrd/pzxKDSFcx+P22Q308yxotZJwwdWNMuoecAedisf6t8RFoAhqjicw4C8cIJP5kw87RGoTDouBtI0GdHx5jceADjTCK4RwWQUWRylWOVLRSEGZxurCSSrcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713865860; c=relaxed/simple;
	bh=eCAm4uysp0SicThr1Ge6mTqr6oX3S354wyUDSjBEAhA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=LqSbnmSO9c1TW4EMrgnptotIMe9fj8SegiV8ZRAxLUQtmpyyXfjRpI/0Cad7U2dMcKbOpHKW48DlJCrHx/qXepK6mcfCdXILkxmx9mx8pNoegPa3OObZ5m6tu2xLzcoVzw8sQHs0I0XlOjDg6I3kJEWKX5348qZOQ5/XoaV/0Eo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LLjV27gj; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 23162C4AF0E;
	Tue, 23 Apr 2024 09:51:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713865860;
	bh=eCAm4uysp0SicThr1Ge6mTqr6oX3S354wyUDSjBEAhA=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=LLjV27gjkDtgCi0GGotsI50+o+wbBNhpLl1DjpzGqP7tYEFHKLjYJ2W05WSM6YfTZ
	 vBF3f2/vKr5u37yExRytDVOkdIcLCvb8++SdS6bn5uerDiR+eOoWPjJk/khuh0xROI
	 E8ttGOc+AnLCS4jZhYsuGm1fbjPOSgvPCpTvXlSst1Lmvv22+6zjesAH52eE4aVWYN
	 AGaqDZgW29XngpYmc7XyL4SlogupG8rMzho+JEvu/VRHmJ/c5xVica9tbWSM86DkXA
	 4p1UlrSi1wc0KjD8At8/JrSDu7buwHxpo6HZzoqZin1/VFqpvzyY3oxG6GJ3C3ra3e
	 FwwCVJ9d0wIaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1591CC10F15;
	Tue, 23 Apr 2024 09:51:00 +0000 (UTC)
From: =?utf-8?q?Ar=C4=B1n=C3=A7_=C3=9CNAL_via_B4_Relay?= <devnull+arinc.unal.arinc9.com@kernel.org>
Date: Tue, 23 Apr 2024 12:50:48 +0300
Subject: [PATCH v3 4/5] ARM: dts: BCM5301X: Add DT for ASUS RT-AC5300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20240423-for-soc-asus-rt-ac3200-ac5300-v3-4-23d33cfafe7a@arinc9.com>
References: <20240423-for-soc-asus-rt-ac3200-ac5300-v3-0-23d33cfafe7a@arinc9.com>
In-Reply-To: <20240423-for-soc-asus-rt-ac3200-ac5300-v3-0-23d33cfafe7a@arinc9.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Florian Fainelli <f.fainelli@gmail.com>, 
 Hauke Mehrtens <hauke@hauke-m.de>, Rafal Milecki <zajec5@gmail.com>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>
Cc: Tom Brautaset <tbrautaset@gmail.com>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 =?utf-8?q?Ar=C4=B1n=C3=A7_=C3=9CNAL?= <arinc.unal@arinc9.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1713865858; l=4382;
 i=arinc.unal@arinc9.com; s=arinc9-Xeront; h=from:subject:message-id;
 bh=P5yJlg4wjk2VTZLTm+4BjnQv6HiOdlE4FvT7F0PL3pw=;
 b=Sqe0IqL3rOc5pQHur9LFA7gCu7+/FNZzyvXHvCvNwvcup82i1DAERrYhbLOfQ+jsrk+WydIJV
 /6Vlsj8F4b+BD0ASrlJK5iqIT+lUYYIVAzMkxPU91KTm9N7rKYU0+DR
X-Developer-Key: i=arinc.unal@arinc9.com; a=ed25519;
 pk=z49tLn29CyiL4uwBTrqH9HO1Wu3sZIuRp4DaLZvtP9M=
X-Endpoint-Received: by B4 Relay for arinc.unal@arinc9.com/arinc9-Xeront
 with auth_id=137
X-Original-From: =?utf-8?q?Ar=C4=B1n=C3=A7_=C3=9CNAL?= <arinc.unal@arinc9.com>
Reply-To: arinc.unal@arinc9.com

From: Arınç ÜNAL <arinc.unal@arinc9.com>

Add the device tree for ASUS RT-AC5300 which is an AC5300 router featuring
5 Ethernet ports over the integrated Broadcom switch.

Hardware info:
* Processor: Broadcom BCM4709C0 dual-core @ 1.4 GHz
* Switch: BCM53012 in BCM4709C0
* DDR3 RAM: 512 MB
* Flash: 128 MB
* 2.4GHz: BCM4366 4x4 single chip 802.11b/g/n SoC
* 5GHz: BCM4366 4x4 two chips 802.11a/n/ac SoC
* Ports: 4 LAN Ports, 1 WAN Port

Co-developed-by: Tom Brautaset <tbrautaset@gmail.com>
Signed-off-by: Tom Brautaset <tbrautaset@gmail.com>
Signed-off-by: Arınç ÜNAL <arinc.unal@arinc9.com>
---
 arch/arm/boot/dts/broadcom/Makefile                |   1 +
 .../boot/dts/broadcom/bcm47094-asus-rt-ac5300.dts  | 156 +++++++++++++++++++++
 2 files changed, 157 insertions(+)

diff --git a/arch/arm/boot/dts/broadcom/Makefile b/arch/arm/boot/dts/broadcom/Makefile
index c61fca514775..5881bcc95eba 100644
--- a/arch/arm/boot/dts/broadcom/Makefile
+++ b/arch/arm/boot/dts/broadcom/Makefile
@@ -72,6 +72,7 @@ dtb-$(CONFIG_ARCH_BCM_5301X) += \
 	bcm4709-netgear-r8000.dtb \
 	bcm4709-tplink-archer-c9-v1.dtb \
 	bcm47094-asus-rt-ac3100.dtb \
+	bcm47094-asus-rt-ac5300.dtb \
 	bcm47094-asus-rt-ac88u.dtb \
 	bcm47094-dlink-dir-885l.dtb \
 	bcm47094-dlink-dir-890l.dtb \
diff --git a/arch/arm/boot/dts/broadcom/bcm47094-asus-rt-ac5300.dts b/arch/arm/boot/dts/broadcom/bcm47094-asus-rt-ac5300.dts
new file mode 100644
index 000000000000..6c666dc7ad23
--- /dev/null
+++ b/arch/arm/boot/dts/broadcom/bcm47094-asus-rt-ac5300.dts
@@ -0,0 +1,156 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/*
+ * Author: Tom Brautaset <tbrautaset@gmail.com>
+ */
+
+/dts-v1/;
+
+#include "bcm47094.dtsi"
+#include "bcm5301x-nand-cs0-bch8.dtsi"
+
+#include <dt-bindings/leds/common.h>
+
+/ {
+	compatible = "asus,rt-ac5300", "brcm,bcm47094", "brcm,bcm4708";
+	model = "ASUS RT-AC5300";
+
+	memory@0 {
+		reg = <0x00000000 0x08000000>,
+		      <0x88000000 0x18000000>;
+		device_type = "memory";
+	};
+
+	nvram@1c080000 {
+		compatible = "brcm,nvram";
+		reg = <0x1c080000 0x00180000>;
+
+		et1macaddr: et1macaddr {
+			#nvmem-cell-cells = <1>;
+		};
+	};
+
+	gpio-keys {
+		compatible = "gpio-keys";
+
+		button-reset {
+			label = "Reset";
+			linux,code = <KEY_RESTART>;
+			gpios = <&chipcommon 11 GPIO_ACTIVE_LOW>;
+		};
+
+		button-wifi {
+			label = "Wi-Fi";
+			linux,code = <KEY_RFKILL>;
+			gpios = <&chipcommon 20 GPIO_ACTIVE_LOW>;
+		};
+
+		button-wps {
+			label = "WPS";
+			linux,code = <KEY_WPS_BUTTON>;
+			gpios = <&chipcommon 18 GPIO_ACTIVE_LOW>;
+		};
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		led-lan {
+			color = <LED_COLOR_ID_WHITE>;
+			function = LED_FUNCTION_LAN;
+			gpios = <&chipcommon 21 GPIO_ACTIVE_LOW>;
+		};
+
+		led-power {
+			color = <LED_COLOR_ID_WHITE>;
+			function = LED_FUNCTION_POWER;
+			gpios = <&chipcommon 3 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "default-on";
+		};
+
+		led-wan-red {
+			color = <LED_COLOR_ID_RED>;
+			function = LED_FUNCTION_WAN;
+			gpios = <&chipcommon 5 GPIO_ACTIVE_HIGH>;
+		};
+
+		led-wps {
+			color = <LED_COLOR_ID_WHITE>;
+			function = LED_FUNCTION_WPS;
+			gpios = <&chipcommon 19 GPIO_ACTIVE_LOW>;
+		};
+	};
+};
+
+&gmac0 {
+	nvmem-cells = <&et1macaddr 0>;
+	nvmem-cell-names = "mac-address";
+};
+
+&gmac1 {
+	nvmem-cells = <&et1macaddr 1>;
+	nvmem-cell-names = "mac-address";
+};
+
+&gmac2 {
+	nvmem-cells = <&et1macaddr 2>;
+	nvmem-cell-names = "mac-address";
+};
+
+&nandcs {
+	partitions {
+		compatible = "fixed-partitions";
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		partition@0 {
+			reg = <0x00000000 0x00080000>;
+			label = "boot";
+			read-only;
+		};
+
+		partition@80000 {
+			reg = <0x00080000 0x00180000>;
+			label = "nvram";
+		};
+
+		partition@200000 {
+			compatible = "brcm,trx";
+			reg = <0x00200000 0x07e00000>;
+			label = "firmware";
+		};
+	};
+};
+
+&srab {
+	status = "okay";
+
+	ports {
+		port@0 {
+			label = "lan4";
+		};
+
+		port@1 {
+			label = "lan3";
+		};
+
+		port@2 {
+			label = "lan2";
+		};
+
+		port@3 {
+			label = "lan1";
+		};
+
+		port@4 {
+			label = "wan";
+		};
+	};
+};
+
+&usb2 {
+	vcc-gpio = <&chipcommon 9 GPIO_ACTIVE_HIGH>;
+};
+
+&usb3_phy {
+	status = "okay";
+};

-- 
2.40.1



