Return-Path: <devicetree+bounces-150911-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 816BEA43E5B
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 12:55:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 26F167AC3C5
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 11:53:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BE2D268C5C;
	Tue, 25 Feb 2025 11:53:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-42ac.mail.infomaniak.ch (smtp-42ac.mail.infomaniak.ch [84.16.66.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C73F624EF9B;
	Tue, 25 Feb 2025 11:53:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=84.16.66.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740484439; cv=none; b=MEsNtdSPQ7pqKE6G8pG7c1yG65FXBsERGnkeZx7UqrnZ4Rl77XPaXB/x422IdJuvEnZPJnapEe+TZMKDIrMidvQ2AhWv03c7GUC+muzUexmdCaKOT/Ld0Pn5GEPEN5rsp92aLaE9B3/1KmZNiyTk86Xslw3OUQCc4eaGgT1BtaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740484439; c=relaxed/simple;
	bh=UePJernxTBS3zustV947PWNrKr3eL0qydVeWN40U2no=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=d/9H6+H3YZdCjIB9+gnTjdyg6g1FEwxpRpdBWMf4+f8ATwfewzDhBALMrHT0qgSH+cI0UHGqd8TNGSPl9x9nw3hVwlTzxAFFH7fklT0KGzqYtxuQdL/uANj7/YJhmjmxV0LvTEJY85m899tWus0EsOJBGH1NLhz59/eHvItgqz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0leil.net; spf=pass smtp.mailfrom=0leil.net; arc=none smtp.client-ip=84.16.66.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0leil.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=0leil.net
Received: from smtp-3-0000.mail.infomaniak.ch (unknown [IPv6:2001:1600:4:17::246b])
	by smtp-3-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4Z2GGN5nqqzMnN;
	Tue, 25 Feb 2025 12:53:48 +0100 (CET)
Received: from unknown by smtp-3-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4Z2GGN1rLczCw8;
	Tue, 25 Feb 2025 12:53:48 +0100 (CET)
From: Quentin Schulz <foss+kernel@0leil.net>
Date: Tue, 25 Feb 2025 12:53:30 +0100
Subject: [PATCH v3 2/2] arm64: dts: rockchip: fix pinmux of UART5 for PX30
 Ringneck on Haikou
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250225-ringneck-dtbos-v3-2-853a9a6dd597@cherry.de>
References: <20250225-ringneck-dtbos-v3-0-853a9a6dd597@cherry.de>
In-Reply-To: <20250225-ringneck-dtbos-v3-0-853a9a6dd597@cherry.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Quentin Schulz <quentin.schulz@theobroma-systems.com>, 
 Farouk Bouabid <farouk.bouabid@theobroma-systems.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Quentin Schulz <quentin.schulz@cherry.de>, stable@vger.kernel.org
X-Mailer: b4 0.14.2
X-Infomaniak-Routing: alpha

From: Quentin Schulz <quentin.schulz@cherry.de>

UART5 uses GPIO0_B5 as UART RTS but muxed in its GPIO function,
therefore UART5 must request this pin to be muxed in that function, so
let's do that.

Fixes: 5963d97aa780 ("arm64: dts: rockchip: add rs485 support on uart5 of px30-ringneck-haikou")
Cc: stable@vger.kernel.org
Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
---
 arch/arm64/boot/dts/rockchip/px30-ringneck-haikou.dts | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/px30-ringneck-haikou.dts b/arch/arm64/boot/dts/rockchip/px30-ringneck-haikou.dts
index 9a568f3d0a9916dff22222c59e5e0c94ce226858..0e0d7b755b8733ff03083665f76807cc6954ca3e 100644
--- a/arch/arm64/boot/dts/rockchip/px30-ringneck-haikou.dts
+++ b/arch/arm64/boot/dts/rockchip/px30-ringneck-haikou.dts
@@ -194,6 +194,13 @@ sd_card_led_pin: sd-card-led-pin {
 			  <3 RK_PB3 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
+
+	uart {
+		uart5_rts_pin: uart5-rts-pin {
+			rockchip,pins =
+			  <0 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
 };
 
 &pwm0 {
@@ -227,6 +234,8 @@ &uart0 {
 };
 
 &uart5 {
+	/* Add pinmux for rts-gpios (uart5_rts_pin) */
+	pinctrl-0 = <&uart5_xfer &uart5_rts_pin>;
 	rts-gpios = <&gpio0 RK_PB5 GPIO_ACTIVE_HIGH>;
 	status = "okay";
 };

-- 
2.48.1


