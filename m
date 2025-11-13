Return-Path: <devicetree+bounces-238127-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F235C57796
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 13:45:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 034474E0503
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 12:45:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60C852D73A6;
	Thu, 13 Nov 2025 12:45:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F3A5280025
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 12:45:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763037941; cv=none; b=ILYqtVtQM+yQFGcLvnqFw69NBIr1E1tUY44iu4MIgRMl+/V2svoceYndGtGNNKIwus9NNMlRGQ5VygHWvMOE+COy8SqyhcVDOcGWpC5siPRxJl+v7Fke7JFMl156tHkOwev2IZyCdSNxBgrLzE4r6WYYUtKso8JHMk1n1hWTk7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763037941; c=relaxed/simple;
	bh=L7QLfXqJawNj2NsHYov054voij2XqK5Z2x0B046fuFw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=b/DiaXGmfvzysJb01WF2cx/MN9Krx3RZxKyZAFwtUvqBHdr/clwvrnN4KsPanvIVml7F7HU0FlONmRyCndazrlxCZGCiQr/nH8H2pw1WcMBSf4ppIDHeK2RLgxfbOBvumM+4JoszjKtxIdQOkjuDSW/SbD32CSdB9FxgYCDvgVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 5ADCgQXw030553;
	Thu, 13 Nov 2025 21:42:33 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, pgwipeout@gmail.com, didi.debian@cknow.org,
        jonas@kwiboo.se, ziyao@disroot.org, amadeus@jmu.edu.cn,
        nicolas.frattaroli@collabora.com, pbrobinson@gmail.com,
        wens@kernel.org, detlev.casanova@collabora.com, stephen@radxa.com,
        sebastian.reichel@collabora.com, liujianfeng1994@gmail.com,
        andy.yan@rock-chips.com, dmitry.baryshkov@oss.qualcomm.com,
        kuninori.morimoto.gx@renesas.com, damon.ding@rock-chips.com,
        kylepzak@projectinitiative.io, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v3 3/3] arm64: dts: rockchip: Remove default-state = "off" from LEDs for Radxa boards
Date: Thu, 13 Nov 2025 12:42:22 +0000
Message-ID: <20251113124222.4691-4-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251113124222.4691-1-naoki@radxa.com>
References: <20251113124222.4691-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Currently, on Radxa boards, the power LED is turned on immediately
after power-up, independent of software control. The heartbeat LED and
other available LEDs are subsequently turned on by the initial
software, such as U-Boot, to indicate software is running.

However, the device tree description for this behavior is inconsistent
and fragmented, with definitions split between the main Linux DTS
files and separate U-Boot files (u-boot/arch/arm/dts/*-u-boot.dtsi).

This patch addresses inconsistency by removing redundant default-state
= "off" definitions, as this is already the default configuration.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts | 2 --
 arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dts | 2 --
 2 files changed, 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts b/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts
index b324527561558..79d316a1d8495 100644
--- a/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts
@@ -62,7 +62,6 @@ leds {
 
 		led-lan {
 			color = <LED_COLOR_ID_GREEN>;
-			default-state = "off";
 			function = LED_FUNCTION_LAN;
 			gpios = <&gpio4 RK_PB5 GPIO_ACTIVE_HIGH>;
 			linux,default-trigger = "netdev";
@@ -78,7 +77,6 @@ led-sys {
 
 		led-wan {
 			color = <LED_COLOR_ID_GREEN>;
-			default-state = "off";
 			function = LED_FUNCTION_WAN;
 			gpios = <&gpio4 RK_PC0 GPIO_ACTIVE_HIGH>;
 			linux,default-trigger = "netdev";
diff --git a/arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dts b/arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dts
index 854c118418eb8..f737769d4a007 100644
--- a/arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dts
@@ -71,7 +71,6 @@ leds-1 {
 
 		led-1 {
 			color = <LED_COLOR_ID_GREEN>;
-			default-state = "off";
 			function = LED_FUNCTION_LAN;
 			linux,default-trigger = "netdev";
 			pwms = <&pwm14 0 1000000 PWM_POLARITY_INVERTED>;
@@ -80,7 +79,6 @@ led-1 {
 
 		led-2 {
 			color = <LED_COLOR_ID_GREEN>;
-			default-state = "off";
 			function = LED_FUNCTION_WAN;
 			linux,default-trigger = "netdev";
 			pwms = <&pwm11 0 1000000 PWM_POLARITY_INVERTED>;
-- 
2.43.0


