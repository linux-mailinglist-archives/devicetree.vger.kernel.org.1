Return-Path: <devicetree+bounces-176301-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BD3CAAB36A2
	for <lists+devicetree@lfdr.de>; Mon, 12 May 2025 14:07:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B67BC17ECE3
	for <lists+devicetree@lfdr.de>; Mon, 12 May 2025 12:06:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A78CF293472;
	Mon, 12 May 2025 12:06:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lVMxaFB5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A53E9293462
	for <devicetree@vger.kernel.org>; Mon, 12 May 2025 12:06:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747051566; cv=none; b=fSqjanIMY45lMEYWS7lZ3mqC8Jm/iSKxMaPzQu3Q3940Lav3PO6T6UhEWplzptk9Lz3+LzhgiBwK5nkBE6WnhVCnCq7z+HRM2F3moSoUEJlZq+IqvMcLgQ8W+2xGmv2fZ+K9xZaVzHnzJK+5VZOAncmvbqOFtnJrmmMklGrXK7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747051566; c=relaxed/simple;
	bh=w4l+RE3s0JIZEOqX+Be8j4G2fm0JiTVax7pgsHY8X/A=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=KrWYq9pvPGEC3TSp7N7dpDCO9ygQBK+YHUq4/+LkVKiLG4uqhzpF0XRq17Z66rXK0FKn0za5/FHvDBm4C7V5XiSxut89230a7yDo4YAJFtCmKCauyZn99NPoDgza4VULN0Y5oPLFWkM3YdnoaS5WKWQ9E9z6VwuHpRIA4fWO1Xk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lVMxaFB5; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-54afb5fcebaso5671450e87.3
        for <devicetree@vger.kernel.org>; Mon, 12 May 2025 05:06:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747051563; x=1747656363; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CygA5PwSQSuLEhfxNCuFBow2mvN3/z0TWoGRkpMN9Zs=;
        b=lVMxaFB5PASunKV6EW8vf7I4YDke95XtKe29d+oiktriw2EfoxRialvXtEopt/sh3R
         SDaYswkVzFpc9KMnDv1W+J3n22kXzeb5p2mfqozKexz4ZZa7RFJlxA73LK5cjZ3uF+K0
         Qabzs+Cm0mc3jGLeTUDDIY1HH1NPuOxns6dmwSgI+oJIF4DnSQgZdFAH3Clxr6kMUH6w
         MQnPXqg2xmjgrCBdZupEwPBTdB/xh6CuPe8ovXKdFGRmdQ7+LZL3pBzTgsmQzwM2fojb
         vWXJYT6bgdcKtMAq7aclFUizIoEz1r5zW9CA7zYUhLxNBifgrT4IsPrhDgCDERIswayC
         DF7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747051563; x=1747656363;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CygA5PwSQSuLEhfxNCuFBow2mvN3/z0TWoGRkpMN9Zs=;
        b=DxCVqlb/LSeRB7Cu1+CIglHwgHC6KjU+muNMtKRdN0sKVv2jBqeqPQeNjoNr2HwFsc
         6kpbDdrVGa9Kb+gxLjERwMA2jkM9MPHkPKBHFY7X5J/4mu57nd2db2lVRDoL/zD7cmbj
         ASJ1ViVLzHjwVxETAs6yfSQaGAIc2foE2B3FHmIMu2/YYHUKntewfP3Unvrjd2nalIec
         Dyoc6v4f4tY+oIxThEuivhs5lYjntlfuKK7989Ln1lAp/4211jzWgSb72XI/mw5RrcVF
         VxlAzBhNwHATXYQpYdntPUjFN6U7hRD85otI6cAXxZ0gYrDyYlkGuDH1dYv+idyW7XdF
         L62A==
X-Gm-Message-State: AOJu0YxLrpsvMWNmDhPLySHrxdveOQeXYL4n4XRCFouTfB4UzvOKRYxS
	yCHtDzUD2+mqG6wPNKYHJz2riUpfAE9IIg9EWkdRpZ9rtAk07J6PTujGlC6BHmA=
X-Gm-Gg: ASbGncu3R4utVSpENCoCJ1BRrPhuAMsA/FWJy17uB+UAo4FFYuexB5NIa/3M4uGspoo
	trwwnhk9zn5PYhKrRXmeOsJ8JWcpmucIwTkCp1W8SPOVosjdXh2XWCgroo2853e8aFEMRfLdUf7
	xzDu8pbmo96J/j/NXAuu24l02/CO9zycFfowHgRRP1cCPay8h0kDptWmnApuQE68tlQ7Zcd1iqJ
	obQ09fzSF+ZZLWV9Yd4rFFr2YUxABEimWjMdLQwOMmUiCUhoPOUu0ing2ZFRGRQXYKuZwIEjNyt
	PTfFvRulr9E4jAZOrWRvSj73uY1dN57B7Quk61MfAkrT2CRBzriJHOXdv6SD9w==
X-Google-Smtp-Source: AGHT+IFcI+pN5fHTlaJgs5MuA1jITEkyc7+sdiIsopk+fXZHz2qp+3djh3tYGB+lSDbAHOi7Q/GgmA==
X-Received: by 2002:a05:6512:6816:b0:545:fc8:e155 with SMTP id 2adb3069b0e04-54fc67c71c3mr3505581e87.20.1747051562726;
        Mon, 12 May 2025 05:06:02 -0700 (PDT)
Received: from [192.168.1.140] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54fc64bf8a3sm1466033e87.189.2025.05.12.05.06.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 May 2025 05:06:01 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 12 May 2025 14:05:55 +0200
Subject: [PATCH v3 09/12] ARM64: dts: bcm4908: Add BCMBCA peripherals
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250512-bcmbca-peripherals-arm-v3-9-86f97ab4326f@linaro.org>
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
peripherals at 0xff858000, we extend the peripheral bus
range to 0x400000 to cover this area.

Add the watchdog, remaining GPIO blocks, RNG, and DMA blocks
for the BCM4908 based on the vendor files 4908_map_part.h
and 4908_intr.h from the "bcmopen-consumer" code drop.

This SoC has up to 320 possible GPIOs due to having 10
registers with 32 GPIOs in each available.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm64/boot/dts/broadcom/bcmbca/bcm4908.dtsi | 116 ++++++++++++++++++++++-
 1 file changed, 113 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/broadcom/bcmbca/bcm4908.dtsi b/arch/arm64/boot/dts/broadcom/bcmbca/bcm4908.dtsi
index 613ba7ee43d6489ea0f1490d2fccaf90961b2694..3b7595fd4e81d150278816bbe27e08286cde2ff8 100644
--- a/arch/arm64/boot/dts/broadcom/bcmbca/bcm4908.dtsi
+++ b/arch/arm64/boot/dts/broadcom/bcmbca/bcm4908.dtsi
@@ -323,11 +323,12 @@ pmb: power-controller@2800c0 {
 		};
 	};
 
+	/* PERF Peripherals */
 	bus@ff800000 {
 		compatible = "simple-bus";
 		#address-cells = <1>;
 		#size-cells = <1>;
-		ranges = <0x00 0x00 0xff800000 0x3000>;
+		ranges = <0x00 0x00 0xff800000 0x400000>;
 
 		twd: timer-mfd@400 {
 			compatible = "brcm,bcm4908-twd", "simple-mfd", "syscon";
@@ -348,13 +349,103 @@ watchdog@28 {
 			};
 		};
 
-		gpio0: gpio-controller@500 {
+		/* GPIOs 0 .. 31 */
+		gpio0: gpio@500 {
 			compatible = "brcm,bcm6345-gpio";
+			reg = <0x500 0x04>, <0x528 0x04>;
 			reg-names = "dirout", "dat";
-			reg = <0x500 0x28>, <0x528 0x28>;
+			gpio-controller;
+			#gpio-cells = <2>;
+		};
+
+		/* GPIOs 32 .. 63 */
+		gpio1: gpio@504 {
+			compatible = "brcm,bcm6345-gpio";
+			reg = <0x504 0x04>, <0x52c 0x04>;
+			reg-names = "dirout", "dat";
+			gpio-controller;
+			#gpio-cells = <2>;
+			status = "disabled";
+		};
+
+		/* GPIOs 64 .. 95 */
+		gpio2: gpio@508 {
+			compatible = "brcm,bcm6345-gpio";
+			reg = <0x508 0x04>, <0x530 0x04>;
+			reg-names = "dirout", "dat";
+			gpio-controller;
+			#gpio-cells = <2>;
+			status = "disabled";
+		};
 
+		/* GPIOs 96 .. 127 */
+		gpio3: gpio@50c {
+			compatible = "brcm,bcm6345-gpio";
+			reg = <0x50c 0x04>, <0x534 0x04>;
+			reg-names = "dirout", "dat";
+			gpio-controller;
 			#gpio-cells = <2>;
+			status = "disabled";
+		};
+
+		/* GPIOs 128 .. 159 */
+		gpio4: gpio@510 {
+			compatible = "brcm,bcm6345-gpio";
+			reg = <0x510 0x04>, <0x538 0x04>;
+			reg-names = "dirout", "dat";
 			gpio-controller;
+			#gpio-cells = <2>;
+			status = "disabled";
+		};
+
+		/* GPIOs 160 .. 191 */
+		gpio5: gpio@514 {
+			compatible = "brcm,bcm6345-gpio";
+			reg = <0x514 0x04>, <0x53c 0x04>;
+			reg-names = "dirout", "dat";
+			gpio-controller;
+			#gpio-cells = <2>;
+			status = "disabled";
+		};
+
+		/* GPIOs 192 .. 223 */
+		gpio6: gpio@518 {
+			compatible = "brcm,bcm6345-gpio";
+			reg = <0x518 0x04>, <0x540 0x04>;
+			reg-names = "dirout", "dat";
+			gpio-controller;
+			#gpio-cells = <2>;
+			status = "disabled";
+		};
+
+		/* GPIOs 224 .. 255 */
+		gpio7: gpio@51c {
+			compatible = "brcm,bcm6345-gpio";
+			reg = <0x51c 0x04>, <0x544 0x04>;
+			reg-names = "dirout", "dat";
+			gpio-controller;
+			#gpio-cells = <2>;
+			status = "disabled";
+		};
+
+		/* GPIOs 256 .. 287 */
+		gpio8: gpio@520 {
+			compatible = "brcm,bcm6345-gpio";
+			reg = <0x520 0x04>, <0x548 0x04>;
+			reg-names = "dirout", "dat";
+			gpio-controller;
+			#gpio-cells = <2>;
+			status = "disabled";
+		};
+
+		/* GPIOs 288 .. 319 */
+		gpio9: gpio@524 {
+			compatible = "brcm,bcm6345-gpio";
+			reg = <0x524 0x04>, <0x54c 0x04>;
+			reg-names = "dirout", "dat";
+			gpio-controller;
+			#gpio-cells = <2>;
+			status = "disabled";
 		};
 
 		pinctrl@560 {
@@ -584,6 +675,12 @@ leds: leds@800 {
 			#size-cells = <0>;
 		};
 
+		rng@b80 {
+			compatible = "brcm,iproc-rng200";
+			reg = <0xb80 0x28>;
+			interrupts = <GIC_SPI 79 IRQ_TYPE_LEVEL_HIGH>;
+		};
+
 		hsspi: spi@1000 {
 			#address-cells = <1>;
 			#size-cells = <0>;
@@ -636,6 +733,19 @@ reset-controller@2644 {
 				#reset-cells = <1>;
 			};
 		};
+
+		pl081_dma: dma-controller@59000 {
+			compatible = "arm,pl081", "arm,primecell";
+			// The magic B105F00D info is missing
+			arm,primecell-periphid = <0x00041081>;
+			reg = <0x59000 0x1000>;
+			interrupts = <GIC_SPI 84 IRQ_TYPE_LEVEL_HIGH>;
+			memcpy-burst-size = <256>;
+			memcpy-bus-width = <32>;
+			clocks = <&periph_clk>;
+			clock-names = "apb_pclk";
+			#dma-cells = <2>;
+		};
 	};
 
 	reboot {

-- 
2.49.0


