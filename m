Return-Path: <devicetree+bounces-128802-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AE459E9761
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 14:42:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E489B163FCE
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 13:41:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 864A91A23AB;
	Mon,  9 Dec 2024 13:41:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E46D233137
	for <devicetree@vger.kernel.org>; Mon,  9 Dec 2024 13:41:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733751699; cv=none; b=R+fCbXr3A6kjgnz490aOXkRjCT5Bz6Zim5v5smoUQZzLGKrMxQvU8y06d7DUxaaDSWEhHJbHC3YKzHV2Td3VGMicaVWvazHCTNhtebZEufzabBv0Np11v/eEp2NjSrsWmFNLOstsLPCEBbqcPId4GIghXy7Oz/b1x2ZxRJBjt1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733751699; c=relaxed/simple;
	bh=MoI6l69UcBMC+eZ/tfNQ0Mk9O6EqjrHuvPYTh+fswLE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=l4OLLF9elDE7xVl3GjHfwWUSxNS3DHpuZJ+MvasLGWxwqanFKAU9/+CYV6+4QlSZPlz7dd+wLotUWE0RbEmZdaTm+jwDmH+42LdB60LspCe4xO2jYqA4XbUnNAFfjGYfGjJgqv8gYOstENG3QJCShJpkNZITgYScye6yX1sSIsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4B9DfIIK032120;
	Mon, 9 Dec 2024 22:41:18 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, sebastian.reichel@collabora.com,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v2] arm64: dts: rockchip: Enable automatic fan control on Rock 5A/5C
Date: Mon,  9 Dec 2024 13:41:13 +0000
Message-ID: <20241209134113.4783-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Link the PWM fan on Radxa ROCK 5A/5C as an active cooling device
managed automatically by the thermal subsystem, with a target SoC
temperature of 65 oC and a minimum-spin interval from 55 oC to 65 oC,
to ensure airflow when the system gets warm.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
this patch depends on [1] which depends on [2].

[1] https://patchwork.kernel.org/project/linux-rockchip/cover/20241209132406.4232-1-naoki@radxa.com/
[2] https://patchwork.kernel.org/project/linux-rockchip/cover/20241209125131.4101-1-naoki@radxa.com/
---
Changes in v2
- reword commit message (Dragan Simic)
---
 .../boot/dts/rockchip/rk3588s-rock-5.dtsi     | 32 ++++++++++++++++++-
 1 file changed, 31 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi
index 7ae032b3534c..d0b9513d56a7 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi
@@ -64,7 +64,7 @@ led-1 {
 		};
 	};
 
-	pwm-fan {
+	fan: pwm-fan {
 		compatible = "pwm-fan";
 		#cooling-cells = <2>;
 		cooling-levels = <0 64 128 192 255>;
@@ -380,6 +380,36 @@ rgmii_phy1: ethernet-phy@1 {
 	};
 };
 
+&package_thermal {
+	polling-delay = <1000>;
+
+	trips {
+		package_fan0: package-fan0 {
+			hysteresis = <2000>;
+			temperature = <55000>;
+			type = "active";
+		};
+
+		package_fan1: package-fan1 {
+			hysteresis = <2000>;
+			temperature = <65000>;
+			type = "active";
+		};
+	};
+
+	cooling-maps {
+		map0 {
+			cooling-device = <&fan THERMAL_NO_LIMIT 1>;
+			trip = <&package_fan0>;
+		};
+
+		map1 {
+			cooling-device = <&fan 2 THERMAL_NO_LIMIT>;
+			trip = <&package_fan1>;
+		};
+	};
+};
+
 &pcie2x1l2 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pcie20x1_2_perstn_m0>,
-- 
2.43.0


