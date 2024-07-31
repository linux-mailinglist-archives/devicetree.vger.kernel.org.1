Return-Path: <devicetree+bounces-89814-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B43B6942CD8
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2024 13:08:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E70001C20A12
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2024 11:08:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 810841B29A7;
	Wed, 31 Jul 2024 11:06:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-bc0e.mail.infomaniak.ch (smtp-bc0e.mail.infomaniak.ch [45.157.188.14])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6EB21B142B
	for <devicetree@vger.kernel.org>; Wed, 31 Jul 2024 11:06:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.157.188.14
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722423995; cv=none; b=Hk61EfhjPxd16Eg9ueFtsQ3YSoMdjM06l336jc/nTJ5gy3ghrgLcVpiuEgwM2oTX4DMdy/gtFF4WYrL1np2CabrddbwPCPYeNZQzv/gNfuTLpofw+/rYCsQHFfZRpeLpOd/yXv/Kmsagg3m+NSQOy1Po6uFycdXN7DQSsO/gTSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722423995; c=relaxed/simple;
	bh=x2LrKK5tcGR0WVNSKSNm+lRjBT558gT2pvQ5vmXD+Cc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=nQ3CPNH1lCNM2T4cXl9vEoYTDqSFRaIOSMHtCwEYDEmI3OM/xAw8h8JX3RQHSoeaxOwpoGQM4vqEKc725rjc/eOvMa0rvzeyQzlqvRB/G35hwloqPHiIUQl0M5VroBq7MPguVD+4DF9KJnFxsY8JYRctCbjaInhlnADVlH6ciwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0leil.net; spf=pass smtp.mailfrom=0leil.net; arc=none smtp.client-ip=45.157.188.14
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0leil.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=0leil.net
Received: from smtp-3-0000.mail.infomaniak.ch (smtp-3-0000.mail.infomaniak.ch [10.4.36.107])
	by smtp-3-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4WYq686GwNzVx2;
	Wed, 31 Jul 2024 13:06:24 +0200 (CEST)
Received: from unknown by smtp-3-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4WYq680w8hzTBq;
	Wed, 31 Jul 2024 13:06:24 +0200 (CEST)
From: Quentin Schulz <foss+kernel@0leil.net>
Date: Wed, 31 Jul 2024 13:05:29 +0200
Subject: [PATCH 2/2] arm64: dts: rockchip: override BIOS_DISABLE signal via
 GPIO hog on RK3399 Puma
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240731-puma-emmc-6-v1-2-4e28eadf32d0@cherry.de>
References: <20240731-puma-emmc-6-v1-0-4e28eadf32d0@cherry.de>
In-Reply-To: <20240731-puma-emmc-6-v1-0-4e28eadf32d0@cherry.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Judy Hsiao <judyhsiao@chromium.org>, 
 Brian Norris <briannorris@chromium.org>
Cc: stable@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Quentin Schulz <quentin.schulz@cherry.de>, 
 foss+kernel@0leil.net
X-Mailer: b4 0.14.0
X-Infomaniak-Routing: alpha

From: Quentin Schulz <quentin.schulz@cherry.de>

The Qseven BIOS_DISABLE signal on the RK3399-Q7 keeps the on-module eMMC
and SPI flash powered-down initially (in fact it keeps the reset signal
asserted). BIOS_DISABLE_OVERRIDE pin allows to override that signal so
that eMMC and SPI can be used regardless of the state of the signal.

Let's make this GPIO a hog so that it's reserved and locked in the
proper state.

At the same time, make sure the pin is reserved for the hog and cannot
be requested by another node.

Cc: stable@vger.kernel.org
Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
---
 arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi | 23 ++++++++++++++++++++++-
 1 file changed, 22 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
index a782e614d9bba..d24444cdf54af 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
@@ -154,6 +154,22 @@ bios-disable-hog {
 	};
 };
 
+&gpio3 {
+	/*
+	 * The Qseven BIOS_DISABLE signal on the RK3399-Q7 keeps the on-module
+	 * eMMC and SPI flash powered-down initially (in fact it keeps the
+	 * reset signal asserted). BIOS_DISABLE_OVERRIDE pin allows to override
+	 * that signal so that eMMC and SPI can be used regardless of the state
+	 * of the signal.
+	 */
+	bios-disable-override-hog {
+		gpios = <RK_PD5 GPIO_ACTIVE_LOW>;
+		gpio-hog;
+		line-name = "bios_disable_override";
+		output-high;
+	};
+};
+
 &gmac {
 	assigned-clocks = <&cru SCLK_RMII_SRC>;
 	assigned-clock-parents = <&clkin_gmac>;
@@ -458,9 +474,14 @@ &pcie_clkreqn_cpm {
 
 &pinctrl {
 	pinctrl-names = "default";
-	pinctrl-0 = <&q7_thermal_pin>;
+	pinctrl-0 = <&q7_thermal_pin &bios_disable_override_hog_pin>;
 
 	gpios {
+		bios_disable_override_hog_pin: bios-disable-override-hog-pin {
+			rockchip,pins =
+				<3 RK_PD5 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+
 		q7_thermal_pin: q7-thermal-pin {
 			rockchip,pins =
 				<0 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>;

-- 
2.45.2


