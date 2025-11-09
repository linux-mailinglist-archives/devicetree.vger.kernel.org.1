Return-Path: <devicetree+bounces-236392-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id C33F9C43FF0
	for <lists+devicetree@lfdr.de>; Sun, 09 Nov 2025 15:19:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B24D74E599A
	for <lists+devicetree@lfdr.de>; Sun,  9 Nov 2025 14:19:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C17202FDC4D;
	Sun,  9 Nov 2025 14:19:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31FA82FD7CE
	for <devicetree@vger.kernel.org>; Sun,  9 Nov 2025 14:19:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762697987; cv=none; b=iNtg3LPYoNTPOBQ4Tmq6zZiW6SwNRLrNkjednYq8GQa5/90msca44QOgl6+Ld2Wz/HNwJyDXs1Qv7dzu9mNvQpBOR6cmmHx1+8fjOsP2MLXnsHIyHyVoXIiS5ARtCsbZEbzpovGz9MwtPusLivrmfSjJmiBfaN+S61Ouc/9mBuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762697987; c=relaxed/simple;
	bh=Huwx/PFdbTYGo81PicfoRynA2KBmUdTVQ6SzHWqDN5s=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ZNBC/fMFPH6FUke2p9Uvtee+agC5oQgBDh7Q8IxME3wvgQu0cA2D4Q9BrOc4dnpIMGLc7DmOuqN09jVkVS6kIr2HWK6c1GVRiMSndAbxT6BQgjXuwS/wLWrm6ZKYGRFjjrqSb9gJEsTsybViv483RONamde7EmGg4bagcmcGyPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 5A9EJ5dp015030;
	Sun, 9 Nov 2025 23:19:07 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, alchark@gmail.com, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v7 05/14] arm64: dts: rockchip: Fix pmic properties for Radxa ROCK 5C
Date: Sun,  9 Nov 2025 14:18:50 +0000
Message-ID: <20251109141859.206835-6-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251109141859.206835-1-naoki@radxa.com>
References: <20251109141859.206835-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix copy-pasto in the initial commit. Labels/names match schematic[1],
and values match schematic and downstream kernel[2][3].

[1] https://dl.radxa.com/rock5/5c/docs/hw/v1100/radxa_rock_5c_schematic_v1100.pdf
[2] https://github.com/radxa/kernel/blob/linux-6.1-stan-rkr5.1/arch/arm64/boot/dts/rockchip/rk3588-rk806-single.dtsi
[3] https://github.com/radxa/kernel/blob/linux-6.1-stan-rkr5.1/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts

Fixes: 3ddf5cdb77e6 ("arm64: dts: rockchip: add Radxa ROCK 5C")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changes in v7:
- More fixes
- Reword commit message
Changes in v6:
- Reword commit message
Changes in v5:
- Reword commit message
Changes in v4:
- None
Changes in v3:
- None
Changes in v2:
- Split from "arm64: dts: rockchip: fix pmic properties for Radxa ROCK 5C"
---
 .../boot/dts/rockchip/rk3588s-rock-5c.dts     | 20 +++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
index 1257aaac8f350..eb0d5a0a41509 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
@@ -619,7 +619,7 @@ vdd_logic_s0: dcdc-reg3 {
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <675000>;
-				regulator-max-microvolt = <750000>;
+				regulator-max-microvolt = <800000>;
 				regulator-ramp-delay = <12500>;
 
 				regulator-state-mem {
@@ -666,12 +666,11 @@ regulator-state-mem {
 			};
 
 			vcc_2v0_pldo_s3: dcdc-reg7 {
-				regulator-name = "vdd_2v0_pldo_s3";
+				regulator-name = "vcc_2v0_pldo_s3";
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <2000000>;
 				regulator-max-microvolt = <2000000>;
-				regulator-ramp-delay = <12500>;
 
 				regulator-state-mem {
 					regulator-on-in-suspend;
@@ -702,8 +701,8 @@ regulator-state-mem {
 				};
 			};
 
-			vcc1v8_pmu_ddr_s3: dcdc-reg10 {
-				regulator-name = "vcc1v8_pmu_ddr_s3";
+			vcc_1v8_s3: dcdc-reg10 {
+				regulator-name = "vcc_1v8_s3";
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <1800000>;
@@ -778,8 +777,8 @@ regulator-state-mem {
 				};
 			};
 
-			pldo6_s3: pldo-reg6 {
-				regulator-name = "pldo6_s3";
+			pldo-reg6 {
+				regulator-name = "pldo_reg6";
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <1800000>;
@@ -821,11 +820,12 @@ vdda_0v75_s0: nldo-reg3 {
 				regulator-name = "vdda_0v75_s0";
 				regulator-always-on;
 				regulator-boot-on;
-				regulator-min-microvolt = <750000>;
-				regulator-max-microvolt = <750000>;
+				regulator-min-microvolt = <837500>;
+				regulator-max-microvolt = <837500>;
 
 				regulator-state-mem {
-					regulator-off-in-suspend;
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <750000>;
 				};
 			};
 
-- 
2.43.0


