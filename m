Return-Path: <devicetree+bounces-92035-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5428094B9D6
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2024 11:39:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 013A21F21F9E
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2024 09:39:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBD2E189B95;
	Thu,  8 Aug 2024 09:38:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D8BB189BAF
	for <devicetree@vger.kernel.org>; Thu,  8 Aug 2024 09:38:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723109929; cv=none; b=EDqt7hTERF8GkDfeEWgj6/bi/tgkv1ZE5leZCeE3cRAZ3htebl8eQGG3D7RYzrshPGcRlNGAtd9lyJpfSNESFvQ4lguXNDFynureoc7jDdjEzui6FikYfrEMfzqLcFbdCrmrYLb8m60MYBChWwSjfbKagVYVpPSgXBLFMVXVal4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723109929; c=relaxed/simple;
	bh=0A48CE/17/Bt7BamhSpAOQqUPr26ACvl39CQAyZV6qI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=JSur8x0qBzC9U5lQuiGbJnMSo2BgMcWBxng+4SxpsWJp9pKNFaBY6N3uD5a0s2YEoXAeBc0Vx2B3UNGKFOKH9DIMnYX49OVipkX2qVJ8jBpydJ+bUd05swjQMpkpKVTcZ2rVq674UwWPvmFn70UObXbT93vZhq26/pjUQ3kHMLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4789cSE2030905;
	Thu, 8 Aug 2024 18:38:30 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 01/10] arm64: dts: rockchip: standardize the definition of LEDs for Radxa ROCK Pi S
Date: Thu,  8 Aug 2024 18:37:59 +0900
Message-ID: <20240808093808.1740-2-naoki@radxa.com>
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

- remove label
- cosmetic change

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts b/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
index 62d18ca769a1..504054f9723e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
@@ -27,14 +27,13 @@ chosen {
 	leds {
 		compatible = "gpio-leds";
 		pinctrl-names = "default";
-		pinctrl-0 = <&green_led>, <&heartbeat_led>;
+		pinctrl-0 = <&green_led &heartbeat_led>;
 
 		green-led {
 			color = <LED_COLOR_ID_GREEN>;
 			default-state = "on";
 			function = LED_FUNCTION_POWER;
 			gpios = <&gpio0 RK_PA6 GPIO_ACTIVE_HIGH>;
-			label = "rockpis:green:power";
 			linux,default-trigger = "default-on";
 		};
 
@@ -43,7 +42,6 @@ blue-led {
 			default-state = "on";
 			function = LED_FUNCTION_HEARTBEAT;
 			gpios = <&gpio0 RK_PA5 GPIO_ACTIVE_HIGH>;
-			label = "rockpis:blue:user";
 			linux,default-trigger = "heartbeat";
 		};
 	};
-- 
2.43.0


