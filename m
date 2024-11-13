Return-Path: <devicetree+bounces-121403-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A99D99C6A67
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 09:13:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 65FA4B224F4
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 08:13:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C29FF189F4B;
	Wed, 13 Nov 2024 08:13:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE747189F5A
	for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 08:13:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731485618; cv=none; b=YGlKVGuaJR3ix6FEim90MqjJ29N+2kawXRrpriwhj4v2UeN8nLOuG9wX4Wm4cBbNcFBkCQ8wsLZeNp/sGVsbBd1PljFgYTT8wST7NCgWOZebDyvRpw9hiITmzeiVKtoXyIm0zJsVJ70SmZRTVRQEoW7mS3WnMXawCB+fL5nNM9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731485618; c=relaxed/simple;
	bh=hDVzlnuA0Hhr9VRb+jwJye8SwOVsVX1fKqsVJYk39Pk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=DdsUYX5OTbuQSY6m18MtisnJgzAE7Vqhz4/EMxj/jSpmhbJe9CkGsP2/plK9NxNN8YvH2igFacSMuNtsiyuRmMn/AOlPkLTKtLOBkkURW/bceLZs/Fhfq8OyoZkh7xUSvUksaULMaaVkBv0P79KVf8Sfqg3DkRZxF4ET/rtzJ7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4AD8D5p9026223;
	Wed, 13 Nov 2024 17:13:07 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, sebastian.reichel@collabora.com,
        cristian.ciocaltea@collabora.com, jbx6244@gmail.com,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 8/8] arm64: dts: rockchip: fix pinctrl pin labels/names for Radxa ROCK 5A
Date: Wed, 13 Nov 2024 08:12:58 +0000
Message-ID: <20241113081258.2745-8-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241113081258.2745-1-naoki@radxa.com>
References: <20241113081258.2745-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

fix pinctrl pin labels/names to match with schematic[1].

[1] https://dl.radxa.com/rock5/5a/docs/hw/radxa_rock5a_V1.1_sch.pdf

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 .../boot/dts/rockchip/rk3588s-rock-5a.dts     | 38 +++++++++----------
 1 file changed, 19 insertions(+), 19 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
index a6d1dfa68a90..c7b424641972 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
@@ -100,7 +100,7 @@ vcc5v0_host: regulator-vcc5v0-host {
 		enable-active-high;
 		gpio = <&gpio4 RK_PB5 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
-		pinctrl-0 = <&vcc5v0_host_en>;
+		pinctrl-0 = <&usb_host_pwren_h>;
 		vin-supply = <&vcc5v0_sys>;
 	};
 
@@ -134,7 +134,7 @@ vcc_5v0: regulator-vcc-5v0 {
 		enable-active-high;
 		gpio = <&gpio4 RK_PA3 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
-		pinctrl-0 = <&vcc_5v0_en>;
+		pinctrl-0 = <&vcc_5v0_pwren_h>;
 		vin-supply = <&vcc5v0_sys>;
 	};
 
@@ -346,7 +346,7 @@ rgmii_phy1: ethernet-phy@1 {
 		compatible = "ethernet-phy-id001c.c916";
 		reg = <0x1>;
 		pinctrl-names = "default";
-		pinctrl-0 = <&rtl8211f_rst>;
+		pinctrl-0 = <&gmac1_rstn>;
 		reset-assert-us = <20000>;
 		reset-deassert-us = <100000>;
 		reset-gpios = <&gpio3 RK_PB7 GPIO_ACTIVE_LOW>;
@@ -354,7 +354,9 @@ rgmii_phy1: ethernet-phy@1 {
 };
 
 &pcie2x1l2 {
-	pinctrl-0 = <&pcie2_reset>, <&pcie20x1m0_clkreqn>, <&pcie20x1m0_waken>;
+	pinctrl-0 = <&pcie20x1_2_perstn_m0>,
+		    <&pcie20x1m0_clkreqn>,
+		    <&pcie20x1m0_waken>;
 	pinctrl-names = "default";
 	reset-gpios = <&gpio3 RK_PD1 GPIO_ACTIVE_HIGH>;
 	vpcie3v3-supply = <&vcc3v3_wf>;
@@ -368,32 +370,30 @@ io_led: io-led {
 		};
 	};
 
-	pcie {
-		pow_en: pow-en {
-			rockchip,pins = <0 RK_PC5 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-
-		pcie2_reset: pcie2-reset {
-			rockchip,pins = <3 RK_PD1 RK_FUNC_GPIO &pcfg_pull_none>;
+	mdio {
+		gmac1_rstn: gmac1-rstn {
+			rockchip,pins = <3 RK_PB7 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
 
-	power {
-		vcc_5v0_en: vcc-5v0-en {
-			rockchip,pins = <4 RK_PA3 RK_FUNC_GPIO &pcfg_pull_none>;
+	pcie {
+		pcie20x1_2_perstn_m0: pcie20x1-2-perstn-m0 {
+			rockchip,pins = <3 RK_PD1 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
-	};
 
-	rtl8211f {
-		rtl8211f_rst: rtl8211f-rst {
-			rockchip,pins = <3 RK_PB7 RK_FUNC_GPIO &pcfg_pull_none>;
+		pow_en: pow-en {
+			rockchip,pins = <0 RK_PC5 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
 
 	usb {
-		vcc5v0_host_en: vcc5v0-host-en {
+		usb_host_pwren_h: usb-host-pwren-h {
 			rockchip,pins = <4 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
+
+		vcc_5v0_pwren_h: vcc-5v0-pwren-h {
+			rockchip,pins = <4 RK_PA3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
 	};
 };
 
-- 
2.43.0


