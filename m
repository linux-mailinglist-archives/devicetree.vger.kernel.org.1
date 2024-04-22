Return-Path: <devicetree+bounces-61264-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 69E668AC261
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 02:20:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 205391F214B8
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 00:20:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15A7981E;
	Mon, 22 Apr 2024 00:20:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="Y19gzc/x"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39A9D367
	for <devicetree@vger.kernel.org>; Mon, 22 Apr 2024 00:20:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713745248; cv=none; b=AiGtP8UNV/iI7Hcrlri1MTndX3ZkwlW1p4G/VaiMtCh3golcltCHzxc2r8FPT02VZZXzppXX5FIxnoHvPzMHD+0dBRGH97WjcQVcFVIt0JSw4t4mM/QJjqWLT0hLfDluTVzFhRCblArx0uTvaQOrATuqNnJHTrlSky7t+lAca1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713745248; c=relaxed/simple;
	bh=Yw88odsXgXinPYyAmhDpROsaILN96fQk7WFgR2Oi0YQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=nyH9QxRDge5810zXx8rZ5C5gy2lQuaohP7162RidRM7RaMmjXrOWKWC7nQQW7kfZN/sPZZ6ptunmtUNrwRFptink4Zn68YLHNDS3Ew2qFO4EwNffDjG0RkhKd8P0QGd1b51SyY4KuLRwPahBzhgV+o6FG5IkQy3Il1uxu2t+5YU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=Y19gzc/x; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 0C62D8831F;
	Mon, 22 Apr 2024 02:20:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1713745244;
	bh=TtNqYjmOO2CpLdxim0VUZRbSrAsqgdSRa26x6/5aCF0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Y19gzc/xD3QPr38CgX2rwkX9EDas/2cNFlAh+E9L4zf99MqDXxBgEACVFsKYBHw5L
	 7wGnT9eTxqtve5tfhBR9wGMj0ty5WR4CqgHSCU2kc9aGyKVF5/V1Ka+v8MHsmViHlw
	 /pTdrXjdBdcdlOwoOh6GkB+CqrJWFHqB81NEWC2THvdDsvvQ7JYZq/wdmS2OvqtLJo
	 pgeUZM9JblR03qXzMI9TpOPglAnUhEoPuIXfjN0xAgNLrxJBVDgTMCXxSa6/Bwznc2
	 d+LZSXl1Fn8CtfScFGP1vGNWDStXcJUW0HYJ+31R6okcbfUGGqUGkySd4TW914K9Uo
	 yqOEWtb8A8cRA==
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
Subject: [PATCH 13/20] ARM: dts: stm32: Add alternate pinmux for MP13 SDMMC2 D4..D7 pins
Date: Mon, 22 Apr 2024 02:19:27 +0200
Message-ID: <20240422002006.243687-13-marex@denx.de>
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

Add another mux option for SDMMC2 D4..D7 pins, this is used on
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
 arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi b/arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi
index f2b41104a589f..c6967e82b5d2e 100644
--- a/arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi
+++ b/arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi
@@ -490,6 +490,27 @@ pins {
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
 	spi5_pins_a: spi5-0 {
 		pins1 {
 			pinmux = <STM32_PINMUX('H', 7, AF6)>, /* SPI5_SCK */
-- 
2.43.0


