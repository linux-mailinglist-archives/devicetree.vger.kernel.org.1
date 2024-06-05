Return-Path: <devicetree+bounces-72852-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id ACE208FD2C8
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 18:20:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 491851F2405F
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 16:20:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2CDAB188CA3;
	Wed,  5 Jun 2024 16:19:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OVJbSk73"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 093B7188CAF
	for <devicetree@vger.kernel.org>; Wed,  5 Jun 2024 16:19:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717604362; cv=none; b=sB1wp/JrSFvSjOwXFwg8877b2JOw2ZTDIBc32vOyAQs0+EwB9TU4KPQX2RtbbKspIOwLoE6YR193p0zhQCXad2CjqS7Avaq4EEAvoCGxe6RLb39G4gT3R4wP5GTmqNf2zNqRBXTr4Rjwq1Cuh/gfnz58b0Vd63IC4IzI18NDUds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717604362; c=relaxed/simple;
	bh=asdV2LfnocM2LRBIv5+KFZ2a2wIyr9xuTkgbqNrFtDo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=NWsT66AAEDnsbJVTdpbUcOcAPR1K0OND/3jYnQj5KuGtjDVRTigzMvAzg9zNGKPijQq6f/IZ3/irI/kYO2N72slxHJx2Gc7BixkPBgotavocDRJzlgwPqqEzzQW4EZkkXhEJ55bxyJjJs2sRb3PEDvvlrzvsLOOG056arMND21c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OVJbSk73; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0CC97C4AF12;
	Wed,  5 Jun 2024 16:19:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717604361;
	bh=asdV2LfnocM2LRBIv5+KFZ2a2wIyr9xuTkgbqNrFtDo=;
	h=From:List-Id:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=OVJbSk73ULNzY5XWJsR99bwBMYLMEc6Q7k7/AtrG41UK0/fgfqxoV/bgReMJARsoV
	 YOZYB6dbqqmTqGAMl6zNHCKRSqild3m1qnWUaKNKdDj/5xHpQ+WPHoRj8UjT7ZXkRr
	 E/gAC/PoMDKIGZHoBo1u4YGSPTTLHcgJEjvXSrOYrbKiQR7DcKnJW6XEFgy433cZya
	 OzZlva9pFIFCUD3pYlHrM3uCz2cuk7ZLk0ZQawBoQJyRDOJggCsHalYaF4ua1JwRu+
	 wcA9e6Afa7qhKnYlNQNYhIUz3EjgFXBkDiVB17ysnsBpaesf1zxamM8xZd0JgJY0LQ
	 hEgSuutZXL0kw==
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
Subject: [PATCH v11 7/8] ARM: dts: turris-omnia: Add MCU system-controller node
Date: Wed,  5 Jun 2024 18:18:50 +0200
Message-ID: <20240605161851.13911-8-kabel@kernel.org>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240605161851.13911-1-kabel@kernel.org>
References: <20240605161851.13911-1-kabel@kernel.org>
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
2.44.2


