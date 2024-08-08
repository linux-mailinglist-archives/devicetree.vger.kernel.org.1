Return-Path: <devicetree+bounces-92029-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E108194B9D2
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2024 11:38:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6AE61B224BD
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2024 09:38:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 544A8188CAE;
	Thu,  8 Aug 2024 09:38:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49ED71494A6
	for <devicetree@vger.kernel.org>; Thu,  8 Aug 2024 09:38:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723109927; cv=none; b=iJ3vHfOlqvhhfjX6SCXF/qr3if+IxdE210/SHa6aX2/S/VFq+7U5fVlf+SRR1+jzqfItAsTiarRRn9OPDsPj7s08tv+UDlvzfGTeCp5UzYaFF8B/Nh3rEBuzzVWp+u07FU+T4iF/GNgITKltlPw76Kxg3Pii7/z3GUV+mfON/aU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723109927; c=relaxed/simple;
	bh=zVpnbRB8fp30SS0m2y+RH+d+NW50ssnH4vR0RfHsicU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=GJSBUL67k54yUsiqO1oZNSom3morCavGDPcUiVDhXfB4LSMAJWlg8OUSn1Z1Or0+/Ljm2WMoD+OXWOaMWbAA42o3Zmb381ULzPqXdhczUnIJWfz9FG+HfXyjuOTyoavmrs7fXs8ezsy7lT3TnsSVLLLWErrPbHbpmbBq62QzVtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4789cSE4030905;
	Thu, 8 Aug 2024 18:38:30 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 03/10] arm64: dts: rockchip: standardize the definition of LEDs for Radxa ROCK 4C+
Date: Thu,  8 Aug 2024 18:38:01 +0900
Message-ID: <20240808093808.1740-4-naoki@radxa.com>
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
- add default-state
- change function for led-1 from STATUS to HEARTBEAT

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
index d4b4dced3e39..7454bfb76a7d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
@@ -37,16 +37,18 @@ leds {
 
 		/* USER_LED1 */
 		led-0 {
-			function = LED_FUNCTION_POWER;
 			color = <LED_COLOR_ID_GREEN>;
+			default-state = "on";
+			function = LED_FUNCTION_POWER;
 			gpios = <&gpio3 RK_PD4 GPIO_ACTIVE_LOW>;
 			linux,default-trigger = "default-on";
 		};
 
 		/* USER_LED2 */
 		led-1 {
-			function = LED_FUNCTION_STATUS;
 			color = <LED_COLOR_ID_BLUE>;
+			default-state = "on";
+			function = LED_FUNCTION_HEARTBEAT;
 			gpios = <&gpio3 RK_PD5 GPIO_ACTIVE_HIGH>;
 			linux,default-trigger = "heartbeat";
 		};
-- 
2.43.0


