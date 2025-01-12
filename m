Return-Path: <devicetree+bounces-137733-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 55FFEA0A7E2
	for <lists+devicetree@lfdr.de>; Sun, 12 Jan 2025 10:08:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BB48A1675AB
	for <lists+devicetree@lfdr.de>; Sun, 12 Jan 2025 09:08:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C5CE187553;
	Sun, 12 Jan 2025 09:08:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="MNfS7f15"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m15592.qiye.163.com (mail-m15592.qiye.163.com [101.71.155.92])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 636358BE8;
	Sun, 12 Jan 2025 09:07:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=101.71.155.92
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736672883; cv=none; b=eF/Oowlla4sWT/UZoSLyYPH6axvAjF7ve+aAx5fv67QJYeUDhkZHcnmKIRCz70Yw0+r6TW1l5PwjnbTVsZcYcbOvHfjBxXUtbtxg4vp31OmClY7ftN3YWSsBEHHRKpVjM+KlvFUAbtVH4mfufFekyGZ08Z2g5giazYQYV0Da9E0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736672883; c=relaxed/simple;
	bh=I7BgB9RJWLgSG2Lt4HUEDP2WYSIgPgQ3AoOWXGEibBU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=fPUuWfQ5KzAON52IibGefGGQlp9NDHR9f1mYDNyH29a1AdDmDtHBFdAlGayHqqM89V0T+Ozvd0RyDx+AqQFzvzGi4d0C1iJS+3CHnDuocAOzlq2QiBRFQgcN0sZC+t16AajfX3Q4Xj7QaA9ssQONgFs2SJrZhgsH3WVOm4lTv/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=MNfS7f15; arc=none smtp.client-ip=101.71.155.92
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 870092c4;
	Sun, 12 Jan 2025 17:07:50 +0800 (GMT+08:00)
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
	dmitry.baryshkov@linaro.org,
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
Subject: [PATCH v1 6/6] arm64: dts: rockchip: Fix label name of hdptxphy for RK3588
Date: Sun, 12 Jan 2025 17:07:14 +0800
Message-Id: <20250112090714.1564158-7-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250112090714.1564158-1-damon.ding@rock-chips.com>
References: <20250112090714.1564158-1-damon.ding@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQkJKHlYdTk8dGkwYGBhPSkhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a9459c5010303a3kunm870092c4
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PAg6KAw*NjIcEwNWPR4cIRVW
	OBgaCz9VSlVKTEhNTUxJQ0xJSEhLVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFDQkJKNwY+
DKIM-Signature:a=rsa-sha256;
	b=MNfS7f15kfvxqcJsh3xk5fBvH8/HNkihvMI7cAOqa8dmdTCCFvlJBojf/RL3z9Q9DmLgKbHno5ZWdKkssADtT1QL3BHyWbN6Gds8I+tC+e1k26L1M9+GyecjkjTAquPTDy4igZwsqhwkpnrHEswKvi8ZaECESr8qIBFJ1D5/WJk=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=IjGLkCUQ2XzrpIbV9eAflga8WE0m923sOKSopB0a3Xg=;
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
index d597112f1d5b..86a9f2f35e66 100644
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
index c9749cb50076..92f5d3d7dde3 100644
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


