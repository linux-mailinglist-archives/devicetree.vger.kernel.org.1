Return-Path: <devicetree+bounces-161482-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B2A6A7449B
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 08:46:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D335917D2FB
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 07:44:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB1FB212D8D;
	Fri, 28 Mar 2025 07:44:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vb6E7N2F"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B57F0211A3C
	for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 07:44:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743147862; cv=none; b=k7W4cHXRDk+2rxTjUwNlK+s3rYTdwIeehUvGcE4ESUsHpnwjsuYLV+TG88P0uBonDponLwXztA1tCgpBH2HX2n+1/TebED0uNTyDmIPYzXvR7UpOB9NWNSO/slVkRgK+QNNgHJeDECVv/XCzwuBixzbt/JR6COq0/5aPt9d6s9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743147862; c=relaxed/simple;
	bh=y7ZAvrhGluYrDjVhgXCFn6OEXHONB/Wv2XYAOsXd8HA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=RSDH/tujh30WGOhFyauEnpTwuSf7DETH7BDC8Ch8kAu7jYw01hh/IfynwSYc6HqsWeeWYbMcXnZKMFNaWUUDe0mw8mZGwvkNN/AhUM+nWN70Fp+8875ltmkXorZ8pjkkQfjyCPpIeXwoY0HLBZ7/LVlYHTxDEHCxeXsUGsQNHt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vb6E7N2F; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-5495c1e1b63so2117845e87.0
        for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 00:44:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743147859; x=1743752659; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9jj2jQLKKNMRGoDJk1I4iWsw2NxXlVz80Tt33k/kg9c=;
        b=vb6E7N2Fit0+kgUAuz8dkOiMO6siIjH5D69pqaVYO01nL8MuGI+WHgItcGZ71qzkMF
         pryIP9eyweCXaFOoWE/5DWXMFaF0gvQeH4DGCOQrGgZhCZLJW1fmCgXvZ1IZjISmPqXR
         pgwQAZhBlptdzG+Wwm4Fn+baWT+xr1OuBRVDpPYuJ2eg8F7iAQ7Vz/DmTGt7oMxMwEj6
         HHpNglfw/c5mL+pauEI5HuzxN+G0tuwrefzLk9mwHg/Ad7PpN9JFr6InPNsj+BrKMCpW
         UjgQyHb3xygKcwL9yv9fDCSf0ldF4DpCNVSyJS8VrmHPV+HBdpxrPFPQbGDFdjyChHf6
         R/sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743147859; x=1743752659;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9jj2jQLKKNMRGoDJk1I4iWsw2NxXlVz80Tt33k/kg9c=;
        b=eucft+jnmELjN1rmUDx6YRw+yUPEA2PVMRaalOdYCFpmolqu9AZ19mw08CI0dU7FAv
         nAoO2plwXm1N4WwKL0b1GqodULkGAemw08jeDL7qeU5sRATqoSt5FydfCYOUf2QODNDy
         jisSqiANKSIrv/7/AMcVmChUQxLC3EdR6WSaLmgaMHnzuUTrZ17WdQylfuPdPIMhDsSQ
         8jxIeRurVjTYmqfpJ2umpWYXLgTefvXdnTJ+8Kzykn64O8vKOQObKS9ZK5ZWfAOTOKZN
         DW72rFcw+HI5/eVUprR3C6YqQCoQoqMeMMOQQRA2VajjjI82eyxUkpnd8WzLh0Rc3LS6
         pzKw==
X-Gm-Message-State: AOJu0YxuwdpWysG4qRl/IyJnpnBzPvVppoyqHcmsB+qDGP+ixjHevCuR
	lK0U3SNnmSdCQ7yS5ZD1PWXVO1t4JjYQN+hNRU67nSAABdn6SCCZDPuFr0ejEt4=
X-Gm-Gg: ASbGncthYKBBmCDL+gI5CqYcnzAMwZVQIN18l09b2K9NRpHt8G1zN6urz8tgcAwvmjl
	dR8ldI6lLo9zP1m/9gBulIrAPpBQqAYioc2tJ3vs4e45uj0QZP/7z9VbJ0oTCamZIDwh9dKiqmT
	OJvbJHNmD3/TWN1SnMA4FZakE5izTcQHs0InjWInmsX2sL3SkeVfUv35Vk9OBEew+VPznxmcyht
	8YmMWT7a5weldyCYTszmsKFSIU9s0kG0k074S77twrF0ZAY8Dl9Sv1HLk2f7g+Z1tSspcZXtDl0
	e46Bn26UODMj0WTUOlkow19z52vJh9wKfc+zS0+KIHSyWaYUyfTnEfg=
X-Google-Smtp-Source: AGHT+IEhjnETIkoSdipUb4jt9SrhDKL7ky47sTQx7mnWbPsv0F5+Wr/UgwEAs1mGGfzuq6GFwk0EgA==
X-Received: by 2002:a05:6512:118f:b0:545:62c:4b13 with SMTP id 2adb3069b0e04-54b01264c81mr1971096e87.40.1743147858828;
        Fri, 28 Mar 2025 00:44:18 -0700 (PDT)
Received: from [192.168.1.140] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54b094bb32esm215589e87.26.2025.03.28.00.44.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Mar 2025 00:44:17 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 28 Mar 2025 08:44:00 +0100
Subject: [PATCH 10/12] ARM64: dts: bcm6856: Add BCMBCA peripherals
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250328-bcmbca-peripherals-arm-v1-10-e4e515dc9b8c@linaro.org>
References: <20250328-bcmbca-peripherals-arm-v1-0-e4e515dc9b8c@linaro.org>
In-Reply-To: <20250328-bcmbca-peripherals-arm-v1-0-e4e515dc9b8c@linaro.org>
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
with varying IRQ assignments. ARM64 SoCs have additional
peripherals at 0xff858000. On BCM6856 the PERF window was
too big so adjust it down to its real size (0x3000) and add
another window for PERF1 at 0xff858000.

Add the watchdog, GPIO blocks, RNG, LED, second UART and DMA
blocks for the BCM6856 based on the vendor files 6856_map_part.h
and 6856_intr.h from the "bcmopen-consumer" code drop.

This SoC has up to 256 possible GPIOs due to having 8
registers with 32 GPIOs in each available.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm64/boot/dts/broadcom/bcmbca/bcm6856.dtsi | 138 ++++++++++++++++++++++-
 1 file changed, 137 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/broadcom/bcmbca/bcm6856.dtsi b/arch/arm64/boot/dts/broadcom/bcmbca/bcm6856.dtsi
index 00c62c1e5df00c722884a7adfcb7be08a43c0dc3..d6d0b8e1a65b494be414dd5841b65f8ff489d684 100644
--- a/arch/arm64/boot/dts/broadcom/bcmbca/bcm6856.dtsi
+++ b/arch/arm64/boot/dts/broadcom/bcmbca/bcm6856.dtsi
@@ -93,11 +93,103 @@ gic: interrupt-controller@1000 {
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
 
 		uart0: serial@640 {
 			compatible = "brcm,bcm6345-uart";
@@ -108,6 +200,29 @@ uart0: serial@640 {
 			status = "disabled";
 		};
 
+		uart1: serial@660 {
+			compatible = "brcm,bcm6345-uart";
+			reg = <0x660 0x18>;
+			interrupts = <GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&periph_clk>;
+			clock-names = "refclk";
+			status = "disabled";
+		};
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
@@ -134,4 +249,25 @@ nandcs: nand@0 {
 			};
 		};
 	};
+
+	/* PERF1 Peripherals */
+	bus@ff858000 {
+		compatible = "simple-bus";
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges = <0x0 0x0 0xff858000 0x4000>;
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
 };

-- 
2.48.1


