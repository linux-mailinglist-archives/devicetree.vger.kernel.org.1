Return-Path: <devicetree+bounces-176296-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B5D3AB369D
	for <lists+devicetree@lfdr.de>; Mon, 12 May 2025 14:06:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CF70217E4B2
	for <lists+devicetree@lfdr.de>; Mon, 12 May 2025 12:06:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0416D29373F;
	Mon, 12 May 2025 12:06:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bYZdaX9U"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1A8C29346F
	for <devicetree@vger.kernel.org>; Mon, 12 May 2025 12:05:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747051559; cv=none; b=Os3GBdYwmnVTpZh8/om0KlOpH3j3QNph4epvL6YwLoQclgIpQRm65jGF8SeVhmQxg8RiugHBd/xCYgSQzDTa40j/jlWG8UrpKoj4fDeFjojRmW8FHY086UIlenkTACq1opFLC3Av82Ebb/AhmHdUbatH9KEh2ojlOrw9K8eGF7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747051559; c=relaxed/simple;
	bh=gM3ZQtP5fl+y/vusB5lo6et9+sqNU8P2xYf11kTHSMc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=n3ifh3JIcP+A0z7wSo0izNWhQ211+tp8vj45sYx+q9+XGtRP6BT6tjg6k7bUEH/sdwsU9c5uCx7wv/XbAVSA5kEOF2NAOj+wdcmyX+UF5OZd6K0tF3+5Th+Z/nZt8RoMSk0rcZwCEnptyUtQ/EGyfbjNbnwOudYMjkxmalmqPf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bYZdaX9U; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-54d98aa5981so7011977e87.0
        for <devicetree@vger.kernel.org>; Mon, 12 May 2025 05:05:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747051556; x=1747656356; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iEf4cNwCAvTux6g5ErQoMK0ZXsg4RGhL1cTSbSRkU48=;
        b=bYZdaX9U7Lyys6LUy8Cnb0BmQfbQbqqD3vaP+W/67ajUQdN0hB0CB/UBVujxGPXVB6
         gJIMgVpeAWbEy8psHdoqfervYTIN6NLLulYoPX8X0/pKdqkHsaAUd6zsBvv2y8hctCRi
         ILH+HCFxXvKIPRsnLBZzFkR9Bm45jzdcs/ugdbutmi2wsOYkMlXsBRF88RLlHAxGmujU
         /9pjUFadUPuW2QcSWIcbAmMeqPR2E/o5WDFaom7mV/MZZuV5NGFuKotdxPjTnEsLaxB+
         NMKdlxalmdBEXar4Q0zuAFK2TPEOebeSCeWL4jPz8xPgxC5oK30jQOHJWNIS2URWqLkw
         fqdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747051556; x=1747656356;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iEf4cNwCAvTux6g5ErQoMK0ZXsg4RGhL1cTSbSRkU48=;
        b=wxvCF1k6o5PX8KjpESnRZvVICT+357nh+L9mVofflkTuFxtc7sdEZZMr9AZxpDJt4Z
         NgeTWRnlhbe6R1PWlpGqjpXcK9JDEvs5zu5qjL/Xbr5cOsmfC3zIa5fPefsDWKVW+XXA
         zZkBPAgFdsPzIsFaCa4JdsV0EFB/bdsJkS1edHVukWT9lmvaXGkF/mo5yDNja0lwKybo
         //x0dwhV01axFxr6/KoYScecmcNVx/R7y6Gz27B4/V8KiBTH4z8Qjh9svnXsqqiKZkJ9
         nwyUn7CtUUInvS0ydkILo8zB0NZLExDzE+rUq5OUgIlnfc8SCY9CRK7E3JjtA9OlpLY9
         FI1w==
X-Gm-Message-State: AOJu0YxdX60cUkQrDGiKkI4Rjt0Wns8nySlr5UELHq8Jb7iuP6nnI/h/
	5vu97g+iXuFY3lfBeLw+v42afXyE3nXlwAUXJxdrePrUEy19k3WgycOQO+KjFlE=
X-Gm-Gg: ASbGncs+Wchv6YRTsowbG/3Qc6uzYNCDPRiz2GpyHRTb77g5z6A4DxmFQRTXgcYMECR
	rxkC03u6smOaLDiiQYCKg0QAxdS/0KJ9FdtMmkH3ewwVJRLEKG9q0dpsYSsf8brnxXK9B0wQII/
	ra4NVhzXFIlZQ8F+zrMwKOG9pTQkIUJOebMNSJn+13PwI11yxQWMjeOSLiZJTG9h2OkT+x9BFgW
	GJiEWGTxF3ZRbT7+5NuW+GI7wZtxnuHV8MM391CwUrVxkssv5OM9vQpD3iuRmLu6V6SIC7l6bZh
	U3JqfOVkJc8MP4G4JA/Y8R7CQ6cgYoebbwkrRFuYZA51S1O/er/+j1y+L5ezOA==
X-Google-Smtp-Source: AGHT+IGF/tN/73qnDBRQZZwG62q6XEIuTj2FHvkPQA7oYljHSPxp6v+OZz7XCPfOwL4Qtn3HFaA1zQ==
X-Received: by 2002:a05:6512:1406:b0:54f:cdb9:598a with SMTP id 2adb3069b0e04-54fcdb95a59mr1867410e87.39.1747051555930;
        Mon, 12 May 2025 05:05:55 -0700 (PDT)
Received: from [192.168.1.140] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54fc64bf8a3sm1466033e87.189.2025.05.12.05.05.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 May 2025 05:05:55 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 12 May 2025 14:05:50 +0200
Subject: [PATCH v3 04/12] ARM: dts: bcm6855: Add BCMBCA peripherals
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250512-bcmbca-peripherals-arm-v3-4-86f97ab4326f@linaro.org>
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

Add the first and second watchdog, GPIO, RNG, LED, DMA and
second PL011 UART blocks for the BCM6855 based on the vendor
files 6855_map_part.h and 6855_intr.h from the
"bcmopen-consumer" code drop.

This SoC has up to 256 possible GPIOs due to having 8
registers with 32 GPIOs in each available.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm/boot/dts/broadcom/bcm6855.dtsi | 127 ++++++++++++++++++++++++++++++++
 1 file changed, 127 insertions(+)

diff --git a/arch/arm/boot/dts/broadcom/bcm6855.dtsi b/arch/arm/boot/dts/broadcom/bcm6855.dtsi
index 52915ec6f339335d87b4e50e1c03625fffb9a45d..a88c3f0fbcb037ee5c6b31933415f90cb51ded2a 100644
--- a/arch/arm/boot/dts/broadcom/bcm6855.dtsi
+++ b/arch/arm/boot/dts/broadcom/bcm6855.dtsi
@@ -116,6 +116,103 @@ bus@ff800000 {
 		#size-cells = <1>;
 		ranges = <0 0xff800000 0x800000>;
 
+		watchdog@480 {
+			compatible = "brcm,bcm6345-wdt";
+			reg = <0x480 0x10>;
+		};
+
+		watchdog@4c0 {
+			compatible = "brcm,bcm6345-wdt";
+			reg = <0x4c0 0x10>;
+			status = "disabled";
+		};
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
+		rng@b80 {
+			compatible = "brcm,iproc-rng200";
+			reg = <0xb80 0x28>;
+			interrupts = <GIC_SPI 81 IRQ_TYPE_LEVEL_HIGH>;
+		};
+
 		hsspi: spi@1000 {
 			#address-cells = <1>;
 			#size-cells = <0>;
@@ -143,6 +240,27 @@ nandcs: nand@0 {
 			};
 		};
 
+		leds: led-controller@3000 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			compatible = "brcm,bcm63138-leds";
+			reg = <0x3000 0xdc>;
+			status = "disabled";
+		};
+
+		pl081_dma: dma-controller@11000 {
+			compatible = "arm,pl081", "arm,primecell";
+			// The magic B105F00D info is missing
+			arm,primecell-periphid = <0x00041081>;
+			reg = <0x11000 0x1000>;
+			interrupts = <GIC_SPI 85 IRQ_TYPE_LEVEL_HIGH>;
+			memcpy-burst-size = <256>;
+			memcpy-bus-width = <32>;
+			clocks = <&periph_clk>;
+			clock-names = "apb_pclk";
+			#dma-cells = <2>;
+		};
+
 		uart0: serial@12000 {
 			compatible = "arm,pl011", "arm,primecell";
 			reg = <0x12000 0x1000>;
@@ -151,5 +269,14 @@ uart0: serial@12000 {
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
 	};
 };

-- 
2.49.0


