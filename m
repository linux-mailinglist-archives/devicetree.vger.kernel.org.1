Return-Path: <devicetree+bounces-241512-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id A7ADAC7F616
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 09:27:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id DE005344DAB
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 08:27:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB11F24728F;
	Mon, 24 Nov 2025 08:27:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IN1Ri1PC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1EE21D5154
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 08:27:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763972840; cv=none; b=QWfXo84f/vBEQ5ggYiT+Wl3ftjy4TT2lQQtP+D8JwzPCL4kIONS7f8e4dU7FWIQhY3oAVA0ilDkK/nzBWqY2ufYyjWAbtByFscoENFx4jNTV2QjBwTgFH8v/Zv4bWb/HRo1qICV62xYlcNvOLRuST6j6tPHLj4X58l7tZ7qz/7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763972840; c=relaxed/simple;
	bh=hhgginRvZCpZVXffLgkFBiRkhCZVjuXK06sZ4C8b/A4=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=Te4q3GZQ6k+sRExl6YyYnie4yQwLjhz6DkpigeSLuCo8ze05o7g024RFPG1T1hlW2h3ZnRnuB9MIGWdCSLeUGeMf7VsvPRalyprg98d8XeCdBQUq+8s966B4B3V6uZ9G84vL60DKZp5u2lMNp7QX1JEUZJZFJfNJve8d1WCmdNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IN1Ri1PC; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-47775fb6cb4so25508515e9.0
        for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 00:27:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763972837; x=1764577637; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qxBsA+u52Glx00g9dRDSH7FR8fkXTnZDlelCU5NPOqk=;
        b=IN1Ri1PC0W/wp59cSCEwHrdrJhh1tfok+SB7gKmuDHcrXQ+7VVHxsYxvMZOshWzYHV
         SNqJB5GCmznSZ6lpWKzQLkSULgccKp+0iTYlQIOkE4oRzduZQMPyd1JhNQJZe9tiIgGL
         mGCJj7mBvwvPUWDUzOqUWzKjjlVCHa9FXKOlDJTiOm9eYitIFyT/FGkjn+h/TBnbaTpO
         HxjCr/gfb1k2aJFPdbY+D18FEsEGDYQ8l2doGUhGHo5sZQmTOHMUgmQiFZPkzmGnPaSb
         pn6rwab4vb/1dQKKGX/q7bOJqNEXAXz/3W/u8sPNVErhyZJrLU4og7dC/0xCkFhW8m7z
         ynBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763972837; x=1764577637;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qxBsA+u52Glx00g9dRDSH7FR8fkXTnZDlelCU5NPOqk=;
        b=IVbCEHVPYiU45WLKy4DQ2ATD9siLwa6ki3/ph499bCIKX/iPeKVGulDuZatZ+diByo
         QM8l7EWbk8YZtCyg5BTVIOsXKbK2lZqoxkMY8Nef8zPy65UoDgewW6/RGSf7fF1JRWro
         o9jgD9hlFzTPjxm5ZSpQXqY0Q2xxNK5ROHmQ6ymH3dr7ShOFm1FedReEonNvFCzDUrdG
         5gvyOFbzrnpVquRIHUVwK4Yo1zI/TGeOuPAyhuLLPAUhahI3JG3DEwcC6gs+8iit+cz8
         3uxFddZLxVfZKsOTGzKGOhKu+0bGpmCm9vMnKeXc5aqDtwu5jUeQO4hlXdcgbYBz+SwP
         GzYw==
X-Gm-Message-State: AOJu0YzFTeKwC+ltBegzlnKBUZDHReUnkFLPlSXx1WSwrAtrj+90HKvV
	sRuzIHuHTLMTBgQj6n1ErFpnWD/HeQXt8gjj2ml3GObkVv60Ud91/wwYkT7hwzOwU2o=
X-Gm-Gg: ASbGncst0WKatutcn6ve2gGHp31dnr6fMILoHygqD/NoTvmK0VYZ0M5Fh3Hq1c+5M/R
	4zThGzqdmwnLugJvcWg/dnaq643jcpME8FcrR7zL+1BuBRqMPDLwgOOh0SzRjdV+r5FR9+pGNpZ
	KRQGXYzG/9C5gnznzftuxK3IXXTXDwSX68fRy6z++xPpIFkdjusLtPcRePS0xqX2ZWO9JLp5IXP
	DCiCOJ2hYbuzZIGq6U/ltn0yeRm2hO2sAEl9JN5L72Zej0MGKkni+sxEDRMInRpnajRyCeU+JRs
	0KeHnRnqb3Js3sNk2IK9amm69cugupZQM/TEgsKo6uWIKDY2l38UmNlGz3cYdJUUv4cAYcu7kNx
	tvJMhfEYWcuK5Zwddcx97s/KJZe9SrLyLMgLZ+RnprYrgWHyUPYhqfbpawPzGrNJpjQ9uHtp+h9
	B8DSh0U3AdBqRb6PD6Me36DFdkUXgLJjlyfL4RAtX3S80pNrl4uzLzOJ2JdcoiW7A=
X-Google-Smtp-Source: AGHT+IEmDEtuYmnXYRV6tZiqi54hm2qUz17sARsuhORYI/DXmb/Dj/FFZngja8G3IWf3t5i4YFRQNg==
X-Received: by 2002:a05:600c:1c98:b0:46e:37fc:def0 with SMTP id 5b1f17b1804b1-477c10d4887mr86783455e9.9.1763972836912;
        Mon, 24 Nov 2025 00:27:16 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:ab13:96f5:1459:8396? ([2a01:e0a:3d9:2080:ab13:96f5:1459:8396])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-477bf355af6sm183596525e9.3.2025.11.24.00.27.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Nov 2025 00:27:16 -0800 (PST)
Message-ID: <144870b7-133c-47e6-944f-b780605618a7@linaro.org>
Date: Mon, 24 Nov 2025 09:27:15 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH] arm64: dts: amlogic: meson-g12b: Fix L2 cache reference
 for S922X CPUs
To: Guillaume La Roque <glaroque@baylibre.com>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Anand Moon <linux.amoon@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20251123-fixkhadas-v1-1-045348f0a4c2@baylibre.com>
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
In-Reply-To: <20251123-fixkhadas-v1-1-045348f0a4c2@baylibre.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 11/23/25 18:14, Guillaume La Roque wrote:
> The original addition of cache information for the Amlogic S922X SoC
> used the wrong next-level cache node for CPU cores 100 and 101,
> incorrectly referencing `l2_cache_l`. These cores actually belong to
> the big cluster and should reference `l2_cache_b`. Update the device
> tree accordingly.
> 
> Fixes: e7f85e6c155a ("arm64: dts: amlogic: Add cache information to the Amlogic S922X SoC")
> Signed-off-by: Guillaume La Roque <glaroque@baylibre.com>
> ---
>   arch/arm64/boot/dts/amlogic/meson-g12b.dtsi | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12b.dtsi
> index f04efa828256..23358d94844c 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-g12b.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12b.dtsi
> @@ -87,7 +87,7 @@ cpu100: cpu@100 {
>   			i-cache-line-size = <32>;
>   			i-cache-size = <0x8000>;
>   			i-cache-sets = <32>;
> -			next-level-cache = <&l2_cache_l>;
> +			next-level-cache = <&l2_cache_b>;
>   			#cooling-cells = <2>;
>   		};
>   
> @@ -103,7 +103,7 @@ cpu101: cpu@101 {
>   			i-cache-line-size = <32>;
>   			i-cache-size = <0x8000>;
>   			i-cache-sets = <32>;
> -			next-level-cache = <&l2_cache_l>;
> +			next-level-cache = <&l2_cache_b>;
>   			#cooling-cells = <2>;
>   		};
>   
> 
> ---
> base-commit: 6a23ae0a96a600d1d12557add110e0bb6e32730c
> change-id: 20251123-fixkhadas-c84da7d7c47c
> 
> Best regards,

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

