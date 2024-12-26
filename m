Return-Path: <devicetree+bounces-134057-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 264709FC91C
	for <lists+devicetree@lfdr.de>; Thu, 26 Dec 2024 07:39:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A2D99161903
	for <lists+devicetree@lfdr.de>; Thu, 26 Dec 2024 06:39:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3BF415624B;
	Thu, 26 Dec 2024 06:39:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="MbMgFLbJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m3268.qiye.163.com (mail-m3268.qiye.163.com [220.197.32.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 343B114EC4B;
	Thu, 26 Dec 2024 06:39:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735195155; cv=none; b=Lh3HiIpMFX2WjGo+hCBb4wAWAJKoTJjY8asSrYzN7Nsy+Oph2jGyZZlRp7Lq5ixa66IDUP0PVuOon2gxU/nmT4ws2LNpbeusRwjpjzDIDCYX2UnMV8mOBpY5pWw+42niPc3JsRaPec3xKYbdPvMVG5JhzoDb+zfCRAZfnA9EO7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735195155; c=relaxed/simple;
	bh=1vnSVr8JzQ1kIOOshKXpgqA/wogHRuF0UUsIkbC9VP8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=LqgYGZVJsmHUEF8pPYSFkoH54vi90JmoqEymcJHRdVR8uI/sKoJ3b5NYWIklud4EGf3Nj88nFJmZxJZ74qABv5D85ZbhuHXYynXRLet6/B639/X9Z15cFf6qAqQEorbc1wNnyIskU23MA3aCkPS2+qkCZfgy8PTddvvJOphqP1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=MbMgFLbJ; arc=none smtp.client-ip=220.197.32.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 6dc511b3;
	Thu, 26 Dec 2024 14:33:55 +0800 (GMT+08:00)
From: Damon Ding <damon.ding@rock-chips.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	rfoss@kernel.org,
	vkoul@kernel.org,
	sebastian.reichel@collabora.com,
	cristian.ciocaltea@collabora.com,
	l.stach@pengutronix.de,
	andy.yan@rock-chips.com,
	hjc@rock-chips.com,
	algea.cao@rock-chips.com,
	kever.yang@rock-chips.com,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Damon Ding <damon.ding@rock-chips.com>
Subject: [PATCH v4 15/17] arm64: dts: rockchip: Fix label name of hdptxphy for RK3588
Date: Thu, 26 Dec 2024 14:33:11 +0800
Message-Id: <20241226063313.3267515-16-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241226063313.3267515-1-damon.ding@rock-chips.com>
References: <20241226063313.3267515-1-damon.ding@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGRpOH1YZTE1MQx4YT08fTk9WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a9401abfa0103a3kunm6dc511b3
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MAg6Lio*TDILCEwPTjktKh5R
	OC0aC05VSlVKTEhOSkJPQ0hMSExLVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFDQkJKNwY+
DKIM-Signature:a=rsa-sha256;
	b=MbMgFLbJ/+0fkg7er7Nn1fs33MY5qG7k4ztS4HjkJ27ezx4ufyPQxCv9aUKkqvkF5VEfzuY+epfM8YtJNKR07ztHmppiDmlxBwU91qtTk8oiU9PkrV0c+ZIVKbb9V9E14Jr+ayd1KHM5GeMeDX0ohJ7gqdxcHCRNPe6CqG/E9mg=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=vCKXtzuwlhJUvr/Y/PPdwuxyKY7/Zwsu0NONuR9mcGo=;
	h=date:mime-version:subject:message-id:from;

The hdptxphy is a combo transmit-PHY for HDMI2.1 TMDS Link, FRL Link, DP
and eDP Link. Therefore, it is better to name it hdptxphy0 other than
hdptxphy_hdmi0, which will be referenced by both hdmi0 and edp0 nodes.

Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi                 | 4 ++--
 arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-evb.dts        | 2 +-
 arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-genbook.dts    | 2 +-
 arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts              | 2 +-
 .../boot/dts/rockchip/rk3588-friendlyelec-cm3588-nas.dts      | 2 +-
 arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts                | 2 +-
 arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi            | 2 +-
 arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts       | 2 +-
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts               | 2 +-
 arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dts          | 2 +-
 arch/arm64/boot/dts/rockchip/rk3588s-coolpi-4b.dts            | 2 +-
 arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts      | 2 +-
 arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6.dtsi           | 2 +-
 arch/arm64/boot/dts/rockchip/rk3588s-odroid-m2.dts            | 2 +-
 arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dtsi          | 2 +-
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts              | 2 +-
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts              | 2 +-
 17 files changed, 18 insertions(+), 18 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
index a337f3fb8377..7e125897b0cd 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
@@ -1386,7 +1386,7 @@ hdmi0: hdmi@fde80000 {
 			     <GIC_SPI 172 IRQ_TYPE_LEVEL_HIGH 0>,
 			     <GIC_SPI 360 IRQ_TYPE_LEVEL_HIGH 0>;
 		interrupt-names = "avp", "cec", "earc", "main", "hpd";
-		phys = <&hdptxphy_hdmi0>;
+		phys = <&hdptxphy0>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&hdmim0_tx0_cec &hdmim0_tx0_hpd
 			     &hdmim0_tx0_scl &hdmim0_tx0_sda>;
@@ -2806,7 +2806,7 @@ dmac2: dma-controller@fed10000 {
 		#dma-cells = <1>;
 	};
 
-	hdptxphy_hdmi0: phy@fed60000 {
+	hdptxphy0: phy@fed60000 {
 		compatible = "rockchip,rk3588-hdptx-phy";
 		reg = <0x0 0xfed60000 0x0 0x2000>;
 		clocks = <&cru CLK_USB2PHY_HDPTXRXPHY_REF>, <&cru PCLK_HDPTX0>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-evb.dts b/arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-evb.dts
index 9d525c8ff725..9eda69722665 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-evb.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-evb.dts
@@ -129,7 +129,7 @@ hdmi0_out_con: endpoint {
 	};
 };
 
-&hdptxphy_hdmi0 {
+&hdptxphy0 {
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-genbook.dts b/arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-genbook.dts
index 92f0ed83c990..d1be72eb63a4 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-genbook.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-genbook.dts
@@ -166,7 +166,7 @@ hdmi0_out_con: endpoint {
 	};
 };
 
-&hdptxphy_hdmi0 {
+&hdptxphy0 {
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
index d6e464cdc536..094235d22cd1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
@@ -328,7 +328,7 @@ hdmi0_out_con: endpoint {
 	};
 };
 
-&hdptxphy_hdmi0 {
+&hdptxphy0 {
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-friendlyelec-cm3588-nas.dts b/arch/arm64/boot/dts/rockchip/rk3588-friendlyelec-cm3588-nas.dts
index b3a04ca370bb..8171fbfd819a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-friendlyelec-cm3588-nas.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-friendlyelec-cm3588-nas.dts
@@ -335,7 +335,7 @@ hdmi0_out_con: endpoint {
 	};
 };
 
-&hdptxphy_hdmi0 {
+&hdptxphy0 {
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts b/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts
index 90f823b2c219..ef56380530f9 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts
@@ -303,7 +303,7 @@ hdmi0_out_con: endpoint {
 	};
 };
 
-&hdptxphy_hdmi0 {
+&hdptxphy0 {
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
index cb350727d116..0d9b5020acc0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
@@ -360,7 +360,7 @@ hdmi0_out_con: endpoint {
 	};
 };
 
-&hdptxphy_hdmi0 {
+&hdptxphy0 {
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
index 9f5a38b290bf..f14e96d96207 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
@@ -296,7 +296,7 @@ hdmi0_out_con: endpoint {
 	};
 };
 
-&hdptxphy_hdmi0 {
+&hdptxphy0 {
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index c44d001da169..a047c579c93d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -220,7 +220,7 @@ hdmi0_out_con: endpoint {
 	};
 };
 
-&hdptxphy_hdmi0 {
+&hdptxphy0 {
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dts b/arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dts
index 3187b4918a30..795d8175e654 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dts
@@ -189,7 +189,7 @@ hdmi0_out_con: endpoint {
 	};
 };
 
-&hdptxphy_hdmi0 {
+&hdptxphy0 {
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-coolpi-4b.dts b/arch/arm64/boot/dts/rockchip/rk3588s-coolpi-4b.dts
index 9c394f733bbf..f471baca6d31 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-coolpi-4b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-coolpi-4b.dts
@@ -236,7 +236,7 @@ hdmi0_out_con: endpoint {
 	};
 };
 
-&hdptxphy_hdmi0 {
+&hdptxphy0 {
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
index 4a3aa80f2226..74a4f03e05e3 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
@@ -278,7 +278,7 @@ hdmi0_out_con: endpoint {
 	};
 };
 
-&hdptxphy_hdmi0 {
+&hdptxphy0 {
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6.dtsi
index 76a6e8e517e9..482f5917043f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6.dtsi
@@ -251,7 +251,7 @@ hdmi0_out_con: endpoint {
 	};
 };
 
-&hdptxphy_hdmi0 {
+&hdptxphy0 {
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-odroid-m2.dts b/arch/arm64/boot/dts/rockchip/rk3588s-odroid-m2.dts
index 8f034c6d494c..1463bd36b1b2 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-odroid-m2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-odroid-m2.dts
@@ -264,7 +264,7 @@ hdmi0_out_con: endpoint {
 	};
 };
 
-&hdptxphy_hdmi0 {
+&hdptxphy0 {
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dtsi
index d86aeacca238..9e16960b8705 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dtsi
@@ -197,7 +197,7 @@ hdmi0_out_con: endpoint {
 	};
 };
 
-&hdptxphy_hdmi0 {
+&hdptxphy0 {
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
index 70a43432bdc5..676cc4fec269 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
@@ -334,7 +334,7 @@ hdmi0_out_con: endpoint {
 	};
 };
 
-&hdptxphy_hdmi0 {
+&hdptxphy0 {
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
index 9b14d5383cdc..bf74789e3f51 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
@@ -278,7 +278,7 @@ hdmi0_out_con: endpoint {
 	};
 };
 
-&hdptxphy_hdmi0 {
+&hdptxphy0 {
 	status = "okay";
 };
 
-- 
2.34.1


