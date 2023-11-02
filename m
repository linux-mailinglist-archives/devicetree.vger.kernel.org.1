Return-Path: <devicetree+bounces-13547-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1808D7DED78
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 08:36:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C92C02811D6
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 07:36:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F6E663C6;
	Thu,  2 Nov 2023 07:36:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="viYoA+tv"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49A6C6AB0
	for <devicetree@vger.kernel.org>; Thu,  2 Nov 2023 07:36:43 +0000 (UTC)
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B432012D
	for <devicetree@vger.kernel.org>; Thu,  2 Nov 2023 00:36:36 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-5406c099cebso906594a12.2
        for <devicetree@vger.kernel.org>; Thu, 02 Nov 2023 00:36:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698910595; x=1699515395; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RJ5RebpjsxJoYibIPD1ljL5O02umst1mzZM0Wd/miPc=;
        b=viYoA+tvYRsikt3lu9yx4ibWGLuPpeaOWQpSWPK/KVbg+KwgHbUUTXlH+C5RLEoS8Z
         vDdSSyY2wqh0eIhhe4WtVJ8apdJfE5iYoVpDti5/kM4/C32QXaJgSunSu3H/Hv4s7u/L
         OsJE9biyitwzv6X+kGvWrfSyW3xoGh1rwJntgM5UFLuUznYjhGZbXBV3zS2tU7hdrM2I
         WJLg9jinWQ2gB4F5ZzcUe+NUsuejxfDs4erp4Z45aCHyIlSdF0aYypCgZ43vhXvCWvwL
         bEihsdzOc/XS0qJL11HEoxb+VZG/XBreOsbyQBcVWujLIK0QNqvwO1zlkjNUD58pVIaW
         fimw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698910595; x=1699515395;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RJ5RebpjsxJoYibIPD1ljL5O02umst1mzZM0Wd/miPc=;
        b=v5ZsyDzqULXFQBATbzIyDwjLyU8neqsO9E6MnuHKsjVvsFbw3kls+1amewnjj79r+5
         GENF5ErLe8SWBIx2ClmId3BpnroAxAz7e3haTGGa5wMIOHLdcNL7A3Yst3Y1Z654+erg
         YBo+kN/rr8TXbQr0DDefNySHQWt0cCEf/hpabg8231PD4DhqjMhF2WcC0r1m0DFbToAs
         VM/tfepMVtpVyBcoGIbE3t8nJpg9Yvh99vDacqZVIN4gFHlp/JeY3ZAAc/TOEhKjQaIC
         +nR9332UbaqBQs44LYgtXtv1fuoGCHZXkNjBfo2eGyCo0uv0UlVHIWvy++02oSYMHjuf
         e1Ig==
X-Gm-Message-State: AOJu0Yx2Jca4RrP5pSbSzbj0EIGDKewAqG+5VNnywbjD8JB0o//wCGes
	9hDqvCKw8eNbpVrVfaeNalIELA==
X-Google-Smtp-Source: AGHT+IE3TeMM7X2y4ZP/DVbUUnOWGthxzkY+I0YrXkFDf+92mpMzr45zRuSDk0XVQcvZPWroGQOrtg==
X-Received: by 2002:aa7:dac4:0:b0:53f:f0a6:9aec with SMTP id x4-20020aa7dac4000000b0053ff0a69aecmr16148681eds.22.1698910595093;
        Thu, 02 Nov 2023 00:36:35 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.218.126])
        by smtp.gmail.com with ESMTPSA id z5-20020a509e05000000b0052e1783ab25sm2009861ede.70.2023.11.02.00.36.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Nov 2023 00:36:34 -0700 (PDT)
Message-ID: <223f6bfe-4e99-4b04-98e8-73fc43dcd212@linaro.org>
Date: Thu, 2 Nov 2023 08:36:32 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] arm64: dts: freescale: introduce rve-gateway board
Content-Language: en-US
To: Hugo Villeneuve <hugo@hugovil.com>, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 hvilleneuve@dimonoff.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
 leoyang.li@nxp.com, robh@kernel.org
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20231101183549.2960083-1-hugo@hugovil.com>
 <20231101183549.2960083-4-hugo@hugovil.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 xsFNBFVDQq4BEAC6KeLOfFsAvFMBsrCrJ2bCalhPv5+KQF2PS2+iwZI8BpRZoV+Bd5kWvN79
 cFgcqTTuNHjAvxtUG8pQgGTHAObYs6xeYJtjUH0ZX6ndJ33FJYf5V3yXqqjcZ30FgHzJCFUu
 JMp7PSyMPzpUXfU12yfcRYVEMQrmplNZssmYhiTeVicuOOypWugZKVLGNm0IweVCaZ/DJDIH
 gNbpvVwjcKYrx85m9cBVEBUGaQP6AT7qlVCkrf50v8bofSIyVa2xmubbAwwFA1oxoOusjPIE
 J3iadrwpFvsZjF5uHAKS+7wHLoW9hVzOnLbX6ajk5Hf8Pb1m+VH/E8bPBNNYKkfTtypTDUCj
 NYcd27tjnXfG+SDs/EXNUAIRefCyvaRG7oRYF3Ec+2RgQDRnmmjCjoQNbFrJvJkFHlPeHaeS
 BosGY+XWKydnmsfY7SSnjAzLUGAFhLd/XDVpb1Een2XucPpKvt9ORF+48gy12FA5GduRLhQU
 vK4tU7ojoem/G23PcowM1CwPurC8sAVsQb9KmwTGh7rVz3ks3w/zfGBy3+WmLg++C2Wct6nM
 Pd8/6CBVjEWqD06/RjI2AnjIq5fSEH/BIfXXfC68nMp9BZoy3So4ZsbOlBmtAPvMYX6U8VwD
 TNeBxJu5Ex0Izf1NV9CzC3nNaFUYOY8KfN01X5SExAoVTr09ewARAQABzTRLcnp5c3p0b2Yg
 S296bG93c2tpIDxrcnp5c3p0b2Yua296bG93c2tpQGxpbmFyby5vcmc+wsGUBBMBCgA+FiEE
 m9B+DgxR+NWWd7dUG5NDfTtBYpsFAmI+BxMCGwMFCRRfreEFCwkIBwIGFQoJCAsCBBYCAwEC
 HgECF4AACgkQG5NDfTtBYptgbhAAjAGunRoOTduBeC7V6GGOQMYIT5n3OuDSzG1oZyM4kyvO
 XeodvvYv49/ng473E8ZFhXfrre+c1olbr1A8pnz9vKVQs9JGVa6wwr/6ddH7/yvcaCQnHRPK
 mnXyP2BViBlyDWQ71UC3N12YCoHE2cVmfrn4JeyK/gHCvcW3hUW4i5rMd5M5WZAeiJj3rvYh
 v8WMKDJOtZFXxwaYGbvFJNDdvdTHc2x2fGaWwmXMJn2xs1ZyFAeHQvrp49mS6PBQZzcx0XL5
 cU9ZjhzOZDn6Apv45/C/lUJvPc3lo/pr5cmlOvPq1AsP6/xRXsEFX/SdvdxJ8w9KtGaxdJuf
 rpzLQ8Ht+H0lY2On1duYhmro8WglOypHy+TusYrDEry2qDNlc/bApQKtd9uqyDZ+rx8bGxyY
 qBP6bvsQx5YACI4p8R0J43tSqWwJTP/R5oPRQW2O1Ye1DEcdeyzZfifrQz58aoZrVQq+innR
 aDwu8qDB5UgmMQ7cjDSeAQABdghq7pqrA4P8lkA7qTG+aw8Z21OoAyZdUNm8NWJoQy8m4nUP
 gmeeQPRc0vjp5JkYPgTqwf08cluqO6vQuYL2YmwVBIbO7cE7LNGkPDA3RYMu+zPY9UUi/ln5
 dcKuEStFZ5eqVyqVoZ9eu3RTCGIXAHe1NcfcMT9HT0DPp3+ieTxFx6RjY3kYTGLOwU0EVUNc
 NAEQAM2StBhJERQvgPcbCzjokShn0cRA4q2SvCOvOXD+0KapXMRFE+/PZeDyfv4dEKuCqeh0
 hihSHlaxTzg3TcqUu54w2xYskG8Fq5tg3gm4kh1Gvh1LijIXX99ABA8eHxOGmLPRIBkXHqJY
 oHtCvPc6sYKNM9xbp6I4yF56xVLmHGJ61KaWKf5KKWYgA9kfHufbja7qR0c6H79LIsiYqf92
 H1HNq1WlQpu/fh4/XAAaV1axHFt/dY/2kU05tLMj8GjeQDz1fHas7augL4argt4e+jum3Nwt
 yupodQBxncKAUbzwKcDrPqUFmfRbJ7ARw8491xQHZDsP82JRj4cOJX32sBg8nO2N5OsFJOcd
 5IE9v6qfllkZDAh1Rb1h6DFYq9dcdPAHl4zOj9EHq99/CpyccOh7SrtWDNFFknCmLpowhct9
 5ZnlavBrDbOV0W47gO33WkXMFI4il4y1+Bv89979rVYn8aBohEgET41SpyQz7fMkcaZU+ok/
 +HYjC/qfDxT7tjKXqBQEscVODaFicsUkjheOD4BfWEcVUqa+XdUEciwG/SgNyxBZepj41oVq
 FPSVE+Ni2tNrW/e16b8mgXNngHSnbsr6pAIXZH3qFW+4TKPMGZ2rZ6zITrMip+12jgw4mGjy
 5y06JZvA02rZT2k9aa7i9dUUFggaanI09jNGbRA/ABEBAAHCwXwEGAEKACYCGwwWIQSb0H4O
 DFH41ZZ3t1Qbk0N9O0FimwUCYDzvagUJFF+UtgAKCRAbk0N9O0Fim9JzD/0auoGtUu4mgnna
 oEEpQEOjgT7l9TVuO3Qa/SeH+E0m55y5Fjpp6ZToc481za3xAcxK/BtIX5Wn1mQ6+szfrJQ6
 59y2io437BeuWIRjQniSxHz1kgtFECiV30yHRgOoQlzUea7FgsnuWdstgfWi6LxstswEzxLZ
 Sj1EqpXYZE4uLjh6dW292sO+j4LEqPYr53hyV4I2LPmptPE9Rb9yCTAbSUlzgjiyyjuXhcwM
 qf3lzsm02y7Ooq+ERVKiJzlvLd9tSe4jRx6Z6LMXhB21fa5DGs/tHAcUF35hSJrvMJzPT/+u
 /oVmYDFZkbLlqs2XpWaVCo2jv8+iHxZZ9FL7F6AHFzqEFdqGnJQqmEApiRqH6b4jRBOgJ+cY
 qc+rJggwMQcJL9F+oDm3wX47nr6jIsEB5ZftdybIzpMZ5V9v45lUwmdnMrSzZVgC4jRGXzsU
 EViBQt2CopXtHtYfPAO5nAkIvKSNp3jmGxZw4aTc5xoAZBLo0OV+Ezo71pg3AYvq0a3/oGRG
 KQ06ztUMRrj8eVtpImjsWCd0bDWRaaR4vqhCHvAG9iWXZu4qh3ipie2Y0oSJygcZT7H3UZxq
 fyYKiqEmRuqsvv6dcbblD8ZLkz1EVZL6djImH5zc5x8qpVxlA0A0i23v5QvN00m6G9NFF0Le
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20231101183549.2960083-4-hugo@hugovil.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 01/11/2023 19:35, Hugo Villeneuve wrote:
> From: Hugo Villeneuve <hvilleneuve@dimonoff.com>
> 
> The RVE gateway board is based on a Variscite VAR-SOM-NANO,
> with a NXP MX8MN nano CPU.
> 
> Signed-off-by: Hugo Villeneuve <hvilleneuve@dimonoff.com>
> ---
>  MAINTAINERS                                   |   7 +
>  arch/arm64/boot/dts/freescale/Makefile        |   1 +
>  .../boot/dts/freescale/imx8mn-rve-gateway.dts | 284 ++++++++++++++++++
>  3 files changed, 292 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8mn-rve-gateway.dts
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 43c5ed3c4508..9423b1bf35fc 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -18778,6 +18778,13 @@ F:	samples/rust/
>  F:	scripts/*rust*
>  K:	\b(?i:rust)\b
>  
> +RVE BOARD SUPPORT
> +M:	Hugo Villeneuve <hvilleneuve@dimonoff.com>
> +L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
> +S:	Supported
> +W:	https://rve.ca
> +F:	arch/arm64/boot/dts/freescale/imx*rve-*.dts*

I still don't think individual boards should receive maintainer entry.
https://lore.kernel.org/all/20210809080204.8381-1-shawnguo@kernel.org/

> +
>  RXRPC SOCKETS (AF_RXRPC)
>  M:	David Howells <dhowells@redhat.com>
>  M:	Marc Dionne <marc.dionne@auristor.com>
> diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
> index 89aee6c92576..760a0ca7adc3 100644
> --- a/arch/arm64/boot/dts/freescale/Makefile
> +++ b/arch/arm64/boot/dts/freescale/Makefile
> @@ -89,6 +89,7 @@ dtb-$(CONFIG_ARCH_MXC) += imx8mn-bsh-smm-s2pro.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mn-evk.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mn-ddr3l-evk.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mn-ddr4-evk.dtb
> +dtb-$(CONFIG_ARCH_MXC) += imx8mn-rve-gateway.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mn-tqma8mqnl-mba8mx.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mn-var-som-symphony.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mn-venice-gw7902.dtb
> diff --git a/arch/arm64/boot/dts/freescale/imx8mn-rve-gateway.dts b/arch/arm64/boot/dts/freescale/imx8mn-rve-gateway.dts
> new file mode 100644
> index 000000000000..312718982a52
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/imx8mn-rve-gateway.dts
> @@ -0,0 +1,284 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright 2023 DimOnOff
> + */
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/usb/pd.h>
> +#include "imx8mn-var-som.dtsi"
> +
> +/ {
> +	model = "RVE gateway";
> +	compatible = "rve,rve-gateway", "fsl,imx8mn";

Missing compatible of SoM.

> +
> +	crystal_duart_24m: crystal-duart-24m {
> +		compatible = "fixed-clock";
> +		#clock-cells = <0>;
> +		clock-frequency = <24000000>;
> +	};
> +
> +	gpio-keys {
> +		compatible = "gpio-keys";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_gpio_keys>;
> +		status = "okay";

Drop

> +
> +		key-enter {
> +			label = "enter";
> +			gpios = <&gpio1 1 GPIO_ACTIVE_LOW>;
> +			linux,code = <KEY_ENTER>;
> +		};
> +
> +		key-exit {
> +			label = "exit";
> +			gpios = <&gpio3 23 GPIO_ACTIVE_LOW>;
> +			linux,code = <KEY_ESC>;
> +		};
> +	};
> +
> +	lcd {
> +		compatible = "hit,hd44780";
> +		display-height-chars = <2>;
> +		display-width-chars = <20>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_lcd>;
> +		data-gpios =
> +			<&gpio5  1 GPIO_ACTIVE_HIGH>,

This should be after =, with the reset of lines properly aligned.

> +			<&gpio1  6 GPIO_ACTIVE_HIGH>,
> +			<&gpio1 14 GPIO_ACTIVE_HIGH>,
> +			<&gpio4 28 GPIO_ACTIVE_HIGH>,
> +			<&gpio5 24 GPIO_ACTIVE_HIGH>,
> +			<&gpio5  2 GPIO_ACTIVE_HIGH>,
> +			<&gpio1 12 GPIO_ACTIVE_HIGH>,
> +			<&gpio5 25 GPIO_ACTIVE_HIGH>;
> +		enable-gpios = <&gpio5 23 GPIO_ACTIVE_HIGH>;
> +		rs-gpios = <&gpio1 7 GPIO_ACTIVE_HIGH>;
> +		rw-gpios = <&gpio4 27 GPIO_ACTIVE_HIGH>;
> +	};
> +
> +	reg_3p3v: regulator-3p3v {
> +		compatible = "regulator-fixed";
> +		regulator-name = "3P3V";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		regulator-always-on;
> +		};

Fix indentation.

> +
> +	rotary: rotary-encoder { /* Bourns PEC12R rotary encoder, 24 steps. */

No comments after {. Put them in line before or after. This applies to
other places as well.

> +		compatible = "rotary-encoder";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_rotary>;
> +		gpios =
> +			<&gpio1  5 GPIO_ACTIVE_LOW>, /* A */

This should be after =, with the reset of lines properly aligned.


> +			<&gpio3 21 GPIO_ACTIVE_LOW>; /* B */
> +		linux,axis = <0>; /* REL_X */
> +		rotary-encoder,encoding = "gray";
> +		rotary-encoder,relative-axis;
> +	};
> +};
> +
> +&ecspi1 {
> +	cs-gpios = <&gpio5 9 GPIO_ACTIVE_LOW>;
> +
> +	duart1: serial@0 {
> +		compatible = "nxp,sc16is752";
> +		reg = <0>;
> +		spi-rx-bus-width = <1>;
> +		spi-tx-bus-width = <1>;
> +		spi-max-frequency = <4000000>;
> +		clocks = <&crystal_duart_24m>;
> +		interrupt-parent = <&gpio3>;
> +		interrupts = <22 IRQ_TYPE_EDGE_FALLING>;
> +		gpio-controller;
> +		#gpio-cells = <2>;
> +		gpio-line-names = "RADIO0", "RADIO1", "RADIO2", "RADIO3",
> +		"RADIO4", "RADIO_RESET", "TP12", "TP11";
> +		linux,rs485-enabled-at-boot-time;
> +		rs485-rts-active-low;
> +	};
> +
> +	/delete-node/ touchscreen@0;
> +};
> +
> +&ecspi2 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_ecspi2>;
> +	cs-gpios = <&gpio5 13 GPIO_ACTIVE_LOW>;
> +	/delete-property/ dmas;
> +	/delete-property/ dma-names;
> +	status = "okay";
> +
> +	duart2: serial@0 {
> +		compatible = "nxp,sc16is752";
> +		reg = <0>;
> +		spi-rx-bus-width = <1>;
> +		spi-tx-bus-width = <1>;
> +		spi-max-frequency = <4000000>;
> +		clocks = <&crystal_duart_24m>;
> +		interrupt-parent = <&gpio3>;
> +		interrupts = <20 IRQ_TYPE_EDGE_FALLING>;
> +		gpio-controller;
> +		#gpio-cells = <2>;
> +		gpio-line-names = "LED_B_USER", "LED_R_USER", "LED_G_USER",
> +		"GPIO_EXT3", "GPIO_EXT2", "GPIO_EXT1", "GPIO_EXT0", "TP13";
> +		linux,rs485-enabled-at-boot-time;
> +		rs485-rts-active-low;
> +	};
> +};
> +
> +/* Configure PWM pins in GPIO mode: */
> +&gpio5 {
> +	gpio-line-names = "", "", "", "PWM3", "PWM2", "PWM1";
> +};
> +
> +&gpu {
> +	status = "disabled";
> +};
> +
> +&i2c2 {
> +	clock-frequency = <400000>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_i2c2>;
> +	status = "okay";
> +
> +	eeprom_cb: eeprom@56 { /* Carrier board EEPROM */
> +		compatible = "atmel,24c04";
> +		reg = <0x56>;
> +		pagesize = <16>;
> +		vcc-supply = <&reg_3p3v>;
> +	};
> +
> +	lm75: sensor@48 {
> +		compatible = "st,stlm75";
> +		reg = <0x48>;
> +		vs-supply = <&reg_3p3v>;
> +	};
> +
> +	mcp7940: rtc@6f {
> +		compatible = "microchip,mcp7940x";
> +		reg = <0x6f>;
> +	};
> +};
> +
> +&i2c3 {
> +	codec@1a {
> +		status = "disabled";
> +	};
> +};
> +
> +&i2c4 {
> +	clock-frequency = <400000>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_i2c4>;
> +	status = "okay";
> +
> +	pcf8574_1: gpio@38 {
> +		status = "okay";

Drop

> +		compatible = "nxp,pcf8574";
> +		reg = <0x38>;
> +		gpio-controller;
> +		#gpio-cells = <2>;
> +		gpio-line-names = "LED_B_COMM3", "LED_R_COMM3", "LED_G_COMM3",
> +		"TP14", "TP15", "LED_G_COMM4", "LED_R_COMM4", "LED_B_COMM4";
> +	};
> +
> +	pcf8574_2: gpio@39 {
> +		status = "okay";

Drop


> +		compatible = "nxp,pcf8574";
> +		reg = <0x39>;
> +		gpio-controller;
> +		#gpio-cells = <2>;
> +		gpio-line-names = "LED_B_COMM2", "LED_G_COMM2", "LED_B_COMM1",
> +		"LED_R_COMM2", "LED_R_COMM1", "LED_G_COMM1", "TP16", "TP17";
> +	};
> +};
> +
> +&uart2 {
> +	/delete-node/ bluetooth;

Why? If the hardware does not exist, why it is even in the DTSI? It does
exist, so removing is not correct.


> +};
> +
> +&usbotg1 {
> +	dr_mode = "host";
> +	disable-over-current;
> +	status = "okay";
> +};
> +
> +/* SD interface on expansion connector. */
> +&usdhc2 {
> +	/delete-property/vmmc-supply;

Why? The supply is needed.


Best regards,
Krzysztof


