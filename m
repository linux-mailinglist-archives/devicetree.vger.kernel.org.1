Return-Path: <devicetree+bounces-58743-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C99FE8A2EC9
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 15:05:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EDC651C21441
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 13:05:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 808C35A11F;
	Fri, 12 Apr 2024 13:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yIjE59sR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4427D55E43
	for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 13:05:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712927123; cv=none; b=czgBZzexEiLMYZmw2BhlDmqJivzqMS/cvfXwUIRYh1P2nqvQ9+fAbZ0vdc/tocNUNgbqoFHW67dIEsDKPN96BXmeghdlOrsnozHi+UQOeMUtGkCKtjexNKXV71rro8CXDzxeNQiIWoHQ7xFd82tlEy44id+pxYMukzwNX8I7vg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712927123; c=relaxed/simple;
	bh=wiFlkB+eE3v2d6qF88dWKYMFmze3O8S+7MdMRMGoClE=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=Xbs074v5FRbiO41sO3KbSHc/Zk875wh0lbK2ex0UlXv8jZFSnG0Vw/0T5ZFlOLCyuZp2rTfoRjHWXCokmtFrN8c69qj5eJ+CLKW2EQzEeEjsnQRRbuEsnKJbrBq4AVX9Sgurg4EIssuMpWSkykES+C99r7vO1jAfEPWV1+K4giU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yIjE59sR; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-346b96f1483so478155f8f.1
        for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 06:05:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712927118; x=1713531918; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xOcTNt5ByY5dfitA7rAX7DzfF2K3DjcIDFUSulbTkvM=;
        b=yIjE59sRcyldxdw1rtqAycp4aMOvHaTXkhM0gSfDC3W/41Gb2WrydtGgAQJmKLgKt8
         3Ykv6EFHIazKGTHpfjSaxbvzBPEjzO6l1UGV2Hiih2z1aJb/k7LTnRjjo9Yh4Xo++juN
         UwzswAfI05+GVHXxfVRAYilswmRqDzzjzPF8GdYAD4DSj4ChKKqkZ6V0mPdJDr29eNwE
         QZecqgzWBxxy7OzwMKwgtE4ygtRAbotxVkG74nEtd1hcOvCgcADHcF5kN+pTBPtNF6QI
         fq/gEbCv0t76wuqQn+vZrG2lX3lkXfy1BgNY+zKEjjU7zw3tubtSwK32n7/ngjuLerPF
         pNTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712927118; x=1713531918;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=xOcTNt5ByY5dfitA7rAX7DzfF2K3DjcIDFUSulbTkvM=;
        b=bY19ijAR+tUPImu2kXee/oZxFtuq3Ru/Zh7QzYLok3xxr1oWHTaXkYuwlJRKw0cZZA
         QMaiuTKA0P2n/UqkC1601cKz4qUkT+Na9LvsP/QsHx6q2MawtuIZWimv7YtjFCk1M2KJ
         YkjoX88WoMhMzaC5X5kVLXXwlxQEv3x/DQ8efwWQxF13x2GY3gos/sNgsWmnFEWPpLjP
         9Hg2TZOJp6FqftbvgnIb0fuLXL1cBHBZSooYChM4jN8VYNRflX0BBOb6nFI5Z2D+AWTJ
         uIDwWJOJr7M4xjqw5qwKYAZo0XTSvNusV0fmAdLvzb+AtvohGuKU5t6+m4MJusEC3wDi
         BNGw==
X-Gm-Message-State: AOJu0YzhL3YtqpmCxM7ngGA5NC4tfpoMJAEglmYpTbNYql1JOjnxeF1O
	N6jdh2ucsoda14ZOcPuduDv29igbamC3WBqYnCLpQnWQ+sTWXem+jqriyxP+XgU=
X-Google-Smtp-Source: AGHT+IFiR9h8j51gi72vNffX3hceH0q+iH5LXTWgHiNHNmQPVUHiRpuRwEL/hhoSi7c6hrWzj0BB+A==
X-Received: by 2002:a5d:6542:0:b0:343:d23a:c977 with SMTP id z2-20020a5d6542000000b00343d23ac977mr4802161wrv.1.1712927118429;
        Fri, 12 Apr 2024 06:05:18 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:986c:54c:12ce:a121? ([2a01:e0a:982:cbb0:986c:54c:12ce:a121])
        by smtp.gmail.com with ESMTPSA id k12-20020a5d6d4c000000b00343e392829dsm4215174wri.97.2024.04.12.06.05.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Apr 2024 06:05:18 -0700 (PDT)
Message-ID: <bb32ccd8-cc94-43ea-b5e8-09162cf56179@linaro.org>
Date: Fri, 12 Apr 2024 15:05:17 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v2] arm64: dts: meson: fix S4 power-controller node
To: xianwei.zhao@amlogic.com, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20240412-fix-secpwr-s4-v2-1-3802fd936d77@amlogic.com>
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
In-Reply-To: <20240412-fix-secpwr-s4-v2-1-3802fd936d77@amlogic.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/04/2024 10:42, Xianwei Zhao via B4 Relay wrote:
> From: Xianwei Zhao <xianwei.zhao@amlogic.com>
> 
> The power-controller module works well by adding its parent
> node secure-monitor.
> 
> Fixes: 085f7a298a14 ("arm64: dts: add support for S4 power domain controller")
> Signed-off-by: Xianwei Zhao <xianwei.zhao@amlogic.com>
> ---
> Changes in v2:
> - Add fixes tags in commit message.
> - Add firmware node to adapt documentation.
> - Link to v1: https://lore.kernel.org/r/20240408-fix-secpwr-s4-v1-1-01aa7ee72c52@amlogic.com
> ---
>   arch/arm64/boot/dts/amlogic/meson-s4.dtsi | 13 +++++++++----
>   1 file changed, 9 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/meson-s4.dtsi b/arch/arm64/boot/dts/amlogic/meson-s4.dtsi
> index ce90b35686a2..10896f9df682 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-s4.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-s4.dtsi
> @@ -65,10 +65,15 @@ xtal: xtal-clk {
>   		#clock-cells = <0>;
>   	};
>   
> -	pwrc: power-controller {
> -		compatible = "amlogic,meson-s4-pwrc";
> -		#power-domain-cells = <1>;
> -		status = "okay";
> +	firmware {
> +		sm: secure-monitor {
> +			compatible = "amlogic,meson-gxbb-sm";
> +
> +			pwrc: power-controller {
> +				compatible = "amlogic,meson-s4-pwrc";
> +				#power-domain-cells = <1>;
> +			};
> +		};
>   	};
>   
>   	soc {
> 
> ---
> base-commit: 4cece764965020c22cff7665b18a012006359095
> change-id: 20240408-fix-secpwr-s4-a99ff960d0ae
> 
> Best regards,

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

