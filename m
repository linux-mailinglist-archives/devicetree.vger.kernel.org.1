Return-Path: <devicetree+bounces-172422-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E264FAA4BE5
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 14:53:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B1E5D3BB67F
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 12:53:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7854E25D8F2;
	Wed, 30 Apr 2025 12:49:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PM/zHuyz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C6F125DCEE
	for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 12:49:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746017375; cv=none; b=RP14evelDSVgt8Yh8TaQUpCQ+i+LWd3p0LtEKpqUmdhKyAQw9gs48K0OavUbJAWg9Zol+6MSfOSKU5pWK0C+lK4RJcMbyX4g110M0e7BDCoOxJeJ5iFwK3x8NzbnZ6dX+GYlaBTe7JkQFz1gfaVV0WyKGA+YIKP1sxw4/q0ZGBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746017375; c=relaxed/simple;
	bh=gzkHwSINqk/wG+dEPUXrHWcOFDYjlD3M3qoHOoMhpgQ=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=SJ6xszw9sjl9w9Z7kHw5hvyIU3jv0WxLA99QkgQF7PQrN1Qd1OU5EJb+Vz2u38YUiGCUr4ZorSIX/KOHBhTuRtI75vgBFcv/gz6Vx3A8NLLQU59gY7u2iP4cZ3196/2DNNSS/jEJCWPk+W+l4J99IIBUV498wSezzULx1tjKQ9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PM/zHuyz; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-43d0618746bso51653655e9.2
        for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 05:49:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746017372; x=1746622172; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=U0QaE6gqDjxKdHf7ertrDDvouXP/X1oSlZQqvhzBwFk=;
        b=PM/zHuyzisxrTl+gAGUrv6Jf7Q/06RjLOX2FOb0Am2hpY3ZiBXQRgKOOBVY45dkt8c
         Cq8JwPgrAzNL2NmOMPNs1D4i1AmbOlC6Y8KphmEZRKaLVp3kKNuJY1Q6Lv29CmqfoRi/
         zfbXxQDnSxNmZyeYT5k15sn0o4CweqrP0iFtZ/AjsRkfunDmBbw7GVBb2qOL/g5aRoig
         pUwL0/RxvxM0n/mRZ9FSz04HCTu9j6VImPkEmtHaaZVWfQWe5Dd4r7eMHYB3TXwC5a7O
         orNv/9d0S5jAL0o+5b6H9PxyrY4R9SJ+m1Gzn5NoboGLaDczGqySmGEgnGBb0eTjKUYc
         //QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746017372; x=1746622172;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=U0QaE6gqDjxKdHf7ertrDDvouXP/X1oSlZQqvhzBwFk=;
        b=xSCHFIiPs3u8jjf/G9DnX2IFfe7VtYsGuFvbfQ7ZdVIQ+/y2UEZnYgGqXnbxN0lt/C
         SumT3a3smN5mH+XWjVguNfOzTzqjxx8LHEoFEVvXNgG12JRlY4sd31pTWKTqeZcXIaH+
         OfdTSkZgBg6NlXTGyxofPwvXx3BOpkpAZ6ViQA4xSgicqHRiPrZvaORjTojibQHkwtno
         /rxmaBFEBPW7fYNZ4qYWV8kxE40LVx6vSoPeLHjrG0HcpHsE8EltUdf1Zx5puG9cEhdk
         Fc/G0kORQi54nALFWyBC9DWosp3nPYe7fK5OZeLKnRFw+mnRn4ekJQNxcLOygo4Rb2JT
         3lmw==
X-Forwarded-Encrypted: i=1; AJvYcCVE8GQWKrP+PX4IjsyA+cAtuDqtegdsE2wyG+tDC5VXOsMwKOH52t+GfFg+8R3g4kjq7m0LjKant3Qe@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+70mLSm3J6Vi5n+5zGv9WLAI4L4SWhk2zF4dbd/rpkV0jPnH/
	W2q6cT3SGCwJslbWUJOdcA99davoTRXBCWK+SaDaglcb/s+CFgW2oBhPqE1QE2Y=
X-Gm-Gg: ASbGncuLfF3KBAmdNa8BmxoOFlPlEu2SDJJgZkEHU7dziH5AXy3pAZJo1MhPThHQ1XN
	qXF0wAG5EXmIJXSmwvVQvXeeMSNRyyhfyp0hHF87FzfzlgiYz3N3C96wBNpB0KYVX10TqDmRAiD
	FZmlodeTQbfNHA82bvetYptLCM1UaF/M4e3ofIFwuQnJ+oBVwKPp6OtTKNU2mLZQNrnLDNYUCIc
	8nEt5hVCSrnbNaeNi2hKdXtrMVe0W219zlCQ65F6nWRch4zmlTtHjrX5t+fLFtaTSmnTR8f3924
	oZ2iWuC731AxBADTWYUK6Hao10EG3044/cExbPJD6Rvl2RPAjcvGcYNZNbbDE3ECeCo4UDXYUbH
	8niq2A5Jx6+TvDUcrog==
X-Google-Smtp-Source: AGHT+IE0vi2coXCwFNtieUFxKKeCy42jmnqHs3dTSRXFK+ENcMKD71lm+Qd/xSuR3AE5EW7jjaACeg==
X-Received: by 2002:a05:600c:a016:b0:43c:f513:958a with SMTP id 5b1f17b1804b1-441b2639853mr24601215e9.13.1746017371767;
        Wed, 30 Apr 2025 05:49:31 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:b3d6:213c:5c50:7785? ([2a01:e0a:3d9:2080:b3d6:213c:5c50:7785])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-441b2b9726fsm24514075e9.8.2025.04.30.05.49.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Apr 2025 05:49:31 -0700 (PDT)
Message-ID: <b838f9bd-0537-4f8d-b24b-d96700d566c8@linaro.org>
Date: Wed, 30 Apr 2025 14:49:30 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH RFT v6 2/5] drm/msm/adreno: Add speedbin data for SM8550 /
 A740
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Clark <robdclark@gmail.com>,
 Sean Paul <sean@poorly.run>, Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Dmitry Baryshkov <lumag@kernel.org>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>,
 linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
 freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>
References: <20250430-topic-smem_speedbin_respin-v6-0-954ff66061cf@oss.qualcomm.com>
 <20250430-topic-smem_speedbin_respin-v6-2-954ff66061cf@oss.qualcomm.com>
 <13cd20c6-f758-45ff-82d1-4fd663d1698c@linaro.org>
 <886d979d-c513-4ab8-829e-4a885953079a@oss.qualcomm.com>
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
In-Reply-To: <886d979d-c513-4ab8-829e-4a885953079a@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 30/04/2025 14:35, Konrad Dybcio wrote:
> On 4/30/25 2:26 PM, neil.armstrong@linaro.org wrote:
>> Hi,
>>
>> On 30/04/2025 13:34, Konrad Dybcio wrote:
>>> From: Konrad Dybcio <konrad.dybcio@linaro.org>
>>>
>>> Add speebin data for A740, as found on SM8550 and derivative SoCs.
>>>
>>> For non-development SoCs it seems that "everything except FC_AC, FC_AF
>>> should be speedbin 1", but what the values are for said "everything" are
>>> not known, so that's an exercise left to the user..
>>>
>>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>>> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
>>> ---
>>>    drivers/gpu/drm/msm/adreno/a6xx_catalog.c | 8 ++++++++
>>>    1 file changed, 8 insertions(+)
>>>
>>> diff --git a/drivers/gpu/drm/msm/adreno/a6xx_catalog.c b/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
>>> index 53e2ff4406d8f0afe474aaafbf0e459ef8f4577d..61daa331567925e529deae5e25d6fb63a8ba8375 100644
>>> --- a/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
>>> +++ b/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
>>> @@ -11,6 +11,9 @@
>>>    #include "a6xx.xml.h"
>>>    #include "a6xx_gmu.xml.h"
>>>    +#include <linux/soc/qcom/smem.h>
>>> +#include <linux/soc/qcom/socinfo.h>
>>> +
>>>    static const struct adreno_reglist a612_hwcg[] = {
>>>        {REG_A6XX_RBBM_CLOCK_CNTL_SP0, 0x22222222},
>>>        {REG_A6XX_RBBM_CLOCK_CNTL2_SP0, 0x02222220},
>>> @@ -1431,6 +1434,11 @@ static const struct adreno_info a7xx_gpus[] = {
>>>            },
>>>            .address_space_size = SZ_16G,
>>>            .preempt_record_size = 4192 * SZ_1K,
>>> +        .speedbins = ADRENO_SPEEDBINS(
>>> +            { ADRENO_SKU_ID(SOCINFO_FC_AC), 0 },
>>> +            { ADRENO_SKU_ID(SOCINFO_FC_AF), 0 },
>>> +            /* Other feature codes (on prod SoCs) should match to speedbin 1 */
>>
>> I'm trying to understand this sentence. because reading patch 4, when there's no match
>> devm_pm_opp_set_supported_hw() is simply never called so how can it match speedbin 1 ?
> 
> What I'm saying is that all other entries that happen to be possibly
> added down the line are expected to be speedbin 1 (i.e. BIT(1))
> 
>> Before this change the fallback was speedbin = BIT(0), but this disappeared.
> 
> No, the default was to allow speedbin mask ~(0U)

Hmm no:

	supp_hw = fuse_to_supp_hw(info, speedbin);

	if (supp_hw == UINT_MAX) {
		DRM_DEV_ERROR(dev,
			"missing support for speed-bin: %u. Some OPPs may not be supported by hardware\n",
			speedbin);
		supp_hw = BIT(0); /* Default */
	}

	ret = devm_pm_opp_set_supported_hw(dev, &supp_hw, 1);
	if (ret)
		return ret;

> 
> Konrad


