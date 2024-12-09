Return-Path: <devicetree+bounces-128720-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 39B429E94E3
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 13:52:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 21A0E188207C
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 12:52:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B463227BAA;
	Mon,  9 Dec 2024 12:52:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1510B228CBD
	for <devicetree@vger.kernel.org>; Mon,  9 Dec 2024 12:52:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733748753; cv=none; b=jSOOWTMDxU/MbOCV+0lr/8qhMLsmYWcs1qIIFnXL33U8zUbTZRR+B8l5fs5XKhOvlYvzmWfiVTWox3saOa0qWmck3VU+LMLy5pjEi+XR+IMjmHgn9LuIM0N1cuD/aCE4PQfpDD0bqweabtOX/tn5AuzEvZ693O5lD1N/tgIPq2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733748753; c=relaxed/simple;
	bh=mb2NJxpEaA1qnKDDKxfCdCOdp1iLK40T6Uutcaoq1KA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qO7Hr8oJdg/7rxN7HGmxAHpWkFZESgNdzJBLTnoAj3HMLp5N8114FPY+5BVMUVYZLQ+SxGuleRosf/BkMaS98I7adqXZ+QSd14rSIzNSdrWA4krq1/vvkcxbwy8caaHNDhW3ZqWXiyTgpDnFUrt5rWSxeZtf00RfSRVs88BZV5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4B9CpdQ6031943;
	Mon, 9 Dec 2024 21:51:47 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, sebastian.reichel@collabora.com,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v4 06/12] arm64: dts: rockchip: remove RTC and related node for Radxa ROCK 5C
Date: Mon,  9 Dec 2024 12:51:25 +0000
Message-ID: <20241209125131.4101-7-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241209125131.4101-1-naoki@radxa.com>
References: <20241209125131.4101-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

RTC doesn't exist on actual board. remove it.

Fixes: 3ddf5cdb77e6 ("arm64: dts: rockchip: add Radxa ROCK 5C")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changes in v4:
- none
Changes in v3:
- none
Changes in v2:
- new
---
 .../boot/dts/rockchip/rk3588s-rock-5c.dts     | 23 -------------------
 1 file changed, 23 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
index 01537b47f880..1ba94396aab8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
@@ -350,23 +350,6 @@ regulator-state-mem {
 	};
 };
 
-&i2c5 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&i2c5m2_xfer>;
-	status = "okay";
-
-	rtc@51 {
-		compatible = "haoyu,hym8563";
-		reg = <0x51>;
-		#clock-cells = <0>;
-		clock-output-names = "rtcic_32kout";
-		interrupt-parent = <&gpio0>;
-		interrupts = <RK_PB0 IRQ_TYPE_LEVEL_LOW>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&rtc_int_l>;
-	};
-};
-
 &i2c7 {
 	status = "okay";
 
@@ -451,12 +434,6 @@ pow_en: pow-en {
 		};
 	};
 
-	rtc {
-		rtc_int_l: rtc-int-l {
-			rockchip,pins = <0 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-
 	usb {
 		usb_host_pwren_h: usb-host-pwren-h {
 			rockchip,pins = <4 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
-- 
2.43.0


