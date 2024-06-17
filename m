Return-Path: <devicetree+bounces-76608-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 60CE490B52D
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 17:50:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 08BEF1F22B71
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 15:50:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BAAB1D9524;
	Mon, 17 Jun 2024 15:26:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nh18qx2h"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 475771D9502
	for <devicetree@vger.kernel.org>; Mon, 17 Jun 2024 15:26:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718637999; cv=none; b=ZvrqQEcnS1tDcCzBH4K8lsS5qQBc624V0OO0bvBRNqnhHJgjBtyYW8xWNM2nx7J6QD3qBf/8vR4dtJCu8r5LEJjL2gxd7oPOOV0ncZ/I6ZkgGptgZa0VLOL6coabDWF9crmBrXa31mij+vLmR8Ku6e02peYSFehDMryPXu90B4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718637999; c=relaxed/simple;
	bh=asdV2LfnocM2LRBIv5+KFZ2a2wIyr9xuTkgbqNrFtDo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=hcaJh73jtV9JPlzSAjaKPLutWMr8dDESOSCU2SMHEGoiKy/1JjPFNDj7ffJbozI6ZpHNlEI/D8tgZlf2JAzaPUgtmI2ZJLmhIu9TpS0EGulA5uGPVU0/r3b5E55isgX4Y45ZJFmyi8bQagPygKGjepgNQ4cu1FjYyGK0STkV5xQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nh18qx2h; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 05CA2C4AF1C;
	Mon, 17 Jun 2024 15:26:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718637999;
	bh=asdV2LfnocM2LRBIv5+KFZ2a2wIyr9xuTkgbqNrFtDo=;
	h=From:List-Id:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Nh18qx2hvNGkAzPzrp81YaPmlG8HhndH9gqqHA7AFYQJko0yh72izPL56wyt7h3Ly
	 8r/2ifz8ZgpbKUlYJPGs85+eXW/cj/47iLU3y00paOCmsf4UhKk+UgiMxBbEwrs/bm
	 rB53JMLq0K7EgJB6rCM1f0Z1MFEP04gSpMkzanx9v6iovmd+l5WTU77AsE31CUOTZQ
	 zJBMmr90fCmXD1IEqRuPIXw1y0MKmLxgeQrRrS0RCNlR8AzQDslkw5HKUUIlGbiU+U
	 +BivjByKQ+zpd6oS2UvEFj2uiOQtDrDdDTTc5wgNQ5R6C9ifikwXTzW8ZOdbcVAgGF
	 Mk4FnF2qn5s5Q==
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
Subject: [PATCH v12 7/8] ARM: dts: turris-omnia: Add MCU system-controller node
Date: Mon, 17 Jun 2024 17:26:05 +0200
Message-ID: <20240617152606.26191-8-kabel@kernel.org>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240617152606.26191-1-kabel@kernel.org>
References: <20240617152606.26191-1-kabel@kernel.org>
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


