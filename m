Return-Path: <devicetree+bounces-252549-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 43F23D00F24
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 04:57:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 09D8C3012BE7
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 03:54:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55F0326E70E;
	Thu,  8 Jan 2026 03:54:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6A4E2868AD
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 03:54:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767844447; cv=none; b=TYBH/c4E9RoIyc+wGZ5YwpWMtMstlhkA+d/KjQjITGSwNq1d6DESovuUDQd8NMmeQ1sTYT0xR7zo4Hu8DGZhtTMyt5dl6yQH/TYaRVUaqpAyusBd6ey+aZwKME/OpENzzXo6D8No1+NLaOMayBa4oljaNgRiHb2zfFiszX14EuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767844447; c=relaxed/simple;
	bh=WkIFi+VnVYMOijItGdSBELSC4J2NWhSuBd4C3hdJ6TQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=BvbTc5DBenHJVKJGUlEr3BKKxPmcx5IvXaqzQET12UjeCdHgJ3LJCCrpDv51XB8yeEZdIv859EJXEYReYBN41/EQzqJZakWouxzUtlL31CU1cgtdMLaUmk5ILWKTeIbAowWjBHNLu1zbe7YOnN0kiWlskJZEwBvhqXklvSjThXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 6083h1iK008024;
	Thu, 8 Jan 2026 12:43:01 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, sebastian.reichel@collabora.com,
        kylepzak@projectinitiative.io, damon.ding@rock-chips.com,
        alchark@gmail.com, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v4] arm64: dts: rockchip: Make eeprom read-only for Radxa ROCK 3C/5A/5C
Date: Thu,  8 Jan 2026 03:42:52 +0000
Message-ID: <20260108034252.2713-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The BL24C16 EEPROM implemented on the Radxa ROCK 3C, 5A, and 5C [1]
[2] [3] is designed to have data written during factory programming
(regardless of whether data is actually written or not), and we at
Radxa permit users to read the data but not write to it. [4]
Therefore, we will add a read-only property to the eeprom node.

[1] https://dl.radxa.com/rock3/docs/hw/3c/v1400/radxa_rock_3c_v1400_schematic.pdf p.13
[2] https://dl.radxa.com/rock5/5a/docs/hw/radxa_rock5a_V1.1_sch.pdf p.19
[3] https://dl.radxa.com/rock5/5c/docs/hw/v1100/radxa_rock_5c_schematic_v1100.pdf p.18
[4] https://github.com/radxa/u-boot/blob/next-dev-v2024.10/drivers/misc/radxa-i2c-eeprom.c

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changes in v4:
- Drop Fixes tags (Chukun Pan)
Changes in v3:
- Reword commit message
Changes in v2:
- Reword commit message (Dragan Simic)
---
 arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts  | 1 +
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts | 1 +
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts | 1 +
 3 files changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts b/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts
index 80ac40555e02..fa28b32f6910 100644
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
index 045a853d39ec..0991f6a21190 100644
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
index b837c4e08cec..7fe42f4ff827 100644
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


