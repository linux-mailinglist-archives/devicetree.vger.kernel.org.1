Return-Path: <devicetree+bounces-254879-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CF6F4D1D715
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 10:16:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E0996304A123
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 09:05:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24F1338735C;
	Wed, 14 Jan 2026 09:05:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="G2+Cnfsx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com [209.85.128.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 835033803CF
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 09:05:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768381540; cv=none; b=sXPA71Qw0A0jZaaRGd1tYRrlzEsBtYvFSQ09SVnef32D8l40Hw5b+B6tv/gq1evONJC+GJmx+vaWLqx0Wdo1Mr6Ku16Tk+3z/eJSnvrkCcMohy1k9ZLev63ttT0Tz6nYaQwpyTHLl4zRYYLZ0t0/3toUEBj9m7l2n5osEtSh07w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768381540; c=relaxed/simple;
	bh=YR4DwG8pCplYBUPao0aXPNwD6nlZciCukQORdqVQ6y4=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=Nlu7IRgNbajxQ2GJfq9E6nX6HOZ5AUW9aKNMy3IlORJ103GnsM55HYzMppCNOGHOPGuqp/RXUYuTMeSvas13NfXGHuDJnqLYtlvn5wJW+m1+/8YlqL4HvOPj1Rqk+e4NU7B9V3u2jp4IROCsTjAfndNd35yE48lcScc1ypznQI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=G2+Cnfsx; arc=none smtp.client-ip=209.85.128.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f67.google.com with SMTP id 5b1f17b1804b1-47a95efd2ceso71168415e9.2
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 01:05:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768381537; x=1768986337; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XwG15GopvSaIUizczqNnDWH98rC0KVKMXbS2DOpVO8A=;
        b=G2+CnfsxWbzk1l3cGpMDM3AXFv01IOiKrwKMuBI+3j3YYdP7LnVSCjLCnyej7SQ+Bq
         GGVIz+M2l2YPnyci3+geOtoQRhTomB4Ogd42rHKD8jzfFPtsfyiXOdyVgwK5gsMEXl2e
         bAYcvAjENznlqIDYsmOCjeO4SYUMBuwJ81zeVmLj+Ooap1h1WI0i/3rfFk/wWW5ljJVh
         BoDFXvCJgvuTKWWDF/f4l4Hr+9oH+eNeJzB5/G8LTbptvwrIA7zLs4SOCjsxmtAGMRO9
         rt5ExSYd5za8Lvk5fmQLqd9E7rV6ZShb+0P9UCTAd8OhEXKDIy6CclzUNmX5kl/PTT/7
         lbhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768381537; x=1768986337;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XwG15GopvSaIUizczqNnDWH98rC0KVKMXbS2DOpVO8A=;
        b=jIRt6en1+2pDSeLrHBz1f2D9kQ+AePbQeLh3g2N2sicrM6ZUIYvDJVEGXDzCjFYyWL
         nO/rnjwHp+wvnWsbyOdiPu+ZvHmi7KdntGFiTvIopgYM8bMK2iLWoJk6H3vKCmtEwZ1j
         wcJwa2kVev44kAddFzNDtCoGzzdMvkhfigdRF1IBWyFo2w6udywrz/2RHr9mOI0L7KWk
         G1WtzuBAvcY4TU2M7cGwlaAU6I7gDrpzQxxdOrolL1UlRZkdlD/tL53RikeeaKGKzl4A
         ByZ3gGxRRxd+M8E7l3MIYKlt8gK3tTJk8brwCC2mUaahz+uoC4vmJrt6ocTEIqisoAz3
         JBTQ==
X-Gm-Message-State: AOJu0Yz/ow95mnKZGhXW61YCy/3v1IR0PkNA2Mfi6FthiEKTubNbyfZg
	r7aT7uJ1GTPiR5NnIgdgDz0nKnlP/2w7UNaljRNbvtntVibObFH40pOGQYTDFoueA1A=
X-Gm-Gg: AY/fxX4jvCFaWiCaC7JFHpEZ0Zm7mUKk5FzXab+QHdNj4lrqa0ERsvndK0Qs02xgy01
	/dbcn3ZldAjAwOJ3ddHap4lP2+IZVrB83ok23ePD+IRQQzy4yAYsyg6YXC0WY8g9zyNu9ARzg72
	eZE18YKcArLnsYoKuwo3oYbGTzVuRdYfCdFPrqBofBzxnl6Qrkx3Qmn4Z4Bzf3ZSYhSIa+sE4gB
	mulf5tHHwBUFO5CHSaBE+FhYq9YqZZkvrDRc9C8gthTpcSKf4u30+vZkqQiXz8FoQiofaL6oBsF
	A74WfCeLdRJXr3ZDwU7RIUUksOio/FKcW4Xr9xXsHAM224TLCUtNVpb8FIdexsz82XE+TieS4qu
	hkH7PCxJQmT8wynUqK23vIEJVFdVrv3hftoyl/052sdu2awgPrIdSngk58Z26TAs/oBnHl/NIKE
	pfw6zici8fOXbW2CTgunwOU5bvtBy9pVS9JN6sYPTbhwpPKesdLIJRqwc8O9vtciWWye+rIwQFr
	g==
X-Received: by 2002:a05:600c:4446:b0:477:9ce2:a0d8 with SMTP id 5b1f17b1804b1-47ee47222f1mr14772495e9.0.1768381536276;
        Wed, 14 Jan 2026 01:05:36 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:b357:7e03:65d5:1450? ([2a01:e0a:3d9:2080:b357:7e03:65d5:1450])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47ee562d7aasm17655715e9.11.2026.01.14.01.05.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jan 2026 01:05:35 -0800 (PST)
Message-ID: <d55bd5c6-d5f8-45d8-9c6b-22e401f6a7ff@linaro.org>
Date: Wed, 14 Jan 2026 10:05:35 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v2 1/2] arm64: dts: amlogic: s4: assign mmc b clock to
 24MHz
To: Jerome Brunet <jbrunet@baylibre.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Xianwei Zhao <xianwei.zhao@amlogic.com>, Nick Xie <nick@khadas.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260114-amlogic-s4-mmc-fixup-v2-0-7e9ab5f12286@baylibre.com>
 <20260114-amlogic-s4-mmc-fixup-v2-1-7e9ab5f12286@baylibre.com>
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
In-Reply-To: <20260114-amlogic-s4-mmc-fixup-v2-1-7e9ab5f12286@baylibre.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 1/14/26 09:56, Jerome Brunet wrote:
> The amlogic MMC driver operate with the assumption that MMC clock
> is configured to provide 24MHz. It uses this path for low
> rates such as 400kHz.
> 
> This assumption did hold true until but it now, but it is apparently
> not the case with s4. The clock has been reported to provide 1GHz
> instead. This is most likely due to how the bootloader is using the MMC
> clock on this platform.
> 
> Regardless of why the MMC clock rate is 1GHz, if the MMC driver expects
> 24MHz, the clock should be properly assigned, so assign it.
> 
> Reported-by: Nick Xie <nick@khadas.com>
> Closes: https://lore.kernel.org/linux-amlogic/20260113011931.40424-1-nick@khadas.com/
> Fixes: 3ab9d54b5d84 ("arm64: dts: amlogic: enable some device nodes for S4")
> Tested-by: Nick Xie <nick@khadas.com>
> Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
> ---
>   arch/arm64/boot/dts/amlogic/meson-s4.dtsi | 4 ++++
>   1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/meson-s4.dtsi b/arch/arm64/boot/dts/amlogic/meson-s4.dtsi
> index 9d99ed2994df..62538fd9db6b 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-s4.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-s4.dtsi
> @@ -838,6 +838,10 @@ sd: mmc@fe08a000 {
>   			clock-names = "core", "clkin0", "clkin1";
>   			resets = <&reset RESET_SD_EMMC_B>;
>   			status = "disabled";
> +
> +			assigned-clocks = <&clkc_periphs CLKID_SD_EMMC_B>;
> +			assigned-clock-parents = <0>;

In this case, assigned-clock-parents should be dropped.

Neil

> +			assigned-clock-rates = <24000000>;
>   		};
>   
>   		emmc: mmc@fe08c000 {
> 


