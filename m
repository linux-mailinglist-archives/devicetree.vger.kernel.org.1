Return-Path: <devicetree+bounces-61254-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C7168AC24C
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 02:20:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 21F9E1F215EE
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 00:20:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10860184;
	Mon, 22 Apr 2024 00:20:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="U00GCQvE"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BB4A367
	for <devicetree@vger.kernel.org>; Mon, 22 Apr 2024 00:20:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713745240; cv=none; b=QIFd5sAEOPu6hKQdBEn+9wAkNjErOLos8UDdhB+m58KhfW8W6Z0qs/COKFIQ689RNRC/Qf3RwHWZF6AiBjdOeX7m1bKlmFvZ/qCaQpZSzCD3RmvUX9JLHGLZY+kN5LTu018nVh9JdTZRFyqcbRnTbMzr6TLh6zYDYx8E7TOYNw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713745240; c=relaxed/simple;
	bh=3l8uNFCQIsD5FYUfvbrbGFIx9qm5ZdJiAiPkfw0brZc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=BfGnjSWz0HzbC6e1KBzr/Tj/M85WDDlwhiB6SIFW9XaLT8nnogYNQqzPFSyds2qMh9hVJqoO77/etMJiKRWTxROSv1lItlAYwkahNpT7Y1oxEktksTScI5HMg5BvyDFga9LT77FGd2YWPoxmGA0bIZ/vgBCzqW1fNZa/3vNItTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=U00GCQvE; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id B9BA088312;
	Mon, 22 Apr 2024 02:20:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1713745236;
	bh=lkwZYPGL9RUwv5mle9kVh/lgKGdBi0lFINhZNuTKxp4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=U00GCQvE8PTu3NYHf+VTmMA1rrb9dQeFSCGGCj/rH/aecKC/BF6nQaOwbRHIHC93u
	 dzDZRan2XXKa33vY78V5FT6H9/jABfESQxMcgpEAx+v1LrbdFZa8ngOXinWBkjKfq2
	 Q3D5mNeCenFNCXeUw4Jj3sTin4kxpx4/qwxiu+VH9Fgpw9uF7wsAIfrCt15vxVgYci
	 Xf3djnkWnSevhHY8bU1Jy0/fPzmoOpAWUKvZQeBNfOuexYC5uN0oZqMdz3bHGfkTqO
	 nMAEbb60EviLZuTNHY1owjyvVmYbTN+42iPm5zX0Z0pfjfEzjddLN4QHd008Buj0RO
	 Kj98wcCqODMtw==
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
Subject: [PATCH 03/20] ARM: dts: stm32: Add alternate pinmux for MP13 ADC CC pins
Date: Mon, 22 Apr 2024 02:19:17 +0200
Message-ID: <20240422002006.243687-3-marex@denx.de>
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

Add another mux option for ADC CC pins, this is used on
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
 arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi b/arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi
index 03ded41539062..396fb6eee8412 100644
--- a/arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi
+++ b/arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi
@@ -19,6 +19,13 @@ pins {
 		};
 	};
 
+	adc1_usb_cc_pins_b: adc1-usb-cc-pins-1 {
+		pins {
+			pinmux = <STM32_PINMUX('A', 5, ANALOG)>, /* ADC1_INP2 */
+				 <STM32_PINMUX('F', 13, ANALOG)>; /* ADC1_INP11 */
+		};
+	};
+
 	i2c1_pins_a: i2c1-0 {
 		pins {
 			pinmux = <STM32_PINMUX('D', 12, AF5)>, /* I2C1_SCL */
-- 
2.43.0


