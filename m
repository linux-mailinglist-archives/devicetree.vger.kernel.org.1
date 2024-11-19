Return-Path: <devicetree+bounces-122755-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EB4419D2305
	for <lists+devicetree@lfdr.de>; Tue, 19 Nov 2024 11:08:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B8DBE2814AF
	for <lists+devicetree@lfdr.de>; Tue, 19 Nov 2024 10:08:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 836AE1C173C;
	Tue, 19 Nov 2024 10:08:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C7E01C07D2
	for <devicetree@vger.kernel.org>; Tue, 19 Nov 2024 10:08:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732010929; cv=none; b=oWRCdFHLEhq/jflXg1iMKIfd0E+SFIr0BkOIqlh82ZLXtEw+fGWgnNHnkteaVarYeoRnRaqELq8nI/PH+6U2gLIgrlRQZB4jjpQgEIOg7tVB+xn0Gvi97nMeXeFyRH8EgLa+PwLXhY+CHDb7H3dc7/IhgMigL9Pa33m0uYpdpt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732010929; c=relaxed/simple;
	bh=CxAJFH9bTmoGlr+JkJRUEJnA0Z1uEt4ZguqEnYBhUb0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=FPGu6cutlwfyOG6JYbao3Cru+SN287ZExsE0Xf5LhYt9xs+2Te3PnN8x3+jWSyK2fsR22NXNt1Nr9dq5UDWyshAyRRS1mrFLgwbSlBS3SHOGOg0a3tS4XvVhM7yZmK3m0cTzpPeQlGge10VX7/mcPLAnVlIoCzaxVAk0YzzTQuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4AJA8IPu016159;
	Tue, 19 Nov 2024 19:08:19 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, sebastian.reichel@collabora.com,
        kever.yang@rock-chips.com, cfsworks@gmail.com,
        cristian.ciocaltea@collabora.com, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v2 1/3] arm64: dts: rockchip: add "dcin" regulator for Radxa ROCK 5C
Date: Tue, 19 Nov 2024 10:08:11 +0000
Message-ID: <20241119100813.78820-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

add "dcin" label to vcc5v_dcin regulator and use it in vcc_sysin
regulator.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changes in v2:
- none
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
index 6da13b6b9a7b..b5460c179ef7 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
@@ -88,7 +88,7 @@ vcc3v3_pcie2x1l2: regulator-vcc3v3_pcie2x1l2 {
 		vin-supply = <&vcc_sysin>;
 	};
 
-	vcc5v_dcin: regulator-vcc5v-dcin {
+	vcc5v_dcin: dcin: regulator-vcc5v-dcin {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc5v_dcin";
 		regulator-always-on;
@@ -170,7 +170,7 @@ vcc_sysin: regulator-vcc-sysin {
 		regulator-boot-on;
 		regulator-min-microvolt = <5000000>;
 		regulator-max-microvolt = <5000000>;
-		vin-supply = <&vcc5v_dcin>;
+		vin-supply = <&dcin>;
 	};
 
 	vcca: regulator-vcca {
-- 
2.43.0


