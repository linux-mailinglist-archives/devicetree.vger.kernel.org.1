Return-Path: <devicetree+bounces-131381-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BCC7B9F2F89
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 12:35:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 582641888024
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 11:35:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A76EB205AAC;
	Mon, 16 Dec 2024 11:31:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5E8C20551B
	for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 11:31:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734348710; cv=none; b=eBqmVuDOCSWhzcnGYLynrSMntFFzDF6h7wIGqrY869cB4Nigt/vefAl2AssrCg1YbNzqK82cistBWMLBFMr5d0zwhA4gFPpzS8Sx1UIrmVPl5gBkKpcRvGKODEMuxC1jLFIjq3UnqveWsHNe7y/uJmnFa7qcKXpl8CtdeBcMv70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734348710; c=relaxed/simple;
	bh=jt5ZvWc3ZSgFRB5mYOg3jiL3NsVOotGlB8e4GJXSCTo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=lFOwY6jx9XvSP42QtM7jh+4ADR6aU9Ilyls0N7pvTfaevo1QJINRpyI9Iy3KirY6reaG6XbITbdCyvYscNYz5Y4+uBlsi2PF5dMpKRxvVRI0FQolms3ZvROCRRHcLtnLtnK5N+khF2/rQ509nyHwcHuSS+ATgfzezk6Lc6zQSEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4BGBUxOV028690;
	Mon, 16 Dec 2024 20:31:01 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v5 10/12] arm64: dts: rockchip: Fix pmic dcdc-reg10 label for Radxa ROCK 5C
Date: Mon, 16 Dec 2024 11:30:50 +0000
Message-ID: <20241216113052.15696-11-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241216113052.15696-1-naoki@radxa.com>
References: <20241216113052.15696-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix pmic dcdc-reg10 label to match with schematic[1]. No functional
change.

[1] https://dl.radxa.com/rock5/5c/docs/hw/v1100/radxa_rock_5c_schematic_v1100.pdf

Fixes: 3ddf5cdb77e6 ("arm64: dts: rockchip: add Radxa ROCK 5C")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changes in v5:
- Reword commit message
Changes in v4:
- none
Changes in v3:
- none
Changes in v2:
- split from "arm64: dts: rockchip: fix pmic properties for Radxa ROCK 5C"
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
index 0f8048f6511b..fbe491e63852 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
@@ -670,8 +670,8 @@ regulator-state-mem {
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


