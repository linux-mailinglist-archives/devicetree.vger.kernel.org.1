Return-Path: <devicetree+bounces-239288-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 344C8C63893
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 11:27:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id D636F35421E
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 10:21:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B4A02D46BD;
	Mon, 17 Nov 2025 10:19:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mhIgx+p0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97DAC2D3A7B
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 10:19:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763374768; cv=none; b=FKyH3JE8duwAEughbJF1bRp3WpvJgj0srRr6WbxHpPR26aGNWhltdVm4ZMqtyihQveA7aUF3ODLmCusD7rtqBL1hlbU/mhQSPvtdWC7rJM8AB2fAKPT/1Bym3RRXu+zc1T8qzWDmDDW1AFU9dYmlEDwPEEFF88aMzFNV8c5Bq8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763374768; c=relaxed/simple;
	bh=kZ1s5RwcRkgnqhEB+97rG1TzFDgV11ntKmNM6R5K2PM=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=NzJoJ9ZNaaeKcSCDtSff6bM+8OAuunN3jD1vhBgxXXjRMV3/CD4M4hTOuOi0mnhkdm6Q2En4lA+jFHa/wwwrlaO9Iv8HIDf8Hmibda+PxQnKN0MmwOAE2DLy2pfqArsGBly39uQk1wi9Bg0oFTFEW2/ppvPGfHWTMX/jIl34EbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mhIgx+p0; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-47118259fd8so29890335e9.3
        for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 02:19:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763374765; x=1763979565; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/ufHH1DbWx28LxxSzUkyemZUrxXGaMbaGJk+v9vhV04=;
        b=mhIgx+p0Nq/F3Z6r5T9U2FDlO6PWn9kg5QyLqwJBs8jGa0YKIIXuXb3crJ0iQNB12R
         twu+b1iZBAUO21i9cd8K9vrTpK1UbSnAdDbDPDnc8z4ZyLEpEZhnGOluq5jx2203AjMh
         2qos39nlYO/DtyLG+K2WS2+nk87NlaTLePJEXsb289U1hq8cny0pdY2VybzgkUoGsvMZ
         bGGi4noD0BGLDCRoCkgGkcWZeJSiTZIjiKlf4F06af3EznyjRWPFcpJ5Ovy3G38koh0Z
         WYEOwB1ovKQzl+9W+C4mn4/z7m/9Ix9WvYyqH8lXNaDjylQgq+y5A7CrCE4UXb7BBau9
         XVkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763374765; x=1763979565;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/ufHH1DbWx28LxxSzUkyemZUrxXGaMbaGJk+v9vhV04=;
        b=ixBPXGDhE3Xe8EyuPA+i3TmkOrXFwbCM/iGA49IUj6HaLKep61i5Q8yjWyfHfDR4Vv
         rsgeNpQfGpO6eHauKdqHM1q17T8unt7m9TBlwYPNjzuGDStrjgnCJXO28qwe5VdiNfZX
         Pm5LprFTvvM/keGr25m7R6WkOn1+Iu57t863vGQ4MWOqi4mnsNeHoUVwE8/59HZBP+rM
         JDzedk1ceZx/9SPHv0OdVdZ4hw5BPPuiN8aAiR1WUmj6oQQY1lzKfBP7FBeE9uir7OvI
         5Hj9X6Bp5cyse0PB6pzTL3fskChzZzKM2+xU/cTzmEvyFM12fEWYYR7Q5MoDClyEx//z
         eDSg==
X-Gm-Message-State: AOJu0YyWyKLBw92FgOTL6Fc2rbR78lWV2uWNVbNqlURTV8F4KP/Oqmf0
	3HyhNda4Xdc7WCXXgT4gK2twzk5V4qS7WppOnhwR0JBk7hDEjdWHc+Rr3k/AehWRsg4=
X-Gm-Gg: ASbGncvWlpbcyKRza4VPetp3p8XWKJFu6NbUW+ehd7m+/vZRnpKvNIPqRltDWRCR9vK
	xqg5pWDXGlmDW+KSfNh+P++UEjWq+9MVX8WCe2AV+G9xTCNHMQvoigO28lGiYr1o5CTv2x0ZJRp
	m3ONlxBYEpnZxcsQge+uC4HCG41xWQI9urrgq4x5Ak1lt82CjlnJlbGtMomlfysAuGbcPIHU2fh
	4EXQ4fFxiBYYLgt2c9PGDNTp4tkEr7UY2kK/ZLRuD69ZC5taWb39Nfoxp0+tGtV1wdZIDOOTqpI
	E3Hog18LtwA/8aXO0JxBoVQXI9172Gm7U6bW6bO1HDUblgwYz7y/hJYSEjzMW/fht/gZim9XLBg
	h9bcm1QgpOtapQu4atAeoP64+R+BgRc7Aa9QhJBwMpESX1AMXEoPX873dTjlaIBjBedA3ukLOKb
	GydIOaZC/CH86I210V1BKxhl7XtXTM1re1aEXYui9unZfbUzZzdu3tzH/0FMYXz+M=
X-Google-Smtp-Source: AGHT+IFD/7Ms5qKA1NSF5rB52XXIf71igLr4Y8ieRfFKXp34t1o4f4rOZNN2lU09OjGHE+RX/5So/g==
X-Received: by 2002:a05:600c:4594:b0:477:73e9:dc17 with SMTP id 5b1f17b1804b1-4778feba6c6mr110482505e9.35.1763374764616;
        Mon, 17 Nov 2025 02:19:24 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:d631:aa74:9313:e9f3? ([2a01:e0a:3d9:2080:d631:aa74:9313:e9f3])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4778bb54bbesm107384065e9.5.2025.11.17.02.19.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Nov 2025 02:19:23 -0800 (PST)
Message-ID: <592374f6-6fb3-47a0-a834-ba6702f4b2a6@linaro.org>
Date: Mon, 17 Nov 2025 11:19:22 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 2/5] soc: amlogic: meson-gx-socinfo: add new SoCs id
To: xianwei.zhao@amlogic.com, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20251117-soc-info-s6-s7-s7d-v1-0-6ab8aab03dce@amlogic.com>
 <20251117-soc-info-s6-s7-s7d-v1-2-6ab8aab03dce@amlogic.com>
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
In-Reply-To: <20251117-soc-info-s6-s7-s7d-v1-2-6ab8aab03dce@amlogic.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

On 11/17/25 11:17, Xianwei Zhao via B4 Relay wrote:
> From: Xianwei Zhao <xianwei.zhao@amlogic.com>
> 
> Add new definition for Amlogi SoCs, include S6, S7, S7D.
> 
> Signed-off-by: Xianwei Zhao <xianwei.zhao@amlogic.com>
> ---
>   drivers/soc/amlogic/meson-gx-socinfo.c | 7 ++++++-
>   1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/soc/amlogic/meson-gx-socinfo.c b/drivers/soc/amlogic/meson-gx-socinfo.c
> index 7549f1644e5e..6fbb70c8922d 100644
> --- a/drivers/soc/amlogic/meson-gx-socinfo.c
> +++ b/drivers/soc/amlogic/meson-gx-socinfo.c
> @@ -45,7 +45,9 @@ static const struct meson_gx_soc_id {
>   	{ "S4", 0x37 },
>   	{ "A5", 0x3c },
>   	{ "C3", 0x3d },
> -	{ "A4", 0x40 },

Why did you drop A4 ?

> +	{ "S7", 0x46 },
> +	{ "S7D", 0x47 },
> +	{ "S6", 0x48 },
>   };
>   
>   static const struct meson_gx_package_id {
> @@ -86,6 +88,9 @@ static const struct meson_gx_package_id {
>   	{ "A311D2", 0x36, 0x1, 0xf },
>   	{ "A113X2", 0x3c, 0x1, 0xf },
>   	{ "A113L2", 0x40, 0x1, 0xf },
> +	{ "S805X3", 0x46, 0x3, 0xf },
> +	{ "S905X5M", 0x47, 0x1, 0xf },
> +	{ "S905X5", 0x48, 0x1, 0xf },
>   };
>   
>   static inline unsigned int socinfo_to_major(u32 socinfo)
> 

Thanks,
Neil

