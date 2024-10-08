Return-Path: <devicetree+bounces-109187-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 35AA79958AB
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 22:40:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 678191C21D68
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 20:40:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C21021503D;
	Tue,  8 Oct 2024 20:40:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="jSuUVASO"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 715251E104B
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 20:40:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728420006; cv=none; b=B52rl0pWA/+2lZRRtz5HNzHQDvxfX+j3FVNuOBz1+hM4vAbeQX/pttjZ5wGPN7YshliZ2ggLI2we1Wiem+623pMu9m/wYaDPIGikyoGMozN9/PXIH50CpV6zkaDBIoYZHmo2T5i1lbcjoM7TImUeMdOZf1VTqdRESdrjGLaCPY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728420006; c=relaxed/simple;
	bh=XHCr0I0oSj3NWnX7j89mZZitzU+MFV19lrZhKLHlNA8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=bUbgqJRVO2giUy0+uxsvMkJmvWddIuY5YqE5r9c8SoLEJYFi8ymzHp/i71yZR990Ia47+U4XsB30LKGq2Qxexv3WgDFsXZFxkYHlj99rSAoyTYwo1g69C3wYOYP9OSUqrhamjp5SvNywViZlwc0bv7LMVlfLH/+tmBO+r2Ob8Es=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=jSuUVASO; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=eDd5It6L888PWBPkJXs5nl2b05MH0ha+y3DJsf2KZJ8=; b=jSuUVASO5JpD0ixglqh5ZhtT99
	MeAKJjnELiy/DWwPry9+m8z8UQD5tpS7pEl8AeWysUqbNvedrQZ/5LVI4M+BKs4xV6OVaPjzGUWVD
	swCc2sP0IblT7YS7PS7WjULFljKN2pcVQhHmVHvh4OZvX9m6FKln8u/nfV3/PdoWUsTiXih/AoAQD
	eB5QBnNvQN502Yo4JpTrYqmpa+Z8B+92Yzrd/k6/Dit7+gf2bgRtgguB2s7hzgXz1NwX3NoatxI+f
	pNERTHWjtRQh5qXFQ89dK9y/hypK+4JbN3IZ7GG+ZQnELS745vZb8Sn+21UhKcU/VX3atPTCCWgNT
	3Cu93X/w==;
Received: from i53875ad9.versanet.de ([83.135.90.217] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1syGzy-0007ua-Qg; Tue, 08 Oct 2024 22:40:02 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Muhammed Efe Cetin <efectn@6tel.net>
Subject: [PATCH v2 09/14] arm64: dts: rockchip: Remove 'enable-active-low' from two boards
Date: Tue,  8 Oct 2024 22:39:35 +0200
Message-ID: <20241008203940.2573684-10-heiko@sntech.de>
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

The 'enable-active-low' property is not a valid, because it is the
default behaviour of the fixed regulator.

Only 'enable-active-high' is valid, and when this property is absent
the fixed regulator will act as active low by default.

Both the rk3588-orange-pi-5 and the Wolfvision pf5 io expander overlay
smuggled those enable-active-low properties in, so remove them to
make dtbscheck happier.

Fixes: 28799a7734a0 ("arm64: dts: rockchip: add wolfvision pf5 io expander board")
Cc: Michael Riesch <michael.riesch@wolfvision.net>
Fixes: b6bc755d806e ("arm64: dts: rockchip: Add Orange Pi 5")
Cc: Muhammed Efe Cetin <efectn@6tel.net>

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 .../boot/dts/rockchip/rk3568-wolfvision-pf5-io-expander.dtso     | 1 -
 arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts              | 1 -
 2 files changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-wolfvision-pf5-io-expander.dtso b/arch/arm64/boot/dts/rockchip/rk3568-wolfvision-pf5-io-expander.dtso
index ebcaeafc3800..fa61633aea15 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-wolfvision-pf5-io-expander.dtso
+++ b/arch/arm64/boot/dts/rockchip/rk3568-wolfvision-pf5-io-expander.dtso
@@ -49,7 +49,6 @@ vcc1v8_eth: vcc1v8-eth-regulator {
 
 	vcc3v3_eth: vcc3v3-eth-regulator {
 		compatible = "regulator-fixed";
-		enable-active-low;
 		gpio = <&gpio0 RK_PC0 GPIO_ACTIVE_LOW>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&vcc3v3_eth_enn>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
index feea6b20a6bf..6b77be643249 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
@@ -71,7 +71,6 @@ vcc5v0_sys: vcc5v0-sys-regulator {
 
 	vcc_3v3_sd_s0: vcc-3v3-sd-s0-regulator {
 		compatible = "regulator-fixed";
-		enable-active-low;
 		gpios = <&gpio4 RK_PB5 GPIO_ACTIVE_LOW>;
 		regulator-name = "vcc_3v3_sd_s0";
 		regulator-boot-on;
-- 
2.43.0


