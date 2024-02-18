Return-Path: <devicetree+bounces-43198-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 074C4859773
	for <lists+devicetree@lfdr.de>; Sun, 18 Feb 2024 15:45:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 39EC91C20BF0
	for <lists+devicetree@lfdr.de>; Sun, 18 Feb 2024 14:45:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DFF76BB47;
	Sun, 18 Feb 2024 14:45:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="WV1nVZWE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB3361E896
	for <devicetree@vger.kernel.org>; Sun, 18 Feb 2024 14:45:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708267545; cv=none; b=NAgDCt0m7K1MosAKVAbOYTHYqcYXBZIAc2cAUTeQvp0lvgF9y3Z8yTwmBP1IuS+uFanSOYEet4+fUVdI7XUYe4xJKoRsVQ715dSPIHeOTCPnuIctcXzmAlRvuSPLdl2rP/4zcAdIxv1WXi9iJJp+iErZlOeblEpnl+FRe+80BwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708267545; c=relaxed/simple;
	bh=yIDkTtx9RVSoUsvPQmKTkP7pTyCPq17T0cDn2ADBGsg=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=GHYKDzPn0HU20g+xl6uwsF5p/xEHAFxgFLBgeZigL9QOfQZVkIRojo9vTBE8/lAVmk27+uco85kj725HNyFZ9bQaMlDBXN8iZSHly9krtW/RxwQ+D10yYVn4Acvr0SJ2kZlUtTAnasFc7iYw6n0rADRDSvkyoUtf1iOApcEzSNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=WV1nVZWE; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-33d4f4b30beso16983f8f.2
        for <devicetree@vger.kernel.org>; Sun, 18 Feb 2024 06:45:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1708267542; x=1708872342; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XTHSXd8Sr1XB4EP/AH61MHY8vs5XT3VAgaFFnPg74g8=;
        b=WV1nVZWECI6tGv30cevPLtofaEeTbR5WpFmhz5/+JEmiBxEUaLhWP8Pezxy8zrLoch
         8wO/zJwXqeYeNgVaFE3uOciDQa4gk8avwzWAryngi+hpDMHPjnUKazb15eM83nqawOqb
         /DI4O6a+b8rXRknlwKQBcmzMz0YWp03aiHRM/IpqiBjAmzOVxvsNgTf+XrzmttDibmks
         tAvRAcEMiSTMfvW5PoLTKf40UiEl5cioIBodREx4n1u2/Fxsmu45s4gyh460maT1pOpn
         N4tQN1x8cLUhhC8PvJQcPcQwTyEH7kxFW+5g3g0SasCgJ2+cc7mg4WtFenVMPvsFkj4u
         uN1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708267542; x=1708872342;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XTHSXd8Sr1XB4EP/AH61MHY8vs5XT3VAgaFFnPg74g8=;
        b=dcNA3SDk2I4KykeKWjUbUQDB774hD9VgL6k0F0UNF8xxwmF3rQm1l7IFw0zmEYzalz
         LdRlTNGmEUjIo+UhW2ee7q3DP7bS/Co86A46SN/nZD+Otpfa+6mXikyXg/oqw1WwQSpa
         f0pDoyaE/8JAq1KFFhfT+kgMkIGZwrXWVqxt1eGmHk1aCEI0E5KRM2F1Wz0Fmq6XHmf8
         PxCqmbpIKvvyO2IXhF43s9Z/HnkMN3F6Ek+t7stUQKmfm48HprpPNJuRLKvqWrKTEFIE
         kptscXPmceZMwWrIr4UdFU/heYANZSnkD+1uv+vr5kAJHg9/E6tEOd2IS2jZebALHFAq
         vLyA==
X-Forwarded-Encrypted: i=1; AJvYcCW5zaPQYJJe2dQvMy6eEy6Mi9IMg739TaOzJ7E2C9TI6fSBujv+IEEuRuFPpcblOWQ+K5K8Bm6jy2+M7kkyMSdkLk6nDzmrD7LPgw==
X-Gm-Message-State: AOJu0Yz/o7POyRw38Dei+Ei3yalDM5eTsXzqwFgM2BJDH7fheDtilPFh
	Za2yhomtGmHKhCxxYD4Na8jKefA1q75yCauLIG8zvFfjTQysvxM33bEIFVwUEX8=
X-Google-Smtp-Source: AGHT+IHBHpp1lfwvyBS3L4upY43mkbFCMLr9PLEgtpXuyBPUTH81W1N5uyRiW53YqIu0pHD0MuEzbA==
X-Received: by 2002:a05:6000:188f:b0:33d:1d45:1a55 with SMTP id a15-20020a056000188f00b0033d1d451a55mr5809371wri.8.1708267541918;
        Sun, 18 Feb 2024 06:45:41 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.20])
        by smtp.gmail.com with ESMTPSA id s3-20020a5d4ec3000000b0033ce06c303csm7453944wrv.40.2024.02.18.06.45.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 18 Feb 2024 06:45:41 -0800 (PST)
Message-ID: <c7486f71-56ef-4ba8-9764-54245d906958@tuxon.dev>
Date: Sun, 18 Feb 2024 16:45:40 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/8] ARM: dts: microchip: sama5d27_wlsom1_ek: Add
 power-supply property for sdmmc0 node
Content-Language: en-US
To: Mihai Sain <mihai.sain@microchip.com>, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20240206120322.88907-1-mihai.sain@microchip.com>
 <20240206120322.88907-6-mihai.sain@microchip.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20240206120322.88907-6-mihai.sain@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 06.02.2024 14:03, Mihai Sain wrote:
> The sdmmc0 controller is powered from 3.3V regulator.

Same here. SDMMC0 data lines are powered by VDDSDHC which could be 1v8/3v3.

[1]
https://ww1.microchip.com/downloads/aemDocuments/documents/MPU32/ProductDocuments/UserGuides/SAMA5D2-Wireless-SOM1-Kit-User%27s-Guide-50002931d.pdf

> Add vmmc-supply and vqmmc-supply properties to sdmmc0 node.
> The sdmmc controller from SAMA5D2 MPU has support for
> IO voltage signaling/switching required by the UHS sd-card.
> In order to avoid the issues from the tuning procedure required by
> the UHS cards, keep the vqmmc at 3V3 to use the sd high-speed mode.
> 
> Signed-off-by: Mihai Sain <mihai.sain@microchip.com>
> ---
>  arch/arm/boot/dts/microchip/at91-sama5d27_wlsom1_ek.dts | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/microchip/at91-sama5d27_wlsom1_ek.dts b/arch/arm/boot/dts/microchip/at91-sama5d27_wlsom1_ek.dts
> index 15239834d886..7b36e1970bb7 100644
> --- a/arch/arm/boot/dts/microchip/at91-sama5d27_wlsom1_ek.dts
> +++ b/arch/arm/boot/dts/microchip/at91-sama5d27_wlsom1_ek.dts
> @@ -199,6 +199,8 @@ &sdmmc0 {
>  	bus-width = <4>;
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_sdmmc0_default>;
> +	vmmc-supply = <&vdd_3v3>;
> +	vqmmc-supply = <&vdd_3v3>;
>  	status = "okay";
>  };
>  

