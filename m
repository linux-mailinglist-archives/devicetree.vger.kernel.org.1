Return-Path: <devicetree+bounces-163452-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A6587A7CEAF
	for <lists+devicetree@lfdr.de>; Sun,  6 Apr 2025 17:33:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CAFEE188E433
	for <lists+devicetree@lfdr.de>; Sun,  6 Apr 2025 15:33:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1201C221576;
	Sun,  6 Apr 2025 15:33:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FdQJV2zU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F818221561
	for <devicetree@vger.kernel.org>; Sun,  6 Apr 2025 15:33:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743953583; cv=none; b=qylyuSH/nLlPf/DbaqXI8Asz1+sGiQdOW2d5YAlefQNJdtBjcrQBhlfChUPWtuFVIT0n9osgSK3h9Ri3irkf4Rm3A2+Z5WjZgprpmNevSZxisxaRODKjEKMY9acOHW0giJSLcoA4ydF7NZXODoA9Fjkipc7X6kAyEpc1sOw8CxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743953583; c=relaxed/simple;
	bh=aYm9pJ0yw8fxLGuQnA0ss/Do3w9mXBof0NpAKAqi9mY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=esKfDtsO2R7rjdkjaKkJ8454i9F4EQgl2wy5Ln/nByEsay94qb1lB1gLxl5n810eC5cNcJO5Qjvt89CMUZ3gSO5nC4N4dOTUV0zcw1LtRx5taN9QJIsovc4bGRibFujOTZk1jvkuRIRcIQmHN1Bg4y5UJXhn9+/u1miTA82HddM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FdQJV2zU; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-30bf7d0c15eso34379761fa.0
        for <devicetree@vger.kernel.org>; Sun, 06 Apr 2025 08:33:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743953579; x=1744558379; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NqWHGfBlgpXur5ymKn164EkhRYyd9ouy+P4Dy70Bi6o=;
        b=FdQJV2zU6yuLvofjNe6hrSgshuE4/4CndajZFLrzH3joGVjC8M9BhWNxIqGxmyXdOS
         WS0aLrTZ8JkSgbUNtKn1VbG6/DFaZqgNoXKSgbSsEBuRj+4h3qKu9GUKiZg6+nZdXA/b
         sYtVvEh+tuqamqonhnyp41wXTNpGBQxg0fWX38WAYXcROJqsc2TKq+oO5X8jKjzBWH9d
         zfjsYLh65s+Iny05KCBGkcBaWL4Q1WbCw05czRGqBvspMZcJ9UZc25WDmKj0W1Rk2Gy7
         HsmuzyWxDj3iTonvwGF1+HucitGK/iwhLKx/GoFZALTcVWoozVNFCLCOi98AXpxstROk
         Kxmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743953579; x=1744558379;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NqWHGfBlgpXur5ymKn164EkhRYyd9ouy+P4Dy70Bi6o=;
        b=Rj+krI5irACvxbPCsdskMU6iyvuQ6XUo1kfnE0q5RXVrTXOnbZ6+dnvlPHpkipm1Nq
         YgDhO/vvNIe14pj5Y7GKd/XddF/OjkU/ZnVJTxrHtr/K9kKqR7z7CXH0mp3p0NcHYi3/
         HydLFAvZtCieCxVWQ57xb/TG0Sis6ByInAX8DX0WOPCGIFzCM4wxNaNmUDqbb9VrbaWr
         EhoPBgDmlJNriYItMDX/Ms9JKKyGqGhlvnLyZNdpymX/r+ZTR4M9qeZMBfd5CEFQGga8
         h4fPPayiW5UKWGhuzGKpTJMfmMY1ckfaYw3RqCFGpxiUSnw/Ey7d3Hdm1GR5q6x0Yrun
         DEjw==
X-Gm-Message-State: AOJu0Yz6MffZGUDLK8CxqZt/TIeoMVrogcGAfAs8HArmT0pQbwdXP+Dm
	w/FoM2hUQSiz6Mjkk5QjE0NfXVA9c42+1nmB7sO2kWHXQq8j1OqUiXN6PFCyoFw=
X-Gm-Gg: ASbGncvVpQMSmXzhKgiGYzoAISk9uue2qSKiRGXFBNNBlaGMmW+uIbEfkEorvuLzO6f
	YpXnVWC/55DURQRR3JQksj3Bhl8aWAgayZRm1iSMmujzeAushuay3sUkiYiBo0yzetW8+Vzas05
	VrrRe7iZlgK6kr+Gy9AOHZFYhQsw81BsRRXEEZPctWUugJmYoBkW/dn9M+Hqgzwh+8oFcg7BOCm
	FJgayKtLXfv8i6Hi5IDvJ77ChLYueXgNVmqs/Lg4HZ0E+zmb8iKVieZYs/CZJeUuUPcfDJbHSnA
	H9rRkllT1r1Hw2kfYJbWUb3qOlo2rpyRyMeCX/3T4Cy9psN1TkOkCno=
X-Google-Smtp-Source: AGHT+IFo5lWlWrnONMPOJWYo5IqaTUomJD3tTkColMtGFQSw4EBGsjCL9oTTcbzR1eqoW0CXn95OVg==
X-Received: by 2002:a05:6512:2387:b0:54b:1055:f4b1 with SMTP id 2adb3069b0e04-54c22692d91mr2732914e87.0.1743953579057;
        Sun, 06 Apr 2025 08:32:59 -0700 (PDT)
Received: from [192.168.1.140] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54c1e671fa8sm989747e87.218.2025.04.06.08.32.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Apr 2025 08:32:58 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sun, 06 Apr 2025 17:32:52 +0200
Subject: [PATCH v2 12/12] ARM64: dts: bcm63158: Add BCMBCA peripherals
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250406-bcmbca-peripherals-arm-v2-12-22130836c2ed@linaro.org>
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
with varying IRQ assignments. On BCM63158 the PERF window was
too big so adjust it down to its real size (0x3000).

Add the watchdog, GPIO blocks, RNG, LED, second UART and DMA
blocks for the BCM63158 based on the vendor files 63158_map_part.h
and 63158_intr.h from the "bcmopen-consumer" code drop.

The DTSI file has clearly been authored for the B0 revision of
the SoC: there is an earlier A0 version, but this has
the UARTs in the legacy PERF memory space, while the B0
has opened a new peripheral window at 0xff812000 for the
three UARTs. It also has a designated AHB peripheral area
at 0xff810000 where the DMA resides, so we create new windows
for these two peripheral group reflecting the internal
structure of the B0 SoC.

This SoC has up to 256 possible GPIOs due to having 8
registers with 32 GPIOs in each available.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm64/boot/dts/broadcom/bcmbca/bcm63158.dtsi | 150 +++++++++++++++++++++-
 1 file changed, 147 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/broadcom/bcmbca/bcm63158.dtsi b/arch/arm64/boot/dts/broadcom/bcmbca/bcm63158.dtsi
index 48d618e75866452a64adfdc781ac0ea3c2eff3e8..a47c5d6d034a7ae56803a651636148383acb8cc9 100644
--- a/arch/arm64/boot/dts/broadcom/bcmbca/bcm63158.dtsi
+++ b/arch/arm64/boot/dts/broadcom/bcmbca/bcm63158.dtsi
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: (GPL-2.0+ OR MIT)
 /*
  * Copyright 2022 Broadcom Ltd.
+ * This DTSI is for the B0 and later revision of the SoC
  */
 
 #include <dt-bindings/interrupt-controller/irq.h>
@@ -119,11 +120,107 @@ gic: interrupt-controller@1000 {
 		};
 	};
 
+	/* PERF Peripherals */
 	bus@ff800000 {
 		compatible = "simple-bus";
 		#address-cells = <1>;
 		#size-cells = <1>;
-		ranges = <0x0 0x0 0xff800000 0x800000>;
+		ranges = <0x0 0x0 0xff800000 0x3000>;
+
+		/* GPIOs 0 .. 31 */
+		gpio0: gpio@500 {
+			compatible = "brcm,bcm6345-gpio";
+			reg = <0x500 0x04>, <0x520 0x04>;
+			reg-names = "dirout", "dat";
+			gpio-controller;
+			#gpio-cells = <2>;
+			status = "disabled";
+		};
+
+		/* GPIOs 32 .. 63 */
+		gpio1: gpio@504 {
+			compatible = "brcm,bcm6345-gpio";
+			reg = <0x504 0x04>, <0x524 0x04>;
+			reg-names = "dirout", "dat";
+			gpio-controller;
+			#gpio-cells = <2>;
+			status = "disabled";
+		};
+
+		/* GPIOs 64 .. 95 */
+		gpio2: gpio@508 {
+			compatible = "brcm,bcm6345-gpio";
+			reg = <0x508 0x04>, <0x528 0x04>;
+			reg-names = "dirout", "dat";
+			gpio-controller;
+			#gpio-cells = <2>;
+			status = "disabled";
+		};
+
+		/* GPIOs 96 .. 127 */
+		gpio3: gpio@50c {
+			compatible = "brcm,bcm6345-gpio";
+			reg = <0x50c 0x04>, <0x52c 0x04>;
+			reg-names = "dirout", "dat";
+			gpio-controller;
+			#gpio-cells = <2>;
+			status = "disabled";
+		};
+
+		/* GPIOs 128 .. 159 */
+		gpio4: gpio@510 {
+			compatible = "brcm,bcm6345-gpio";
+			reg = <0x510 0x04>, <0x530 0x04>;
+			reg-names = "dirout", "dat";
+			gpio-controller;
+			#gpio-cells = <2>;
+			status = "disabled";
+		};
+
+		/* GPIOs 160 .. 191 */
+		gpio5: gpio@514 {
+			compatible = "brcm,bcm6345-gpio";
+			reg = <0x514 0x04>, <0x534 0x04>;
+			reg-names = "dirout", "dat";
+			gpio-controller;
+			#gpio-cells = <2>;
+			status = "disabled";
+		};
+
+		/* GPIOs 192 .. 223 */
+		gpio6: gpio@518 {
+			compatible = "brcm,bcm6345-gpio";
+			reg = <0x518 0x04>, <0x538 0x04>;
+			reg-names = "dirout", "dat";
+			gpio-controller;
+			#gpio-cells = <2>;
+			status = "disabled";
+		};
+
+		/* GPIOs 224 .. 255 */
+		gpio7: gpio@51c {
+			compatible = "brcm,bcm6345-gpio";
+			reg = <0x51c 0x04>, <0x53c 0x04>;
+			reg-names = "dirout", "dat";
+			gpio-controller;
+			#gpio-cells = <2>;
+			status = "disabled";
+		};
+
+
+		leds: led-controller@800 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			compatible = "brcm,bcm63138-leds";
+			reg = <0x800 0xdc>;
+			status = "disabled";
+		};
+
+		rng@b80 {
+			compatible = "brcm,iproc-rng200";
+			reg = <0xb80 0x28>;
+			interrupts = <GIC_SPI 85 IRQ_TYPE_LEVEL_HIGH>;
+		};
 
 		hsspi: spi@1000 {
 			#address-cells = <1>;
@@ -150,14 +247,61 @@ nandcs: nand@0 {
 				reg = <0>;
 			};
 		};
+	};
+
+	/* B0 AHB Peripherals */
+	bus@ff810000 {
+		compatible = "simple-bus";
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges = <0x0 0x0 0xff810000 0x2000>;
+
+		pl081_dma: dma-controller@1000 {
+			compatible = "arm,pl081", "arm,primecell";
+			// The magic B105F00D info is missing
+			arm,primecell-periphid = <0x00041081>;
+			reg = <0x1000 0x1000>;
+			interrupts = <GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH>;
+			memcpy-burst-size = <256>;
+			memcpy-bus-width = <32>;
+			clocks = <&periph_clk>;
+			clock-names = "apb_pclk";
+			#dma-cells = <2>;
+		};
+	};
+
+	/* B0 ARM UART Peripheral block */
+	bus@ff812000 {
+		compatible = "simple-bus";
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges = <0x0 0x0 0xff812000 0x3000>;
 
-		uart0: serial@12000 {
+		uart0: serial@0 {
 			compatible = "arm,pl011", "arm,primecell";
-			reg = <0x12000 0x1000>;
+			reg = <0x0 0x1000>;
 			interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&uart_clk>, <&uart_clk>;
 			clock-names = "uartclk", "apb_pclk";
 			status = "disabled";
 		};
+
+		uart1: serial@1000 {
+			compatible = "arm,pl011", "arm,primecell";
+			reg = <0x1000 0x1000>;
+			interrupts = <GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&uart_clk>, <&uart_clk>;
+			clock-names = "uartclk", "apb_pclk";
+			status = "disabled";
+		};
+
+		uart2: serial@2000 {
+			compatible = "arm,pl011", "arm,primecell";
+			reg = <0x2000 0x1000>;
+			interrupts = <GIC_SPI 35 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&uart_clk>, <&uart_clk>;
+			clock-names = "uartclk", "apb_pclk";
+			status = "disabled";
+		};
 	};
 };

-- 
2.49.0


