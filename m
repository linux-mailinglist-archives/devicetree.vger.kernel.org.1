Return-Path: <devicetree+bounces-121402-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C25729C6A64
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 09:13:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4E5D1B22FBA
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 08:13:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB1E718A6C3;
	Wed, 13 Nov 2024 08:13:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE6EF189F52
	for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 08:13:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731485618; cv=none; b=m8cAyPZtQ+QIZSkvIu4s2WgmGEd6nDjsT+WngJGQXJbFRGpKTWQf1korKPG2wbjnH+le//Y3mky9qEnsEZy9jVEYsWcZlrCESEMiDVfohro6hwE9cJESlnXT31qyjK8fKBiFVxVUp+/nrciso0lM0AyfGAsbeehOFrmnw/EOr3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731485618; c=relaxed/simple;
	bh=aH2aHWOsEF3cVghjockLXGuNdue9/RO+QY8Hg8PlpiM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=dt+hzIvWikZZUQOQ4aWcpa1ZfcMhjly3sKptdXuqlYE4hHe4kMtK2c8l4CCaj9ShRw1+m2rmc6hi9cadpe/M0w230yrzXvSZ7UpJWISvyLgMsx0bkS8fXC5CywozOHUvnydr7wjh0FUz5hRsgWskSEK/Klq9Vy5DK4TsJx5criY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4AD8D5p2026223;
	Wed, 13 Nov 2024 17:13:05 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, sebastian.reichel@collabora.com,
        cristian.ciocaltea@collabora.com, jbx6244@gmail.com,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 1/8] arm64: dts: rockchip: fix eeprom for Radxa ROCK 5A
Date: Wed, 13 Nov 2024 08:12:51 +0000
Message-ID: <20241113081258.2745-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

- move eeprom from i2c2 to i2c0 to match with schematic[1]
- add vcc_3v3_pmu regulator and use it as vcc-supply for eeprom

[1] https://dl.radxa.com/rock5/5a/docs/hw/radxa_rock5a_V1.1_sch.pdf

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 .../boot/dts/rockchip/rk3588s-rock-5a.dts     | 23 ++++++++++++++-----
 1 file changed, 17 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
index 70a43432bdc5..56c818c45dc0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
@@ -113,6 +113,16 @@ vcc5v0_sys: regulator-vcc5v0-sys {
 		vin-supply = <&vcc12v_dcin>;
 	};
 
+	vcc_3v3_pmu: regulator-vcc-3v3-pmu {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_3v3_pmu";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc_3v3_s3>;
+	};
+
 	vcc_5v0: regulator-vcc-5v0 {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc_5v0";
@@ -221,6 +231,13 @@ regulator-state-mem {
 			regulator-off-in-suspend;
 		};
 	};
+
+	eeprom: eeprom@50 {
+		compatible = "belling,bl24c16a", "atmel,24c16";
+		reg = <0x50>;
+		pagesize = <16>;
+		vcc-supply = <&vcc_3v3_pmu>;
+	};
 };
 
 &i2c2 {
@@ -242,12 +259,6 @@ regulator-state-mem {
 			regulator-off-in-suspend;
 		};
 	};
-
-	eeprom: eeprom@50 {
-		compatible = "belling,bl24c16a", "atmel,24c16";
-		reg = <0x50>;
-		pagesize = <16>;
-	};
 };
 
 &i2c3 {
-- 
2.43.0


