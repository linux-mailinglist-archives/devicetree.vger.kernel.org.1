Return-Path: <devicetree+bounces-46342-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A3A1868F75
	for <lists+devicetree@lfdr.de>; Tue, 27 Feb 2024 12:53:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B2519283902
	for <lists+devicetree@lfdr.de>; Tue, 27 Feb 2024 11:53:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47F8D13A24E;
	Tue, 27 Feb 2024 11:52:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=debian.org header.i=@debian.org header.b="sx3V4GXF"
X-Original-To: devicetree@vger.kernel.org
Received: from master.debian.org (master.debian.org [82.195.75.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4AF1139599
	for <devicetree@vger.kernel.org>; Tue, 27 Feb 2024 11:52:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=82.195.75.110
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709034779; cv=none; b=a8fDLfAlz0rP7iUwRW8VFLjvpeb92/K1k/qc5rcL2+JtzprPniY7HjavsJxbigXdWhf2Pcd80ssN5j79cAoMU2FryzdWXrX1Nqrf4HfqQacsIhCr185GZ+iFAdHlOitGM22z0rUf+JzbMADEPYs2OG1ZPTe0PKVwAYvHvmQlhAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709034779; c=relaxed/simple;
	bh=0/KQgzCRTqQpKGH2iEZhXMAV6et+cwrsmr3lJKOcLps=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=GOzdVcQf4kVVxkIK0/PZaI/JJc85lFX+f5S4brDCTc/bQpev+aPmlu0MpKSf6X09vvrsZneoyO/dfhKEhchIe+E1GAqsxzVX5K8FhbqVE+gQLTvyTCiqHHTl6ypwIAtrcm1QT1fvRe2UbQI///jGmzVKe1MSdz2Gntw97470fTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org; spf=none smtp.mailfrom=master.debian.org; dkim=pass (2048-bit key) header.d=debian.org header.i=@debian.org header.b=sx3V4GXF; arc=none smtp.client-ip=82.195.75.110
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=master.debian.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.master; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID
	:Content-Description; bh=MNjM4sKWc6EVyuSoSJar6AQqTqLQhUbvZgc3em3wuAk=; b=sx3V
	4GXFVfSDsPrqpp1cMUxvQEqyJmCfSPM3H3d+7Vu0trwbjwT2gpPnJocodS19/iNLQRWIN5gpATn8a
	Sy2lC9hc8ki4zG820+LUNDBUEJG74eJCdIUimxbtPSN2eOrbglBkDAfUxJ4W0cY5rce7JqiqyuVzP
	+cNlKQzPMnFN/+RdZ3oxI9Gs2ToNkg/0gt93d4k+/oDv3S5964TypveQpbaOt4RQjOrsLL+S3b9aV
	s0KlXtgNM5wvacoWTsv2iLoA41b4Yh0FmfCFFV2ZLTnx4swSARLzqbL0jO8MrRFT0udKYMJ+woq58
	dA5WF3hYigGw9gAQ0ie+uMZQ0hBPng==;
Received: from ukleinek by master.debian.org with local (Exim 4.94.2)
	(envelope-from <ukleinek@master.debian.org>)
	id 1rew11-005f8x-1h; Tue, 27 Feb 2024 11:52:55 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <ukleinek@debian.org>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 2/2] arm64: dts: rockchip: Add basic support for QNAP TS-433
Date: Tue, 27 Feb 2024 12:52:37 +0100
Message-ID:  <0d9fa5d730ac1cb91261b25b6809fcef3a12f03a.1709034476.git.ukleinek@debian.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1709034476.git.ukleinek@debian.org>
References: <cover.1709034476.git.ukleinek@debian.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=3188; i=ukleinek@debian.org; h=from:subject:message-id; bh=0/KQgzCRTqQpKGH2iEZhXMAV6et+cwrsmr3lJKOcLps=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBl3c0I48qcXyDJrhVKlUfCsiHDANQobD3jG2JM9 6njmEYh13CJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZd3NCAAKCRCPgPtYfRL+ ThOiB/9OX3oap/SoHCeoVjXQd7gVtPEYmvQ6Qrktl2EOK7xsiGoLeoTKXl/iB275jwE3PEQl2+N lGoVA8TK0XacViyMyPH8HadpEWT7OzdzRFCG1nWxWXeHzzkVwNL+W/LuEmuBNP8vHBYSaSUXby2 Ws6WM/4hItx02hvtq6M1HbulxokPACaOU4w6dI4e+WN9jfcqFW9kd0OVAOD4DwT7VJcDK2K/88k xLxLEH4HYYYAKE//sr3QkAgWTl54y/QgLnQMbk1o4DkChKR7qKnW8lLY39ESeMiOIs8StYRtboE lVxAk7fCa12jcfM/Ml7JkqxGLKxs/AejVbJY4uO+I6Q9FeNr
X-Developer-Key: i=ukleinek@debian.org; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit

This is enough to make eMMC, networking, UART (console), RTC and a hard
disk accessible. Still missing are (at least): USB, LEDs, regulators,
fan.

Signed-off-by: Uwe Kleine-König <ukleinek@debian.org>
---
 arch/arm64/boot/dts/rockchip/Makefile         |  1 +
 .../boot/dts/rockchip/rk3568-qnap-ts433.dts   | 86 +++++++++++++++++++
 2 files changed, 87 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index a7b30e11beaf..a28a6d445929 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -98,6 +98,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-lubancat-2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-nanopi-r5c.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-nanopi-r5s.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-odroid-m1.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-qnap-ts433.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-radxa-e25.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-roc-pc.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-rock-3a.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts b/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
new file mode 100644
index 000000000000..ba7137f80075
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
@@ -0,0 +1,86 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2021 Rockchip Electronics Co., Ltd.
+ * Copyright (c) 2024 Uwe Kleine-König
+ */
+
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include "rk3568.dtsi"
+
+/ {
+	model = "Qnap TS-433-4G NAS System 4-Bay";
+	compatible = "qnap,ts433", "rockchip,rk3568";
+};
+
+&i2c0 {
+	pmic@20 {
+		compatible = "rockchip,rk809";
+		reg = <0x20>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <3 IRQ_TYPE_LEVEL_LOW>;
+	};
+};
+
+&i2c1 {
+	status = "okay";
+
+	rtc@51 {
+		compatible = "microcrystal,rv8263";
+		reg = <0x51>;
+		wakeup-source;
+	};
+};
+
+&gmac0 {
+	assigned-clocks = <&cru SCLK_GMAC0_RX_TX>, <&cru SCLK_GMAC0>;
+	assigned-clock-parents = <&cru SCLK_GMAC0_RGMII_SPEED>, <&cru CLK_MAC0_2TOP>;
+	assigned-clock-rates = <0>, <125000000>;
+	clock_in_out = "output";
+	phy-handle = <&rgmii_phy0>;
+	phy-mode = "rgmii";
+	pinctrl-names = "default";
+	pinctrl-0 = <&gmac0_miim
+		     &gmac0_tx_bus2
+		     &gmac0_rx_bus2
+		     &gmac0_rgmii_clk
+		     &gmac0_rgmii_bus>;
+	rx_delay = <0x2f>;
+	tx_delay = <0x3c>;
+	status = "okay";
+};
+
+&mdio0 {
+	rgmii_phy0: ethernet-phy@0 {
+		compatible = "ethernet-phy-ieee802.3-c22";
+		reg = <0x0>;
+	};
+};
+
+&pcie30phy {
+	status = "okay";
+};
+
+&pcie3x1 {
+	/* The downstream dts has: rockchip,bifurcation, XXX: find out what this is about */
+	reset-gpios = <&gpio0 RK_PC7 GPIO_ACTIVE_HIGH>;
+	status = "okay";
+};
+
+&sdhci {
+	bus-width = <8>;
+	max-frequency = <200000000>;
+	non-removable;
+	status = "okay";
+};
+
+/*
+ * Pins available on CN2 connector at TTL voltage level (3V3).
+ * ,_  _.
+ * |1234|  1=TX 2=VCC
+ * `----'  3=RX 4=GND
+ */
+&uart2 {
+	status = "okay";
+};
-- 
2.43.0


