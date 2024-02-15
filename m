Return-Path: <devicetree+bounces-41902-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4575C855D3A
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 10:03:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AC0F11F2252F
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 09:03:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A707414286;
	Thu, 15 Feb 2024 08:58:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TDSHlRGv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E9221BF33
	for <devicetree@vger.kernel.org>; Thu, 15 Feb 2024 08:58:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707987539; cv=none; b=c5YNlAmZSubgcax1BWTLvkLyHKvA0gM69GyEOyEj00HY4u0csL+GbKE0Xv0muXhxSSUkUOpWIlJwh0hjccESzw4sjgWR5HdBwDFZNAdRz0knmWj2igbxJwbVVYR9jtd7FGem/iKMIKkgkQxbNY1zEeEtcOtklc3v3soStMThqyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707987539; c=relaxed/simple;
	bh=dNYeOqFk3ZAXp+sfHqfy+SC1Wh73yci1bZ7gt+mg/ps=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=LxbhVrea7XVvj4p0bkAnx76bwnOdTCZ1vc0kopIveVwJ2wtB1wwiuj7aEa663ELQwC2SrBLFwO4daeiVYzT4cknPRFZBdOOJDrdWMgzF4uXVTQPoGmxrGzVmv/Fa+n0sIXfovxWj/12T2VEt5iy9FQqysnzJ75EaoLilFgG/cXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TDSHlRGv; arc=none smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2d1080cb9easo8109191fa.1
        for <devicetree@vger.kernel.org>; Thu, 15 Feb 2024 00:58:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707987534; x=1708592334; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=thSm/NaAqUDsrmdo57qMDQ5CJPadtCEGhN2rge4I/tg=;
        b=TDSHlRGvqmitp3cNGfyOrfonhROt6jXCQagHISJQa7Gji1oh/bdpq0QSDRhGFwTZsY
         ITHVM59WCs/Opwa0dq7E2LyXHdqWvqjqJbc4qC/GnEzmiBtWkF8LG/hyugy/1muQB7Lw
         /eXnONAdYyaMrfSfo1hD5H99JIo29M9ayVwFcubxMMVPuAh65oFi8bhga0tdEHDmmvKK
         ifvQXkAJSl1RtX6lP9daqskNHSvS0srf2wNSDdHwbY+5egYiHOPp4mzkI5ZWGW+ALBR6
         LvnoOlT9Hlxqm88nk6TD9+sFZt0JjRAylrfVZWJM3REulN7MFmRwsyYiPrOxyjWeiws+
         v/5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707987534; x=1708592334;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=thSm/NaAqUDsrmdo57qMDQ5CJPadtCEGhN2rge4I/tg=;
        b=DPNHZmn7AtV73UjZs0nqdFlWLAAI1UejKSycn7b12gtKjwJs0Z3chUZLmLvigy4MSS
         Uaw6xSNs1bfxV7NBKP/O4CIOpYBmlIN+yxKwhROWtdyGuvip5eL5CaccQbLoZecRJOac
         bDL7oqZhktamz1It84VxxjqfCA/FHy9lTKH5PVX20EnqBDJkCZbqPC+YAdOZH3cRb4Ov
         O5pac2yGvLcu+9OaVC4j9e6vj5o4wqxn1cMj749OZgW9RFtC2tZNFrF4Y/SaiWX1Ixou
         wteTuWpzkWoekXYSnMRiKOtsdOvCl6beqTsBNWjUw4mR6j0XmEL9a/Tv8v6M0LOWvk4d
         DhDA==
X-Forwarded-Encrypted: i=1; AJvYcCU9XnZPTt5NV79vbalZCy72xKJ9fZhPx/j970y3kgU/GQjX2xs0bAIApYtq4Sf1V4BFO2XP+dLJHvawDMwzvwpySZ0ARAo0u0ctdQ==
X-Gm-Message-State: AOJu0YxebtGKc+aSkJfGmhZKM492jkDhaSvSb5y7liMrg6ji6b9r86s+
	mCyXtnKzKaiBRr2IASKIpHHv6dTH1RgKJehDIbl38MdREcid26pbvOjwlw+sAXI=
X-Google-Smtp-Source: AGHT+IHKg6BKjhzeos5aBRrK7kpueZ7SscUJfjJ3GKRg9xsS0chtvU+B6KhAY4Ng3oin0rL4VZwv5g==
X-Received: by 2002:a2e:8805:0:b0:2d1:1df8:9ddd with SMTP id x5-20020a2e8805000000b002d11df89dddmr706979ljh.27.1707987534530;
        Thu, 15 Feb 2024 00:58:54 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:4589:7160:c264:fa3b? ([2a01:e0a:982:cbb0:4589:7160:c264:fa3b])
        by smtp.gmail.com with ESMTPSA id n16-20020a5d51d0000000b0033cefb84b16sm1101386wrv.52.2024.02.15.00.58.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Feb 2024 00:58:54 -0800 (PST)
Message-ID: <6aea55e7-2ca6-444c-b111-e3cc45bd28a5@linaro.org>
Date: Thu, 15 Feb 2024 09:58:52 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 3/5] drm: msm: add support for A750 GPU
To: Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Clark
 <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Will Deacon <will@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>,
 Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 iommu@lists.linux.dev
References: <20240212-topic-sm8650-gpu-v1-0-708a40b747b5@linaro.org>
 <20240212-topic-sm8650-gpu-v1-3-708a40b747b5@linaro.org>
 <b5d76a25-045a-4acd-ad20-d28855b40222@linaro.org>
 <bcad544c-7ca2-4b4f-805b-4ccaedbd091c@linaro.org>
 <13d65685-b306-43ad-b9ca-a799f2cf73e5@linaro.org>
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
Organization: Linaro Developer Services
In-Reply-To: <13d65685-b306-43ad-b9ca-a799f2cf73e5@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 14/02/2024 22:43, Konrad Dybcio wrote:
> On 12.02.2024 15:45, Neil Armstrong wrote:
>> On 12/02/2024 11:46, Konrad Dybcio wrote:
>>> On 12.02.2024 11:37, Neil Armstrong wrote:
>>>> Add support for the A750 GPU found on the SM8650 platform
>>>>
>>>> Unlike the the very close A740 GPU on the SM8550 SoC, the A750 GPU
>>>> doesn't have an HWCFG block but a separate register set.
>>>>
>>>> The missing registers are added in the a6xx.xml.h file that would
>>>> require a subsequent sync and the non-existent hwcfg is handled
>>>> in a6xx_set_hwcg().
>>>
>>> These should also be submitted to mesa to make sure the next header sync
>>> doesn't wipe them
>>
>> Ack submitting them right now: https://gitlab.freedesktop.org/mesa/mesa/-/merge_requests/27576
> 
> Thanks
> 
>>
>>>
>>> [...]
>>>
>>>> --- a/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
>>>> +++ b/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
>>>> @@ -958,10 +958,11 @@ static void a6xx_set_hwcg(struct msm_gpu *gpu, bool state)
>>>>        struct a6xx_gpu *a6xx_gpu = to_a6xx_gpu(adreno_gpu);
>>>>        struct a6xx_gmu *gmu = &a6xx_gpu->gmu;
>>>>        const struct adreno_reglist *reg;
>>>> +    bool skip_programming = !(adreno_gpu->info->hwcg || adreno_is_a7xx(adreno_gpu));
>>>
>>> is_a750?
>>
>> OK right, I was thinking of the next gpu which will probably also miss an hwcfg
>>
>>>
>>>>        unsigned int i;
>>>>        u32 val, clock_cntl_on, cgc_mode;
>>>>    -    if (!adreno_gpu->info->hwcg)
>>>> +    if (skip_programming)
>>>>            return;
>>>>          if (adreno_is_a630(adreno_gpu))
>>>> @@ -982,6 +983,25 @@ static void a6xx_set_hwcg(struct msm_gpu *gpu, bool state)
>>>>                  state ? 0x5555 : 0);
>>>>        }
>>>>    +    if (!adreno_gpu->info->hwcg) {
>>>
>>> I don't think this block of code is reachable now, no?
>>
>> It is because we didn't skip when adreno_is_a7xx(adreno_gpu)
> 
> Ahh I misread the brackets within the assignment
> 
>>
>>>
>>> Maybe remove the skip_programming and if_a750 here?
>> This would require:
>>>> -    if (!adreno_gpu->info->hwcg || )
>>>> +    if (!(adreno_gpu->info->hwcg || adreno_is_a750(adreno_gpu)))
>>
>> and:
>>
>>>> +    if (adreno_is_a750(adreno_gpu)) {
>>
>> But if the next gpu also doesn't have an hwcfg, we will need to use
>> the current design...
>>
>> I just tried with:
>> ====================><===============================
>> @@ -961,7 +961,7 @@ static void a6xx_set_hwcg(struct msm_gpu *gpu, bool state)
>>          unsigned int i;
>>          u32 val, clock_cntl_on, cgc_mode;
>>
>> -       if (!adreno_gpu->info->hwcg)
>> +       if (!(adreno_gpu->info->hwcg || adreno_is_a750(adreno_gpu)))
>>                  return;
>>
>>          if (adreno_is_a630(adreno_gpu))
>> @@ -982,6 +982,25 @@ static void a6xx_set_hwcg(struct msm_gpu *gpu, bool state)
>>                            state ? 0x5555 : 0);
>>          }
>>
>> +       if (adreno_is_a750(adreno_gpu)) {
>> +               gpu_write(gpu, REG_A7XX_RBBM_CLOCK_CNTL_GLOBAL, 1);
>> +               gpu_write(gpu, REG_A7XX_RBBM_CGC_GLOBAL_LOAD_CMD, state ? 1 : 0);
>> +
>> +               if (state) {
>> +                       gpu_write(gpu, REG_A7XX_RBBM_CGC_P2S_TRIG_CMD, 1);
>> +
>> +                       if (gpu_poll_timeout(gpu, REG_A7XX_RBBM_CGC_P2S_STATUS, val,
>> +                                            val & A7XX_RBBM_CGC_P2S_STATUS_TXDONE, 1, 10)) {
>> +                               dev_err(&gpu->pdev->dev, "RBBM_CGC_P2S_STATUS TXDONE Poll failed\n");
>> +                               return;
>> +                       }
>> +
>> +                       gpu_write(gpu, REG_A7XX_RBBM_CLOCK_CNTL_GLOBAL, 0);
>> +               }
>> +
>> +               return;
>> +       }
>> +
>>          val = gpu_read(gpu, REG_A6XX_RBBM_CLOCK_CNTL);
>>
>>          /* Don't re-program the registers if they are already correct */
>> ====================><===============================
>>
>> And it works fine, does it work it for you ?
> 
> Let's keep it as-is in the original submission, as I've mentioned, I had
> misread the code

Ack thanks

Neil

> 
> Konrad
> 
>>
>>>
>>>> +        gpu_write(gpu, REG_A7XX_RBBM_CLOCK_CNTL_GLOBAL, 1);
>>>> +        gpu_write(gpu, REG_A7XX_RBBM_CGC_GLOBAL_LOAD_CMD, state ? 1 : 0);
>>>> +
>>>> +        if (state) {
>>>> +            gpu_write(gpu, REG_A7XX_RBBM_CGC_P2S_TRIG_CMD, 1);
>>>> +
>>>> +            if (gpu_poll_timeout(gpu, REG_A7XX_RBBM_CGC_P2S_STATUS, val,
>>>> +                         val & BIT(0), 1, 10)) {
>>>
>>> We should define that bit name (the err suggests it's
>>> REG_A7XX_RBBM_GCC_P2S_STATUS_TXDONE or so)
>>>
>>> [...]
>>>
>>>> +static inline int adreno_is_a750(struct adreno_gpu *gpu)
>>>> +{
>>>> +    return gpu->info->chip_ids[0] == 0x43051401;
>>>> +}
>>>> +
>>>>    /* Placeholder to make future diffs smaller */
>>>
>>> Please also remove this comment now that it's invalid
>>
>> Ack
>>
>>>
>>> Konrad
>>
>> Thanks,
>> Neil
>>


