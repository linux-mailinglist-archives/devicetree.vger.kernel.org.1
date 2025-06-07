Return-Path: <devicetree+bounces-183480-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BE92EAD0D0E
	for <lists+devicetree@lfdr.de>; Sat,  7 Jun 2025 13:17:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EDFEB3AA09A
	for <lists+devicetree@lfdr.de>; Sat,  7 Jun 2025 11:17:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51179219E8F;
	Sat,  7 Jun 2025 11:17:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="fhvLgogC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 509EC20D4E3
	for <devicetree@vger.kernel.org>; Sat,  7 Jun 2025 11:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749295055; cv=none; b=fkblljDZgGhmylN/MAUttx8L0lLzEHB8pQZjwoBeAzialO/Pity/CSo5HlJC35VepvEmD12KaVZiP1IxIUIJzCeGWgaBiz2g0FDTyQ3Yb4J0zPBkSP9uKiWQx2l8O+8UAEVlK3tvq2XU49LBLQQmt7xfTozWKM4LlFAmxM17Iyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749295055; c=relaxed/simple;
	bh=J+8YUoNwKerodc6AzXY7IQnt1PBaWRXB+NIFn2HfxDM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kvwCpgavU7xCZvum6XvWwWaAPpXY5kMuaZ4J4YY7ocC01fcOFoPLzihYzkcMx+LZTDN2bCBHSbcbJW0Yjy+es/i5+IiBepiTJUxMvrfDOr4JfKyf+Dmy6Zw0kbBz7ttA5POeSXV0JhOPKwi21issFygT2XHZ8q/Se7UQI/9gnyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=fhvLgogC; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-605b9488c28so4732663a12.2
        for <devicetree@vger.kernel.org>; Sat, 07 Jun 2025 04:17:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1749295052; x=1749899852; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Wo2/J5ZAB6lqJfCe5NRG1BVNt7OTDs/ZB+OcWmMX8Vg=;
        b=fhvLgogCXumzrAbmVQ/Sdvf7BSniM2/YKzEBt7uwvUZgaIRs9wepfIBSpsN0xn6a6k
         hPP+kp12Fo8D0CURuTUZx5H5e0Jvp7WPijqrPtKzNnmyFBe15dHXSz5NKqhMkKKh8f2i
         R9QEuGVDUvo9GM0fTtcRn6AsutD2KPurMCBzM1fqUkAvgeUUwT6mNjDJsVTXt9toNR6u
         LHDBoFNondttNCqKpYJHR1rdXRh7gm3PGuP7qCOrE0aLdtgy94gARpaem947sn07rU26
         eRv/WnkTf5V8W8P9JjhJIta0tD5KMn1D9g0ObZCISmMfCYxQOM6neGznpgiRFPAb+4GP
         9U1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749295052; x=1749899852;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Wo2/J5ZAB6lqJfCe5NRG1BVNt7OTDs/ZB+OcWmMX8Vg=;
        b=AcKqmKa9No6v/lbThxTN+31I+rzqEBk1WarAl9Y4x5/HWWakcknKc0sU5KWWW3mhsH
         hR+RqhpvsGchzEQXB5dnwUkNbmerh1BvFnS9hS1qYpvO1YP9Iy3qv1MXCMJ9CvCTaCW1
         EP/Lqu+u0hyw2rxD7z3OEonn9kKj8iZL35vY3X9Yc6EBj1X69T6zq/bUE3UrWUUsTqsI
         BqXsBBM3h+nO+NE1Ok96/Ywgyy1LAacy550VH9VxRkL09FHoikZgm+Yox5mmWifVBq59
         W8UHSfh1DDTkEzihJrXL5dJHHIFEDFFhjuevvn6ZrdDjc1vmEhhO8WVioRWvEl5UXPqX
         pv+A==
X-Forwarded-Encrypted: i=1; AJvYcCWEHnWYksIXPLWjFDtP8swwTHbE+Y0dSu+VKtFIMHueaO0rwJwrOPhZzspUO+x9on4obnq8QXNG4auq@vger.kernel.org
X-Gm-Message-State: AOJu0YxyVRCljal/kSQUI+ArGb4xaCNSN56rlhKZTfWyFaHxAs5TRqJi
	GGZdgQfFgG1QeqkPso2soVYEy7+qp8jLfWZI6QwPtwBw3IOQH1c/9CXUO1f+Ke3Th1BVY9eV2vh
	CDelp
X-Gm-Gg: ASbGncubY/GgBgsC0UBqPA9Ulsn+5g6/N2Mm4DE0dmCRzQEAr+cfUjLOkD5jghHUGbO
	WXZaH7JboayfTrWVUhXxiMrmmMK/fykS5mMldPboEeBn7gbmyms2MPEsVGm28BGZmqxWsU3wZ1+
	kjG5UStgM8NmtMVtMsAk1kP6ru8XaMA0CJQ1UNbwYONj4Nzwt8ZS2tJMWnXm93YZsTvRBBqKmDq
	FG1UxeTyL4WnwO3QLWSrJQj3f8JYnajrzO9k0Lmev8l3yF6faSnlrUzRWQGfGUFYdLEV2RMZ38t
	WyLQFO9U7XbuWp0HtSsCl779SWNc6fGcHhmd++mLMqPxqnrK6Z18Yc3aOPWp
X-Google-Smtp-Source: AGHT+IHler8uepWC8BUcQVWFTPho53gfFnJDIZ0DzlC3E7bSqB1Irh8C7asB6/PASoLmm0Q2jJsedQ==
X-Received: by 2002:a17:907:94cc:b0:ad8:9f50:d8c1 with SMTP id a640c23a62f3a-ade1aab97cemr626104166b.31.1749295051679;
        Sat, 07 Jun 2025 04:17:31 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.126])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ade1dc1c316sm263963066b.98.2025.06.07.04.17.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Jun 2025 04:17:31 -0700 (PDT)
Message-ID: <0fb997c0-468c-4c24-9b84-6d4075723b49@tuxon.dev>
Date: Sat, 7 Jun 2025 14:17:29 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] ARM: dts: microchip: use recent scl/sda gpio bindings
To: Wolfram Sang <wsa+renesas@sang-engineering.com>,
 linux-arm-kernel@lists.infradead.org
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, devicetree@vger.kernel.org
References: <20250519112107.2980-1-wsa+renesas@sang-engineering.com>
 <20250519112107.2980-4-wsa+renesas@sang-engineering.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <20250519112107.2980-4-wsa+renesas@sang-engineering.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 19.05.2025 14:21, Wolfram Sang wrote:
> We have dedictaded bindings for scl/sda nowadays. Switch away from the
> deprecated plain 'gpios' property.
> 
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>

Reviewed-by: Claudiu Beznea <claudiu.beznea@tuxon.dev>

> ---
>  arch/arm/boot/dts/microchip/at91rm9200.dtsi  |  5 ++---
>  arch/arm/boot/dts/microchip/at91sam9260.dtsi |  5 ++---
>  arch/arm/boot/dts/microchip/at91sam9261.dtsi |  4 ++--
>  arch/arm/boot/dts/microchip/at91sam9263.dtsi |  5 ++---
>  arch/arm/boot/dts/microchip/at91sam9g45.dtsi |  5 ++---
>  arch/arm/boot/dts/microchip/at91sam9n12.dtsi |  5 ++---
>  arch/arm/boot/dts/microchip/at91sam9rl.dtsi  |  8 ++++----
>  arch/arm/boot/dts/microchip/at91sam9x5.dtsi  | 15 ++++++---------
>  8 files changed, 22 insertions(+), 30 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/microchip/at91rm9200.dtsi b/arch/arm/boot/dts/microchip/at91rm9200.dtsi
> index 2a4c83d88733..e105ad855ce8 100644
> --- a/arch/arm/boot/dts/microchip/at91rm9200.dtsi
> +++ b/arch/arm/boot/dts/microchip/at91rm9200.dtsi
> @@ -714,9 +714,8 @@ usb0: usb@300000 {
>  
>  	i2c-gpio-0 {
>  		compatible = "i2c-gpio";
> -		gpios = <&pioA 25 GPIO_ACTIVE_HIGH /* sda */
> -			 &pioA 26 GPIO_ACTIVE_HIGH /* scl */
> -			>;
> +		sda-gpios = <&pioA 25 GPIO_ACTIVE_HIGH>;
> +		scl-gpios = <&pioA 26 GPIO_ACTIVE_HIGH>;
>  		i2c-gpio,sda-open-drain;
>  		i2c-gpio,scl-open-drain;
>  		i2c-gpio,delay-us = <2>;	/* ~100 kHz */
> diff --git a/arch/arm/boot/dts/microchip/at91sam9260.dtsi b/arch/arm/boot/dts/microchip/at91sam9260.dtsi
> index ec973f07a961..fc0b6a73204f 100644
> --- a/arch/arm/boot/dts/microchip/at91sam9260.dtsi
> +++ b/arch/arm/boot/dts/microchip/at91sam9260.dtsi
> @@ -781,9 +781,8 @@ nand_controller: nand-controller {
>  
>  	i2c_gpio0: i2c-gpio-0 {
>  		compatible = "i2c-gpio";
> -		gpios = <&pioA 23 GPIO_ACTIVE_HIGH /* sda */
> -			 &pioA 24 GPIO_ACTIVE_HIGH /* scl */
> -			>;
> +		sda-gpios = <&pioA 23 GPIO_ACTIVE_HIGH>;
> +		scl-gpios = <&pioA 24 GPIO_ACTIVE_HIGH>;
>  		i2c-gpio,sda-open-drain;
>  		i2c-gpio,scl-open-drain;
>  		i2c-gpio,delay-us = <2>;	/* ~100 kHz */
> diff --git a/arch/arm/boot/dts/microchip/at91sam9261.dtsi b/arch/arm/boot/dts/microchip/at91sam9261.dtsi
> index 0b556c234557..d1d678b77e84 100644
> --- a/arch/arm/boot/dts/microchip/at91sam9261.dtsi
> +++ b/arch/arm/boot/dts/microchip/at91sam9261.dtsi
> @@ -655,8 +655,8 @@ i2c-gpio-0 {
>  		compatible = "i2c-gpio";
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&pinctrl_i2c_bitbang>;
> -		gpios = <&pioA 7 GPIO_ACTIVE_HIGH>, /* sda */
> -			<&pioA 8 GPIO_ACTIVE_HIGH>; /* scl */
> +		sda-gpios = <&pioA 7 GPIO_ACTIVE_HIGH>;
> +		scl-gpios = <&pioA 8 GPIO_ACTIVE_HIGH>;
>  		i2c-gpio,sda-open-drain;
>  		i2c-gpio,scl-open-drain;
>  		i2c-gpio,delay-us = <2>;	/* ~100 kHz */
> diff --git a/arch/arm/boot/dts/microchip/at91sam9263.dtsi b/arch/arm/boot/dts/microchip/at91sam9263.dtsi
> index 3e9e5ce7c6c8..a4b5d1f228f9 100644
> --- a/arch/arm/boot/dts/microchip/at91sam9263.dtsi
> +++ b/arch/arm/boot/dts/microchip/at91sam9263.dtsi
> @@ -826,9 +826,8 @@ nand_controller1: nand-controller {
>  
>  	i2c-gpio-0 {
>  		compatible = "i2c-gpio";
> -		gpios = <&pioB 4 GPIO_ACTIVE_HIGH /* sda */
> -			 &pioB 5 GPIO_ACTIVE_HIGH /* scl */
> -			>;
> +		sda-gpios = <&pioB 4 GPIO_ACTIVE_HIGH>;
> +		scl-gpios = <&pioB 5 GPIO_ACTIVE_HIGH>;
>  		i2c-gpio,sda-open-drain;
>  		i2c-gpio,scl-open-drain;
>  		i2c-gpio,delay-us = <2>;	/* ~100 kHz */
> diff --git a/arch/arm/boot/dts/microchip/at91sam9g45.dtsi b/arch/arm/boot/dts/microchip/at91sam9g45.dtsi
> index 535e26e05e99..4e00ed2d3ecd 100644
> --- a/arch/arm/boot/dts/microchip/at91sam9g45.dtsi
> +++ b/arch/arm/boot/dts/microchip/at91sam9g45.dtsi
> @@ -1010,9 +1010,8 @@ nand_controller: nand-controller {
>  
>  	i2c-gpio-0 {
>  		compatible = "i2c-gpio";
> -		gpios = <&pioA 20 GPIO_ACTIVE_HIGH /* sda */
> -			 &pioA 21 GPIO_ACTIVE_HIGH /* scl */
> -			>;
> +		sda-gpios = <&pioA 20 GPIO_ACTIVE_HIGH>;
> +		scl-gpios = <&pioA 21 GPIO_ACTIVE_HIGH>;
>  		i2c-gpio,sda-open-drain;
>  		i2c-gpio,scl-open-drain;
>  		i2c-gpio,delay-us = <5>;	/* ~100 kHz */
> diff --git a/arch/arm/boot/dts/microchip/at91sam9n12.dtsi b/arch/arm/boot/dts/microchip/at91sam9n12.dtsi
> index 2f930c39ce4d..af41c3dbb4bf 100644
> --- a/arch/arm/boot/dts/microchip/at91sam9n12.dtsi
> +++ b/arch/arm/boot/dts/microchip/at91sam9n12.dtsi
> @@ -786,9 +786,8 @@ nand_controller: nand-controller {
>  
>  	i2c-gpio-0 {
>  		compatible = "i2c-gpio";
> -		gpios = <&pioA 30 GPIO_ACTIVE_HIGH /* sda */
> -			 &pioA 31 GPIO_ACTIVE_HIGH /* scl */
> -			>;
> +		sda-gpios = <&pioA 30 GPIO_ACTIVE_HIGH>;
> +		scl-gpios = <&pioA 31 GPIO_ACTIVE_HIGH>;
>  		i2c-gpio,sda-open-drain;
>  		i2c-gpio,scl-open-drain;
>  		i2c-gpio,delay-us = <2>;	/* ~100 kHz */
> diff --git a/arch/arm/boot/dts/microchip/at91sam9rl.dtsi b/arch/arm/boot/dts/microchip/at91sam9rl.dtsi
> index 1fec9fcc7cd1..de74cf2980a0 100644
> --- a/arch/arm/boot/dts/microchip/at91sam9rl.dtsi
> +++ b/arch/arm/boot/dts/microchip/at91sam9rl.dtsi
> @@ -833,8 +833,8 @@ rtc@fffffe00 {
>  
>  	i2c-gpio-0 {
>  		compatible = "i2c-gpio";
> -		gpios = <&pioA 23 GPIO_ACTIVE_HIGH>, /* sda */
> -			<&pioA 24 GPIO_ACTIVE_HIGH>; /* scl */
> +		sda-gpios = <&pioA 23 GPIO_ACTIVE_HIGH>;
> +		scl-gpios = <&pioA 24 GPIO_ACTIVE_HIGH>;
>  		i2c-gpio,sda-open-drain;
>  		i2c-gpio,scl-open-drain;
>  		i2c-gpio,delay-us = <2>;	/* ~100 kHz */
> @@ -847,8 +847,8 @@ i2c-gpio-0 {
>  
>  	i2c-gpio-1 {
>  		compatible = "i2c-gpio";
> -		gpios = <&pioD 10 GPIO_ACTIVE_HIGH>, /* sda */
> -			<&pioD 11 GPIO_ACTIVE_HIGH>; /* scl */
> +		sda-gpios = <&pioD 10 GPIO_ACTIVE_HIGH>;
> +		scl-gpios = <&pioD 11 GPIO_ACTIVE_HIGH>;
>  		i2c-gpio,sda-open-drain;
>  		i2c-gpio,scl-open-drain;
>  		i2c-gpio,delay-us = <2>;	/* ~100 kHz */
> diff --git a/arch/arm/boot/dts/microchip/at91sam9x5.dtsi b/arch/arm/boot/dts/microchip/at91sam9x5.dtsi
> index 17bdf1e4db01..9070fd06995a 100644
> --- a/arch/arm/boot/dts/microchip/at91sam9x5.dtsi
> +++ b/arch/arm/boot/dts/microchip/at91sam9x5.dtsi
> @@ -933,9 +933,8 @@ nand_controller: nand-controller {
>  
>  	i2c-gpio-0 {
>  		compatible = "i2c-gpio";
> -		gpios = <&pioA 30 GPIO_ACTIVE_HIGH /* sda */
> -			 &pioA 31 GPIO_ACTIVE_HIGH /* scl */
> -			>;
> +		sda-gpios = <&pioA 30 GPIO_ACTIVE_HIGH>;
> +		scl-gpios = <&pioA 31 GPIO_ACTIVE_HIGH>;
>  		i2c-gpio,sda-open-drain;
>  		i2c-gpio,scl-open-drain;
>  		i2c-gpio,delay-us = <2>;	/* ~100 kHz */
> @@ -948,9 +947,8 @@ &pioA 31 GPIO_ACTIVE_HIGH /* scl */
>  
>  	i2c-gpio-1 {
>  		compatible = "i2c-gpio";
> -		gpios = <&pioC 0 GPIO_ACTIVE_HIGH /* sda */
> -			 &pioC 1 GPIO_ACTIVE_HIGH /* scl */
> -			>;
> +		sda-gpios = <&pioC 0 GPIO_ACTIVE_HIGH>;
> +		scl-gpios = <&pioC 1 GPIO_ACTIVE_HIGH>;
>  		i2c-gpio,sda-open-drain;
>  		i2c-gpio,scl-open-drain;
>  		i2c-gpio,delay-us = <2>;	/* ~100 kHz */
> @@ -963,9 +961,8 @@ &pioC 1 GPIO_ACTIVE_HIGH /* scl */
>  
>  	i2c-gpio-2 {
>  		compatible = "i2c-gpio";
> -		gpios = <&pioB 4 GPIO_ACTIVE_HIGH /* sda */
> -			 &pioB 5 GPIO_ACTIVE_HIGH /* scl */
> -			>;
> +		sda-gpios = <&pioB 4 GPIO_ACTIVE_HIGH>;
> +		scl-gpios = <&pioB 5 GPIO_ACTIVE_HIGH>;
>  		i2c-gpio,sda-open-drain;
>  		i2c-gpio,scl-open-drain;
>  		i2c-gpio,delay-us = <2>;	/* ~100 kHz */


