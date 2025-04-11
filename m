Return-Path: <devicetree+bounces-165989-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A4855A860A0
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 16:30:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9BA8F1B805A6
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 14:31:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0DC91F3BA5;
	Fri, 11 Apr 2025 14:30:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="pR2HMHqG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C33051607B4
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 14:30:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744381847; cv=none; b=VeO97AdAHO1beo9YBUDTRE59R8LIhcxTPhD7p+epz+AVoppJj0ge+moye6VzWvgwZzRbJL7/j16wxTqHAYRb/BYO0NY9v/LuGTxOVVvRvFTFlpLaO2c8hNRERs8BkEIc9dMsr7vFwFt+n40Ub6sJGG0aVIzAvsAELUBuSB0JQ0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744381847; c=relaxed/simple;
	bh=ECPVQZbpGQ1Igimn7f7XHhB52v/Enkp/cffCovYhFNo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lj/dZkBVFcI93zljch7jymac0tm9nBDCY9sjoQGNfAZcp64yhCK1oopdVS5WbWU81Cig2tybG5cVcTOR6Ex2qreoJXBKobnEJq10bWjegWiduT9/QRcYsaFqngr1AKgC6v8TdH81IUM+Fpp1mTg0vSjh9ubq7HBGB2WzuVGazvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=pR2HMHqG; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-43cfebc343dso15596305e9.2
        for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 07:30:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1744381844; x=1744986644; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ycoLQD9jfqJEzFVkDVUgdOPCxS45bX18gNlDKBK7d6s=;
        b=pR2HMHqGllZ1C0W+I/aJT6pfgWJgE9F+tscCFFTfhyPcobLb40o+I08E1YP+9JGRkK
         UvSUlSfwIVgvv/HV+u54mmYAhhf2dnoZAzS6xLXe9qSET/lAa4kvbouF1yuBNaxd1wN+
         Ks3JZr7wuc+ljuboMnO2QP3zF2WtQxZQ8iP0F70nYQhz5i+HHKsqJYhl9X6chJ7jW3cX
         kQedcrYHwtk8COTdw6fNCHPk9APXc2UnB8toyNmIWEEQA+FlqQ67Gt2N38wzSv3UD0OB
         ipN7c0OgZgk8sgK7HXoXNwnphc+cBdePuNXP/Tx6XxsaHqTpVaBb2JZqk8Jlyt+nM7o1
         x7Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744381844; x=1744986644;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ycoLQD9jfqJEzFVkDVUgdOPCxS45bX18gNlDKBK7d6s=;
        b=Kou1gF7Y+u6nuCHfOOmV5o+uD0jFjYvuQbmYUPXM6B0d1/rchUT4ZtOWPFHz8hJ144
         BpIfP1S1ZrqnfiMg4kWoOHLhpPhW09fzgvWus0+jr8+HGDG07QWzmKbEPMneIxenWqeL
         gwvO4QSrSZDS7pUWFXINzQQ844JdeuHrEcAtAivRCrEB/GoNuh/ndMjgyptonRif4KTo
         da7QcbSv+du5u/4e031VIfmazjvrhVzQlFcruo+5Yd7xS4VoHQyOijHEzEzsYDeKb9YO
         Bc3h0Taou87c3T0LI/K+VoFO5/ZViwhLu8KXTlfPZ7AifykqpqbAK3XEbYxtomk8KY39
         NYFA==
X-Forwarded-Encrypted: i=1; AJvYcCWE/qvTaXnz/uWD+4680kprjDey6lGRnj0hLEOXP7051v2sw5MUN0hfPJ0emdp45tn4eUMCQlEVgs0A@vger.kernel.org
X-Gm-Message-State: AOJu0Yxix5Hk/abpaeSTpL63/W4eR3dvV2vWPQ/PQ1H06Q3VERw0VRRL
	spSVc2tZCQouUOjz78QbgAnOv6PX6Tp30qYRpt/HIK2rNMac9d58ikshP9me3sQ=
X-Gm-Gg: ASbGncstrRyAnpvSgXsaiCG7mNVp9BlOkio5yjq7Oy+e+X7JUSbIalfMXii41WnmYXV
	9Sv9skO7AvxX4nAIkjPkUqiIsF8E/OaLaa9gfNYYYNXRrUkPcNQqharZHwpLWN70xYCChKpJJq+
	JQboUYM9qhh56Az0Sqz9y8fX+Y2usxOC1WOt0YA5NUg4KPOlQ5cC1+yCJrajRIjVJ5XFFRZkEdF
	Tz3bnf3BaH2jKVWrb0VZEMf8zjN3V+3ndXYemdlK1KxTZlTL+W1vlxYh7vcgbDPC0anzs5tDSP8
	aP7iT/aPx09m4e0176CffrlzRMyzQvusq093UYYRef0CUFXv
X-Google-Smtp-Source: AGHT+IG9KQqbQeJI3TgkREXxzGXE7lhS6pak+H/rKFHdsabVkH8R63JSXWChvAVJyUcLu4rOG+zckw==
X-Received: by 2002:a05:600c:5107:b0:43c:f4b3:b094 with SMTP id 5b1f17b1804b1-43f3a92552dmr24937985e9.6.1744381843883;
        Fri, 11 Apr 2025 07:30:43 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.57])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43f233c81f6sm84049845e9.20.2025.04.11.07.30.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Apr 2025 07:30:43 -0700 (PDT)
Message-ID: <6e52883b-2811-4ac2-9763-5974ca463274@tuxon.dev>
Date: Fri, 11 Apr 2025 17:30:42 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/6] ARM: dts: microchip: sama7d65: Add MCP16502 to
 sama7d65 curiosity
To: Ryan.Wanner@microchip.com, andrew+netdev@lunn.ch, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, robh@kernel.org,
 krzk+dt@kernel.org, onor+dt@kernel.org, alexandre.belloni@bootlin.com
Cc: nicolas.ferre@microchip.com, netdev@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <cover.1743523114.git.Ryan.Wanner@microchip.com>
 <60f6b7764227bb42c74404e8ca1388477183b7b5.1743523114.git.Ryan.Wanner@microchip.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <60f6b7764227bb42c74404e8ca1388477183b7b5.1743523114.git.Ryan.Wanner@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Ryan,

On 01.04.2025 19:13, Ryan.Wanner@microchip.com wrote:
> From: Ryan Wanner <Ryan.Wanner@microchip.com>
> 
> Add MCP16502 to the sama7d65_curiosity board to control voltages in the
> MPU. The device is connected to twi 10 interface
> 
> Signed-off-by: Ryan Wanner <Ryan.Wanner@microchip.com>
> ---
>  .../dts/microchip/at91-sama7d65_curiosity.dts | 135 ++++++++++++++++++
>  1 file changed, 135 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/microchip/at91-sama7d65_curiosity.dts b/arch/arm/boot/dts/microchip/at91-sama7d65_curiosity.dts
> index 441370dbb4c2..81abc387112d 100644
> --- a/arch/arm/boot/dts/microchip/at91-sama7d65_curiosity.dts
> +++ b/arch/arm/boot/dts/microchip/at91-sama7d65_curiosity.dts
> @@ -30,6 +30,15 @@ memory@60000000 {
>  		device_type = "memory";
>  		reg = <0x60000000 0x40000000>;
>  	};
> +
> +	reg_5v: regulator-5v {
> +		compatible = "regulator-fixed";
> +		regulator-name = "5V_MAIN";
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		regulator-always-on;
> +	};
> +
>  };
>  
>  &dma0 {
> @@ -99,6 +108,132 @@ channel@4 {
>  			label = "VDDCPU";
>  		};
>  	};
> +
> +	pmic@5b {
> +		compatible = "microchip,mcp16502";
> +		reg = <0x5b>;
> +		lvin-supply = <&reg_5v>;
> +		pvin1-supply = <&reg_5v>;
> +		pvin2-supply = <&reg_5v>;
> +		pvin3-supply = <&reg_5v>;
> +		pvin4-supply = <&reg_5v>;
> +		status = "okay";
> +
> +		regulators {
> +			vdd_3v3: VDD_IO {
> +				regulator-name = "VDD_IO";
> +				regulator-min-microvolt = <3300000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-initial-mode = <2>;
> +				regulator-allowed-modes = <2>, <4>;
> +				regulator-always-on;
> +
> +				regulator-state-standby {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <3300000>;
> +					regulator-mode = <4>;
> +				};
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +					regulator-mode = <4>;
> +				};
> +			};
> +
> +			vddioddr: VDD_DDR {
> +				regulator-name = "VDD_DDR";
> +				regulator-min-microvolt = <1350000>;
> +				regulator-max-microvolt = <1350000>;
> +				regulator-initial-mode = <2>;
> +				regulator-allowed-modes = <2>, <4>;
> +				regulator-always-on;
> +
> +				regulator-state-standby {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <1350000>;
> +					regulator-mode = <4>;
> +				};
> +
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <1350000>;
> +					regulator-mode = <4>;
> +				};
> +			};
> +
> +			vddcore: VDD_CORE {
> +				regulator-name = "VDD_CORE";
> +				regulator-min-microvolt = <1050000>;
> +				regulator-max-microvolt = <1050000>;
> +				regulator-initial-mode = <2>;
> +				regulator-allowed-modes = <2>, <4>;
> +				regulator-always-on;
> +
> +				regulator-state-standby {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <1050000>;
> +					regulator-mode = <4>;
> +				};
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +					regulator-mode = <4>;
> +				};
> +			};
> +
> +			vddcpu: VDD_OTHER {
> +				regulator-name = "VDD_OTHER";
> +				regulator-min-microvolt = <1050000>;
> +				regulator-max-microvolt = <1250000>;
> +				regulator-initial-mode = <2>;
> +				regulator-allowed-modes = <2>, <4>;
> +				regulator-ramp-delay = <3125>;
> +				regulator-always-on;
> +
> +				regulator-state-standby {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <1050000>;
> +					regulator-mode = <4>;
> +				};
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +					regulator-mode = <4>;
> +				};
> +			};
> +
> +			vldo1: LDO1 {
> +				regulator-name = "LDO1";
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +				regulator-always-on;
> +
> +				regulator-state-standby {
> +					regulator-suspend-microvolt = <1800000>;
> +					regulator-on-in-suspend;
> +				};
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vldo2: LDO2 {
> +				regulator-name = "LDO2";
> +				regulator-min-microvolt = <1200000>;
> +				regulator-max-microvolt = <3700000>;
> +
> +				regulator-state-standby {
> +					regulator-suspend-microvolt = <1800000>;

I can't find the schematics for this board. Is there a reason for keeping
this @1.8V in suspend?

Thank you,
Claudiu

> +					regulator-on-in-suspend;
> +				};
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +		};
> +	};
>  };
>  
>  &main_xtal {


