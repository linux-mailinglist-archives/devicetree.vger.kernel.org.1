Return-Path: <devicetree+bounces-237392-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D44B7C50739
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 04:52:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 925CE3AE74E
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 03:52:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A22402C11E3;
	Wed, 12 Nov 2025 03:52:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D9625A64C
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 03:52:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762919548; cv=none; b=ECWYnLUT9S1rpjY7k7mctgwZSkow3Uc51JJqJw1s/htLBfRZCJF5qES1p5X12g4wBR6AQ9hyPtuiTv2zCnXJS5wclorJKLACa8b0BkbIqaK/665uqmY99eKVmcNV093TKKd+GILdAZ0g0WQ/crvBt4APn13TqzpkAr5K+I8WeYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762919548; c=relaxed/simple;
	bh=LiFx7GLO5X90gB+Jln7K07C79LRh9D3QY+WNMkfDbfE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=HZyEDz1++9ZjRN/XKEFR9zmsaFyWGTWAogJK+noIW3yNAfBGk2GiGnADez48HrVEAgs90MsVpF/lMTAHWzpemwHsSwfCD5psZPPMSQGihDvL7OcsUYQ8nRiHlB/l0JFJe8kzAAAKHF9YhnDu+0exYMfF552n8t2WPMAUIOEbVlk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 5AC3pbMA026136;
	Wed, 12 Nov 2025 12:51:42 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        pbrobinson@gmail.com, kylepzak@projectinitiative.io,
        damon.ding@rock-chips.com, sebastian.reichel@collabora.com,
        dsimic@manjaro.org, alchark@gmail.com, amadeus@jmu.edu.cn,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v2 4/4] arm64: dts: rockchip: Make eeprom read-only for Radxa ROCK 3C/5A/5C
Date: Wed, 12 Nov 2025 03:51:32 +0000
Message-ID: <20251112035133.28753-5-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251112035133.28753-1-naoki@radxa.com>
References: <20251112035133.28753-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Make the BL24C16 EEPROM chips found on Radxa ROCK 3C, 5A and 5C SBCs
read-only, [1] [2] [3] because they contain factory-programmed data
that isn't supposed to be modified by the end users. [4]

[1] https://dl.radxa.com/rock3/docs/hw/3c/v1400/radxa_rock_3c_v1400_schematic.pdf p.13
[2] https://dl.radxa.com/rock5/5a/docs/hw/radxa_rock5a_V1.1_sch.pdf p.19
[3] https://dl.radxa.com/rock5/5c/docs/hw/v1100/radxa_rock_5c_schematic_v1100.pdf p.18
[4] https://github.com/radxa/u-boot/blob/next-dev-v2024.10/drivers/misc/radxa-i2c-eeprom.c

Fixes: ee219017ddb50 ("arm64: dts: rockchip: Add Radxa ROCK 3C")
Fixes: 89c880808cff8 ("arm64: dts: rockchip: add I2C EEPROM to rock-5a")
Fixes: 3ddf5cdb77e6e ("arm64: dts: rockchip: add Radxa ROCK 5C")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changes in v2:
- Reword commit message (Dragan Simic)
---
 arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts  | 1 +
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts | 1 +
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts | 1 +
 3 files changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts b/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts
index 80ac40555e023..fa28b32f69108 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts
@@ -466,6 +466,7 @@ eeprom: eeprom@50 {
 		compatible = "belling,bl24c16a", "atmel,24c16";
 		reg = <0x50>;
 		pagesize = <16>;
+		read-only;
 		vcc-supply = <&vcca1v8_pmu>;
 	};
 };
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
index 041a0fff22ccb..d844a842d4cce 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
@@ -233,6 +233,7 @@ eeprom: eeprom@50 {
 		compatible = "belling,bl24c16a", "atmel,24c16";
 		reg = <0x50>;
 		pagesize = <16>;
+		read-only;
 		vcc-supply = <&vcc_3v3_pmu>;
 	};
 };
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
index dd7317bab6135..665eecce063a8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
@@ -325,6 +325,7 @@ eeprom@50 {
 		compatible = "belling,bl24c16a", "atmel,24c16";
 		reg = <0x50>;
 		pagesize = <16>;
+		read-only;
 		vcc-supply = <&vcc_3v3_pmu>;
 	};
 };
-- 
2.43.0


