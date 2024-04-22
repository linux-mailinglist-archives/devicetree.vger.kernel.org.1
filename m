Return-Path: <devicetree+bounces-61268-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F06B28AC265
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 02:20:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A7951280E60
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 00:20:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A02BF366;
	Mon, 22 Apr 2024 00:20:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="inGXIpi/"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4713205E04
	for <devicetree@vger.kernel.org>; Mon, 22 Apr 2024 00:20:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713745251; cv=none; b=PTe9157Ggdb/wXiSpehTED4EJ0QprNibypRnXxm0X5VSpMC8ekhnbunNyKLofEcNSgDXpqQwRiVWV+lUqiqUDN55gzmXvoxR2WfX2RSoP/vqcVWZVMa0kBgkahvOze7ASMlA3aTk0/gXL30a7TZYw0t26GlOODyfX1eeFpVTwjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713745251; c=relaxed/simple;
	bh=ZaGbwLIMCLh5mtLiZ4BpPduudw/JoYl5Hz+J8oS7xag=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=X0JqvSiS76yH5T6DQK3Be9Ba0qQrlr6LLTZ4CDsQWYbShDbU14VinkG9Z+OIZWdT95WqgpM/eSeEZR1sRHuwNpetc8b/TYSNG2uY33G+SdHqYryneQzedoYqLKQL7YValbG9V7TXnXPHD7XV9cTW1P1FoWXDC6ULMwBwuqqKhHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=inGXIpi/; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 5972C88315;
	Mon, 22 Apr 2024 02:20:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1713745248;
	bh=OKJaAukXExnDYrQ44jGcx1NxCqvcn9vxyEbJX+2j5aY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=inGXIpi/nBbNwP5dnCkkri1K+rUM3I5tpExc2gPAZq+lRUNcOMjqtjatPgfKttxHm
	 aDumi1DCwCYKGvcXkfzmBU+KjiwabvEIiN+FeeAq2Uk3wNAs9/nJyabxDWoefrHSu2
	 gk7ouRNni9A6R2krtF9rOyOrzKFdRsQzXevpoQusWNpZVdVgM6KaKcOwwZA0tqL6sZ
	 9VF4riFukjdzAQq+UGGPwVKguZAPJY0S0wQ2+KTaVY6CkLAF4JHKFL9O2P5dYjVpxP
	 zH/8P7MhMxliQ1SQN7RDP+q1m00B2TjOjrz+aN8VLz6Y7v0baTMnGIwnT9BSbOyy49
	 L5bhBmd+HpADw==
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
Subject: [PATCH 17/20] ARM: dts: stm32: Add alternate pinmux for MP13 USART2 pins
Date: Mon, 22 Apr 2024 02:19:31 +0200
Message-ID: <20240422002006.243687-17-marex@denx.de>
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

Add another mux option for USART2 pins, this is used on
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
index dae015a0ddf86..65f91265a4d4a 100644
--- a/arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi
+++ b/arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi
@@ -758,4 +758,45 @@ pins {
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


