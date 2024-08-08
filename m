Return-Path: <devicetree+bounces-92028-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id CDF3A94B9D0
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2024 11:38:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5749FB21169
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2024 09:38:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A82A189B9A;
	Thu,  8 Aug 2024 09:38:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 834971487ED
	for <devicetree@vger.kernel.org>; Thu,  8 Aug 2024 09:38:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723109926; cv=none; b=oU27OAzCPO/cCjozAnVn4gUbllEo5f3UU0fgv1CTh3Pzp2Ahi1Kz4jmr2Ck/y8H04cHu50JYauWPmpwOF4X36wGbV/uOfk7P3ak4GmbogQbxq6GHPRCMbvzJXkACgi0nuB4y6mpCgg4J5ExCZmSiBc7QUmKzjdl9FRAoyonAm5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723109926; c=relaxed/simple;
	bh=wcSlkd6+wuYBHma2jbjAam43m+xU6U7jTKXtDIxUWKs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Xsf2zN5O2W8Z3Z+/QeNObDA3iQbW+Xy6ckeEYIznSb7BRvXoBBMuncHPOCoR8mEOkpP7ztm4antkTU3gaqCxQJ3mt4QtB3l7VRjYkgauboroSkIiJGvimPSu4sXSkqa+O7ciZpwhjIlFGlYjzdnrRe24LTy2Om7dFVtequWjmH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4789cSE6030905;
	Thu, 8 Aug 2024 18:38:30 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 05/10] arm64: dts: rockchip: standardize the definition of LEDs for Radxa CM3 IO
Date: Thu,  8 Aug 2024 18:38:03 +0900
Message-ID: <20240808093808.1740-6-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240808093808.1740-1-naoki@radxa.com>
References: <20240808093808.1740-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

- sort properties
- add default-state for led-1
- change function for led-0 from STATUS to HEARTBEAT
- change trigger for led-0 from "timer" to "heartbeat"
- change trigger for led-1 from "heartbeat" to "timer"

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts | 5 +++--
 arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi   | 6 +++---
 2 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts b/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts
index 3ae24e39450a..f9033d9d17f8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts
@@ -44,10 +44,11 @@ leds {
 		compatible = "gpio-leds";
 
 		led-1 {
-			gpios = <&gpio4 RK_PA4 GPIO_ACTIVE_LOW>;
 			color = <LED_COLOR_ID_GREEN>;
+			default-state = "on";
 			function = LED_FUNCTION_ACTIVITY;
-			linux,default-trigger = "heartbeat";
+			gpios = <&gpio4 RK_PA4 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "timer";
 			pinctrl-names = "default";
 			pinctrl-0 = <&pi_nled_activity>;
 		};
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi
index 45de2630bb50..81783d748707 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi
@@ -18,11 +18,11 @@ leds {
 		compatible = "gpio-leds";
 
 		led-0 {
-			gpios = <&gpio0 RK_PA6 GPIO_ACTIVE_HIGH>;
 			color = <LED_COLOR_ID_GREEN>;
-			function = LED_FUNCTION_STATUS;
-			linux,default-trigger = "timer";
 			default-state = "on";
+			function = LED_FUNCTION_HEARTBEAT;
+			gpios = <&gpio0 RK_PA6 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "heartbeat";
 			pinctrl-names = "default";
 			pinctrl-0 = <&user_led2>;
 		};
-- 
2.43.0


