Return-Path: <devicetree+bounces-92031-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 846BF94B9D1
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2024 11:38:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B54A51C21330
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2024 09:38:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BAD6189BAC;
	Thu,  8 Aug 2024 09:38:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26E0C189909
	for <devicetree@vger.kernel.org>; Thu,  8 Aug 2024 09:38:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723109927; cv=none; b=j6gMMvm4RYFugHrE1s0v6zm5py8i/0FQ6qsTi0eF2mCP7uqdpZZm98EUvpg6H21HFZQpXV/Y+SSbY69yXb9gbvlvKTGybzweXbXqMyCJaY/S5PTwWOn4xqlGue0edCxcdIC2/UMWmTvD/tLoO6DtnL1Zir+8Zwv51LjkS/HBMOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723109927; c=relaxed/simple;
	bh=wwoIx0DSplkJpWugKT+lVoXsYnAzN/Rqg9Ax75EnCUw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Jji40Ta9CsMKgEMYLBhpIpf5jj2eoFtHnddijMuigmMrJlUk3OqC1whxkgky6cOP4pfPlwSolAF+oa7ntTOdnCYquxrJESJnlKnFBXtN+r8zU9Ez5YvIy+EiHgOHEDuVG5A6NOFEqvn/WkSziMgdo12lvKN1IOb5gHyTEyvQxUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4789cSE3030905;
	Thu, 8 Aug 2024 18:38:30 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 02/10] arm64: dts: rockchip: standardize the definition of LEDs for Radxa ROCK Pi E
Date: Thu,  8 Aug 2024 18:38:00 +0900
Message-ID: <20240808093808.1740-3-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240808093808.1740-1-naoki@radxa.com>
References: <20240808093808.1740-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

- sort properties
- add default-state and function

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dtsi | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dtsi b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dtsi
index bb01143dc91a..4e77701f2e01 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dtsi
@@ -49,11 +49,13 @@ gmac_clkin: external-gmac-clock {
 
 	leds {
 		compatible = "gpio-leds";
-		pinctrl-0 = <&led_pin>;
 		pinctrl-names = "default";
+		pinctrl-0 = <&led_pin>;
 
 		led-0 {
 			color = <LED_COLOR_ID_BLUE>;
+			default-state = "on";
+			function = LED_FUNCTION_HEARTBEAT;
 			gpios = <&gpio3 RK_PA5 GPIO_ACTIVE_LOW>;
 			linux,default-trigger = "heartbeat";
 		};
-- 
2.43.0


