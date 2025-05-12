Return-Path: <devicetree+bounces-176302-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 75222AB36AB
	for <lists+devicetree@lfdr.de>; Mon, 12 May 2025 14:07:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 50ADC3ABA8E
	for <lists+devicetree@lfdr.de>; Mon, 12 May 2025 12:06:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A34E4293720;
	Mon, 12 May 2025 12:06:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LHeDlf/t"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B69AA29375A
	for <devicetree@vger.kernel.org>; Mon, 12 May 2025 12:06:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747051567; cv=none; b=Kj1LD4Ygh5Lwb/UGgV+1kpmEsyic1kdcrDf9QZZQTu5BOyS82NsueX+5vCq0MDugveIHglD7qP6EFohcTPY3xQAHM/Q287zpdaMwe0lnzgcdU49+EyI1AhQ7Vbg0GBBSKUp4I79XW27zJ3nzmJ16aIK1RULnQ3oxbHl+2FE8klc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747051567; c=relaxed/simple;
	bh=0EFZp6jCdPwGTF5uBHzyjqY+Ty0+cL5jFgXOVv/OZ1c=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=vGrGeIH1bWrlTfhaLeuDkOfxx4S1Ssqqf7bAY+aRLCgAKziFszJvVanbJrN3MQy1LDSXbFwIwfam1Y71iZUA0tzUCkni2UzeqNh4oj1IOBHcspboH3xA/zl0kX+FScJcDAqc2q4tnlv/QJwauXYmiAEJ4AkUy9lRDzVkboDr8sA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LHeDlf/t; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-54298ec925bso6442422e87.3
        for <devicetree@vger.kernel.org>; Mon, 12 May 2025 05:06:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747051564; x=1747656364; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iMHCBS0if0cnlwKmMIsceybB2DKlEexq99G6FWGTcxI=;
        b=LHeDlf/t7C47bEeJwr8OVj70g9EfwWvMYmhBLV6lBHgY+ztKmmCsMkyGaifX/1b9Nq
         v6MWEWbmdeFZaS8warcpZ0C1iObw6SXdDUxlJlFPUaPGH14EK3FKGljZGD1AlFetZ1Po
         MehdW6D1wbwjxuu/LlMm3xUGeFPV8yOyi8/+0fHB6rxMNoAzpFbpsj8XsXfSo+SUfgZR
         EBOoMCmhEzsAHdpxJvyhtAgNoea+qZsaU4XXSpb/7yAItx4HdQWRSk/6H97EELvcmUvL
         5BHH0yPle5ckwzzf7FCE7cZFU7DF2n17aO42lOc9MJl5x0oWaOAWBURXt/TRGJip1SS2
         iNkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747051564; x=1747656364;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iMHCBS0if0cnlwKmMIsceybB2DKlEexq99G6FWGTcxI=;
        b=XmAfHzxrKXgfM3t6DdTZGjZz1BNVma+TPyCcH9DuoP4E2k8HDIrsen2vUZbTTooKy3
         kZngXAy8GJozSxXhLe1Q9H9MKlZDzuzBVGujBvjrUB0BcNl49UBPUtkZJNQelIMsoM/x
         /IfK0wa+P9gbWec7UP9gKOFr6XkopjPq0lsv3A+m8JlSKvCy5/43miAzuKsSI+ZnxAtY
         yTLSpy+w5f0XFWrwh/VkZZzu8zxoqoBOjyRcdd8xwR5GIphcdPu8YqUWQPkex1T2jnE8
         rd2x4wgpV6qBMbfxdEkG2YbpkM0duOWcEKUY+NIySCnaFBn4d/4Ys+ji+D6hC0X1jWPy
         OnIQ==
X-Gm-Message-State: AOJu0YzvoaG6pcZRbX9r4yPjzVMlB4hRIq3TgwCi3V21Dxq+09ggH31e
	e1Kj39/G/d+ZAY7NQTmFraJ43+jIkWrntkteaPmPQ+kuOq1CwBR58hHwB0UTJaE=
X-Gm-Gg: ASbGncuOPWyZREKN53WBKoL1TQMGfYBwfCNYnkFB3hwDwUZmYZFsP5WL9X4QCfRsini
	eSJTN0gYqHsEEeNLiRyhtHq0TjLMloiM8g4kZiSPjcOGxIwahBLjpBmv9ijRibvObzjT2jVdroo
	aB31EHHVR+OeeeSO89pNifvauORpIOWKlfv38hS4htJo9rQpxEt3BYzHJv0/tQ+pLKzuni92Ff8
	kQSNZvH2zQVZPu5Dq6rI2PVo17/WehUmbSpUk0ziZpVLYY20GmB/lgWVVr6C5L0PAPVXaKZE7ie
	SOw0crDPUNHbuhyGXXq6chKeAKY4hV7yJDaLrNpVqxopX7n6Qm2xXjcC5USxAhkTSGT0TD7p
X-Google-Smtp-Source: AGHT+IFKLyv7PHn6Lok1bEUkjovUWReFWptxKqF+Zjq8PYbN39Dl2AbUjj1cgZazNFL5Lv8ZsKYfRA==
X-Received: by 2002:a05:6512:3b86:b0:54f:c5bc:3cfd with SMTP id 2adb3069b0e04-54fc67e4cfdmr3762780e87.39.1747051563829;
        Mon, 12 May 2025 05:06:03 -0700 (PDT)
Received: from [192.168.1.140] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54fc64bf8a3sm1466033e87.189.2025.05.12.05.06.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 May 2025 05:06:03 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 12 May 2025 14:05:56 +0200
Subject: [PATCH v3 10/12] ARM64: dts: bcm6856: Add BCMBCA peripherals
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250512-bcmbca-peripherals-arm-v3-10-86f97ab4326f@linaro.org>
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
with varying IRQ assignments. ARM64 SoCs have additional
peripherals at 0xff858000. Extend the BCM6856 the PERF window
to 0x400000 and add the DMA block at offset 0x59000.

Add the watchdog, GPIO blocks, RNG, LED, second UART and DMA
blocks for the BCM6856 based on the vendor files 6856_map_part.h
and 6856_intr.h from the "bcmopen-consumer" code drop.

This SoC has up to 256 possible GPIOs due to having 8
registers with 32 GPIOs in each available.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm64/boot/dts/broadcom/bcmbca/bcm6856.dtsi | 130 ++++++++++++++++++++++-
 1 file changed, 129 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/broadcom/bcmbca/bcm6856.dtsi b/arch/arm64/boot/dts/broadcom/bcmbca/bcm6856.dtsi
index 00c62c1e5df00c722884a7adfcb7be08a43c0dc3..dcbd0fdd33d25fa340c417e8284826801ebc00bb 100644
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
+		ranges = <0x0 0x0 0xff800000 0x400000>;
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
@@ -133,5 +248,18 @@ nandcs: nand@0 {
 				reg = <0>;
 			};
 		};
+
+		pl081_dma: dma-controller@59000 {
+			compatible = "arm,pl081", "arm,primecell";
+			// The magic B105F00D info is missing
+			arm,primecell-periphid = <0x00041081>;
+			reg = <0x59000 0x1000>;
+			interrupts = <GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH>;
+			memcpy-burst-size = <256>;
+			memcpy-bus-width = <32>;
+			clocks = <&periph_clk>;
+			clock-names = "apb_pclk";
+			#dma-cells = <2>;
+		};
 	};
 };

-- 
2.49.0


