Return-Path: <devicetree+bounces-121725-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F71B9C818C
	for <lists+devicetree@lfdr.de>; Thu, 14 Nov 2024 04:46:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BF5FD1F219D5
	for <lists+devicetree@lfdr.de>; Thu, 14 Nov 2024 03:46:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DDC07CF16;
	Thu, 14 Nov 2024 03:46:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3997946BF
	for <devicetree@vger.kernel.org>; Thu, 14 Nov 2024 03:46:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731556004; cv=none; b=DDTeBfV4YJKMcIHlFDCPIQZxXYUJKJBkecHEt4gTaLO6xTUlcHDSfflvIK59FboqRpWkUFO3J/Bf7DU0vkljA0O9+oRoin712IOct0SksJ2XVpzkttriVZjjCuSmkLxtrNN3cup2uQB+sbxw4LfraAi9RCIWIuffbR+lNpBns/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731556004; c=relaxed/simple;
	bh=W4Gp4/OpRsJ9BDEe8SQSSdll2jGrowp7RgNkCillDlE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Bg4UG/GA/9X3sE/k3Jid5zcYetZZL3B1MNenuvkWVOe8ke9ugseG13+FaCoEUgW62PMtF5ctWHnaSlZkV7JTJYsk+U6r54xNSiKeWrZXSNuLyZ7Q6TT7h/Lj+XyszaojdU6nQ6FUg3RN31MkpbDF4xFNtidVuDRPogsXBD2Y4XQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4AE3jqu2029588;
	Thu, 14 Nov 2024 12:45:53 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, sebastian.reichel@collabora.com, alchark@gmail.com,
        cristian.ciocaltea@collabora.com, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 1/3] arm64: dts: rockchip: add "dcin" regulator for Radxa ROCK 5C
Date: Thu, 14 Nov 2024 03:45:43 +0000
Message-ID: <20241114034545.6440-2-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241114034545.6440-1-naoki@radxa.com>
References: <20241114034545.6440-1-naoki@radxa.com>
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
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
index 9f4779b9f3e7..1c826827ac69 100644
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


