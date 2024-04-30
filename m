Return-Path: <devicetree+bounces-63961-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id CA6748B74E9
	for <lists+devicetree@lfdr.de>; Tue, 30 Apr 2024 13:51:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0852DB213B3
	for <lists+devicetree@lfdr.de>; Tue, 30 Apr 2024 11:51:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C30B134403;
	Tue, 30 Apr 2024 11:51:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ml5540yg"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 389341311B0
	for <devicetree@vger.kernel.org>; Tue, 30 Apr 2024 11:51:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714477906; cv=none; b=Ax7Lc8t0K+IFGsrtmFO5p++PRykZ0pqmcb7Lc+RW2N066FSX0zLRW0/fK3NPT0mWZCu8/t8gKk+QWUPO4Q7ibcEuDYdUoxmBZppaEC6OYQ9TCNM/lXmaD0a0kdMWyq0tM+KtkmV9wJtKj2LEm9Nsoe1TWlv8AXtXKYE/WrHPfbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714477906; c=relaxed/simple;
	bh=vBYPRi70YCGps6qezEgrv7Y9Q+Vd7ZSEkDa9qU0m+gY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ieHezZ1HOXBsonUvKnq2fVKjDCNW/cPqcH3py2JOxLTT5kD/YOy0laGgYO9v1TML+27tHsSo/F3WWbzB2rHNhw3uV2exj72Gyf7DeD2sctBH1A1J0JiAMmEkZdh4iStKgGgWX4/5F6F7ifIUnuasER6Cldw56ZSOUW58ndvUmsU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ml5540yg; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 227A3C4AF48;
	Tue, 30 Apr 2024 11:51:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714477906;
	bh=vBYPRi70YCGps6qezEgrv7Y9Q+Vd7ZSEkDa9qU0m+gY=;
	h=From:List-Id:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Ml5540ygqH9dwe+xOEq49VQJHFHZunKiL91F8qHCUxGLrwPUpyxSLfpqN4fg+WP0q
	 7a9oGCTPfP8WI2ibSeEEQYioFyCxvfIAzNsSfXYTEjnfeYu8J9lXRjSttiXoFxiZW0
	 q3SMS31zej/eSpL39HUTCsNVTERl6bLk1uONAmATgIues0OcHlvmSm6bur2I7FWcoQ
	 VxI7xFt1wxry8u8JZk72yuuvp/qQOAwSS1jeFfG2X/klIGNPf52AsbRYfe9RkOwUe4
	 VEuPoP1jg6oKuKNcsQanRDhAicjGYv3dYXzZouBk2utXyZ/Z1+kUej4dgYA/rRVD2F
	 hyvKdlouzvaig==
From: =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>
To: Gregory CLEMENT <gregory.clement@bootlin.com>,
	Arnd Bergmann <arnd@arndb.de>,
	soc@kernel.org,
	arm@kernel.org,
	Andy Shevchenko <andy@kernel.org>,
	Hans de Goede <hdegoede@redhat.com>,
	=?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
Cc: =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>,
	Andrew Lunn <andrew@lunn.ch>,
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
	devicetree@vger.kernel.org
Subject: [PATCH v8 8/9] ARM: dts: turris-omnia: Add MCU system-controller node
Date: Tue, 30 Apr 2024 13:51:10 +0200
Message-ID: <20240430115111.3453-9-kabel@kernel.org>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240430115111.3453-1-kabel@kernel.org>
References: <20240430115111.3453-1-kabel@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Turris Omnia's MCU provides various features that can be configured over
I2C at address 0x2a. Add device-tree node.

This does not carry a Fixes tag - we do not want this to get backported
to stable kernels for the following reason: U-Boot since v2022.10
inserts a phy-reset-gpio property into the WAN ethernet node pointing to
the MCU node if it finds the MCU node with a cznic,turris-omnia-mcu
compatible. Thus if this change got backported to a stable kernel, the
WAN interface driver would defer probe indefinitely (since it would wait
for the turris-omnia-mcu driver which would not be present).

Signed-off-by: Marek Behún <kabel@kernel.org>
---
 .../dts/marvell/armada-385-turris-omnia.dts   | 22 ++++++++++++++++++-
 1 file changed, 21 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/marvell/armada-385-turris-omnia.dts b/arch/arm/boot/dts/marvell/armada-385-turris-omnia.dts
index 7b755bb4e4e7..59079d63fe27 100644
--- a/arch/arm/boot/dts/marvell/armada-385-turris-omnia.dts
+++ b/arch/arm/boot/dts/marvell/armada-385-turris-omnia.dts
@@ -218,7 +218,22 @@ i2c@0 {
 			#size-cells = <0>;
 			reg = <0>;
 
-			/* STM32F0 command interface at address 0x2a */
+			mcu: system-controller@2a {
+				compatible = "cznic,turris-omnia-mcu";
+				reg = <0x2a>;
+
+				pinctrl-names = "default";
+				pinctrl-0 = <&mcu_pins>;
+
+				interrupt-parent = <&gpio1>;
+				interrupts = <11 IRQ_TYPE_NONE>;
+
+				gpio-controller;
+				#gpio-cells = <3>;
+
+				interrupt-controller;
+				#interrupt-cells = <2>;
+			};
 
 			led-controller@2b {
 				compatible = "cznic,turris-omnia-leds";
@@ -501,6 +516,11 @@ fixed-link {
 };
 
 &pinctrl {
+	mcu_pins: mcu-pins {
+		marvell,pins = "mpp43";
+		marvell,function = "gpio";
+	};
+
 	pcawan_pins: pcawan-pins {
 		marvell,pins = "mpp46";
 		marvell,function = "gpio";
-- 
2.43.2


