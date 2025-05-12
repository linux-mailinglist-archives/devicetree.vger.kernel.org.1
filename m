Return-Path: <devicetree+bounces-176304-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 77F64AB369E
	for <lists+devicetree@lfdr.de>; Mon, 12 May 2025 14:06:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F187E189D928
	for <lists+devicetree@lfdr.de>; Mon, 12 May 2025 12:06:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30B19293B4B;
	Mon, 12 May 2025 12:06:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JrnrzFFp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CCBE29375A
	for <devicetree@vger.kernel.org>; Mon, 12 May 2025 12:06:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747051570; cv=none; b=Euk8hT1v/mElTlqneVaHUMmtN+NP8cE3+NpGjvrmAg4LR+PXg4PdjYu/QFMLaF3nXhyg0CwKo7td0Kff9YdnPlc9zfROXZ8ONbqopueBnfN9uMKd7mLvJ6V4Z4U1sTX+jc11ygbmoi3elR0dewAkCMtSKvhhhMr8n6t7xZADbig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747051570; c=relaxed/simple;
	bh=4PRkmZ+5A/4WTwkFMIVat/9B7oNPOSVaEkBZYq71Pms=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=dZ8HEMilIVYLmcG1hgTVClnfAcdBI3EKhqjDMZgOKS1Qcbav4QcRJ0N7QUHg+D3PcUMXHVgGG+gkM0KN/lGH8eYqVuvWG9Dqv0bWIjTRui/5FrBR7KEkDloG4xWxkBCOfpIjNHPm+hns4zSc5/5NK4oQwHe1Bcgb/Pqmc36J7VQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JrnrzFFp; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-549b159c84cso5313611e87.3
        for <devicetree@vger.kernel.org>; Mon, 12 May 2025 05:06:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747051566; x=1747656366; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eAqlz/H1WtWods9o2Ni6pCtC3hYNHkIu6IGeMm5XJSg=;
        b=JrnrzFFpi+RhVHwJGkE5qyF3AA3NAjG1v0K0uZt+w7qL6KKKrb0OxLjSPLCbjdW4r+
         IIDGTopJWvGqUO1c4AXDlprF/IsFShU58aUoVh2xMtkOD2inJ0l8GKDW0uoc6Ug/dGKM
         tTdqCHhQsdkf06fV3Da/ksnAf4/vVDYVNOkuxQLeXkEiup657TKfur7hyFqdtc4/mEKJ
         OXsBpGeqNRpsvP96H1W9hf1EZBaBiX0V8TYaFKiQFD3RQ3bRqF1Mt3x/Om71tkZRKA4W
         sBhkDIwF2FCD2kB7rPzmQRCK03sg14mb2brafSuZUkSEeis4FSHEIP3svjTDTJ+kNYhG
         JQzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747051566; x=1747656366;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eAqlz/H1WtWods9o2Ni6pCtC3hYNHkIu6IGeMm5XJSg=;
        b=k6p25BJipIeCzvwUAtCc0mS/MzWey30JKGE6w8j/WVo6bOm97QAi536sfQqdHOVVlW
         Y80cVbFymO3QF2bz0o9/njAQFUua6WSqNiI1B4B+hk6VRousYq4OTtWPU5/adQVauGDS
         rtaBFccIMdKqDHwl1yijIjylfJ0eX2cV/B+JLhLJZc0mq7BITqaBh4RP07vwwEw93Ckg
         lCPWtsb2unVjAUbUuxAOBa/gNY9onZ1h9Th1Y43VE4qooq32/N2Nby4o5IeSWDZaAN92
         Vywj7vhho42sMv7u//wYp0SBGsvgXMjHtArlFBXx4tjn6N9dppAlZXFZkrqr183V1XRJ
         h85w==
X-Gm-Message-State: AOJu0YxNbAIlpcYY2TGN9jVkSuUC4OYApx1dYrCfzKPSG6cMGiV03gtR
	i0Aw/C0+FPiNcZ2LCLKEBXBNlynEBUw8KJvJS28AHGy7r64j1Tt0JhGRky6RjOI=
X-Gm-Gg: ASbGncvJz23ipXH4x+2OoP2PK0rfSpMUjvsAivfN2aBs87XKFZvAq3lUj0nPCFF3el3
	YBfsL4JJewrbqiwlU9EB6w8o1iULf7yZdWO35AthNQqKgxIYP/Un6JFi3UxhJKY5q4xT9VnQCCZ
	9RPtfkVHwczvhcQHJlrOg15zfVnsQpZBhZ4WM1+74Rm9i9h3WXMhcC9ErVaMienQGvpYIv3BQe2
	QSHFyY3a1tkfhfolnstYjnPvM4322a/OGt2buGGaPuTSY1u5MNt9ejh8r2OH6IYkL0h6yrORyZs
	NsjNMKmuV8j4TKSrkuMgcTOZmmgx0KqV89QZJW5EZt0lLc3LkPwQfVk3Hxj08Q==
X-Google-Smtp-Source: AGHT+IEQ8d0RPcbivpJy7xsvoNNoWD7jWtxDLkfql2z9LQbZv6z2/xgjHKVHKznqeLoUoImWcuDORQ==
X-Received: by 2002:a05:6512:660d:b0:545:62c:4b29 with SMTP id 2adb3069b0e04-54fc67c5b72mr3878290e87.22.1747051566192;
        Mon, 12 May 2025 05:06:06 -0700 (PDT)
Received: from [192.168.1.140] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54fc64bf8a3sm1466033e87.189.2025.05.12.05.06.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 May 2025 05:06:05 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 12 May 2025 14:05:58 +0200
Subject: [PATCH v3 12/12] ARM64: dts: bcm63158: Add BCMBCA peripherals
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250512-bcmbca-peripherals-arm-v3-12-86f97ab4326f@linaro.org>
References: <20250512-bcmbca-peripherals-arm-v3-0-86f97ab4326f@linaro.org>
In-Reply-To: <20250512-bcmbca-peripherals-arm-v3-0-86f97ab4326f@linaro.org>
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

Add the watchdog, GPIO blocks, RNG, LED, second UART and DMA
blocks for the BCM63158 based on the vendor files 63158_map_part.h
and 63158_intr.h from the "bcmopen-consumer" code drop.

The DTSI file has clearly been authored for the B0 revision of
the SoC: there is an earlier A0 version, but this has
the UARTs in the legacy PERF memory space, while the B0
has opened a new peripheral window at 0xff812000 for the
three UARTs. It also has a designated AHB peripheral area
at 0xff810000 where the DMA resides, the peripheral range
window fits these two peripheral groups.

This SoC has up to 256 possible GPIOs due to having 8
registers with 32 GPIOs in each available.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm64/boot/dts/broadcom/bcmbca/bcm63158.dtsi | 129 ++++++++++++++++++++++
 1 file changed, 129 insertions(+)

diff --git a/arch/arm64/boot/dts/broadcom/bcmbca/bcm63158.dtsi b/arch/arm64/boot/dts/broadcom/bcmbca/bcm63158.dtsi
index 48d618e75866452a64adfdc781ac0ea3c2eff3e8..a441388c0cd251d7dd5381f7b559633a89693232 100644
--- a/arch/arm64/boot/dts/broadcom/bcmbca/bcm63158.dtsi
+++ b/arch/arm64/boot/dts/broadcom/bcmbca/bcm63158.dtsi
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: (GPL-2.0+ OR MIT)
 /*
  * Copyright 2022 Broadcom Ltd.
+ * This DTSI is for the B0 and later revision of the SoC
  */
 
 #include <dt-bindings/interrupt-controller/irq.h>
@@ -125,6 +126,101 @@ bus@ff800000 {
 		#size-cells = <1>;
 		ranges = <0x0 0x0 0xff800000 0x800000>;
 
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
+
 		hsspi: spi@1000 {
 			#address-cells = <1>;
 			#size-cells = <0>;
@@ -151,6 +247,21 @@ nandcs: nand@0 {
 			};
 		};
 
+		/* B0 AHB Peripherals */
+		pl081_dma: dma-controller@11000 {
+			compatible = "arm,pl081", "arm,primecell";
+			// The magic B105F00D info is missing
+			arm,primecell-periphid = <0x00041081>;
+			reg = <0x11000 0x1000>;
+			interrupts = <GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH>;
+			memcpy-burst-size = <256>;
+			memcpy-bus-width = <32>;
+			clocks = <&periph_clk>;
+			clock-names = "apb_pclk";
+			#dma-cells = <2>;
+		};
+
+		/* B0 ARM UART Peripheral block */
 		uart0: serial@12000 {
 			compatible = "arm,pl011", "arm,primecell";
 			reg = <0x12000 0x1000>;
@@ -159,5 +270,23 @@ uart0: serial@12000 {
 			clock-names = "uartclk", "apb_pclk";
 			status = "disabled";
 		};
+
+		uart1: serial@13000 {
+			compatible = "arm,pl011", "arm,primecell";
+			reg = <0x13000 0x1000>;
+			interrupts = <GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&uart_clk>, <&uart_clk>;
+			clock-names = "uartclk", "apb_pclk";
+			status = "disabled";
+		};
+
+		uart2: serial@14000 {
+			compatible = "arm,pl011", "arm,primecell";
+			reg = <0x14000 0x1000>;
+			interrupts = <GIC_SPI 35 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&uart_clk>, <&uart_clk>;
+			clock-names = "uartclk", "apb_pclk";
+			status = "disabled";
+		};
 	};
 };

-- 
2.49.0


