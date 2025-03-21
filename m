Return-Path: <devicetree+bounces-159590-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 51F12A6B7C7
	for <lists+devicetree@lfdr.de>; Fri, 21 Mar 2025 10:41:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C0322169866
	for <lists+devicetree@lfdr.de>; Fri, 21 Mar 2025 09:39:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D93671F237A;
	Fri, 21 Mar 2025 09:38:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="l2tCuFiy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C763F182B4
	for <devicetree@vger.kernel.org>; Fri, 21 Mar 2025 09:38:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742549882; cv=none; b=U+R0k5L4awYTgWpphU/qz9gEsnLQdEkSB6u4lbH1JWtBmFV/0lYdEyDVa2938Fh6KiRuJRbzYeo0RKpj61GmM6Iw+/fDzANmjQyMiKtxcSllrTVhp6J8JDlM0YrwENNLkjvg7IZWPQbDqgZx5nrgv0Nj03D3nDMC6KJFyxxW1kg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742549882; c=relaxed/simple;
	bh=5aDhAMwW4Kn3UhCM/fvEOcu3+MeIoZzc3lYUrIBh8nQ=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=RJT5KV/c42HBIFIiseeNzuiWWoLuhQNjNH2lPVKeXX99DUSltSplPVYa/e8ljU2qnTXya2DmQVyV7Q9pUUPfQCe148qXLVBfyDxKwatvoQb6U5zangIP02ohQsQ3M1wSngq1juaKlenLoT7PGnQv+QTqGc3fpiz7iuLyy+jEbD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=l2tCuFiy; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-43d04dc73b7so18344965e9.3
        for <devicetree@vger.kernel.org>; Fri, 21 Mar 2025 02:38:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742549879; x=1743154679; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9N77P41IwOEtQjyzNQ+1k/cERPt5eLRxJQTUEpJGHQA=;
        b=l2tCuFiyV0bdwCN8Wf1jqR2WMMLVWVQ7pgfG5CVb05jRZ3RIIiCIKCGa7ELwFuOEhb
         cIZYcK1OV91JIsr4qqSUxpFfxcLG3ZPr+f/GltHt0Pg2RhCi6WKsrqpkfDJKiy15TIYZ
         mjTVkBsTxwt925UkyAyAm3AmkaP5jW2DWyQ2jPzwr2Sgx242jiNi53+W6pYb8+/mui3J
         y5nGBI4PzoDfaMER6Op3LI+Wq0WypQKzkvZjlWHpyy6KMfxSIqxMeyYUCbQOoPoWysgU
         zBWSAbarn0J4ncpJ32VxOdNGpGfuAjNWay3bSkspRH20SAx7hfZ7OEpHhsZGXLr6scla
         ujeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742549879; x=1743154679;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=9N77P41IwOEtQjyzNQ+1k/cERPt5eLRxJQTUEpJGHQA=;
        b=qQEXnw3bzjjAfE9BOfJVmdua5jAqbXurHN6gOIGW5+jJE0/HWF47oiPC7T+MDDENxz
         z9Yhenf7mdMaaL6ziZ0saUWonvIBgR0ZRaIF3aC01G0JK7tkKP7/xlCXjaseFTwP1T0l
         s8Xv8+0qfsCc7Ch8tMuXOLMngLaOrjP1hscR43+SkCy6kY0TymVKw6BqHRNFudDH99Ph
         T+5qdtiU834OdN4jUkqUyeY70rlNkbODfOPt7kQKbtBP0n25HZqSMtz8PTdS6pTy2Jgx
         tRda7vsERhMGpq5eIeywCq+b1AApX+IATbzsdFIt3LMkSBub/p6i8t2W1vXc2OVgJ0mA
         sOlQ==
X-Forwarded-Encrypted: i=1; AJvYcCWyHN2hv0bIusDu3ydwDlQtNlfLNEzYLJoQddOkhtgP9oz3hVHOybcB+zEmOobTLIJwBV2YtyZcgFBO@vger.kernel.org
X-Gm-Message-State: AOJu0YyM8w6sV2Td5nxvDOAuL1jPoEVFt49Furd4C4JTR4qPCFUKvQQw
	0NTslMDcua7vqoTEdJ2yvLkZClEEYKJjKgB+7dlq85Y6w8E/1M8cxAu7OWliiu8=
X-Gm-Gg: ASbGnctOisZGzLSTapjtDw0leb3xMyXhtg3eprF723px545cECzT8dazjXRbSmnm7/K
	DnAkfwsX3JFVOJFaAiNm5FWRQf8lbK8t2VTostWNDnOD0DuG4BDsArugwOMW3JzOJkJCLpLrJMj
	t+lCFsV3Jp969/EAoHmeoU1Pk8OLFPEOVo+u8OEQiPpp/HDGjmVtnWczwkevuWnM3F9UIgCC0GJ
	w4YaH96qQT6GWeHrWLB1FhapFyNA2BUtjxWYZi2/4xOLWbmGMIfzHbyTTRRxXONzHEYZkRvXIdR
	mx0K8SqEln2rsM9BXZ8u5kvM7gA+XHfYwvtAgPVoiUNTvT9rPOI69lV7ORcT0BJGtxtPSm1HyfP
	HIMCwlq/CW9OkGn8xJLP0W8uNK/UtA6AJ
X-Google-Smtp-Source: AGHT+IE4AxMnbwGIVq74R+nsPXDkLIHd1kWqc+z8aTF3wWVCvx+LwG9D0+avsooNskmWWMoFCV5riw==
X-Received: by 2002:a05:600c:3109:b0:43c:e70d:450c with SMTP id 5b1f17b1804b1-43d50a201bemr22157905e9.22.1742549878764;
        Fri, 21 Mar 2025 02:37:58 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:5080:77b0:43f2:5276? ([2a01:e0a:3d9:2080:5080:77b0:43f2:5276])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43d4fd187fasm21568345e9.14.2025.03.21.02.37.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Mar 2025 02:37:58 -0700 (PDT)
Message-ID: <5caa550a-ffdf-477d-92f4-a3222b7fba29@linaro.org>
Date: Fri, 21 Mar 2025 10:37:57 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH] arm64: dts: amlogic: a4: fix dtb compilation warning
 issues
To: xianwei.zhao@amlogic.com, Kevin Hilman <khilman@baylibre.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250321-fix-a4-pinctrl-node-v1-1-5719f9f09932@amlogic.com>
Content-Language: en-US, fr
Autocrypt: addr=neil.armstrong@linaro.org; keydata=
 xsBNBE1ZBs8BCAD78xVLsXPwV/2qQx2FaO/7mhWL0Qodw8UcQJnkrWmgTFRobtTWxuRx8WWP
 GTjuhvbleoQ5Cxjr+v+1ARGCH46MxFP5DwauzPekwJUD5QKZlaw/bURTLmS2id5wWi3lqVH4
 BVF2WzvGyyeV1o4RTCYDnZ9VLLylJ9bneEaIs/7cjCEbipGGFlfIML3sfqnIvMAxIMZrvcl9
 qPV2k+KQ7q+aXavU5W+yLNn7QtXUB530Zlk/d2ETgzQ5FLYYnUDAaRl+8JUTjc0CNOTpCeik
 80TZcE6f8M76Xa6yU8VcNko94Ck7iB4vj70q76P/J7kt98hklrr85/3NU3oti3nrIHmHABEB
 AAHNKk5laWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPsLAkQQTAQoA
 OwIbIwULCQgHAwUVCgkICwUWAgMBAAIeAQIXgBYhBInsPQWERiF0UPIoSBaat7Gkz/iuBQJk
 Q5wSAhkBAAoJEBaat7Gkz/iuyhMIANiD94qDtUTJRfEW6GwXmtKWwl/mvqQtaTtZID2dos04
 YqBbshiJbejgVJjy+HODcNUIKBB3PSLaln4ltdsV73SBcwUNdzebfKspAQunCM22Mn6FBIxQ
 GizsMLcP/0FX4en9NaKGfK6ZdKK6kN1GR9YffMJd2P08EO8mHowmSRe/ExAODhAs9W7XXExw
 UNCY4pVJyRPpEhv373vvff60bHxc1k/FF9WaPscMt7hlkbFLUs85kHtQAmr8pV5Hy9ezsSRa
 GzJmiVclkPc2BY592IGBXRDQ38urXeM4nfhhvqA50b/nAEXc6FzqgXqDkEIwR66/Gbp0t3+r
 yQzpKRyQif3OwE0ETVkGzwEIALyKDN/OGURaHBVzwjgYq+ZtifvekdrSNl8TIDH8g1xicBYp
 QTbPn6bbSZbdvfeQPNCcD4/EhXZuhQXMcoJsQQQnO4vwVULmPGgtGf8PVc7dxKOeta+qUh6+
 SRh3vIcAUFHDT3f/Zdspz+e2E0hPV2hiSvICLk11qO6cyJE13zeNFoeY3ggrKY+IzbFomIZY
 4yG6xI99NIPEVE9lNBXBKIlewIyVlkOaYvJWSV+p5gdJXOvScNN1epm5YHmf9aE2ZjnqZGoM
 Mtsyw18YoX9BqMFInxqYQQ3j/HpVgTSvmo5ea5qQDDUaCsaTf8UeDcwYOtgI8iL4oHcsGtUX
 oUk33HEAEQEAAcLAXwQYAQIACQUCTVkGzwIbDAAKCRAWmrexpM/4rrXiB/sGbkQ6itMrAIfn
 M7IbRuiSZS1unlySUVYu3SD6YBYnNi3G5EpbwfBNuT3H8//rVvtOFK4OD8cRYkxXRQmTvqa3
 3eDIHu/zr1HMKErm+2SD6PO9umRef8V82o2oaCLvf4WeIssFjwB0b6a12opuRP7yo3E3gTCS
 KmbUuLv1CtxKQF+fUV1cVaTPMyT25Od+RC1K+iOR0F54oUJvJeq7fUzbn/KdlhA8XPGzwGRy
 4zcsPWvwnXgfe5tk680fEKZVwOZKIEuJC3v+/yZpQzDvGYJvbyix0lHnrCzq43WefRHI5XTT
 QbM0WUIBIcGmq38+OgUsMYu4NzLu7uZFAcmp6h8g
Organization: Linaro
In-Reply-To: <20250321-fix-a4-pinctrl-node-v1-1-5719f9f09932@amlogic.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

On 21/03/2025 03:23, Xianwei Zhao via B4 Relay wrote:
> From: Xianwei Zhao <xianwei.zhao@amlogic.com>
> 
> When use command 'make ARCH=arm64 dtbs_check W=1' to compile dtb,
> a warning message appears.
> "Warning (simple_bus_reg): /soc/bus@fe000000/pinctrl:
> missing or empty reg/ranges property"
> 
> Add the unit address to the pinctrl node to fix it.

I've delayed the pinctrl to next release so plase rebase
the commit on top of https://web.git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git/log/?h=for-next
and fix the warnings here, and make sure DTBS_CHECK still passes.

Neil

> 
> Fixes: ce78f679e08c ("arm64: dts: amlogic: a4: add pinctrl node")
> Signed-off-by: Xianwei Zhao <xianwei.zhao@amlogic.com>
> ---
>   arch/arm64/boot/dts/amlogic/amlogic-a4.dtsi | 102 +++++++++++++++-------------
>   1 file changed, 55 insertions(+), 47 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/amlogic-a4.dtsi b/arch/arm64/boot/dts/amlogic/amlogic-a4.dtsi
> index fa80fa365f13..582e0043024b 100644
> --- a/arch/arm64/boot/dts/amlogic/amlogic-a4.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/amlogic-a4.dtsi
> @@ -51,87 +51,52 @@ pwrc: power-controller {
>   };
>   
>   &apb {
> -	gpio_intc: interrupt-controller@4080 {
> -		compatible = "amlogic,a4-gpio-intc",
> -			     "amlogic,meson-gpio-intc";
> -		reg = <0x0 0x4080 0x0 0x20>;
> -		interrupt-controller;
> -		#interrupt-cells = <2>;
> -		amlogic,channel-interrupts =
> -			<10 11 12 13 14 15 16 17 18 19 20 21>;
> -	};
> -
> -	gpio_ao_intc: interrupt-controller@8e72c {
> -		compatible = "amlogic,a4-gpio-ao-intc",
> -			     "amlogic,meson-gpio-intc";
> -		reg = <0x0 0x8e72c 0x0 0x0c>;
> -		interrupt-controller;
> -		#interrupt-cells = <2>;
> -		amlogic,channel-interrupts = <140 141>;
> -	};
> -
> -	periphs_pinctrl: pinctrl {
> +	periphs_pinctrl: pinctrl@4000 {
>   		compatible = "amlogic,pinctrl-a4";
>   		#address-cells = <2>;
>   		#size-cells = <2>;
> -		ranges;
> +		ranges = <0x0 0x0 0x0 0x4000 0x0 0x280>;
>   
> -		gpiox: gpio@4100 {
> -			reg = <0 0x4100 0 0x40>, <0 0x400c 0 0xc>;
> +		gpiox: gpio@100 {
> +			reg = <0 0x100 0 0x40>, <0 0xc 0 0xc>;
>   			reg-names = "gpio", "mux";
>   			gpio-controller;
>   			#gpio-cells = <2>;
>   			gpio-ranges = <&periphs_pinctrl 0 (AMLOGIC_GPIO_X<<8) 18>;
>   		};
>   
> -		gpiot: gpio@4140 {
> -			reg = <0 0x4140 0 0x40>, <0 0x402c 0 0xc>;
> +		gpiot: gpio@140 {
> +			reg = <0 0x140 0 0x40>, <0 0x2c 0 0xc>;
>   			reg-names = "gpio", "mux";
>   			gpio-controller;
>   			#gpio-cells = <2>;
>   			gpio-ranges = <&periphs_pinctrl 0 (AMLOGIC_GPIO_T<<8) 23>;
>   		};
>   
> -		gpiod: gpio@4180 {
> -			reg = <0 0x4180 0 0x40>, <0 0x4040 0 0x8>;
> +		gpiod: gpio@180 {
> +			reg = <0 0x180 0 0x40>, <0 0x40 0 0x8>;
>   			reg-names = "gpio", "mux";
>   			gpio-controller;
>   			#gpio-cells = <2>;
>   			gpio-ranges = <&periphs_pinctrl 0 (AMLOGIC_GPIO_D<<8) 16>;
>   		};
>   
> -		gpioe: gpio@41c0 {
> -			reg = <0 0x41c0 0 0x40>, <0 0x4048 0 0x4>;
> +		gpioe: gpio@1c0 {
> +			reg = <0 0x1c0 0 0x40>, <0 0x48 0 0x4>;
>   			reg-names = "gpio", "mux";
>   			gpio-controller;
>   			#gpio-cells = <2>;
>   			gpio-ranges = <&periphs_pinctrl 0 (AMLOGIC_GPIO_E<<8) 2>;
>   		};
>   
> -		gpiob: gpio@4240 {
> -			reg = <0 0x4240 0 0x40>, <0 0x4000 0 0x8>;
> +		gpiob: gpio@240 {
> +			reg = <0 0x240 0 0x40>, <0 0 0 0x8>;
>   			reg-names = "gpio", "mux";
>   			gpio-controller;
>   			#gpio-cells = <2>;
>   			gpio-ranges = <&periphs_pinctrl 0 (AMLOGIC_GPIO_B<<8) 14>;
>   		};
>   
> -		gpioao: gpio@8e704 {
> -			reg = <0 0x8e704 0 0x16>, <0 0x8e700 0 0x4>;
> -			reg-names = "gpio", "mux";
> -			gpio-controller;
> -			#gpio-cells = <2>;
> -			gpio-ranges = <&periphs_pinctrl 0 (AMLOGIC_GPIO_AO<<8) 7>;
> -		};
> -
> -		test_n: gpio@8e744 {
> -			reg = <0 0x8e744 0 0x20>;
> -			reg-names = "gpio";
> -			gpio-controller;
> -			#gpio-cells = <2>;
> -			gpio-ranges = <&periphs_pinctrl 0 (AMLOGIC_GPIO_TEST_N<<8) 1>;
> -		};
> -
>   		func-uart-a {
>   			uart_a_default: group-uart-a-pins1 {
>   				pinmux = <AML_PINMUX(AMLOGIC_GPIO_X, 11, 1)>,
> @@ -186,4 +151,47 @@ uart_e_default: group-uart-e-pins {
>   			};
>   		};
>   	};
> +
> +	gpio_intc: interrupt-controller@4080 {
> +		compatible = "amlogic,a4-gpio-intc",
> +			     "amlogic,meson-gpio-intc";
> +		reg = <0x0 0x4080 0x0 0x20>;
> +		interrupt-controller;
> +		#interrupt-cells = <2>;
> +		amlogic,channel-interrupts =
> +			<10 11 12 13 14 15 16 17 18 19 20 21>;
> +	};
> +
> +	ao_pinctrl: pinctrl@8e700 {
> +		compatible = "amlogic,pinctrl-a4";
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges = <0x0 0x0 0x0 0x8e700 0x0 0x80>;
> +
> +		gpioao: gpio@4 {
> +			reg = <0 0x4 0 0x16>, <0 0 0 0x4>;
> +			reg-names = "gpio", "mux";
> +			gpio-controller;
> +			#gpio-cells = <2>;
> +			gpio-ranges = <&periphs_pinctrl 0 (AMLOGIC_GPIO_AO<<8) 7>;
> +		};
> +
> +		test_n: gpio@44 {
> +			reg = <0 0x44 0 0x20>;
> +			reg-names = "gpio";
> +			gpio-controller;
> +			#gpio-cells = <2>;
> +			gpio-ranges = <&periphs_pinctrl 0 (AMLOGIC_GPIO_TEST_N<<8) 1>;
> +		};
> +	};
> +
> +	gpio_ao_intc: interrupt-controller@8e72c {
> +		compatible = "amlogic,a4-gpio-ao-intc",
> +			     "amlogic,meson-gpio-intc";
> +		reg = <0x0 0x8e72c 0x0 0x0c>;
> +		interrupt-controller;
> +		#interrupt-cells = <2>;
> +		amlogic,channel-interrupts = <140 141>;
> +	};
> +
>   };
> 
> ---
> base-commit: 73a143e436311183186ab4b365a84c662f2c9651
> change-id: 20250317-fix-a4-pinctrl-node-9babfd44e085
> 
> Best regards,


