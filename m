Return-Path: <devicetree+bounces-137372-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 98420A08CC9
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 10:49:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 09E153A8E00
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 09:46:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9598F20ADC1;
	Fri, 10 Jan 2025 09:41:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="m+1e96Ok"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F2D0207A2A
	for <devicetree@vger.kernel.org>; Fri, 10 Jan 2025 09:41:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736502090; cv=none; b=uqjLfB4SsfaxPpm0D8mrXBQX1J1ehBkC+3EJd+2szFSplycNc+NZWf8Un+u3YD6PjI5hDFnnyqMR4BfQXVNZtuoVuUvF+lUfytZyexO87SrqPG9Jg7S63Eoyb1Vbeqr78Jxt0DJtuqq+DItLwxczcyWFttiFrhabzEpCkLzjk1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736502090; c=relaxed/simple;
	bh=ZRELooL9AwzuHuGHG9zYQArMtcMBb1aUpSoSWzK4sJI=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=I3qPCV0hthS/fGcTOT091WKOiKSSZnP3SL2/npPIdp3fflAUlbPgiOPS0dAfdJ6YhIgBO1vzO0Rdl8vH2NpZbEzgeQj9mCvobAH987KeuZd3Mr6YHMD1wM0+dv//mpbufZxB9jS7n7Yf//tmcpeCE4vlLr314eCv4u0WmAo/VQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=m+1e96Ok; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-385ef8b64b3so1629361f8f.0
        for <devicetree@vger.kernel.org>; Fri, 10 Jan 2025 01:41:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736502085; x=1737106885; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mPUckqV1RqBJuu2mVNvWG/BiO3xnzDMMJWi+uTOIZME=;
        b=m+1e96Okzk+V1zvUkS++SdjNaSvzQKDNyGdLUMIuvxz9y+XuHpu5RDbYxwa2rJVkGb
         bvv3hrLSDqHbdpLGKyPSLcVRz0kazhjgfUdfj58W+1mvFgpeOtoA8UBDZTNmcz5FAGZG
         GTIg2MtclNTLsCpJmZ1tSp1rqri+3CPv2Gt67RMMsWDnrXfWWC2q/gjvsrFzgySWjcZI
         tW9EcuUxVM0IPmMyfO738q++Em4EBY9ba/XKZpn0rNHicKHxnsqzLhq3rKq/fcLK5zcw
         wUdL2QBn6P6jmt3cFKqJ3yBVxxtupSj3edCB3iboxpQtxqRDotYkA9sJOInAfa6m9FDO
         uL5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736502085; x=1737106885;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=mPUckqV1RqBJuu2mVNvWG/BiO3xnzDMMJWi+uTOIZME=;
        b=QJEW6HJFz7HlBODsL/onpn23uhZIO3+10dL6rxHRU7oKrMRHzIFc02lag5dWsrN4Ee
         oM8pvToqEdiW26TnjqWdAgp51XZEUKxvKlIpIehNspbMTcjkaauLkdeUd8R3D6vaprbc
         gxE0iIrxL/ugSOcqtjnWoNII5EXz0oSoTnCzffW2zAHuSUe6yz1eWQI4TTIOCv254v4z
         fO9l3toivSKKYo5R6wM5fHbCWvd0BxHiQkncB4th8IykZHDhX3mTmeo/Qh4alZWEx3W/
         IUeA3G3fcJpUjqx1j8NlR4KOvm/AWMjqe4Vn1nYK3gdJ14/JMvBNlp3z8q1uf6hydYt7
         Dcdw==
X-Forwarded-Encrypted: i=1; AJvYcCUs5XXYJD9EXtRDyPMPlsxMeHbi/rzog9y1H6/5rFluAtRx27nEFT8PnNZgBbdmSFFQkahqL3SUCVsB@vger.kernel.org
X-Gm-Message-State: AOJu0YylwE6iIUo3bOCUJ6oafz+zq7zj6Fk7cNBvqK+n01IQ9TIttD9N
	osb1SnNGssTj1dPCG47RNR3mjznIjTeYPklHYzuL4A4tscRv/BKeaXyPsLK2Z+k=
X-Gm-Gg: ASbGncuC81udKTXcY+UTYy9rdi2ZKRKLRuuAHVYX4o5Kl5GaPtxqnhxkKc1hf/VFBF4
	2HdNmi74ngJHtK4z/87XgZ8ZBE5uQx+uOvXKEMvJ1vgbpNWDDNVR08WC6+ADSEUuB6A5lJ/kKMv
	Gy1UHxruASX6NaqZK/sS7ab/SVxiya22Td1g40SYAAGmSawv1CfLAHQvr2UH8nhO0gQf0X9wuqZ
	QLmOnOxK26314GFdSigjn3FgrWBmNS5Yn7EvTVasPrpT1vb4JVC+AxM6pSLq3T7FtUedKCDMK1g
	ySKrusC8AMy8GoAORcZIjIQapzDVUUSTHQ==
X-Google-Smtp-Source: AGHT+IEZQwcQdhG3DgJuIEFi67lfPf3OWbcw8SwSDCiLjZQ1r43WYKlQtwIuVHxkiRqXoXhs18yJNg==
X-Received: by 2002:a05:6000:1a8c:b0:382:4ab4:b428 with SMTP id ffacd0b85a97d-38a872d071cmr8925758f8f.8.1736502084862;
        Fri, 10 Jan 2025 01:41:24 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:bf4e:5758:59ef:deb8? ([2a01:e0a:982:cbb0:bf4e:5758:59ef:deb8])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a8e38c880sm4093150f8f.57.2025.01.10.01.41.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Jan 2025 01:41:24 -0800 (PST)
Message-ID: <7317f895-f502-44f8-b5cc-dc89de850df4@linaro.org>
Date: Fri, 10 Jan 2025 10:41:22 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 1/2] arm64: dts: qcom: sm8650: setup cpu thermal with idle
 on high temperatures
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Bjorn Andersson <andersson@kernel.org>
Cc: Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250103-topic-sm8650-thermal-cpu-idle-v1-0-faa1f011ecd9@linaro.org>
 <20250103-topic-sm8650-thermal-cpu-idle-v1-1-faa1f011ecd9@linaro.org>
 <qszkxmtrqr62wgd3qx7uctu22w4qrkietasvffinzwmzt7ccum@r26dikuqp7a4>
 <11ca788f-67e6-4e5c-9ace-083b730bc9ce@linaro.org>
 <2xp2xz4w7drpnql5khevz4wenlmiu3omwcilfisb3vvq2jlnwg@tcmjb475kghk>
 <2fcd9a10-ae9e-480f-87a1-5b49e5082ef5@linaro.org>
 <66754bb1-44cf-4f22-af7b-450d4fede20a@oss.qualcomm.com>
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
In-Reply-To: <66754bb1-44cf-4f22-af7b-450d4fede20a@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 09/01/2025 16:18, Konrad Dybcio wrote:
> On 8.01.2025 10:15 AM, Neil Armstrong wrote:
>> On 08/01/2025 04:11, Bjorn Andersson wrote:
>>> On Tue, Jan 07, 2025 at 09:13:18AM +0100, Neil Armstrong wrote:
>>>> Hi,
>>>>
>>>> On 07/01/2025 00:39, Bjorn Andersson wrote:
>>>>> On Fri, Jan 03, 2025 at 03:38:26PM +0100, Neil Armstrong wrote:
>>>>>> On the SM8650, the dynamic clock and voltage scaling (DCVS) is done in an
>>>>>> hardware controlled loop using the LMH and EPSS blocks with constraints and
>>>>>> OPPs programmed in the board firmware.
>>>>>>
>>>>>> Since the Hardware does a better job at maintaining the CPUs temperature
>>>>>> in an acceptable range by taking in account more parameters like the die
>>>>>> characteristics or other factory fused values, it makes no sense to try
>>>>>> and reproduce a similar set of constraints with the Linux cpufreq thermal
>>>>>> core.
>>>>>>
>>>>>> In addition, the tsens IP is responsible for monitoring the temperature
>>>>>> across the SoC and the current settings will heavily trigger the tsens
>>>>>> UP/LOW interrupts if the CPU temperatures reaches the hardware thermal
>>>>>> constraints which are currently defined in the DT. And since the CPUs
>>>>>> are not hooked in the thermal trip points, the potential interrupts and
>>>>>> calculations are a waste of system resources.
>>>>>>
>>>>>> Instead, set higher temperatures in the CPU trip points, and hook some CPU
>>>>>> idle injector with a 100% duty cycle at the highest trip point in the case
>>>>>> the hardware DCVS cannot handle the temperature surge, and try our best to
>>>>>> avoid reaching the critical temperature trip point which should trigger an
>>>>>> inevitable thermal shutdown.
>>>>>>
>>>>>
>>>>> Are you able to hit these higher temperatures? Do you have some test
>>>>> case where the idle-injection shows to be successful in blocking us from
>>>>> reaching the critical temp?
>>>>
>>>> No, I've been able to test idle-injection and observed a noticeable effect
>>>> but I had to set lower trip, do you know how I can easily "block" LMH/EPSS from
>>>> scaling down and let the temp go higher ?
>>>>
>>>
>>> I don't know how to override that configuration.
> 
> I'll try to get some answers. SDM845 seems to expose a couple SCM calls for
> this purpose and it's already wired up in drivers/thermal/qcom/lmh.c

Would be great, thx

> 
>>>>> E.g. in X13s (SC8280XP) we opted for relying on LMH/EPSS and define only
>>>>> the critical trip for when the hardware fails us.
>>>>
>>>> It's the goal here aswell
>>>>
>>>
>>> How about simplifying the patch by removing the idle-injection step and
>>> just rely on LMH/EPSS and the "critical" trip (at least until someone
>>> can prove that there's value in the extra mitigation)?
>>
>> OK, but I see value in this idle injection mitigation in that case LMH/EPSS
>> fails, the only factor in control of HLOS is by stopping scheduling tasks
>> since frequency won't be able to scale anymore.
> 
> If LMH fails, your SoC is probably cooked already, anyway :(
> 
> I'm not sure why idle injection isn't enabled by default if no other cooling
> methods are found. Perhaps that could be discussed with some thermal folks..

Yeah this is good question, this should probably be the default "hot" behaviour

> 
>> Anyway, I agree it can be added later on, so should I drop the 2 trip points
>> and only leave the critical one ?
> 
> I think sticking with critical=Tjmax + critical-action = "reboot" may be the
> way to go here.
> 
> We may want to give some folks a heads up, so they can wire up skin sensors
> on their devices ahead of these changes landing tree-wide.

Yeah it's also my goal, will respin with only critical.

Thanks,
Neil

> 
> Konrad


