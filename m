Return-Path: <devicetree+bounces-147803-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C1070A39601
	for <lists+devicetree@lfdr.de>; Tue, 18 Feb 2025 09:50:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 07DE4177825
	for <lists+devicetree@lfdr.de>; Tue, 18 Feb 2025 08:44:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF6E322DF9E;
	Tue, 18 Feb 2025 08:41:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="D1gbhU93"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F65122CBD8
	for <devicetree@vger.kernel.org>; Tue, 18 Feb 2025 08:41:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739868070; cv=none; b=dQtHxOGjRH/q2EFrU8FFIXAmwNWaccExx3xHVxEQfNtt2w1whQZ8mrBZ5dpSORXKS1f0FAN1gbTbxBVoDoxc8NAMbyaVkCkp+6DkRIVPzPZPEDGMy3szBBt16XB0xW/m1Pr357y9i00a7m81CSNdUfNf5Mr9QACDPgl7kmOveMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739868070; c=relaxed/simple;
	bh=aIQB0ryPbjTFqrvujq0NG69gPIMMvN6Asu30Bhr0HOA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=aktXWruy8Gt6Vb1PSnjIkF0TgmfAo7WxVWBFu3C+72gSWVYokMra2xcpqXE5uqyv4GJVRnhAPot9nqWJapGarM6bgogxpPkxl61JZjKv+P3yKjva+WUqQR+R5ZIpJwckdkLvLWcAlKE0Wl87dPWeu3ilbSU+pmjr1fC9fxiFyZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=D1gbhU93; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-5e08064b4ddso56905a12.1
        for <devicetree@vger.kernel.org>; Tue, 18 Feb 2025 00:41:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1739868066; x=1740472866; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Lv/mXKWMKUfLoohDMfoS7J+NTI2dz/TZ4RnHEggjlBE=;
        b=D1gbhU935judHdBWDbwuW8fW+XmPdtaPY4HvwQTbn41XKcOwcdhq21Jx2BHQXkm/vx
         BqNBWhm2fttNTS1+gadmo7Yyu9K0BvUjnVM+Ky36iClbstdBORZ903i1iZpPpAEIe6lI
         Pz+dkb8mGf2lG56JIPr+7oJ0oRSMpjRG2eb5+bgTP6TatEeaPz/Zh+5K9JsQqz/y6gmg
         Tyb9heyKIwEV9kIvna8MNHNN0GnmM0XWmgd8xejPWwbilAIUgXyHhAc8mW/cdHIgUrFe
         KX/8ZUIuV9n7cF7Yd2hd5IWWNuvKUbpb2uJDrTB+wCc42G+XzYTfqZftj/nkFq+Got/D
         dmdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739868066; x=1740472866;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Lv/mXKWMKUfLoohDMfoS7J+NTI2dz/TZ4RnHEggjlBE=;
        b=Yfqt9qNjRFY0nZaGB8qN4b5pulOlMS6+Xi4utY3kzqfM0brkCx/Z8m5kOPOnaTL8XT
         hl89az8AJR1HQgO+rRKqVDBz9OGF02A2fs/cOPya6lMQVe0hCK5PJRxDpd6c4IvzN7Ex
         G6Zg6+ThOyWnT4ucqbFLDI8ecomcwe1bv/iLEGd+rrGT5RhfIRc4IifljiX8/9GMgRWA
         UOOl4IxxeeFqwO4b3tNwJg46qy1gl1hCTNcpEMXozvYXDhYYAXsuBSRe4qT+AnSpSYPH
         uzQo0Hh03mfbFk8wS0YwLseHvApjWKUy5qomihBhacodi7CVtklA1ZE9PmhJzAbz+PRm
         ADOQ==
X-Gm-Message-State: AOJu0YyAo1OitRqOpYOhR+D6J9DdwBXZJbDIo1RoDGS1Vpqj/b2YG88e
	fRM3DHrASDF8xYUilszzvjVoPx4N9CHjbCoE8hkPhl7lBPxbtMGI/Q2pDj1P3dk=
X-Gm-Gg: ASbGnctEKadsVs7a2SNl/1dlZbCZcezPtujrDslg9acQwbz+oOJcctNk9SrYCo87Gz8
	l43Cw97l0a0kHwP3Q7Q8uCm1Y6oANr+R9QCzei2GHFAsCEZmTozO/63y4SJaPnsrG+7+C1OgHHD
	V8ddjaenwzja2s6930ncf94Akmx+qko5jP4YbsGf5f0h5n0ZYI/w3wS0DhxhIaD4Yr6CpORQcBe
	VKJ+EprMoJ3a/NOcGwEmlrRfMPTf0Rt1dL2H3OLDe15j42D6MANgGhfPSmLFCh60jY7vgGgUMvM
	510YwRSpV40HgzQ9c6pd5EM=
X-Google-Smtp-Source: AGHT+IESJYF9ZfQnOU6rdJpLeVFJ0jmKCKyIk4s175nUK6ewa/oKH2Y+cggyLDQb+JelZTRVjqvbag==
X-Received: by 2002:a17:907:d204:b0:abb:b249:4410 with SMTP id a640c23a62f3a-abbb249464amr346278966b.39.1739868064851;
        Tue, 18 Feb 2025 00:41:04 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.25])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abb961594absm384261766b.111.2025.02.18.00.41.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Feb 2025 00:41:04 -0800 (PST)
Message-ID: <05f1e875-0068-4b3a-a400-e906605a3cda@tuxon.dev>
Date: Tue, 18 Feb 2025 10:41:01 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 7/8] ARM: dts: microchip: sama7d65: Add DMAs to sama7d65
 SoC
To: Ryan.Wanner@microchip.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, vkoul@kernel.org, wim@linux-watchdog.org,
 linux@roeck-us.net
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org,
 linux-watchdog@vger.kernel.org
References: <cover.1739555984.git.Ryan.Wanner@microchip.com>
 <78da4125a991c6f4081fce78825f1f983091e0f5.1739555984.git.Ryan.Wanner@microchip.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <78da4125a991c6f4081fce78825f1f983091e0f5.1739555984.git.Ryan.Wanner@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Ryan,

On 14.02.2025 20:08, Ryan.Wanner@microchip.com wrote:
> From: Ryan Wanner <Ryan.Wanner@microchip.com>
> 
> Add DMAs to the SAMA7D65 SoC device tree.
> 
> Signed-off-by: Ryan Wanner <Ryan.Wanner@microchip.com>
> ---
>  arch/arm/boot/dts/microchip/sama7d65.dtsi | 32 +++++++++++++++++++++++
>  1 file changed, 32 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/microchip/sama7d65.dtsi b/arch/arm/boot/dts/microchip/sama7d65.dtsi
> index d06a51972d363..b472a7d929ee4 100644
> --- a/arch/arm/boot/dts/microchip/sama7d65.dtsi
> +++ b/arch/arm/boot/dts/microchip/sama7d65.dtsi
> @@ -9,6 +9,7 @@
>   */
>  
>  #include <dt-bindings/clock/at91.h>
> +#include <dt-bindings/dma/at91.h>
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/interrupt-controller/arm-gic.h>
>  #include <dt-bindings/interrupt-controller/irq.h>
> @@ -95,6 +96,17 @@ chipid@e0020000 {
>  			reg = <0xe0020000 0x8>;
>  		};
>  
> +		dma2: dma-controller@e1200000 {
> +			compatible = "microchip,sama7d65-dma", "microchip,sama7g5-dma";
> +			reg = <0xe1200000 0x1000>;
> +			interrupts = <GIC_SPI 111 IRQ_TYPE_LEVEL_HIGH>;
> +			#dma-cells = <1>;
> +			clocks = <&pmc PMC_TYPE_PERIPHERAL 23>;
> +			clock-names = "dma_clk";
> +			dma-requests = <0>;
> +			status = "disabled";
> +		};
> +
>  		sdmmc1: mmc@e1208000 {
>  			compatible = "microchip,sama7d65-sdhci", "microchip,sam9x60-sdhci";
>  			reg = <0xe1208000 0x400>;
> @@ -107,6 +119,26 @@ sdmmc1: mmc@e1208000 {
>  			status = "disabled";
>  		};
>  
> +		dma0: dma-controller@e1610000 {
> +			compatible = "microchip,sama7d65-dma", "microchip,sama7g5-dma";
> +			reg = < 0xe1610000 0x1000>;

There is an extra space b/w < and 0x. I can adjust while applying.

> +			interrupts = <GIC_SPI 109 IRQ_TYPE_LEVEL_HIGH>;
> +			#dma-cells = <1>;
> +			clocks = <&pmc PMC_TYPE_PERIPHERAL 21>;
> +			clock-names = "dma_clk";
> +			status = "disabled";
> +		};
> +
> +		dma1: dma-controller@e1614000 {
> +			compatible = "microchip,sama7d65-dma", "microchip,sama7g5-dma";
> +			reg = <0xe1614000 0x1000>;
> +			interrupts = <GIC_SPI 110 IRQ_TYPE_LEVEL_HIGH>;
> +			#dma-cells = <1>;
> +			clocks = <&pmc PMC_TYPE_PERIPHERAL 22>;
> +			clock-names = "dma_clk";
> +			status = "disabled";
> +		};
> +
>  		pit64b0: timer@e1800000 {
>  			compatible = "microchip,sama7d65-pit64b", "microchip,sam9x60-pit64b";
>  			reg = <0xe1800000 0x100>;


