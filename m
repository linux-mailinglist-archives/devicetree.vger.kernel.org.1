Return-Path: <devicetree+bounces-124818-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 285929DA084
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 03:02:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DAA93285058
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 02:02:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5085ED2FB;
	Wed, 27 Nov 2024 02:02:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37D1D8C07
	for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 02:02:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732672960; cv=none; b=X1yaGY9JQOTSgTc28enO7b2tvxYFPb0SRAuBokKnRfs7OCQ9DEDbWQC9wXFiMHi1fDEFLgzK98z272+EyarZObyd4M7jtATSm02IBJrbPKbfWhKHaEqh9X7BWktQyyN04g/+EXwzfbny/x32/61XEVF8fOdgZmtotf3c5afkhAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732672960; c=relaxed/simple;
	bh=AQaWJfRjVCzZJZFOmD492zmljdjuz7s+BT3L4oG4cb8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=W8pVQCWpF0L5phTiCjN3cVDRFrBHQZsUobu7HqUdxKa5OifZMyfXscx9y2mrhekSk9akjgsVv0W2x1hGEo89PGtB1jGpyULNQm//G1n86Kcp3mLzz1832lcLEfGBzRPrnltwUfTtkRhpBh2d3rGxdh0Ymgp014MiVQUtsL2QcH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4AR1qYJm012963;
	Wed, 27 Nov 2024 10:52:35 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        sebastian.reichel@collabora.com, dsimic@manjaro.org, alchark@gmail.com,
        inindev@gmail.com, cristian.ciocaltea@collabora.com, jbx6244@gmail.com,
        geert+renesas@glider.be, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH] arm64: dts: rockchip: rename rfkill label for Radxa ROCK 5B
Date: Wed, 27 Nov 2024 01:52:24 +0000
Message-ID: <20241127015224.2361-1-naoki@radxa.com>
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

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

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


