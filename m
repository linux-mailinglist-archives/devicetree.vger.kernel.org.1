Return-Path: <devicetree+bounces-251665-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5130FCF56B7
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 20:46:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 36223302A479
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 19:46:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48F4D258EE0;
	Mon,  5 Jan 2026 19:46:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H3UYn4jG"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F79710FD;
	Mon,  5 Jan 2026 19:46:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767642405; cv=none; b=dioaRNut5Dj/hklzhrf6qDyjBdNlwVKPgOTeAT5CwMp/gP3isVFXPwSQ6L8qpzOYVjWWiTY6OtxylQ83vrK47Areh4393PBeKYBRBIXmjs1DGMpCw1sUi1OZg7ImJKBwVfTAekOZ2Wacf+bwpvLXbrYcqCngoj84pJ/ezrtcric=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767642405; c=relaxed/simple;
	bh=jXT/B7qerXIpcbaLv0iK/+Rwz/W3jTzZ5aQTdvgrZgI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=FvjoZF2VWID4m+7UtOgXYY8hZhvAPsDoM8DBXb/xdBvth6ur29aaA2ux7TpCueVYSlo4ZhARt1HB4G83GnM4VX85Fb4f/cICNOac49DFkPN1SRLNM570EXoQP9P1EirGZgFUBwFkbXV0EAs9xzmO6VgOvJAihgDC7KJ2qlkaCKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H3UYn4jG; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A4A90C116D0;
	Mon,  5 Jan 2026 19:46:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767642404;
	bh=jXT/B7qerXIpcbaLv0iK/+Rwz/W3jTzZ5aQTdvgrZgI=;
	h=From:To:Cc:Subject:Date:From;
	b=H3UYn4jGB3zIZ/hSnUBT6WLmSoTbGjmDcCLCV1LHlH2IuQO2qxPQTyEW0Zc+W0IPe
	 1Wy2LcLW13W8eLdLeM8kh25YKTVn42uZbgmRwpI5VthSTraGpe0iE4yXLFeJRwqIp3
	 MfCSMHCVCJjYSxhmmhMVapBj3MeFStl4nAdjMK0YCJY/G/zfqumy4MNhfBG3pnHlcz
	 7wHZsujnidHnvPEM3BwQdbQe4qtOckMUYl85NzNRC7Q0I/b+/ILaYxLoW4PWTKDvEp
	 F5EoEeqYDIP8Br5Pyv0UnwztvboAt41AxVAYZXn4DOLN6k/8rHzjqbuqIZ6xojBNEK
	 VjgUCMXkqwr3A==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Andrew Lunn <andrew@lunn.ch>,
	Gregory Clement <gregory.clement@bootlin.com>,
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: marvell: Fix stray and typo "pinctrl-names" properties
Date: Mon,  5 Jan 2026 13:46:41 -0600
Message-ID: <20260105194642.3189113-1-robh@kernel.org>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

There's several cases of "pinctrl-names" used without any "pinctrl-0"
properties. Drop them.

Fix the typo "pintrl-names" as well.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dts | 1 -
 arch/arm64/boot/dts/marvell/cn9130-cf-base.dts                | 2 +-
 arch/arm64/boot/dts/marvell/cn9130-crb.dtsi                   | 1 -
 arch/arm64/boot/dts/marvell/cn9130-db.dtsi                    | 2 --
 arch/arm64/boot/dts/marvell/cn9132-db.dtsi                    | 1 -
 5 files changed, 1 insertion(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dts b/arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dts
index e82284888b9a..0ab33aa928e7 100644
--- a/arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dts
+++ b/arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dts
@@ -42,7 +42,6 @@ usb3_phy: usb3-phy {
 	};
 
 	gpio-leds {
-		pinctrl-names = "default";
 		compatible = "gpio-leds";
 		/* No assigned functions to the LEDs by default */
 		led1 {
diff --git a/arch/arm64/boot/dts/marvell/cn9130-cf-base.dts b/arch/arm64/boot/dts/marvell/cn9130-cf-base.dts
index 788a5c302b17..212865f6cf6a 100644
--- a/arch/arm64/boot/dts/marvell/cn9130-cf-base.dts
+++ b/arch/arm64/boot/dts/marvell/cn9130-cf-base.dts
@@ -137,7 +137,7 @@ led@1 {
 
 &cp0_pinctrl {
 	pinctrl-0 = <&sim_select_pins>;
-	pintrl-names = "default";
+	pinctrl-names = "default";
 
 	rear_button_pins: cp0-rear-button-pins {
 		marvell,pins = "mpp31";
diff --git a/arch/arm64/boot/dts/marvell/cn9130-crb.dtsi b/arch/arm64/boot/dts/marvell/cn9130-crb.dtsi
index 5689a8bdfd03..c9050e707a60 100644
--- a/arch/arm64/boot/dts/marvell/cn9130-crb.dtsi
+++ b/arch/arm64/boot/dts/marvell/cn9130-crb.dtsi
@@ -93,7 +93,6 @@ &uart0 {
 
 /* on-board eMMC U6 */
 &ap_sdhci0 {
-	pinctrl-names = "default";
 	bus-width = <8>;
 	status = "okay";
 	mmc-ddr-1_8v;
diff --git a/arch/arm64/boot/dts/marvell/cn9130-db.dtsi b/arch/arm64/boot/dts/marvell/cn9130-db.dtsi
index 7156739aa31a..8e413286e019 100644
--- a/arch/arm64/boot/dts/marvell/cn9130-db.dtsi
+++ b/arch/arm64/boot/dts/marvell/cn9130-db.dtsi
@@ -111,7 +111,6 @@ &uart0 {
 
 /* on-board eMMC - U9 */
 &ap_sdhci0 {
-	pinctrl-names = "default";
 	bus-width = <8>;
 	vqmmc-supply = <&ap0_reg_sd_vccq>;
 	status = "okay";
@@ -166,7 +165,6 @@ &cp0_i2c0 {
 	/* U36 */
 	expander0: pca953x@21 {
 		compatible = "nxp,pca9555";
-		pinctrl-names = "default";
 		gpio-controller;
 		#gpio-cells = <2>;
 		reg = <0x21>;
diff --git a/arch/arm64/boot/dts/marvell/cn9132-db.dtsi b/arch/arm64/boot/dts/marvell/cn9132-db.dtsi
index f82d45e62753..98eee9e4e10b 100644
--- a/arch/arm64/boot/dts/marvell/cn9132-db.dtsi
+++ b/arch/arm64/boot/dts/marvell/cn9132-db.dtsi
@@ -142,7 +142,6 @@ i2c@1 {
 			/* U12 */
 			cp2_module_expander1: pca9555@21 {
 				compatible = "nxp,pca9555";
-				pinctrl-names = "default";
 				gpio-controller;
 				#gpio-cells = <2>;
 				reg = <0x21>;
-- 
2.51.0


