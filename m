Return-Path: <devicetree+bounces-63345-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FD8B8B48CC
	for <lists+devicetree@lfdr.de>; Sun, 28 Apr 2024 00:11:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CD9A31C20DF2
	for <lists+devicetree@lfdr.de>; Sat, 27 Apr 2024 22:11:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CFA0146A6C;
	Sat, 27 Apr 2024 22:11:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="REKtUdZz"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7E37142E97
	for <devicetree@vger.kernel.org>; Sat, 27 Apr 2024 22:11:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714255887; cv=none; b=DswFMyFYJnBNNh08TkHlAeJVMa1xza7fHEg6kDAIRHHFYxF1zzMO4MBnqOVVELjMgBr+dPvfpQriyYD3pFv49GGzdAkp1lK2f8pQZXxLfMlhusblzRdTLSPbSUr3gYur5ClEiLnGpAtbrdcVvdiZCQu4wMUZLPsIKUp2FIzSwoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714255887; c=relaxed/simple;
	bh=ZWmYSqfRpHfKiuxdGhNmCDX7+vwY1ly7qdmZogJZf+8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=usSlnC1gJdnGKqeip6QWSfg/jShcd4jkNIRzVzJtGRbBXHoPnuj6dWB4RC2VAlhcklEk/O59TgXZKdnBki0jnarB9bTCmAKCW5QO578wIfb4KJydMlEVr61kKp7K7ID/0ZVQR3Vfd+qK/oMm8UmQ3zJRVjO73N6F/QowyLdPfBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=REKtUdZz; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 6CCDD88231;
	Sun, 28 Apr 2024 00:11:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1714255883;
	bh=BlrQqxuyFTaTKu3VHZakcLnpnCSF8vWomZxMLcBTrZ8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=REKtUdZzJQosmxn5125Ms4EEM+yurdqTedjLvC3QuThk7aBP3BNVCb+xucz71HBWD
	 Bm5G7B66qF2H0w4eOaK8UU2mDwzEvQMP8PoepyE9Pt109UcUOvd9l6DW/5fFvNkOqG
	 wdViOtPyGFCRJU6xWnd24BAIpLBy+W7LLepS2Sh/V0LrS5GGLtAL9IcBLyXaalXxrI
	 Guptva2gGR2kvWDZe/a5ZqWDtkAx2vqu/gQGxezAcC/EWiaK39qK5VKr+ZUrFZRqTI
	 /Fs5FBgbROXw0q0kzwlyjz2p1iaYaGsvSZo5Vbibl8lhq3yw0DeAbuKi4VofRE1tbL
	 kLzJDR8nDMmmA==
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
Subject: [PATCH v2 2/3] ARM: dts: stm32: Add pinmux nodes for DH electronics STM32MP13xx DHCOR SoM and DHSBC board
Date: Sun, 28 Apr 2024 00:10:11 +0200
Message-ID: <20240427221048.65392-2-marex@denx.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240427221048.65392-1-marex@denx.de>
References: <20240427221048.65392-1-marex@denx.de>
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

Add new pinmux nodes for DH electronics STM32MP13xx DHCOR SoM and DHSBC board.
The following pinmux nodes are added:
- ADC pins
- ADC CC pins
- ETH1 pins
- ETH2 pins
- I2C5 pins
- MCAN1 pins
- MCAN2 pins
- PWM13 pins
- PWM5 pins
- QSPI pins
- SAI1 pins
- SDMMC2 D4..D7 pins
- SPI2 pins
- SPI3 pins
- UART4 pins
- UART7 pins
- USART1 pins
- USART2 pins

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
V2: Squash the pinmux patches into one megapatch
---
 arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi | 483 ++++++++++++++++++++
 1 file changed, 483 insertions(+)

diff --git a/arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi b/arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi
index 32c5d8a1e06ac..4415d80f6b75f 100644
--- a/arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi
+++ b/arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi
@@ -6,6 +6,12 @@
 #include <dt-bindings/pinctrl/stm32-pinfunc.h>
 
 &pinctrl {
+	adc1_pins_a: adc1-pins-0 {
+		pins {
+			pinmux = <STM32_PINMUX('A', 3, ANALOG)>; /* ADC1 in12 */
+		};
+	};
+
 	adc1_usb_cc_pins_a: adc1-usb-cc-pins-0 {
 		pins {
 			pinmux = <STM32_PINMUX('F', 12, ANALOG)>, /* ADC1 in6 */
@@ -13,6 +19,104 @@ pins {
 		};
 	};
 
+	adc1_usb_cc_pins_b: adc1-usb-cc-pins-1 {
+		pins {
+			pinmux = <STM32_PINMUX('A', 5, ANALOG)>, /* ADC1_INP2 */
+				 <STM32_PINMUX('F', 13, ANALOG)>; /* ADC1_INP11 */
+		};
+	};
+
+	eth1_rgmii_pins_a: eth1-rgmii-0 {
+		pins1 {
+			pinmux = <STM32_PINMUX('G', 13, AF11)>, /* ETH_RGMII_TXD0 */
+				 <STM32_PINMUX('G', 14, AF11)>, /* ETH_RGMII_TXD1 */
+				 <STM32_PINMUX('C', 2, AF11)>, /* ETH_RGMII_TXD2 */
+				 <STM32_PINMUX('E', 5, AF10)>, /* ETH_RGMII_TXD3 */
+				 <STM32_PINMUX('B', 11, AF11)>, /* ETH_RGMII_TX_CTL */
+				 <STM32_PINMUX('C', 1, AF11)>, /* ETH_RGMII_GTX_CLK */
+				 <STM32_PINMUX('A', 2, AF11)>, /* ETH_MDIO */
+				 <STM32_PINMUX('G', 2, AF11)>; /* ETH_MDC */
+			bias-disable;
+			drive-push-pull;
+			slew-rate = <2>;
+		};
+
+		pins2 {
+			pinmux = <STM32_PINMUX('C', 4, AF11)>, /* ETH_RGMII_RXD0 */
+				 <STM32_PINMUX('C', 5, AF11)>, /* ETH_RGMII_RXD1 */
+				 <STM32_PINMUX('B', 0, AF11)>, /* ETH_RGMII_RXD2 */
+				 <STM32_PINMUX('B', 1, AF11)>, /* ETH_RGMII_RXD3 */
+				 <STM32_PINMUX('A', 7, AF11)>, /* ETH_RGMII_RX_CTL */
+				 <STM32_PINMUX('D', 7, AF10)>; /* ETH_RGMII_RX_CLK */
+			bias-disable;
+		};
+
+	};
+
+	eth1_rgmii_sleep_pins_a: eth1-rgmii-sleep-0 {
+		pins1 {
+			pinmux = <STM32_PINMUX('G', 13, ANALOG)>, /* ETH_RGMII_TXD0 */
+				 <STM32_PINMUX('G', 14, ANALOG)>, /* ETH_RGMII_TXD1 */
+				 <STM32_PINMUX('C', 2, ANALOG)>, /* ETH_RGMII_TXD2 */
+				 <STM32_PINMUX('E', 5, ANALOG)>, /* ETH_RGMII_TXD3 */
+				 <STM32_PINMUX('B', 11, ANALOG)>, /* ETH_RGMII_TX_CTL */
+				 <STM32_PINMUX('C', 1, ANALOG)>, /* ETH_RGMII_GTX_CLK */
+				 <STM32_PINMUX('A', 2, ANALOG)>, /* ETH_MDIO */
+				 <STM32_PINMUX('G', 2, ANALOG)>, /* ETH_MDC */
+				 <STM32_PINMUX('C', 4, ANALOG)>, /* ETH_RGMII_RXD0 */
+				 <STM32_PINMUX('C', 5, ANALOG)>, /* ETH_RGMII_RXD1 */
+				 <STM32_PINMUX('B', 0, ANALOG)>, /* ETH_RGMII_RXD1 */
+				 <STM32_PINMUX('B', 1, ANALOG)>, /* ETH_RGMII_RXD1 */
+				 <STM32_PINMUX('A', 7, ANALOG)>, /* ETH_RGMII_RX_CTL */
+				 <STM32_PINMUX('D', 7, ANALOG)>; /* ETH_RGMII_RX_CLK */
+		};
+	};
+
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
@@ -47,6 +151,23 @@ pins {
 		};
 	};
 
+	i2c5_pins_b: i2c5-1 {
+		pins {
+			pinmux = <STM32_PINMUX('D', 1, AF4)>, /* I2C5_SCL */
+				 <STM32_PINMUX('E', 13, AF4)>; /* I2C5_SDA */
+			bias-disable;
+			drive-open-drain;
+			slew-rate = <0>;
+		};
+	};
+
+	i2c5_sleep_pins_b: i2c5-sleep-1 {
+		pins {
+			pinmux = <STM32_PINMUX('D', 1, ANALOG)>, /* I2C5_SCL */
+				 <STM32_PINMUX('E', 13, ANALOG)>; /* I2C5_SDA */
+		};
+	};
+
 	ltdc_pins_a: ltdc-0 {
 		pins {
 			pinmux = <STM32_PINMUX('D',  9, AF13)>, /* LCD_CLK */
@@ -104,6 +225,46 @@ pins {
 		};
 	};
 
+	m_can1_pins_a: m-can1-0 {
+		pins1 {
+			pinmux = <STM32_PINMUX('G', 10, AF9)>; /* CAN1_TX */
+			slew-rate = <1>;
+			drive-push-pull;
+			bias-disable;
+		};
+		pins2 {
+			pinmux = <STM32_PINMUX('D', 0, AF9)>; /* CAN1_RX */
+			bias-disable;
+		};
+	};
+
+	m_can1_sleep_pins_a: m_can1-sleep-0 {
+		pins {
+			pinmux = <STM32_PINMUX('G', 10, ANALOG)>, /* CAN1_TX */
+				 <STM32_PINMUX('D', 0, ANALOG)>; /* CAN1_RX */
+		};
+	};
+
+	m_can2_pins_a: m-can2-0 {
+		pins1 {
+			pinmux = <STM32_PINMUX('G', 0, AF9)>; /* CAN2_TX */
+			slew-rate = <1>;
+			drive-push-pull;
+			bias-disable;
+		};
+		pins2 {
+			pinmux = <STM32_PINMUX('E', 0, AF9)>; /* CAN2_RX */
+			bias-disable;
+		};
+	};
+
+	m_can2_sleep_pins_a: m_can2-sleep-0 {
+		pins {
+			pinmux = <STM32_PINMUX('G', 0, ANALOG)>, /* CAN2_TX */
+				 <STM32_PINMUX('E', 0, ANALOG)>; /* CAN2_RX */
+		};
+	};
+
 	mcp23017_pins_a: mcp23017-0 {
 		pins {
 			pinmux = <STM32_PINMUX('G', 12, GPIO)>;
@@ -141,6 +302,21 @@ pins {
 		};
 	};
 
+	pwm5_pins_a: pwm5-0 {
+		pins {
+			pinmux = <STM32_PINMUX('H', 12, AF2)>; /* TIM5_CH3 */
+			bias-pull-down;
+			drive-push-pull;
+			slew-rate = <0>;
+		};
+	};
+
+	pwm5_sleep_pins_a: pwm5-sleep-0 {
+		pins {
+			pinmux = <STM32_PINMUX('H', 12, ANALOG)>; /* TIM5_CH3 */
+		};
+	};
+
 	pwm8_pins_a: pwm8-0 {
 		pins {
 			pinmux = <STM32_PINMUX('E', 5, AF3)>; /* TIM8_CH3 */
@@ -156,6 +332,21 @@ pins {
 		};
 	};
 
+	pwm13_pins_a: pwm13-0 {
+		pins {
+			pinmux = <STM32_PINMUX('A', 6, AF9)>; /* TIM13_CH1 */
+			bias-pull-down;
+			drive-push-pull;
+			slew-rate = <0>;
+		};
+	};
+
+	pwm13_sleep_pins_a: pwm13-sleep-0 {
+		pins {
+			pinmux = <STM32_PINMUX('A', 6, ANALOG)>; /* TIM13_CH1 */
+		};
+	};
+
 	pwm14_pins_a: pwm14-0 {
 		pins {
 			pinmux = <STM32_PINMUX('F', 9, AF9)>; /* TIM14_CH1 */
@@ -171,6 +362,89 @@ pins {
 		};
 	};
 
+	qspi_clk_pins_a: qspi-clk-0 {
+		pins {
+			pinmux = <STM32_PINMUX('F', 10, AF9)>; /* QSPI_CLK */
+			bias-disable;
+			drive-push-pull;
+			slew-rate = <3>;
+		};
+	};
+
+	qspi_clk_sleep_pins_a: qspi-clk-sleep-0 {
+		pins {
+			pinmux = <STM32_PINMUX('F', 10, ANALOG)>; /* QSPI_CLK */
+		};
+	};
+
+	qspi_bk1_pins_a: qspi-bk1-0 {
+		pins {
+			pinmux = <STM32_PINMUX('F', 8, AF10)>, /* QSPI_BK1_IO0 */
+				 <STM32_PINMUX('F', 9, AF10)>, /* QSPI_BK1_IO1 */
+				 <STM32_PINMUX('D', 11, AF9)>, /* QSPI_BK1_IO2 */
+				 <STM32_PINMUX('H', 7, AF13)>; /* QSPI_BK1_IO3 */
+			bias-disable;
+			drive-push-pull;
+			slew-rate = <1>;
+		};
+	};
+
+	qspi_bk1_sleep_pins_a: qspi-bk1-sleep-0 {
+		pins {
+			pinmux = <STM32_PINMUX('F', 8, ANALOG)>, /* QSPI_BK1_IO0 */
+				 <STM32_PINMUX('F', 9, ANALOG)>, /* QSPI_BK1_IO1 */
+				 <STM32_PINMUX('D', 11, ANALOG)>, /* QSPI_BK1_IO2 */
+				 <STM32_PINMUX('H', 7, ANALOG)>; /* QSPI_BK1_IO3 */
+		};
+	};
+
+	qspi_cs1_pins_a: qspi-cs1-0 {
+		pins {
+			pinmux = <STM32_PINMUX('B', 2, AF9)>; /* QSPI_BK1_NCS */
+			bias-pull-up;
+			drive-push-pull;
+			slew-rate = <1>;
+		};
+	};
+
+	qspi_cs1_sleep_pins_a: qspi-cs1-sleep-0 {
+		pins {
+			pinmux = <STM32_PINMUX('B', 2, ANALOG)>; /* QSPI_BK1_NCS */
+		};
+	};
+
+	sai1a_pins_a: sai1a-0 {
+		pins {
+			pinmux = <STM32_PINMUX('A', 4, AF12)>, /* SAI1_SCK_A */
+				 <STM32_PINMUX('D', 6, AF6)>, /* SAI1_SD_A */
+				 <STM32_PINMUX('E', 11, AF6)>; /* SAI1_FS_A */
+			slew-rate = <0>;
+			drive-push-pull;
+			bias-disable;
+		};
+	};
+
+	sai1a_sleep_pins_a: sai1a-sleep-0 {
+		pins {
+			pinmux = <STM32_PINMUX('A', 4, ANALOG)>, /* SAI1_SCK_A */
+				 <STM32_PINMUX('D', 6, ANALOG)>, /* SAI1_SD_A */
+				 <STM32_PINMUX('E', 11, ANALOG)>; /* SAI1_FS_A */
+		};
+	};
+
+	sai1b_pins_a: sai1b-0 {
+		pins {
+			pinmux = <STM32_PINMUX('A', 0, AF6)>; /* SAI1_SD_B */
+			bias-disable;
+		};
+	};
+
+	sai1b_sleep_pins_a: sai1b-sleep-0 {
+		pins {
+			pinmux = <STM32_PINMUX('A', 0, ANALOG)>; /* SAI1_SD_B */
+		};
+	};
+
 	sdmmc1_b4_pins_a: sdmmc1-b4-0 {
 		pins {
 			pinmux = <STM32_PINMUX('C', 8, AF12)>, /* SDMMC1_D0 */
@@ -273,6 +547,73 @@ pins {
 		};
 	};
 
+	sdmmc2_d47_pins_a: sdmmc2-d47-0 {
+		pins {
+			pinmux = <STM32_PINMUX('F', 0, AF10)>, /* SDMMC2_D4 */
+				 <STM32_PINMUX('B', 9, AF10)>, /* SDMMC2_D5 */
+				 <STM32_PINMUX('C', 6, AF10)>, /* SDMMC2_D6 */
+				 <STM32_PINMUX('C', 7, AF10)>; /* SDMMC2_D7 */
+			slew-rate = <1>;
+			drive-push-pull;
+			bias-pull-up;
+		};
+	};
+
+	sdmmc2_d47_sleep_pins_a: sdmmc2-d47-sleep-0 {
+		pins {
+			pinmux = <STM32_PINMUX('F', 0, ANALOG)>, /* SDMMC2_D4 */
+				 <STM32_PINMUX('B', 9, ANALOG)>, /* SDMMC2_D5 */
+				 <STM32_PINMUX('C', 6, ANALOG)>, /* SDMMC2_D6 */
+				 <STM32_PINMUX('C', 7, ANALOG)>; /* SDMMC2_D7 */
+		};
+	};
+
+	spi2_pins_a: spi2-0 {
+		pins1 {
+			pinmux = <STM32_PINMUX('B', 10, AF6)>, /* SPI2_SCK */
+				 <STM32_PINMUX('H', 10, AF6)>; /* SPI2_MOSI */
+			bias-disable;
+			drive-push-pull;
+			slew-rate = <1>;
+		};
+
+		pins2 {
+			pinmux = <STM32_PINMUX('B', 5, AF5)>; /* SPI2_MISO */
+			bias-disable;
+		};
+	};
+
+	spi2_sleep_pins_a: spi2-sleep-0 {
+		pins {
+			pinmux = <STM32_PINMUX('B', 10, ANALOG)>, /* SPI2_SCK */
+				 <STM32_PINMUX('B', 5, ANALOG)>, /* SPI2_MISO */
+				 <STM32_PINMUX('H', 10, ANALOG)>; /* SPI2_MOSI */
+		};
+	};
+
+	spi3_pins_a: spi3-0 {
+		pins1 {
+			pinmux = <STM32_PINMUX('H', 13, AF6)>, /* SPI3_SCK */
+				 <STM32_PINMUX('F', 1, AF5)>; /* SPI3_MOSI */
+			bias-disable;
+			drive-push-pull;
+			slew-rate = <1>;
+		};
+
+		pins2 {
+			pinmux = <STM32_PINMUX('D', 4, AF5)>; /* SPI3_MISO */
+			bias-disable;
+		};
+	};
+
+	spi3_sleep_pins_a: spi3-sleep-0 {
+		pins {
+			pinmux = <STM32_PINMUX('H', 13, ANALOG)>, /* SPI3_SCK */
+				 <STM32_PINMUX('D', 4, ANALOG)>, /* SPI3_MISO */
+				 <STM32_PINMUX('F', 1, ANALOG)>; /* SPI3_MOSI */
+		};
+	};
+
 	spi5_pins_a: spi5-0 {
 		pins1 {
 			pinmux = <STM32_PINMUX('H', 7, AF6)>, /* SPI5_SCK */
@@ -333,6 +674,77 @@ pins {
 		};
 	};
 
+	uart4_pins_b: uart4-1 {
+		pins1 {
+			pinmux = <STM32_PINMUX('A', 9, AF8)>; /* UART4_TX */
+			bias-disable;
+			drive-push-pull;
+			slew-rate = <0>;
+		};
+		pins2 {
+			pinmux = <STM32_PINMUX('D', 8, AF8)>; /* UART4_RX */
+			bias-pull-up;
+		};
+	};
+
+	uart4_idle_pins_b: uart4-idle-1 {
+		pins1 {
+			pinmux = <STM32_PINMUX('A', 9, ANALOG)>; /* UART4_TX */
+		};
+		pins2 {
+			pinmux = <STM32_PINMUX('D', 8, AF8)>; /* UART4_RX */
+			bias-pull-up;
+		};
+	};
+
+	uart4_sleep_pins_b: uart4-sleep-1 {
+		pins {
+			pinmux = <STM32_PINMUX('A', 9, ANALOG)>, /* UART4_TX */
+				 <STM32_PINMUX('D', 8, ANALOG)>; /* UART4_RX */
+		};
+	};
+
+	uart7_pins_a: uart7-0 {
+		pins1 {
+			pinmux = <STM32_PINMUX('H', 2, AF8)>, /* UART7_TX */
+				 <STM32_PINMUX('B', 12, AF7)>; /* UART7_RTS */
+			bias-disable;
+			drive-push-pull;
+			slew-rate = <0>;
+		};
+		pins2 {
+			pinmux = <STM32_PINMUX('E', 10, AF7)>, /* UART7_RX */
+				 <STM32_PINMUX('G', 7, AF8)>; /* UART7_CTS_NSS */
+			bias-disable;
+		};
+	};
+
+	uart7_idle_pins_a: uart7-idle-0 {
+		pins1 {
+			pinmux = <STM32_PINMUX('H', 2, ANALOG)>, /* UART7_TX */
+				 <STM32_PINMUX('G', 7, ANALOG)>; /* UART7_CTS_NSS */
+		};
+		pins2 {
+			pinmux = <STM32_PINMUX('B', 12, AF7)>; /* UART7_RTS */
+			bias-disable;
+			drive-push-pull;
+			slew-rate = <0>;
+		};
+		pins3 {
+			pinmux = <STM32_PINMUX('E', 10, AF7)>; /* UART7_RX */
+			bias-disable;
+		};
+	};
+
+	uart7_sleep_pins_a: uart7-sleep-0 {
+		pins {
+			pinmux = <STM32_PINMUX('H', 2, ANALOG)>, /* UART7_TX */
+				 <STM32_PINMUX('B', 12, ANALOG)>, /* UART7_RTS */
+				 <STM32_PINMUX('E', 10, ANALOG)>, /* UART7_RX */
+				 <STM32_PINMUX('G', 7, ANALOG)>; /* UART7_CTS_NSS */
+		};
+	};
+
 	uart8_pins_a: uart8-0 {
 		pins1 {
 			pinmux = <STM32_PINMUX('E', 1, AF8)>; /* UART8_TX */
@@ -404,6 +816,36 @@ pins {
 		};
 	};
 
+	usart1_pins_b: usart1-1 {
+		pins1 {
+			pinmux = <STM32_PINMUX('C', 0, AF7)>; /* USART1_TX */
+			bias-disable;
+			drive-push-pull;
+			slew-rate = <0>;
+		};
+		pins2 {
+			pinmux = <STM32_PINMUX('D', 14, AF7)>; /* USART1_RX */
+			bias-pull-up;
+		};
+	};
+
+	usart1_idle_pins_b: usart1-idle-1 {
+		pins1 {
+			pinmux = <STM32_PINMUX('C', 0, ANALOG)>; /* USART1_TX */
+		};
+		pins2 {
+			pinmux = <STM32_PINMUX('D', 14, AF7)>; /* USART1_RX */
+			bias-pull-up;
+		};
+	};
+
+	usart1_sleep_pins_b: usart1-sleep-1 {
+		pins {
+			pinmux = <STM32_PINMUX('C', 0, ANALOG)>, /* USART1_TX */
+				 <STM32_PINMUX('D', 14, ANALOG)>; /* USART1_RX */
+		};
+	};
+
 	usart2_pins_a: usart2-0 {
 		pins1 {
 			pinmux = <STM32_PINMUX('H', 12, AF1)>, /* USART2_TX */
@@ -444,4 +886,45 @@ pins {
 				 <STM32_PINMUX('E', 11, ANALOG)>; /* USART2_CTS_NSS */
 		};
 	};
+
+	usart2_pins_b: usart2-0 {
+		pins1 {
+			pinmux = <STM32_PINMUX('F', 11, AF1)>, /* USART2_TX */
+				 <STM32_PINMUX('A', 1, AF7)>; /* USART2_RTS */
+			bias-disable;
+			drive-push-pull;
+			slew-rate = <0>;
+		};
+		pins2 {
+			pinmux = <STM32_PINMUX('D', 15, AF1)>, /* USART2_RX */
+				 <STM32_PINMUX('E', 15, AF3)>; /* USART2_CTS_NSS */
+			bias-disable;
+		};
+	};
+
+	usart2_idle_pins_b: usart2-idle-0 {
+		pins1 {
+			pinmux = <STM32_PINMUX('F', 11, ANALOG)>, /* USART2_TX */
+				 <STM32_PINMUX('E', 15, ANALOG)>; /* USART2_CTS_NSS */
+		};
+		pins2 {
+			pinmux = <STM32_PINMUX('A', 1, AF7)>; /* USART2_RTS */
+			bias-disable;
+			drive-push-pull;
+			slew-rate = <0>;
+		};
+		pins3 {
+			pinmux = <STM32_PINMUX('D', 15, AF1)>; /* USART2_RX */
+			bias-disable;
+		};
+	};
+
+	usart2_sleep_pins_b: usart2-sleep-0 {
+		pins {
+			pinmux = <STM32_PINMUX('F', 11, ANALOG)>, /* USART2_TX */
+				 <STM32_PINMUX('A', 1, ANALOG)>, /* USART2_RTS */
+				 <STM32_PINMUX('D', 15, ANALOG)>, /* USART2_RX */
+				 <STM32_PINMUX('E', 15, ANALOG)>; /* USART2_CTS_NSS */
+		};
+	};
 };
-- 
2.43.0


