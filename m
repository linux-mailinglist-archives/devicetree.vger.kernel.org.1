Return-Path: <devicetree+bounces-121802-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B4DD19C85FC
	for <lists+devicetree@lfdr.de>; Thu, 14 Nov 2024 10:23:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 755FB2824AC
	for <lists+devicetree@lfdr.de>; Thu, 14 Nov 2024 09:23:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 001361F4710;
	Thu, 14 Nov 2024 09:23:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="diZYwHVZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAE8A1DD529
	for <devicetree@vger.kernel.org>; Thu, 14 Nov 2024 09:23:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731576194; cv=none; b=iq6v+n8D2gFRVZ90cjRRkgNC2j65N9WQvOv3f/6B9QqRG+kN2UA7AK1yGVSXhH5AotHsM4S0Mj1/UrgHi2IJGvlMnrx2PSOf1qjmCoYJccHN9nEiLqHe/kGjScnRay8h7VYt86pl2TRG11xUwDmjSPLUOsIt7UwKTSs8EtwCkQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731576194; c=relaxed/simple;
	bh=aKi0+1sKEXobfNQZc5o0QxGdgLKu8VAEg01D+//FBDs=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=Cc4d1BQ1JWffc5+3upFow3VyqmykjR8rHQxhSD1e/xhOANBJQ1ABhok7q5dhP0WBIGxr5qpGNBclzsawWeR7/usOrHth1bXeQi2dtVmr/H8zgsplhIp5fRsruMS3v+1F5BAokYnxqKUWIgara1bh9SJyjk5bbXVMzL7r/ziCBVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=diZYwHVZ; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2fb561f273eso3497841fa.2
        for <devicetree@vger.kernel.org>; Thu, 14 Nov 2024 01:23:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731576190; x=1732180990; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pKVskJH08XCjh0dvrOvGb7Xw0ql6HSZ5m3cIUFTJUOc=;
        b=diZYwHVZdVYebC2nx6FICekvL2roVUjZejsz6hYpzcP6lH7QNqOywN26zTKw1mpYJj
         07Rh8HoyC8aFU8wXpsFGq5aBAtqwfE+MOERSt/1xrOLHzDZWc1u/qQQM74zgeLW/wKdi
         c0nElZOBh9eOdnU5+yHoTBSGaih/6eoLxHPJaaPAdzmEMseb1FFU6hv8ExgU/7Urc/pz
         /yo+aSWaCiQfV7xnrEAxKfYxvRcrA10ft3oAwO4BzmmjpSVbyUZRFYGh8EjyErXKgNlI
         mP5e93pRdBuLPIp9cmbIWkZrTDExYkqkAZ8b97be/turwbJosf2j1Ye3SInoGYgK6LBT
         0/HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731576190; x=1732180990;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=pKVskJH08XCjh0dvrOvGb7Xw0ql6HSZ5m3cIUFTJUOc=;
        b=P2Y0yQIHpjC/YCxv3o7VFKyvlnYYJ8/Y7CpAT+4o5TEJvT9v8KxrrykNqbfiFvlzGd
         lzkUZaGRYKdm5mSX/3pBpSX6stunKYHcie6atEjUsbmD4S/bVQ2odIEAc05IACwpy0/l
         uWLIxRsTER+M3etDRsHkcETzJaDh5ZTrM+Qy8DfURCm42Wv9uO7KdTrmg8Tg4WnYUgU8
         7KaytfXN1Mp5UUDB+m9ookHRMRsv1kfsJJ3LXjrxURtZq9/L6uHEDKzQM8wrFE7N57+/
         +UfJ1GRV2Yb0LO8XeRcPF6FMSuOdlcO1RDX81MOt0PyzSrD0STMS4h04OIRYiJZ2BJeY
         3nzQ==
X-Forwarded-Encrypted: i=1; AJvYcCVET00V4a1JQOv1yYDBu1vd9X3HhbUypgitojfFdk58+byAqMaaE1YJ0HHjbh2dHLOx9nuPTHvEgEHM@vger.kernel.org
X-Gm-Message-State: AOJu0YxuWdCquiKPUJp2iaRwO0Znu1tO4IdpS1z/PiLp9Xst03RHY3Kk
	KNTqgpfWkn3EBOciSOOMNjAvhpR7+v5LD6Atp6ukU5KeUpnrEvkFy8+kDI4Lh90=
X-Google-Smtp-Source: AGHT+IGErzUCoRrzEItkg1L3C/jktxdQuqW4d/nGFV/zoyOKtwAeZgerInrjMql5bO5vzmezrLU3dw==
X-Received: by 2002:a05:651c:e15:b0:2ff:53c7:a79f with SMTP id 38308e7fff4ca-2ff53c7a8admr13442661fa.7.1731576189979;
        Thu, 14 Nov 2024 01:23:09 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:a62a:6bba:b737:406e? ([2a01:e0a:982:cbb0:a62a:6bba:b737:406e])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-432da298c81sm16941005e9.39.2024.11.14.01.23.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Nov 2024 01:23:09 -0800 (PST)
Message-ID: <ff0ec93b-e2d0-4022-b8ae-8e4d9d1eac9f@linaro.org>
Date: Thu, 14 Nov 2024 10:23:08 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH RFC 1/8] opp: core: implement dev_pm_opp_get_bandwidth
To: Viresh Kumar <viresh.kumar@linaro.org>
Cc: Akhil P Oommen <quic_akhilpo@quicinc.com>,
 Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
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
References: <20241113-topic-sm8x50-gpu-bw-vote-v1-0-3b8d39737a9b@linaro.org>
 <20241113-topic-sm8x50-gpu-bw-vote-v1-1-3b8d39737a9b@linaro.org>
 <20241114041044.esfazw5mv6zfyrix@vireshk-i7>
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
In-Reply-To: <20241114041044.esfazw5mv6zfyrix@vireshk-i7>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

On 14/11/2024 05:10, Viresh Kumar wrote:
> On 13-11-24, 16:48, Neil Armstrong wrote:
>> Add and implement the dev_pm_opp_get_bandwidth() to retrieve
>> the OPP's bandwidth in the same was as the dev_pm_opp_get_voltage()
> 
>                                    way
> 
>> helper.
>>
>> Retrieving bandwidth is required in the case of the Adreno GPU
>> where the GPU Management Unit can handle the Bandwidth scaling.
>>
>> The helper can get the peak or everage bandwidth for any of
> 
>                                   average

Aww, good catch, thanks

> 
>> the interconnect path.
>>
>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>> ---
>>   drivers/opp/core.c     | 25 +++++++++++++++++++++++++
>>   include/linux/pm_opp.h |  7 +++++++
>>   2 files changed, 32 insertions(+)
>>
>> diff --git a/drivers/opp/core.c b/drivers/opp/core.c
>> index 494f8860220d97fc690ebab5ed3b7f5f04f22d73..19fb82033de26b74e9604c33b9781689df2fe80a 100644
>> --- a/drivers/opp/core.c
>> +++ b/drivers/opp/core.c
>> @@ -106,6 +106,31 @@ static bool assert_single_clk(struct opp_table *opp_table)
>>   	return !WARN_ON(opp_table->clk_count > 1);
>>   }
>>   
>> +/**
>> + * dev_pm_opp_get_bandwidth() - Gets the peak bandwidth corresponding to an opp
> 
> s/peak bandwidth/bandwidth/

Ack

> 
>> + * @opp:	opp for which voltage has to be returned for
>> + * @peak:	select peak or average bandwidth
>> + * @index:	bandwidth index
>> + *
>> + * Return: peak bandwidth in kBps, else return 0
> 
> s/peak bandwidth/bandwidth/

Ack

> 
>> + */
>> +unsigned long dev_pm_opp_get_bandwidth(struct dev_pm_opp *opp, bool peak, int index)
>> +{
>> +	if (IS_ERR_OR_NULL(opp)) {
>> +		pr_err("%s: Invalid parameters\n", __func__);
>> +		return 0;
>> +	}
>> +
>> +	if (index > opp->opp_table->path_count)
>> +		return 0;
>> +
>> +	if (!opp->bandwidth)
>> +		return 0;
>> +
>> +	return peak ? opp->bandwidth[index].peak : opp->bandwidth[index].avg;
>> +}
>> +EXPORT_SYMBOL_GPL(dev_pm_opp_get_bandwidth);
> 
> All other bandwidth APIs are named as _bw, maybe do same here too ?
> 

Sure, I wasn't sure about that, will switch to _bw.

Neil


