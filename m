Return-Path: <devicetree+bounces-183485-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B569AAD0D24
	for <lists+devicetree@lfdr.de>; Sat,  7 Jun 2025 13:42:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4BE511894B64
	for <lists+devicetree@lfdr.de>; Sat,  7 Jun 2025 11:43:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2676220F34;
	Sat,  7 Jun 2025 11:42:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="jflOxC5E"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 071031F5413
	for <devicetree@vger.kernel.org>; Sat,  7 Jun 2025 11:42:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749296566; cv=none; b=sYuh+0hkwGnHkXrm+WynmuyboAPMyfTs51nnBEJZgo4v5cmEbGjErCaVdhTJaO2FrJEmQJKwzhyZlqccArodrtWAlC5n411ZD0op1a/0NhT0SwD3Zu4CYxBALPrMsg9tsZ//EsPRlgW/qpMgBC1a1/zcv9/+eH627wcE0piIOVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749296566; c=relaxed/simple;
	bh=d8I8eKRlDb5f4zH5sidDXcjiayJ19dluoQhODaDQiKc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BZPr4m7KeLh0nX3Q0/ceBj6O5/JLCXdaYwM3Ev4zIhvOmBzBEDB/05qb7rhNglOp/umTuBZXn9VueedCTt9+Ltba1lmt6crQht4/QYOdReUibLCJxayqqVhQIz3KqcL26AWZtMz+6Kc0tFfb8cLB/lI2XQH/+xjVrBn6qTC/tIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=jflOxC5E; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-604bff84741so5574011a12.2
        for <devicetree@vger.kernel.org>; Sat, 07 Jun 2025 04:42:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1749296563; x=1749901363; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vbBYREB7EZz7uh97XCG/R2ZuqTlW8SyAHh+pi6ZvUpg=;
        b=jflOxC5EEqE0tIXFv7Fq/IrhKckN6OcbD2s7eUcmUAQFOonuGThUjC9Xs6lw6R+Dz0
         3/hehShJ9r4wvR6zCKKn3N5LmWbVVsaNESCTL1xdBFzI8cQI4uk/qT/t8vgED5kjVUPi
         s/H+rGPrIbYCTNKJyNHHaT0uAYBxL7lPoUvvPRaDOxue8lAJGGTPX3MRZWjXgbdapJsb
         F8EaVclYGAD9/GPWC9IPLWks1HvpSSqmTDrU3/Zy6jUzByDZ69aGM50DfuFSHX6loH8N
         miwMBRkfyVhUtPPNzqaMN69AFYaVZyjPCh5yJy6Bhsevlw6ntzaiU0VIjDRvY7YCcNON
         DeAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749296563; x=1749901363;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vbBYREB7EZz7uh97XCG/R2ZuqTlW8SyAHh+pi6ZvUpg=;
        b=Ays8HCuZhoPzjz0quL4C1+TRi7L/vzZtNRRQRgy3tiGfoGJzsC6AEDaa09ZTPoJAyU
         U3f9UEv5mJoCvYj0L6YgjP67ysILoj8I1DVz8/UmSAtcEZfa6cAtzumE5pPKNt0Ktdna
         fsM8uZwh2W6K7fp3UVXJ4OTpLXnLQXOS/YdOhxpo8Cb4hMc12afFSJmQbDYTUm9wV3p5
         EKgODzJ6+XhrBkODxO3p6Mk/YnistJYA/CibYxN2fu+DG9jXt7L4SHygWEwhQxIYMHVC
         X3W3pMFiIaMDCaJc4XgvI8k7azPbHsvibLyyyOC3hEB+oF1q/yIy0Ik9wKRYOwUanfz1
         hYnQ==
X-Forwarded-Encrypted: i=1; AJvYcCVzwNdQulDyqiPJ7MDBned9m5xmsXzSH3gamqWdB8KxxZRJuMUdXKOQr51MQ5Js7YR93x+Mdunq50I6@vger.kernel.org
X-Gm-Message-State: AOJu0YwdiKFK8E8JQt9EK6ZiZxl/KPRef2QMam2UYpu6WrsK2VRtXiCY
	qyIMmXE+vQYNPLWxFVZeOVw7jwzH3805ahmTAFGq3hCpaA7bxDtHlbpJE3iPGZcm+UDV/g3Ei52
	13Oja
X-Gm-Gg: ASbGncsGXqpRrkqto11zB28yVPBqf2eRL75DpvhDQYeLPE5Ldy6a5sNFLpAglutunv7
	u3Td7DByNKdZhkuEK/+fZspnlPaj0RIrwPfTf1G5sWYN9B5GPUnjVhq2yr4VfrvSBid40xUbmAY
	dy3uZR/g5QyFVgINzJCoi2EUhFHs8bVfMlloevh99Ms1B8EZiZiccbnP3EBHaX8SU6Kg6oqNOjl
	VA1HTQP2q69OKkd1qrFBURdAe1RRoXNnMz3ieBL42KVv2vz90yjQyu5jCOdFShSBdpkSd/c61GH
	k0MGtOYfzalp0f5vJJxofGP4fo4+bmp5HnTyQz2thzdvi9Kb7Es1OwIkd8q39vtO0VgeZrU=
X-Google-Smtp-Source: AGHT+IE/ghuMo8WxjRQEBBSzj3ZNMEtTZhSuX3aE1kpWDYjCFmKx98n9jZapdCOk71/aJ5kHwhIRQA==
X-Received: by 2002:a17:907:7282:b0:ad8:9c97:c2dc with SMTP id a640c23a62f3a-ade1a9fcf5fmr648393066b.15.1749296551642;
        Sat, 07 Jun 2025 04:42:31 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.126])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ade35ce30casm151447866b.162.2025.06.07.04.42.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Jun 2025 04:42:31 -0700 (PDT)
Message-ID: <b355e01c-d9a7-47f0-bfe8-282d9152a814@tuxon.dev>
Date: Sat, 7 Jun 2025 14:42:30 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 7/9] ARM: dts: microchip: sama7d65: Add PWM support
To: Ryan.Wanner@microchip.com, herbert@gondor.apana.org.au,
 davem@davemloft.net, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, olivia@selenic.com
Cc: linux-crypto@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <cover.1747077616.git.Ryan.Wanner@microchip.com>
 <fae166010f94a672e4f1906f5fd4394f4236da53.1747077616.git.Ryan.Wanner@microchip.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <fae166010f94a672e4f1906f5fd4394f4236da53.1747077616.git.Ryan.Wanner@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 12.05.2025 22:27, Ryan.Wanner@microchip.com wrote:
> From: Ryan Wanner <Ryan.Wanner@microchip.com>
> 
> Add support for PWMs to the SAMA7D65 SoC.
> 
> Signed-off-by: Ryan Wanner <Ryan.Wanner@microchip.com>

Reviewed-by: Claudiu Beznea <claudiu.beznea@tuxon.dev>

> ---
>  arch/arm/boot/dts/microchip/sama7d65.dtsi | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/microchip/sama7d65.dtsi b/arch/arm/boot/dts/microchip/sama7d65.dtsi
> index 90cbea576d91..796909fa2368 100644
> --- a/arch/arm/boot/dts/microchip/sama7d65.dtsi
> +++ b/arch/arm/boot/dts/microchip/sama7d65.dtsi
> @@ -293,6 +293,15 @@ pit64b1: timer@e1804000 {
>  			clock-names = "pclk", "gclk";
>  		};
>  
> +		pwm: pwm@e1818000 {
> +			compatible = "microchip,sama7d65-pwm", "atmel,sama5d2-pwm";
> +			reg = <0xe1818000 0x500>;
> +			interrupts = <GIC_SPI 72 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&pmc PMC_TYPE_PERIPHERAL 72>;
> +			#pwm-cells = <3>;
> +			status = "disabled";
> +		};
> +
>  		flx0: flexcom@e1820000 {
>  			compatible = "microchip,sama7d65-flexcom", "atmel,sama5d2-flexcom";
>  			reg = <0xe1820000 0x200>;


