Return-Path: <devicetree+bounces-133440-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id AAE2A9FA90C
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 02:40:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 510567A1BE2
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 01:40:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A48F16415;
	Mon, 23 Dec 2024 01:40:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FC5611712
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 01:40:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734918004; cv=none; b=dSP7Kc5wkVw/LHkonr0fajLwmCKW0ZMxxLwXKeTrEtO7R0gwEGwvGyHmcCqhJ7gnELtnqTzK8VxE+BJ/s4b+p0BspuOD7TPkDgcoQEfOx81kvUoN6dsmuddwkS37YSdl4WxooVrzPaR8lKVaFHN1pkcp4TKIGo9c9VeQt813NzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734918004; c=relaxed/simple;
	bh=wL/QfvdJbMW+rDcAlxhjBpSX9Ong+8ocrjzq1w8acno=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=VMcM/qw8jzvTY2g61uzpvBDXGPxY2JoQpXovzIVLVFGaom9hepjXud5z4muxmMSjAnKgcB/QMdd9XUjvY9L4kYrFGMLf+dAcoxVndUdthJJjEXSFGXa7jq1PTUtlIjNt/IcGzxhoY3KV8p/hA7KoPPsiAc9S+80PlcRj7+Hm3ZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4BN1dW72024519;
	Mon, 23 Dec 2024 10:39:33 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v6 3/7] arm64: dts: rockchip: Remove the RTC and related nodes for Radxa ROCK 5C
Date: Mon, 23 Dec 2024 01:39:22 +0000
Message-ID: <20241223013926.1134-4-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241223013926.1134-1-naoki@radxa.com>
References: <20241223013926.1134-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

There is no RTC on the actual board, so remove it.

Fixes: 3ddf5cdb77e6 ("arm64: dts: rockchip: add Radxa ROCK 5C")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changes in v6:
- Reword commit message
Changes in v5:
- Reword commit message
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
index 910ec67bd4eb..8b7bb382a20c 100644
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
 
@@ -449,12 +432,6 @@ pow_en: pow-en {
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


