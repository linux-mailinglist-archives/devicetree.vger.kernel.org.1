Return-Path: <devicetree+bounces-183473-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C1AACAD0CF6
	for <lists+devicetree@lfdr.de>; Sat,  7 Jun 2025 13:02:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3F2BF16FB5E
	for <lists+devicetree@lfdr.de>; Sat,  7 Jun 2025 11:02:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BEFF22069E;
	Sat,  7 Jun 2025 11:02:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="b4LbYzIX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E85F21FF47
	for <devicetree@vger.kernel.org>; Sat,  7 Jun 2025 11:02:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749294132; cv=none; b=mNNKfpDH2p1Xqby3BUHwT5NkDlaEeydQBIGIpDRUPbhXRRa0cbuW9oJxuBmti+E+mZFeszZhrvvWNEUlU1/SVNgUvDkOwue+axduAG7ST0Byq4NZahIsm+o8QTmOzN0IRV0yVXL5mMLnmoIFbS2lhDTpehz4wH1rK4T+pNda3C8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749294132; c=relaxed/simple;
	bh=Yl9ndbEGL4EIVDz7skBznKYjr7jDHLkVoya1oGZgJkY=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=HpX69Ka7zVn+Hcuovy5lBHN3yLOGNZ+Z4q7nJqbP0E1v3Qctt4NOk6KmlV5DWXkP1z4JWsPaAHKwLS6fCeADfC2m2yB8lYKFFwwqyz5W1BYXmnJKNl3PrBh5Oi6bkj+DE0w7Dyw8Nlmkd6W6vdKvj6H0roS0/PfBOiWF2ywT/yM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=b4LbYzIX; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-60179d8e65fso590686a12.0
        for <devicetree@vger.kernel.org>; Sat, 07 Jun 2025 04:02:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1749294129; x=1749898929; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=DIhYHISfph8fBpkqWC+1rBrRnlrWo4MclGDCnZfAqlQ=;
        b=b4LbYzIXMusrvRtfJbJeXfj9MmkUjxQNntD0nZRk0TAWjXObNa16ZuS8iJ6+StwWa6
         0jnzvLIvv+XID4JGNpRHxZR9jNBDen15vwjRvDQBn7N0fEQx7Ssfdt1/8vrStJbCP7Le
         8MZSixMQVvmTf95zhTvtVuHr4DPNRHq9Bmw494rXzFK+S38Ts4BfUg2JehzV079smUxM
         Im2S6ofxF431oBoJcy593skfyminDUyFLn8tAUf0rK2mETr9lM9upC1r6RvHDsUDBU2a
         UQNBYvWU6XMgOjGpYL6tcRvCt8UiWHd0t0j0vEm4x0L1KtebyLROitru6ZvjvVrl54ng
         kWHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749294129; x=1749898929;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DIhYHISfph8fBpkqWC+1rBrRnlrWo4MclGDCnZfAqlQ=;
        b=ERFI0IHnbwRniW1Ej2Si1r+wHVAnDehYCRL/t8Ctv7GjYV+tiqI9WamkppoBzE5/Zb
         gFx8Vi4HU7cHup/iIhDrPw/HsFmXKaMfzvLLU0yib8kJ+ObCMbsELKvRUW07Y+On9OAS
         GdIL4tlPuWdOYwsqUpSvcTZt6Ih1V0CyjrxO1HcfdMv4li+l+photuhzFdakBFSSRxnE
         uZXHWjrLM3qhO/ZS5fPOro9+WRHFBuyGTIswg5I68+G9YfBejq8+vPPBV7YsiURQz0rA
         4sVauQZT8R1SVn/Z9MpRsCzwuq2CjydUZhpBMJVHWCK0V7OzE22X5UDaG2IHHEy4wWf3
         soAA==
X-Forwarded-Encrypted: i=1; AJvYcCWteccRqo02oiHn3KFpmzx/SrRZqHd1xItn/H4nAR6D9BEsFvx+0iOCC3oWm6H0OKA3fv9KtWYZoYEN@vger.kernel.org
X-Gm-Message-State: AOJu0YzGQHEw2Ac9XJPSwI7GRDo4R4cq3FyZpjlI/h75ei+nHd0BDY18
	RAiwq4nLXBeiOZjqSHKD+4wBHyg2bbiqtm8tyElJrlqlJln/ugwkBJ132m6n28XQFkw=
X-Gm-Gg: ASbGncvHX87AxDuM5CVTSlEK/soXHoaTaJZG4mOoj3I4TWoJNZEwuNR9nerAqLdREvg
	z3MPoN7xlRdnMRhqpTgi/+EsbDtXHdjXhDRLp2nwbGu6eUtUjQArzoGELvf0wd1aKj5ywCvLPa6
	RQgNoV4NTVLFTugCn/FRLq61+bGinSXcPI6It+AfFgoxYQHwssnFyJpQdrlEBzFlcEPwhccf16S
	1vTXCuDI6UctnezeGcIrpU92ZO+S2twe7NOtvPjzcvRziOI5NGfl8Gu7S6WrR3dSjRwLfvl4x5M
	U3ZFpnGZiRRi9wqF+cJMkZap5eqRPHcCg/i767yCdy8UtLapF/izGcI6TZ11
X-Google-Smtp-Source: AGHT+IH05HBrM68Mw5Ro+IZBmLCRhTkiogLWCD18qGy1T509lYtrYeeNQACDbX4n+DEb/SC/OplcNA==
X-Received: by 2002:a05:6402:4407:b0:601:a431:86cc with SMTP id 4fb4d7f45d1cf-60773be8fafmr5638626a12.5.1749294128562;
        Sat, 07 Jun 2025 04:02:08 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.126])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-607783c053esm2284059a12.48.2025.06.07.04.02.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Jun 2025 04:02:07 -0700 (PDT)
Message-ID: <759ec406-d388-498f-b0cc-2440a66ecbcd@tuxon.dev>
Date: Sat, 7 Jun 2025 14:02:04 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/3] ARM: dts: microchip: sama5d27_wlsom1: update the
 QSPI partitions using "fixed-partition" binding
To: Manikandan Muralidharan <manikandan.m@microchip.com>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, tudor.ambarus@linaro.org,
 pratyush@kernel.org, mwalle@kernel.org, miquel.raynal@bootlin.com,
 richard@nod.at, vigneshr@ti.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-mtd@lists.infradead.org
References: <20250521070336.402202-1-manikandan.m@microchip.com>
 <20250521070336.402202-3-manikandan.m@microchip.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <20250521070336.402202-3-manikandan.m@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Manikandan,

On 21.05.2025 10:03, Manikandan Muralidharan wrote:
> update the QSPI partitions using "fixed-partition" binding

Please use capital letter at the beginning of the sentence  and dot at the
end of it.

Can you please also explain here why you did this update?

Thank you,
Claudiu

> 
> Signed-off-by: Manikandan Muralidharan <manikandan.m@microchip.com>
> ---
>  .../dts/microchip/at91-sama5d27_wlsom1.dtsi   | 54 ++++++++++---------
>  1 file changed, 29 insertions(+), 25 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/microchip/at91-sama5d27_wlsom1.dtsi b/arch/arm/boot/dts/microchip/at91-sama5d27_wlsom1.dtsi
> index 9543214adc9f..b34c5072425a 100644
> --- a/arch/arm/boot/dts/microchip/at91-sama5d27_wlsom1.dtsi
> +++ b/arch/arm/boot/dts/microchip/at91-sama5d27_wlsom1.dtsi
> @@ -229,8 +229,6 @@ &qspi1 {
>  	status = "disabled";
>  
>  	qspi1_flash: flash@0 {
> -		#address-cells = <1>;
> -		#size-cells = <1>;
>  		compatible = "jedec,spi-nor";
>  		reg = <0>;
>  		spi-max-frequency = <104000000>;
> @@ -240,34 +238,40 @@ qspi1_flash: flash@0 {
>  		m25p,fast-read;
>  		status = "disabled";
>  
> -		at91bootstrap@0 {
> -			label = "at91bootstrap";
> -			reg = <0x0 0x40000>;
> -		};
> +		partitions {
> +			compatible = "fixed-partitions";
> +			#address-cells = <1>;
> +			#size-cells = <1>;
>  
> -		bootloader@40000 {
> -			label = "bootloader";
> -			reg = <0x40000 0xc0000>;
> -		};
> +			at91bootstrap@0 {
> +				label = "at91bootstrap";
> +				reg = <0x0 0x40000>;
> +			};
>  
> -		bootloaderenvred@100000 {
> -			label = "bootloader env redundant";
> -			reg = <0x100000 0x40000>;
> -		};
> +			bootloader@40000 {
> +				label = "bootloader";
> +				reg = <0x40000 0xc0000>;
> +			};
>  
> -		bootloaderenv@140000 {
> -			label = "bootloader env";
> -			reg = <0x140000 0x40000>;
> -		};
> +			bootloaderenvred@100000 {
> +				label = "bootloader env redundant";
> +				reg = <0x100000 0x40000>;
> +			};
>  
> -		dtb@180000 {
> -			label = "device tree";
> -			reg = <0x180000 0x80000>;
> -		};
> +			bootloaderenv@140000 {
> +				label = "bootloader env";
> +				reg = <0x140000 0x40000>;
> +			};
>  
> -		kernel@200000 {
> -			label = "kernel";
> -			reg = <0x200000 0x600000>;
> +			dtb@180000 {
> +				label = "device tree";
> +				reg = <0x180000 0x80000>;
> +			};
> +
> +			kernel@200000 {
> +				label = "kernel";
> +				reg = <0x200000 0x600000>;
> +			};
>  		};
>  	};
>  };


