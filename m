Return-Path: <devicetree+bounces-183488-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F9E2AD0D3A
	for <lists+devicetree@lfdr.de>; Sat,  7 Jun 2025 13:53:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9DA701887F15
	for <lists+devicetree@lfdr.de>; Sat,  7 Jun 2025 11:54:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1B9521883C;
	Sat,  7 Jun 2025 11:53:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="XA/jAUSX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4299A1A8401
	for <devicetree@vger.kernel.org>; Sat,  7 Jun 2025 11:53:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749297228; cv=none; b=fHulx0kGhC/eY6lSWsDwsdtEl7bLL9yPPoDVVZZYvVaUaTXCQskZjJDE4OSkGbgonnvQzueaHK2m5zWf44o3HY26b1UCyIRzjTOFSDL1/OZmu0SNzhClQMuuv1AjWhplVwiuM6y4P6POrs8SheBPeCA0W/fv4Ivm+//QulQdqus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749297228; c=relaxed/simple;
	bh=cp3+wkd9Hpa8eQl7ggQCHHzlYrcncTVdbZUFHWH1E5A=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bWuQpSvCAknVJENZWV/RT3vYELX3YW/WhffHCkKmRTXXs/UVW4nKxGBr5+mLfvZmC8gOfy95uC27p0znzKFgNuWp9TMLK1BTiQ/V+X9rsdIXNyFhSvtUoa2PBhO8Pl1sZRRtz+9l6PQ024E7EAF6gUpXQYBs4saJ0h0JilveDp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=XA/jAUSX; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-60700a745e5so2706114a12.3
        for <devicetree@vger.kernel.org>; Sat, 07 Jun 2025 04:53:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1749297226; x=1749902026; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=j6NM0r2GKpKHtz5Be10A+IWfM525/OoNZ5yJnNFLV3s=;
        b=XA/jAUSXkfpqJ9U0tXz6zII3LmmsDnxz/HwA/79wdYj5cpGNFPedH8U+/vWPf6KkKk
         rvOVEH8ZE237lJrhdZqz3Co9AmoWuglltNjP2HyDO5tFAOAjslKMvAxBioDOpAtlsvWQ
         LcHcp6HsDUrVndyAVIh4qDsxTCsOwWMgkem8Ztoutdpz4GxOV1/NegJUjyngnZgPWSyy
         tMRxKYEveId7AzZ41oAdOBB1TnhgsrbjILsTMOlxAxlaC+FOGeW0PoGF6k+6WfnT3p+P
         kr5E3JhkhAqQbiHYBfokdmWTgZpBTmXAkcWIqzeFNDRQl+FsHa087tmxDq8AdvZjIfBl
         symA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749297226; x=1749902026;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=j6NM0r2GKpKHtz5Be10A+IWfM525/OoNZ5yJnNFLV3s=;
        b=aYG7qQ9oipFNQoA7LUvF6VRkt9axxM9kgO83G+tYXn6ujX7uNiAj7yzGdWhxmdQv04
         /b+ksyyKHrVkYmUGLtOAODZXVGWqU50PuSChQZ0VJtaa1bIP7hGg8hedfC88btuWKJ54
         gcpGDj9xD2SdKFy9gcY24dQrdMxTy+/+azdPr56jegqTv/81vLc6r0Jo63OX/U2niH1W
         Hc22IJr+WBkvNK55AbmIBxWXBS8V7+idKI707shsSYHMbeBjGKaZd9J55izL3p8e3JMr
         IntXs8cdEiTdNsM2jvDdF4V9wlOkmtQyouIHod0JRLdZsqzUulsCMntTszlEZwvqm0wK
         v82w==
X-Gm-Message-State: AOJu0YxdLNqBZWMpe8C+Z8qXCpFx3HkjWrDG2rddFM83akQYDuKwAdaQ
	Cf4q5OHhsSg+YR1tXmlCDEZNtpYce4EiHTEai5Ss+JW0o1TvgPHvNiWbKUBG2n9sstc=
X-Gm-Gg: ASbGncs9V6cYt4GMRnQP9I+pZDhj3QiauzwX8Kw8TlIgNl4WhIFZrvjGjqyvSmZmREf
	EW+O0CdG0c68i/XnB1UypOvmgqA40KVNBbV7BmJnwdw4FWk1QzDUjNzxo0i5yZvFlmoAw8ro1fh
	ousjzxnjUBbGGTod9AjqoFVtzCTXGvV+CqGvA+x5yQfeFqMU+KbPmiu3r4T5ipXKs3CQanJuvde
	OPxIOU28vM2Zp4NTikm2umZPsi+LDQoozJ29l/OZ0hVJoZ6DKHP2vFqDUzlTIQySEsXQqCl34SP
	vepaNaJG3oy6UU+0QyS/qtpIK1c+DVcGr3J3M9v3Vm3EdCNiu2RWQd04gEUv
X-Google-Smtp-Source: AGHT+IGv3DrJQc4+ybtE0JmCBcsdqL7KbDx6979eNC8Qxq/j+eIgzAGuXvZa0SEaHvSSsMoEslL4Sw==
X-Received: by 2002:a05:6402:1ed0:b0:606:c48c:fb91 with SMTP id 4fb4d7f45d1cf-60773ecd3a6mr6255248a12.17.1749297225668;
        Sat, 07 Jun 2025 04:53:45 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.126])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6077836ffe2sm2265535a12.4.2025.06.07.04.53.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Jun 2025 04:53:45 -0700 (PDT)
Message-ID: <96de4b6c-0e17-44c7-9cf7-832a97a24c2b@tuxon.dev>
Date: Sat, 7 Jun 2025 14:53:44 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/2] ARM: dts: microchip: sama7g5: Adjust clock xtal
 phandle
To: Ryan.Wanner@microchip.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <cover.1748030737.git.Ryan.Wanner@microchip.com>
 <569e194346975ac3bb5786c02dc6681625771c00.1748030737.git.Ryan.Wanner@microchip.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <569e194346975ac3bb5786c02dc6681625771c00.1748030737.git.Ryan.Wanner@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Ryan,

On 23.05.2025 23:24, Ryan.Wanner@microchip.com wrote:
> From: Ryan Wanner <Ryan.Wanner@microchip.com>
> 
> Adjust clock xtal phandles to match the new xtal phandle formatting.
> 
> Signed-off-by: Ryan Wanner <Ryan.Wanner@microchip.com>
> ---
>  arch/arm/boot/dts/microchip/at91-sama7g5ek.dts | 18 ++++++++----------
>  arch/arm/boot/dts/microchip/sama7g5.dtsi       |  6 ++++--
>  2 files changed, 12 insertions(+), 12 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/microchip/at91-sama7g5ek.dts b/arch/arm/boot/dts/microchip/at91-sama7g5ek.dts
> index 2543599013b1..79bf58f8c02e 100644
> --- a/arch/arm/boot/dts/microchip/at91-sama7g5ek.dts
> +++ b/arch/arm/boot/dts/microchip/at91-sama7g5ek.dts
> @@ -35,16 +35,6 @@ aliases {
>  		i2c2 = &i2c9;
>  	};
>  
> -	clocks {
> -		slow_xtal {
> -			clock-frequency = <32768>;
> -		};
> -
> -		main_xtal {
> -			clock-frequency = <24000000>;
> -		};
> -	};
> -
>  	gpio-keys {
>  		compatible = "gpio-keys";
>  
> @@ -512,6 +502,10 @@ spi11: spi@400 {
>  	};
>  };
>  
> +&main_xtal {
> +	clock-frequency = <24000000>;
> +};
> +

Please keep it alphanumerically sorted.

>  &gmac0 {
>  	#address-cells = <1>;
>  	#size-cells = <0>;
> @@ -917,3 +911,7 @@ &vddout25 {
>  	vin-supply = <&vdd_3v3>;
>  	status = "okay";
>  };
> +
> +&slow_xtal {
> +	clock-frequency = <32768>;
> +};

Same for this one.

> diff --git a/arch/arm/boot/dts/microchip/sama7g5.dtsi b/arch/arm/boot/dts/microchip/sama7g5.dtsi
> index 17bcdcf0cf4a..411db7e375a6 100644
> --- a/arch/arm/boot/dts/microchip/sama7g5.dtsi
> +++ b/arch/arm/boot/dts/microchip/sama7g5.dtsi
> @@ -117,13 +117,15 @@ map1 {
>  	};
>  
>  	clocks {
> -		slow_xtal: slow_xtal {
> +		slow_xtal: clock-slowxtal {
>  			compatible = "fixed-clock";
> +			clock-output-names = "slow_xtal";
>  			#clock-cells = <0>;
>  		};
>  
> -		main_xtal: main_xtal {
> +		main_xtal: clock-mainxtal {
>  			compatible = "fixed-clock";
> +			clock-output-names = "main_xtal";
>  			#clock-cells = <0>;
>  		};

While at it, can you please also address usb_clk ?

Thank you,
Claudiu


