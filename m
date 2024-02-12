Return-Path: <devicetree+bounces-40823-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id F0533851743
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 15:46:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 65DC91F2268B
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 14:46:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4C6F3B790;
	Mon, 12 Feb 2024 14:46:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SpkgS/La"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E858F3B2B6
	for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 14:45:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707749161; cv=none; b=n2hzoi785PkmqNdGYIecTpzNIhSoXeR1z356wYUC/lG/ZCn+JaHK2/u8TqBsMnH2piARQqj5aEuBH+81zWMv4YimBkvuGCde+8c70uXrKHnpR9VleNdnlVI7RWgRnBBy4tlKRHkM5F5JTLiPFOPW/1AyeoOX2HhZZrEBQR+nwQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707749161; c=relaxed/simple;
	bh=k0VGRuELN28Qn9lvQIHQIcutEgWButk0U6b9H2aLz3c=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=hBSUxezlPLaAXw7bl27m/qfQl+2Cy3+mygtiiAIp7vek9+X4HU4lsSM4zd+ybiockqzBp9Zdd+0BET1F033GlcadWo1ATPHF3GQcvLLmpzHd3NCVi5PBv1DcfkpMktTt8j4PS3geHhidjV7E/4BbweaRuu7PhNIX04nXbL7eDW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SpkgS/La; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-40fb3b5893eso26065095e9.0
        for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 06:45:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707749158; x=1708353958; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=S3pxgRFVsEQsnhpF3PxeCXS4BN+4M3jXTWtMtfyBqxo=;
        b=SpkgS/LayQz5zQqcA+KZlj5VItcRZY3D2ZlZasLkdHmBJJruWVyvBPPv/sCf6qAH1l
         SN/nMuHFQS8linDUTouM8p2J5Lpq+8ACXsxlZ9EvR9gR7iqOI0ZM/ca7Vct4vcwX4PqR
         I2sOWFwXgx9lJ4kco5GhkvHje0VoksT+Zs2YOUfrTO8Uhz8o/5GL6xbCe+IsQUNr2+ie
         AQIbVIwDQKSU2GQBvsx75N9Xekc4IDlio8ijpgh3PjKwA9oLar3MWMBrtzzt68pRz6GY
         0Rvaga/bBpH6nnqF5GRU/go4t1A9O2hN0oHAIUK2gujPvQ3cLbbOjU96CcS/GZlO761G
         UthA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707749158; x=1708353958;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=S3pxgRFVsEQsnhpF3PxeCXS4BN+4M3jXTWtMtfyBqxo=;
        b=HsjBT+5oLnfqW6wQQiz4oLdBuAiHNbl69jLVs4Npw9nzERqrD/lro7xH5gowCAlOz/
         IbbZlSbH1/VxCubNmBP21fpSoDffBEo+0jpmuTDHCBtvILPOe7zf1rMXYSbNA8TjTNNA
         EYfY1HJFWbF0sbbvOf1n9CeKbXbAXnRpo7MjOWnfZBJLL2woEjpD7VqqERnvxMlZw2Yy
         mQulhvdEXe0pYEAYnfswsWdSo3BCic+1Qd9tD8wfx9+nXW7lnsIhJURotS084SJWs6Ls
         n4SOdkqQUd39A0RIdFBiYkvT49f35pDhJVu7twvsNDyBAXIGM0oSJRVKNUOEgKwVCrym
         3c4Q==
X-Forwarded-Encrypted: i=1; AJvYcCW3NhCdtgWl35jW9QbdRtDLzsa2B1QRWI3+nqGuxaESFp4Fh8TGeK/73PFATsl9zm9ENdju1jQZJwHxwPQ7Q81+kLMHnEq+w8f1Qw==
X-Gm-Message-State: AOJu0Yy+3xL6iwUpllQ9G9VU9e+Rf+J8B9q2FyLFh4JwMaccehMc3atM
	oMG5LguPqeGoakB2PooqaeDoDHkk4L14+CFE4MufBDgDB+BE2/XqqRg1MfbgpBA=
X-Google-Smtp-Source: AGHT+IEHJtRY7M5+ETyUGxdL1yxcw9sLc61GyouoRT2NnbbaDAbY3FCadTD8jQn8Z9bXvWOn1y1woQ==
X-Received: by 2002:a05:600c:4fc9:b0:410:68e1:d9ca with SMTP id o9-20020a05600c4fc900b0041068e1d9camr5906660wmq.2.1707749157957;
        Mon, 12 Feb 2024 06:45:57 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCV+OsJ9sIEG4makvNA6UljW+O0aO05W5OQxb9HP8XigGDgreyeP67n/CNekdhdkuf6UFZyn3XSWZ6vfSfH1I7nY7mLo3nANOWv1jBS+uVdHd0o+VO3+hrOtXdiTYF4zZxhKKoKcDsk0PPdULk6HfM8ReZUf0B7VdDzQwNGiOWbJ7dfaswBnU35eow3qqltrMkF5DaNSPB2zwxzkZWE9NVsoKh7MZYpEth+Yqd3LNsATOfru0UYFY8vOMnd7oD60RUUvkmD+oFj8EnMtgACLFIt+RUWimI5So1Wes75ctUQXh2todQYLdRX4oSxb15C8yzRxULLZZfRtrCMY/YiT7gEIKTsuwwFGV0I6uARhu0R++2w1OxL697TEBgmX90cRrgsWP83r6ntkoBhKsA5x2a/67VvF83FW0CTxGgdFVZZQ9CYp7SAIjzAh5ybmPH5Wz3KshjhyP0oL1Mu+0ebFdehkDQlErarLr6LfRJYwFdu1dWLtGGGhWkyJpyQTyM3AQvXHzsd/szfGWOY8+ESAVJA0u8MP3v8owoVxKUfi4/ylSYtjIbC7PdThcWFsviZ/wuWRwCnBG9jZMPx0F2ADgls5emoZYqW7W+/nMeofdwSkhrpfzPHdamML3NkrViXpN0xxez0QtPth2tWEmqFCavQ8acTCJcs72FuskFk2Es8JuLeyxSlnjy+3S+FaSIDivInZ8PwnbECyIU1mu82FnXDHfTEbf0/b/gdr72AXMcorBgnrZFALoEiYDtCSGuNa3nub9DX68g/XUzFimbE0dKzkvuDJqP6HNuxGTlHGUEoDIWME0/1AzgWj21gf
Received: from ?IPV6:2a01:e0a:982:cbb0:fcee:f026:296d:135f? ([2a01:e0a:982:cbb0:fcee:f026:296d:135f])
        by smtp.gmail.com with ESMTPSA id jw21-20020a05600c575500b004101543e843sm8765535wmb.10.2024.02.12.06.45.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Feb 2024 06:45:57 -0800 (PST)
Message-ID: <bcad544c-7ca2-4b4f-805b-4ccaedbd091c@linaro.org>
Date: Mon, 12 Feb 2024 15:45:56 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 3/5] drm: msm: add support for A750 GPU
Content-Language: en-US, fr
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
In-Reply-To: <b5d76a25-045a-4acd-ad20-d28855b40222@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/02/2024 11:46, Konrad Dybcio wrote:
> On 12.02.2024 11:37, Neil Armstrong wrote:
>> Add support for the A750 GPU found on the SM8650 platform
>>
>> Unlike the the very close A740 GPU on the SM8550 SoC, the A750 GPU
>> doesn't have an HWCFG block but a separate register set.
>>
>> The missing registers are added in the a6xx.xml.h file that would
>> require a subsequent sync and the non-existent hwcfg is handled
>> in a6xx_set_hwcg().
> 
> These should also be submitted to mesa to make sure the next header sync
> doesn't wipe them

Ack submitting them right now: https://gitlab.freedesktop.org/mesa/mesa/-/merge_requests/27576

> 
> [...]
> 
>> --- a/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
>> +++ b/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
>> @@ -958,10 +958,11 @@ static void a6xx_set_hwcg(struct msm_gpu *gpu, bool state)
>>   	struct a6xx_gpu *a6xx_gpu = to_a6xx_gpu(adreno_gpu);
>>   	struct a6xx_gmu *gmu = &a6xx_gpu->gmu;
>>   	const struct adreno_reglist *reg;
>> +	bool skip_programming = !(adreno_gpu->info->hwcg || adreno_is_a7xx(adreno_gpu));
> 
> is_a750?

OK right, I was thinking of the next gpu which will probably also miss an hwcfg

> 
>>   	unsigned int i;
>>   	u32 val, clock_cntl_on, cgc_mode;
>>   
>> -	if (!adreno_gpu->info->hwcg)
>> +	if (skip_programming)
>>   		return;
>>   
>>   	if (adreno_is_a630(adreno_gpu))
>> @@ -982,6 +983,25 @@ static void a6xx_set_hwcg(struct msm_gpu *gpu, bool state)
>>   			  state ? 0x5555 : 0);
>>   	}
>>   
>> +	if (!adreno_gpu->info->hwcg) {
> 
> I don't think this block of code is reachable now, no?

It is because we didn't skip when adreno_is_a7xx(adreno_gpu)

> 
> Maybe remove the skip_programming and if_a750 here?
This would require:
 >> -	if (!adreno_gpu->info->hwcg || )
 >> +	if (!(adreno_gpu->info->hwcg || adreno_is_a750(adreno_gpu)))

and:

 >> +	if (adreno_is_a750(adreno_gpu)) {

But if the next gpu also doesn't have an hwcfg, we will need to use
the current design...

I just tried with:
====================><===============================
@@ -961,7 +961,7 @@ static void a6xx_set_hwcg(struct msm_gpu *gpu, bool state)
         unsigned int i;
         u32 val, clock_cntl_on, cgc_mode;

-       if (!adreno_gpu->info->hwcg)
+       if (!(adreno_gpu->info->hwcg || adreno_is_a750(adreno_gpu)))
                 return;

         if (adreno_is_a630(adreno_gpu))
@@ -982,6 +982,25 @@ static void a6xx_set_hwcg(struct msm_gpu *gpu, bool state)
                           state ? 0x5555 : 0);
         }

+       if (adreno_is_a750(adreno_gpu)) {
+               gpu_write(gpu, REG_A7XX_RBBM_CLOCK_CNTL_GLOBAL, 1);
+               gpu_write(gpu, REG_A7XX_RBBM_CGC_GLOBAL_LOAD_CMD, state ? 1 : 0);
+
+               if (state) {
+                       gpu_write(gpu, REG_A7XX_RBBM_CGC_P2S_TRIG_CMD, 1);
+
+                       if (gpu_poll_timeout(gpu, REG_A7XX_RBBM_CGC_P2S_STATUS, val,
+                                            val & A7XX_RBBM_CGC_P2S_STATUS_TXDONE, 1, 10)) {
+                               dev_err(&gpu->pdev->dev, "RBBM_CGC_P2S_STATUS TXDONE Poll failed\n");
+                               return;
+                       }
+
+                       gpu_write(gpu, REG_A7XX_RBBM_CLOCK_CNTL_GLOBAL, 0);
+               }
+
+               return;
+       }
+
         val = gpu_read(gpu, REG_A6XX_RBBM_CLOCK_CNTL);

         /* Don't re-program the registers if they are already correct */
====================><===============================

And it works fine, does it work it for you ?

> 
>> +		gpu_write(gpu, REG_A7XX_RBBM_CLOCK_CNTL_GLOBAL, 1);
>> +		gpu_write(gpu, REG_A7XX_RBBM_CGC_GLOBAL_LOAD_CMD, state ? 1 : 0);
>> +
>> +		if (state) {
>> +			gpu_write(gpu, REG_A7XX_RBBM_CGC_P2S_TRIG_CMD, 1);
>> +
>> +			if (gpu_poll_timeout(gpu, REG_A7XX_RBBM_CGC_P2S_STATUS, val,
>> +					     val & BIT(0), 1, 10)) {
> 
> We should define that bit name (the err suggests it's
> REG_A7XX_RBBM_GCC_P2S_STATUS_TXDONE or so)
> 
> [...]
> 
>> +static inline int adreno_is_a750(struct adreno_gpu *gpu)
>> +{
>> +	return gpu->info->chip_ids[0] == 0x43051401;
>> +}
>> +
>>   /* Placeholder to make future diffs smaller */
> 
> Please also remove this comment now that it's invalid

Ack

> 
> Konrad

Thanks,
Neil


