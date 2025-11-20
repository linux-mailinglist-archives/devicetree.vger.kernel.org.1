Return-Path: <devicetree+bounces-240661-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id D0871C73DC1
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 13:01:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.lore.kernel.org (Postfix) with ESMTPS id EFB912AA17
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 12:01:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0EAEF3112BD;
	Thu, 20 Nov 2025 12:01:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m49197.qiye.163.com (mail-m49197.qiye.163.com [45.254.49.197])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5319B2ECE86;
	Thu, 20 Nov 2025 12:01:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.254.49.197
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763640071; cv=none; b=f9+Kb2iHXHLKi3N1dTZo/sOxVSNiXxu03V9joWXUtHbXNnbB6t+PJdzzhT0p4+6+wrEFiG0HZX5JViQqaOYrri1n7yJEXQt9wye3iCRVkmCnLga5k0zMKpGYBtRKcd0+Kf0WrwLZ5pKzVD7L44Enm0P+5PcAQruJTiYR1l+3VL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763640071; c=relaxed/simple;
	bh=OsD+suA+nJYfV3HPDfJikOOYXktA1JaMQ48CThly2Hs=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=g+pCC0CWzweKtNsazINPb30T/T/e6WP+qc+TUyTuyUNoYso0mVxX/r+GhK8yALShd3YbV4ShGa4h0DdL9hTrZjli5JOl3loRj2+t40xsryY8Z4H0ZtCTw8clK761or/b5sYgCM2JOLvt5cZDVOLKBG0y1pelNrMOraivb4eq/ro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn; spf=pass smtp.mailfrom=jmu.edu.cn; arc=none smtp.client-ip=45.254.49.197
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jmu.edu.cn
Received: from localhost.localdomain (unknown [116.25.94.95])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2a4b7715d;
	Thu, 20 Nov 2025 20:01:06 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Chukun Pan <amadeus@jmu.edu.cn>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 3/5] arm64: dts: rockchip: enable button for 100ASK DshanPi A1
Date: Thu, 20 Nov 2025 20:00:09 +0800
Message-Id: <20251120120011.279104-4-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20251120120011.279104-1-amadeus@jmu.edu.cn>
References: <20251120120011.279104-1-amadeus@jmu.edu.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9aa123c12403a2kunm2d0ac75b4ac49
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkZGh5PVh1JH0xLSEtDSB1CGVYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlKSk1VSU5VQk9VQk5ZV1kWGg8SFR0UWUFZT0tIVUpLSEpOTE5VSktLVUpCS0
	tZBg++

The 100ASK DshanPi A1 board has three ADC buttons and one
GPIO button. Enable them.

Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
---
 .../dts/rockchip/rk3576-100ask-dshanpi-a1.dts | 67 +++++++++++++++++++
 1 file changed, 67 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-100ask-dshanpi-a1.dts b/arch/arm64/boot/dts/rockchip/rk3576-100ask-dshanpi-a1.dts
index 815f75e7cd70..9ef41f0c6920 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-100ask-dshanpi-a1.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-100ask-dshanpi-a1.dts
@@ -7,6 +7,7 @@
 /dts-v1/;
 
 #include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
 #include <dt-bindings/leds/common.h>
 #include <dt-bindings/pinctrl/rockchip.h>
 #include <dt-bindings/soc/rockchip,vop2.h>
@@ -66,6 +67,61 @@ hdmi_con_in: endpoint {
 		};
 	};
 
+	keys-0 {
+		compatible = "adc-keys";
+		io-channels = <&saradc 0>;
+		io-channel-names = "buttons";
+		keyup-threshold-microvolt = <1800000>;
+		poll-interval = <100>;
+
+		button-maskrom {
+			label = "MASKROM";
+			linux,code = <KEY_SETUP>;
+			press-threshold-microvolt = <0>;
+		};
+	};
+
+	keys-1 {
+		compatible = "adc-keys";
+		io-channels = <&saradc 1>;
+		io-channel-names = "buttons";
+		keyup-threshold-microvolt = <1800000>;
+		poll-interval = <100>;
+
+		button-recovery {
+			label = "RECOVERY";
+			linux,code = <KEY_VENDOR>;
+			press-threshold-microvolt = <0>;
+		};
+	};
+
+	keys-2 {
+		compatible = "adc-keys";
+		io-channels = <&saradc 4>;
+		io-channel-names = "buttons";
+		keyup-threshold-microvolt = <1800000>;
+		poll-interval = <100>;
+
+		button-user2 {
+			label = "USER2";
+			linux,code = <BTN_2>;
+			press-threshold-microvolt = <0>;
+		};
+	};
+
+	keys-3 {
+		compatible = "gpio-keys";
+		pinctrl-names = "default";
+		pinctrl-0 = <&gpio0_a0_d>;
+
+		button-user1 {
+			gpios = <&gpio0 RK_PA0 GPIO_ACTIVE_LOW>;
+			label = "USER1";
+			linux,code = <BTN_1>;
+			wakeup-source;
+		};
+	};
+
 	vcc_in: regulator-vcc-12v0-dcin {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc_in";
@@ -661,6 +717,12 @@ gmac1_rst: gmac1-rst {
 		};
 	};
 
+	gpio-keys {
+		gpio0_a0_d: gpio0-a0-d {
+			rockchip,pins = <0 RK_PA0 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
 	headphone {
 		hp_det: hp-det {
 			rockchip,pins = <0 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
@@ -688,6 +750,11 @@ &sai6 {
 	status = "okay";
 };
 
+&saradc {
+	vref-supply = <&vcca1v8_pldo2_s0>;
+	status = "okay";
+};
+
 &sdhci {
 	bus-width = <8>;
 	full-pwr-cycle-in-suspend;
-- 
2.25.1


