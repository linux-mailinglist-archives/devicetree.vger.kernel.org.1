Return-Path: <devicetree+bounces-128718-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 658FA9E94E2
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 13:52:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2111F281DD0
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 12:52:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9AAFC229B06;
	Mon,  9 Dec 2024 12:52:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77C9922758F
	for <devicetree@vger.kernel.org>; Mon,  9 Dec 2024 12:52:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733748752; cv=none; b=FpBYfaXxJG9e+oIKMroIg5RyOcCGj7K77IHSVHLntdHadyC6mzpC6czseJdNpyc1Y5HxyqFl1sPvFh6IvGgCAuZv/nh66Zr/7kdxPUmgPo/DzCNefk6Y9wv6n5TtOtGN89Q8JMQt+BIIvwZ9Gakkb7kB2MbEcYwjhGb1CzB8eRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733748752; c=relaxed/simple;
	bh=AQO6itAfmM2K7CnK9OMCTnnMYFnH8jZy7j9ugfVyWHU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=gbGjk0VDzHhPCS6V89hPlahmZhjBpgWKlYBhd5bRYy4VAxWWrTWUJ+Mvfi50sILRhZ2mgIQ9Piw5MamZ9zwvKqG1khvWgnxvTjwbm1yLAbuv8CFzNg7dRkiGR5WoDWTqatwTSyAWd+yiebGvnevsVEDDy4Km2gp5liU/dGQvSxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4B9CpdQ4031943;
	Mon, 9 Dec 2024 21:51:46 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, sebastian.reichel@collabora.com,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v4 04/12] arm64: dts: rockchip: rename regulator for pcie2x1l2 for Radxa ROCK 5C
Date: Mon,  9 Dec 2024 12:51:23 +0000
Message-ID: <20241209125131.4101-5-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241209125131.4101-1-naoki@radxa.com>
References: <20241209125131.4101-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

use consistent name with other regulators. no functional change is
intended.

Fixes: 3ddf5cdb77e6 ("arm64: dts: rockchip: add Radxa ROCK 5C")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changes in v4:
- reword commit message
Changes in v3:
- none
Changes in v2:
- new
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
index 85589d1a6d3b..61d75ab503b2 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
@@ -76,13 +76,13 @@ pwm-fan {
 		pwms = <&pwm3 0 60000 0>;
 	};
 
-	pcie2x1l2_3v3: regulator-pcie2x1l2-3v3 {
+	vcc3v3_pcie2x1l2: regulator-vcc3v3_pcie2x1l2 {
 		compatible = "regulator-fixed";
 		enable-active-high;
 		gpio = <&gpio0 RK_PC5 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pow_en>;
-		regulator-name = "pcie2x1l2_3v3";
+		regulator-name = "vcc3v3_pcie2x1l2";
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
 		vin-supply = <&vcc_sysin>;
@@ -421,7 +421,7 @@ &pcie2x1l2 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pcie20x1_2_perstn_m0>;
 	reset-gpios = <&gpio3 RK_PD1 GPIO_ACTIVE_HIGH>;
-	vpcie3v3-supply = <&pcie2x1l2_3v3>;
+	vpcie3v3-supply = <&vcc3v3_pcie2x1l2>;
 	status = "okay";
 };
 
-- 
2.43.0


