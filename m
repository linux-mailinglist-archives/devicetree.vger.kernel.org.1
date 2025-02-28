Return-Path: <devicetree+bounces-152443-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A44AA491B8
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 07:42:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AD3863B834C
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 06:41:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 910EF1D47B4;
	Fri, 28 Feb 2025 06:41:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="AU8pBJ53"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [121.127.44.73])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B0741CDA2D
	for <devicetree@vger.kernel.org>; Fri, 28 Feb 2025 06:41:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=121.127.44.73
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740724866; cv=none; b=JOuWS2JnTpradEfV9FSO0tjqeKTq1QnQMrlSCa/ri5Yb3LpliGpBXVXp8XsnVmOuejbE4rGwdaF6BJ1wlKOQsQp/GpwW40brh5w8Il6zWfk4ZKBdRpkozJ9+pxOVGUMWaLSapNmV4BoqD5bVQzhSfPFm/+OpOQsMTUGc2Rsyg/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740724866; c=relaxed/simple;
	bh=nyrL5D5OZSi4spdot+X1n5W44KzRKVKMqtlNM/kicWo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=sp/aiZw1lcPTvI78FhlXqoky4HM+tgfZTSSXHTmfNIp+K1f86i8Y1WoHIaJD5Vob0BMASi7VBtU8bRxAzdR72tvcelcb2qgQmQh3WLYfsIS16tJUpGJ3TIlpOGCLcThi5wgRZT3EJOkAtvx8c0QCYQ2vXLX5p3vwgbKtW7N/qso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=AU8pBJ53; arc=none smtp.client-ip=121.127.44.73
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1740724863; bh=5Jo9yXuPRKn/9jusZJeonZA0HEr47rkDIZi25HF2beM=;
 b=AU8pBJ53gaedy5wbK+5PO1U5IhUCnRz4NQDy11w84lUiGkeWs2+3VATDx2H6RsvW1lsvsunR6
 AAHzIq1Vdidm9mUB+HYIgh1AKTSQ6plLZfdtgmcYLYVCDu24q4YbippHtbPjsVYP3dui6HUnODG
 NydKNjgAvb/RN2VerjysOQWBSQXr9jL54/3kjy4Iz4qR+O5iKekXpceUXcJmQRiXa+9lsSmFIiL
 /I56FF7sXBMh9C4RGg8knMNdhW/GVuPtDN/xo+Bu2D+Enb3GygkIfCfhiv5oUleZh1OZD57pP0j
 P8tbKbcqnl/0cHmp9WhWc9aM7iU0u5JhIh9Srsf9knVQ==
X-Forward-Email-ID: 67c15a7dbcf1d1bd23db022f
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.73
X-Forward-Email-Version: 0.4.40
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Linus Walleij <linus.walleij@linaro.org>,
	Yao Zi <ziyao@disroot.org>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH 7/7] arm64: dts: rockchip: Add gpio-leds node to Radxa E20C
Date: Fri, 28 Feb 2025 06:40:13 +0000
Message-ID: <20250228064024.3200000-8-jonas@kwiboo.se>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250228064024.3200000-1-jonas@kwiboo.se>
References: <20250228064024.3200000-1-jonas@kwiboo.se>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Radxa E20C has three gpio controlled leds (sys, wan and lan).

Add a gpio-leds node and set default trigger to heartbeat for the sys
led and netdev for the lan and wan leds.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 .../boot/dts/rockchip/rk3528-radxa-e20c.dts   | 45 +++++++++++++++++++
 1 file changed, 45 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts b/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts
index d19e319b4100..7a14f8d5d601 100644
--- a/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts
@@ -8,6 +8,7 @@
 /dts-v1/;
 
 #include <dt-bindings/input/input.h>
+#include <dt-bindings/leds/common.h>
 #include "rk3528.dtsi"
 
 / {
@@ -45,6 +46,36 @@ button-user {
 		};
 	};
 
+	gpio-leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&lan_led_g>, <&sys_led_g>, <&wan_led_g>;
+
+		led-lan {
+			color = <LED_COLOR_ID_GREEN>;
+			default-state = "off";
+			function = LED_FUNCTION_LAN;
+			gpios = <&gpio4 RK_PB5 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "netdev";
+		};
+
+		led-sys {
+			color = <LED_COLOR_ID_GREEN>;
+			default-state = "on";
+			function = LED_FUNCTION_HEARTBEAT;
+			gpios = <&gpio4 RK_PC1 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "heartbeat";
+		};
+
+		led-wan {
+			color = <LED_COLOR_ID_GREEN>;
+			default-state = "off";
+			function = LED_FUNCTION_WAN;
+			gpios = <&gpio4 RK_PC0 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "netdev";
+		};
+	};
+
 	vcc_1v8: regulator-1v8-vcc {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc_1v8";
@@ -81,6 +112,20 @@ user_key: user-key {
 			rockchip,pins = <0 RK_PA0 RK_FUNC_GPIO &pcfg_pull_up>;
 		};
 	};
+
+	gpio-leds {
+		lan_led_g: lan-led-g {
+			rockchip,pins = <4 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		sys_led_g: sys-led-g {
+			rockchip,pins = <4 RK_PC1 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		wan_led_g: wan-led-g {
+			rockchip,pins = <4 RK_PC0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
 };
 
 &saradc {
-- 
2.48.1


