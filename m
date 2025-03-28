Return-Path: <devicetree+bounces-161480-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 35A22A7447F
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 08:45:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C5D093B8C1B
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 07:44:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1DA7211A05;
	Fri, 28 Mar 2025 07:44:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="b5bZDJna"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B50DD211A37
	for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 07:44:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743147860; cv=none; b=UcK2fXmfyTLkNe6MVz33Rl21FVuDwqfOhY9YAZ/8uTZd0wf3W/6R1Gow8zfk8tLz+0BpzW1lXRjbzy1c6f+DubS0q3ejIDfhqC44q+4z3gLx6+URBzmFDuUkwfm0jBoxy8F6YWHsKhzZ6w1twl41Q6mpBzdwEEwiijrydshwdWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743147860; c=relaxed/simple;
	bh=8MXmIf+dTfSHb5W6X2vyoDeX3/ohOjJ8d4jbmFkOKB8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=lxpAXdFBwsGRpunCxzwD1H7XJeMJXPWLHepjn/uOIXvnDrP7xTOdgB8QxCMAvBP3+y1d9eFm9rSiBQPMVk66p6FO+VgZuEEQ50o7HaEqBgdwK3cabckeooWMxdgPelisWqNGHraHGa2Rje/ARdeg6eOg0/5l2EfowoMIHPpnmh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=b5bZDJna; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-5499d2134e8so2066945e87.0
        for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 00:44:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743147856; x=1743752656; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pZSlECD6SBspac59uu6fnjnF7/8QrKxNI5JVoJabeDs=;
        b=b5bZDJnaDwxL0WaJcs+Ej7hLvD5c6p7OxjShZWgfmuUURmHGqaMg3jdUZLwyRuIepk
         zslngXLr29tO2gvG+tJhL9dRpFdE3JO+m0KGzOwYGlQv6XntBLoTmSaX0trf8+ulfBaz
         i7uviRIES/ZK29RCDt0jB8K2GXNOEYkt+Xh6mLPzeaJ5ML1hCVY+etl5XGf4X00+DQQJ
         Tbgyp82H7M7SOEriCHDgB5A75Pe7IgBbfzrzKD/rr7fwkCggc7zfUQ0OS3W5I1m0kCCS
         XEFZJkvzxzIDI1FSCCyuK4e0fMXhxuQfZFucHo6He8PtkOeIMUDc4hRh2NlVD99DNtjw
         fujw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743147856; x=1743752656;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pZSlECD6SBspac59uu6fnjnF7/8QrKxNI5JVoJabeDs=;
        b=emmBIzeBlcq+Sx0x57yz1mkScOMwHlhKsa/Ft/dhD7e7yjttaYpRsZgvSO/qoxZdh5
         NNR+RoCRC80/4PiFuMQgyAkArGzbMohiwzWnPKNb2wr8FsXK6jCCOGupiPBt5MC+M7K5
         Qin7qOfwyCQfwpjw2PvENT4waFLTZfBRUyANGVZQ7Z3gQ+/dbDW1kGaTvdE9YQ7jttGr
         denxeLDMTPtW1kT25GNDjTzZRNkEU14uf5c25moVcJA6qkvUBCNr89oFP7tPpUWJfr5L
         O6WMcmZYg1ispLbMCQ9RQTozFDuQ6Vq0LwRVXHPfi4I6u+aG4vcpG5Ug51MPMiy/LKN7
         9ZDQ==
X-Gm-Message-State: AOJu0Yy5wCGJTk6LdbnIsy8gxHwEOiWJwgKxJDQPGb9RD4OMKsCuDsXz
	cWxn+rbsC6OmWniEaE0AacTxJFhfMRWWdpcWRK9WpGe/+Ikg5HV+m/Oxy9jFYFc=
X-Gm-Gg: ASbGncs5t3/lm5RUzB6WRIXcOe2hqG41VUBfSy/9Tyji2srxWQ+afEyhm4FQ6lRHf2k
	aJRDNPX01CxKbx7JyQBgdKMgkVI6hBmH15RFOO9+R91z6chNnwoJQ9+cbbS4YoAorijFR0Hb1LZ
	75064lyumlOr+uHo57tQZT35MvghB+b/kXzOTbZWJWaGkpL0s/lEltks0K+OMgVhbzvgNiH79+C
	6DbQXPtULdnTPs7cTfTnD9JpLy8YXIC2eU2qeRFmBbWYblXYceqtDwluOTKUt6VmuAuDq2U21ox
	rUeKckge/YQyfQJb7Y2TyaHSYDGWaPmasDB989ZBQQwp3YmSQta0ISk=
X-Google-Smtp-Source: AGHT+IHjbKza4NKoVqrqsdsaSrsbdmLF7PTox5Fsl49ZNysAElgqqGTpkMJZHnpD31kwmiwZ7EbP7Q==
X-Received: by 2002:ac2:4e0f:0:b0:549:86c8:1133 with SMTP id 2adb3069b0e04-54b011d784fmr2523640e87.12.1743147855630;
        Fri, 28 Mar 2025 00:44:15 -0700 (PDT)
Received: from [192.168.1.140] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54b094bb32esm215589e87.26.2025.03.28.00.44.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Mar 2025 00:44:14 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 28 Mar 2025 08:43:58 +0100
Subject: [PATCH 08/12] ARM: dts: bcm63178: Add BCMBCA peripherals
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250328-bcmbca-peripherals-arm-v1-8-e4e515dc9b8c@linaro.org>
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
2.48.1


