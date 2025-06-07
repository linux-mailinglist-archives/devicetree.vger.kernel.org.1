Return-Path: <devicetree+bounces-183483-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 68880AD0D1D
	for <lists+devicetree@lfdr.de>; Sat,  7 Jun 2025 13:41:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 90B4A3A6670
	for <lists+devicetree@lfdr.de>; Sat,  7 Jun 2025 11:41:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AAEE4220F26;
	Sat,  7 Jun 2025 11:41:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="SCgI0v8Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF0EC21ABDA
	for <devicetree@vger.kernel.org>; Sat,  7 Jun 2025 11:41:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749296512; cv=none; b=Oo9n7TU7J5UDMNUcPz6SLEZ3QTwFMFjozAnTXKP96MLcjov+tFOta1eQVcvcHsbdiUrhTF06mhf3QjvARi8CgjoQ48pd3wI0Gxt5EAozIMfbgIXdzubncadsVyvx7PhI4nlySPzoZbv/DX35daVIBfcD0rgQnFSmgdu65oVmwEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749296512; c=relaxed/simple;
	bh=5LVMnYxo/8IkyC+9pL/eX2AR8AsZM1vjU+V7pUnT84I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=aY3RsvCyyOQ0egGW5MqjI1dJOrYlZ8MzWnpi+C/gVQF6Y4wLWVpEL8SDdEA33S+kswoDnfMpavybZJ0etmvLF7gD+ssiSuAm3U5THvJInbCuDi3jOtVZw2OqmdbksTzjLV7G5yagx3Mh48JlJG1e8d7SVAlKO7BSe7V6lQeWrfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=SCgI0v8Q; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-607cc1a2bd8so398233a12.2
        for <devicetree@vger.kernel.org>; Sat, 07 Jun 2025 04:41:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1749296509; x=1749901309; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tpUIHwpdzY2CZpI6afE7z92XFQ6X7B6sr22AD7rh7/o=;
        b=SCgI0v8Q5XuTvRsxskQVPhs6EsKVtk2G556VHuAkTQ0hqs3wzRGHJwxIFQzNgafWBu
         ATyKcNCvA8XmJpZgKJPhU7YvVy/+P2oohn50IF0P+UArHRs4i6xT8SU6KjmwcQX3ioan
         ddaqrhi1cd0p050HiTyvscQ3yxyrf4giJj7+/vJQXUfwPgV24DO98gAMq7hJNd+lC3Fc
         2+pe6QlKgJDXGUCNeedISW7wEvTrfEydOOomWsdfdARWCN1r0561gQPz8gEz28rTQJX1
         bAdh9UyFU5+y4DagpZON8syk2gs7ro6yv0sgfpn11Pq9qnEE4MQj7GkAeFg6JKpOzs0e
         WcNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749296509; x=1749901309;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tpUIHwpdzY2CZpI6afE7z92XFQ6X7B6sr22AD7rh7/o=;
        b=Qr339ITOjMaTDZBVbaPXeSgUkmW9JzjF9GKGe6CsIzQ8mra1kazfVp01uoFcxA05zB
         Jq2aTkVP5x+BsX2prEJ+hbkNdibMkPzkgSK5yFkRX6Y/0M/DQCoBCjHtzJwJXjtmDs0g
         Y5NZfpOQ0WNuS9PphfPwjQAKlum09EM8kbhBGI67uEnsM2F1Cw+X/GtXoswSx1fOvKeg
         iL4bGuLdozKZXNF7en4lB40ha7JGGZxaNOVs3EzWahEQMfghqVkE+oZLrBXRS8jJPHWm
         +2GzQXApquiR9JZ0gf6411RH9fp+AtcJjV5H7ExbNwjKrHYceBJRvlh18i7v9KHo59TE
         qfmg==
X-Forwarded-Encrypted: i=1; AJvYcCUgRVVeI+JeX6KzawEbQXw8MyG8vefpuD0ocq3pfN4qaDTdqLBR1OmpfRwwUtxZVrF4w9LHhWXr9Pj1@vger.kernel.org
X-Gm-Message-State: AOJu0YzvNYZDefgivu/h0oFPIg6uennRUYJfnaqgC28pP9I2sl+/WTy8
	+dQQDVJ8xkky3YylgLegXON/ZnKMBPvfQyj+fG4yQ40UIfTEUaT+KfDdKHQ2CxFgQ9M=
X-Gm-Gg: ASbGncusQkZ5m+fhz6FbOi+LfBgDCqjo9/1gts1BOaoxs84YbvL9nx3F9ynr+4ga/hu
	9rZhMhL5/TAVspafFxXy/YiYDj+xocRfAj1u6X+0kx8u8Tv1JEualr8q/b+9+TWtlumzpjUO8tL
	fhP0cdGIvA4qXgEILdH0EmKERYh60+46XrdK1go7Ui1IpmX+JT6y7pgP6KcAjPgatkCPWXFoSxJ
	21hYzMaP8jkYNl+k0aIvKqyLoQPz8BOVJHnoXSuBF5KnAKzXWBGjUFlETe1PGsJp6De34SD71NV
	1Dd93lz/WlPNmmCdWlVeNXUsliQtIH9lg0UE4Dj73dF4mu2mHQSlReXmAwk9
X-Google-Smtp-Source: AGHT+IF+6xpy8Lxdm6lC66+KC/dopAh/IjXL4qdeSW+s29AFBKWuEN5NwskU3wTPxVH1rP+CS4zbfw==
X-Received: by 2002:a05:6402:13cf:b0:601:6c34:5ed2 with SMTP id 4fb4d7f45d1cf-60773ecbf9amr5548576a12.4.1749296509159;
        Sat, 07 Jun 2025 04:41:49 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.126])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6077836ff44sm2281966a12.8.2025.06.07.04.41.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Jun 2025 04:41:48 -0700 (PDT)
Message-ID: <c150550c-bba6-48d5-90c9-d52db1f039d5@tuxon.dev>
Date: Sat, 7 Jun 2025 14:41:47 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/9] ARM: dts: microchip: sama7d65: Add crypto support
To: Ryan.Wanner@microchip.com, herbert@gondor.apana.org.au,
 davem@davemloft.net, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, olivia@selenic.com
Cc: linux-crypto@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <cover.1747077616.git.Ryan.Wanner@microchip.com>
 <5d045fc3be18fcd6644f14b9568f1f8d7c8d75a1.1747077616.git.Ryan.Wanner@microchip.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <5d045fc3be18fcd6644f14b9568f1f8d7c8d75a1.1747077616.git.Ryan.Wanner@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 12.05.2025 22:27, Ryan.Wanner@microchip.com wrote:
> From: Ryan Wanner <Ryan.Wanner@microchip.com>
> 
> Add and enable SHA, AES, TDES, and TRNG for SAMA7D65 SoC.
> 
> Signed-off-by: Ryan Wanner <Ryan.Wanner@microchip.com>

Reviewed-by: Claudiu Beznea <claudiu.beznea@tuxon.dev>

> ---
>  arch/arm/boot/dts/microchip/sama7d65.dtsi | 39 +++++++++++++++++++++++
>  1 file changed, 39 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/microchip/sama7d65.dtsi b/arch/arm/boot/dts/microchip/sama7d65.dtsi
> index d08d773b1cc5..90cbea576d91 100644
> --- a/arch/arm/boot/dts/microchip/sama7d65.dtsi
> +++ b/arch/arm/boot/dts/microchip/sama7d65.dtsi
> @@ -186,6 +186,45 @@ sdmmc1: mmc@e1208000 {
>  			status = "disabled";
>  		};
>  
> +		aes: crypto@e1600000 {
> +			compatible = "microchip,sama7d65-aes", "atmel,at91sam9g46-aes";
> +			reg = <0xe1600000 0x100>;
> +			interrupts = <GIC_SPI 26 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&pmc PMC_TYPE_PERIPHERAL 26>;
> +			clock-names = "aes_clk";
> +			dmas = <&dma0 AT91_XDMAC_DT_PERID(1)>,
> +			       <&dma0 AT91_XDMAC_DT_PERID(2)>;
> +			dma-names = "tx", "rx";
> +		};
> +
> +		sha: crypto@e1604000 {
> +			compatible = "microchip,sama7d65-sha", "atmel,at91sam9g46-sha";
> +			reg = <0xe1604000 0x100>;
> +			interrupts = <GIC_SPI 78 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&pmc PMC_TYPE_PERIPHERAL 78>;
> +			clock-names = "sha_clk";
> +			dmas = <&dma0 AT91_XDMAC_DT_PERID(48)>;
> +			dma-names = "tx";
> +		};
> +
> +		tdes: crypto@e1608000 {
> +			compatible = "microchip,sama7d65-tdes", "atmel,at91sam9g46-tdes";
> +			reg = <0xe1608000 0x100>;
> +			interrupts = <GIC_SPI 91 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&pmc PMC_TYPE_PERIPHERAL 91>;
> +			clock-names = "tdes_clk";
> +			dmas = <&dma0 AT91_XDMAC_DT_PERID(54)>,
> +			       <&dma0 AT91_XDMAC_DT_PERID(53)>;
> +			dma-names = "tx", "rx";
> +		};
> +
> +		trng: rng@e160c000 {
> +			compatible = "microchip,sama7d65-trng", "microchip,sam9x60-trng";
> +			reg = <0xe160c000 0x100>;
> +			interrupts = <GIC_SPI 92 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&pmc PMC_TYPE_PERIPHERAL 92>;
> +		};
> +
>  		dma0: dma-controller@e1610000 {
>  			compatible = "microchip,sama7d65-dma", "microchip,sama7g5-dma";
>  			reg = <0xe1610000 0x1000>;


