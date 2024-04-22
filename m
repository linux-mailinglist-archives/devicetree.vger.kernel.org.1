Return-Path: <devicetree+bounces-61260-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D9FD8AC256
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 02:20:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9EB331C2037F
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 00:20:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1DAB184;
	Mon, 22 Apr 2024 00:20:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="zxsNB0Dt"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17B54205E1B
	for <devicetree@vger.kernel.org>; Mon, 22 Apr 2024 00:20:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713745244; cv=none; b=itykoQ/rTlZWDx+kCzR8GM48TjtRBmx937WX90rYxyzPwrd+s4ZQEq8hfKQGG6oWUmxrcMlXlZWMg2h7cgL+W/FrQ6UmScnCe4VFlktD5oBlziDjIE35mau0hDYeVA+RGAKxwIhH7Wt6BCIy/AcLqXn5dJ3CVKfRxTzwK+dQ2Ns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713745244; c=relaxed/simple;
	bh=DAHTrGLi+VWHuXsPX2627ajZYyhkO9axP3Tww9rlvlQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=N41hb0164EbbOOGGBh4aJEwL5hvM8maQUsok3wRa6waZ8KRHR5TtEszeAl+xBxK6Vb4SBlsCOWplAH/NMQ4i9uWzwNE0S7v2g19zmR48CwrYdSHzi7bstKKUBhkrUiP/UJmwU2zlcyNXv68WD2ik25x48U94NGrBto69yzcOQB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=zxsNB0Dt; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id B353188321;
	Mon, 22 Apr 2024 02:20:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1713745241;
	bh=ER+T3lt/f/Fxi1kllsMSrqpCYIaLAwEVMMLX/+W0iWg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=zxsNB0Dtl401UmZteZTZ8R5VFGuwgrL9aPFBdF8cQhGhddyQt9at5N69t9i3VCIq+
	 5BpakiLjYqmEh1sxNd/7CJN1pD4SjEXmFAjAqWfNfzwqkoqcmGVBJmNDfCwj7QuPFa
	 bmtOBuirFtNVFeNR4R4h8yKr69RxYdj1PUOREg+Gm0Rrr6rKYvOGuhOnKcVKLUxn6A
	 fSGzMDgilT/NLztZDp5QrJyMLwF0sxg6CzW2Zp4wpAvr6xljelTC9nM+twhyncz+70
	 vIrGo9R2CY7ggoCUzGEA18zhtQk9FjyXCJH4rWR/5K7es1xJguOWYsQutkHeRZej4w
	 +Z++PUpxpaskw==
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
Subject: [PATCH 09/20] ARM: dts: stm32: Add alternate pinmux for MP13 PWM5 pins
Date: Mon, 22 Apr 2024 02:19:23 +0200
Message-ID: <20240422002006.243687-9-marex@denx.de>
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

Add another mux option for PWM5 pins, this is used on
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
 arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi b/arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi
index b58bf6c00244c..d19408f19f97a 100644
--- a/arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi
+++ b/arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi
@@ -245,6 +245,21 @@ pins {
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
-- 
2.43.0


