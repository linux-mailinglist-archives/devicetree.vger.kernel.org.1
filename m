Return-Path: <devicetree+bounces-251312-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CB7BBCF13F0
	for <lists+devicetree@lfdr.de>; Sun, 04 Jan 2026 20:15:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 67AC2300FE34
	for <lists+devicetree@lfdr.de>; Sun,  4 Jan 2026 19:15:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CEE8314A7C;
	Sun,  4 Jan 2026 19:15:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="rkigdu15"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACE372D876B;
	Sun,  4 Jan 2026 19:15:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767554113; cv=none; b=M7F4/MG7Ja6IXbgN/DReORO3Zip9qqtu2AY8rEdaqPartB78/1pAE1eb+EQ6jUo02FWTq1K/Q1Bne/oplNb9ldapysvuSVdQCL3SPE3fhbdD7Gq9Cqc0C/4KvQKk9OjbJYk/1ZdMpWuemjnCevBuB3sXil0+gXmOsbJWB797aNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767554113; c=relaxed/simple;
	bh=A6Dd/tWTq33VvOCoViFwSfBrD00jajTs2OOtqEnq8is=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=RIQ5D+IFzvsIvhqaCrUs7svhrG6bcZiX1tuY8zyolbcRnMoWpzweixPfVF7wVGK60E6wCuNYSnWfQ+KPpQZvO7Frwi0mz0GOCLYd588n/ejLHAuGIh3tZ2je7d+P6dOS3HVIaATiviAZITOmhv/faB0Ap9MjgH/7Ou9Mj8j98EU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=rkigdu15; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type;
	bh=W6lmQ9DjqLP6DPzdLF3chcc4DApxeE68U6zeYUwkCCw=; b=rkigdu15dRRod3itKUb1tP3RJx
	b03wBt6K+1ZxsPjNBZFk15QGYhzlAVt6GcMTf+S6vtgEL0wSmBaBznBniwJhxMeoptraxS+J0EQuF
	2ipz5vPy7Y5iAFdRri19rHFnL/2z/LZAEC0jt4YnkPhDIbzx8uMKrGTV2HnKl9Tsq6HpfvY2fMoEQ
	Xo4934vTu1DTBN55P6TFZCwJfwuuaWCxXcOunyDjC92g0lpedI6KEOZlFi2QjhrO1WSkBW2VwmaDN
	GRXsk9new8bgQZEx1vIEQwWV2Y2rXA662i2RPGUBUnKjZmZXwLlC07DKUK44AHzygfltUClDoyKAR
	0440nSJw==;
Received: from i53875ac4.versanet.de ([83.135.90.196] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vcTZB-0012Mf-VH; Sun, 04 Jan 2026 20:15:06 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	uwe@kleine-koenig.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 5/5] arm64: dts: rockchip: Add TS133 variant of the QNAP NAS series
Date: Sun,  4 Jan 2026 20:14:48 +0100
Message-ID: <20260104191448.2693309-6-heiko@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20260104191448.2693309-1-heiko@sntech.de>
References: <20260104191448.2693309-1-heiko@sntech.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The TS133 is a one-bay NAS mostly similar to the other devices in the
series. The main difference is that it is build around the RK3566 SoC
instead of the RK3568 variant.

The RK3566/RK3568 are mostly similar with only slight variants in both
speed and some specific peripherals - the RK3568 has more.

The specific for the NAS series stay the same though.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm64/boot/dts/rockchip/Makefile         |  1 +
 .../boot/dts/rockchip/rk3566-qnap-ts133.dts   | 71 +++++++++++++++++++
 2 files changed, 72 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-qnap-ts133.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index dbdda9783e93..ba992860c8a2 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -114,6 +114,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-powkiddy-rgb20sx.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-powkiddy-rgb30.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-powkiddy-rk2023.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-powkiddy-x55.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-qnap-ts133.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-quartz64-a.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-quartz64-b.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-radxa-cm3-io.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-qnap-ts133.dts b/arch/arm64/boot/dts/rockchip/rk3566-qnap-ts133.dts
new file mode 100644
index 000000000000..d605a712de5b
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3566-qnap-ts133.dts
@@ -0,0 +1,71 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2021 Rockchip Electronics Co., Ltd.
+ * Copyright (c) 2024 Heiko Stuebner <heiko@sntech.de>
+ */
+
+/dts-v1/;
+
+#include "rk3566.dtsi"
+#include "rk3568-qnap-tsx33.dtsi"
+
+/ {
+	model = "Qnap TS-133-2G NAS System 1-Bay";
+	compatible = "qnap,ts133", "rockchip,rk3566";
+
+	aliases {
+		ethernet0 = &gmac1;
+	};
+};
+
+&gmac1 {
+	assigned-clocks = <&cru SCLK_GMAC1_RX_TX>, <&cru SCLK_GMAC1>;
+	assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>, <&cru CLK_MAC1_2TOP>;
+	assigned-clock-rates = <0>, <125000000>;
+	clock_in_out = "output";
+	phy-handle = <&rgmii_phy0>;
+	phy-mode = "rgmii-id";
+	pinctrl-names = "default";
+	pinctrl-0 = <&gmac1m1_miim
+		     &gmac1m1_tx_bus2
+		     &gmac1m1_rx_bus2
+		     &gmac1m1_rgmii_clk
+		     &gmac1m1_rgmii_bus>;
+	status = "okay";
+};
+
+&mcu {
+	compatible = "qnap,ts133-mcu";
+};
+
+&mdio1 {
+	rgmii_phy0: ethernet-phy@3 {
+		/* Motorcomm YT8521 phy */
+		compatible = "ethernet-phy-ieee802.3-c22";
+		reg = <0x3>;
+		pinctrl-0 = <&eth_phy0_reset_pin>;
+		pinctrl-names = "default";
+		reset-assert-us = <10000>;
+		reset-gpios = <&gpio0 RK_PC6 GPIO_ACTIVE_LOW>;
+	};
+};
+
+&pinctrl {
+	gmac1 {
+		eth_phy0_reset_pin: eth-phy0-reset-pin {
+			rockchip,pins = <0 RK_PC6 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+};
+
+/* connected to usb_host1_xhci */
+&usb2phy0_host {
+	phy-supply = <&vcc5v0_otg>;
+	status = "okay";
+};
+
+/* USB3 port on backside */
+&usb_host1_xhci {
+	dr_mode = "host";
+	status = "okay";
+};
-- 
2.47.2


