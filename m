Return-Path: <devicetree+bounces-125148-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 335BE9DAD7B
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 20:02:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9EB4FB219A3
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 19:02:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3885201259;
	Wed, 27 Nov 2024 19:01:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fvdql95g"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B933313D508
	for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 19:01:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732734119; cv=none; b=HhaLWLZ3arm/G9WMLTnzdoCDaAneZCsVwsS8GOstiiqg27IqvMEDVVasSlVWOdHIUS3RkRxjK9n4GL9QUd1VzewtCZi8+DNpO5zN4DCY36tJj8IOCNqepcbHkHIwMJBZrV/YAmmVwlU+L+sMLyq2k7Tnf2UP2VqnkYDXOTUe7CM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732734119; c=relaxed/simple;
	bh=9YMYnQ/Swz9QsXKarm981aqQ7JGhUXBtFzUyiN37kgg=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=ejeawUHtDxfrFI0+KlGtjl5bvCzeU2i02ZfEHqC3ZNl0ZiXdTAwyZ+LjqVVD5V+HrY6fIl0oExBbeO2ELR21mTcsSpBDqr1GQHLfJiXpuiAjJ0CEmUt8p9GB0EllxKYCYS5UHah0yJoCGy3/yUQe94c5Qj7DGLCBINLnsp/Ncy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fvdql95g; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-434a8b94fb5so758175e9.0
        for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 11:01:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732734115; x=1733338915; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=z1yiyWo2SoYBonA2AnEougX0aSnWZiu2p9ZQOE6p3sA=;
        b=fvdql95g7J/uFySziHI4Lrg1Bs+kbAvjih9YKylrBrce/FXcmt3yP8Wr7Xn/YKR+EG
         1wXBfsyVZbQGf7RGGwq/YvmTmgfTPKIlFIs/8K7EQ15x8in3zhnhAcw+f0ATYm2/wCaZ
         ZYkvMa21NODbMiZDIpf6OWnfLhr6ad+NCe+zkhZC4FSj3wOQFOUJx40bNnA26kplTp7H
         A45E3jyOSKGo0oX955M1CDLX/fF7KofeWcJ6Jv11p4lolLzsvTy8hVRWvEtB3MylZdu+
         0o+/aZaqjZn4bEcvC+TQapa+2WEUovCPsdfQIWhDEBt/y1RQPbB4AYRhYMK0zX0F3oZ+
         CoSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732734115; x=1733338915;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=z1yiyWo2SoYBonA2AnEougX0aSnWZiu2p9ZQOE6p3sA=;
        b=BZeftb4RLaj6/R025TtPnhPR+eMjB7Ma9efDQF3qXE3vZI8KEodEmM/cYC+PoPJmX+
         5L4E2/CTjHfk9o/918YwnAt3xmjAKcfF87Gr05I9B6IQL+4rwZCE5hfOxaGHWKh+6q3t
         UqpKP+yDVGvlPEoQylilklbZ7H5OMcnxcbZOMgEeL0hv/E/dHouW3tm6MreogGx5a7pm
         pClNKjD4slwiMwR8jHVXDP067YTuwNddWoz3LU1aTQvBgzyQmRYFrVGuwDmKJyJYGHwg
         58vJFx/tWNt/THaaU3VYwZSwkw15CkJsjfQ1/3wF1ZAyVblZL4I/PXb2YS4yNC494WzD
         W1Xw==
X-Forwarded-Encrypted: i=1; AJvYcCUR5ar7aIorRPgDWUI1VLkbzGXbXQuvVG5N6+YvT6tI7BXr/PsiV77ztBn79w6RvYte8ZIuiN2Egp9w@vger.kernel.org
X-Gm-Message-State: AOJu0YyrW00YyeCSIOv2yStrR8oEtpSzHm1ZfNotHctQAW1g5WyV3cv/
	C5clm0OS7QSAAP5kPLpNuE1EZjHwNCG9eHX6JW857FSFI1Q7e5rkdF6A8Tl/ndg=
X-Gm-Gg: ASbGncsNV7d0dMGSQGL5v4D/G0NEsRJe+sSq15/O/5tbl9Vf99wjiAKmSMpxK0ZRA7r
	GWxAiZbOVcz0l9hmAnsNGBiYXxBJy3eQoGiJf2dG+5vt451U05fRP2wv8B4JAfs6VG1+l0xDZuS
	1ixnbFeVCUB60FREfhQ9dLjsVjMO6/G0GYXRDdn/Vh4fJHHejHA3i8qThVYB6x5TT2D3EJ8Rzkk
	30Y9tdPLdEYydFznn0Hu+RUFZy2yXJ1omPhgxyEmiF9QIgkM6YKFhbanXmu7WiW/c5oGRMDddhs
	cQ4uyZVDV301VKGBFirjgKir0+Q=
X-Google-Smtp-Source: AGHT+IE0EkuY37ILnPKptg6uGReSxnPJE0X/fqU/3PWi9f79qp1lbwcINs44bUUuSRvUsJiz99sxZA==
X-Received: by 2002:a05:600c:2d4b:b0:42c:baf1:4c7 with SMTP id 5b1f17b1804b1-434afb94427mr4280355e9.4.1732734114928;
        Wed, 27 Nov 2024 11:01:54 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:8ad2:e64c:f150:ebc6? ([2a01:e0a:982:cbb0:8ad2:e64c:f150:ebc6])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434aa7e5e59sm30134885e9.44.2024.11.27.11.01.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Nov 2024 11:01:54 -0800 (PST)
Message-ID: <4d237348-2128-479c-8122-b194ffb19e5c@linaro.org>
Date: Wed, 27 Nov 2024 20:01:51 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v2 04/11] drm/msm: adreno: add GMU_BW_VOTE feature flag
To: Akhil P Oommen <quic_akhilpo@quicinc.com>
Cc: Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
 Stephen Boyd <sboyd@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Connor Abbott <cwabbott0@gmail.com>,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org
References: <20241119-topic-sm8x50-gpu-bw-vote-v2-0-4deb87be2498@linaro.org>
 <20241119-topic-sm8x50-gpu-bw-vote-v2-4-4deb87be2498@linaro.org>
 <20241123194316.yqvovktcptfep4dr@hu-akhilpo-hyd.qualcomm.com>
 <a936a9fc-6632-4f44-94d1-db304218b5a5@linaro.org>
 <fe8f40aa-b9c7-4a85-9cb6-63df81190fab@quicinc.com>
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
In-Reply-To: <fe8f40aa-b9c7-4a85-9cb6-63df81190fab@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 27/11/2024 17:00, Akhil P Oommen wrote:
> On 11/25/2024 1:46 PM, Neil Armstrong wrote:
>> On 23/11/2024 20:43, Akhil P Oommen wrote:
>>> On Tue, Nov 19, 2024 at 06:56:39PM +0100, Neil Armstrong wrote:
>>>> The Adreno GMU Management Unit (GNU) can also scale the DDR Bandwidth
>>>> along the Frequency and Power Domain level, but by default we leave the
>>>> OPP core vote for the interconnect ddr path.
>>>>
>>>> While scaling via the interconnect path was sufficient, newer GPUs
>>>> like the A750 requires specific vote paremeters and bandwidth to
>>>> achieve full functionality.
>>>>
>>>> While the feature will require some data in a6xx_info, it's safer
>>>> to only enable tested platforms with this flag first.
>>>>
>>>> Add a new feature enabling DDR Bandwidth vote via GMU.
>>>>
>>>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>>>> ---
>>>>    drivers/gpu/drm/msm/adreno/adreno_gpu.h | 1 +
>>>>    1 file changed, 1 insertion(+)
>>>>
>>>> diff --git a/drivers/gpu/drm/msm/adreno/adreno_gpu.h b/drivers/gpu/
>>>> drm/msm/adreno/adreno_gpu.h
>>>> index
>>>> 4702d4cfca3b58fb3cbb25cb6805f1c19be2ebcb..394b96eb6c83354ae008b15b562bedb96cd391dd 100644
>>>> --- a/drivers/gpu/drm/msm/adreno/adreno_gpu.h
>>>> +++ b/drivers/gpu/drm/msm/adreno/adreno_gpu.h
>>>> @@ -58,6 +58,7 @@ enum adreno_family {
>>>>    #define ADRENO_FEAT_HAS_HW_APRIV        BIT(0)
>>>>    #define ADRENO_FEAT_HAS_CACHED_COHERENT        BIT(1)
>>>>    #define ADRENO_FEAT_PREEMPTION            BIT(2)
>>>> +#define ADRENO_FEAT_GMU_BW_VOTE            BIT(3)
>>>
>>> Do we really need a feature flag for this? We have to carry this for
>>> every
>>> GPU going forward. IB voting is supported on all GMUs from A6xx GEN2 and
>>> newer. So we can just check that along with whether the bw table is
>>> dynamically generated or not.
>>
>> It depends on the bw table _and_ the a6xx_info.gmu table, I don't want to
>> check both in all parts on the driver.
>>
> Thats fine then.

Finally I converted the a6xx_info to a pointer, and it's fine checking
this pointer instead of the quirk, since anyway we already check num_bws.

Neil

> 
> -Akhil.
> 
>> Neil
>>
>>>
>>> -Akhil
>>>
>>>>      /* Helper for formating the chip_id in the way that userspace
>>>> tools like
>>>>     * crashdec expect.
>>>>
>>>> -- 
>>>> 2.34.1
>>>>
>>
>>
> 


