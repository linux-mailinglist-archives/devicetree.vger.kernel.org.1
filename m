Return-Path: <devicetree+bounces-92025-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A8FC94B9CD
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2024 11:38:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8132BB2117C
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2024 09:38:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF2B7189534;
	Thu,  8 Aug 2024 09:38:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 002487D3F1
	for <devicetree@vger.kernel.org>; Thu,  8 Aug 2024 09:38:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723109925; cv=none; b=JTijyru/E+jzQrUz2+3pSlPjOCXjLhvamKjZApKUw/LXlWRmWAiTsL7KMLAEt/FfsWrhKrUxprsNwgmIPJ1ERX+D5z+ZdpgPR8cZjwwYH1ZCefFywTw4xe7iesQLdtTYtMCQS/GJs1ovHoa7e8v3WriqEiByRv29aXCLEEMPirQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723109925; c=relaxed/simple;
	bh=/h3KQodYGWJ8HsuupVa/LzzsCyie0RWUJ9n9+yNxkKA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=IzGCcJ1PAayErRE1iWpr9uSZZdgtTGAE+9j852qm1LNeDTfko8bZUaNcEUJWCZt8gVXva+a0WS911yI14MAc3YL6VN+JRP3NRgXZ2E2QyG0ZOccXTcF4Saaj9IL+0TIps8//M9ugVUMknuWH3Grq8Jc2XZ4yLHrQGqoZ0V9kGC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4789cSEA030905;
	Thu, 8 Aug 2024 18:38:30 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 09/10] arm64: dts: rockchip: standardize the definition of LEDs for Radxa ROCK 5B
Date: Thu,  8 Aug 2024 18:38:07 +0900
Message-ID: <20240808093808.1740-10-naoki@radxa.com>
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
- change function from STATUS to HEARTBEAT

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index 966bbc582d89..62c6ed179e5d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -43,8 +43,9 @@ leds {
 		pinctrl-0 = <&led_rgb_b>;
 
 		led_rgb_b {
-			function = LED_FUNCTION_STATUS;
 			color = <LED_COLOR_ID_BLUE>;
+			default-state = "on";
+			function = LED_FUNCTION_HEARTBEAT;
 			gpios = <&gpio0 RK_PB7 GPIO_ACTIVE_HIGH>;
 			linux,default-trigger = "heartbeat";
 		};
-- 
2.43.0


