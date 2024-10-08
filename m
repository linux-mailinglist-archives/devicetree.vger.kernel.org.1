Return-Path: <devicetree+bounces-109190-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A3DC99958AE
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 22:40:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B84031C219F9
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 20:40:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29B1A21500A;
	Tue,  8 Oct 2024 20:40:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="RbhEone2"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 815B31E104B
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 20:40:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728420056; cv=none; b=j7x60bk2wRujPTtNMSCrXgUBifSGLGhU3uSKUHPI87AsfSU/9HHvusTYJQjfMB2fF8e2fI23BdP2bKoMmMkXj+ts1L67vVGVTRnp/J4fQiZZLNLiQoODh2s13SYh3bwU+mx6MWiYuFc5SLEQpCj1943wEALODD60luq5XvHL/z4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728420056; c=relaxed/simple;
	bh=Bt+2PGyEEgqdG+8y+lDDVrXJs6MLm0hEogNnyolgb9U=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=K9e369RUpdvSJzg/yiJ2qCBUNi8BRoKnHFyx/fP1bGm9cOyYJgJSbCNZqysHG/Hz8sh04OF969Iayz0J6ZE7jXcdfLbUNYoJj/cV7d2barYmLondRpeZT1nXOZ63YVzf6SpooOYbs8HhCjffY5s9GvMVDZAXBnw+VendQ8SL8LA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=RbhEone2; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=39rBIKasij5KGq63zlzPweJVheIerVbw/yLE/z9fdVM=; b=RbhEone2yOaB55CwxtXmK1QKIe
	cBThqv15TfOmICmCrNoXwHtDYdXjJGxBYqRRVtGJ0tQcp00tB+sKpb+92kON1q0uKElzkrgIcH+ac
	fMc1hoi76LJTPiOFks5k8z6Y2UXDK05rvu/2UphUt12vxOLKw0ze7UG8YbtoAh3d7NbbGcfWtsem9
	7pjX5D9K4uBFUFbB+Ne20lXaAewkCschbeyk9UiSWapXYp2HxYHpqCptWaZVJ3FVGDVpNmSQQoIOW
	B3T4csHuPvtE0Z4JQN+lP+GOW8Iib+XBD83deDwX8fca2aG3EMppiwm0Lfy+QM2jxoelJOwx4YkLO
	t1T4MvBw==;
Received: from i53875ad9.versanet.de ([83.135.90.217] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1syH00-0007ua-0Z; Tue, 08 Oct 2024 22:40:04 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Caesar Wang <wxt@rock-chips.com>
Subject: [PATCH v2 13/14] ARM: dts: rockchip: Fix the spi controller on rk3036
Date: Tue,  8 Oct 2024 22:39:39 +0200
Message-ID: <20241008203940.2573684-14-heiko@sntech.de>
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

Compatible and clock names did not match the existing binding.
So set the correct values and re-order+rename the clocks.

It looks like no rk3036 board did use the spi controller so far,
so this was never detected on a running device yet.

Fixes: f629fcfab2cd ("ARM: dts: rockchip: support the spi for rk3036")
Cc: Caesar Wang <wxt@rock-chips.com>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm/boot/dts/rockchip/rk3036.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/rockchip/rk3036.dtsi b/arch/arm/boot/dts/rockchip/rk3036.dtsi
index 09371f07d7b4..63b9912be06a 100644
--- a/arch/arm/boot/dts/rockchip/rk3036.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3036.dtsi
@@ -553,11 +553,11 @@ i2c0: i2c@20072000 {
 	};
 
 	spi: spi@20074000 {
-		compatible = "rockchip,rockchip-spi";
+		compatible = "rockchip,rk3036-spi";
 		reg = <0x20074000 0x1000>;
 		interrupts = <GIC_SPI 23 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&cru PCLK_SPI>, <&cru SCLK_SPI>;
-		clock-names = "apb-pclk","spi_pclk";
+		clocks = <&cru SCLK_SPI>, <&cru PCLK_SPI>;
+		clock-names = "spiclk", "apb_pclk";
 		dmas = <&pdma 8>, <&pdma 9>;
 		dma-names = "tx", "rx";
 		pinctrl-names = "default";
-- 
2.43.0


