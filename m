Return-Path: <devicetree+bounces-161478-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E11A2A7447D
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 08:45:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 39A973B889D
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 07:44:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B307B212B07;
	Fri, 28 Mar 2025 07:44:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="X90hg5Le"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA0C3211A3E
	for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 07:44:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743147856; cv=none; b=YOfGuGn1A/z5/Xvx8TiYHh0dAZaBJdQPwkWVXM/TAMA/RnJFRUko+m4yslhqW9wzj82hJkz02eco9iyAfJEffb14VUQM76PqbL/pyLJ3ir/5Nl4SYvD5mYXb3iXLgC91L2xzBD/TLdAJTDpJC0Izh3CmES1IgNxrLl/iDSo9Kkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743147856; c=relaxed/simple;
	bh=o3PlYmFlCAOBTPSLVx/uVOa281qBIQqRgdUQskbmtUw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Y6KO30TxST2uQm00c1zH83lTtlFpX8W6Jy238KtHjL7t2hd8UMWQ4UZNgkt7a3v8Wib1dYIfeGW2m7fQqZqS0NG6E2ByUYlVoMqhiB8QSS+5h3UMsbGJM2AwCVuLycqfRN43z71SpUw73lQFC7pY8Rlifre+q6cSuNXrdNgjiXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=X90hg5Le; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-5499c5d9691so1934895e87.2
        for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 00:44:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743147853; x=1743752653; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jUAEmJN1kVT6sqNjgFjTIi54896X7oEqtHP0xbwjDaA=;
        b=X90hg5LeScd2/dpF0ndezOa1oTfJwRXIKQtwDJhYXmik6zENSGpyUczwnwZpk7vLKo
         ZqQ/Y+Ulb0pr8Af8I76ld9vCdf6hIJz/D0WAg7NhdCxW/1y9Bnl1xQzx5ixMXMa9v1CH
         GWoUDnjuXP+Cj5OA3xbBe35EzoHjQt9CI3zZbZ6g80Y91zby0tUvXh6lFWP1yyH2WnDv
         vW7SJI99yMooPZ4xWNtfaibzBQzrqumwGS3qtfUCJUjvjp5gN/qHQyEXsuIGmbEtBK2y
         qevXlyCz08d9qV3NJdjh+CEbdrobkTIOjQyyihoEnCf0pNJ4QxGIXIcSfNVWJf9rSjkh
         NOIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743147853; x=1743752653;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jUAEmJN1kVT6sqNjgFjTIi54896X7oEqtHP0xbwjDaA=;
        b=NSUvS3amPPsPL1oIX7VlW903wPMmXZSNPMo7v70WOoNsnSsziBh3RQaHamCEMAobFj
         alVdPOEswl8b19Rbiw6UWSFf3zykete2Xk0t/timKuEbidabKnp/cZR9QWe8TTLJlWbR
         5qKAfBBMARDVbxvVfYuxrJV2PviVynfmh4yYuXofGxzZFJCHOeBtiRULP18Z14Tu7cMe
         fREDmrJ64y05ICK5SwOGa6OYrP1DTVd0VEWMcrUjfCvmZOaHDgam9taTqFoB3qnp02Bz
         Wk8GGHssqQbGvECTu3cfymN56WY6UezSVXEIU7Qsf9yYBgeCdYSs/HHj9iCJAhRZUfft
         r4NA==
X-Gm-Message-State: AOJu0YylFjwU1G0vA9EAqaQaxi+gbND3blGdq2AMUnDLJSIwpl+Y5ruX
	EPscDe5rOvg4eSqPbBZHuT0qFhfSB3s6TSOsO/brVGF1ef/1v+/nUNM235MX0hM=
X-Gm-Gg: ASbGncvnomSTa34pOae1KuOE7+SXqVSYpqbDc8ZzdWFeELkaEYYqrXs5v/6D7s6ZbKc
	X6WUAs97Jy2aTSRtcZoVef++i9lkb9hPqoZCiyu0jj0gHC+JOdHApss3edEyuX2jg/SHL7u0pcG
	GKMhq6hbXjCAXz5+Hxv2Uvl2F7ymIOsp69hqccdrI3NoliEKpBfc9iuwpf66jYX6HrIq/sl8dhE
	xiVex2zpqb6EIhkBdRNb9M/4NO94/+iDQm1S74d6OCODKqU8gr0vxHO3hNDw3YXigvPCaK1P/cm
	Sr8lIwZr9CuoJSmIpW1eIFBiTmhv9cP/Il1v3SXcAmeAO0mdlpkDOO8=
X-Google-Smtp-Source: AGHT+IFL1i4v/eWOzjyE6pr2XfQNO7EGVzKr09ZBgd139s8iEDfYFiur9MgF1dlZFkJRtcV0d94NRw==
X-Received: by 2002:ac2:4e16:0:b0:549:5b54:2c5b with SMTP id 2adb3069b0e04-54b011dd0a0mr2804182e87.24.1743147852919;
        Fri, 28 Mar 2025 00:44:12 -0700 (PDT)
Received: from [192.168.1.140] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54b094bb32esm215589e87.26.2025.03.28.00.44.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Mar 2025 00:44:11 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 28 Mar 2025 08:43:56 +0100
Subject: [PATCH 06/12] ARM: dts: bcm63138: Add BCMBCA peripherals
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250328-bcmbca-peripherals-arm-v1-6-e4e515dc9b8c@linaro.org>
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
index e74ba6bf370da63d3c115e38b4f20c71baff2116..182394a96bd46eb0258ebfa6d5f00ea008aa671c 100644
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
+			reg = <0x500 0x04>, <0x514 0x04>;
+			reg-names = "dirout", "dat";
+			gpio-controller;
+			#gpio-cells = <2>;
+			status = "disabled";
+		};
+
+		/* GPIOs 32 .. 63 */
+		gpio1: gpio@504 {
+			compatible = "brcm,bcm6345-gpio";
+			reg = <0x504 0x04>, <0x518 0x04>;
+			reg-names = "dirout", "dat";
+			gpio-controller;
+			#gpio-cells = <2>;
+			status = "disabled";
+		};
+
+		/* GPIOs 64 .. 95 */
+		gpio2: gpio@508 {
+			compatible = "brcm,bcm6345-gpio";
+			reg = <0x508 0x04>, <0x51c 0x04>;
+			reg-names = "dirout", "dat";
+			gpio-controller;
+			#gpio-cells = <2>;
+			status = "disabled";
+		};
+
+		/* GPIOs 96 .. 127 */
+		gpio3: gpio@50c {
+			compatible = "brcm,bcm6345-gpio";
+			reg = <0x50c 0x04>, <0x520 0x04>;
+			reg-names = "dirout", "dat";
+			gpio-controller;
+			#gpio-cells = <2>;
+			status = "disabled";
+		};
+
+		/* GPIOs 128 .. 159 */
+		gpio4: gpio@510 {
+			compatible = "brcm,bcm6345-gpio";
+			reg = <0x510 0x04>, <0x524 0x04>;
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
2.48.1


