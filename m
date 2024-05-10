Return-Path: <devicetree+bounces-66223-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B6978C21ED
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2024 12:18:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 072DD288597
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2024 10:18:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F8A7165FD1;
	Fri, 10 May 2024 10:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="okPFnfvb"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78C5C161935
	for <devicetree@vger.kernel.org>; Fri, 10 May 2024 10:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715336333; cv=none; b=BMZtDeFEra/R7Qp9afEd5oRZyo9gYntaqcLQWynHUaUSOyimbdnV9IUaUKz3GixEFoeOhEWQ/LmX4hX1eDfHI0hJ9LYNOHUzvSwxkot9+xbb6KYO73eBq3Qrn430V7c4GjiIr0EywJwCjBHfT6+bszv1o2XVVu3Dd+SrXselm/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715336333; c=relaxed/simple;
	bh=vBYPRi70YCGps6qezEgrv7Y9Q+Vd7ZSEkDa9qU0m+gY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=UprPOifZEtAADTeI/7uQdQ5fRdya2Zv7m6Y1kjtjEI7eGJ6oW2e1jaoO3ck549WhrDr8sA1Rs82uDlzt8acV/JZMR5KCUZcdpGEbZyoxKgDP+2HFk+VjS7TvLtJYhKsLbdrVdJsOxD9/lPSi+uUICjA57gqn65GpRNidDRszPrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=okPFnfvb; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3B3FBC32781;
	Fri, 10 May 2024 10:18:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715336333;
	bh=vBYPRi70YCGps6qezEgrv7Y9Q+Vd7ZSEkDa9qU0m+gY=;
	h=From:List-Id:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=okPFnfvbE5l7XlmFdWyEzjGWeVlupNLb+OjykH033WHQbA0QouP4ZK5bMxADinakq
	 KSnHj65i5Yo2jIpRmiF+PYfwg3cPl9opdUwLLrF9NKBbDggQg5l9xhLloollDx7a1T
	 hlapmPJDBbvFy2o3cVfCq6Rb52BGrrH2zQ6HizQoIFODNFlGtoXXQRotLjLZTuwsqN
	 L3ndYgL3hbXO1t14zQ4TnqzZUtxYsO6ht89RZY72t3yQ73CNaQywLwHD0NHutH7CnR
	 wuyZ5c4WqP6QeXvZkRcbXlEi/JEkz6JmbaXX/BvIlW0LAgcv5gu8NtSl+aLvhlzkKP
	 HIHWECQV5zzug==
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
Subject: [PATCH v10 8/9] ARM: dts: turris-omnia: Add MCU system-controller node
Date: Fri, 10 May 2024 12:18:18 +0200
Message-ID: <20240510101819.13551-9-kabel@kernel.org>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240510101819.13551-1-kabel@kernel.org>
References: <20240510101819.13551-1-kabel@kernel.org>
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


