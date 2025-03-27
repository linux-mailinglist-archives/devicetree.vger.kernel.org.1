Return-Path: <devicetree+bounces-161205-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DEA6AA72D6F
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 11:10:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7048D16BC03
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 10:10:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F86620E317;
	Thu, 27 Mar 2025 10:10:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kQd2+ZuM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A69720D4E1
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 10:10:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743070222; cv=none; b=EvS8fjvXgl6N8/Sflq7R+LnBnOeRXewlwk3qvRbjj5I9oUAYbg9ityMc61Yw1YvLAJRCAUqLWhSZeYzrqR1JjHopGqyRtzqnPUQ8bEvldUSpACvJZZZYX+uDC74SJQjbLlXuvCpyB1ChbqHpsBW2i6Vs04THfcHDHxVNFbX9YBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743070222; c=relaxed/simple;
	bh=M7BVbYjjTabRtaCO3AEPIhTcv/A/5Tj0nQsS4MNbnps=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=pHtaIavVH4qDqQWGVntFHfRCdWovMDp5vsUHAp/ngkVRzitTmhlbd+VvWxQAaBfDs1QGnCE0IbGaDQWplULwFhjduiCPHptytlsEYe7cVYHcckiSroW17AZGz+JIbVBzXuCIjLu/Ao/gv2Kzua1kOMjRQS3caicuk86UwS6h/I8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kQd2+ZuM; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-43ce70f9afbso7853375e9.0
        for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 03:10:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743070219; x=1743675019; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5dVK4MEqf6X0TMeYGVfQUWRHq14IdZfNCfWTmHkdE5g=;
        b=kQd2+ZuMYYzWGLSSnVZwZphMRbe8teWZ5hv0iq6sM4K/O4FjtzsJk5UMrvHCuFwVQd
         spuBh7kFWLUryKfDUy5hcdH0iQPvwKDX6WIBGXXWsShC7+iL9MAza/YG4T3uA0CAkwlw
         yi/KNr8sJ2ma/duHg2pTPZO0IS9mWBR6ImEK59/uIFslcVLi380camnXoNC0Us9myjfv
         0muNfA4EOvwVuFbAe75617yp1WoeoHetyWoK7aWdDp+98H/6wnHX8p98oTexoYsCNdLQ
         osY56aEioobpj3vr6aYUZOkPfTToG+2CBn48nB2RElcZN1QYkIJkH3csy+p+CgD6lWrX
         Q/dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743070219; x=1743675019;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=5dVK4MEqf6X0TMeYGVfQUWRHq14IdZfNCfWTmHkdE5g=;
        b=A2EWgXrtr6UVwAB0fCJP030qHcADFL2virAP1zRAACfWpY47bwX9LldntSMRR2A5go
         oXOr3Dwyw6jeA1WVfyer7MmBZT1hpcPbmm/A3Arn8gj9B7kDA5vsmmEr2ak8AjFUcBnT
         oLoQdSNrHPEQ2wuCqq72F7y50eDARQkgzMCJaTa0EIQFOlk9ZtiJuw4ouVnAs7SJJgYQ
         lJ+gE3krt29u4yBZNIYomoAFeJMa+y3onWGhSWwHoAVX5OPTsfuySbPjA1k6hWGy8zZV
         9YlJ7NpijpKRyx+ULJX88doAUhUB0ODdeARKzLKrvbfhkXDAiBi/+NOYlntbsXmjeRPC
         rahQ==
X-Forwarded-Encrypted: i=1; AJvYcCVRED3rm/aqJORFoeI6M0b/j9xrlBPIzwpuGoCkCveziiAY81z1unIJGm9JJPF5qsB7LjxH2KTY3aN1@vger.kernel.org
X-Gm-Message-State: AOJu0Yz2Rktoq9t1naHFjGwRQub/n7WT0gAWn/6vsWnrSGognuekCGVa
	nLELCEwhqR10cb9HjFIsShvP4gB9cJnrj0LKVdL1krM0erHlax3vDws30cLpAYw=
X-Gm-Gg: ASbGncurwGdvd/MMo1Th+xIfKAiCV7gbdHJ7/irNCUdBnrukER/ISUe+r9kfPRvr9PK
	w1vLFVoC+QoEccnsvDt7ygKhmI17RNkyac116WtCaXwHH040eTjbukG1HVaLLFhI0AbqN/YbN1X
	tKzJnkD1TG7L+I7aC0rfuEp9XRgumAqdNA/vY9wP4beZoe9byj+ZS+NYIAk1UiZ+EzNrCMUILzY
	wZTa9FESLda2Ju7GPQokXJ8VjwNJizDS8Apt/k6dhFoA59A0U51vg2NsO5+N6v1C+StAUzFHOdh
	/bboTp/xCfpi81Yhv2aUEHRGmw7Co4s4AYN86G5nNgx102szt1GBPBJEERxgjNUtWzeOT6IcCg6
	5EfCUm/aDktbCPLK+PUe88Q==
X-Google-Smtp-Source: AGHT+IFdm/AJweeb4Ls+JsWWO80Odn3wmJFBflJjpJ8ov4hI0GxODhTug3GPSfXEWpEi5SzYYyG8Fw==
X-Received: by 2002:a05:600c:4fd4:b0:43c:fceb:91f with SMTP id 5b1f17b1804b1-43d84f8b8a2mr35592795e9.11.1743070218550;
        Thu, 27 Mar 2025 03:10:18 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:f1b8:272a:1fa5:f554? ([2a01:e0a:3d9:2080:f1b8:272a:1fa5:f554])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3997f9b5939sm19851219f8f.60.2025.03.27.03.10.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Mar 2025 03:10:18 -0700 (PDT)
Message-ID: <d83eede1-2bf9-4ec1-ac8a-a55328324613@linaro.org>
Date: Thu, 27 Mar 2025 11:10:17 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH] arm64: dts: amlogic: a4: add pinctrl node
To: xianwei.zhao@amlogic.com, Kevin Hilman <khilman@baylibre.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250326-pinctrl-node-a4-v1-1-8c30639480f6@amlogic.com>
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
In-Reply-To: <20250326-pinctrl-node-a4-v1-1-8c30639480f6@amlogic.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 26/03/2025 06:17, Xianwei Zhao via B4 Relay wrote:
> From: Xianwei Zhao <xianwei.zhao@amlogic.com>
> 
> Add pinctrl device to support Amlogic A4 and add uart pinconf.
> 
> Signed-off-by: Xianwei Zhao <xianwei.zhao@amlogic.com>
> ---
> This commit is based on the Neil's suggestion, rebase the commit on top of
> https://web.git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git/log/?h=for-next
> which merges this commit:
> https://lore.kernel.org/all/20250212-amlogic-pinctrl-v5-4-282bc2516804@amlogic.com/
> with another one:
> https://lore.kernel.org/all/20250321-fix-a4-pinctrl-node-v1-1-5719f9f09932@amlogic.com/
> ---
>   arch/arm64/boot/dts/amlogic/amlogic-a4.dtsi | 125 ++++++++++++++++++++++++++++
>   1 file changed, 125 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/amlogic-a4.dtsi b/arch/arm64/boot/dts/amlogic/amlogic-a4.dtsi
> index a06838552f21..c02fa5ee9fd2 100644
> --- a/arch/arm64/boot/dts/amlogic/amlogic-a4.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/amlogic-a4.dtsi
> @@ -5,6 +5,7 @@
>   
>   #include "amlogic-a4-common.dtsi"
>   #include <dt-bindings/power/amlogic,a4-pwrc.h>
> +#include <dt-bindings/pinctrl/amlogic,pinctrl.h>
>   / {
>   	cpus {
>   		#address-cells = <2>;
> @@ -50,6 +51,107 @@ pwrc: power-controller {
>   };
>   
>   &apb {
> +	periphs_pinctrl: pinctrl@4000 {
> +		compatible = "amlogic,pinctrl-a4";
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges = <0x0 0x0 0x0 0x4000 0x0 0x280>;
> +
> +		gpiox: gpio@100 {
> +			reg = <0 0x100 0 0x40>, <0 0xc 0 0xc>;
> +			reg-names = "gpio", "mux";
> +			gpio-controller;
> +			#gpio-cells = <2>;
> +			gpio-ranges = <&periphs_pinctrl 0 (AMLOGIC_GPIO_X<<8) 18>;
> +		};
> +
> +		gpiot: gpio@140 {
> +			reg = <0 0x140 0 0x40>, <0 0x2c 0 0xc>;
> +			reg-names = "gpio", "mux";
> +			gpio-controller;
> +			#gpio-cells = <2>;
> +			gpio-ranges = <&periphs_pinctrl 0 (AMLOGIC_GPIO_T<<8) 23>;
> +		};
> +
> +		gpiod: gpio@180 {
> +			reg = <0 0x180 0 0x40>, <0 0x40 0 0x8>;
> +			reg-names = "gpio", "mux";
> +			gpio-controller;
> +			#gpio-cells = <2>;
> +			gpio-ranges = <&periphs_pinctrl 0 (AMLOGIC_GPIO_D<<8) 16>;
> +		};
> +
> +		gpioe: gpio@1c0 {
> +			reg = <0 0x1c0 0 0x40>, <0 0x48 0 0x4>;
> +			reg-names = "gpio", "mux";
> +			gpio-controller;
> +			#gpio-cells = <2>;
> +			gpio-ranges = <&periphs_pinctrl 0 (AMLOGIC_GPIO_E<<8) 2>;
> +		};
> +
> +		gpiob: gpio@240 {
> +			reg = <0 0x240 0 0x40>, <0 0 0 0x8>;
> +			reg-names = "gpio", "mux";
> +			gpio-controller;
> +			#gpio-cells = <2>;
> +			gpio-ranges = <&periphs_pinctrl 0 (AMLOGIC_GPIO_B<<8) 14>;
> +		};
> +
> +		func-uart-a {
> +			uart_a_default: group-uart-a-pins1 {
> +				pinmux = <AML_PINMUX(AMLOGIC_GPIO_X, 11, 1)>,
> +					 <AML_PINMUX(AMLOGIC_GPIO_X, 12, 1)>,
> +					 <AML_PINMUX(AMLOGIC_GPIO_X, 13, 1)>,
> +					 <AML_PINMUX(AMLOGIC_GPIO_X, 14, 1)>;
> +			};
> +
> +			group-uart-a-pins2 {
> +				pinmux = <AML_PINMUX(AMLOGIC_GPIO_D, 2, 3)>,
> +					 <AML_PINMUX(AMLOGIC_GPIO_D, 3, 3)>;
> +				bias-pull-up;
> +				drive-strength-microamp = <4000>;
> +			};
> +		};
> +
> +		func-uart-b {
> +			uart_b_default: group-uart-b-pins {
> +				pinmux = <AML_PINMUX(AMLOGIC_GPIO_E, 0, 3)>,
> +					 <AML_PINMUX(AMLOGIC_GPIO_E, 1, 3)>;
> +				bias-pull-up;
> +				drive-strength-microamp = <4000>;
> +			};
> +		};
> +
> +		func-uart-d {
> +			uart_d_default: group-uart-d-pins1 {
> +				pinmux = <AML_PINMUX(AMLOGIC_GPIO_T, 18, 4)>,
> +					 <AML_PINMUX(AMLOGIC_GPIO_T, 19, 4)>;
> +				bias-pull-up;
> +				drive-strength-microamp = <4000>;
> +			};
> +
> +			group-uart-d-pins2 {
> +				pinmux = <AML_PINMUX(AMLOGIC_GPIO_T, 7, 2)>,
> +					 <AML_PINMUX(AMLOGIC_GPIO_T, 8, 2)>,
> +					 <AML_PINMUX(AMLOGIC_GPIO_T, 9, 2)>,
> +					 <AML_PINMUX(AMLOGIC_GPIO_T, 10, 2)>;
> +				bias-pull-up;
> +				drive-strength-microamp = <4000>;
> +			};
> +		};
> +
> +		func-uart-e {
> +			uart_e_default: group-uart-e-pins {
> +				pinmux = <AML_PINMUX(AMLOGIC_GPIO_T, 14, 3)>,
> +					 <AML_PINMUX(AMLOGIC_GPIO_T, 15, 3)>,
> +					 <AML_PINMUX(AMLOGIC_GPIO_T, 16, 3)>,
> +					 <AML_PINMUX(AMLOGIC_GPIO_T, 17, 3)>;
> +				bias-pull-up;
> +				drive-strength-microamp = <4000>;
> +			};
> +		};
> +	};
> +
>   	gpio_intc: interrupt-controller@4080 {
>   		compatible = "amlogic,a4-gpio-intc",
>   			     "amlogic,meson-gpio-intc";
> @@ -60,6 +162,29 @@ gpio_intc: interrupt-controller@4080 {
>   			<10 11 12 13 14 15 16 17 18 19 20 21>;
>   	};
>   
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
>   	gpio_ao_intc: interrupt-controller@8e72c {
>   		compatible = "amlogic,a4-gpio-ao-intc",
>   			     "amlogic,meson-gpio-intc";
> 
> ---
> base-commit: 23a708916ec7ab21c8c81d61bdb7cb933f6867d5
> change-id: 20250325-pinctrl-node-a4-a4667d5ec8cb
> 
> Best regards,

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

