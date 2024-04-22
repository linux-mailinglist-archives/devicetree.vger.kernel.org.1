Return-Path: <devicetree+bounces-61265-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0293B8AC262
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 02:20:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3459D1C20AB0
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 00:20:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA79AED9;
	Mon, 22 Apr 2024 00:20:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="QYyg41PA"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EA8D802
	for <devicetree@vger.kernel.org>; Mon, 22 Apr 2024 00:20:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713745248; cv=none; b=QWvQ83UTKuy++5rQR0q3thpLVQPdDagJxjei2Fh8Vzz/4HzUgEkLn3Q0I77IfrUIz9TTjvStvcsONMWlyD1Un2QEzJyoDbo3lsYmhFkuzrLHmDc0cbrgQzPQGTwuG+sc2nJCjdFy0a2LwpjHtOUu1mqYEWHFUY8O81WSL65WAOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713745248; c=relaxed/simple;
	bh=GBBzVtMCmryf0Equr628XhbJfFHbS2PA0it2uxNmG2w=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=GLKV4VtznJROh6KG2oiy3dTuSWCD7Ul1c2qJeqojubsZNbMLHGsgAQ3QjJVaUEpXqzVvyTiJNvAC9vZ5pXskbCjNL+e4hUB7ilROREh/6AaCSQpiASPWeuFHOzZgsXsllog8HQesdo6QVmqIpJjllIEanmLOTtF5amtcwEotagQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=QYyg41PA; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id D91118832E;
	Mon, 22 Apr 2024 02:20:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1713745245;
	bh=7KrDz+5SrjrOwT2hbyGUYLasiifEHGZkxgI8HCHUFIE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=QYyg41PAzvI/bW2YK68ZBXWgEe1UeRDT+idPtTxAwAWkUsRA/r97420A82BLEK3lh
	 hBTG5JdiX9S5aKKKOG5FPIBXFNpK+TKE5VQCe6qHAP4h8BY5WGxgDUDxxc4/ULKOCe
	 b6rccjQ030JFxiaApn7VlFxctpoltiLkxkcfcWNwblbUl7RbnpcsF/MBebtzc+EXSI
	 IeN1o/IhQc8ZvTmshBEb2Q3w0OS50ksF2gjG6Qkc2/cbOSHeNDwOk9jII51taDVNEY
	 yt57dcCmtX8kDsiIDE9Wn9aKfnowRM6vFRNn2W23satl4LBfMgmodv128fqh13sMiU
	 VvQw8EFcZHZtQ==
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
Subject: [PATCH 14/20] ARM: dts: stm32: Add alternate pinmux for MP13 SPI2 pins
Date: Mon, 22 Apr 2024 02:19:28 +0200
Message-ID: <20240422002006.243687-14-marex@denx.de>
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

Add another mux option for SPI2 pins, this is used on
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
 arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi | 23 +++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi b/arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi
index c6967e82b5d2e..17acd2850d381 100644
--- a/arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi
+++ b/arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi
@@ -511,6 +511,29 @@ pins {
 		};
 	};
 
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
 	spi5_pins_a: spi5-0 {
 		pins1 {
 			pinmux = <STM32_PINMUX('H', 7, AF6)>, /* SPI5_SCK */
-- 
2.43.0


