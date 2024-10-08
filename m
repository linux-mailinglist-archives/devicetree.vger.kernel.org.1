Return-Path: <devicetree+bounces-109194-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 382C19958B3
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 22:41:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 687511C218EF
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 20:41:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACAE721501D;
	Tue,  8 Oct 2024 20:41:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="BfheFS4b"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22DF21E104B
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 20:41:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728420094; cv=none; b=S+Jnwm/ehqcFm84M+8RanycFlstKN31/fCScd8skky+YGDF4KrQR/ZeLdFJwcGoduIHx4QFTZgxNrToitLmJ7OSE2H6HSllkNC/FEeGmSy9w8Dn1SJIyurvYGtVpwInXahsxraP4Pw5/43oJqcg7qfYdvO4kvhcRyL2rTjAfiCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728420094; c=relaxed/simple;
	bh=1Vr/Q4rJVywtO6d1IdPH/ioe0RsbKnGabfSkbxNGuCk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ubKAo8c1qQXYfEVG1yBPPftxuJPhh4fS630+xUIJmygWflBHKdIE0cunua4P/rc7yb2pLweqUoPap4Go/vOKtLsl3oi7iSON+oJeYRXG+9uobEEmoUnPyAcsNcFMjxQDZCnlJvqnp83Q8XeB1L6bk4oYrcsEDSkeSuTr1AVUN8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=BfheFS4b; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=uxRN7J/sVj1N0EB6Jrbue+PuLHyGkoW89UPYH/fY9Tw=; b=BfheFS4b+uK7DdRCnUMyljRUyT
	cSkO9CvVsxiqxZ8es5SzLldtEoAX98KzigFlchbyXRgQ3KCJLOUjUU2sMz7yJocbL1vhpmmxI/feq
	UWttdfnh4vEedSvbftR9tsWMYZCkBg28LJ1TjcsH8K74toVil3V8K0XcP+rCKhXoOVBH5tY6zqVvt
	KKJdpsJrLOik1VgTSD4BO0lNARcV6NUfwV9LUi4q6KrXhtjO/1Pv9yuAHfk569t75D9MtuyWeekRL
	PExHofEUoe/XP+xaqxjXHs+yqsTMOycj2L3eN2KDHgt6ULPBsEUrUhyq24lptKkaFD+nG5aXdZKyh
	WjF2Opew==;
Received: from i53875ad9.versanet.de ([83.135.90.217] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1syGzz-0007ua-NC; Tue, 08 Oct 2024 22:40:03 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Caesar Wang <wxt@rock-chips.com>
Subject: [PATCH v2 12/14] ARM: dts: rockchip: drop grf reference from rk3036 hdmi
Date: Tue,  8 Oct 2024 22:39:38 +0200
Message-ID: <20241008203940.2573684-13-heiko@sntech.de>
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

Neither the binding nor the driver implementation specify/use the grf
reference provided in the rk3036. And neither does the newer rk3128
user of the hdmi controller. So drop the rockchip,grf property.

Fixes: b7217cf19c63 ("ARM: dts: rockchip: add hdmi device node for rk3036")
Cc: Caesar Wang <wxt@rock-chips.com>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm/boot/dts/rockchip/rk3036.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/rockchip/rk3036.dtsi b/arch/arm/boot/dts/rockchip/rk3036.dtsi
index 37369538483f..09371f07d7b4 100644
--- a/arch/arm/boot/dts/rockchip/rk3036.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3036.dtsi
@@ -400,7 +400,6 @@ hdmi: hdmi@20034000 {
 		interrupts = <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru  PCLK_HDMI>;
 		clock-names = "pclk";
-		rockchip,grf = <&grf>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&hdmi_ctl>;
 		#sound-dai-cells = <0>;
-- 
2.43.0


