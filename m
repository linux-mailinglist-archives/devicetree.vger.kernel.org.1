Return-Path: <devicetree+bounces-61262-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A3058AC25D
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 02:20:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 35FC7280E2F
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 00:20:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6EFC2647;
	Mon, 22 Apr 2024 00:20:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="H4VCGp8P"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AE44802
	for <devicetree@vger.kernel.org>; Mon, 22 Apr 2024 00:20:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713745246; cv=none; b=BZvzi7WmtpFCjafPWDG8fwBbahCMANnqJqUNnSEVJ+lhgC9RU+20o8B3of2Rt1mCm4StweK1gPVgP9LZ5/9hw+e6l1zSvoY8/O8CsZYQEXuRKhFWnm0uVq/S+22v0rfeHLTU4go4yh5e8v4roTpLuqIFikdCttMccYjCzZ7n9bM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713745246; c=relaxed/simple;
	bh=b+IQOjTcKsQ3OFkWJGLmH+HWnGqo9ySFLmKEtfMsgW0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=TwNYFjFK9ljdpdNnhEXuYaArpCtEXZzmguSekkiY0fjRz40N/tlnJUxOEqxwmMI3d1UyCjDk2beNEWz4spk6sqlqkr/MYDt96fsUBKvE2r0t9eZLZMMd8vfNmqL3jQvQ4aZTg9ROL7TmtYg5X2ERL9/735M1e3idzi0qJ2as0KA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=H4VCGp8P; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 5FA7C88322;
	Mon, 22 Apr 2024 02:20:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1713745243;
	bh=n4GYbALNd/2MorrcpgvUqzzsCtxboqeR6gvjMLjRAjE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=H4VCGp8PhY2sqCSYrTf4sJ71C/RZXrmoIRzhsJfrSC37dBj2vOg8DjEPRA2Lp8zjU
	 BQtqtAPWr0yujhTi+/fbEfJ0BEiEJaQlSiELMG7SxJt1CUEDa1Pj6f2HsSS4XStHrb
	 HxuatD3JDjwBS5NZp/tY62DY+h5iIX3/R6cnQSC/Z9+G4CS07sPRFOK4HkEZGZOd5l
	 VZI3kKQtL9E638tbG+6PUk1iGEvH+QJd54YOFWjsvl8BL+0twvgtKSxw1mWsh6MYhZ
	 q7QZqADPLG/njRC/z07ddgtGtN65+7uNEUBuO10kCD5wa084V6PfqzUC7BpvXUsqXJ
	 cRm7AHTTpYp0g==
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
Subject: [PATCH 11/20] ARM: dts: stm32: Add alternate pinmux for MP13 QSPI pins
Date: Mon, 22 Apr 2024 02:19:25 +0200
Message-ID: <20240422002006.243687-11-marex@denx.de>
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

Add another mux option for QSPI pins, this is used on
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
 arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi | 51 +++++++++++++++++++++
 1 file changed, 51 insertions(+)

diff --git a/arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi b/arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi
index cf070fbd7f708..77a222903de84 100644
--- a/arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi
+++ b/arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi
@@ -305,6 +305,57 @@ pins {
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
 	sdmmc1_b4_pins_a: sdmmc1-b4-0 {
 		pins {
 			pinmux = <STM32_PINMUX('C', 8, AF12)>, /* SDMMC1_D0 */
-- 
2.43.0


