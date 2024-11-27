Return-Path: <devicetree+bounces-124817-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 663A39DA083
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 03:00:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2AE88284F66
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 01:59:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 246B018E0E;
	Wed, 27 Nov 2024 01:59:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2D4C14F90
	for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 01:59:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732672797; cv=none; b=jmgfSOJIfPxqE+394uDwxa3zg6ud5kxuhdptP5E5a4zWwPmSC0jkisoHNtwMx9wiAHmwj6yN5/1iRB5xxsGGmZep2ZamuUuN1lLDoAcEgcpAv/0kUZGR/ZHylsxgHL73fGlVCwZoueglLrr5dN0rnoKvW+764WvVkvxUMTyGS6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732672797; c=relaxed/simple;
	bh=DtV+T4m07xNFzebSW/V++nO7cXKWTM3gPYKIRAFJJxE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=DC6S4IwWQBshY1JKnhUl2T5FXjnBFy/Z0WFHx18U2HfF+qhFz+YjFcFn6A3AVybmcWHM2WtEUCc1fqLjdv/cOGz4ryqEsjTJ0WMuyKJChD0idVWZZ6IJC37pQ0Cvzd2wQhVXZH8wqGV0pK65DjMW3n5DY4HDq22lP5Yg/ggFjkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4AR1x0D2012974;
	Wed, 27 Nov 2024 10:59:01 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, sebastian.reichel@collabora.com, jing@jing.rocks,
        cfsworks@gmail.com, cristian.ciocaltea@collabora.com,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH] arm64: dts: rockchip: add rfkill for wireless modules for Radxa ROCK 5A
Date: Wed, 27 Nov 2024 01:58:56 +0000
Message-ID: <20241127015856.2792-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Radxa ROCK 5A has a M.2 E key slot which can be used for wireless
modules. there are two enable/disable switch pins, one for Wi-Fi,
another for Bluetooth. these pins are connected to GPIO.

add rfkill and rfkill-bt to control these pins via GPIO.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
this patch depends on [1] which depends on [2].

[1] https://patchwork.kernel.org/project/linux-rockchip/patch/20241119100813.78820-1-naoki@radxa.com/
[2] https://patchwork.kernel.org/project/linux-rockchip/patch/20241119095113.78151-1-naoki@radxa.com/
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
index 2d7fc691fafc..799340cb8242 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
@@ -21,6 +21,20 @@ led-1 {
 		};
 	};
 
+	rfkill {
+		compatible = "rfkill-gpio";
+		label = "rfkill-m2-wlan";
+		radio-type = "wlan";
+		shutdown-gpios = <&gpio0 RK_PD3 GPIO_ACTIVE_HIGH>;
+	};
+
+	rfkill-bt {
+		compatible = "rfkill-gpio";
+		label = "rfkill-m2-bt";
+		radio-type = "bluetooth";
+		shutdown-gpios = <&gpio0 RK_PC6 GPIO_ACTIVE_HIGH>;
+	};
+
 	vcc12v_dcin: dcin: regulator-vcc12v-dcin {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc12v_dcin";
-- 
2.43.0


