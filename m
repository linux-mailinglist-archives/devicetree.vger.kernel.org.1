Return-Path: <devicetree+bounces-94347-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 35C239552BF
	for <lists+devicetree@lfdr.de>; Fri, 16 Aug 2024 23:53:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DF7DC1F225B9
	for <lists+devicetree@lfdr.de>; Fri, 16 Aug 2024 21:53:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04F701C579F;
	Fri, 16 Aug 2024 21:53:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2707127E37
	for <devicetree@vger.kernel.org>; Fri, 16 Aug 2024 21:53:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723845221; cv=none; b=RlfkHpFqNaE8zTg4C6/pZvjRv/gm7dfkgkErXwDumW7sbnIqad60fbMx148bkuPriDGX+56uoDyYPCKqnMGNreDcrqg3fEXitbJFwLjGoogdHWLdp5BfzFIJdz7jClZxBMhFC9N+9/M3uDCvEEULFxiQOLs1oH0tYknUArLxeI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723845221; c=relaxed/simple;
	bh=0PdLdBmLogN3nfPy40YWt5ynpoEJROPcQC7ymhnBqrM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=iN3p4ViC0PrdidKLkpnrOkzfvp7uFm/gq9OH4cEARBqIb9ipkmUPjglsxK1JNqoe0wNo0VKkRxI1CPh6421Pus6y3S00eP/2jiOgG5wLnc2Ohe11TYgd2u4yQhoPs1BIP0gkrxiWOZ0NWNVKzpsE4h7AulCM+rY163wXYwoegvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 47GLrKL3026634;
	Sat, 17 Aug 2024 06:53:20 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH] arm64: dts: rockchip: add LED_FUNCTION_STATUS for RGB LEDs on Radxa E25
Date: Sat, 17 Aug 2024 06:53:16 +0900
Message-ID: <20240816215316.1429-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

multicolor(RGB) PWM LEDs on Radxa E25 carrier board is clearly defined
as status LED ("use it to see the status") in product overview[1].

add "function = LED_FUNCTION_STATUS" to "multi-led".

fortunately CONFIG_LEDS_PWM_MULTICOLOR is not enabled in defconfig,
this change should not affect userland(sysfs).

[1] https://radxa.com/products/network-computer/e25#overview

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts b/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
index 72ad74c38a2b..1eaf304d94b9 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
@@ -16,6 +16,7 @@ pwm-leds {
 
 		multi-led {
 			color = <LED_COLOR_ID_RGB>;
+			function = LED_FUNCTION_STATUS;
 			max-brightness = <255>;
 
 			led-red {
-- 
2.43.0


