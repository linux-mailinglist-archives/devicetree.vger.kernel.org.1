Return-Path: <devicetree+bounces-19105-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A77377F9B63
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 09:12:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6AE52280D65
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 08:12:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74B87111A4;
	Mon, 27 Nov 2023 08:12:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ayynpGb6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 86170136
	for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 00:12:43 -0800 (PST)
Received: by mail-lj1-x22c.google.com with SMTP id 38308e7fff4ca-2c8790474d5so49488341fa.2
        for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 00:12:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701072762; x=1701677562; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oDZtUi7jbhZiZ6gFrIVGS7Pc6EtiVEZLQbo/dnLHNT8=;
        b=ayynpGb6LQ5ckPlufVRnZAnoDJtD3Z60RZfbyA1Egr7IJGsslxxK8K4ALLfRTi1rbf
         MJIKCXIR3isUw46qV+ID3RKlIsCSl2LBtVVKlVUXE1Mz5ebRyqQF3PX3sAB6uAimi09L
         rgf21qqI8IaMUfDXk3px9N9ARw7HlXfNzmfdwRuYTFt1bRugYp0T8Ae84scDEndU1/v4
         oIInl++hYOuPwnQDwmIGBARs0V7HA/27wqaupGvTBYxxOcRIf1qzdozv3iFp8NoOIXRo
         enoj0SjxnFfZkdiF+O4U7kOKLHRng9qWdFmOryxfgXapzW7ketCIjzf61op72oZjt02Y
         VO4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701072762; x=1701677562;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=oDZtUi7jbhZiZ6gFrIVGS7Pc6EtiVEZLQbo/dnLHNT8=;
        b=phVpKZxPZJHW9AR84x+lXbCc/eYqT2gSlsLW8yuanCgIIGbyolAR5iWPt5037sUoFv
         6yumTbxMWlpfvWRuigJp+WpmZHIfCPspTySO+L6ucXsxRFSA+T/07njVIsBFwFYGN0PK
         E9hLp8W2flbjmtaSBpUJj4NQ8WMyXaI/Mglc9Z1PLpiP0gLrS+am6l71S9JNJWLko+Na
         9jXCHE2ZitBIaxElQqyPrVy9HA1AIFAXBzKn1oXtqZ+Z9EXmDzQZ1rmUOj1ocFm97yTL
         jsJrXla+kfLEjE6f2QbM1qzRnQZyFzyi3sYRPHb9gVDZOS6xwtMs3T9qP7HWkHeh78U8
         QooQ==
X-Gm-Message-State: AOJu0YyR8LOROYX88+I7tAkFQxUsSo1JBb2Gu5sRqxAcgI+ibOl2fY33
	+0k3UH4v7trE/LQS/j2CbnVWYg==
X-Google-Smtp-Source: AGHT+IHUzFg3nwVkI3fr+ES71VeklRqkXC9pJMV7pMTwEUnZrWkKltvjw2FWrd5nOiv2l/Ei+7HdxQ==
X-Received: by 2002:a2e:545d:0:b0:2c9:a191:92e with SMTP id y29-20020a2e545d000000b002c9a191092emr1525037ljd.15.1701072760871;
        Mon, 27 Nov 2023 00:12:40 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:5a15:ac68:b4a4:85ff? ([2a01:e0a:982:cbb0:5a15:ac68:b4a4:85ff])
        by smtp.gmail.com with ESMTPSA id fl8-20020a05600c0b8800b004030e8ff964sm13704060wmb.34.2023.11.27.00.12.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Nov 2023 00:12:40 -0800 (PST)
Message-ID: <eda3c1a8-b241-4016-9878-6e4c88b56b50@linaro.org>
Date: Mon, 27 Nov 2023 09:12:40 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH] arm64: dts: meson: radxa-zero2: add pwm-fan support
Content-Language: en-US, fr
To: Christian Hewitt <christianshewitt@gmail.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Yuntian Zhang <yt@radxa.com>
References: <20231028075445.3515664-1-christianshewitt@gmail.com>
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
Organization: Linaro Developer Services
In-Reply-To: <20231028075445.3515664-1-christianshewitt@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 28/10/2023 09:54, Christian Hewitt wrote:
> The A311D on Zero2 needs active cooling and the board includes a header to
> connect a simple fan. Add pwm-fan support with basic thermal properties so
> the fan runs when connected.
> 
> Suggested-by: Yuntian Zhang <yt@radxa.com>
> Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
> ---
>   .../dts/amlogic/meson-g12b-radxa-zero2.dts    | 27 +++++++++++++++++++
>   1 file changed, 27 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts
> index 890f5bfebb03..895b6ea67180 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts
> @@ -33,6 +33,15 @@ memory@0 {
>   		reg = <0x0 0x0 0x0 0x80000000>;
>   	};
>   
> +	fan0: pwm-fan {
> +		compatible = "pwm-fan";
> +		#cooling-cells = <2>;
> +		cooling-min-state = <0>;
> +		cooling-max-state = <4>;
> +		cooling-levels = <0 64 128 192 255>;
> +		pwms = <&pwm_AO_ab 0 40000 0>;
> +	};
> +
>   	gpio-keys-polled {
>   		compatible = "gpio-keys-polled";
>   		poll-interval = <100>;
> @@ -286,6 +295,24 @@ &cpu103 {
>   	clock-latency = <50000>;
>   };
>   
> +&cpu_thermal {
> +	cooling-maps {
> +		map0 {
> +			trip = <&cpu_passive>;
> +			cooling-device = <&fan0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> +		};
> +	};
> +};
> +
> +&ddr_thermal {
> +	cooling-maps {
> +		map0 {
> +			trip = <&ddr_passive>;
> +			cooling-device = <&fan0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> +		};
> +	};
> +};

You should instead add a new active trips, and use them for the fan cooling-map.

Look at how it's done on the Khadas VIM3s or Odroid boards.

Neil

> +
>   &frddr_a {
>   	status = "okay";
>   };


