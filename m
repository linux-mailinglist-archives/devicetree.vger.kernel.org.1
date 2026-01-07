Return-Path: <devicetree+bounces-252151-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 72759CFBAF2
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 03:15:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3F2F2306647D
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 02:10:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3521826A0D5;
	Wed,  7 Jan 2026 02:10:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zawqhfkf"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A09C2673A5;
	Wed,  7 Jan 2026 02:10:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767751815; cv=none; b=EJ6UeXDu6slIoeyBUXR6p1q2Ob6iUWKXbnznlimwAp6el4LkXBVwoKuFTTse6TDxDyfqFbWvTrS6SxdcMRGZhnI7cps4YGN14yjWfb/pnRp9qSK5SFATb1q3B/0DSji9QGSC5Bpo8wVPy3PAiutv2ehzDVoxzIeU9e0UGdpaiO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767751815; c=relaxed/simple;
	bh=AtMI4/3OlnuqTZle0UKGcuThBaXK43hg5OjG6JBk87U=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rZOK+WXQGjyGIk8KQWSOyiwQAmU1+W8/O2IF6DRDhJvfnemru2/gt3Dc/U7fBw0F/gm+oL9axn5EIg3Ms2eYlQwViy24Q0wosrfNIUxVaeRBE6u1bRRsKJDzV61hcwMxjXBUWvz9fmnET2eHcndoNBOyZYQAozR1kTCVImGZ01g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zawqhfkf; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B944BC4AF0B;
	Wed,  7 Jan 2026 02:10:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767751814;
	bh=AtMI4/3OlnuqTZle0UKGcuThBaXK43hg5OjG6JBk87U=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=ZawqhfkfCEGkouYdrTNfIPTW8Ggs/X+O48hkfax3B4Hsk4QGeVlVxro9UmcGbeUXW
	 Wd9bgHUgbh5oIySR2J32RY5WyZHQPLQpRC2T1BZwp+HpH2zOSlzwTY73CRQmQycCuT
	 E9p7abciCgwAoaaqPFnhvbVFrl9uLYrbxhy82YMCBvUDJe3MTrsG7PcvGviBjXA3j8
	 JLrE2RNdVH9LB4yXh1vOhGfve2NNFm+gFw7jCq9SraZed3zAIH0SwF3+7/72BA5kIv
	 EGXQEy3gXLDs314Wn4YAAkVDvWWWXC5C3BDTcVtnUWJ0/UG+EQhUxmdprfX1JEIcvm
	 NfIApk10zaOkQ==
From: "Rob Herring (Arm)" <robh@kernel.org>
Date: Tue, 06 Jan 2026 20:09:47 -0600
Subject: [PATCH 08/13] arm64: dts: broadcom: Use preferred node names
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260106-dt-dtbs-broadcom-fixes-v1-8-ba45874e4553@kernel.org>
References: <20260106-dt-dtbs-broadcom-fixes-v1-0-ba45874e4553@kernel.org>
In-Reply-To: <20260106-dt-dtbs-broadcom-fixes-v1-0-ba45874e4553@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>
Cc: devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
X-Mailer: b4 0.15-dev

Update various node names to use the documented preferred names. Node
names/path aren't considered ABI, so changing them should be safe.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 arch/arm64/boot/dts/broadcom/northstar2/ns2-svk.dts         | 4 ++--
 arch/arm64/boot/dts/broadcom/northstar2/ns2-xmc.dts         | 2 +-
 arch/arm64/boot/dts/broadcom/northstar2/ns2.dtsi            | 8 ++++----
 arch/arm64/boot/dts/broadcom/stingray/bcm958742-base.dtsi   | 2 +-
 arch/arm64/boot/dts/broadcom/stingray/stingray-pinctrl.dtsi | 2 +-
 arch/arm64/boot/dts/broadcom/stingray/stingray.dtsi         | 6 +++---
 6 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/arch/arm64/boot/dts/broadcom/northstar2/ns2-svk.dts b/arch/arm64/boot/dts/broadcom/northstar2/ns2-svk.dts
index f06472edd4a1..290759ee0078 100644
--- a/arch/arm64/boot/dts/broadcom/northstar2/ns2-svk.dts
+++ b/arch/arm64/boot/dts/broadcom/northstar2/ns2-svk.dts
@@ -111,7 +111,7 @@ &ssp0 {
 &ssp1 {
 	status = "okay";
 
-	at25@0 {
+	eeprom@0 {
 		compatible = "atmel,at25";
 		reg = <0>;
 		spi-max-frequency = <5000000>;
@@ -151,7 +151,7 @@ &sdio1 {
 };
 
 &nand {
-	nandcs@0 {
+	nand@0 {
 		compatible = "brcm,nandcs";
 		reg = <0>;
 		nand-ecc-mode = "hw";
diff --git a/arch/arm64/boot/dts/broadcom/northstar2/ns2-xmc.dts b/arch/arm64/boot/dts/broadcom/northstar2/ns2-xmc.dts
index 0e134a94e142..be0876648afd 100644
--- a/arch/arm64/boot/dts/broadcom/northstar2/ns2-xmc.dts
+++ b/arch/arm64/boot/dts/broadcom/northstar2/ns2-xmc.dts
@@ -74,7 +74,7 @@ gphy0: eth-phy@10 {
 };
 
 &nand {
-	nandcs@0 {
+	nand@0 {
 		compatible = "brcm,nandcs";
 		reg = <0>;
 		nand-ecc-mode = "hw";
diff --git a/arch/arm64/boot/dts/broadcom/northstar2/ns2.dtsi b/arch/arm64/boot/dts/broadcom/northstar2/ns2.dtsi
index 9888a1fabd5c..0de9d6265701 100644
--- a/arch/arm64/boot/dts/broadcom/northstar2/ns2.dtsi
+++ b/arch/arm64/boot/dts/broadcom/northstar2/ns2.dtsi
@@ -657,7 +657,7 @@ hwrng: hwrng@66220000 {
 			reg = <0x66220000 0x28>;
 		};
 
-		sata_phy: sata_phy@663f0100 {
+		sata_phy: sata-phy@663f0100 {
 			compatible = "brcm,iproc-ns2-sata-phy";
 			reg = <0x663f0100 0x1f00>,
 			      <0x663f004c 0x10>;
@@ -701,7 +701,7 @@ sata1: sata-port@1 {
 			};
 		};
 
-		sdio0: sdhci@66420000 {
+		sdio0: mmc@66420000 {
 			compatible = "brcm,sdhci-iproc-cygnus";
 			reg = <0x66420000 0x100>;
 			interrupts = <GIC_SPI 421 IRQ_TYPE_LEVEL_HIGH>;
@@ -711,7 +711,7 @@ sdio0: sdhci@66420000 {
 			status = "disabled";
 		};
 
-		sdio1: sdhci@66430000 {
+		sdio1: mmc@66430000 {
 			compatible = "brcm,sdhci-iproc-cygnus";
 			reg = <0x66430000 0x100>;
 			interrupts = <GIC_SPI 422 IRQ_TYPE_LEVEL_HIGH>;
@@ -721,7 +721,7 @@ sdio1: sdhci@66430000 {
 			status = "disabled";
 		};
 
-		nand: nand@66460000 {
+		nand: nand-controller@66460000 {
 			compatible = "brcm,nand-iproc", "brcm,brcmnand-v6.1";
 			reg = <0x66460000 0x600>,
 			      <0x67015408 0x600>,
diff --git a/arch/arm64/boot/dts/broadcom/stingray/bcm958742-base.dtsi b/arch/arm64/boot/dts/broadcom/stingray/bcm958742-base.dtsi
index 8fe7325cfbb2..18152b16cfed 100644
--- a/arch/arm64/boot/dts/broadcom/stingray/bcm958742-base.dtsi
+++ b/arch/arm64/boot/dts/broadcom/stingray/bcm958742-base.dtsi
@@ -88,7 +88,7 @@ &enet {
 
 &nand {
 	status = "okay";
-	nandcs@0 {
+	nand@0 {
 		compatible = "brcm,nandcs";
 		reg = <0>;
 		nand-ecc-mode = "hw";
diff --git a/arch/arm64/boot/dts/broadcom/stingray/stingray-pinctrl.dtsi b/arch/arm64/boot/dts/broadcom/stingray/stingray-pinctrl.dtsi
index 46a827521921..b8da71463ad7 100644
--- a/arch/arm64/boot/dts/broadcom/stingray/stingray-pinctrl.dtsi
+++ b/arch/arm64/boot/dts/broadcom/stingray/stingray-pinctrl.dtsi
@@ -32,7 +32,7 @@
 
 #include <dt-bindings/pinctrl/brcm,pinctrl-stingray.h>
 
-		pinconf: pinconf@140000 {
+		pinconf: pinctrl@140000 {
 			compatible = "pinconf-single";
 			reg = <0x00140000 0x250>;
 			pinctrl-single,register-width = <32>;
diff --git a/arch/arm64/boot/dts/broadcom/stingray/stingray.dtsi b/arch/arm64/boot/dts/broadcom/stingray/stingray.dtsi
index f9f77b2639c5..05139bcb3184 100644
--- a/arch/arm64/boot/dts/broadcom/stingray/stingray.dtsi
+++ b/arch/arm64/boot/dts/broadcom/stingray/stingray.dtsi
@@ -691,7 +691,7 @@ enet: ethernet@340000 {
 			status = "disabled";
 		};
 
-		nand: nand@360000 {
+		nand: nand-controller@360000 {
 			compatible = "brcm,nand-iproc", "brcm,brcmnand-v6.1";
 			reg = <0x00360000 0x600>,
 			      <0x0050a408 0x600>,
@@ -704,7 +704,7 @@ nand: nand@360000 {
 			status = "disabled";
 		};
 
-		sdio0: sdhci@3f1000 {
+		sdio0: mmc@3f1000 {
 			compatible = "brcm,sdhci-iproc";
 			reg = <0x003f1000 0x100>;
 			interrupts = <GIC_SPI 204 IRQ_TYPE_LEVEL_HIGH>;
@@ -714,7 +714,7 @@ sdio0: sdhci@3f1000 {
 			status = "disabled";
 		};
 
-		sdio1: sdhci@3f2000 {
+		sdio1: mmc@3f2000 {
 			compatible = "brcm,sdhci-iproc";
 			reg = <0x003f2000 0x100>;
 			interrupts = <GIC_SPI 205 IRQ_TYPE_LEVEL_HIGH>;

-- 
2.51.0


