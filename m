Return-Path: <devicetree+bounces-109186-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 63C7D9958AA
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 22:40:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1A21C1F27C7E
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 20:40:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC4FF21503B;
	Tue,  8 Oct 2024 20:40:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="gr5OUt9O"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2565C215016
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 20:40:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728420005; cv=none; b=FjXONJvAbKNfQDIbtERygD3PBwaGx2mSQLJlHzz7i8FFP3BeXp/s4TevoShiWa6oFIyotTviTeY/YbFC8xnD8dCLv0Jv81x3CBFqAe0rsZvucyD3Wt8KGFX3uA+0moppsyY157+V+FvKR4nrmlcqx6iLrgEGU5bN3/L2QUy5GvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728420005; c=relaxed/simple;
	bh=HCOm6ClujeeRNckRIN4WxS0i3Ha0AXfXhGIi2YcKX8M=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=GdPUbsjz/Ag7PS2BfAvClqZneMdHdspfvXff8AJRXRKe8jCyQzGo83DdizuaeexVldiFHJnCLeZHGG5j7IMKnfD23bSY/nz3lLo7BJEZz0Z/xBtDBdMO6OBioIIFD+YUyK99VW84gnzyjW+VUS1zo9rVnk6xapqBBMxhFK8s3vo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=gr5OUt9O; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=fMY3Hx2YxzWWEFZLZHGJcI0fZev4CYGwKOUcWpqRbzI=; b=gr5OUt9OETpicas45k1+5dGprA
	K6+y+lKFC/aShZr7VJC+ty2lnMUW+vVKmm+JQMb7qq5H5ReWLAebTp3iOdmxz2LWYwi6BJKQi3u/t
	wB8QrfUcmI4eOHgBS3vlb6CGPt1QrGHNM+V2ABkW+SERNz9DwTaZrnvGpu1e0tkJ0MrQAB2ffCcjf
	lWhjcSfjLmMs9GnjihLLxmwNg17tuGmEuLV7rDjL3gW7M4pAtnS1UuUQUrqKbsvJFSTIJ0g7Yrf4o
	xSXO3BBY4kpjlSbAgIQRq2V6ZD1g501bCwVcPcBsDP5hTpDRqqUlXCB3dv0RAYNovsoFxOLVLTFNa
	BIHKTD1g==;
Received: from i53875ad9.versanet.de ([83.135.90.217] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1syGzx-0007ua-Hi; Tue, 08 Oct 2024 22:40:01 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Quentin Schulz <quentin.schulz@theobroma-systems.com>,
	Sergey Bostandzhyan <jin@mediatomb.cc>,
	Wenhao Cui <lasstp5011@gmail.com>,
	Andy Yan <andyshrk@163.com>
Subject: [PATCH v2 05/14] arm64: dts: rockchip: Remove undocumented supports-emmc property
Date: Tue,  8 Oct 2024 22:39:31 +0200
Message-ID: <20241008203940.2573684-6-heiko@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241008203940.2573684-1-heiko@sntech.de>
References: <20241008203940.2573684-1-heiko@sntech.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

supports-emmc is an undocumented property that slipped into the mainline
kernel devicetree for some boards. Drop it.

Fixes: c484cf93f61b ("arm64: dts: rockchip: add PX30-µQ7 (Ringneck) SoM with Haikou baseboard")
Cc: Quentin Schulz <quentin.schulz@theobroma-systems.com>
Fixes: b8c028782922 ("arm64: dts: rockchip: Add DTS for FriendlyARM NanoPi R2S Plus")
Cc: Sergey Bostandzhyan <jin@mediatomb.cc>
Fixes: 8d94da58de53 ("arm64: dts: rockchip: Add EmbedFire LubanCat 1")
Cc: Wenhao Cui <lasstp5011@gmail.com>
Fixes: cdf46cdbabfc ("arm64: dts: rockchip: Add dts for EmbedFire rk3568 LubanCat 2")
Cc: Andy Yan <andyshrk@163.com>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi         | 1 -
 arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s-plus.dts | 1 -
 arch/arm64/boot/dts/rockchip/rk3566-lubancat-1.dts      | 1 -
 arch/arm64/boot/dts/rockchip/rk3568-lubancat-2.dts      | 1 -
 4 files changed, 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi b/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi
index bb1aea82e666..b7163ed74232 100644
--- a/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi
@@ -66,7 +66,6 @@ &emmc {
 	bus-width = <8>;
 	cap-mmc-highspeed;
 	mmc-hs200-1_8v;
-	supports-emmc;
 	mmc-pwrseq = <&emmc_pwrseq>;
 	non-removable;
 	vmmc-supply = <&vcc_3v3>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s-plus.dts b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s-plus.dts
index cb81ba3f23ff..3093f607f282 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s-plus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s-plus.dts
@@ -27,6 +27,5 @@ &emmc {
 	num-slots = <1>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&emmc_clk &emmc_cmd &emmc_bus8>;
-	supports-emmc;
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-lubancat-1.dts b/arch/arm64/boot/dts/rockchip/rk3566-lubancat-1.dts
index c1194d1e438d..9a2f59a351de 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-lubancat-1.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-lubancat-1.dts
@@ -507,7 +507,6 @@ &sdhci {
 	non-removable;
 	pinctrl-names = "default";
 	pinctrl-0 = <&emmc_bus8 &emmc_clk &emmc_cmd>;
-	supports-emmc;
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3568-lubancat-2.dts b/arch/arm64/boot/dts/rockchip/rk3568-lubancat-2.dts
index a3112d5df200..b505a4537ee8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-lubancat-2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-lubancat-2.dts
@@ -589,7 +589,6 @@ &sdhci {
 	non-removable;
 	pinctrl-names = "default";
 	pinctrl-0 = <&emmc_bus8 &emmc_clk &emmc_cmd>;
-	supports-emmc;
 	status = "okay";
 };
 
-- 
2.43.0


