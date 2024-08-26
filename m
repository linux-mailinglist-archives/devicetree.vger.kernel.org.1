Return-Path: <devicetree+bounces-96581-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 243A295EB5A
	for <lists+devicetree@lfdr.de>; Mon, 26 Aug 2024 10:05:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C3EE21F23C71
	for <lists+devicetree@lfdr.de>; Mon, 26 Aug 2024 08:05:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CDA913E033;
	Mon, 26 Aug 2024 08:03:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from muminek.juszkiewicz.com.pl (muminek.juszkiewicz.com.pl [213.251.184.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BDB513DBBB
	for <devicetree@vger.kernel.org>; Mon, 26 Aug 2024 08:03:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.251.184.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724659407; cv=none; b=kfHE9/xqHQ0p5cy0nJCEflzpNTpcEGzlvDNLYYy1wFUopAUndtcfb87Py7hqsvg8OQU1Gd29BViUaMcplHXnUPU5HPsbbl5BrFxhgO1P1iCRl0DNpPY36xSdap7HucOqCAizE2WJxXWorSeSVdfddotmjIyKf7lFSi4ZWQbaGOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724659407; c=relaxed/simple;
	bh=J7UUjYZmbL1xNewKk3d/LQv90sEtigdcNnXaYKIda8A=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Q1fRmoJ8y2g498rWmzNYolIAZYD8TjBtyHoWfvAOInWHRfpnhckPz6c2in8oFaM5msYB3lz/+UP39aD3cNoqT37AjPkTEzUrWMVXMo9y+GwjigVC6GkSku0kDX1ksvZMwjPRs/fMkFcVTxTsaeZG+B6oB9xJfDh2UBULwbmimHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org; spf=fail smtp.mailfrom=linaro.org; arc=none smtp.client-ip=213.251.184.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=linaro.org
Received: from localhost (localhost [127.0.0.1])
	by muminek.juszkiewicz.com.pl (Postfix) with ESMTP id 39D85260AD5;
	Mon, 26 Aug 2024 10:03:18 +0200 (CEST)
X-Virus-Scanned: Debian amavis at juszkiewicz.com.pl
Received: from muminek.juszkiewicz.com.pl ([127.0.0.1])
 by localhost (muminek.juszkiewicz.com.pl [127.0.0.1]) (amavis, port 10024)
 with ESMTP id UtWCNHXdFmKd; Mon, 26 Aug 2024 10:03:16 +0200 (CEST)
Received: from puchatek.local (83.25.211.12.ipv4.supernova.orange.pl [83.25.211.12])
	by muminek.juszkiewicz.com.pl (Postfix) with ESMTPSA id 7FF00260CD3;
	Mon, 26 Aug 2024 10:03:14 +0200 (CEST)
From: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
Date: Mon, 26 Aug 2024 10:02:48 +0200
Subject: [PATCH v5 4/7] arm64: dts: rockchip: add IR-receiver to NanoPC-T6
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240826-friendlyelec-nanopc-t6-lts-v5-4-ba33edda7f17@linaro.org>
References: <20240826-friendlyelec-nanopc-t6-lts-v5-0-ba33edda7f17@linaro.org>
In-Reply-To: <20240826-friendlyelec-nanopc-t6-lts-v5-0-ba33edda7f17@linaro.org>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
 Jonas Karlman <jonas@kwiboo.se>, 
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
X-Mailer: b4 0.14.0

FriendlyELEC NanoPC-T6 has IR receiver connected to PWM3_IR_M0 line
which ends as GPIO0_D4.

Signed-off-by: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
index 292022a56332..710867e658ff 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
@@ -25,6 +25,13 @@ chosen {
 		stdout-path = "serial2:1500000n8";
 	};
 
+	ir-receiver {
+		compatible = "gpio-ir-receiver";
+		gpios = <&gpio0 RK_PD4 GPIO_ACTIVE_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&ir_receiver_pin>;
+	};
+
 	leds {
 		compatible = "gpio-leds";
 
@@ -228,7 +235,7 @@ &gpio0 {
 			  "HEADER_10", "HEADER_08", "HEADER_32", "",
 			  /* GPIO0 D0-D7 */
 			  "", "", "", "",
-			  "", "", "", "";
+			  "IR receiver [PWM3_IR_M0]", "", "", "";
 };
 
 &gpio1 {
@@ -492,6 +499,12 @@ hym8563_int: hym8563-int {
 		};
 	};
 
+	ir-receiver {
+		ir_receiver_pin: ir-receiver-pin {
+			rockchip,pins = <0 RK_PD4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	pcie {
 		pcie2_0_rst: pcie2-0-rst {
 			rockchip,pins = <4 RK_PB3 RK_FUNC_GPIO &pcfg_pull_none>;

-- 
2.46.0


