Return-Path: <devicetree+bounces-41865-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E2723855B79
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 08:19:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 90BFD1F213A1
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 07:19:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1776D536;
	Thu, 15 Feb 2024 07:19:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="eWAkTknL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6580533C5
	for <devicetree@vger.kernel.org>; Thu, 15 Feb 2024 07:19:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707981562; cv=none; b=TtD13iGSz/0iRxwkkWeM1ZuiPvmcsv8SfAzBAfXUZqsxVYq/BoA3N4gObUN645HPCBQszkVoUfStryHoiSrLtONg/Z9sOtkVDU8zW08vqFY+378+IPfDtpem5q//tEPyDUyh2S3crekrt4k4/EbuW3d9Qx59nWWvlgKqPlyH790=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707981562; c=relaxed/simple;
	bh=KVzvewPsv9+3Wm8MRBDTy7EAOEddn740aLx0PZgYJtk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bZBFclYU5I0zo3OIESiVeCK48aklYpnKo0qnrsTSkd7dCgl/8pkFWZFB+EWirkldyGqHkkzH7xHLnk2mlOLZ4gl/JzAZs0b8HRaQNn92uPny4ZQGYQAd0Y1XMNZ+8G8edW5yEpNXXaJA6MdSJYoYj2vjQrXjpYS/JiKNkaN/0WQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=eWAkTknL; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-33aeb088324so263859f8f.2
        for <devicetree@vger.kernel.org>; Wed, 14 Feb 2024 23:19:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1707981558; x=1708586358; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WhVkc0N0FKzZDN5JV45vh1J18dPbZNmPhz6By8Ka/HI=;
        b=eWAkTknLT2DsGK5kmxXr81MD8pI9jg2nlOFcbgICcCs4DlAC7gvN/q+1A6CiZVuq/K
         jLmI3Dpt13CLVYFVTZ9kaj8wVPvNWzut7kh9MLMdMbyShU6TOQfN8m9kKxLDKpVlc2pN
         oof20Cc6a4NdhZgA1bD6QqNGtrXOLKAQdaDri380AIBU0coi297WsbZfisk/GaRv0Rj4
         8eNvQrqtAD1GVVYygkhuI9YMenS0X/RZJjYzHRCZSWsDaXpTojmcC0KkqxOnPxaaAfbH
         nfGo6hkgT+wtlcIUtm9U4R8POAZZNM61gwrSJOSrziVFnzQH+qcMIpdGSR7oUdEhXY+F
         8Y7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707981558; x=1708586358;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WhVkc0N0FKzZDN5JV45vh1J18dPbZNmPhz6By8Ka/HI=;
        b=o/Yy0iJ7Hntgrs4taEfc59Dwx7pY4OwuhPxcXr62bWFIEb8Kcvh99P3GjiRiknIVPz
         jJYvJb1c+30xQK3NNKP5NiMQOGQgR3S/kazb44lM7EcPDP7GZ0b76DRtQnm+YPI3QThY
         QiRRBc9nf3ZyxWiCS+UeCCu9vfwm2pHYZdcNZQtrbPR3/c/8U9VReWT06LtsRb6sfqp3
         WFMwPBdoY7XOi21E1jZgEH4YhFM/xrRVS1f1zAgp00NnqjrS2Ze8QHwcF7zgXnzOY4nt
         L5xTHjZFs3CRUAeThtTH6GzuefVxWAaE6Skf0sYvwqcosjnveStvW+m0w+Rqm8Gdg1Gk
         ckKQ==
X-Forwarded-Encrypted: i=1; AJvYcCXm5uPMYgIvLr0mjo9rD9aYnPPdUrbmYZizUe85DoFx6unhr5rEUu9WA46CKWs8z5rwUORtEjLyswP7ieIHWeMgCkPIAp0fRyrDZg==
X-Gm-Message-State: AOJu0YzwOwQlHOr4lWsIvz2bX4qAPGJQcD8YpdJ8/t68lFZ/rFKx43sj
	bGiWhzYnW80ByL4aLs9g9vnYlhjU7zCNIUkOlaFeRQa12gYPLt3kgDGSoJHUE8w=
X-Google-Smtp-Source: AGHT+IGZgR8Guiifx2V11KnsdYQVVJY4trhOoaJbpDtdrp/av4ymNFtmRq3o0WjGU5EYYBJ0fWVhng==
X-Received: by 2002:adf:f20e:0:b0:33b:2281:ef32 with SMTP id p14-20020adff20e000000b0033b2281ef32mr566925wro.69.1707981558319;
        Wed, 14 Feb 2024 23:19:18 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.20])
        by smtp.gmail.com with ESMTPSA id ay27-20020a5d6f1b000000b0033d06dfcf84sm507917wrb.100.2024.02.14.23.19.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Feb 2024 23:19:17 -0800 (PST)
Message-ID: <20a20d63-3968-45e7-a4aa-0197c55e6656@tuxon.dev>
Date: Thu, 15 Feb 2024 09:19:14 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] ARM: dts: microchip: sama7g5: Add flexcom 10 node
Content-Language: en-US
To: Mihai Sain <mihai.sain@microchip.com>, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com,
 andre.przywara@arm.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: cristian.birsan@microchip.com
References: <20240214080348.7540-1-mihai.sain@microchip.com>
 <20240214080348.7540-3-mihai.sain@microchip.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20240214080348.7540-3-mihai.sain@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Mihai,

On 14.02.2024 10:03, Mihai Sain wrote:
> Add flexcom 10 node for usage on the SAMA7G54 Curiosity board.
> 
> Signed-off-by: Mihai Sain <mihai.sain@microchip.com>
> ---
>  arch/arm/boot/dts/microchip/sama7g5.dtsi | 26 ++++++++++++++++++++++++
>  1 file changed, 26 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/microchip/sama7g5.dtsi b/arch/arm/boot/dts/microchip/sama7g5.dtsi
> index 269e0a3ca269..c90e404e8ed9 100644
> --- a/arch/arm/boot/dts/microchip/sama7g5.dtsi
> +++ b/arch/arm/boot/dts/microchip/sama7g5.dtsi
> @@ -958,6 +958,32 @@ i2c9: i2c@600 {
>  			};
>  		};
>  
> +		flx10: flexcom@e2820000 {
> +			compatible = "atmel,sama5d2-flexcom";
> +			reg = <0xe2820000 0x200>;
> +			clocks = <&pmc PMC_TYPE_PERIPHERAL 48>;
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +			ranges = <0x0 0xe2820000 0x800>;
> +			status = "disabled";
> +
> +			i2c10: i2c@600 {
> +				compatible = "microchip,sama7g5-i2c", "microchip,sam9x60-i2c";
> +				reg = <0x600 0x200>;
> +				interrupts = <GIC_SPI 48 IRQ_TYPE_LEVEL_HIGH>;
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +				clocks = <&pmc PMC_TYPE_PERIPHERAL 48>;
> +				atmel,fifo-size = <32>;
> +				dmas = <&dma0 AT91_XDMAC_DT_PERID(25)>,
> +					<&dma0 AT91_XDMAC_DT_PERID(26)>;
> +				dma-names = "rx", "tx";

Please use the same pattern used by the rest of the i2c flexcom nodes, meaning:
				dma-names = "tx", "rx";

and, with this, reverse the order of dmas, too.

> +				atmel,use-dma-rx;
> +				atmel,use-dma-tx;

These are uart properties.

> +				status = "disabled";
> +			};
> +		};
> +
>  		flx11: flexcom@e2824000 {
>  			compatible = "atmel,sama5d2-flexcom";
>  			reg = <0xe2824000 0x200>;

