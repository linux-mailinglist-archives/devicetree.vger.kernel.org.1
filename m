Return-Path: <devicetree+bounces-73174-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 204C98FE241
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 11:15:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AE5E728672C
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 09:15:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0742F14D449;
	Thu,  6 Jun 2024 09:07:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WZvwHbuQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A8DB14D6E4
	for <devicetree@vger.kernel.org>; Thu,  6 Jun 2024 09:07:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717664872; cv=none; b=tPZSsp78LcVLmfRSA5UVpMfFM0fdmOQlQHXIxqqhQwplb4okKi4e3dSP+wlX3z1tZ4DvuAb5r/qSPLeoWDyC23Pp/Iq2hggmxQ9oAMaLoJm4lgLxLUIIioVqb7edeccfPuT9DUgsE0Z1lyDN42X66ogWcnyBmiZUq3NjDNJGOX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717664872; c=relaxed/simple;
	bh=89yxWvJn4VmX0MAFDtirp0qfons/to8VPvf2rFzOfkE=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=ewind4nyK5MH+IrG85ObBzvwmMhid5f/R9SsWf121ifTrwLPojgw24WkyJ1vGW+HeLqDI+muGXmWhRj2tygy28v22Gwj3yEjPhd+GWsV3noFP1+tEVkNnay2QRDX3pMPyjm0E/ITpTBis8I9AvdJqOKbCuurDDlXs/h4XF433kw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WZvwHbuQ; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2ead2c6b50bso4559961fa.0
        for <devicetree@vger.kernel.org>; Thu, 06 Jun 2024 02:07:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717664869; x=1718269669; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KPF9fzni22fLRIj1FpmdUoWEOi6ddOcH0r0gTMI9lQ8=;
        b=WZvwHbuQUnHmuFdhKExLfbMHw+SPdra8IrUVFfGAEohpWo+8xiaiV/uddZYgYaYH3z
         O4Fwjqyx9f+oigbhw7A1T199pSAVTN4h6Mddv3so6Sz0I8ECZhX2V/UCKC/lZel30xIy
         MITx8Qu7MG7RX1cX57HtOr/I5GEQCrQTsVIRgfJkuFZO9/c/qIyFr0YK0dDT+iFRa54o
         C87s3obKlkCNRDlzbQQH+Ww+HqNxk3OGQFlPq157twryyvgNiM13r83Tn5WdX0pjlyc4
         J4t0++7G+czp/r3ZagLVVJf0hvOSzRXRE7kZKjWe2lRIi4m4Nk0bvGhot+WCUFctHxQJ
         9pug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717664869; x=1718269669;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=KPF9fzni22fLRIj1FpmdUoWEOi6ddOcH0r0gTMI9lQ8=;
        b=i61Ez8J7cnOWKRhGztq7t0bCPpg6/Qfh5WmkGgBhWwztumb+tcDMNqYP0sapLdvpJ4
         xADce8MtepKQtfJ27Eg2wPeuXJhfZkamudY5iQNDtRyMbdxN6CDnJ8ztTHgFynAP+yJC
         lgt14I6dgTrSfW9Wg+zNMwM8QB2gofyuTa1BhgJsGWQ3JjgOi350H3IEY/q7mp8Wjssg
         LejrLgy+wR1S0Z49c3BM4FTmAkIgu6dESi6GbfZvIFR4OxYjdNiRIficeO3fdX9qw1tc
         XCBJFlsv5YW333I63P/PiwY6lpzvDmThvSs947kzXc0oXH2aK2LCFcDIhSc2/6pO/hI2
         z0xw==
X-Forwarded-Encrypted: i=1; AJvYcCX4QmqVqdIuXfzeUJgTRV9J4A7rZ0AhN5/vRuW7g0Bgt9OM7Rn4vRxv0FkvkIKGzp1Kk/LDFiVYx0/+gXYPdWuI+f0hBZDe/RYQjQ==
X-Gm-Message-State: AOJu0Ywp3D6ZTL4Nh5hSGlUvca6sYs1rVOIJCRAq1/nT1hoPP87NgLOz
	HLWHq96IotPta90qzC9ckhHGSj7qw3S2cmUsj2g+UPLNOAUQXx95SS+QUkfWpF0l75/iehmBmnH
	U
X-Google-Smtp-Source: AGHT+IEqhYxcHENwcuN/drruOszDra21Dj0rKWsHjgMy/QCI/qwuKnYia4mvGh8RBVLaDwQHREQ6hA==
X-Received: by 2002:a2e:9e84:0:b0:2e9:794c:19ae with SMTP id 38308e7fff4ca-2eac7a09843mr29560631fa.23.1717664869260;
        Thu, 06 Jun 2024 02:07:49 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:22fd:4ae6:287f:17f2? ([2a01:e0a:982:cbb0:22fd:4ae6:287f:17f2])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4215814fc11sm48347935e9.48.2024.06.06.02.07.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Jun 2024 02:07:48 -0700 (PDT)
Message-ID: <120a2b2e-abb9-4476-a175-10f83a322434@linaro.org>
Date: Thu, 6 Jun 2024 11:07:37 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v2] arm64: dts: meson: radxa-zero2: add pwm-fan support
To: Christian Hewitt <christianshewitt@gmail.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Yuntian Zhang <yt@radxa.com>
References: <20240606090615.3946433-1-christianshewitt@gmail.com>
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
In-Reply-To: <20240606090615.3946433-1-christianshewitt@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 06/06/2024 11:06, Christian Hewitt wrote:
> The A311D on Zero2 needs active cooling and the board includes a header to
> connect a simple fan. Add pwm-fan support with basic thermal properties so
> the fan runs when connected.
> 
> Suggested-by: Yuntian Zhang <yt@radxa.com>
> Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
> ---
> Changes since v1: [0]
> - Drop min/max state to comply with bindings
> - Drop ddr_thermal node
> - Add cpu_thermal trips
> - Use cooling map2 to avoid clashing with dtsi inherited maps
> 
> [0] https://patchwork.kernel.org/project/linux-amlogic/patch/20231028075445.3515664-1-christianshewitt@gmail.com/
> 
>   .../dts/amlogic/meson-g12b-radxa-zero2.dts    | 24 +++++++++++++++++++
>   1 file changed, 24 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts
> index 890f5bfebb03..8445701100d0 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts
> @@ -33,6 +33,13 @@ memory@0 {
>   		reg = <0x0 0x0 0x0 0x80000000>;
>   	};
>   
> +	fan0: pwm-fan {
> +		compatible = "pwm-fan";
> +		#cooling-cells = <2>;
> +		cooling-levels = <0 64 128 192 255>;
> +		pwms = <&pwm_AO_ab 0 40000 0>;
> +	};
> +
>   	gpio-keys-polled {
>   		compatible = "gpio-keys-polled";
>   		poll-interval = <100>;
> @@ -286,6 +293,23 @@ &cpu103 {
>   	clock-latency = <50000>;
>   };
>   
> +&cpu_thermal {
> +	trips {
> +		cpu_active: cpu-active {
> +			temperature = <70000>; /* millicelsius */
> +			hysteresis = <2000>; /* millicelsius */
> +			type = "active";
> +		};
> +	};
> +
> +	cooling-maps {
> +		map2 {
> +			trip = <&cpu_active>;
> +			cooling-device = <&fan0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> +		};
> +	};
> +};
> +
>   &frddr_a {
>   	status = "okay";
>   };

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

