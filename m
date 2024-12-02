Return-Path: <devicetree+bounces-125940-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D9E09DFBA3
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 09:08:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1E1932810D8
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 08:08:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D0C91F9427;
	Mon,  2 Dec 2024 08:08:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="VgBbCzp5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D14C1F8AEA
	for <devicetree@vger.kernel.org>; Mon,  2 Dec 2024 08:08:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733126912; cv=none; b=PCuz15e0qKVfGw2qoxDCmkFw2wzFGeROAfU83vGuuxZLcO7bT4VPV1CMbc2qK52042MyOYSFmZaUqejiFoHJkCHY3mb0D+2gPwNwql4AmkLW30Z78OL23chJoj8PrSon4dK9is6j6G2nqoEluJTfkIojLzKwJY60F1eVhygp41w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733126912; c=relaxed/simple;
	bh=iS5P/TmdSvSmouyGv1HDCNHfayN4+P7ZVBi4hwvFtak=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=sEpkU5ET0KZF+OMGzVq6ya9Pqg4l3bmxTH0vo+YWI8EGyXVSRzNTNVwcmCXWRxfAIS+hqplHEqRjhKGrjVO30x1BULRdDnKmRLu17zAO5dBJTsR21bMiObEH9jrAmrFCrdG9EdNK1NOcUcBusPOoE5qaZUq5We05Me9ydtKELCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=VgBbCzp5; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-385dece873cso1215706f8f.0
        for <devicetree@vger.kernel.org>; Mon, 02 Dec 2024 00:08:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1733126909; x=1733731709; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=biIoGOQqyq3N6XA0zNtfB70JTNOwYolG4EVywUtJAns=;
        b=VgBbCzp5ANLq93+U0LSqcq7eAwKg60YI4/c1qSQNNGLPFS0d+GuC9ht4/9loQuJWlZ
         V2ELxvKgWMt+C0wMUyDn1PYpMkauWJJNoXG94S+SRofE3XnS3/OXA2dP4IoHJTKlVDTC
         HODhjGAALzETzo8mbewXvakb/qqgZRJVu57S7MA2bzyQnQ30l43YF9VxQMAyCSqfk3HZ
         Vpu5nhEh4kRdKUeIlESNV0fjUy6ZlDrZjDnmFE2c/IXnG6d+mhDvqlDuHZwtiTJde4Yr
         TpRUCZeqXqgQR81hOZkz/17E5wbW0dYphgQ81NN9KgiGodW9/HUYQCw/FqEnq7/dFlG1
         XoeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733126909; x=1733731709;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=biIoGOQqyq3N6XA0zNtfB70JTNOwYolG4EVywUtJAns=;
        b=EYEEQ0EhQzRHp4/6uxwFqG+j9ZNSFjnaElnkCIgpyD7Th4Um3AV2w/iOEIGfpmtsYh
         fpLQ9Vh9AVmwd2w+0BvboEpbMDvqi4+tiSlD3oOp1lPb/9i2jRQBgIejr9ts6p4ghDug
         tRs70ehon/cJmcL4vTF7cq/k+IvjMVYAvcVA68ACcB85wma3JEz7Vmu2TGs2qjQeirdg
         lncnm4vZIK+ElffSaxlE+mItEBfTPIIcjiEN1nvrr6MtreqRpB8XID/GA+Ehp+VGmNKF
         hTQQh+B10RO9kUI2XiBHXHSRzL+iAsHrNymHtr6d81fBgL/KLpRZUS+HT1MN9GZZT/aI
         xWTw==
X-Forwarded-Encrypted: i=1; AJvYcCW5ufoB0oxBFMjuCxD93HdEEgNq0UG5xBS4dN1nOXg+TQeuhcI7Rh+hIEvOhX14JcN1471kAeThB/uu@vger.kernel.org
X-Gm-Message-State: AOJu0YznAPINCUOPwN1y4gF2YnPEICfrVpEmFQmBBekmGKqEOJNyV0lJ
	Tvx9oh0JIM0M+V+TydHd+6nwfzDShdIgNeItyq51zEn2zp9v+zgDzRZqHNtzZVQ=
X-Gm-Gg: ASbGncu2B1oaOr+KV5ns5T5DHdvEAGn9cX3Tu7arMrDCBaeZpsbgnwC6v0+puLVgJVe
	jhDmhMm1XJiYthDr37VS3olSdvAyAKqvlI1ir5h7BhA9P1gs2oBHFafMlpVk5Zvhrd7Yf1n/FWz
	3LUeN5fKLo3vGcS98wvExT3ObMZC05h/ZDEi/HqjEqyB5LYVenX9QobZpiwd49mDyr9sE5R8GKR
	XJZRKwdBkvBb3tzt08fLG/HKLqDBgy+APECoH/quh7u2hVJ/cpDbCRWGw==
X-Google-Smtp-Source: AGHT+IE/FN2ZItFsru5z5bnmJFaCMjGBYDDtPToGAA6DQa0WbEd1yHKPiHr3G9UCYQzQErXFFCJrCA==
X-Received: by 2002:a5d:6dac:0:b0:382:32ec:f5b4 with SMTP id ffacd0b85a97d-385c6edd38emr19115560f8f.47.1733126908581;
        Mon, 02 Dec 2024 00:08:28 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.46])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-385e8783843sm5908426f8f.4.2024.12.02.00.08.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Dec 2024 00:08:28 -0800 (PST)
Message-ID: <db8187d8-5ec6-4aaa-bd61-21cd3a806c66@tuxon.dev>
Date: Mon, 2 Dec 2024 10:08:25 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] ARM: dts: microchip: sam9x7: Move i2c address/size to
 dtsi
Content-Language: en-US
To: Mihai Sain <mihai.sain@microchip.com>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20241122080523.3941-1-mihai.sain@microchip.com>
 <20241122080523.3941-2-mihai.sain@microchip.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20241122080523.3941-2-mihai.sain@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Mihai,

On 22.11.2024 10:05, Mihai Sain wrote:
> Since these properties are common for all i2c subnodes,
> move them to SoC dtsi from board dts.
> 
> Signed-off-by: Mihai Sain <mihai.sain@microchip.com>

Reviewed-by: Claudiu Beznea <claudiu.beznea@tuxon.dev>

> ---
>  .../dts/microchip/at91-sam9x75_curiosity.dts  |  2 --
>  arch/arm/boot/dts/microchip/sam9x7.dtsi       | 26 +++++++++++++++++++
>  2 files changed, 26 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/microchip/at91-sam9x75_curiosity.dts b/arch/arm/boot/dts/microchip/at91-sam9x75_curiosity.dts
> index 87b6ea97590b..d453800f8e35 100644
> --- a/arch/arm/boot/dts/microchip/at91-sam9x75_curiosity.dts
> +++ b/arch/arm/boot/dts/microchip/at91-sam9x75_curiosity.dts
> @@ -88,8 +88,6 @@ &flx6 {
>  };
>  
>  &i2c6 {
> -	#address-cells = <1>;
> -	#size-cells = <0>;
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_flx6_default>;
>  	i2c-analog-filter;
> diff --git a/arch/arm/boot/dts/microchip/sam9x7.dtsi b/arch/arm/boot/dts/microchip/sam9x7.dtsi
> index beb1f34b38d3..aedba0a8318f 100644
> --- a/arch/arm/boot/dts/microchip/sam9x7.dtsi
> +++ b/arch/arm/boot/dts/microchip/sam9x7.dtsi
> @@ -151,6 +151,8 @@ i2c4: i2c@600 {
>  				compatible = "microchip,sam9x7-i2c", "microchip,sam9x60-i2c";
>  				reg = <0x600 0x200>;
>  				interrupts = <13 IRQ_TYPE_LEVEL_HIGH 7>;
> +				#address-cells = <1>;
> +				#size-cells = <0>;
>  				clocks = <&pmc PMC_TYPE_PERIPHERAL 13>;
>  				dmas = <&dma0
>  					(AT91_XDMAC_DT_MEM_IF(0) |
> @@ -220,6 +222,8 @@ i2c5: i2c@600 {
>  				compatible = "microchip,sam9x7-i2c", "microchip,sam9x60-i2c";
>  				reg = <0x600 0x200>;
>  				interrupts = <14 IRQ_TYPE_LEVEL_HIGH 7>;
> +				#address-cells = <1>;
> +				#size-cells = <0>;
>  				clocks = <&pmc PMC_TYPE_PERIPHERAL 14>;
>  				dmas = <&dma0
>  					(AT91_XDMAC_DT_MEM_IF(0) |
> @@ -312,6 +316,8 @@ i2c11: i2c@600 {
>  				compatible = "microchip,sam9x7-i2c", "microchip,sam9x60-i2c";
>  				reg = <0x600 0x200>;
>  				interrupts = <32 IRQ_TYPE_LEVEL_HIGH 7>;
> +				#address-cells = <1>;
> +				#size-cells = <0>;
>  				clocks = <&pmc PMC_TYPE_PERIPHERAL 32>;
>  				dmas = <&dma0
>  					(AT91_XDMAC_DT_MEM_IF(0) |
> @@ -362,6 +368,8 @@ i2c12: i2c@600 {
>  				compatible = "microchip,sam9x7-i2c", "microchip,sam9x60-i2c";
>  				reg = <0x600 0x200>;
>  				interrupts = <33 IRQ_TYPE_LEVEL_HIGH 7>;
> +				#address-cells = <1>;
> +				#size-cells = <0>;
>  				clocks = <&pmc PMC_TYPE_PERIPHERAL 33>;
>  				dmas = <&dma0
>  					(AT91_XDMAC_DT_MEM_IF(0) |
> @@ -533,6 +541,8 @@ i2c6: i2c@600 {
>  				compatible = "microchip,sam9x7-i2c", "microchip,sam9x60-i2c";
>  				reg = <0x600 0x200>;
>  				interrupts = <9 IRQ_TYPE_LEVEL_HIGH 7>;
> +				#address-cells = <1>;
> +				#size-cells = <0>;
>  				clocks = <&pmc PMC_TYPE_PERIPHERAL 9>;
>  				dmas = <&dma0
>  					(AT91_XDMAC_DT_MEM_IF(0) |
> @@ -583,6 +593,8 @@ i2c7: i2c@600 {
>  				compatible = "microchip,sam9x7-i2c", "microchip,sam9x60-i2c";
>  				reg = <0x600 0x200>;
>  				interrupts = <10 IRQ_TYPE_LEVEL_HIGH 7>;
> +				#address-cells = <1>;
> +				#size-cells = <0>;
>  				clocks = <&pmc PMC_TYPE_PERIPHERAL 10>;
>  				dmas = <&dma0
>  					(AT91_XDMAC_DT_MEM_IF(0) |
> @@ -633,6 +645,8 @@ i2c8: i2c@600 {
>  				compatible = "microchip,sam9x7-i2c", "microchip,sam9x60-i2c";
>  				reg = <0x600 0x200>;
>  				interrupts = <11 IRQ_TYPE_LEVEL_HIGH 7>;
> +				#address-cells = <1>;
> +				#size-cells = <0>;
>  				clocks = <&pmc PMC_TYPE_PERIPHERAL 11>;
>  				dmas = <&dma0
>  					(AT91_XDMAC_DT_MEM_IF(0) |
> @@ -702,6 +716,8 @@ i2c0: i2c@600 {
>  				compatible = "microchip,sam9x7-i2c", "microchip,sam9x60-i2c";
>  				reg = <0x600 0x200>;
>  				interrupts = <5 IRQ_TYPE_LEVEL_HIGH 7>;
> +				#address-cells = <1>;
> +				#size-cells = <0>;
>  				clocks = <&pmc PMC_TYPE_PERIPHERAL 5>;
>  				dmas = <&dma0
>  					(AT91_XDMAC_DT_MEM_IF(0) |
> @@ -771,6 +787,8 @@ i2c1: i2c@600 {
>  				compatible = "microchip,sam9x7-i2c", "microchip,sam9x60-i2c";
>  				reg = <0x600 0x200>;
>  				interrupts = <6 IRQ_TYPE_LEVEL_HIGH 7>;
> +				#address-cells = <1>;
> +				#size-cells = <0>;
>  				clocks = <&pmc PMC_TYPE_PERIPHERAL 6>;
>  				dmas = <&dma0
>  					(AT91_XDMAC_DT_MEM_IF(0) |
> @@ -840,6 +858,8 @@ i2c2: i2c@600 {
>  				compatible = "microchip,sam9x7-i2c", "microchip,sam9x60-i2c";
>  				reg = <0x600 0x200>;
>  				interrupts = <7 IRQ_TYPE_LEVEL_HIGH 7>;
> +				#address-cells = <1>;
> +				#size-cells = <0>;
>  				clocks = <&pmc PMC_TYPE_PERIPHERAL 7>;
>  				dmas = <&dma0
>  					(AT91_XDMAC_DT_MEM_IF(0) |
> @@ -909,6 +929,8 @@ i2c3: i2c@600 {
>  				compatible = "microchip,sam9x7-i2c", "microchip,sam9x60-i2c";
>  				reg = <0x600 0x200>;
>  				interrupts = <8 IRQ_TYPE_LEVEL_HIGH 7>;
> +				#address-cells = <1>;
> +				#size-cells = <0>;
>  				clocks = <&pmc PMC_TYPE_PERIPHERAL 8>;
>  				dmas = <&dma0
>  					(AT91_XDMAC_DT_MEM_IF(0) |
> @@ -984,6 +1006,8 @@ i2c9: i2c@600 {
>  				compatible = "microchip,sam9x7-i2c", "microchip,sam9x60-i2c";
>  				reg = <0x600 0x200>;
>  				interrupts = <15 IRQ_TYPE_LEVEL_HIGH 7>;
> +				#address-cells = <1>;
> +				#size-cells = <0>;
>  				clocks = <&pmc PMC_TYPE_PERIPHERAL 15>;
>  				dmas = <&dma0
>  					(AT91_XDMAC_DT_MEM_IF(0) |
> @@ -1034,6 +1058,8 @@ i2c10: i2c@600 {
>  				compatible = "microchip,sam9x7-i2c", "microchip,sam9x60-i2c";
>  				reg = <0x600 0x200>;
>  				interrupts = <16 IRQ_TYPE_LEVEL_HIGH 7>;
> +				#address-cells = <1>;
> +				#size-cells = <0>;
>  				clocks = <&pmc PMC_TYPE_PERIPHERAL 16>;
>  				dmas = <&dma0
>  					(AT91_XDMAC_DT_MEM_IF(0) |

