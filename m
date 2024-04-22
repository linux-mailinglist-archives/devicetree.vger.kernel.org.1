Return-Path: <devicetree+bounces-61259-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 854508AC255
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 02:20:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B6DBE1C20341
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 00:20:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1C85641;
	Mon, 22 Apr 2024 00:20:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="Yu8/r03b"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E1641848
	for <devicetree@vger.kernel.org>; Mon, 22 Apr 2024 00:20:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713745243; cv=none; b=GuoJ3rH2EyxpexlDbb683aqGO71TaBnZP7rnXmlj9DQzHmgfItRQeANAdGgM1yEktCbYgiQy45/O2q6oWqt3kS6cxhMlht8Gsb99rKmmYSIlTJrTCJ4dgZ7yQaii1xLLcndOYMrmjfItvjsovwPQctT84A/sr7frbcazOqZmttc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713745243; c=relaxed/simple;
	bh=CFe3RydaGDHcUdrF+vhWkzT5ehMoUXZABahRztfFXj8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ZNI2pK8hLhNU0NHWt/daMAi0KV3gzO0bz/KODj2zZhGSPUuDu05+4EDhhN1zYgD8jgjGzq+UJBUDbiiHU+XGP5SMM0V/rxiGGfMfrBYdq3xVcKO7/MFxBHqjEz9DLOmkMqkkK5X46rqhhforFFlNRR1kHSfI2Jk0dTaA21ucUPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=Yu8/r03b; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id DD7CF88320;
	Mon, 22 Apr 2024 02:20:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1713745240;
	bh=6PyPayP+QraYuaO84T2F0X7mX9EN/Efn1TIJrEadDWg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Yu8/r03bGtZIHsVlyiZQCfTxbcSfRMqzstDpCGl5Zl+kJvzFDNoW1IW1iKVGnCRa9
	 9LQJjgxh56ht23rGQpC+RBmFFT9c8wUaqsdVVM4jBEL/kXQlI25CaWPlsBL1axdViO
	 r9gnLfVW9LPGoPLxl0opRxGnhE7TGHkqXGUzt8G6HfPCUDX1i0ODHXJfWXX57Te+o+
	 dHLBMCBLHHOk3SVCsaY0RNuexuc49Y52YMBbh0XDbqbivLzg2jRsQ4zwSdvp2MNemN
	 xwUMUKQMlp+E/7J3LxN4Q4X5FMmLGlKK9SdsQIbW/Ib2HxxzMMMYaqljEuSM84/V85
	 B92IIoJMGfC9g==
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
Subject: [PATCH 08/20] ARM: dts: stm32: Add alternate pinmux for MP13 MCAN2 pins
Date: Mon, 22 Apr 2024 02:19:22 +0200
Message-ID: <20240422002006.243687-8-marex@denx.de>
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

Add another mux option for MCAN2 pins, this is used on
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
 arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi b/arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi
index b38174504fffa..b58bf6c00244c 100644
--- a/arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi
+++ b/arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi
@@ -188,6 +188,26 @@ pins {
 		};
 	};
 
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
-- 
2.43.0


