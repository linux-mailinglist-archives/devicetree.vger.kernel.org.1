Return-Path: <devicetree+bounces-34075-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 32677838966
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 09:46:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5701B1C22299
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 08:46:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EDBFD56B90;
	Tue, 23 Jan 2024 08:46:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KvgC4RT0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FBAF3207
	for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 08:46:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705999589; cv=none; b=Shezq7UBxmSLd2wFvPmH4R9URauu4Yjy2MgYfZjuiIz31g+glqraOD+UjMG4E83nZ1P7CEUuOlJ9bLo02TaNyfaZubPEOOtaA8Ng2v4YJ06yQsU3loU5IrVAxnqKNyZQJUmwvAnsIxdHSLvAJGMNdfxPhj16DkZZWc8dJq17A0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705999589; c=relaxed/simple;
	bh=DEjucHmviiNGEJdKpQ9gbgRL+p6MOiVOJ6Sm9ewxIN8=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=IL0B6DkRMYCXKKQKLS8rr/ahycz2wg4lQ/yaPdEaBiiGaQhUw+yE+k4Ue3/XUC0Ho0TTXNOmCwS6PWtzHswMG/vQqlmEumXwwEeGgNqeDvRsUzf3gzZOdJSJ9RWwS0YG32Uo1ktmyYf5mpNVW7ckxNMJnw2/wuannSoXZ+Scg8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KvgC4RT0; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-40d6b4e2945so48342115e9.0
        for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 00:46:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705999585; x=1706604385; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xQ/kZBT815lE+ny4M2+2t9x89ILR4Uw+AHcp6Gre08U=;
        b=KvgC4RT0JdoGvQD/VPpz5X2diVEOP7uqLKGTMMEuHu02GUSW1OGnBzdcwNbyZNoG3P
         vu7SA+LsErKuuVVGatekzr7exSdVe6iFuNfm0b6qLXrYMewCf1wjh2RnYG01MSwVZGO8
         S4kvMHwiob8847KhVdKypuO2Bs2z1UEkpgRrh0bcIaDxWsL0QafFMUGRO1dc40kl7vWk
         GJRdktU/WwfiUZ5HGZTiCC/PxOdiTEmlZezBtXkWDMXR+/1iwk4+3S+0ccZM0fsLXx/X
         EARADC9YGHXRXwmiKBONs10pnpCa45kHpZ388i7hsFK21o3zsXA23ZSQyKaewZo+kpik
         1AiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705999585; x=1706604385;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xQ/kZBT815lE+ny4M2+2t9x89ILR4Uw+AHcp6Gre08U=;
        b=ZEG0rsviRsCrNxxRiENUcX4UYMpK33IjQBvG97cxJH52jQ6lZC/Fk4TWkpWemtr2BI
         tZqIVM8Vzs6hcsVJmP/vRlH/9dUrVLV3SzeIVpCxNTZ6MUZgebWyMVxkuS/x4U5uqo8F
         Kr87OOW4FT+GyL05fplcsGnn0vnzrkiu3r7Yt0U8NX3fBBjS12ZkkE822CnHstMXWN5a
         Eq9cMDptzCOfEzkVJXLE+fOVBuqVfqLunNm6STZ1pYB5H3AzwZEEtadFri8l6hy/Rleq
         Y5GUGWR0Q0WE2IeWTErhg2gb2i1KQe5QXIekei7S6Z0pkKPGk+DvMkO5/AxTh7FobFcq
         x0HQ==
X-Gm-Message-State: AOJu0YxK/cR6ysHfao95lhUGQQcO7R5aG9dyAm1f9e5gqiiTAhk2sxlt
	avCyb/YZ4L+v6qrHezU63Gyd/tD1KnWbMdwFJMH3v91TWXiyZUud2PEPZwJNSCA=
X-Google-Smtp-Source: AGHT+IFqx8K7lQJcsPyqqFg6uEM5q/0vFdnheYAm2OJ5/6xMSKevABF6QpsdfJSIHe7/FCPK3LYd1w==
X-Received: by 2002:a05:600c:5249:b0:40e:af03:5f8d with SMTP id fc9-20020a05600c524900b0040eaf035f8dmr210660wmb.8.1705999585557;
        Tue, 23 Jan 2024 00:46:25 -0800 (PST)
Received: from [192.168.1.20] ([178.197.215.66])
        by smtp.gmail.com with ESMTPSA id z10-20020a05600c0a0a00b0040e486bc0dfsm46097069wmp.27.2024.01.23.00.46.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jan 2024 00:46:25 -0800 (PST)
Message-ID: <c289a167-031a-44cc-ab62-0fb0adcab2bb@linaro.org>
Date: Tue, 23 Jan 2024 09:46:23 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/8] ARM: dts: microchip: sam9x60_curiosity: Add
 power-supply properties for sdmmc nodes
Content-Language: en-US
To: Mihai Sain <mihai.sain@microchip.com>, claudiu.beznea@tuxon.dev,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20240123083158.7339-1-mihai.sain@microchip.com>
 <20240123083158.7339-2-mihai.sain@microchip.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240123083158.7339-2-mihai.sain@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 23/01/2024 09:31, Mihai Sain wrote:
> The sdmmc0 and sdmmc1 controllers are powered from 3.3V regulator.
> Add vmmc-supply and vqmmc-supply properties to sdmmc nodes.
> 
> Signed-off-by: Mihai Sain <mihai.sain@microchip.com>
> ---
>  arch/arm/boot/dts/microchip/at91-sam9x60_curiosity.dts | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/microchip/at91-sam9x60_curiosity.dts b/arch/arm/boot/dts/microchip/at91-sam9x60_curiosity.dts
> index c6fbdd29019f..457c54dde0b7 100644
> --- a/arch/arm/boot/dts/microchip/at91-sam9x60_curiosity.dts
> +++ b/arch/arm/boot/dts/microchip/at91-sam9x60_curiosity.dts
> @@ -452,6 +452,8 @@ &sdmmc0 {
>  	pinctrl-0 = <&pinctrl_sdmmc0_default &pinctrl_sdmmc0_cd>;
>  	cd-gpios = <&pioA 25 GPIO_ACTIVE_LOW>;
>  	disable-wp;
> +	vmmc-supply = <&vdd1_3v3>;
> +	vqmmc-supply = <&vdd1_3v3>;

For this and all other patches:

It is surprising that you use the same supply for both. Looks like
inaccurate description. It is possible, but I think unlikely because
usually VQMMC has lower voltage than 3.3V.

Best regards,
Krzysztof


