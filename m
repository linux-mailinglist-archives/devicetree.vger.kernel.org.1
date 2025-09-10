Return-Path: <devicetree+bounces-215529-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CC111B51C82
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 17:53:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5435717F9B2
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 15:53:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2540A32A3EB;
	Wed, 10 Sep 2025 15:53:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=nic.cz header.i=@nic.cz header.b="MDFW1kWh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.nic.cz (mail.nic.cz [217.31.204.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEB40327A21
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 15:53:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.31.204.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757519596; cv=none; b=fSVXJ4I9sAP79LGlSgM/ZUTBKKCyd/aSRC2WkdZkl/DfGuCuuOlGCHNLXo4xEu/IpvjzOaC0r3FhoMFiYHKT8Mv5OlKkIYoVip12FmuviueLJY3gja782XMny3ExgVjA5ya3L6ZZaDEx3L7lccV2IJ52FBzr5NsGYxkgKITcsNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757519596; c=relaxed/simple;
	bh=JlqWDA2ucK8nQx4D1DttlMiNOyM1ZjiEjyzejaMcHys=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=T//YGhLf+LJC0/JEvs2Ap0rKWQNvtsH/khQI1VX0BhpsmpXVvalAp2wyncUh2ac8MzlNoqhJyEvByileu4AgVLTnDR2Aw1MnmDK3WRI/KcG6guHh+ACzqHCuiuWgRfL9rlgm7MNmJPUfvHJXjLUDeM1u4ey5mJ/iGRAhvfWxYZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nic.cz; spf=pass smtp.mailfrom=nic.cz; dkim=pass (1024-bit key) header.d=nic.cz header.i=@nic.cz header.b=MDFW1kWh; arc=none smtp.client-ip=217.31.204.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nic.cz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nic.cz
Received: from macholda.lan (unknown [IPv6:2001:1488:fffe:6220:172f:2c63:54a0:e850])
	by mail.nic.cz (Postfix) with ESMTPSA id 712FB1C1006;
	Wed, 10 Sep 2025 17:47:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nic.cz; s=default;
	t=1757519267;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=lbzwR2EEuBgRUNBu170UgNxFWarhQcchc6ZQ9FxTrRI=;
	b=MDFW1kWhxtO0kukRPXWoN9s6dFPRgNltzZ2UjRaQTFa9RE6bUMHOx6yxN0TxF9t7l1SX9V
	xgwUxAwy97YlMyMRxS0T5HhWNKI6qU5R4ytM/VbpVfcVLKnLNdcDj+wqj83kjreXZze5fz
	TxtRwch74da5QCaAW5JurXYMaZCQLyk=
Authentication-Results: mail.nic.cz;
	auth=pass smtp.auth=tomas.macholda@nic.cz smtp.mailfrom=tomas.macholda@nic.cz
From: =?UTF-8?q?Tom=C3=A1=C5=A1=20Macholda?= <tomas.macholda@nic.cz>
To: Gregory Clement <gregory.clement@bootlin.com>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	kabel@kernel.org,
	=?UTF-8?q?Tom=C3=A1=C5=A1=20Macholda?= <tomas.macholda@nic.cz>
Subject: [PATCH 2/2] arm64: dts: marvell: add dts for RIPE Atlas Probe
Date: Wed, 10 Sep 2025 17:47:34 +0200
Message-ID: <20250910154734.24686-3-tomas.macholda@nic.cz>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20250910154734.24686-1-tomas.macholda@nic.cz>
References: <20250910154734.24686-1-tomas.macholda@nic.cz>
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
X-Rspamd-Queue-Id: 712FB1C1006
X-Spamd-Bar: /
X-Spamd-Result: default: False [0.57 / 16.00];
	R_MIXED_CHARSET(0.67)[subject];
	MIME_GOOD(-0.10)[text/plain];
	WHITELISTED_IP(0.00)[2001:1488:fffe:6220:172f:2c63:54a0:e850];
	DKIM_SIGNED(0.00)[nic.cz:s=default];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[dt];
	ASN(0.00)[asn:25192, ipnet:2001:1488::/32, country:CZ];
	FROM_EQ_ENVFROM(0.00)[];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.1:email,0.0.0.0:email]
X-Rspamd-Server: mail

CZ.NIC's RIPE Atlas Probe v5, based on Turris MOX

Signed-off-by: Tomáš Macholda <tomas.macholda@nic.cz>
---
 .../dts/marvell/armada-3720-ripe-atlas.dts    | 110 ++++++++++++++++++
 1 file changed, 110 insertions(+)
 create mode 100644 arch/arm64/boot/dts/marvell/armada-3720-ripe-atlas.dts

diff --git a/arch/arm64/boot/dts/marvell/armada-3720-ripe-atlas.dts b/arch/arm64/boot/dts/marvell/armada-3720-ripe-atlas.dts
new file mode 100644
index 000000000000..2a0de7b085da
--- /dev/null
+++ b/arch/arm64/boot/dts/marvell/armada-3720-ripe-atlas.dts
@@ -0,0 +1,110 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Device Tree file for CZ.NIC Ripe Atlas Probe
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
+	model = "CZ.NIC RIPE Atlas Probe";
+	compatible = "cznic,ripe-atlas", "marvell,armada3720",
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


