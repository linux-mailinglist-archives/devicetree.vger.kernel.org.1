Return-Path: <devicetree+bounces-251664-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 10526CF56B4
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 20:46:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C43893092824
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 19:46:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02566231845;
	Mon,  5 Jan 2026 19:46:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kUDUFGZD"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA8B110FD;
	Mon,  5 Jan 2026 19:46:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767642399; cv=none; b=Vbja7IYkAGRwCgoQL3HMcivXzocspQ/iFHzpM8I9UbW6qREJE9ggI2K19rDZmgfDHTPkrH49maFkmrpETpN9+xxiTeA42P5tSoasxOlOJTbrXvkzj2Lt953bZnUBNDhc4PETmccp5hHd2e3y3WMbeH+ABqZ+Su7aZ6kY1oJCoYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767642399; c=relaxed/simple;
	bh=uXHOetpzVfMY5FeZnGkLH3rPKDi0N+YTnGd6QXJf5v4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=m8qdLZDdJYY7kh9f+phRRK9v+emZZVMhV6ow31TOilekTk8gVvT0JnT9hBgDQSemWIVjtG26ieVuYMZPQ6Q39mxwwVxIWJIXQM/+ErVITmYb9/tNpIEmJQ8p872myhFQ1jEsciLtlAkx0mpYgCtYbpQxrOL9XrUAa4Y+T7EDefk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kUDUFGZD; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4B29FC116D0;
	Mon,  5 Jan 2026 19:46:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767642399;
	bh=uXHOetpzVfMY5FeZnGkLH3rPKDi0N+YTnGd6QXJf5v4=;
	h=From:To:Cc:Subject:Date:From;
	b=kUDUFGZDo1OvCCnRLo4G/PnCJSebI1OqSHrhRdxZkWrWgtTiCoftVBhgaqYWpR/HN
	 FiumkftU67LUov1SU/Ri+dcoap71J8Z3NLcchyZgtu8YE17Z2nxf3mfleUp291fTku
	 vQm+TzRQ7dkVi11CraT85Gmmccao+DJCmX0IAxfr58PfCiUdMog0uAXhAEtvbTUYyU
	 nB7otustWu2Y6zmz7T1EErVeoI0d5DhFGjfv3IHeQnaGJuKEuVliKXpZkNgY/diD5v
	 FmqUVEGRfG2Ja9ydPnmX1J00upeEUTkLtQwCwNMA0DuCrWvq3GojeS9brWK6Bq/FnL
	 1gHUhBmIoGbUw==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Andrew Lunn <andrew@lunn.ch>,
	Gregory Clement <gregory.clement@bootlin.com>,
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: marvell: Add missing "#phy-cells" to "usb-nop-xceiv"
Date: Mon,  5 Jan 2026 13:46:34 -0600
Message-ID: <20260105194636.3188884-1-robh@kernel.org>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The "usb-nop-xceiv" binding requires "#phy-cells" property with a value
of 0 though it is not really used. Add it where missing from Marvell
platforms.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 arch/arm64/boot/dts/marvell/armada-3720-db.dts                | 1 +
 arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dts | 1 +
 arch/arm64/boot/dts/marvell/armada-8040-db.dts                | 2 ++
 arch/arm64/boot/dts/marvell/cn9130-crb.dtsi                   | 2 ++
 arch/arm64/boot/dts/marvell/cn9130-db.dtsi                    | 2 ++
 arch/arm64/boot/dts/marvell/cn9131-db.dtsi                    | 1 +
 arch/arm64/boot/dts/marvell/cn9132-db.dtsi                    | 2 ++
 7 files changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/marvell/armada-3720-db.dts b/arch/arm64/boot/dts/marvell/armada-3720-db.dts
index bd4e61d5448e..06d4a3a93f84 100644
--- a/arch/arm64/boot/dts/marvell/armada-3720-db.dts
+++ b/arch/arm64/boot/dts/marvell/armada-3720-db.dts
@@ -41,6 +41,7 @@ exp_usb3_vbus: usb3-vbus {
 
 	usb3_phy: usb3-phy {
 		compatible = "usb-nop-xceiv";
+		#phy-cells = <0>;
 		vcc-supply = <&exp_usb3_vbus>;
 	};
 
diff --git a/arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dts b/arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dts
index 97a180c8dcd9..e82284888b9a 100644
--- a/arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dts
+++ b/arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dts
@@ -37,6 +37,7 @@ reg_usb3_vbus: usb3-vbus {
 
 	usb3_phy: usb3-phy {
 		compatible = "usb-nop-xceiv";
+		#phy-cells = <0>;
 		vcc-supply = <&reg_usb3_vbus>;
 	};
 
diff --git a/arch/arm64/boot/dts/marvell/armada-8040-db.dts b/arch/arm64/boot/dts/marvell/armada-8040-db.dts
index 21ecb9c12505..c7102f74d4d5 100644
--- a/arch/arm64/boot/dts/marvell/armada-8040-db.dts
+++ b/arch/arm64/boot/dts/marvell/armada-8040-db.dts
@@ -51,6 +51,7 @@ cp0_reg_usb3_1_vbus: cp0-usb3-1-vbus {
 
 	cp0_usb3_0_phy: cp0-usb3-0-phy {
 		compatible = "usb-nop-xceiv";
+		#phy-cells = <0>;
 		vcc-supply = <&cp0_reg_usb3_0_vbus>;
 	};
 
@@ -65,6 +66,7 @@ cp1_reg_usb3_0_vbus: cp1-usb3-0-vbus {
 
 	cp1_usb3_0_phy: cp1-usb3-0-phy {
 		compatible = "usb-nop-xceiv";
+		#phy-cells = <0>;
 		vcc-supply = <&cp1_reg_usb3_0_vbus>;
 	};
 };
diff --git a/arch/arm64/boot/dts/marvell/cn9130-crb.dtsi b/arch/arm64/boot/dts/marvell/cn9130-crb.dtsi
index 5e7d6de3cdde..5689a8bdfd03 100644
--- a/arch/arm64/boot/dts/marvell/cn9130-crb.dtsi
+++ b/arch/arm64/boot/dts/marvell/cn9130-crb.dtsi
@@ -47,10 +47,12 @@ cp0_reg_usb3_vbus1: regulator-2 {
 
 	cp0_usb3_0_phy0: usb-phy-1 {
 		compatible = "usb-nop-xceiv";
+		#phy-cells = <0>;
 	};
 
 	cp0_usb3_0_phy1: usb-phy-2 {
 		compatible = "usb-nop-xceiv";
+		#phy-cells = <0>;
 		vcc-supply = <&cp0_reg_usb3_vbus1>;
 	};
 
diff --git a/arch/arm64/boot/dts/marvell/cn9130-db.dtsi b/arch/arm64/boot/dts/marvell/cn9130-db.dtsi
index 3cc320f569ad..7156739aa31a 100644
--- a/arch/arm64/boot/dts/marvell/cn9130-db.dtsi
+++ b/arch/arm64/boot/dts/marvell/cn9130-db.dtsi
@@ -50,6 +50,7 @@ cp0_reg_usb3_vbus0: regulator-2 {
 
 	cp0_usb3_0_phy0: usb-phy-1 {
 		compatible = "usb-nop-xceiv";
+		#phy-cells = <0>;
 		vcc-supply = <&cp0_reg_usb3_vbus0>;
 	};
 
@@ -64,6 +65,7 @@ cp0_reg_usb3_vbus1: regulator-3 {
 
 	cp0_usb3_0_phy1: usb-phy-2 {
 		compatible = "usb-nop-xceiv";
+		#phy-cells = <0>;
 		vcc-supply = <&cp0_reg_usb3_vbus1>;
 	};
 
diff --git a/arch/arm64/boot/dts/marvell/cn9131-db.dtsi b/arch/arm64/boot/dts/marvell/cn9131-db.dtsi
index 626042fce7e2..26dc91c88677 100644
--- a/arch/arm64/boot/dts/marvell/cn9131-db.dtsi
+++ b/arch/arm64/boot/dts/marvell/cn9131-db.dtsi
@@ -31,6 +31,7 @@ cp1_reg_usb3_vbus0: regulator-6 {
 
 	cp1_usb3_0_phy0: usb-phy-3 {
 		compatible = "usb-nop-xceiv";
+		#phy-cells = <0>;
 		vcc-supply = <&cp1_reg_usb3_vbus0>;
 	};
 
diff --git a/arch/arm64/boot/dts/marvell/cn9132-db.dtsi b/arch/arm64/boot/dts/marvell/cn9132-db.dtsi
index f91fc69905b8..f82d45e62753 100644
--- a/arch/arm64/boot/dts/marvell/cn9132-db.dtsi
+++ b/arch/arm64/boot/dts/marvell/cn9132-db.dtsi
@@ -28,6 +28,7 @@ cp2_reg_usb3_vbus0: regulator-7 {
 
 	cp2_usb3_0_phy0: usb-phy-4 {
 		compatible = "usb-nop-xceiv";
+		#phy-cells = <0>;
 		vcc-supply = <&cp2_reg_usb3_vbus0>;
 	};
 
@@ -42,6 +43,7 @@ cp2_reg_usb3_vbus1: regulator-8 {
 
 	cp2_usb3_0_phy1: usb-phy-5 {
 		compatible = "usb-nop-xceiv";
+		#phy-cells = <0>;
 		vcc-supply = <&cp2_reg_usb3_vbus1>;
 	};
 
-- 
2.51.0


