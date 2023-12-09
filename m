Return-Path: <devicetree+bounces-23434-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CACC80B458
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 13:56:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B7E361C20A43
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 12:56:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11C0413FE6;
	Sat,  9 Dec 2023 12:56:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="fBClOUl1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9BA4110F1
	for <devicetree@vger.kernel.org>; Sat,  9 Dec 2023 04:56:07 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-3331752d2b9so2136276f8f.3
        for <devicetree@vger.kernel.org>; Sat, 09 Dec 2023 04:56:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1702126566; x=1702731366; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cha3RMhWzFtMx++aeV38CHkj+sIQkrAxTwK2Y8f1WFw=;
        b=fBClOUl1vwSUpmd269E7sbM99MjyaRlHLLb/IjN4GXKgvqI0jC152vjUkX556PydgJ
         PK+1KKHPSgXfy6idotwyC2oaa6vYT/b8Wj9i/vfdZo26NDvL/S5U4ejMRaA6qJTgXMCm
         u/1I8geQXc5QzHcScp7vDEBBNpBqdoC3H4NKbMDlKnmvoTGX33jWA8l7jlPuwLvzYWwr
         uFSmf4kTGmQlEc4w8Vymzy+9uRnJN6cruTjjetRcIuvLrXq3/JPLIl4bQ2CzkjhIpBtX
         rFaFFRMMYtvkDtN2eO55bvcD7nvAt5mAVFdif7/SrCcPpOjDctoUiEMo0/AxCm/LMhhU
         D+Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702126566; x=1702731366;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cha3RMhWzFtMx++aeV38CHkj+sIQkrAxTwK2Y8f1WFw=;
        b=qI0xjZQpTI3k3xsyITc/oe0v8tg6ELoKWy3kAu0w8vv8YCdxiMAJwii9KBnX7B3xh8
         q+ZAVqsZF2KZX+e3bh+OWkn3v0OpuS2202oUA8CNO+/woqjQYAyxLgtqHmZi4H/tzqjB
         BBTnWtDJrp6oX9Vpsvn8XwfT1FiHCepGUHONMK71DosuqquwtmptQC3AVTN0t6FsxzmY
         gNLfzo7OkWgr8dXOxZoPIpco9KzvWOgV5yONLKCz8ZhE+2vyXbXXOe44q6gVro7VGlNs
         A5s3/qdKg8jJn0VKpN69kST114AB50MBNq91HU8H3Q2WExvxF91pbGVhh3z8VRd8QCev
         gN/g==
X-Gm-Message-State: AOJu0YztwscS4jigrs23fd+Uc9+gtIQ0ls3hu2VZwD37xs3VMljOo1KZ
	5FWZtTuaL3EOsQKOePnthbw71g==
X-Google-Smtp-Source: AGHT+IFa/1Iy1uYNgD7/XRuRkqfr8XdE2KlpmRUzkBTKu7/i/+f7B/CG9Qn+B4AX9jRSTeQk3dMV8w==
X-Received: by 2002:adf:fdcd:0:b0:333:4052:bfef with SMTP id i13-20020adffdcd000000b003334052bfefmr885370wrs.52.1702126565987;
        Sat, 09 Dec 2023 04:56:05 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.22])
        by smtp.gmail.com with ESMTPSA id cx7-20020a170907168700b009fc576e26e6sm2159109ejd.80.2023.12.09.04.56.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 09 Dec 2023 04:56:05 -0800 (PST)
Message-ID: <80cd8878-da98-4093-9fb5-0b702466a17c@tuxon.dev>
Date: Sat, 9 Dec 2023 14:56:04 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: microchip: sama5d27_wlsom1_ek: Remove
 mmc-ddr-3_3v property from sdmmc0 node
Content-Language: en-US
To: Mihai Sain <mihai.sain@microchip.com>, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Cc: cristian.birsan@microchip.com
References: <20231204072537.2991-1-mihai.sain@microchip.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20231204072537.2991-1-mihai.sain@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 04.12.2023 09:25, Mihai Sain wrote:
> On board the sdmmc0 interface is wired to a SD Card socket.
> According with mmc-controller bindings, the mmc-ddr-3_3v property
> is used for eMMC devices to enable high-speed DDR mode (3.3V I/O).
> Remove the mmc-ddr-3_3v property from sdmmc0 node.
> 
> Signed-off-by: Mihai Sain <mihai.sain@microchip.com>

Applied to at91-dt, thanks!

> ---
>  arch/arm/boot/dts/microchip/at91-sama5d27_wlsom1_ek.dts | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/microchip/at91-sama5d27_wlsom1_ek.dts b/arch/arm/boot/dts/microchip/at91-sama5d27_wlsom1_ek.dts
> index e055b9e2fe34..15239834d886 100644
> --- a/arch/arm/boot/dts/microchip/at91-sama5d27_wlsom1_ek.dts
> +++ b/arch/arm/boot/dts/microchip/at91-sama5d27_wlsom1_ek.dts
> @@ -197,7 +197,6 @@ qspi1_flash: flash@0 {
>  
>  &sdmmc0 {
>  	bus-width = <4>;
> -	mmc-ddr-3_3v;
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_sdmmc0_default>;
>  	status = "okay";

