Return-Path: <devicetree+bounces-216075-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E745B538DA
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 18:13:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EDAE73A95A4
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 16:13:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F11635334F;
	Thu, 11 Sep 2025 16:13:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=nic.cz header.i=@nic.cz header.b="MEHaG9VD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.nic.cz (mail.nic.cz [217.31.204.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DD6C313E3E
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 16:13:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.31.204.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757607208; cv=none; b=PNdYBNMG/SsPJYdVcJcqDqyYlLQG0Gws4vLJstzECG3aWySoeVCsg/C/PJTNyyTzVg1gQU7zeH5vvFcAd5y72OhHP+CXZwOPP6a+GcVSB4fya0E+kLKWkGplOxtfbnMrX0EdO13LJJhqe/eQI6/x0Si3K6HvJ8KUizNpqXotzno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757607208; c=relaxed/simple;
	bh=loPbKNgZ8J9ICzz7t+HtfeYKoO2K29YEzzDdGgM0vwc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=jkEXxKmIqfAWtPUOm6v7xveIf1mst2zS2YEI1ipZooIkOiw+2/ZYJoSVhRBO6hJK2z++S8nQ6UTXXK3wYehqsXZS+oX5kXy1vka/hrrXwWQK1oRLJl2NQADJQJfuJuEH72hyhlgPA2IjpRyQ1VfTbLnCA7mcvULCj1XPYt7Dy2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nic.cz; spf=pass smtp.mailfrom=nic.cz; dkim=pass (1024-bit key) header.d=nic.cz header.i=@nic.cz header.b=MEHaG9VD; arc=none smtp.client-ip=217.31.204.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nic.cz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nic.cz
Received: from localhost.localdomain (unknown [IPv6:2001:1488:fffe:6220:c8a4:e06:31cb:d419])
	by mail.nic.cz (Postfix) with ESMTPSA id 311841C116E;
	Thu, 11 Sep 2025 18:13:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nic.cz; s=default;
	t=1757607199;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=E22GG/NNmBS10tfg9faKQUgB2503XOAKhaqk/cxmMWo=;
	b=MEHaG9VD8Lzw76uy0EHIjddsZhkGYGTrZlTBw44ZKKX0BDDTsfI4uVWe0nJ2VRr5S6tCou
	0R1zNLx104PVTcfZc9ZLy2ZYzFYJMVLhHPCquhuTe8BKcqE6gaS84HX/M38WXZ7iLkWKAr
	Tao5r+erGlFjh4zkyva8wr9wS9mHF7M=
Authentication-Results: mail.nic.cz;
	auth=pass smtp.auth=tomas.macholda@nic.cz smtp.mailfrom=tomas.macholda@nic.cz
From: =?UTF-8?q?Tom=C3=A1=C5=A1=20Macholda?= <tomas.macholda@nic.cz>
To: gregory.clement@bootlin.com
Cc: devicetree@vger.kernel.org,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	robh@kernel.org,
	kabel@kernel.org,
	michal.hrusecky@nic.cz,
	=?UTF-8?q?Tom=C3=A1=C5=A1=20Macholda?= <tomas.macholda@nic.cz>
Subject: [PATCH v3 2/2] arm64: dts: marvell: add dts for RIPE Atlas Probe v5
Date: Thu, 11 Sep 2025 18:13:08 +0200
Message-ID: <20250911161308.52876-3-tomas.macholda@nic.cz>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20250911161308.52876-1-tomas.macholda@nic.cz>
References: <20250911161308.52876-1-tomas.macholda@nic.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Rspamd-Pre-Result: action=no action;
	module=multimap;
	Matched map: WHITELISTED_IP
X-Rspamd-Queue-Id: 311841C116E
X-Spamd-Bar: /
X-Spamd-Result: default: False [0.49 / 16.00];
	R_MIXED_CHARSET(0.59)[subject];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[dt];
	ASN(0.00)[asn:25192, ipnet:2001:1488::/32, country:CZ];
	ARC_NA(0.00)[];
	WHITELISTED_IP(0.00)[2001:1488:fffe:6220:c8a4:e06:31cb:d419];
	FROM_HAS_DN(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.0:email,0.0.0.1:email];
	DKIM_SIGNED(0.00)[nic.cz:s=default];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+]
X-Rspamd-Server: mail

internet measurement device based on Turris MOX

Signed-off-by: Tomáš Macholda <tomas.macholda@nic.cz>
---
 arch/arm64/boot/dts/marvell/Makefile          |   1 +
 .../boot/dts/marvell/armada-3720-atlas-v5.dts | 110 ++++++++++++++++++
 2 files changed, 111 insertions(+)
 create mode 100644 arch/arm64/boot/dts/marvell/armada-3720-atlas-v5.dts

diff --git a/arch/arm64/boot/dts/marvell/Makefile b/arch/arm64/boot/dts/marvell/Makefile
index 40e5ac6cd468..a774bc74a0a0 100644
--- a/arch/arm64/boot/dts/marvell/Makefile
+++ b/arch/arm64/boot/dts/marvell/Makefile
@@ -1,5 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0
 # Mvebu SoC Family
+dtb-$(CONFIG_ARCH_MVEBU) += armada-3720-atlas-v5.dtb
 dtb-$(CONFIG_ARCH_MVEBU) += armada-3720-db.dtb
 dtb-$(CONFIG_ARCH_MVEBU) += armada-3720-eDPU.dtb
 dtb-$(CONFIG_ARCH_MVEBU) += armada-3720-espressobin.dtb
diff --git a/arch/arm64/boot/dts/marvell/armada-3720-atlas-v5.dts b/arch/arm64/boot/dts/marvell/armada-3720-atlas-v5.dts
new file mode 100644
index 000000000000..070d10a705bb
--- /dev/null
+++ b/arch/arm64/boot/dts/marvell/armada-3720-atlas-v5.dts
@@ -0,0 +1,110 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Device Tree file for RIPE Atlas Probe v5
+ * 2025 by Marek Behún <kabel@kernel.org>
+ */
+
+/dts-v1/;
+
+#include <dt-bindings/bus/moxtet.h>
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/leds/common.h>
+#include "armada-372x.dtsi"
+
+/ {
+	model = "RIPE Atlas Probe v5";
+	compatible = "ripe,atlas-v5", "marvell,armada3720",
+		     "marvell,armada3710";
+
+	aliases {
+		ethernet0 = &eth0;
+		mmc0 = &sdhci0;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	memory@0 {
+		device_type = "memory";
+		reg = <0x00000000 0x00000000 0x00000000 0x20000000>;
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		led {
+			gpios = <&gpiosb 21 GPIO_ACTIVE_LOW>;
+			function = LED_FUNCTION_ACTIVITY;
+			color = <LED_COLOR_ID_RED>;
+			linux,default-trigger = "default-on";
+		};
+	};
+
+	vsdc_reg: vsdc-reg {
+		compatible = "regulator-gpio";
+		regulator-name = "vsdc";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-boot-on;
+
+		gpios = <&gpiosb 23 GPIO_ACTIVE_HIGH>;
+		gpios-states = <0>;
+		states = <1800000 0x1
+			  3300000 0x0>;
+		enable-active-high;
+	};
+
+	firmware {
+		armada-3700-rwtm {
+			compatible = "marvell,armada-3700-rwtm-firmware", "cznic,turris-mox-rwtm";
+		};
+	};
+};
+
+&uart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart1_pins>;
+	status = "okay";
+};
+
+&eth0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&rgmii_pins>;
+	phy-mode = "rgmii-id";
+	phy-handle = <&phy1>;
+	status = "okay";
+};
+
+&sdhci0 {
+	non-removable;
+	bus-width = <4>;
+	mmc-ddr-1_8v;
+	mmc-hs400-1_8v;
+	sd-uhs-sdr104;
+	marvell,xenon-emmc;
+	marvell,xenon-tun-count = <9>;
+	marvell,pad-type = "fixed-1-8v";
+	vqmmc-supply = <&vsdc_reg>;
+
+	pinctrl-names = "default";
+	pinctrl-0 = <&mmc_pins>;
+	status = "okay";
+
+	#address-cells = <1>;
+	#size-cells = <0>;
+	mmccard: mmccard@0 {
+		compatible = "mmc-card";
+		reg = <0>;
+	};
+};
+
+&mdio {
+	pinctrl-names = "default";
+	pinctrl-0 = <&smi_pins>;
+	status = "okay";
+
+	phy1: ethernet-phy@1 {
+		reg = <1>;
+	};
+};
-- 
2.47.3


