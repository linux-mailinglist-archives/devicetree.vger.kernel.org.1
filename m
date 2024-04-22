Return-Path: <devicetree+bounces-61256-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BB1F8AC251
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 02:20:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E208B1F211EA
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 00:20:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90D8E804;
	Mon, 22 Apr 2024 00:20:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="srV/Op3R"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3EBB81E
	for <devicetree@vger.kernel.org>; Mon, 22 Apr 2024 00:20:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713745241; cv=none; b=huN5QiJ+QR4Ut+P0twhm4Lf4ro0XyrGgvxUJ3145I2qkScGuPtvtWdFPHqX6Frgp0vGXzXX+3Ce2Z5FimdUOcuUH5g6/j/H7E2hGnRT+xyZa4zFu0xX5+vFwtXcNPAgC+kmeeaw72Plcf8pm8sCtHkTn9IEMttGZOrFc2pDBmec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713745241; c=relaxed/simple;
	bh=X4HhAt38Ld0g2nLZmREyJ+z2AQEcexeSXLCggQ7H2aM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=A2NXJFZEvvok8uD0KmF15YPs6bjAfxo1gbwoPJ7BnZ/DIyAZmuUSmOgvUtzqRD13onIvbJvKOKtS64x6eIpvrWDKdGnkvUO1Z/MWJMoy59WMMJf4LvGXdIK81fySSETbbS51nm/8nTz0nBTn8Rgxzo1J+77+vOBiOJSK1BY1NyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=srV/Op3R; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 5D17388317;
	Mon, 22 Apr 2024 02:20:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1713745238;
	bh=cLz65tu7oIryFVFdGImU/XbVCYatXj5NdS5IucgGbHE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=srV/Op3RU+9V62Q4JOOb+R3aClsfyvI7V003O1kTqWu1C2ccO2/gkOPKRs2nXw9lC
	 swP5ePaMCZBkvUWM1z4TpBZ+iJQlJl9uUPm+bBzBCelwHeWn1ixFSPWa3oVrsPRRMs
	 QngnZIeniMKpDUfavqUIdy7FcizkLsypo6f/dt8IWNrZQjd86LDqCgcUTIHQkidAhf
	 9/+kVYR3mIHLKbaDb8fw6Lqc1EEzDgBOByTzU9uaPXCRZDN1AnBG1lZ416VCF3EqiV
	 TTBmJ/1nQRHRL4nHwnABNSmqM0F8BUo+CudPQYKHgcyRDfLbmDSjazBYfLgKl9KAu2
	 hYfKYt+2lhnKQ==
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Cc: Marek Vasut <marex@denx.de>,
	=?UTF-8?q?Leonard=20G=C3=B6hrs?= <l.goehrs@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Andre Przywara <andre.przywara@arm.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Sean Nyekjaer <sean@geanix.com>,
	Steffen Trumtrar <s.trumtrar@pengutronix.de>,
	devicetree@vger.kernel.org,
	kernel@dh-electronics.com,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH 05/20] ARM: dts: stm32: Add alternate pinmux for MP13 ETH2 pins
Date: Mon, 22 Apr 2024 02:19:19 +0200
Message-ID: <20240422002006.243687-5-marex@denx.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240422002006.243687-1-marex@denx.de>
References: <20240422002006.243687-1-marex@denx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean

Add another mux option for ETH2 pins, this is used on
DH electronics STM32MP13xx DHCOR DHSBC board.

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: "Leonard Göhrs" <l.goehrs@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc: Andre Przywara <andre.przywara@arm.com>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: Rob Herring <robh@kernel.org>
Cc: Sean Nyekjaer <sean@geanix.com>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: devicetree@vger.kernel.org
Cc: kernel@dh-electronics.com
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-stm32@st-md-mailman.stormreply.com
---
 arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi | 45 +++++++++++++++++++++
 1 file changed, 45 insertions(+)

diff --git a/arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi b/arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi
index c709d64edcc2d..899f0f98e1a65 100644
--- a/arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi
+++ b/arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi
@@ -72,6 +72,51 @@ pins1 {
 		};
 	};
 
+	eth2_rgmii_pins_a: eth2-rgmii-0 {
+		pins1 {
+			pinmux = <STM32_PINMUX('F', 7, AF11)>, /* ETH_RGMII_TXD0 */
+				 <STM32_PINMUX('G', 11, AF10)>, /* ETH_RGMII_TXD1 */
+				 <STM32_PINMUX('G', 1, AF10)>, /* ETH_RGMII_TXD2 */
+				 <STM32_PINMUX('E', 6, AF11)>, /* ETH_RGMII_TXD3 */
+				 <STM32_PINMUX('F', 6, AF11)>, /* ETH_RGMII_TX_CTL */
+				 <STM32_PINMUX('G', 3, AF10)>, /* ETH_RGMII_GTX_CLK */
+				 <STM32_PINMUX('B', 6, AF11)>, /* ETH_MDIO */
+				 <STM32_PINMUX('G', 5, AF10)>; /* ETH_MDC */
+			bias-disable;
+			drive-push-pull;
+			slew-rate = <2>;
+		};
+
+		pins2 {
+			pinmux = <STM32_PINMUX('F', 4, AF11)>, /* ETH_RGMII_RXD0 */
+				 <STM32_PINMUX('E', 2, AF10)>, /* ETH_RGMII_RXD1 */
+				 <STM32_PINMUX('H', 6, AF12)>, /* ETH_RGMII_RXD2 */
+				 <STM32_PINMUX('A', 8, AF11)>, /* ETH_RGMII_RXD3 */
+				 <STM32_PINMUX('A', 12, AF11)>, /* ETH_RGMII_RX_CTL */
+				 <STM32_PINMUX('H', 11, AF11)>; /* ETH_RGMII_RX_CLK */
+			bias-disable;
+		};
+	};
+
+	eth2_rgmii_sleep_pins_a: eth2-rgmii-sleep-0 {
+		pins1 {
+			pinmux = <STM32_PINMUX('F', 7, ANALOG)>, /* ETH_RGMII_TXD0 */
+				 <STM32_PINMUX('G', 11, ANALOG)>, /* ETH_RGMII_TXD1 */
+				 <STM32_PINMUX('G', 11, ANALOG)>, /* ETH_RGMII_TXD2 */
+				 <STM32_PINMUX('G', 11, ANALOG)>, /* ETH_RGMII_TXD3 */
+				 <STM32_PINMUX('G', 8, ANALOG)>, /* ETH_RGMII_TX_CTL */
+				 <STM32_PINMUX('F', 6, ANALOG)>, /* ETH_RGMII_GTX_CLK */
+				 <STM32_PINMUX('B', 2, ANALOG)>, /* ETH_MDIO */
+				 <STM32_PINMUX('G', 5, ANALOG)>, /* ETH_MDC */
+				 <STM32_PINMUX('F', 4, ANALOG)>, /* ETH_RGMII_RXD0 */
+				 <STM32_PINMUX('E', 2, ANALOG)>, /* ETH_RGMII_RXD1 */
+				 <STM32_PINMUX('E', 2, ANALOG)>, /* ETH_RGMII_RXD2 */
+				 <STM32_PINMUX('E', 2, ANALOG)>, /* ETH_RGMII_RXD3 */
+				 <STM32_PINMUX('A', 12, ANALOG)>, /* ETH_RGMII_RX_CTL */
+				 <STM32_PINMUX('H', 11, ANALOG)>; /* ETH_RGMII_RX_CLK */
+		};
+	};
+
 	i2c1_pins_a: i2c1-0 {
 		pins {
 			pinmux = <STM32_PINMUX('D', 12, AF5)>, /* I2C1_SCL */
-- 
2.43.0


