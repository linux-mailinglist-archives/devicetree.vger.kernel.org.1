Return-Path: <devicetree+bounces-183487-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 54A97AD0D32
	for <lists+devicetree@lfdr.de>; Sat,  7 Jun 2025 13:44:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C0D6A7A9557
	for <lists+devicetree@lfdr.de>; Sat,  7 Jun 2025 11:43:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A3EC221281;
	Sat,  7 Jun 2025 11:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="i4h6b5Sj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0163221270
	for <devicetree@vger.kernel.org>; Sat,  7 Jun 2025 11:44:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749296662; cv=none; b=n5sa3KweHyskv2gXjSpLrluOFlxhOZK+KcN8QnH5BwyIAhdxBu9wyNxDMSfDRjOmRsRtGaqh5FK1OdflxMw4y+C+XgZTmhvia3sOx8i2jxiRYoDnl0aMFJzJi21hxndHFUtwe5sHbFU6Z+GXQuhytre9FyhMgfORUO3eV2fbAQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749296662; c=relaxed/simple;
	bh=gv0tMOWwWLz9TNHcfO9BCckdP/os8K0yPX8V/NxNjNw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MJvyiVaMCOIoRghEAxMqzs2YrPxhIF9Lj3FzrU9Kww8s6tawHMC4i0+GkohEbTJiAnjR1CPPYIR+ubSJuzSrebAS6TGeeiCHEq3d1Km0j4/xuhMgsGii+fEDnFtZb08gSAJ1NV+nj/h3ogng51HGI+MKIAtGUUMZ75Wvd4STY0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=i4h6b5Sj; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-ad883afdf0cso554674066b.0
        for <devicetree@vger.kernel.org>; Sat, 07 Jun 2025 04:44:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1749296658; x=1749901458; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UymOFrjabx3ry9XfCk+Bu/z/xm63u4bINQR9bUcHuP0=;
        b=i4h6b5Sj1/YxVOjsQpWrQtiCtX/BGlwKU9/b/q6azV5AdMlEYDWzNLz1EkCW4FjZth
         gaWuXsQzF1smqwdbyx0HC+6oYmwYmtkk6geJFzhI/gqy5I2uiERo0uHu2bvtRDjaUbcA
         blUjLMdow0fM8qt+yIdPUoA023Bb6R7kYtRAdz1uAtUKO1jz7MX7e6NP2EM6BVbmqXjI
         Yihd8/WLrq2PbkKG79xt2GxYzAJEH0fZkQ4zTzi4zssEEL2dLomWETMGWernt69AOk0/
         l+NRhwR1HrTJ6hbJLlFHNWohCyhCDiQPdO5OuhpvaYmaD4Go7xaRU3PB1KBI6lEzVS4H
         xxKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749296658; x=1749901458;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UymOFrjabx3ry9XfCk+Bu/z/xm63u4bINQR9bUcHuP0=;
        b=GB+N0FYmNY3JsS16JOck7jwNe05SVSk/UmoC1jhGLTkPT4IDTIRvtz/EPvcrWzOvZN
         V09xH65SGA9AuC9/FOjQ1YRN7oOlOn76Oofp/yBcSVzidX4EQTnHofLVNsWfbAhJj1uC
         52fnMowKF2ZKmiR/npC15DD98rrBNrMygv809TR99ZQjUtORdvdYDnws6sLd+emJgeUx
         ES9f8P4PVLAJsSdRDNPbhZqTlA6Hh2viligiGPg0TgH14DNAB0QxjrHv7wHlltedzWJb
         EghPx8HolrCVzQQp1+dPyrqhCOvju14qzbkBETbI8tps9397kK0MQzNGnFSMjpxklgwM
         nTxg==
X-Forwarded-Encrypted: i=1; AJvYcCUOLGyS+UdhItLzqr/jOnwLglg73bM8IhkkUlWF0vhe74/CflYzWMdGRUjbCm1jFYHzEY2R5koB6QBk@vger.kernel.org
X-Gm-Message-State: AOJu0YxQIztoSKcs/PduBMOJ0Yr75UWTcS6ZBKy7DsvFIQOC04jQKiId
	Echu5fDmAxj6EJpuOF8R0A0EvkRMsB6bO/ErZP59y2ucQLlYhl/tejAFSyBE3JmGVns=
X-Gm-Gg: ASbGncso0yA4DTTN2oV0S7ZE91vZ2fzcIwOGxTg7oemUrWOqjVr/BQjwip4JFN8HOeR
	mfI4XK3A/ys+nZz3o+xXElkBirrkCsVvZlUdiiEEQ21a2Dx/xBKCin33taojQTxLI8X3oWTlEan
	KdHyUWsAJlrmXncQ6Ld/KnLlZEFGMnqHQEObm/p13ytCQE2c5gpG4F3mHhj3/k/3GvtkLidBb44
	f2FCQTfqZ4wQ84wwvdzdAFfz4OIpJMnXfZo0DVR/jOyYe9dEkpyBe+xOl9dp9araMPEH2R9h0bw
	r0MajF4e2hGiHm9oTZ52OaKN7yOKOuJW7hDDK/luBkUSLW6ARW6SWCDonNzAxUp/N/Ky+UI=
X-Google-Smtp-Source: AGHT+IEA1Rq7VWwYJS4G4kmb+z0nn7gMvEpZQk2GAonFxGlvr7kubnoaKOkM5BseiEpQ88K45+xR8A==
X-Received: by 2002:a17:907:9713:b0:ad8:93a3:29ba with SMTP id a640c23a62f3a-ade1aa06c53mr606411166b.17.1749296657956;
        Sat, 07 Jun 2025 04:44:17 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.126])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ade1d5f9b37sm264185666b.0.2025.06.07.04.44.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Jun 2025 04:44:17 -0700 (PDT)
Message-ID: <9391cd59-b23a-4df0-9799-e9766adac460@tuxon.dev>
Date: Sat, 7 Jun 2025 14:44:16 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 9/9] ARM: dts: microchip: sama7d65: Enable CAN bus
To: Ryan.Wanner@microchip.com, herbert@gondor.apana.org.au,
 davem@davemloft.net, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, olivia@selenic.com
Cc: linux-crypto@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <cover.1747077616.git.Ryan.Wanner@microchip.com>
 <0e34e0416c43f4de6d2cef5cea46087af4577a50.1747077616.git.Ryan.Wanner@microchip.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <0e34e0416c43f4de6d2cef5cea46087af4577a50.1747077616.git.Ryan.Wanner@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 12.05.2025 22:27, Ryan.Wanner@microchip.com wrote:
> From: Ryan Wanner <Ryan.Wanner@microchip.com>
> 
> Enable CAN bus for SAMA7D65 curiosity board.
> 
> Signed-off-by: Ryan Wanner <Ryan.Wanner@microchip.com>
> ---
>  .../dts/microchip/at91-sama7d65_curiosity.dts | 35 +++++++++++++++++++
>  1 file changed, 35 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/microchip/at91-sama7d65_curiosity.dts b/arch/arm/boot/dts/microchip/at91-sama7d65_curiosity.dts
> index 53a657cf4efb..34935179897e 100644
> --- a/arch/arm/boot/dts/microchip/at91-sama7d65_curiosity.dts
> +++ b/arch/arm/boot/dts/microchip/at91-sama7d65_curiosity.dts
> @@ -38,7 +38,24 @@ reg_5v: regulator-5v {
>  		regulator-max-microvolt = <5000000>;
>  		regulator-always-on;
>  	};
> +};
> +

Please drop the empty line in a different patch.

> +&can1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_can1_default>;
> +	status = "okay";
> +};
>  
> +&can2 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_can2_default>;
> +	status = "okay";
> +};
> +
> +&can3 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_can3_default>;
> +	status = "okay";
>  };
>  
>  &dma0 {
> @@ -278,6 +295,24 @@ &main_xtal {
>  };
>  
>  &pioa {
> +	pinctrl_can1_default: can1-default {
> +		pinmux = <PIN_PD10__CANTX1>,
> +			<PIN_PD11__CANRX1>;

The "<" on on this line would have to be aligned with the one on the
previous line. Same for the other places in this patch.

I can address all these minor bits while applying, if any.

Other than this:

Reviewed-by: Claudiu Beznea <claudiu.beznea@tuxon.dev>

> +		bias-disable;
> +	};
> +
> +	pinctrl_can2_default: can2-default {
> +		pinmux = <PIN_PD12__CANTX2>,
> +			<PIN_PD13__CANRX2>;
> +		bias-disable;
> +	};
> +
> +	pinctrl_can3_default: can3-default {
> +		pinmux = <PIN_PD14__CANTX3>,
> +			<PIN_PD15__CANRX3>;
> +		bias-disable;
> +	};
> +
>  	pinctrl_gmac0_default: gmac0-default {
>  		pinmux = <PIN_PA26__G0_TX0>,
>  			 <PIN_PA27__G0_TX1>,


