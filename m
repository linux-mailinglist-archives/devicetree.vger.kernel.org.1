Return-Path: <devicetree+bounces-68012-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B58C68CA8FF
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 09:34:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5D450B22600
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 07:34:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F42E535AF;
	Tue, 21 May 2024 07:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="m0Qza6X0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF78953362
	for <devicetree@vger.kernel.org>; Tue, 21 May 2024 07:34:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716276863; cv=none; b=jU/u0N0F3GSFOCfHQU9lm2MF9s278iSKbEKsSpWkrYfSoAldGxsUirYn5G5jTHyiY8S9YlceWzodRXZf2A4arnSd4FU8pUri9M+UMzxzhM4GAiiRK7fI9686CgL+JH75LM1/UWkg4WZCh2qDjvh1W0m7+mVQIMnG/Rn8dOgN3Uk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716276863; c=relaxed/simple;
	bh=pAeG2CFOT/D5a7A6CmyGcRVSTkdG0n7lyiPuFEIVNNA=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=qY5+3YEaGzqHw1bgPWJwxMcL3TwIMgD7Etn5jEtcbBvi6R8w4HaTBxfs0KjAjsZogYaqBP9oMbU3/N1avQ6m359kxGUqmdFkcknaBGpqh0FL+lGiIn3PeJCIOxb35Lvfv7LkKTFYIsZBLD4GvvljqSph5DrnyLFJFdZwkTXufYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=m0Qza6X0; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-57822392a0dso609527a12.0
        for <devicetree@vger.kernel.org>; Tue, 21 May 2024 00:34:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716276859; x=1716881659; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CMHax4Pr4b+O02m2JmYswFgOmYbDFbB51czH5x/68eo=;
        b=m0Qza6X0/Z9Tsi0+r6aJUzUB6ARTF06+OrDOPZPlF8vt5heCc7Y4Oa4CNSNE4zQ4B8
         zwO2o/N0NNuPVExd1MQx2Kk+HBHqi/yduuEYhD1uCamG+5o0hOz9vGBOSo0yH56ifsXo
         vcRigZ/eVmY4pKZXFcdMZgeV6JFg+zpekkX7nTrqlLBnFrdVDvwnjv/JW02Y5lJ/xr3t
         xF27AdIS0kBC86fvyYwV4chpxFI1xhbUzKRpYA98zqYpEmfnK01XWHqKdELQZzZg/8SB
         iFlyZr4bj34pDk++P5p2pwc/iZgC7EIQxRgNH47qvC/YucSy0kyn9BUf895xAfEvksMo
         o6FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716276859; x=1716881659;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=CMHax4Pr4b+O02m2JmYswFgOmYbDFbB51czH5x/68eo=;
        b=QE1VLSvMF58VnKclnoLWl6VoBSynAAXLyt5VomMM3E7cUmnk0s6WqP6kD2jpzVU1F2
         b9hR1VzAszMQ0rSeN3NcheNVlBZfw1lfC5nx6p5zMFicHVxap2P7GwD/Zth4pvX9JYyV
         pW4YiYkLMNtaeOy2FjDXRMGQbA2iZcmkeJwWR9B/cppQh6DNUpyS12NmP+CPIR1x74jP
         +1aGICJftU6UtvGkMcADk2DyaoalKcKTZYQrOf1xG8EBj2ZolOmLAiy5ZtRyEi6K5Drl
         ilthBdJ29jFnEEAwesEFVa8XAqK7hVwal40w/RAjbJi9pFSRIkvUnbj++sABk1nT/jl9
         C2Nw==
X-Forwarded-Encrypted: i=1; AJvYcCXTK8e2NWbUGmwT1YMCsGnmx+CyjrEcTKNUrOPKQNaXeRajDGUqP0lZCoLPsRttyE6yaQKdvAiIwut0mAocSYQgPGTNHxwsQ9AQfg==
X-Gm-Message-State: AOJu0Yw9yP+8dUZ6duFzLS8LDddZlpygY9Dsz/U7BSLwsbsRluli82z2
	x5m7r1ksH+QRLH74P1ZWlKtD3cAG/VniYHlbACi+Vm4Ll7uLqT0Jfz7fAG7Z/YM=
X-Google-Smtp-Source: AGHT+IH5nFdjW0QRwbNkBOAM+4rSewNFvz2jWrfD9zMOvR2Qg46FvsnqORUa+fYPx3UyiT/uYIuVyQ==
X-Received: by 2002:a17:906:fe45:b0:a5a:44a0:8e21 with SMTP id a640c23a62f3a-a5a44afd0demr2373368066b.69.1716276858688;
        Tue, 21 May 2024 00:34:18 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:adf9:e5d:4c15:f725? ([2a01:e0a:982:cbb0:adf9:e5d:4c15:f725])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a61b1df3ca5sm213052066b.176.2024.05.21.00.34.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 May 2024 00:34:18 -0700 (PDT)
Message-ID: <330ad0c3-1f4b-4f74-ad64-de48813aaa18@linaro.org>
Date: Tue, 21 May 2024 09:34:17 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v4 4/4] arm64: dts: meson: add dts links to secure-monitor
 for soc driver in a1, axg, gx, g12
To: Viacheslav Bocharov <adeep@lexina.in>, Kevin Hilman
 <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
References: <20240516112849.3803674-2-adeep@lexina.in>
 <20240516112849.3803674-8-adeep@lexina.in>
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
In-Reply-To: <20240516112849.3803674-8-adeep@lexina.in>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 16/05/2024 13:26, Viacheslav Bocharov wrote:
> Add links to secure-monitor in soc driver section for A1, AXG, GX, G12
> Amlogic family for use with meson-socinfo-sm driver.
> 
> Signed-off-by: Viacheslav Bocharov <adeep@lexina.in>
> ---
>   arch/arm64/boot/dts/amlogic/meson-a1.dtsi         | 1 +
>   arch/arm64/boot/dts/amlogic/meson-axg.dtsi        | 1 +
>   arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi | 1 +
>   arch/arm64/boot/dts/amlogic/meson-gx.dtsi         | 1 +
>   4 files changed, 4 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/meson-a1.dtsi b/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
> index c03e207ea6c5..d47f056117fc 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
> @@ -407,6 +407,7 @@ hwrng: rng@5118 {
>   			sec_AO: ao-secure@5a20 {
>   				compatible = "amlogic,meson-gx-ao-secure", "syscon";
>   				reg = <0x0 0x5a20 0x0 0x140>;
> +				secure-monitor = <&sm>;
>   				amlogic,has-chip-id;
>   			};
>   
> diff --git a/arch/arm64/boot/dts/amlogic/meson-axg.dtsi b/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
> index 6d12b760b90f..45791ec6694a 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
> @@ -1689,6 +1689,7 @@ mux {
>   			sec_AO: ao-secure@140 {
>   				compatible = "amlogic,meson-gx-ao-secure", "syscon";
>   				reg = <0x0 0x140 0x0 0x140>;
> +				secure-monitor = <&sm>;
>   				amlogic,has-chip-id;
>   			};
>   
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
> index 9d5eab6595d0..a8c1c72543b7 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
> @@ -2026,6 +2026,7 @@ cec_AO: cec@100 {
>   			sec_AO: ao-secure@140 {
>   				compatible = "amlogic,meson-gx-ao-secure", "syscon";
>   				reg = <0x0 0x140 0x0 0x140>;
> +				secure-monitor = <&sm>;
>   				amlogic,has-chip-id;
>   			};
>   
> diff --git a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
> index 2673f0dbafe7..656e08b3d872 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
> @@ -471,6 +471,7 @@ cec_AO: cec@100 {
>   			sec_AO: ao-secure@140 {
>   				compatible = "amlogic,meson-gx-ao-secure", "syscon";
>   				reg = <0x0 0x140 0x0 0x140>;
> +				secure-monitor = <&sm>;
>   				amlogic,has-chip-id;
>   			};
>   

I got those new dtbs check errors:
+	from schema $id: http://devicetree.org/schemas/arm/amlogic/amlogic,meson-gx-ao-secure.yaml#
+/arch/arm64/boot/dts/amlogic/meson-axg-jethome-jethub-j110-rev-2.dtb: ao-secure@140: 'secure-monitor' does not match any of the regexes: 'pinctrl-[0-9]+'

and on other files.

Please update the bindings,

Thanks,
Neil

