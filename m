Return-Path: <devicetree+bounces-94254-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 62E9A954766
	for <lists+devicetree@lfdr.de>; Fri, 16 Aug 2024 13:04:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0A8CC1F22652
	for <lists+devicetree@lfdr.de>; Fri, 16 Aug 2024 11:04:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3C2016F824;
	Fri, 16 Aug 2024 11:04:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CC6C2A1CF
	for <devicetree@vger.kernel.org>; Fri, 16 Aug 2024 11:04:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723806279; cv=none; b=CFYlxEdICFG6+kUnQCoSI6WkwEKdcwAc0dW7VsH//DmiOrcPvtu/GZRoMNJ/pz/Kqxf5bMZ7qgU/TxuzGFDqZCRRQdpyQ1+QYwv930+3NIn8BjhT86kUSHhtNwq/LCYVBh13WJDrpMmsGB/HAilFKyK+mFwL+29dEt1vhrnv2XY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723806279; c=relaxed/simple;
	bh=+dD/hQyQp982hBBww8/kxRjIWmAkTkrUR0egXD0WC/Q=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=g9capZW6XSiXd7LIMv25sMGfatHLF1koNhKVRetHu0IeJSIJljgBjWy/z0bVim2oLIAYxt4Vhy9yyMK6h6djn4/cctum/dcc7TqeYR4Rj3FvmejysEFrIyPmoDszGTmfM4Pp053Q1sY0U+VBAX+iuLMkQzHqyUMLXixJBr2WXx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 47GB4B0L025184;
	Fri, 16 Aug 2024 20:04:12 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH] arm64: dts: rockchip: use "pwm-leds" for multicolor PWM LEDs on Radxa E25
Date: Fri, 16 Aug 2024 20:04:02 +0900
Message-ID: <20240816110402.840-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

to make multicolor PWM LEDs behavior more consistent with vendor
kernel[1], use "pwm-leds" for it on Radxa E25.

[1] https://github.com/radxa/kernel/blob/linux-5.10-gen-rkr4.1/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts#L100-L121

Fixes: 2bf2f4d9f673 ("arm64: dts: rockchip: Add Radxa CM3I E25")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 .../boot/dts/rockchip/rk3568-radxa-e25.dts    | 36 ++++++++++---------
 1 file changed, 20 insertions(+), 16 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts b/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
index 72ad74c38a2b..0b527f67bdbd 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
@@ -12,26 +12,30 @@ aliases {
 	};
 
 	pwm-leds {
-		compatible = "pwm-leds-multicolor";
+		compatible = "pwm-leds";
 
-		multi-led {
-			color = <LED_COLOR_ID_RGB>;
+		led-red {
+			color = <LED_COLOR_ID_RED>;
+			default-state = "on";
+			function = LED_FUNCTION_STATUS;
 			max-brightness = <255>;
+			pwms = <&pwm1 0 1000000 0>;
+		};
 
-			led-red {
-				color = <LED_COLOR_ID_RED>;
-				pwms = <&pwm1 0 1000000 0>;
-			};
-
-			led-green {
-				color = <LED_COLOR_ID_GREEN>;
-				pwms = <&pwm2 0 1000000 0>;
-			};
+		led-green {
+			color = <LED_COLOR_ID_GREEN>;
+			default-state = "on";
+			function = LED_FUNCTION_STATUS;
+			max-brightness = <255>;
+			pwms = <&pwm2 0 1000000 0>;
+		};
 
-			led-blue {
-				color = <LED_COLOR_ID_BLUE>;
-				pwms = <&pwm12 0 1000000 0>;
-			};
+		led-blue {
+			color = <LED_COLOR_ID_BLUE>;
+			default-state = "on";
+			function = LED_FUNCTION_STATUS;
+			max-brightness = <255>;
+			pwms = <&pwm12 0 1000000 0>;
 		};
 	};
 
-- 
2.43.0


