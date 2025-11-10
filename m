Return-Path: <devicetree+bounces-236489-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D0E02C44D0D
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 04:01:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id A12104E68D4
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 03:01:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2003B54918;
	Mon, 10 Nov 2025 03:01:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8288515ECCC
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 03:01:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762743692; cv=none; b=Js97Vbq9SZlN/tW60HooGRKDvswqlKupzPPIRmdrf/IoGOLFPHhfbDzYk2Q2NAOeTzpz7k0r2x3QF5uvGikmCJZJ7HvwRKoR9zS240WuG5Qo1IvecA/7IXe5CQndnDNWqKFwvGr79HtLGlMt8CPIrgb+AVo30WyzoRzzOupuWNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762743692; c=relaxed/simple;
	bh=NgxyCIY4E0BkS7TU2AaaT10Z9p/tqaXh+kpAXNpAvsU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=LHAxcO9mxWTpZi7sRTRNFI8ox55tdj/+MrNia9vFGKaVsCN9m8rFTrP2YWF0dgCBA5pATO43r7HafcXmt7uBLgWy3x5TAM3hSL5mqVx9AwMnfV0QBak+E8G7RLjEj3grzh6vTA8B6h1xHx4J8geXHXdEsEEEMY/XX1iOzetbOwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 5AA30mHk016962;
	Mon, 10 Nov 2025 12:00:48 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        andy.yan@rock-chips.com, dmitry.baryshkov@oss.qualcomm.com,
        sebastian.reichel@collabora.com, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [RFC PATCH] arm64: dts: rockchip: Fix microSD card detect for Radxa ROCK 5 ITX
Date: Mon, 10 Nov 2025 03:00:36 +0000
Message-ID: <20251110030036.825150-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Due to the discussion about cd-gpios and sdmmmc_det pin
functionality[1], it would be better to use cd-gpios for now.

[1] https://lore.kernel.org/linux-rockchip/20240912152538.1.I858c2a0bf83606c8b59ba1ab6944978a398d2ac5@changeid/T/#u

Fixes: 31390eb8ffbf2 ("arm64: dts: rockchip: add ROCK 5 ITX board")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
index bc8140883de47..391c6482e8ee3 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
@@ -670,6 +670,12 @@ led_pins: led-pins {
 		};
 	};
 
+	mmc {
+		sdmmc_det_gpio: sdmmc-det-gpio {
+			rockchip,pins = <0 RK_PA4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	pcie {
 		pcie20x1_2_perstn: pcie20x1-2-perstn {
 			rockchip,pins = <3 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
@@ -795,12 +801,13 @@ &sdmmc {
 	bus-width = <4>;
 	cap-mmc-highspeed;
 	cap-sd-highspeed;
+	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
 	disable-wp;
 	max-frequency = <200000000>;
 	no-sdio;
 	no-mmc;
 	pinctrl-names = "default";
-	pinctrl-0 = <&sdmmc_bus4 &sdmmc_clk &sdmmc_cmd &sdmmc_det>;
+	pinctrl-0 = <&sdmmc_bus4 &sdmmc_clk &sdmmc_cmd &sdmmc_det_gpio>;
 	sd-uhs-sdr104;
 	vmmc-supply = <&vcc_3v3_s3>;
 	vqmmc-supply = <&vccio_sd_s0>;
-- 
2.43.0


