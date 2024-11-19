Return-Path: <devicetree+bounces-122742-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A653A9D22CB
	for <lists+devicetree@lfdr.de>; Tue, 19 Nov 2024 10:52:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5E6D01F22417
	for <lists+devicetree@lfdr.de>; Tue, 19 Nov 2024 09:52:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48F6E1C1F37;
	Tue, 19 Nov 2024 09:52:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21FBB1C1AB3
	for <devicetree@vger.kernel.org>; Tue, 19 Nov 2024 09:52:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732009923; cv=none; b=W1IYJaq0dnQ1nBpZCG59RwjFtqonGVJtUUWcUEQTwhHWV/Ls44iVTkqKsA0vh67lDhOAuRRSxPdnxcCrnKCDg1CYPwkymaDFRGJyQgRUYBnyRTcwrObbqdHxfLN2Tr/dD1YLIWKlaejIevGnIsZKb7GFJrBaZcQqbNgsECEEG9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732009923; c=relaxed/simple;
	bh=u/nA8xdXzKA+s4F8plXzHd7U4WKffhM/Vz5DLPFdMgk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=YwHNyBZVwj1or4a2wTCDU8nIHugYBAbiZETKQ/Vtatpxa2DFfqoR1lK8RaFMVhP4WAfGIwUir7tGbnSTnKU0UyTP3PavZ3xFIASt10Nj/Z172ql3l38DCSyOVy2kFuKy+BIytS/LQzXNNltAx/v5lakUq44q7t5Uzcq3/D7iOW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4AJ9pHSI016079;
	Tue, 19 Nov 2024 18:51:18 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, sebastian.reichel@collabora.com,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v3 03/11] arm64: dts: rockchip: fix pmic dcdc-reg10 label for Radxa ROCK 5C
Date: Tue, 19 Nov 2024 09:51:04 +0000
Message-ID: <20241119095113.78151-3-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241119095113.78151-1-naoki@radxa.com>
References: <20241119095113.78151-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

fix pmic dcdc-reg10 label to match with schematic[1].

[1] https://dl.radxa.com/rock5/5c/docs/hw/v1100/radxa_rock_5c_schematic_v1100.pdf

Fixes: 3ddf5cdb77e6 ("arm64: dts: rockchip: add Radxa ROCK 5C")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changes in v3:
- none
Changes in v2:
- split from "arm64: dts: rockchip: fix pmic properties for Radxa ROCK 5C"
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
index 3eed50253442..7e7ba14ba151 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
@@ -691,8 +691,8 @@ regulator-state-mem {
 				};
 			};
 
-			vcc1v8_pmu_ddr_s3: dcdc-reg10 {
-				regulator-name = "vcc1v8_pmu_ddr_s3";
+			vcc_1v8_s3: dcdc-reg10 {
+				regulator-name = "vcc_1v8_s3";
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <1800000>;
-- 
2.43.0


