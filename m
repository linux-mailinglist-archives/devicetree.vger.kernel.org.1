Return-Path: <devicetree+bounces-183475-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3603CAD0D00
	for <lists+devicetree@lfdr.de>; Sat,  7 Jun 2025 13:06:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2539B170435
	for <lists+devicetree@lfdr.de>; Sat,  7 Jun 2025 11:06:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 169A221D3E7;
	Sat,  7 Jun 2025 11:06:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="jZ3fB/R0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5070F1F8AF8
	for <devicetree@vger.kernel.org>; Sat,  7 Jun 2025 11:06:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749294391; cv=none; b=NShzD8ERxIldDgkRJIm50BDJw5HV/k4C7BBRFoe5u800fOmg6zBnuncOznrSzRGbnygL8NksPrd+RQWK++RpoyhQLNevnwjqmw2vjVkncfMjAT0eXHEEpbXhhqJnA/9OvyHK/R1oft22xRUqBsJvGQWcPNwUiIlsb+TbxFJagQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749294391; c=relaxed/simple;
	bh=kmTQB+yMiFcHzCHY1trlsiEJR2icsWBguc+W8zpcLcQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=kanoAEuxzVXQIpaSOilSFN5MH+L85jRG7gsSNN6TCifuZ/wCZKk734zFuYlottvFVdh25fhTUrUKjUMlc0DPB4A9KUdWH1oKZtM4mLi7SQ9ig9Gl05pdAy1p6rheYOcHpzgOJMgKdx73xYiyE99AFglI3SKbY/W6PTxqudmiwjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=jZ3fB/R0; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-604f26055c6so7889905a12.1
        for <devicetree@vger.kernel.org>; Sat, 07 Jun 2025 04:06:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1749294388; x=1749899188; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=wX5KfR9MOdyE8SuFH1WwTnQT5xWHkVGETwnX9lS5vz8=;
        b=jZ3fB/R075s+xWvhzcLNCOqRWPyYWSjvQae1SdkVuENt/lZrOcmGXWO7tPdRWUjW1e
         y/Xhii0B3bTvy19A+3CvTL8cusSflEurX/Hk5zci4Aj6RNe5oyfQMYNXGuxCyYcWk9eV
         p7OSkjYke/QkLzw6iNkGaIJWj0eEgqRn1Qi3eu4p1sRaVOOAAgGzABW93a8xCyN0jTY/
         ESKQP+91KIlEbGjGkcZlD7KZO4j3Xy8VSPhv5dVwULe1RrBL7NxfGu6zu33X76Isecw/
         f9XXGV93qOsRHKz7D35yFN9XyrsWNR8ywJ23oEgls71v1xBBMhPP4FhR3bFdQgc1c8Ya
         7IkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749294388; x=1749899188;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wX5KfR9MOdyE8SuFH1WwTnQT5xWHkVGETwnX9lS5vz8=;
        b=W8kzJcYgR7pFMu7A2vacfEQNWQPsLtGoexuJoDEFO6irYVE6IwSXXNfTxSB2i95dTT
         kveznVOl5U3vIf+oY4/FGxI5OROzPOmTwOH0uATr0sDEjXW2M1ECYjOz1Hp7BTw+mrjT
         PrczRan9/vk9wOlPS65zapQcFSQD8GGGBDqYPWKXMKWmvn4R10++Ggasvry0txbGAUom
         eMCx7+CF8IxO/SgMK+mgcnVoYBqis0krmIkSHJwEt8RXgW7KdoEHZb3/n0zFcP5wEPtB
         /MeMOxAOACD/iYAK7dOARVZ6wA2shpyWPHKorgi0Zg122JNlEhD0US20esON8IX17PNh
         CNdw==
X-Forwarded-Encrypted: i=1; AJvYcCX2UCBnwgJz/1yo2kUgCuh2danIa95437j+gPqMjYFE8Wqy/8fOzpija3J3neTvWOUTDrSqV0aOoI/F@vger.kernel.org
X-Gm-Message-State: AOJu0YxwNVRPH2pfadGJxhVAKz7+LHpmBDfvKzU5kXdrmzJ1wJFGYZRn
	8Pp4ZRIJjFPXvJ/iiZXqsyJxEZ7pkzQS1HZATN54cc8njSdyFxM5+l0gZT2X7KuRC18P9FzEKzf
	eHoCd
X-Gm-Gg: ASbGnctB6vpQi8usfBgU0mwbk5hYw5uv77KMF6fvC76MmZWRdRjnVbkQ5m5hGfFY7vk
	yU5daQvw9+bD7bL2MGsvZkf5T8Vb6EX3xsl8scuvBBih00Ujf+kRB3itjrMTzneo36gjZ42vTHe
	vwR3L+PiMzzikoQvRyySjTSWRiEFzeNqvKM6ZIZU7BJmANrljVKzUUKDfdlGdp2kHrZp4Tta47R
	gioMTdIuodkbqdvYR2JGve6/qOCnI/hdbdcxM7ba5mwNQqBEpKOKUDSwZWgUGmfxM5cYqReA4sZ
	igK+ezKrfzHPY8efY5VwEyP04byBhhlCNmu4L9nfMDi0lU6oim8DUl4LC+mM/+06vQ0tUlk=
X-Google-Smtp-Source: AGHT+IE+q4EZEeGcYbHs9Cr6SWwfg3TvuJIon+Nk+US7johX0he69tUZyS1HyJZxxpkozjkb+cd2AQ==
X-Received: by 2002:a17:906:6a27:b0:ad5:2d5d:2069 with SMTP id a640c23a62f3a-ade1a9da675mr665733666b.13.1749294387390;
        Sat, 07 Jun 2025 04:06:27 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.126])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ade1d75467fsm263858366b.14.2025.06.07.04.06.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Jun 2025 04:06:26 -0700 (PDT)
Message-ID: <62e644dd-e193-4375-8d05-82b51a8cf0a4@tuxon.dev>
Date: Sat, 7 Jun 2025 14:06:25 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/4] ARM: dts: microchip: sama5d27_wlsom1: rename
 spi-cs-setup-ns property to spi-cs-setup-delay-ns
To: Manikandan Muralidharan <manikandan.m@microchip.com>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, tudor.ambarus@linaro.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20250521054309.361894-1-manikandan.m@microchip.com>
 <20250521054309.361894-3-manikandan.m@microchip.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <20250521054309.361894-3-manikandan.m@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 21.05.2025 08:43, Manikandan Muralidharan wrote:
> The naming scheme for delay properties includes "delay" in the name,
> so renaming spi-cs-setup-ns property to spi-cs-setup-delay-ns.
> 
> Fixes: 417e58ea41ab ("ARM: dts: at91-sama5d27_wlsom1: Set sst26vf064b SPI NOR flash at its maximum frequency")
> Signed-off-by: Manikandan Muralidharan <manikandan.m@microchip.com>

Reviewed-by: Claudiu Beznea <claudiu.beznea@tuxon.dev>


> ---
> changes in v2:
> - add fixes tag
> ---
>  arch/arm/boot/dts/microchip/at91-sama5d27_wlsom1.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/microchip/at91-sama5d27_wlsom1.dtsi b/arch/arm/boot/dts/microchip/at91-sama5d27_wlsom1.dtsi
> index ef11606a82b3..9543214adc9f 100644
> --- a/arch/arm/boot/dts/microchip/at91-sama5d27_wlsom1.dtsi
> +++ b/arch/arm/boot/dts/microchip/at91-sama5d27_wlsom1.dtsi
> @@ -234,7 +234,7 @@ qspi1_flash: flash@0 {
>  		compatible = "jedec,spi-nor";
>  		reg = <0>;
>  		spi-max-frequency = <104000000>;
> -		spi-cs-setup-ns = <7>;
> +		spi-cs-setup-delay-ns = <7>;
>  		spi-rx-bus-width = <4>;
>  		spi-tx-bus-width = <4>;
>  		m25p,fast-read;


