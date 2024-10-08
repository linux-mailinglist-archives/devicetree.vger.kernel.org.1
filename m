Return-Path: <devicetree+bounces-109192-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 398829958B1
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 22:41:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 620EF1C2193C
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 20:41:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16850215019;
	Tue,  8 Oct 2024 20:41:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="ZiltC2Y/"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D8F3215024
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 20:41:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728420073; cv=none; b=c1EDKgXW0XJ2x8H5iUOEwUIDfqFcw1hyr3kvRJiFH7NdqwRtnoKFryN8ndPvfdpnJ3VTe3iGCj8Z2KWqVlusTOcoTaWnBKZqQvM4Emi6liPZpp0Q+SF5ijo7xpvnFDB0icsCQj3zfXplsuDBTBPFDiT5c+8vSkxJhPQPeMYNvBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728420073; c=relaxed/simple;
	bh=9om/csVeg1i7PgpUXovqAXLHfjJ9wTSRFvRq21jB6ik=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=GrMMSrWA/rf5n9AKcsTOqa6QoURj4kMTnRu9/EsjsLNoR2ZNrNQr3SzK/2Hc9pjAzbRfwon1kNOfvYPpy3BS+lpRuPyub8DrBp/17+JciPaQg5aqi6Ap8cE4qDFUToUhLCHDCSrjTiAA344Vb/Am8mVNRZ4FmEgpL7Jad6nPUWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=ZiltC2Y/; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=m5w6xdKWUgNdPkw7Y5rv8zDO3m/QxCrIMKoWlCUHjdI=; b=ZiltC2Y/4qz7/TO1MouhOb+BsU
	4nzW+5G/9qde5KRnd8AdEDJxirPanR46GCVLITS4FONDTZUHS4Iiksaoh7dnC3K2RmuHUCbUSCQJQ
	imngiRZnBrpF3fji8GMJ7OufWhqUG9Y1MdcMzLlzXdKPyV0GAyZ9ib5z1+EZCbb5ksbE+v23ND4cM
	agxI9RsAAthFgOeiz5kOMTRnf+kiRxRHdJ2/ystFihhD7r/Y+v073znqv2Tn/C9iRt5kDSmAMgEn5
	tdw+JQoKub41vYN0RDj/6p0P4R434FeYmbaRuf4E8YXp9cOKcE9gB8s7ZP00qB+b6jevaUDtHXpLS
	dMYEHEqA==;
Received: from i53875ad9.versanet.de ([83.135.90.217] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1syH00-0007ua-AF; Tue, 08 Oct 2024 22:40:04 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Caesar Wang <wxt@rock-chips.com>
Subject: [PATCH v2 14/14] ARM: dts: rockchip: Fix the realtek audio codec on rk3036-kylin
Date: Tue,  8 Oct 2024 22:39:40 +0200
Message-ID: <20241008203940.2573684-15-heiko@sntech.de>
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

Both the node name as well as the compatible were not named
according to the binding expectations, fix that.

Fixes: 47bf3a5c9e2a ("ARM: dts: rockchip: add the sound setup for rk3036-kylin board")
Cc: Caesar Wang <wxt@rock-chips.com>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm/boot/dts/rockchip/rk3036-kylin.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/rockchip/rk3036-kylin.dts b/arch/arm/boot/dts/rockchip/rk3036-kylin.dts
index e32c73d32f0a..2f84e2805712 100644
--- a/arch/arm/boot/dts/rockchip/rk3036-kylin.dts
+++ b/arch/arm/boot/dts/rockchip/rk3036-kylin.dts
@@ -325,8 +325,8 @@ regulator-state-mem {
 &i2c2 {
 	status = "okay";
 
-	rt5616: rt5616@1b {
-		compatible = "rt5616";
+	rt5616: audio-codec@1b {
+		compatible = "realtek,rt5616";
 		reg = <0x1b>;
 		clocks = <&cru SCLK_I2S_OUT>;
 		clock-names = "mclk";
-- 
2.43.0


