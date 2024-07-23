Return-Path: <devicetree+bounces-87489-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 99C4B939B9C
	for <lists+devicetree@lfdr.de>; Tue, 23 Jul 2024 09:18:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 088AB1F22728
	for <lists+devicetree@lfdr.de>; Tue, 23 Jul 2024 07:18:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 366C313CAB0;
	Tue, 23 Jul 2024 07:17:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PPRoaNpp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6908942AB3
	for <devicetree@vger.kernel.org>; Tue, 23 Jul 2024 07:17:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721719076; cv=none; b=KfMTIc72GlQ/FcVtWly3/SSuThJr1xCFTJRRW60XVazonHzIkdHsrZFdWaWYVYV08ECMHDsLvh0Ahz2vwSddCNmpxFdHLz32bHUMOYkZOHnDAdqT0Nc89dDDtlIQ8pXDKBnxjMZ+KQZSs2UuL2qMGMdrqKwPoYJKxM5T2YknHeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721719076; c=relaxed/simple;
	bh=5ZpyWgR3MWOeedjCIZVTQAe0tbxKYhEg4lb71T+w6Ck=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=lQU7m3N0+nYHj9F3Y8UGWCTi2WC5MPnwpbXWPEAWmRjQXz4jMZmnsLmMZuyOZKfLJNifUyNwkhFzNDy//E94CXMm2vMov9Rc3C41U276U3Q66Nc9TMosAfeDQodTZ3/MpTtBI/+6lAzzumcl4oBobyxLHPAjAvSbPZnA/Xbkbzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PPRoaNpp; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2ef2d7d8854so21244941fa.0
        for <devicetree@vger.kernel.org>; Tue, 23 Jul 2024 00:17:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721719072; x=1722323872; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=umMVmI8IKdHl++O7se9W/HW6MwPFPWF32KbYepYLJFs=;
        b=PPRoaNpplVmd1b79wltf4Rjs4/zXT/W5/UzTs1X42Jnnt/BjmqNBWGZFfBJHPpe4z1
         2p/pH6cW6lW1dnxlkdo4I0Pifu6wmRoOcuSD4RTVmTNUy+XMtovDNi2HLscKeFxzmqtN
         5RyBTBi8vAYioYCpyBfdpZINEvgMl69ehOhy6fFir3gMGjMFqFi57WcH8tTfEAQF5+Hw
         hnLUPhWVCygiRQgv6Ki1CGjSveQxO1ZUQQNlWX7zD5TWygx/StGCDdgq6kJQFKkH4qGw
         Wdww6Do9KMEPho2wuhtRdvIwKgWrXJ03L3ldN0GnKSrZbCRPvLO5nbbYtRe6NhwZwrWI
         nnQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721719072; x=1722323872;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=umMVmI8IKdHl++O7se9W/HW6MwPFPWF32KbYepYLJFs=;
        b=c3WaONUfgA9IgfBD67snPekFXGppKv4yHcUI+MebbYaEJJZT5zoIjd9l07+mU7yjvt
         zrmKdMbPyCdj1uIwZP74J4pwz4CB+yfamw40KkZhCJE2KZnAx3r1YRx0hZhuaFshqHek
         XZsKvV3JcJTEj480M63EE0OHWB7oy1dhR7ZLvpxUuX7hqi3lxESr27IDB+o83tk0d5Ee
         5GihnwLRV5spqxOQ2D4AvXHL/LstU1dM/D+gPS2vIfuYxWQi5196DRPH9YPtyanh3BC0
         kha9DgSho39x+8tCANZ/BcOh+mu+FluBYk4vKhuxI3EDMZN/HSY0CmTpcOTMm43KUJnI
         jglQ==
X-Forwarded-Encrypted: i=1; AJvYcCUPCAqNpbUr17YYle+EWfUmnrHeey5uBZN9BhcAxHXhVmjJaNRNPvwHV72qabgN86PEk5v9Z4ORoZzSWp7JKCEyt1SBx6stqEKEtA==
X-Gm-Message-State: AOJu0YycIKnnhmyfChb3vuYe1uAxV8LjdR2vSAXox7trtwXlPrRel3tr
	uvoAYkMKVL7AQXVycje1/0fsYrsYXRadI6aseNC0QyFTmDGefmfrYs2Gy/R6ghQ=
X-Google-Smtp-Source: AGHT+IG2SjecpItKKr40kabohOsS8hWl2Ojj6C41sM04HkJaWcPeBeHkQlWCBgjh/tu0HMdUlmzTWA==
X-Received: by 2002:a2e:a162:0:b0:2ee:84af:dfc4 with SMTP id 38308e7fff4ca-2f01ead8ff8mr12996171fa.43.1721719072168;
        Tue, 23 Jul 2024 00:17:52 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:f9d3:b429:5f14:dc9c? ([2a01:e0a:982:cbb0:f9d3:b429:5f14:dc9c])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-427d6936e1esm158776455e9.44.2024.07.23.00.17.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jul 2024 00:17:51 -0700 (PDT)
Message-ID: <86b71a8a-2b8a-4130-9bd7-bb63658093f7@linaro.org>
Date: Tue, 23 Jul 2024 09:17:50 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v3 3/6] arm64: dts: amlogic: s4: add ao secure node
To: xianwei.zhao@amlogic.com, Kevin Hilman <khilman@baylibre.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20240719-soc_info-v3-0-020a3b687c0c@amlogic.com>
 <20240719-soc_info-v3-3-020a3b687c0c@amlogic.com>
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
In-Reply-To: <20240719-soc_info-v3-3-020a3b687c0c@amlogic.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 19/07/2024 10:08, Xianwei Zhao via B4 Relay wrote:
> From: Xianwei Zhao <xianwei.zhao@amlogic.com>
> 
> Add node for board info registers, which allows getting SoC family and
> board revision.
> 
> For example, with MESON_GX_SOCINFO config enabled we can get the
> following information for board with Amlogic S4 SoC:
> soc soc0: Amlogic S4 (S805X2) Revision 37:a (2:1) Detecte
> 
> Signed-off-by: Xianwei Zhao <xianwei.zhao@amlogic.com>
> ---
>   arch/arm64/boot/dts/amlogic/meson-s4.dtsi | 8 ++++++++
>   1 file changed, 8 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/meson-s4.dtsi b/arch/arm64/boot/dts/amlogic/meson-s4.dtsi
> index c11c947fa18c..957577d986c0 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-s4.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-s4.dtsi
> @@ -763,6 +763,14 @@ reset: reset-controller@2000 {
>   				#reset-cells = <1>;
>   			};
>   
> +			sec_ao: ao-secure@10220 {
> +				compatible = "amlogic,s4-ao-secure",
> +					     "amlogic,meson-gx-ao-secure",
> +					     "syscon";
> +				reg = <0x0 0x10220 0x0 0x140>;
> +				amlogic,has-chip-id;
> +			};
> +
>   			ir: ir@84040 {
>   				compatible = "amlogic,meson-s4-ir";
>   				reg = <0x0 0x84040 0x0 0x30>;
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

