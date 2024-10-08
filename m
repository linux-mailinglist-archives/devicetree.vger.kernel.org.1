Return-Path: <devicetree+bounces-109191-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C48E19958AF
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 22:41:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 83790284428
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 20:41:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A64AE21500F;
	Tue,  8 Oct 2024 20:41:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="M8u38ivj"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24EFC1E104B
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 20:41:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728420062; cv=none; b=Uspe85UML6PdLYm4BMkbMnsurHdSO3+xlRHsd+yuQGQnh2WlKQSgVgJHlcomoHwurEOxzYa3+jxoMDGjfWK5KKgqb43R4gdcY/R+JJTKGqm/PdCxHBWj6nElAdVJJUkRz7Uo96FDc3vhCDhMJjLQW2QMtQw72LI6Lxa4QbUOg88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728420062; c=relaxed/simple;
	bh=BqYbofV8cUBQhlK/YH+jiPaj3dPD5n7Pn8DAtqSw6TA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=UhkkJv/82byvg+urh56bui7knQA2abdZ014iflC5YtpSqt5zuIb2965IpPtBndfpZv1FTadH8mYtDC2Vf/FhYfGHgxG1adPWM9X1mwdW8R1WP7WsSN5Uc06fgNxU4jhUy7LKSmJ3hO1PKOxytB+VA2BvEBgCSNugJvMUnr0h7F4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=M8u38ivj; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=1Ss5v3ULHCunVrXhSZIkIP3MNlCeEJXebPB4aKeixYg=; b=M8u38ivjJa5SgkMHeQ87g9oobd
	35EWhNuyBA6J8ORwC2Z5xqmPXwt49xG7IuvJOPz1+Un8Ov70uGpXpW32fuJYORzgi3cqpC8jFif3Y
	+q0PtIfAmEOneHWGkPiO4Uqdfz9KQJZO7ZFvCCuKRLoO8XII0+SH+i9jKZyLISuT4zg//K68AebN2
	XO95qG5U7Y45BUfJNvAqCwpte6zHXzIEqeKybOOr+5WhtjGtscoFzDTHBG7+nxXCzf9XYlneSgARR
	CEIuD6gSk6fYIATOi2JWuZmozNQI8c3HHvspmtaWe8fyYWFC+gRci0DiMcU1mDdAfllcr462u1fBo
	Z7ahKUAQ==;
Received: from i53875ad9.versanet.de ([83.135.90.217] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1syGzz-0007ua-5e; Tue, 08 Oct 2024 22:40:03 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Martijn Braam <martijn@brixit.nl>,
	Javier Martinez Canillas <javierm@redhat.com>,
	Ondrej Jirman <megi@xff.cz>
Subject: [PATCH v2 10/14] arm64: dts: rockchip: remove orphaned pinctrl-names from pinephone pro
Date: Tue,  8 Oct 2024 22:39:36 +0200
Message-ID: <20241008203940.2573684-11-heiko@sntech.de>
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

The patch adding display support for the pinephone pro introduced two
regulators that contain pinctrl-names props but no pinctrl-assignments.

Looks like someone forgot the pinctrl settings, so remove the orphans
for now, until that changes.

Fixes: 3e987e1f22b9 ("arm64: dts: rockchip: Add internal display support to rk3399-pinephone-pro")
Cc: Martijn Braam <martijn@brixit.nl>
Cc: Javier Martinez Canillas <javierm@redhat.com>
Cc: Ondrej Jirman <megi@xff.cz>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
index 1a44582a49fb..09a016ea8c76 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
@@ -166,7 +166,6 @@ vcc1v8_lcd: vcc1v8-lcd {
 		regulator-max-microvolt = <1800000>;
 		vin-supply = <&vcc3v3_sys>;
 		gpio = <&gpio3 RK_PA5 GPIO_ACTIVE_HIGH>;
-		pinctrl-names = "default";
 	};
 
 	/* MIPI DSI panel 2.8v supply */
@@ -178,7 +177,6 @@ vcc2v8_lcd: vcc2v8-lcd {
 		regulator-max-microvolt = <2800000>;
 		vin-supply = <&vcc3v3_sys>;
 		gpio = <&gpio3 RK_PA1 GPIO_ACTIVE_HIGH>;
-		pinctrl-names = "default";
 	};
 
 	vibrator {
-- 
2.43.0


