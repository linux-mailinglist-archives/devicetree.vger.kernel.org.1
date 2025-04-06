Return-Path: <devicetree+bounces-163445-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 42DEFA7CEA5
	for <lists+devicetree@lfdr.de>; Sun,  6 Apr 2025 17:33:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0CA62188C82D
	for <lists+devicetree@lfdr.de>; Sun,  6 Apr 2025 15:33:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 058CF220686;
	Sun,  6 Apr 2025 15:32:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VA4d+JTT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0558D2206A3
	for <devicetree@vger.kernel.org>; Sun,  6 Apr 2025 15:32:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743953573; cv=none; b=PH1rvqO+PA6uS1sXD8K1Aw5TrAq5E/MXxk+E/FFX0tB0lE65345CkCIX0m51NDb0bOi20lFUE+87BvXS8kp2nCFOd8jxeotIKGiITl8T8hp6ceEDSGjoXUquusEZQmJ3nulOhSXKHpLHtefgg5KU+RFau23jSE2LRKON5pU1aH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743953573; c=relaxed/simple;
	bh=6g3q8KfA/dWNmwSRhTgC7M4h9QVQCWRunLnq11FcAnc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ZSJVT1Qt9Rwctg7nUwnH9FkRaxsT1e8+EFx37SeMw12auq4mKb8i0Beq+lidcLvDJy/aEmoQnnsm6GtPVuzVIERmwBOV6vBu/eMK5dywfXjHeB8P3JqEDQOXRIZNTzpUO7K6YVTteE04ZniVsqqbAYKXEDJ6PACCf+OpCELUqVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VA4d+JTT; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-54afb5fcebaso3989674e87.3
        for <devicetree@vger.kernel.org>; Sun, 06 Apr 2025 08:32:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743953570; x=1744558370; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sxz58oZE8Yp5FA6X2/d+svnhhMgKBtRUyy1sb9Y+PtA=;
        b=VA4d+JTTKiGxsef8KActIyDWN84UPQy1xLcz5JkKJjT1aOxPTrAl/Z3swL69jRgvPY
         OFNkXVS+J2tbTpdYSmFI5NOXDDrcu2vqjHTfGP7Ck1R0ERn3NcZko31ASQ3As8hAXYbL
         BvVa2HaHp7cQTKdFXke2PM8bhUaxkIfT6i2moQ7tcr8cgzKWhGbhwhaRq3ph2ojd9uUS
         SerrJgtwEp3r436oGClJcBPYTWaPT8Btj0hd+kj+QUrvQJcqeqvFr9vipruJpG0Qzeoa
         vSpR2AyWhvvit2EHzY6Kte8t6p3ejNtUX0CuaGDt2s2jCgRKkxxbhZm9e6ZVpxEGyqfd
         YxcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743953570; x=1744558370;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sxz58oZE8Yp5FA6X2/d+svnhhMgKBtRUyy1sb9Y+PtA=;
        b=lBke+PU2+A1MrPGJDfQrxwHYY9X3hlhWWpty+cXVQ+fzkfRTeYP9/jDFuFEygGEGBq
         ZPHZq/MXXyUGHs+k4bueIRwdZln+RGpZgyQno0qCJ4GDTlLpy3hQzzUn/puNDtqeGhrt
         9nBsGzdUEmeaQh5UhIvAbdebptiheWwVfi8pIIokD7VWlWc2mBqy6d/lBAhFBDe3Lere
         Tg7Ge29d88EjxxvKE+pL6oUeNtoC6Y3EI1o7xRvEk6dXGTO+KGDihj37E3X45agpinbT
         xNVMzkJfSgf0tQN6j1xI76RY/6b4czJvL+SoXxC/u2gzXhUew7ZYFJq+mPKvWxLG18J2
         BeBg==
X-Gm-Message-State: AOJu0YxTW4Ds/yaJfmTo996v0BHhj2SyDLauReLifIpJDIwhjJIc5tXJ
	mbNW1aOLPiHptFrI1Bixei4vaS7Fsq6HyOhIeUBFH+Nyp6viypcH9z6I7RYymPU=
X-Gm-Gg: ASbGncs0p7ntaST/dlXU5XbK8ZV9iTmQE+HNxm7mumpkHxYrVKDia1okwpi6ekf6Iqc
	mA5I933CHBjbc7japA83y3mGexA5I9PTzgBcNPh2dFIuQdsF0XmZpFNkZ2W4sxzYlCxD4qk38OR
	B4kQ1Xh5d7due9iHqIjF2rNubKK6MsD0+iLM+ZrIg6XYXV/v9jBbxDiySZgAkKQLPWOIl8DgnWN
	/IFPuPXrc6qCShCN67uK9kJCJmLAZ0mCIJt01lYS4TXqYfshP6emnZZRr2BAiJgYTwRg1Pfo/qp
	0JrkCWPvtOb5Hl6YEHaaYhc2vl9WnrCzzFgAO2db6FVRe4FkTps1izY=
X-Google-Smtp-Source: AGHT+IGx1uVsqYbz4JHsuvBApEHNIPiZVATzav+WygbEZ5ZZGgIuxPb0cPGKihRRrdJZqbC0MfnziA==
X-Received: by 2002:a05:6512:3e03:b0:54b:1039:fe72 with SMTP id 2adb3069b0e04-54c297d09abmr1385671e87.14.1743953570058;
        Sun, 06 Apr 2025 08:32:50 -0700 (PDT)
Received: from [192.168.1.140] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54c1e671fa8sm989747e87.218.2025.04.06.08.32.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Apr 2025 08:32:49 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sun, 06 Apr 2025 17:32:45 +0200
Subject: [PATCH v2 05/12] ARM: dts: bcm6878: Add BCMBCA peripherals
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250406-bcmbca-peripherals-arm-v2-5-22130836c2ed@linaro.org>
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

Add the first and second watchdog, GPIO, RNG, LED and
DMA blocks for the BCM6878 based on the vendor files
6878_map_part.h and 6878_intr.h from the "bcmopen-consumer"
code drop.

This SoC has up to 256 possible GPIOs due to having 8
registers with 32 GPIOs in each available.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm/boot/dts/broadcom/bcm6878.dtsi | 118 ++++++++++++++++++++++++++++++++
 1 file changed, 118 insertions(+)

diff --git a/arch/arm/boot/dts/broadcom/bcm6878.dtsi b/arch/arm/boot/dts/broadcom/bcm6878.dtsi
index cf378970db08c05c40564a38931417a7be759532..f317fc888da0ef449d9b5153677e6dadd869a7db 100644
--- a/arch/arm/boot/dts/broadcom/bcm6878.dtsi
+++ b/arch/arm/boot/dts/broadcom/bcm6878.dtsi
@@ -108,6 +108,111 @@ bus@ff800000 {
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
+			interrupts = <GIC_SPI 21 IRQ_TYPE_LEVEL_HIGH>;
+		};
+
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
@@ -134,6 +239,19 @@ nandcs: nand@0 {
 			};
 		};
 
+		pl081_dma: dma-controller@11000 {
+			compatible = "arm,pl081", "arm,primecell";
+			// The magic B105F00D info is missing
+			arm,primecell-periphid = <0x00041081>;
+			reg = <0x11000 0x1000>;
+			interrupts = <GIC_SPI 30 IRQ_TYPE_LEVEL_HIGH>;
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


