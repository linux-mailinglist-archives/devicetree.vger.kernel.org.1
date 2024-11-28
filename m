Return-Path: <devicetree+bounces-125285-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E7A29DB71E
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 13:07:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1FBF7B21428
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 12:07:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 486CF18D63A;
	Thu, 28 Nov 2024 12:07:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F2322CCC0
	for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 12:07:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732795666; cv=none; b=CJz/5KzxLIOy/PStBmGx61I8dzIHn/FhVZ/ncMy/fAQmiomaq/fwfHQwmmgvfm81ghLw80FujkqSqdPKaTe8kKb6+E33+BGSn8QRg8tJyJXHwMOe8RT8cllszcuOpvoKleBjWrZIcyeeE9HAWNwSV0FukD0/KP+N6P9El14BP6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732795666; c=relaxed/simple;
	bh=Lwev6TgkXcr4ldew9C1pId/lW9dvt1fIr+Rcp9oj6oU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=BvGt0HbzRBPKwXSaVsXOGfL+lSHKb/xusMCrHcLzl+E5CQeIT6o7X8UU4aJaFrtcVeWfP93EDw7HfPQMujFzqJED/7RI8Dhg2YQILEuVNKCxg343UqEDwuS1MK3uxJQ5cOQ83OFhoeq6EXXxcar7sbNpvyZ6WrfRRMP1sOyrAHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4ASC6aSm018602;
	Thu, 28 Nov 2024 21:06:36 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        sebastian.reichel@collabora.com, alchark@gmail.com, dsimic@manjaro.org,
        inindev@gmail.com, cristian.ciocaltea@collabora.com, jbx6244@gmail.com,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v2] arm64: dts: rockchip: rename rfkill label for Radxa ROCK 5B
Date: Thu, 28 Nov 2024 12:06:30 +0000
Message-ID: <20241128120631.37458-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

on ROCK 5B, there is no PCIe slot, instead there is a M.2 slot.
rfkill pin is not exclusive to PCIe devices, there is SDIO Wi-Fi
devices.

rename rfkill label from "rfkill-pcie-wlan" to "rfkill-m2-wlan", it
matches with rfkill-bt.

Fixes: 82d40b141a4c ("arm64: dts: rockchip: add rfkill node for M.2 Key E WiFi on rock-5b")
Reviewed-by: Dragan Simic <dsimic@manjaro.org>
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
---
Changes in v2:
- add Fixes tag
- collect R-b tag
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index c44d001da169..d597112f1d5b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -72,7 +72,7 @@ fan: pwm-fan {
 
 	rfkill {
 		compatible = "rfkill-gpio";
-		label = "rfkill-pcie-wlan";
+		label = "rfkill-m2-wlan";
 		radio-type = "wlan";
 		shutdown-gpios = <&gpio4 RK_PA2 GPIO_ACTIVE_HIGH>;
 	};
-- 
2.43.0


