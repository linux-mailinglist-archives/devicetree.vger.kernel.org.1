Return-Path: <devicetree+bounces-125848-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 964659DF8EA
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 03:34:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 514A01629A0
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 02:34:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D05661F957;
	Mon,  2 Dec 2024 02:34:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91480134A8
	for <devicetree@vger.kernel.org>; Mon,  2 Dec 2024 02:34:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733106884; cv=none; b=aetYhjFqIaL5NboTYiZUv1ivr08fDvmWTtU4MFHCTGTAwsovgU4HB9I6mIt7NRvmU+653HeyylMVwQ8n5fBxFR0cY0vqf0PRM6sKaHzcNGjNYgOku+J9ZNLSLX9TsYRZ8Pi8EJeCNu0MoYFW0sF8qvFtSzGbGtCyngSKwHwGYBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733106884; c=relaxed/simple;
	bh=plZx+uPfGzyc6HMoHb8QCYLltJihchT+qHTYpPoz0jE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=RHj3DfBarV4GzHSMEZ4KYYy7p9289DVVAEyWh1E//HxhusTThpPQ3tLThXY7XZvVikzrgGf6/cpP+t++J5VlADnPBEXJiaHU0DDyyWFxbemaSNRPiTMS0Peh4xHNTrusvyVT2ZBaJ/QvDgzIXnB5YjQdyKxcH8di2Mw2qSL3wbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4B22XVDh000375;
	Mon, 2 Dec 2024 11:33:34 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, sebastian.reichel@collabora.com, alchark@gmail.com,
        inindev@gmail.com, cristian.ciocaltea@collabora.com,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v2 4/4] arm64: dts: rockchip: cosmetic changes for Radxa ROCK 5B
Date: Mon,  2 Dec 2024 02:32:27 +0000
Message-ID: <20241202023227.2671-5-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241202023227.2671-1-naoki@radxa.com>
References: <20241202023227.2671-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

no functional change is intended.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changes in v2:
- none
---
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 13 ++++---------
 1 file changed, 4 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index c29c61b4ffa7..3662549714e6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -138,7 +138,7 @@ vcc5v0_sys: regulator-vcc5v0-sys {
 	vcc5v_usb: regulator-vcc5v-usb {
 		compatible = "regulator-fixed";
 		enable-active-high;
-		gpio = <&gpio4 RK_PB0 GPIO_ACTIVE_HIGH>;
+		gpios = <&gpio4 RK_PB0 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&usb_host_pwren_h>;
 		regulator-name = "vcc5v_usb";
@@ -293,7 +293,7 @@ regulator-state-mem {
 &i2c6 {
 	status = "okay";
 
-	hym8563: rtc@51 {
+	rtc@51 {
 		compatible = "haoyu,hym8563";
 		reg = <0x51>;
 		#clock-cells = <0>;
@@ -309,7 +309,7 @@ hym8563: rtc@51 {
 &i2c7 {
 	status = "okay";
 
-	es8316: audio-codec@11 {
+	audio-codec@11 {
 		compatible = "everest,es8316";
 		reg = <0x11>;
 		assigned-clocks = <&cru I2S0_8CH_MCLKOUT>;
@@ -471,7 +471,6 @@ &sdhci {
 };
 
 &sdio {
-	max-frequency = <200000000>;
 	bus-width = <4>;
 	cap-sdio-irq;
 	disable-wp;
@@ -481,9 +480,6 @@ &sdio {
 	non-removable;
 	pinctrl-names = "default";
 	pinctrl-0 = <&sdiom0_pins>;
-	sd-uhs-sdr12;
-	sd-uhs-sdr25;
-	sd-uhs-sdr50;
 	sd-uhs-sdr104;
 	vmmc-supply = <&vcc3v3_wf>;
 	vqmmc-supply = <&vcc_1v8_s3>;
@@ -492,7 +488,6 @@ &sdio {
 };
 
 &sdmmc {
-	max-frequency = <200000000>;
 	bus-width = <4>;
 	cap-mmc-highspeed;
 	cap-sd-highspeed;
@@ -530,7 +525,7 @@ &spi2 {
 
 	pmic@0 {
 		compatible = "rockchip,rk806";
-		reg = <0x0>;
+		reg = <0>;
 		gpio-controller;
 		#gpio-cells = <2>;
 		interrupt-parent = <&gpio0>;
-- 
2.43.0


