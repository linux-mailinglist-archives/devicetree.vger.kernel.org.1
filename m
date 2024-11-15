Return-Path: <devicetree+bounces-122089-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 13BB59CDB71
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 10:21:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8E4811F216B6
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 09:21:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F47718FC84;
	Fri, 15 Nov 2024 09:21:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QqvrRV0o"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D5E818C322
	for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 09:21:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731662487; cv=none; b=BfuqJG55HjEVa0eT/AIlbEBemnuLYkM2WgdkSey+eQUZQ+/SsNghcpcum6spkHxtHinlBK0yWWHgCHKpYd32vyRhhSrIgKDY4fTwl+kvs0uWW+CDMHK/uEKnN6YnC3HpTyVpoC3+dTCEn5c0AegQkmgjT+yYGOxI7w6iDeaTK9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731662487; c=relaxed/simple;
	bh=SHNJ1Lf+Gj+8wNaOBgkKevAIOjTR/4rdQkoaqwDqlcw=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=VFAqYAsB+czdgu7K+Zr1jJ9TGxVAGGMFzbOMQ/isAUH9FNbFm4O1mYGbIj1YyKUd8HdkBmhgE5eGSrK3ARMuplxjDH3AMlK+egzQluEq19wWtVMplh7Cs7Ek2zj0H7VjJXISnochHRwHw6YNrThdujyYNF6LcvDIVmbaroY3cS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QqvrRV0o; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4315eac969aso8898435e9.1
        for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 01:21:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731662483; x=1732267283; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3Ubsq0FTtX7FXFxz4kQgMfN9vdpcOBE9XRs+CSKkAVU=;
        b=QqvrRV0of9xQCeby/23G3J/Q76c53po0ySWUvr2koBhPmL6gtCe09uTdBc3EDNbe35
         cam52Tjog6kecUO/9MMrc0aVs8r93pRt4hv1tl/t+/oO6ztGUgRRPouk3q6b51F2oHCK
         T3lX/rzby9Q8PSA7gjmU/AIniQkrb0UEOKl9xBXXaUFVAJcnm9N7pVMSJrM/daqzlcZj
         k1Ie/5FgXafifZ7ciDyJOulRazTBSg4Eg2JDihXjhllBpPtPZ4M7/uMHEk+3LDLHnBQz
         JgTpCgekwG4ha/8EHBiwP3s9JY0gJE5EX3psUVAWtxxxbGxNZd0ywQA87dBVFeEmhTGv
         jqLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731662483; x=1732267283;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=3Ubsq0FTtX7FXFxz4kQgMfN9vdpcOBE9XRs+CSKkAVU=;
        b=gYWqtOAF+pkLFZrm48Ss/DRQu+M4Ep71H0NOvJuk7bjcNldxBMrJW25QJ7rj7ccUnf
         UwRQyXEmDQm9DM98zWzm+VqdLDbXTSSfchHDAvg1jHSSOm/gBolGBTj6STl6GdQJplEr
         58U2WUrDftBF5TCY0v8dE8kawIVGoI2k7+uGgHrK5zToblPscoh7Y5AMexUot5UiuQEc
         LLKEkipdNZY/flMcjloBPZujBuuWU5T3BHPTtD9pJtlu+5ln7dPM9EvgyemVrbAUDTZc
         A8e5h8utAlqzjOxlUXIkoMcP8tKq8EYWTvq/g3sZjEwOqq8LDmJz7NC7W/8jF7JDe63b
         MUew==
X-Forwarded-Encrypted: i=1; AJvYcCWBGaujqf8gCLdKGU1G6/o7PbS7dzZKd5emyFLr8zefJG0nclOebJGEKEUZldLvBuhmGmrQUZdyL2ga@vger.kernel.org
X-Gm-Message-State: AOJu0YxNEuF7X2qMmy+9iqd2p21DwG4ge7e0FasXCmHu34oNbmXwNRfy
	2GgjZuYgiGsnlUkxWQ9vaa4S8ZsXY999udOigaXLQqGQUWL7Np+TptlG2tAjaTI=
X-Google-Smtp-Source: AGHT+IFhhzfXYJliCvhgMAnEBeivjS0/dTVTRYhH3Xvh8F0wAGfi8xwl9PwfcqxAfM7+X3hn+j6avA==
X-Received: by 2002:a05:600c:1c29:b0:431:4e33:98b6 with SMTP id 5b1f17b1804b1-432defd2398mr17475545e9.5.1731662482814;
        Fri, 15 Nov 2024 01:21:22 -0800 (PST)
Received: from [192.168.7.189] ([212.114.21.58])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-432da2445d4sm51991485e9.5.2024.11.15.01.21.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Nov 2024 01:21:22 -0800 (PST)
Message-ID: <63a2b391-8b71-41cb-bed2-3bc7fd2154ab@linaro.org>
Date: Fri, 15 Nov 2024 10:21:21 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH RFC 2/8] drm/msm: adreno: add GMU_BW_VOTE quirk
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Akhil P Oommen <quic_akhilpo@quicinc.com>,
 Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
 Stephen Boyd <sboyd@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Connor Abbott <cwabbott0@gmail.com>,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org
References: <20241113-topic-sm8x50-gpu-bw-vote-v1-0-3b8d39737a9b@linaro.org>
 <20241113-topic-sm8x50-gpu-bw-vote-v1-2-3b8d39737a9b@linaro.org>
 <sgz4h6rlmekiwypaisjbnej326wv4vaqt3mgspp4fs4tg3mdfx@cwmdqcu6gwbf>
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
In-Reply-To: <sgz4h6rlmekiwypaisjbnej326wv4vaqt3mgspp4fs4tg3mdfx@cwmdqcu6gwbf>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 15/11/2024 08:07, Dmitry Baryshkov wrote:
> On Wed, Nov 13, 2024 at 04:48:28PM +0100, Neil Armstrong wrote:
>> The Adreno GMU Management Unit (GNU) can also scale the DDR Bandwidth
>> along the Frequency and Power Domain level, but by default we leave the
>> OPP core vote for the interconnect ddr path.
>>
>> While scaling via the interconnect path was sufficient, newer GPUs
>> like the A750 requires specific vote paremeters and bandwidth to
>> achieve full functionality.
>>
>> Add a new Quirk enabling DDR Bandwidth vote via GMU.
> 
> Please describe, why this is defined as a quirk rather than a proper
> platform-level property. From my experience with 6xx and 7xx, all the
> platforms need to send some kind of BW data to the GMU.

Well APRIV, CACHED_COHERENT & PREEMPTION are HW features, why this can't be part of this ?

Perhaps the "quirks" bitfield should be features instead ?

> 
>>
>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>> ---
>>   drivers/gpu/drm/msm/adreno/adreno_gpu.h | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/drivers/gpu/drm/msm/adreno/adreno_gpu.h b/drivers/gpu/drm/msm/adreno/adreno_gpu.h
>> index e71f420f8b3a8e6cfc52dd1c4d5a63ef3704a07f..20b6b7f49473d42751cd4fb4fc82849be42cb807 100644
>> --- a/drivers/gpu/drm/msm/adreno/adreno_gpu.h
>> +++ b/drivers/gpu/drm/msm/adreno/adreno_gpu.h
>> @@ -57,6 +57,7 @@ enum adreno_family {
>>   #define ADRENO_QUIRK_HAS_HW_APRIV		BIT(3)
>>   #define ADRENO_QUIRK_HAS_CACHED_COHERENT	BIT(4)
>>   #define ADRENO_QUIRK_PREEMPTION			BIT(5)
>> +#define ADRENO_QUIRK_GMU_BW_VOTE		BIT(6)
>>   
>>   /* Helper for formating the chip_id in the way that userspace tools like
>>    * crashdec expect.
>>
>> -- 
>> 2.34.1
>>
> 


