Return-Path: <devicetree+bounces-163447-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BA090A7CEAD
	for <lists+devicetree@lfdr.de>; Sun,  6 Apr 2025 17:33:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 602DD188C77F
	for <lists+devicetree@lfdr.de>; Sun,  6 Apr 2025 15:33:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3753B2206B5;
	Sun,  6 Apr 2025 15:32:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rulnvqmx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F695221547
	for <devicetree@vger.kernel.org>; Sun,  6 Apr 2025 15:32:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743953576; cv=none; b=GKCPrxT6pW7yVmGyfTc39OwvnhObvIOZeBj0vr7tWsG/C1qOzZFDEv95/RFNNEE7mrq27txHkO/ENkbv5Epl9X/DtlgnR5EDVI7lIULCUtZ3ZFphYaYy6/e2AWnpy8NM6Wx1pRdjxtLoKuNgaLtCfK5xWMfpbx0mPMqhRtp2bRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743953576; c=relaxed/simple;
	bh=Eizp2W9mBdnAvUnbhnI5WQjqM5bCKSH9pSAZlr0q+Pg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=uhLsutax0ShzdcE+mk3aAXnWIAGnLtvnRBt7Z9LEXFHPxtmwMtZWEGyOd/E6w0krJ+LlsVlxsoWeOFIgXQ2brUddc4NyDM+aPPhUHkawgztBz87YNV0I+ocRmAA9wyHtGqs9pL9Rn+cKmGMkyADvMp2eIjhLeBB6r86R1XZLjNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rulnvqmx; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-54b10594812so4055514e87.1
        for <devicetree@vger.kernel.org>; Sun, 06 Apr 2025 08:32:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743953572; x=1744558372; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wZGQkYCeBjNtSxE5BP+8exx6EGO2URqW/JNqR3gaiK0=;
        b=rulnvqmxI0sdN77tXqIyRaYfx9y+DQ9SGoDmY+C70EEyoDJDFmTw8t88oVTpi/2+Ym
         rQF5ucB1tZtYp3d/0h7QRqj/Zu47Zk+JTFCm0EX1nr9r5sDH8FK/vDWjtAdlRDHkGRed
         g+G970ShwDx93HZIrAF3G+m2j2CEwH5R0AQBE8Pobwc1O+qEV9sVHkQ1LetpGAniMyvg
         jf9s7ys0WgCwWGwLzDktkNY/Ktgr5pVQu5E/2+mIVIm+ccAeis0sEtL6P4tc8nBEPZDK
         iJOZrVkuPitqOgo8fV2BimaG375e0oWVicRmt8cKgfrjeWKCYbHXPR35YkgPWDSO7Lf4
         z0OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743953572; x=1744558372;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wZGQkYCeBjNtSxE5BP+8exx6EGO2URqW/JNqR3gaiK0=;
        b=F5G/AweOZqI5OrGs32GbzIfs3Sm+3T1rNFUWdP6aSvkjyTSPKxgp4y++KKnh1seNQ8
         dbt3nl1UPhhreM7CHqKRCQkzDqOChcaB0RRjim1cAPpU/m20UV21FQiWhFJTyyQCrigU
         a8wxAcKQMI3eamgBKiYI1Te+rfJMugZ+VXbUAw9w4lQoYXuFGDZZveFC/9FtaVTxfoN8
         OJXy8i89bWnXVnCkBuqSmTwTXmwhFyEnXouqWeMu6raieEF/eiV4AXCIL8KFCaE3txbi
         A8qtG9rWncP3qW9eE2x6tAMnQeTW+D09p1in3Vmy8tWRjwo9SQtSY3IH9cXAK0FeRTV6
         Qw/Q==
X-Gm-Message-State: AOJu0YzfBxDcT6LepsPHGEsLWXZ1ZXg4oAOVnRCl0+fU2GP58KoHhrrm
	lbHTfVJHMP78g8j95NA4F9k38unQrP6EDhisKnWv5/S9vIPhQlbMHNFh9csvFU1ZzvVuosfzdQU
	n7+k=
X-Gm-Gg: ASbGncsuwnDDBiS5SJ5Ff5cEol9Jiv63D16LvPxPhEvUN4V5fBiZsavnTIb/l0tLPaW
	3Vtxhe/jEQZ/2hfZevsFtX9XR+ttKtVaUyFiUTrBW8g53cb4kkWBeMH0qOAPpJV1hbpcvZQZwhK
	ozjNrU87OBA5OLpL4H+oPPwqOtr1SvsYuJXZjvAhgWhmu44Zkjh4P1Q7EvEbPJcrzRazhj/+Leb
	+WmADh3Yhdi1z4QxeiTvoqLTsR3m3bQa9ZlcU9Qv04Xuy4fDX9RBSIrVmX7lMMIMkqNQTIQrAVL
	K3JE4IS9C4E0yQq7ZT2Ys8EOD5IeHHDqm6AxN6jUtxs7iriaY+WKqgY=
X-Google-Smtp-Source: AGHT+IFF2qw9sVVkrJ895fapzsRBMMOIm7saMh0Q78SxDsVhkJbrQe8Oftk4XE1w/i7jQmK4ffEtEw==
X-Received: by 2002:a05:6512:e9c:b0:549:7590:ff24 with SMTP id 2adb3069b0e04-54c232de16cmr2371768e87.22.1743953572521;
        Sun, 06 Apr 2025 08:32:52 -0700 (PDT)
Received: from [192.168.1.140] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54c1e671fa8sm989747e87.218.2025.04.06.08.32.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Apr 2025 08:32:51 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sun, 06 Apr 2025 17:32:47 +0200
Subject: [PATCH v2 07/12] ARM: dts: bcm63148: Add BCMBCA peripherals
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250406-bcmbca-peripherals-arm-v2-7-22130836c2ed@linaro.org>
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

Add the GPIO, RNG and LED and DMA blocks for the
BCM63148 based on the vendor files 63148_map_part.h and
63148_intr.h from the "bcmopen-consumer" code drop.

This SoC has up to 160 possible GPIOs due to having 5
registers with 32 GPIOs in each available.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm/boot/dts/broadcom/bcm63148.dtsi | 64 ++++++++++++++++++++++++++++++++
 1 file changed, 64 insertions(+)

diff --git a/arch/arm/boot/dts/broadcom/bcm63148.dtsi b/arch/arm/boot/dts/broadcom/bcm63148.dtsi
index 53703827ee3fe58ead1dbe70536d7293ad842d0c..899b2c572c601272a3525ad6f5676209aaac0149 100644
--- a/arch/arm/boot/dts/broadcom/bcm63148.dtsi
+++ b/arch/arm/boot/dts/broadcom/bcm63148.dtsi
@@ -99,6 +99,62 @@ bus@ff800000 {
 		#size-cells = <1>;
 		ranges = <0 0xfffe8000 0x8000>;
 
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
+			interrupts = <GIC_SPI 21 IRQ_TYPE_LEVEL_HIGH>;
+		};
+
 		uart0: serial@600 {
 			compatible = "brcm,bcm6345-uart";
 			reg = <0x600 0x20>;
@@ -108,6 +164,14 @@ uart0: serial@600 {
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

-- 
2.49.0


