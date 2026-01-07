Return-Path: <devicetree+bounces-252147-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7954DCFBAD1
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 03:13:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 09A6C30DF06A
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 02:10:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59A3C25487B;
	Wed,  7 Jan 2026 02:10:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SGH21g2H"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FF1D23507C;
	Wed,  7 Jan 2026 02:10:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767751811; cv=none; b=B52a3dltrg/4p0ySfeoqiawvwgWOhKThJvTtdIJUU97Dx/xCdrG19F4oIQfYVjS3rq/hnvwY6wyq/hAzDnduf0uNnh8vugkpIMh/3GEx/Q4uDKImJTmggrF/lkD7diE15nmnKi/nr0swgD06Sl24xNiS5W4Odjsgz+Sk2QxEvEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767751811; c=relaxed/simple;
	bh=YrnlD7633PVliJ61smTwoQ8PijcGS3rXVJe9bcmSyts=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=fdTz9LGHefF6TQZZp7JL8mOH+3sEm1krXxvMQAIJ2I9ygDHEn2aQoLcPaYmexJfJlFdY8deIObQpr2uV5DgLmfsmLATQu5186l2Pu+2tC1Ra56GkpUqWJF4ePRVwpAFsOpChRk07XgD7hd5fRRlqLEP2ujaWFm/JJ5y6S2xUKxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SGH21g2H; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BA3BFC19423;
	Wed,  7 Jan 2026 02:10:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767751810;
	bh=YrnlD7633PVliJ61smTwoQ8PijcGS3rXVJe9bcmSyts=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=SGH21g2HP1Fq/dTQaW6QN1EVjl9N+MD6l3/VUqh9+prH1RPMpFZ7h+qrjeHmlDE0j
	 P61oeE+PSz5ijUaiH4unB0e9HslGtad5cHf494Tu5wY88vvQTSnO2cYFjxyvn9G+cV
	 7NdbY3fgL2e7la9lsKkdRQBdhAvyNcoPeT+Kz/62C2jz0+cRBi7Ode/XJgAVGYYcGO
	 KWFz7B542smI+bLR1WhBsW4KMRS6vL+IlNdGaQraLo6DRQ0dmjpPIbi5KbFq++/oMT
	 2DCfmuBqE7+oIF3JIL6OsztIGbHYsZwBpGqpxEMVk8r61goI/OKO8tef8kVhwhnOYH
	 p6m4dVhw/ViQQ==
From: "Rob Herring (Arm)" <robh@kernel.org>
Date: Tue, 06 Jan 2026 20:09:43 -0600
Subject: [PATCH 04/13] arm64: dts: broadcom: Remove unused and undocumented
 nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260106-dt-dtbs-broadcom-fixes-v1-4-ba45874e4553@kernel.org>
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

The "silabs,si3226x" and "brcm,bdc-v0.16" nodes have no documentation
and no driver in the kernel, so remove them. They can be added back with
proper documentation if there is a need for them.

Note that if both USB ports have similar memory maps in relationship to
their USB PHY nodes, it looks like the device controller should have
been at 0x12000, not 0x21000?

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 arch/arm64/boot/dts/broadcom/northstar2/ns2-svk.dts   | 16 ----------------
 .../boot/dts/broadcom/stingray/stingray-usb.dtsi      | 19 -------------------
 2 files changed, 35 deletions(-)

diff --git a/arch/arm64/boot/dts/broadcom/northstar2/ns2-svk.dts b/arch/arm64/boot/dts/broadcom/northstar2/ns2-svk.dts
index 5939d342aec7..f06472edd4a1 100644
--- a/arch/arm64/boot/dts/broadcom/northstar2/ns2-svk.dts
+++ b/arch/arm64/boot/dts/broadcom/northstar2/ns2-svk.dts
@@ -106,22 +106,6 @@ &uart3 {
 
 &ssp0 {
 	status = "okay";
-
-	slic@0 {
-		compatible = "silabs,si3226x";
-		reg = <0>;
-		spi-max-frequency = <5000000>;
-		spi-cpha;
-		spi-cpol;
-		pl022,interface = <0>;
-		pl022,slave-tx-disable = <0>;
-		pl022,com-mode = <0>;
-		pl022,rx-level-trig = <1>;
-		pl022,tx-level-trig = <1>;
-		pl022,ctrl-len = <11>;
-		pl022,wait-state = <0>;
-		pl022,duplex = <0>;
-	};
 };
 
 &ssp1 {
diff --git a/arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi b/arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi
index ac4f7b8f9273..3fa9e57185b2 100644
--- a/arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi
+++ b/arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi
@@ -31,16 +31,6 @@ xhci0: usb@1000 {
 			status = "disabled";
 		};
 
-		bdc0: usb@2000 {
-			compatible = "brcm,bdc-v0.16";
-			reg = <0x0 0x00002000 0x0 0x1000>;
-			interrupts = <GIC_SPI 259 IRQ_TYPE_LEVEL_HIGH>;
-			phys = <&usbphy0 0>, <&usbphy0 1>;
-			phy-names = "phy0", "phy1";
-			dma-coherent;
-			status = "disabled";
-		};
-
 		usbphy1: usb-phy@10000 {
 			compatible = "brcm,sr-usb-combo-phy";
 			reg = <0x0 0x00010000 0x0 0x100>;
@@ -65,13 +55,4 @@ xhci1: usb@11000 {
 			status = "disabled";
 		};
 
-		bdc1: usb@21000 {
-			compatible = "brcm,bdc-v0.16";
-			reg = <0x0 0x00021000 0x0 0x1000>;
-			interrupts = <GIC_SPI 266 IRQ_TYPE_LEVEL_HIGH>;
-			phys = <&usbphy2>;
-			phy-names = "phy0";
-			dma-coherent;
-			status = "disabled";
-		};
 	};

-- 
2.51.0


