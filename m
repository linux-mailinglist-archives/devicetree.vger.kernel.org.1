Return-Path: <devicetree+bounces-176298-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 58C10AB36A7
	for <lists+devicetree@lfdr.de>; Mon, 12 May 2025 14:07:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0C7703A5234
	for <lists+devicetree@lfdr.de>; Mon, 12 May 2025 12:06:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71D0429374F;
	Mon, 12 May 2025 12:06:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qQu91j96"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 760C3293744
	for <devicetree@vger.kernel.org>; Mon, 12 May 2025 12:06:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747051562; cv=none; b=ZnbxWAiL9g0Kt0p4ROavlfUH2dxvn9UhiPEyXsze7nTVN38dfPwsqLApbDBYBIAE+x3SJ3dlFZ4k0WlyddJY2HeZEt8zLxvzxm0z4cH+CgrY5Ew1/ytRPPXidN8CM0L2Q1HVDVNoiTWNsx2EvLyYObHDCZCmCBNwiAzERkKk2Qc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747051562; c=relaxed/simple;
	bh=4bWaWkJdTEaXs9fYwJYdrqRwMIH+MjinXsdLRCjNiOs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=WsyEAji9KHcQaKIIrvfR6qGpwnpkaSXfmDLf1Kj5OZFzwe0n3gdp0iVY/lnmC/bP5qAQaYk2r3IsTRzXeByo3gbJhG/86A+R1V/dOob513PT0xTNU2D4vS4NAO+iLGJv9oAMHDnJKeSP3CA0rfSIYO9yGUEdIgzJlQXJMwYopUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qQu91j96; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-54fc9e3564cso3869681e87.2
        for <devicetree@vger.kernel.org>; Mon, 12 May 2025 05:06:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747051558; x=1747656358; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Uqw+GjF+9qEiY0+j7o2mMDzIbpEBexjSYyH79EkvzYA=;
        b=qQu91j96qmOhjAe0M7S1d821KxHB4UVhWmHEVfw30XU1RYlLcnyuLRbfSSZw4am3zJ
         qtFt8M+S9Vf3EEG533xavyifxq5n4d4h9v9oXdrdhXkZzF1hGO1DHXgCU4Rd7djPyX2F
         jAIqc8E3ThD1ogwA7CUREP+vOka+Yc7JqYTnFKr3vUuuLGdEXcrjJFGPkbi4RXtQ0oRv
         vBiIHjrgn3poqtI8yiF6VuRIfeCxuiqDyAJFejvpFrIiiL24lm/2LxLw3XiwYm4iOOm6
         O4hXqbFSrLpXc0F3GCDBtfZTnb3IZBjJxloXfjkYyo9/EA6AC+yhhG4GWP56vCZcDQFh
         2aRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747051558; x=1747656358;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Uqw+GjF+9qEiY0+j7o2mMDzIbpEBexjSYyH79EkvzYA=;
        b=gC3JSdF6QsaeqOobJIsZQ1ZuunjvhBH2VxtgA27A+Aj94Qu4naHMXcz5La5Ql4egdp
         7Q8DL/lgqD/eYKxizv0Yn5uKKxzC2OtYh9vmnRB8g3IIqdhKNnL/f4/nbNnFTxTxYVK1
         xUShTpZOl9qwN8ah0dz6IpfxZV58K14QYb5qEgOMA6547mjG1H97njloj04LqaDahnCu
         hAECzMOntSPOnCnaj+HP8i0r3YvIlFeRFvLg0KXyfOAP0YnVecD6vOWmroZuMccEhc6C
         mVFlOH9io1oCA0ukDLYd1PpopKYyraXsGyNc9PAMM13YOUliYVA7jJzYc+/TM4oU/0FH
         Pftg==
X-Gm-Message-State: AOJu0YxUM0BepQ/88g9VUjzaNf/+ZesSC0hbsU2SpEZwgcJV5c3uvGk8
	iZOuN+FhyPlbpYBDfWZHXJTwl5C0iBb1uck7u7YdNVnmcjn5f7ZdFUncsGh6ol8=
X-Gm-Gg: ASbGncuOI4+nNh/8Eaqarqr02pfhhoV9TvSx7FCZIk1h/0x7BJCUOMRQNMXzNg7EP6V
	p5ly2lraqkReECPF4HQvyJFmAF8AHM4+vNSqeDCNOCfQ44DX3SWh754KDEQ4dn6AO8t/XG6XHHd
	ZrSejPYhLeV5BT9U7BB3LfSJWOgaSuVVCnmH2kmkbZzTrl11fEnGzb3DLfQk4J0Yxb8fdkGpl3V
	EipvbSX2EOayAAHbagoRsf9bZMh+42B6VR+lpqeeHkc0T5mWo/qzLrHe7hWwk4tfWFwgWYwJYAh
	cnzGjROZT1BwQsqlzmGSuXXs+omGFFUF84fKhc2X1wgItPYYQIZs8Hw88iy0MC0Pg1pQxS1E
X-Google-Smtp-Source: AGHT+IHfwoROTwu8y7TH1PMx5xgHrbT3nnfG+S98Biusb0bw61ipKrcXYXN7U64BqA6qV90JyJTVEQ==
X-Received: by 2002:a05:6512:3ca9:b0:545:225d:6463 with SMTP id 2adb3069b0e04-54fc67d631cmr3718127e87.42.1747051558400;
        Mon, 12 May 2025 05:05:58 -0700 (PDT)
Received: from [192.168.1.140] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54fc64bf8a3sm1466033e87.189.2025.05.12.05.05.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 May 2025 05:05:57 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 12 May 2025 14:05:52 +0200
Subject: [PATCH v3 06/12] ARM: dts: bcm63138: Add BCMBCA peripherals
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250512-bcmbca-peripherals-arm-v3-6-86f97ab4326f@linaro.org>
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
index e74ba6bf370da63d3c115e38b4f20c71baff2116..4ec568586b14c89daceddea8f17381f72f512a93 100644
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
+			interrupts = <GIC_SPI 85 IRQ_TYPE_LEVEL_HIGH>;
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


