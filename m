Return-Path: <devicetree+bounces-61253-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 84CB18AC24B
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 02:20:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 417F0280E73
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 00:20:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0477A7E9;
	Mon, 22 Apr 2024 00:20:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="pxVPIBLo"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AEA1366
	for <devicetree@vger.kernel.org>; Mon, 22 Apr 2024 00:20:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713745238; cv=none; b=Bzo8H3gILNjXiHWyZGFVdUdE/i/649/JdjtqwLBBlXxWKeA+q1AjKtFKjkaxsqkqfDtoiw951ky4qyQjJ7XzityI1l78d3IO09rZqT+hYTibZ6mcHgnTsezuQsJB76TTbznWYpB3lFK/o9fJjv1L1jqLPXMOn7ZcrlgU7elBXhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713745238; c=relaxed/simple;
	bh=+X+DAobukcLV4YUD2YSlR1haXUbVTx1WWguw3a2nsYM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=QWX8jSzmspVXHWSL9PmNIfkl+8vNmx+6qI6HedARz7ZFuvpv45RzycGS7YOHkr1FxLxjULcZAF8pSYLPFzNGE2Pn9yLgpuEaGKwcbSGlh/OyTpNaBHzY5nmxkHggVDkmHe/hZYJ3hJGMmBsNge25DCkLQOM6b3goMMk8rXGVkJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=pxVPIBLo; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id E648288311;
	Mon, 22 Apr 2024 02:20:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1713745235;
	bh=0WAIir6pmYOE7fRhHAVw6R0Nbw4zWz9OPkn1lgq6o28=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=pxVPIBLosHYDx0LhZioRDA7MQJzTSEv5uAWf4QbHtzOnbLHG+erLXRYIS09cMBpij
	 fCqnULkX5BMCf7yvveMsfHO/STGdmdKFNb+CCjDJJ6zJBe4eAZp2tK6r9m8qK7UyHH
	 muYhQy0R1CWZ1xoTSltQP2NJ2dtNA7mORxYH7WaaGYAs2FOnizScsxlbAcHGqWXX7L
	 YKjh8ArDVLDq69kjZ0GrwTLGBVoXAq0bCAK0N3yHkeWn04JgFp/1ZleN6CnlAOlZ2q
	 vt61lfEpsnaBwqbtRMQPZvRfqrPFovGlCaGsN5zgNBjZcRMbvTkDEVepVvTeFxfb3Z
	 aWaJxrASlJV3A==
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
Subject: [PATCH 02/20] ARM: dts: stm32: Add alternate pinmux for MP13 ADC pins
Date: Mon, 22 Apr 2024 02:19:16 +0200
Message-ID: <20240422002006.243687-2-marex@denx.de>
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

Add another mux option for ADC pins, this is used on
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
 arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi b/arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi
index 27e0c3826789d..03ded41539062 100644
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
-- 
2.43.0


