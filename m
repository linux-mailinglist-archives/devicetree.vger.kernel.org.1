Return-Path: <devicetree+bounces-109185-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 88E2F9958A9
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 22:40:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 33A0A1F27BE6
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 20:40:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A4A6215024;
	Tue,  8 Oct 2024 20:40:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="HO2z7P7t"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3662213EC2
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 20:40:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728420005; cv=none; b=OtIp/hhYwJHQ8QUam/jtu6XCxolMVNGq9ZYlAwv6savLX4akTFSb/GuXE9IQv4jPHw4pGJVa3gBi8O8EBcVgZZwL5afOgH3RjJ92iqhQ6VMMBGvWzR5KYovgon0fh20tM/TZGEPWq9nTkYYXE0Qar1FQa72VFWSpiWm4Dvow4G4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728420005; c=relaxed/simple;
	bh=cTgS/mTzJ/1Tbu00AATDpxcP0Fy1lR1oswF7rROHri4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=fmXvZ87Ri1oiPNOGpyXlXzLIdi5zI66rY9aWXzYh+ZRZHq7mXCGSmn/zzGUpkfQ33yVsrMiprhOXtB3DE9Dd/Bk+ir03dsXkbz9TnbZoyixL8JQ4tc+01ECW/ePsnM8rkyGi6PIjDxE+4qkKbxSbEjCogS7FN3rRA/oJGsrpbdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=HO2z7P7t; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=kbHRuisZyrs8FwUsSu90NxL13w/ixqtP/x+s/iP2Gds=; b=HO2z7P7te2LlOPQDTUNm2sOiS0
	ohQxYqIRHUnzUDJUa7BLcVLMMhdthbTmn4w2QybkyGoFLkMese5KxQnPr/Iz7W+TuV2iLfHe1PNYY
	i+CsEEIngdYImpIwK8sAd4oVNzWilrGA9NHU9BRoUWCzSOQMp4RdbAk/vPorj8M4yUYUrwZH41eYw
	nFhIoslajt/4G0i/qmbidLy59uNpM7ShZ+0cC5F53Y7iM3OcEZnyCQ+YO1IyEQXnIJ/peEcjgaUrv
	v7lX0SD6bOosGXtPkmpg8C/fAzMfYwUAj1cMGrbYQI1FAfLbFVTCxPM3ahNc8zWAJhPmadiD8lr8d
	XOmjVxQw==;
Received: from i53875ad9.versanet.de ([83.135.90.217] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1syGzy-0007ua-6k; Tue, 08 Oct 2024 22:40:02 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v2 07/14] arm64: dts: rockchip: Fix LED triggers on rk3308-roc-cc
Date: Tue,  8 Oct 2024 22:39:33 +0200
Message-ID: <20241008203940.2573684-8-heiko@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241008203940.2573684-1-heiko@sntech.de>
References: <20241008203940.2573684-1-heiko@sntech.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

There are two LEDs on the board, power and user events.
Currently both are assigned undocumented IR(-remote)
triggers that are probably only part of the vendor-kernel.

To make dtbs check happier, assign the power-led to a generic
default-on trigger and the user led to the documented rc-feedback
trigger that should mostly match its current usage.

Fixes: 4403e1237be3 ("arm64: dts: rockchip: Add devicetree for board roc-rk3308-cc")
Cc: Andy Yan <andy.yan@rock-chips.com>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts b/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
index 9232357f4fec..d9e191ad1d77 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
@@ -36,14 +36,14 @@ leds {
 
 		power_led: led-0 {
 			label = "firefly:red:power";
-			linux,default-trigger = "ir-power-click";
+			linux,default-trigger = "default-on";
 			default-state = "on";
 			gpios = <&gpio0 RK_PA6 GPIO_ACTIVE_HIGH>;
 		};
 
 		user_led: led-1 {
 			label = "firefly:blue:user";
-			linux,default-trigger = "ir-user-click";
+			linux,default-trigger = "rc-feedback";
 			default-state = "off";
 			gpios = <&gpio0 RK_PB2 GPIO_ACTIVE_HIGH>;
 		};
-- 
2.43.0


