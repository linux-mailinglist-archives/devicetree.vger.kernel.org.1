Return-Path: <devicetree+bounces-125941-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 887029DFBB1
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 09:14:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D28E6B2222A
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 08:14:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2E581F9ED0;
	Mon,  2 Dec 2024 08:14:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="PMKu3bUA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 113801F9EB4
	for <devicetree@vger.kernel.org>; Mon,  2 Dec 2024 08:14:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733127271; cv=none; b=l/94conKEsQVeETvQYrUhtOEBR7X53ogAgFM8cXwmZ9qqMjbRvbZr7PBTRvDJ+BEfHzSE5/p5yzrw64xcRGDdhq2JzpbnU98p1vJN41X/FkiYDmeS3aBqZldH7DWEB496hnJ3pz1XTrS2iTtu57MvlLvLd1jKLvsP7FYnnuJHtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733127271; c=relaxed/simple;
	bh=CEYotEMvMNVSJqLeHltkLYYSQQkgWDshBqAqZkBbu0M=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=QkEidPTZe3YHizcCX0hs26ZlZSX7iaDJXw3+PiCKpZMGkM6x5fIqsSR66AFIJ2nD8XbLbEmLxnLQQzh0zoCFvUjysk4lP2IodO1R7r7rv0kBgNy88kT8vk2e3r7r8sUHa0JDCtwAkHHykYmarEZBBvI5TZ+G21RTq4PBkVLfI5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=PMKu3bUA; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-43497839b80so23883755e9.2
        for <devicetree@vger.kernel.org>; Mon, 02 Dec 2024 00:14:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1733127268; x=1733732068; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hoqd94D+feLlJAd8AMaa3RK9Jl4eaWLUHOfCXcSoW5M=;
        b=PMKu3bUAiHSsQZEONPfZFs2wt35PByQJIJhkVsi+hDcmMoVnESV9SaclRj/urS4vct
         OY+aWhqGJdswT4xBDi7zg3+xfbfOSC3XQ7l2uVbGNYtJHJlWK5G8reTrjEePAXZANBuU
         uNhRDumxWRxeQns6ZZnzqD2xWUoM574mmYmrGLq7qE5t4HJCPzd6tNUCCTBjveYBQIvH
         eaoaYi26cwbRgDyV9FEtAfzkB7K3GTom6EJSRx/lb2wvW0FieWPAbbm3LyeOYaP7uBSQ
         GnxerDH3mHBhTDbJhxbLH8lAfI1NIpSuXG8K/Tgrk4nzoi0A4TnzMxEUgwvQETyc9K4r
         kAZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733127268; x=1733732068;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hoqd94D+feLlJAd8AMaa3RK9Jl4eaWLUHOfCXcSoW5M=;
        b=T1K9dLJJ7tb0KwW8HMk7//sW2D+O8xVhHJUyEXknJwka2JRd8g7JqlkmCjmOtW6dIU
         vGf31jv+Z1jhdeBbq7Klmlfcd34e0TVSyjb68U0UI0GKNgBLRblGffn0cKcMwlAbOSy4
         bZen2KqQjZDRAz+HooFjy0cgBY1aGnVRQdJQPjleg2QDd+qEMBYzsyMziqih5pjegu1O
         b9SArllXVil4j2stblg7tj5j1jVqkWhI+KyE15tlrWS1JdfSnqoMnnYyaUsDnbdokcWY
         m3zGfWWSE4wXVgVyaXBNhwUU/5XSVmBwBEzvS6zyQuMn8g75Rvc4Qnp9heaNtkeBNDzE
         jFAA==
X-Forwarded-Encrypted: i=1; AJvYcCVNAXJhAJPVVlSdzRV/T53bKF4d3CmVF8vp8Da7luthg687oXGTJ9NyDCZ0NIEgYUHQNGKiugSesHvv@vger.kernel.org
X-Gm-Message-State: AOJu0YxtOAufK73rsoZ9kmSJurc8D2H9vSUGZKeZH42hqysqO7qffoOE
	ggAVnCYktx15bQ+VUqhISIKwD5wthiPhxhohMg4Qj2vV7vEEdumOujxl31DwKI0=
X-Gm-Gg: ASbGncskcKvsNchA2m7hQafWUOFsITtHvbiCi5mll1S3Lm7PxbkFFK9Gv0xz3Oh5wtl
	ysgL/1xaqnhK/tpI97EUN2HCibK6mUT29PWqJVtcoxSFZBcP5byb1+Jks4ybt6MxRmG8fVLINYs
	qmXs/dYsIE7w67qjLKtu6VuXA+Icwjq4J2IY0dELTa9A+2qOPD6lb8iQQ9buR6js7L3/pOXybFw
	w3p3pAc9qPeMXTSrjcuVO1E5lpCjE8nu/cVZdptuFPlBFLFoY+WMXDo2g==
X-Google-Smtp-Source: AGHT+IEtDqzYKWw9Benv/Yt2JeqHtMT7suJIclYJoqZ4tha5f1Yj7UJIk1x1IGm4le52EEPyGssZLA==
X-Received: by 2002:a05:600c:1552:b0:42c:ba83:3f01 with SMTP id 5b1f17b1804b1-434a9dc36b6mr195508445e9.8.1733127268332;
        Mon, 02 Dec 2024 00:14:28 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.46])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434b0dc63f7sm142240315e9.23.2024.12.02.00.14.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Dec 2024 00:14:27 -0800 (PST)
Message-ID: <2d8dd1c8-fd4b-4dc1-ba62-312ac86335a6@tuxon.dev>
Date: Mon, 2 Dec 2024 10:14:25 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] ARM: dts: microchip: sam9x75_curiosity: Add power
 monitor support
Content-Language: en-US
To: Mihai Sain <mihai.sain@microchip.com>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20241122080523.3941-1-mihai.sain@microchip.com>
 <20241122080523.3941-3-mihai.sain@microchip.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20241122080523.3941-3-mihai.sain@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Mihai,

On 22.11.2024 10:05, Mihai Sain wrote:
> Add PAC1934 support in order to monitor the board power consumption.
> Device is connected on flexcom7 in twi mode.
> 
> [root@SAM9X75 ~]$ awk -f pac1934.awk
> VDD3V3 current:   10.675 mA, voltage: 3295.41 mV
> VDDOUT4 current:  5.7625 mA, voltage: 1196.78 mV
> VDDCORE current: 115.442 mA, voltage: 1243.65 mV
> VDDIODDR current: 29.585 mA, voltage: 1345.21 mV
> 
> Signed-off-by: Mihai Sain <mihai.sain@microchip.com>
> ---
>  .../dts/microchip/at91-sam9x75_curiosity.dts  | 52 +++++++++++++++++++
>  1 file changed, 52 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/microchip/at91-sam9x75_curiosity.dts b/arch/arm/boot/dts/microchip/at91-sam9x75_curiosity.dts
> index d453800f8e35..76d7a756e08c 100644
> --- a/arch/arm/boot/dts/microchip/at91-sam9x75_curiosity.dts
> +++ b/arch/arm/boot/dts/microchip/at91-sam9x75_curiosity.dts
> @@ -198,6 +198,52 @@ regulator-state-standby {
>  	};
>  };
>  
> +&flx7 {
> +	atmel,flexcom-mode = <ATMEL_FLEXCOM_MODE_TWI>;
> +	status = "okay";
> +};
> +
> +&i2c7 {
> +	dmas = <0>, <0>;
> +	i2c-analog-filter;
> +	i2c-digital-filter;
> +	i2c-digital-filter-width-ns = <35>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_flx7_default>;
> +	status = "okay";
> +
> +	power-monitor@10 {
> +		compatible = "microchip,pac1934";
> +		reg = <0x10>;
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		channel@1 {
> +			reg = <0x1>;
> +			shunt-resistor-micro-ohms = <10000>;
> +			label = "VDD3V3";
> +		};
> +
> +		channel@2 {
> +			reg = <0x2>;
> +			shunt-resistor-micro-ohms = <10000>;
> +			label = "VDDOUT4";

On the schematics at [1] this seems to be named DCDC4. Is there a mistake
on [1] or this patch needs adjustments? If so, I can do it while applying.

Thank you,
Claudiu

[1]
https://ww1.microchip.com/downloads/aemDocuments/documents/MPU32/ProductDocuments/UserGuides/SAM9X75-Curiosity-User-Guide-DS60001859.pdf

> +		};
> +
> +		channel@3 {
> +			reg = <0x3>;
> +			shunt-resistor-micro-ohms = <10000>;
> +			label = "VDDCORE";
> +		};
> +
> +		channel@4 {
> +			reg = <0x4>;
> +			shunt-resistor-micro-ohms = <10000>;
> +			label = "VDDIODDR";
> +		};
> +	};
> +};
> +
>  &i2s {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_i2s_default>;
> @@ -231,6 +277,12 @@ pinctrl_flx6_default: flx6-default {
>  				<AT91_PIOA 24 AT91_PERIPH_A AT91_PINCTRL_PULL_UP>,
>  				<AT91_PIOA 25 AT91_PERIPH_A AT91_PINCTRL_PULL_UP>;
>  		};
> +
> +		pinctrl_flx7_default: flx7-default {
> +			atmel,pins =
> +				<AT91_PIOC 0 AT91_PERIPH_C AT91_PINCTRL_PULL_UP>,
> +				<AT91_PIOC 1 AT91_PERIPH_C AT91_PINCTRL_PULL_UP>;
> +		};
>  	};
>  
>  	gpio-keys {

