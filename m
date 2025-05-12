Return-Path: <devicetree+bounces-176299-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 13DDEAB369F
	for <lists+devicetree@lfdr.de>; Mon, 12 May 2025 14:06:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 83A1E17D618
	for <lists+devicetree@lfdr.de>; Mon, 12 May 2025 12:06:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99E40293750;
	Mon, 12 May 2025 12:06:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wKjYsaAO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9BA329373E
	for <devicetree@vger.kernel.org>; Mon, 12 May 2025 12:06:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747051563; cv=none; b=rdSVINvYPlPJRoMdrW9aLh6Tfo3KPAwZIHeweSzhMEB4nll9mU8kO1bshWsIWwdnAdCkJriDRAQOC2w7XyXkRli4l4aYPKOrwJqqdo/zDDOtiD1DHVvOfxpFnF2kxZswRQtZmrBeLLfpIyBi8DwiqlPEyKIYIoAuJxYHsL1TzSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747051563; c=relaxed/simple;
	bh=iNvTgILnCEUuGyGVf2KAQalCWhryAWAdjzGVCQRI9V4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=l9zvUtJrVm62S7hugXzXe+0c0unkgz7ZqLSxsfwLI7/wKmcTPwcXuMa4QGW+w430ugBwaS/9zaxbgP23ECF8l8OEl4JfMceQ6la2G4KnWYgvKCmQJLQVpxpyQ45PG8Ghf+CkQZ1gJb+JtJQr35L8CluSEDrKWBfK20Wzd+nVruE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wKjYsaAO; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-549b116321aso4898991e87.3
        for <devicetree@vger.kernel.org>; Mon, 12 May 2025 05:06:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747051560; x=1747656360; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=13/MDnqvilhzElhCywJcKpSZ25QUsLbrCE4P0TR4EUU=;
        b=wKjYsaAOT4Y0dUmaj1VuK9y9gVipWpyNb7O9BChkFszMZGoy7ZZTRJrBtOJ0p3UU4z
         w78GxqEU6X3ymVy51OZCkLSinoOiV8kVSg6pAYXNPyIqgBJEjDZQ7LhnNpE/AceifMRc
         iG9KqNPN0aK5txJhWr6r/Twa7ZsKcF8e3Ce2vQc6Ll+0q36Z2OqSYaLOenSpL3sOM2KC
         F5xZeVqJS3wNuPe3jMttkO1xX0aS3rMbcJrWsvytzm5Hag55d/hTv7aM/tBevvbVgxH5
         R0a6FNU2rFP+vrAyZqX3GE6I4a/CiJ1XlYYcTka8KKhgzvWbPCSx22b2dHWWYLEsdfIW
         ZB3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747051560; x=1747656360;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=13/MDnqvilhzElhCywJcKpSZ25QUsLbrCE4P0TR4EUU=;
        b=nM2mjP9wnVAoL9ZLYQ6p2E907/OeOMoBAgrVA6Z831xskcECzYUzD+Zjrurllda7vt
         KtcSOAbRKUru8X7vOTxyarWGW7imugCu1dKXqccieBkfywnaOt6N/AkJs3GJI/TJlED2
         KNitjCcoGZ3zrp/yOVCvriBalO0wJr/dbzozhqvC9V2aHBKnaCU8gWTJ+Y0YneC900J7
         jb+IWLKJTypcg+JeOhd0y9RZ4hlQST/VcizCcxDlvEuj9+z5OhcDIXHWN6R9i/spMLf2
         A9F55ypb7bxkSyGKQbdHkStRWEihfRtlpJ2gNKcHQaCZiDAMIeOPj+X9wMxlFH2O6mN/
         pdwg==
X-Gm-Message-State: AOJu0Yx4Bd46Pzc7bMkrByueDWhjMU728M10gF/7j/S4VLGixCTqRpIK
	jbjnjI4iHxpc43w2Ab02JO4HLS8Xf60jhknrV5E+WYlQ7LT3ttBhKPwHC+YMYbw=
X-Gm-Gg: ASbGncuwjwpbDAX299k/gw7tlvdkvcb81xtiu/km4mXpItDPkGfYtK//VYTLcU5XaMt
	8d4DpILqkr9nae78dughxc8GfS5+ttxGm7T2SxGUzZCHAoBunuoAKGmvEaI1VcPMnkM/Lhm4DVP
	wSlkFVCFkPhzdodo+zm/mCNMEgoSUEwkZTt9waUS16OF3n8xE2P9cHDXnuAyLPsShxippoLadjt
	OgSNsSMw2oKGtc2v3LdwLOqKXALZSUxfdc1DImPUrbrRMSer26/u+8r9GreQb1PvD5PcbV7x7zN
	oAo9q9q98HCSDeXrMp3/PFhZ/5GkHw89SQ4wo76+RASUW8xmB3fqzdLv/qn6gA==
X-Google-Smtp-Source: AGHT+IFzh/yJYzxWy00yNIwvV6Uts3H5TcOvRtw6gs/HO6e30umcHnBY9xrWmL0juAaZeBMLvfWD/Q==
X-Received: by 2002:a05:6512:3088:b0:549:8c86:9bf6 with SMTP id 2adb3069b0e04-54fc67e61a5mr4220105e87.39.1747051559621;
        Mon, 12 May 2025 05:05:59 -0700 (PDT)
Received: from [192.168.1.140] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54fc64bf8a3sm1466033e87.189.2025.05.12.05.05.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 May 2025 05:05:59 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 12 May 2025 14:05:53 +0200
Subject: [PATCH v3 07/12] ARM: dts: bcm63148: Add BCMBCA peripherals
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250512-bcmbca-peripherals-arm-v3-7-86f97ab4326f@linaro.org>
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
index 53703827ee3fe58ead1dbe70536d7293ad842d0c..e071cddb28fc2888b8f408b4bc275290dd135642 100644
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
+			interrupts = <GIC_SPI 85 IRQ_TYPE_LEVEL_HIGH>;
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


