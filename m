Return-Path: <devicetree+bounces-68251-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FC9A8CB546
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 23:15:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D74411F2270B
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 21:15:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6EB8D50276;
	Tue, 21 May 2024 21:11:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="a2QKBYdf"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [167.172.40.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9E7B1514FA
	for <devicetree@vger.kernel.org>; Tue, 21 May 2024 21:11:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=167.172.40.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716325906; cv=none; b=b50kKBxFK0LjSANMrwWRqwfQmCjfwuvRJG9UV96gHk0ppyEwHbGv48YytGTSZGLyjdVHihIYf01dkmNkhWWti4McWvj5suZPJYywYMXgwTNoMWeQYhki1V6Zj8LMrlVPGKb1d+SqKhWnNdP7CFUIVAm/FHpqEXY6yE+h8pEImb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716325906; c=relaxed/simple;
	bh=vgUPXlXlmK6yjMF3YOYZke5ISs5p8Y4/YiJ42OIkdKA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Vr0/o7ch5wp50EJL6RMBxEdvLrOus3BiW2oLHViKszXiAtnw3h3bh1Rutu6aCELSkr08DXpG9IPMBdg+37HaV2oEWMJIzXStHpgxzefsYH4eedCuPtg7QshDvBVPSrob3UFIKerJ6xuTe2bKZ+xkMBPNkoHGRWZWpe0Y8aC6/8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=a2QKBYdf; arc=none smtp.client-ip=167.172.40.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1716325892; bh=e2XmCYKg+DEbJTHFYQfWLLGn67ZCrbca5etc71lmhE0=;
 b=a2QKBYdf73bmZZFxbhFtjbLuBJKDBig6R3CJ0GyooYRCq7pi9l24NR+ICoNEQ2Z/aLTX5H343
 ObHT1orjHzKCipicUScyVQ1J9nlKNw6Bc5LaNSCf9/XsqnRoYn6qMS5ChZK6gCOP83K2KwBOMSg
 BHc3Tm0JaKuZmvRtI5/sH0hUIPAISkEQg9Iu+DykYNpIUllPofVi+m2r7jE2i995T0/lM0owL2m
 p61H71yX8ZGejkoJHA4rllkECedTsAHwajM5T4J97syteBuOYCFWK4/IX5SVrsDNYt33oL5OdNl
 ecTWyiPQf7DztzUL2DyPZgHHcp+fqFZ0lgBH981oKqMg==
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Sjoerd Simons <sjoerd@collabora.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Jonas
 Karlman <jonas@kwiboo.se>
Subject: [PATCH 13/13] arm64: dts: rockchip: rk3308-rock-pi-s: Update WIFi/BT related nodes
Date: Tue, 21 May 2024 21:10:16 +0000
Message-ID: <20240521211029.1236094-14-jonas@kwiboo.se>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240521211029.1236094-1-jonas@kwiboo.se>
References: <20240521211029.1236094-1-jonas@kwiboo.se>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 167.172.40.54
X-ForwardEmail-ID: 664d0e018b6b0c828344af8f

Update WiFi SDIO and BT UART related props to better reflect details
about the optional onboard RTL8723DS WiFi/BT module.

Also correct the compatible used for bluetooth to match the WiFi/BT
module used on the board.

Fixes: bc3753aed81f ("arm64: dts: rockchip: rock-pi-s add more peripherals")
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 .../boot/dts/rockchip/rk3308-rock-pi-s.dts    | 40 +++++++++++++++++--
 1 file changed, 36 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts b/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
index 5c702f00b27f..62d18ca769a1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
@@ -17,6 +17,7 @@ aliases {
 		ethernet0 = &gmac;
 		mmc0 = &emmc;
 		mmc1 = &sdmmc;
+		mmc2 = &sdio;
 	};
 
 	chosen {
@@ -245,6 +246,20 @@ &pinctrl {
 	pinctrl-names = "default";
 	pinctrl-0 = <&rtc_32k>;
 
+	bluetooth {
+		bt_reg_on: bt-reg-on {
+			rockchip,pins = <4 RK_PB3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		bt_wake_host: bt-wake-host {
+			rockchip,pins = <4 RK_PB4 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+
+		host_wake_bt: host-wake-bt {
+			rockchip,pins = <4 RK_PB2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	gmac {
 		mac_rst: mac-rst {
 			rockchip,pins = <0 RK_PA7 RK_FUNC_GPIO &pcfg_pull_none>;
@@ -294,11 +309,24 @@ &sdio {
 	cap-sd-highspeed;
 	cap-sdio-irq;
 	keep-power-in-suspend;
-	max-frequency = <1000000>;
+	max-frequency = <100000000>;
 	mmc-pwrseq = <&sdio_pwrseq>;
+	no-mmc;
+	no-sd;
 	non-removable;
-	sd-uhs-sdr104;
+	sd-uhs-sdr50;
+	vmmc-supply = <&vcc_io>;
+	vqmmc-supply = <&vcc_1v8>;
 	status = "okay";
+
+	rtl8723ds: wifi@1 {
+		reg = <1>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PA0 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "host-wake";
+		pinctrl-names = "default";
+		pinctrl-0 = <&wifi_host_wake>;
+	};
 };
 
 &sdmmc {
@@ -330,12 +358,16 @@ &uart0 {
 };
 
 &uart4 {
+	uart-has-rtscts;
 	status = "okay";
 
 	bluetooth {
-		compatible = "realtek,rtl8723bs-bt";
-		device-wake-gpios = <&gpio4 RK_PB3 GPIO_ACTIVE_HIGH>;
+		compatible = "realtek,rtl8723ds-bt";
+		device-wake-gpios = <&gpio4 RK_PB2 GPIO_ACTIVE_HIGH>;
+		enable-gpios = <&gpio4 RK_PB3 GPIO_ACTIVE_HIGH>;
 		host-wake-gpios = <&gpio4 RK_PB4 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&bt_reg_on &bt_wake_host &host_wake_bt>;
 	};
 };
 
-- 
2.43.2


