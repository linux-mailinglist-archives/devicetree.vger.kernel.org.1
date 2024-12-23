Return-Path: <devicetree+bounces-133436-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D1B0D9FA908
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 02:40:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 206141885B29
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 01:40:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60E03125D6;
	Mon, 23 Dec 2024 01:40:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FFBAD531
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 01:40:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734918002; cv=none; b=u0OAZ2R1V318qAndq9oNaib2VimXZVFqVRwbWHx6Bc1spS5G3iewP5D8QvhAaAP3yYtN++1PqOTuuf4UccpS+SxUSkdSF/aD2w7fqE6dDnaBhuwEd3jellCBrN50f4ceyN3eZxhjfylg4MWpI5tULbk3Q+nbBRXZfTse7mSUGF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734918002; c=relaxed/simple;
	bh=V+goCuYJulXt5zdAr3Pdmg39SgM32XLIi+xPIHLfxqE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=KI7/0bwzer0fy8ZoIE/TRdjsloaXa3Coq4P0WbpFOSIEQKDD2MybIpc/mmbiSIBteZ1WXBGfwixwiXF6CZCy0zh+VrZSAi27qBOuw4mjf4ZQKCTIwZrT+dWwib03v6U2803e00H4c1/n8KqOd/Gdy6KQD2PTLFAhCjWfJboAf34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4BN1dW70024519;
	Mon, 23 Dec 2024 10:39:33 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v6 1/7] arm64: dts: rockchip: Change the function of the blue LED for Radxa ROCK 5C
Date: Mon, 23 Dec 2024 01:39:20 +0000
Message-ID: <20241223013926.1134-2-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241223013926.1134-1-naoki@radxa.com>
References: <20241223013926.1134-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Radxa ROCK 5C is an updated version of Radxa ROCK 5A so everything
should be as compatible as possible.

Change the function of the blue LED from HEARTBEAT to STATUS.

Fixes: 3ddf5cdb77e6 ("arm64: dts: rockchip: add Radxa ROCK 5C")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changes in v6
- Reword commit message
Changes in v5
- Reword commit message
Changes in v4
- new
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
index 9b14d5383cdc..23e9b447b6f0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
@@ -62,7 +62,7 @@ led-0 {
 		led-1 {
 			color = <LED_COLOR_ID_BLUE>;
 			default-state = "on";
-			function = LED_FUNCTION_HEARTBEAT;
+			function = LED_FUNCTION_STATUS;
 			gpios = <&gpio3 RK_PD5 GPIO_ACTIVE_HIGH>;
 			linux,default-trigger = "heartbeat";
 		};
-- 
2.43.0


