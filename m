Return-Path: <devicetree+bounces-163446-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 815ADA7CEA9
	for <lists+devicetree@lfdr.de>; Sun,  6 Apr 2025 17:33:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C30E3188C612
	for <lists+devicetree@lfdr.de>; Sun,  6 Apr 2025 15:33:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D38172206A7;
	Sun,  6 Apr 2025 15:32:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="l5gFES/R"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCE0C1C84A2
	for <devicetree@vger.kernel.org>; Sun,  6 Apr 2025 15:32:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743953574; cv=none; b=l92oGBk61SH/yO4aURTSTWuJiWj14Ep7LI5Q0Vmlp4pDC1EsaLqMgb9Cd3YXdM/M16+oz1jlx9jVNoYjSFJbIA0xQT3k4x/ZlT0HRWXdCXMSpqm87FDO46g7OpjZeqzs0HpvdZAX9zzWUqlx1ATiiJt2md14JxOHFomh0BOE9OE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743953574; c=relaxed/simple;
	bh=cNlEHEe7SNQ2mZb5uq9bxJXCPH+Oeu8PuGaXaOeCVcs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=QWaJvdNOTR0qxBCzm0ffBHfUphs161CsGh0B+an5DVdcHBbnaOzJVjjBfG5Pt8WaXPt+X9KBQziPV9VUxKolV0m8G0ejOz7ROS9Qzeczn/lsc2I3I3VG7FiAA2g0fxWeWvjhTcHGUZ48S8cikCNA41t2xSeB6YZ5it0O4fMiT/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=l5gFES/R; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-54acc0cd458so4396841e87.0
        for <devicetree@vger.kernel.org>; Sun, 06 Apr 2025 08:32:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743953571; x=1744558371; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vxbJCPygNmGFFkjmqhp+ED4ZC28M+PGEOpe3YaoTOvE=;
        b=l5gFES/RNcKPErIUwQk3gVOziNxtUtBgcQtpo42yLkcOoc/c8z5PV/FGl5224uWnI/
         LWzBKoxi70svfit8hGc54c2y5Yp74Cvi5/aggpQGb/5FELkQIvrtAAeCCVdesE6CjWHI
         8X1a4o/njrAgYG3qaezLPXuyllRc+6nbxHa2f21jxb40NcU6h38a+fb8e/LddxP5fp9v
         yk9A2mUN1Vx9P3jbC5n70+l5fbApcv+c6byP9hJnHeh+ZH1l+liYCI9f0IgbG+qUDIZv
         ITlOzrAmEJasEyscJ0U2fm5R23q8TxPtbcY4NHA61cyzJe7zbX+2haCaxbhsFLaszDNC
         b5Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743953571; x=1744558371;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vxbJCPygNmGFFkjmqhp+ED4ZC28M+PGEOpe3YaoTOvE=;
        b=udS+/yoy6QMvF3yXhgecqcsPsMMU8j8cBLSrf4UA6JBTIl9uSlXaU0F4l7FhQOo5MI
         i86K2WYatWAjIe0QaupBYZO9x05YP1QNVypE+V3i24w6sqyriXLGI4CCoxbyg4Hw5n7i
         ela7fz04Stqr6pDrYLaOBBoIjvvbMLc0wVjp+ptfB+vu5L8I0bC6rQnb/6yIu9tZw9BO
         ohtb1TjbiuoEA643Mw67KQp1/9DpZMnUcqPVZgH7qU5oKrYF4sYwZd7MvNKq0vH28oCB
         pI3MPXiewm65zRDsZ5hBCLoWkm1024DJnzs7+bm/n2rqZEvTLsngpr7ZiJ6hT3RVxdkZ
         g+Hw==
X-Gm-Message-State: AOJu0YyZ3Opax/RzL0qIvlC21+4/lQ0DR80CItw/y9Xr9E2vzl6LHsXS
	np6svIBMkyZHQWtwuulNTsyzfeRCYmb0/yTbKb5iO4rF+GCqKiVQbcCj3kH+muA=
X-Gm-Gg: ASbGncuH8UQNojhdwpeeUkTatoTpWboUOfVNRFYn9SQF21elLVhkBpDGXFE8UOU/LjZ
	guQqNRLw31ycns39yfRMEDsBdWge1ezLzmUkoMZlzHe2C4eXHE+ao7/XoZGOSeRODggLtqsJw0q
	t9Grsu7RsbJPy40h9/nE5gFMaeCGaPaS1c+K/8TBst3E66Puj7Ryj1T5EH0DqMYmJEa44bfBo0G
	h3NuSklQz9NYeM9T5N/JCC7pf2BbJSxs75s3ee5OQyljW2vBGaTJJWpm7fJJPCmi2GQGCW3C+4c
	NRXBrN8yaPIu4bgZlZiTyoFbk6jCUh0x0jVtYzWknyYe7+l0z43IDdo=
X-Google-Smtp-Source: AGHT+IEfCCQeHtRVjiJNIOivtCk3Y3QjbXzuwpQereunWv8BhDimdvHma0Q0YTkRhqnfOtWAW6FKMw==
X-Received: by 2002:a05:6512:33d0:b0:545:60b:f382 with SMTP id 2adb3069b0e04-54c297d0977mr1426329e87.17.1743953571059;
        Sun, 06 Apr 2025 08:32:51 -0700 (PDT)
Received: from [192.168.1.140] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54c1e671fa8sm989747e87.218.2025.04.06.08.32.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Apr 2025 08:32:50 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sun, 06 Apr 2025 17:32:46 +0200
Subject: [PATCH v2 06/12] ARM: dts: bcm63138: Add BCMBCA peripherals
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250406-bcmbca-peripherals-arm-v2-6-22130836c2ed@linaro.org>
References: <20250406-bcmbca-peripherals-arm-v2-0-22130836c2ed@linaro.org>
In-Reply-To: <20250406-bcmbca-peripherals-arm-v2-0-22130836c2ed@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 William Zhang <william.zhang@broadcom.com>, 
 Anand Gore <anand.gore@broadcom.com>, 
 Kursad Oney <kursad.oney@broadcom.com>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Olivia Mackall <olivia@selenic.com>, Ray Jui <rjui@broadcom.com>, 
 Scott Branden <sbranden@broadcom.com>, 
 Florian Fainelli <f.fainelli@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-crypto@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.14.2

All the BCMBCA SoCs share a set of peripherals at 0xff800000,
albeit at slightly varying memory locations on the bus and
with varying IRQ assignments.

Extend the peripheral interrupt window to 0x10000 as it need
to fit the DMA block.

Add the GPIO, RNG and LED and DMA blocks for the
BCM63138 based on the vendor files 63138_map_part.h and
63138_intr.h from the "bcmopen-consumer" code drop.

This SoC has up to 160 possible GPIOs due to having 5
registers with 32 GPIOs in each available.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm/boot/dts/broadcom/bcm63138.dtsi | 79 +++++++++++++++++++++++++++++++-
 1 file changed, 78 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/broadcom/bcm63138.dtsi b/arch/arm/boot/dts/broadcom/bcm63138.dtsi
index e74ba6bf370da63d3c115e38b4f20c71baff2116..a3bce85e5f99f9791eaeb366f37afe30add573c0 100644
--- a/arch/arm/boot/dts/broadcom/bcm63138.dtsi
+++ b/arch/arm/boot/dts/broadcom/bcm63138.dtsi
@@ -184,13 +184,69 @@ ubus@fffe8000 {
 		compatible = "simple-bus";
 		#address-cells = <1>;
 		#size-cells = <1>;
-		ranges = <0 0xfffe8000 0x8100>;
+		ranges = <0 0xfffe8000 0x10000>;
 
 		timer: timer@80 {
 			compatible = "brcm,bcm6328-timer", "syscon";
 			reg = <0x80 0x3c>;
 		};
 
+		/* GPIOs 0 .. 31 */
+		gpio0: gpio@100 {
+			compatible = "brcm,bcm6345-gpio";
+			reg = <0x100 0x04>, <0x114 0x04>;
+			reg-names = "dirout", "dat";
+			gpio-controller;
+			#gpio-cells = <2>;
+			status = "disabled";
+		};
+
+		/* GPIOs 32 .. 63 */
+		gpio1: gpio@104 {
+			compatible = "brcm,bcm6345-gpio";
+			reg = <0x104 0x04>, <0x118 0x04>;
+			reg-names = "dirout", "dat";
+			gpio-controller;
+			#gpio-cells = <2>;
+			status = "disabled";
+		};
+
+		/* GPIOs 64 .. 95 */
+		gpio2: gpio@108 {
+			compatible = "brcm,bcm6345-gpio";
+			reg = <0x108 0x04>, <0x11c 0x04>;
+			reg-names = "dirout", "dat";
+			gpio-controller;
+			#gpio-cells = <2>;
+			status = "disabled";
+		};
+
+		/* GPIOs 96 .. 127 */
+		gpio3: gpio@10c {
+			compatible = "brcm,bcm6345-gpio";
+			reg = <0x10c 0x04>, <0x120 0x04>;
+			reg-names = "dirout", "dat";
+			gpio-controller;
+			#gpio-cells = <2>;
+			status = "disabled";
+		};
+
+		/* GPIOs 128 .. 159 */
+		gpio4: gpio@110 {
+			compatible = "brcm,bcm6345-gpio";
+			reg = <0x110 0x04>, <0x124 0x04>;
+			reg-names = "dirout", "dat";
+			gpio-controller;
+			#gpio-cells = <2>;
+			status = "disabled";
+		};
+
+		rng@300 {
+			compatible = "brcm,iproc-rng200";
+			reg = <0x300 0x28>;
+			interrupts = <GIC_SPI 21 IRQ_TYPE_LEVEL_HIGH>;
+		};
+
 		serial0: serial@600 {
 			compatible = "brcm,bcm6345-uart";
 			reg = <0x600 0x1b>;
@@ -209,6 +265,14 @@ serial1: serial@620 {
 			status = "disabled";
 		};
 
+		leds: led-controller@700 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			compatible = "brcm,bcm63138-leds";
+			reg = <0x700 0xdc>;
+			status = "disabled";
+		};
+
 		hsspi: spi@1000 {
 			#address-cells = <1>;
 			#size-cells = <0>;
@@ -248,6 +312,19 @@ bootlut: bootlut@8000 {
 			reg = <0x8000 0x50>;
 		};
 
+		pl081_dma: dma-controller@d000 {
+			compatible = "arm,pl081", "arm,primecell";
+			// The magic B105F00D info is missing
+			arm,primecell-periphid = <0x00041081>;
+			reg = <0xd000 0x1000>;
+			interrupts = <GIC_SPI 23 IRQ_TYPE_LEVEL_HIGH>;
+			memcpy-burst-size = <256>;
+			memcpy-bus-width = <32>;
+			clocks = <&periph_clk>;
+			clock-names = "apb_pclk";
+			#dma-cells = <2>;
+		};
+
 		reboot {
 			compatible = "syscon-reboot";
 			regmap = <&timer>;

-- 
2.49.0


