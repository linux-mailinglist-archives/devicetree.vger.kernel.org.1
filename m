Return-Path: <devicetree+bounces-239651-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 61130C6815E
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 08:58:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id A541A4E1AA2
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 07:58:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B9F22FBE15;
	Tue, 18 Nov 2025 07:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FOv6E8zs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2022A157480
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 07:58:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763452713; cv=none; b=drTsOpL75vIABo2bX3eNXMYgdqVZmH9hdEBa4mhbQ89Smj6K8ES6RV7SoeaEJbaiLWrr6hQPmAoqQjcOwDnrQY/RfM8pcQGFbzUcvFwYnouRzwPXToVU+Z8N/2xF1WFxAo4KCgeAeYMpVcmLOyLzMd4zJBnAkcizjd6vMAJnqJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763452713; c=relaxed/simple;
	bh=MY88Ecze3jhCKh22IVbhfwf7NPO3m1fHmiYDxkL6Tuw=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=BixU2sTK9n35yRJpT2VsZsUUvXjWbSOIaIH6Rd6g4UkiHHpyvDR1YukGdHyYf+GI5JSNAEUU5u8nbv3+Ivvz+ASU3j6kDVDVM5U7Jj6Z0+gmjRPOcF7WwIi05LAMPjBLpKaa/h3vXOel6g2aJRvWVJjw+h9OUwFDNFKeE8ApIBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FOv6E8zs; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-477632d45c9so37836415e9.2
        for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 23:58:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763452709; x=1764057509; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tbhzIE6mT3+z2/Fp9/EGeV+eaFRKjkaE4801Pc2ClA4=;
        b=FOv6E8zs1Yt6P5wyQzhWRpjLY8cLPDOkadPECP1ArvsCWQeDPvHsFupuUieAGej+/S
         0I7h+F4Ljdi4hLTokN4W3KIteMnvVZbvcW8b2Gf5NXLFCmZQ1ufmguTTS4pK9zyGiuAu
         GWgzPsMeLHSi/HcZ+IrgrmqxHX0ySdvVSA78GIgW0qQAw5i3hLXruvr19BIcaANOSHIu
         uNHnHcPr4t4iiWFCFkGm7HpSDMKbcs0lrhmDaEf/uK1Jl6lbYwePLBrALNg7fHjFVi5q
         eFt06LDG1n0mo0WpUU0/K1nIplvJYlYfRuwOAS8VguPxfvkL/9bRY/fvbI1PYRvdn3FJ
         xyVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763452709; x=1764057509;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tbhzIE6mT3+z2/Fp9/EGeV+eaFRKjkaE4801Pc2ClA4=;
        b=X6f9H5yjGvkxX90moNW4/SQmMRCev0zS03zmerkYwOJz7slynnAr6GV8JaG8dSZTU8
         klPzqi8xR0LlJE7wfHssL0/CLYT8lvOTHy8D7fVcq7zi3Gf1qz805WOQBPAdrSftv/4g
         moMgBTXBaVLGBHBxIy+/U+8ACHiSJwv/f7rYYjajkIGuzLYiYGGpXf9cKE7aYM6EpLMY
         W+rq8bKHNjvSUI/yGipy7k8vArfOuYBXo1iKe7/vpqJuBz95INVd8hYpKYLjFt5R4amw
         rqObrX/Irb1ZZ3E7uZrdt8aDZh0BncMlpveAwbDumYcTPYFHzuDdfWJDH6mA3TEU41jC
         /6eg==
X-Gm-Message-State: AOJu0YyZFfMfC0L4L/zx3CffZBUdM59LX/Yiw3/ZhIMuzods9BGBvZpW
	GnXpPtz0GPN3hMXih2tbV5MXzhwQXNhQ+Db7qHC0Lgv07Du7WPy5563dENcJb0TVRtxUPaaAXmm
	6lNkO
X-Gm-Gg: ASbGncu3FPA8X1YaBKiNx3r5gD2S//JZH6E8CWKc5q7LJWKctMADDim+iMTM/PlW/mV
	lQUswMttbAlJlDycSuZGtcgEtN245acfkNezEs+OWm+EEdvCKd/QJWCP9YP1HCZ5al7XhgYSnA4
	bAvX6JJDs82sQS5mpjUdcwTeTSbbb3EKQeA6tJH2AWXZRuJRJXCaDD82wqlr7MjXsOoTNz7NPOW
	uxzqNsAo46EW7mAbMsIDgeZ9EcwuHvBIC+2FKgyc7S9tI2OlaJFyL9ncGLmWU8Lgn4MKhGPb6wv
	FgUrJO7upqkbM//b/W05LpuJuky1iwGKUww4FNythOH9AZU3cpckxqKZMLkrIRlj2B4hnwfEcT/
	SPSXDfYep8XEvsC+4xMhjzeXdwdTwJYGzON7aojIdCNn1/mISzyJev62JwIehfP7xFHN010DXJc
	ELNk1ynqaXAon74vQMrfHNrQcjWodz0b0IIH0Kb1SbNozs8HnI7g8UuPsEdJrcvNo=
X-Google-Smtp-Source: AGHT+IF8yNm6Tl8TKmDRXIx00wKQcMShzXyDr9a1aecp0kHrvYtVJapIlNTmZaqc/TLKXMOeh6x51w==
X-Received: by 2002:a05:600c:8b4b:b0:477:1af2:f40a with SMTP id 5b1f17b1804b1-4778fe504abmr149301945e9.17.1763452709245;
        Mon, 17 Nov 2025 23:58:29 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:366e:5264:fffe:1c49? ([2a01:e0a:3d9:2080:366e:5264:fffe:1c49])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-477a96a58c5sm12524925e9.0.2025.11.17.23.58.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Nov 2025 23:58:28 -0800 (PST)
Message-ID: <91b11869-d8d8-4640-99e9-fb18d82960b3@linaro.org>
Date: Tue, 18 Nov 2025 08:58:27 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v2 2/5] soc: amlogic: meson-gx-socinfo: add new SoCs id
To: xianwei.zhao@amlogic.com, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20251118-soc-info-s6-s7-s7d-v2-0-38e2b31a88d1@amlogic.com>
 <20251118-soc-info-s6-s7-s7d-v2-2-38e2b31a88d1@amlogic.com>
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
In-Reply-To: <20251118-soc-info-s6-s7-s7d-v2-2-38e2b31a88d1@amlogic.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 11/18/25 06:59, Xianwei Zhao via B4 Relay wrote:
> From: Xianwei Zhao <xianwei.zhao@amlogic.com>
> 
> Add new definition for Amlogi SoCs, include S6, S7, S7D.
> 
> Signed-off-by: Xianwei Zhao <xianwei.zhao@amlogic.com>
> ---
>   drivers/soc/amlogic/meson-gx-socinfo.c | 6 ++++++
>   1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/soc/amlogic/meson-gx-socinfo.c b/drivers/soc/amlogic/meson-gx-socinfo.c
> index 7549f1644e5e..2a54ca43cd13 100644
> --- a/drivers/soc/amlogic/meson-gx-socinfo.c
> +++ b/drivers/soc/amlogic/meson-gx-socinfo.c
> @@ -46,6 +46,9 @@ static const struct meson_gx_soc_id {
>   	{ "A5", 0x3c },
>   	{ "C3", 0x3d },
>   	{ "A4", 0x40 },
> +	{ "S7", 0x46 },
> +	{ "S7D", 0x47 },
> +	{ "S6", 0x48 },
>   };
>   
>   static const struct meson_gx_package_id {
> @@ -86,6 +89,9 @@ static const struct meson_gx_package_id {
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

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

