Return-Path: <devicetree+bounces-130881-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F094F9F1263
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 17:41:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 03D40162B52
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 16:41:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50A7D1DFE01;
	Fri, 13 Dec 2024 16:41:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AlEbMRJ3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5141916A395
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 16:41:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734108064; cv=none; b=MiW4LwWpcP7F0ubAD6nFo2yT5ruEdp+CRWCQF85Hhr9ydG7nzb/q2xxn5Wy5HQwnBjLVmkUxiF+72OqKr4oDfJ7YFlww2uwTtT/IQquO9VtTNDHwqEdeRyxoD5lhotbJq27ThrJC8gmP2QxZCzix+dI/2lbcq7dVzgZZ7z6+SJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734108064; c=relaxed/simple;
	bh=XU5iI/hLzybY3Ny2wX3CP6O+8hYtARWiRowfWJjtIEw=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=hG/NtqtgaQN9GNq6aZ1fkiwVlnQWuUY9DmmhuBsPjOI9hNaGbbnk5F2IijgXTXBZKAw2mmCXeq4Ob7a62Atq85mCFa3VeeWCmNV8Ey+sN752MYBA7aUAG6AfRP8Es0wXqpZiytwPQz2rWFjGEdFNTwck5rqXMda5j3mAH16aQ88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=AlEbMRJ3; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4361f65ca01so18743335e9.1
        for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 08:41:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734108061; x=1734712861; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UhYZQe35crokcavC5cBfXzDPXtIKiULqcKxoeLDgk88=;
        b=AlEbMRJ3havPTqTW6J5Es9TbPZCn4+UYOikPyDu5+VKaeb7DYlcqbPvMuAa/s1hkBC
         Epj+wL7mCIXCqkYW/KMFu5At5OWXMEKQlJoFY3XAVxR/ugh66aQNuyqvFFMt/+llQa60
         G221e7aQh0hAqlsKwt39N57jwlwuuf1o+/ltQLJ/vWuQ49KsLivNBBBYsxFmZiPCaj8U
         GWYLZP1jkc8B7d6ssfmaff/eiT7D9W+uY1eOY0SAQZyxICPGRXTRh9QJpylfWlMlb50N
         vMg9cSilkmc5ftPnnxmxi+OnuIPMXy4nx46aaFuXUx6OMHSGJG+xtfxfa6Y3uYnf2ej6
         8RSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734108061; x=1734712861;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=UhYZQe35crokcavC5cBfXzDPXtIKiULqcKxoeLDgk88=;
        b=L/4NW/aLM8enUZeTaTof+QJwXY4XwgLOkw2J+ojy+artcPSuPdXgZn7I/oJvMILf7j
         4YbLIEzOE4hXrNuLXHCDNV1Y9V84Wy1E0a7uchu1+bA7VCawsYoWzZsRdj/OR0KShSaE
         uwFYiURvnfJHerWJ6LSUscZm0Fh1GqwyzvDqq1pLffuxaBHuqwCOKQbjsK2DAayn8obW
         ti4LeSBlDfDlb+SPW1CVGJ2YS9Rx0G5o1sGQc/at6yKn+DXxcYVhtOar/w9RU7Eh+y2T
         CG4msXkrXsjenY8KcMTUwhUXp2DmGwjLdylKFNNhz7smKWWkhu3nCmjuvvxXZElMMAaf
         zmuw==
X-Forwarded-Encrypted: i=1; AJvYcCVJziLtrGTmx17HjIdzAOyrQVcrMRUS+PBDmt4/wchZ8AmNBMGMUlR51a/kINXsTH1/N/H8L4u8xt3R@vger.kernel.org
X-Gm-Message-State: AOJu0YxOpYmGaddsRjvhOb3crALm0bZPnLeCTW0a7ARlx5pWZED1350j
	5pUWW6eGU+7b2LHzOVlOeQDSzMAcg+NZpGWLNRaJ8fRpbfFbqJbV+0Gh12yapsw=
X-Gm-Gg: ASbGncsp5LooWQZCtZRB+sllBWJjL2h8ai/kk/ya5Nfg61Kr99+unDqe5Djp0QtS1tB
	5wBoHfRgslZ5OXU8SltravR5dqCMdRKfJv0m6phqeV0K7Z8fFIh+7cFZ2sdvFqBHRT5FTpAAUsD
	IayzGYouFPAiTemTRXnR8oHzyVry3ARgd7tMQrhXBTAA14GJ0BCzrHKwVVCxGPgb0TUSbhLzKH7
	kRfpMO73qo5JSzeQZY9LHxCiuQFaWk2sMPNFxGrWY5tdrO3MPsTSgi1WK2Zw3z51OQZ7lXm/J6Q
	tNSuDDdkmDtxCU5FJEdGivnKoE7qd8xoPQ==
X-Google-Smtp-Source: AGHT+IHhteapVHrOhIDQhnxAloCB38K7IQFWTgx0ajDWz0Pt0FetAnPdpqhRuEk0FUUisVsWd+Ja8A==
X-Received: by 2002:a05:600c:1e8a:b0:434:f5d1:f10f with SMTP id 5b1f17b1804b1-4362aa52fa7mr31133025e9.17.1734108060613;
        Fri, 13 Dec 2024 08:41:00 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:4795:2d16:2587:ed70? ([2a01:e0a:982:cbb0:4795:2d16:2587:ed70])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4362527ecc3sm56170105e9.0.2024.12.13.08.40.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Dec 2024 08:41:00 -0800 (PST)
Message-ID: <9dcf26e5-1c25-4a18-ab01-58ddf3fbd607@linaro.org>
Date: Fri, 13 Dec 2024 17:40:59 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v5 4/7] drm/msm: adreno: find bandwidth index of OPP and
 set it along freq index
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Akhil P Oommen <quic_akhilpo@quicinc.com>, Rob Clark <robdclark@gmail.com>,
 Sean Paul <sean@poorly.run>, Konrad Dybcio <konradybcio@kernel.org>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
 freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20241211-topic-sm8x50-gpu-bw-vote-v5-0-6112f9f785ec@linaro.org>
 <20241211-topic-sm8x50-gpu-bw-vote-v5-4-6112f9f785ec@linaro.org>
 <ddf91ba2-cab2-4653-b842-65a8e82b5160@oss.qualcomm.com>
 <2f1c6deb-29f8-4144-b086-743fb0f8495c@linaro.org>
 <80bed70e-7802-4555-a15e-e06fe46214c6@quicinc.com>
 <c2d8f443-5876-4293-8d2b-ecd13eaf8285@oss.qualcomm.com>
 <268d67c0-efdf-4ad4-b5fe-5b4f04e73131@linaro.org>
 <0d4d3ca3-ec8a-4e85-9838-a2bf1e07e872@oss.qualcomm.com>
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
In-Reply-To: <0d4d3ca3-ec8a-4e85-9838-a2bf1e07e872@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 13/12/2024 17:31, Konrad Dybcio wrote:
> On 13.12.2024 5:28 PM, neil.armstrong@linaro.org wrote:
>> On 13/12/2024 16:37, Konrad Dybcio wrote:
>>> On 13.12.2024 2:12 PM, Akhil P Oommen wrote:
>>>> On 12/13/2024 3:07 AM, Neil Armstrong wrote:
>>>>> On 12/12/2024 21:21, Konrad Dybcio wrote:
>>>>>> On 11.12.2024 9:29 AM, Neil Armstrong wrote:
>>>>>>> The Adreno GPU Management Unit (GMU) can also scale the DDR Bandwidth
>>>>>>> along the Frequency and Power Domain level, until now we left the OPP
>>>>>>> core scale the OPP bandwidth via the interconnect path.
>>>>>>>
>>>>>>> In order to enable bandwidth voting via the GPU Management
>>>>>>> Unit (GMU), when an opp is set by devfreq we also look for
>>>>>>> the corresponding bandwidth index in the previously generated
>>>>>>> bw_table and pass this value along the frequency index to the GMU.
>>>>>>>
>>>>>>> The GMU also takes another vote called AB which is a 16bit quantized
>>>>>>> value of the floor bandwidth against the maximum supported bandwidth.
>>>>>>>
>>>>>>> The AB is calculated with a default 25% of the bandwidth like the
>>>>>>> downstream implementation too inform the GMU firmware the minimal
>>>>>>> quantity of bandwidth we require for this OPP.
>>>>>>>
>>>>>>> Since we now vote for all resources via the GMU, setting the OPP
>>>>>>> is no more needed, so we can completely skip calling
>>>>>>> dev_pm_opp_set_opp() in this situation.
>>>>>>>
>>>>>>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>>>>>>> Reviewed-by: Akhil P Oommen <quic_akhilpo@quicinc.com>
>>>>>>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>>>>>>> ---
>>>>>>>     drivers/gpu/drm/msm/adreno/a6xx_gmu.c | 39 ++++++++++++++++++++++++
>>>>>>> +++++++++--
>>>>>>>     drivers/gpu/drm/msm/adreno/a6xx_gmu.h |  2 +-
>>>>>>>     drivers/gpu/drm/msm/adreno/a6xx_hfi.c |  6 +++---
>>>>>>>     drivers/gpu/drm/msm/adreno/a6xx_hfi.h |  5 +++++
>>>>>>>     4 files changed, 46 insertions(+), 6 deletions(-)
>>>>>>>
>>>>>>> diff --git a/drivers/gpu/drm/msm/adreno/a6xx_gmu.c b/drivers/gpu/drm/
>>>>>>> msm/adreno/a6xx_gmu.c
>>>>>>> index
>>>>>>> 36696d372a42a27b26a018b19e73bc6d8a4a5235..46ae0ec7a16a41d55755ce04fb32404cdba087be 100644
>>>>>>> --- a/drivers/gpu/drm/msm/adreno/a6xx_gmu.c
>>>>>>> +++ b/drivers/gpu/drm/msm/adreno/a6xx_gmu.c
>>>>>>> @@ -110,9 +110,11 @@ void a6xx_gmu_set_freq(struct msm_gpu *gpu,
>>>>>>> struct dev_pm_opp *opp,
>>>>>>>                    bool suspended)
>>>>>>>     {
>>>>>>>         struct adreno_gpu *adreno_gpu = to_adreno_gpu(gpu);
>>>>>>> +    const struct a6xx_info *info = adreno_gpu->info->a6xx;
>>>>>>>         struct a6xx_gpu *a6xx_gpu = to_a6xx_gpu(adreno_gpu);
>>>>>>>         struct a6xx_gmu *gmu = &a6xx_gpu->gmu;
>>>>>>>         u32 perf_index;
>>>>>>> +    u32 bw_index = 0;
>>>>>>>         unsigned long gpu_freq;
>>>>>>>         int ret = 0;
>>>>>>>     @@ -125,6 +127,37 @@ void a6xx_gmu_set_freq(struct msm_gpu *gpu,
>>>>>>> struct dev_pm_opp *opp,
>>>>>>>             if (gpu_freq == gmu->gpu_freqs[perf_index])
>>>>>>>                 break;
>>>>>>>     +    /* If enabled, find the corresponding DDR bandwidth index */
>>>>>>> +    if (info->bcms && gmu->nr_gpu_bws > 1) {
>>>>>>
>>>>>> if (gmu->nr_gpu_bws)
>>>>>
>>>>> gmu->nr_gpu_bws == 1 means there's not BW in the OPPs (index 0 is the
>>>>> "off" state)
>>>>>
>>>>>>
>>>>>>> +        unsigned int bw = dev_pm_opp_get_bw(opp, true, 0);
>>>>>>> +
>>>>>>> +        for (bw_index = 0; bw_index < gmu->nr_gpu_bws - 1; bw_index+
>>>>>>> +) {
>>>>>>> +            if (bw == gmu->gpu_bw_table[bw_index])
>>>>>>> +                break;
>>>>>>> +        }
>>>>>>> +
>>>>>>> +        /* Vote AB as a fraction of the max bandwidth */
>>>>>>> +        if (bw) {
>>>>>>
>>>>>> This seems to only be introduced with certain a7xx too.. you should
>>>>>> ping the GMU with HFI_VALUE_GMU_AB_VOTE to check if it's supported
>>>>>
>>>>> Good point
>>>>
>>>> No no. Doing this will trigger some assert in pre-A750 gmu firmwares. We
>>>> learned it the hard way. No improvisation please. :)
>>>
>>> We shouldn't be sending that AB data to firmware that doesn't expect
>>> it either too, though..
>>
>> Well we don't !
> 
> The code in the scope that I quoted above does that

No it doesn't, if the proper bcms are not declared in the gpu_info, it won't

Neil

> 
> see the full explanation here
> 
> https://git.codelinaro.org/clo/le/platform/vendor/qcom/opensource/graphics-kernel/-/commit/6026c31a54444b712f7ea36ac1aafaaeef07fa4e
> 
> Konrad


