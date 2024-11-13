Return-Path: <devicetree+bounces-121401-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EE599C6A63
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 09:13:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2E3C3B23888
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 08:13:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94DBE18A6B7;
	Wed, 13 Nov 2024 08:13:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1AE7189F4B
	for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 08:13:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731485618; cv=none; b=MQwWs7u6tyzZXr1OwUH2J/3fWzYKeRkQ0hz8/sEccnUcvnnS2pMLuEi5W4t8xeNHuLlwnZwVS27ThtKu/mbW4a8MQrLU84A5yoaxYrj6Ip5LDz/l655ZC/LId46iN5FMetoq7NkLbdl2PesJEIQuZohwmCysLi3Y6HMYA1dtgAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731485618; c=relaxed/simple;
	bh=0olkNwaoiWOKLV3L1ASPwyd3I/mvlha8xdStHzEiU4I=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=sK+FNWwVdd3lBveRjxF/5QjdI9YaCCEqwD8FyhR+f2tZIx5TTi50t4X0Xz0DolH1uU8pVh04FY0Xt0CIJbLWArLZC+8YSzfgV8hoAvToeOMOuFLwIDplk6W6ETh5HCtBs6UNDwksMkNjn/51eHZ8eTuKvsSs47edboYKOPpaCe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4AD8D5p7026223;
	Wed, 13 Nov 2024 17:13:07 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, sebastian.reichel@collabora.com,
        cristian.ciocaltea@collabora.com, jbx6244@gmail.com,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 6/8] arm64: dts: rockchip: add default-state for heartbeat LED on Radxa ROCK 5A
Date: Wed, 13 Nov 2024 08:12:56 +0000
Message-ID: <20241113081258.2745-6-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241113081258.2745-1-naoki@radxa.com>
References: <20241113081258.2745-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

add default-state = "on" for heartbeat LED to match with U-Boot[1].

[1] https://patchwork.ozlabs.org/project/uboot/patch/20240808222325.2082-2-naoki@radxa.com/

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
index 66eb38f4d7c0..39a05491a04b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
@@ -54,6 +54,7 @@ leds {
 
 		io-led {
 			color = <LED_COLOR_ID_BLUE>;
+			default-state = "on";
 			function = LED_FUNCTION_STATUS;
 			gpios = <&gpio3 RK_PD5 GPIO_ACTIVE_HIGH>;
 			linux,default-trigger = "heartbeat";
-- 
2.43.0


