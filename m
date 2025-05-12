Return-Path: <devicetree+bounces-176300-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A8654AB36A0
	for <lists+devicetree@lfdr.de>; Mon, 12 May 2025 14:06:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2744217EADC
	for <lists+devicetree@lfdr.de>; Mon, 12 May 2025 12:06:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C398D293757;
	Mon, 12 May 2025 12:06:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pwCjKkVY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 019CD29345D
	for <devicetree@vger.kernel.org>; Mon, 12 May 2025 12:06:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747051564; cv=none; b=MbBTqi1Unigqy2zo29nL0EkHeW+XIHiNqK5u9s2pWxD84vvv+OOMJ7QJZVn0FBkSRjK4LXF/TXdglUsu5eKhiIVDPdSympyrYjh4opRt/ZEFUMAGWk2bTTd9teTV+Izs7Kg7GG79bE/brpZyeAJLX5t2gPiAhtI9tCt3ti03uHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747051564; c=relaxed/simple;
	bh=pbHfDCTjaHzfxW+OAsE5Dq8CDB3EGZWsdyuuoaQDvZY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JO4nVghPkH/Ph4vRB6Pudd/c7/DJ+n0G+vWnE0n3mzInr+WrcGbVOlvUn6syJhDYnDEThhWdllBK8H+4uFhV5qQ0OJMBDLY6czTQYnv9rP+H/QdwcR8DjW678m42VF7hnj6tdJ0m+BnaWOyhMf4qQhXbCyBsYOnlVBt8GfRhJSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pwCjKkVY; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-54fc61b3ccaso4253983e87.1
        for <devicetree@vger.kernel.org>; Mon, 12 May 2025 05:06:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747051561; x=1747656361; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9ajeMdU2bzp3CfLA2J3Ap/K02MBno4FVMRdHz6CQ8IU=;
        b=pwCjKkVYkIjyzWLtbdx4hLlm6pIhuRufqzPF6OZEFHmBX/TaXbUQLVFYs6ciG1sxSo
         dxUTShWdL4YpdsXBuEl2BfYp90gOMoS2uFUvpIT6y1yQrGl8sve7QeSJaWuQkN0IPCfu
         PAsXFGBDzUDA6vHrqFI1eqAZVoDds/jSbkg4T8m85MuWbboYxBPrHc0gkIuKNnGWztJX
         ecph0XIVTTDzooVAgHtxHSkhmYn/1GvO+WGeZtVVHK5I4ZwQ45+IU2OUns5SQ86MVEpU
         k7Fl7Q/5YzJGiZLvT3rjYTmFwdxEI9VP0CVQSAfnVPFspGGk8rICO21SbfCni2ULMzTk
         wk4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747051561; x=1747656361;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9ajeMdU2bzp3CfLA2J3Ap/K02MBno4FVMRdHz6CQ8IU=;
        b=o4GpL/HAyaHVIUf6quB7Lxh0Vw99OK4BiYAHnQrx4IjOCT80tGxYlxCJRnBA1D3u0o
         kxkF9ATHEtgmR+4EAX55l7Y0GZQVgtIloz/hEG7sFv0TSz6VmX9TqbLXUPjGBNFlsU03
         HX3pS++KjYwAdQWWOA33GE+UYoecR7Ww3ydXs8IFTTHj7tr9DzIiZ23idaM0XK1qaPQF
         JQ+aawFWLH4qhmpuiJQOBc155Q4T1tEQN6iLwOiIBeOivAVJScxDp7I7maR6UzpmtZ0g
         6AI31F/IH6KftQkhFDPnA1aFfd+Bpk56UoMXZRPz7w2OzZMRU9VZi2mbUH++lYaYG0Co
         9qFw==
X-Gm-Message-State: AOJu0Yxibn8fbnO4d5oI8Ll6qQo9aVJyEMAI7dKMtDFdEFiaznb9XsRE
	MgeQNMhnLHH/ID8bwx6/R1ryy46w+KRXKXhxPTuRP0AVsAttN/evW5FUU2F/ESk=
X-Gm-Gg: ASbGncuxfPHZ1fT/jHYkjeCsZcdAVoKHqXT+CU20t1iTTk8Dm81CPwNRUCVLSRB+y4Z
	Pv9oFxEXwimt4Ra0T7ZSIUdwX1L/l7x/LhnDzPhCQ3mZJLc/LsUn9RaknIOsHsznZz8S9JK3x9Y
	FAgW64w5DCO4cYGRkzBJ6MsOPAf+7ad2uX5mMuI1CpDnCpU4TTT2LYsL6ewf9Ow0AnXt3uUmdaI
	8BAOl2wIki50iV93d2MoNph4Ze3SA/esNle/UHLQ5un1U6zEw4radw5p10tyaKIYNeJFCGmUuMM
	uMeFpY8na/fqO4O6LZqQ4lC0ICO+fcAni7cF7KO2Kdk+hyQmX3zaum+Iq43Bxw==
X-Google-Smtp-Source: AGHT+IGSmwcgd/v/2nB6DnUNhnkM2SXlf2xtwMRKJKghp8E3JFM5XZm6ROlGaVa5BJ8wKDCpqrrdig==
X-Received: by 2002:a05:6512:4408:b0:549:5769:6ae3 with SMTP id 2adb3069b0e04-54fc67acffdmr3842426e87.6.1747051561017;
        Mon, 12 May 2025 05:06:01 -0700 (PDT)
Received: from [192.168.1.140] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54fc64bf8a3sm1466033e87.189.2025.05.12.05.05.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 May 2025 05:06:00 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 12 May 2025 14:05:54 +0200
Subject: [PATCH v3 08/12] ARM: dts: bcm63178: Add BCMBCA peripherals
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250512-bcmbca-peripherals-arm-v3-8-86f97ab4326f@linaro.org>
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

Add the watchdog, GPIO, RNG, LED and DMA blocks for the
BCM63178 based on the vendor files 63178_map_part.h and
63178_intr.h from the "bcmopen-consumer" code drop.

This SoC has up to 256 possible GPIOs due to having 8
registers with 32 GPIOs in each available.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm/boot/dts/broadcom/bcm63178.dtsi | 112 +++++++++++++++++++++++++++++++
 1 file changed, 112 insertions(+)

diff --git a/arch/arm/boot/dts/broadcom/bcm63178.dtsi b/arch/arm/boot/dts/broadcom/bcm63178.dtsi
index 6d8d33498983acfc0c65ee155f64ddedc4a6b376..430750b3030f2534d6bf0468d895ca565007a53f 100644
--- a/arch/arm/boot/dts/broadcom/bcm63178.dtsi
+++ b/arch/arm/boot/dts/broadcom/bcm63178.dtsi
@@ -117,6 +117,97 @@ bus@ff800000 {
 		#size-cells = <1>;
 		ranges = <0 0xff800000 0x800000>;
 
+		watchdog@480 {
+			compatible = "brcm,bcm6345-wdt";
+			reg = <0x480 0x10>;
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
+			interrupts = <GIC_SPI 80 IRQ_TYPE_LEVEL_HIGH>;
+		};
+
 		hsspi: spi@1000 {
 			#address-cells = <1>;
 			#size-cells = <0>;
@@ -143,6 +234,27 @@ nandcs: nand@0 {
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

-- 
2.49.0


