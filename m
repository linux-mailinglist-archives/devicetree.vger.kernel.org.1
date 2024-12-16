Return-Path: <devicetree+bounces-131386-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A5389F2FE5
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 12:58:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 053111883019
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 11:58:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77D9D204579;
	Mon, 16 Dec 2024 11:58:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91F212040BC
	for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 11:58:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734350323; cv=none; b=g3OaqFTzY8wcAnPREHN665DCHTBMWS5EFbvWyJ+BXZpci5UAyUzLTcm+HfukHiZDvWSDxf571y8yLsbU5jd0vyswVeFu2pL5WKgeHM8Rud+z2RLjulvibu65tV8l/wJaLHw5syC4VLaKjcKrDwiKHHVwkqnKF0joFg8PllT2OfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734350323; c=relaxed/simple;
	bh=WnD9gCmREit/jAR9A4+uAGh6aSCixvl23/juieVm/8E=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=hEO+jIMVEKSxILukRBUKDdvXK83G/duJXoleXXSoB5dFio/dcN/mNie4AkuiI4JGKK++gCCbRqpCdphYDsLGpHN5lx0U6zk1TGK8t91n1dUQKbOpOoMrGFkASQ7G+OpGcRtrgV4KiSc5XKbYka1xoAheNYFquHOX1MqLpB3NmEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4BGBw5Pi028795;
	Mon, 16 Dec 2024 20:58:05 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, alchark@gmail.com, sebastian.reichel@collabora.com,
        cfsworks@gmail.com, jbx6244@gmail.com, kever.yang@rock-chips.com,
        cristian.ciocaltea@collabora.com, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v3] arm64: dts: rockchip: Add rfkill for wireless modules for Radxa ROCK 5A
Date: Mon, 16 Dec 2024 11:57:59 +0000
Message-ID: <20241216115759.16127-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Radxa ROCK 5A has a M.2 E key slot which can be used for wireless
modules. There are two enable/disable switch pins, one for Wi-Fi,
another for Bluetooth. These pins are connected to GPIO.

Add rfkill and rfkill-bt to control these pins via GPIO.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
this patch depends on [1] which depends on [2].

[1] https://patchwork.kernel.org/project/linux-rockchip/cover/20241216113052.15696-1-naoki@radxa.com/
[2] https://patchwork.kernel.org/project/linux-rockchip/cover/20241216114547.15892-1-naoki@radxa.com/
---
Changes in v3
- Reword commit message
Changes in v2
- put rfkill nodes correct place
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
index 095e1f5f7786..278d372e9b16 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
@@ -19,4 +19,18 @@ regulator-vbus-typec {
 		regulator-min-microvolt = <12000000>;
 		regulator-max-microvolt = <12000000>;
 	};
+
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
 };
-- 
2.43.0


