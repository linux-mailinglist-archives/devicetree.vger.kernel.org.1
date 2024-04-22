Return-Path: <devicetree+bounces-61270-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C5578AC267
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 02:20:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8CB4A1F21561
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 00:20:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D6097E9;
	Mon, 22 Apr 2024 00:20:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="WJX0PdW1"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6279D29AB
	for <devicetree@vger.kernel.org>; Mon, 22 Apr 2024 00:20:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713745253; cv=none; b=jAl3KGQ834ap9ud9b2sHD7dawRyb3N5HeOdZPteI4XBqB2izrlpl+EMKPhZk0g2TkI500q36e7BvGnPi3AcL4DxDICYfO0lHD0FWXsirnCcQUr23NJysnPlq5Er0Pk2bXc2y5ExOlynr53+SzN90VLVl2MpPe++4D9hgHTT0mp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713745253; c=relaxed/simple;
	bh=3VcMWbHjl4EAW4ct+OET/NomyKw7TpoLIQLb+pl53mw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Mwb8eXHR3gVudJoMUh25Iup+5M177H1FE38YO+dIWspq1arW/Ud1YhMUXvPEUmJR4acY0APEhfvrZKB1oHVVEb23rIqy3eyP2WVWfWUgebS13bN4Dpp7V6yvCXZOBK8yV8QfFe8t4FXJM8MVsDgEh4dfeoLdG7TGY1IShjsWtXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=WJX0PdW1; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 0D8F788312;
	Mon, 22 Apr 2024 02:20:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1713745249;
	bh=jHT9ExLaPMZWc9ed806tdtwWjG9sWi8+PuBdJnBWNIs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=WJX0PdW1lt3iVws+BeelGWMl7i4IL4YAupKvKutxS8aZfJRKzhxMeTvkfLDJx7l8F
	 OmSiBeMVGMujvF4DbOa/C2ugD3cqm9k/qfqiYA2LLagj0SYA2lZNMPB9lu187Gfljr
	 yGvKDdsVwIzB0Ov3Cfr2Ss4nvJj+TVgX67/viGM8jBz7uoFvJmLXrDHkodXHyVyO2X
	 dLvHW34ZvCFJAkzpnC1jtp8S/OtTNVucXyp5gO6nvFOGxv7bScQJbjb3SRJ/CJnHNx
	 2+bBohDsffTOy9vpJ7Zy0QiQyOKSio9pAOHsdAc+fuPlynIlFSs93u+2nLmbxyp5fN
	 uue7Wle0GAxCA==
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
Subject: [PATCH 19/20] ARM: dts: stm32: Add alternate pinmux for MP13 UART7 pins
Date: Mon, 22 Apr 2024 02:19:33 +0200
Message-ID: <20240422002006.243687-19-marex@denx.de>
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

Add another mux option for UART7 pins, this is used on
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
 arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi | 41 +++++++++++++++++++++
 1 file changed, 41 insertions(+)

diff --git a/arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi b/arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi
index 7014c7a6d23e6..c01d39f03ea41 100644
--- a/arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi
+++ b/arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi
@@ -647,6 +647,47 @@ pins {
 		};
 	};
 
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
-- 
2.43.0


