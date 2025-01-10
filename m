Return-Path: <devicetree+bounces-137367-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CF41BA08C7C
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 10:43:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A39853A8E9B
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 09:41:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B9EA207E07;
	Fri, 10 Jan 2025 09:40:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jm7OeBpS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21FC320A5F3
	for <devicetree@vger.kernel.org>; Fri, 10 Jan 2025 09:40:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736502011; cv=none; b=UtMUlxrR2t1sAgr3bqEqjiQqqEghTixeXYfmK5N162DgxnI2k30CzGBLXHigkktGKiF2WlOvjSCD6LmhEFOFcuoaujJpEeFpMgIRFS9NnWx38uBUB5SF5ltvjS3zixrXGdCxYKaLfFSexJwgCuI3Rtr63yHILUmMMdlCM+SV0Yk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736502011; c=relaxed/simple;
	bh=B9gQoAZcHEbkCb38aULLmmHJebE+z+93gfYSVCV5ers=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=KU//mUU1xrJVQ2I68/Q5vHBdRXEjPKDinlg0NM3X6k+A2FN1APXOLOXFp7+fcCXaW1P5lHHkUunmkJNxDf+ZxRg9y343OI/V5IoYMPXddcjRg1rPG55JpxhHsJgp2ALf4emCO2igAcGio5BqeB2fYC3OZGRD/1QM9ln/Hj0EDVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jm7OeBpS; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-4361b6f9faeso11736315e9.1
        for <devicetree@vger.kernel.org>; Fri, 10 Jan 2025 01:40:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736502008; x=1737106808; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SF3crOlWCGj1R8oqDRPXYGGY0Mj9v0tyYCeWQYdroig=;
        b=jm7OeBpS3cZRncHU6O9B3Z5IBAtpTMEg/ZFGTWRl83+euMNGqCPy3Ye4AqbgFJ1/28
         D1ymbQpFbEDh7UKrYAiweFN3VFhQUffUZlNcma1kJnMj0KT2P2/rcp4pmbCKxTrXm+s7
         x3WVKsrW7RLdXVtcsP9faztl45hULWzW607mwUv2XSjblZnJONgo7EPKKET0/nUVkLYi
         vMda00EKEr5pnEY33LwTVY07fYjwgVj6Ihz6M+2WmS4378l/WovGeh1HNLFteMoGVpNq
         ImIa8kc1Wx+Ihu7A+jZ0/MuQhbO9gsPaPKNqaloOGf5gm2mda75Xm34nu9znj2IKY7kO
         Ly3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736502008; x=1737106808;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=SF3crOlWCGj1R8oqDRPXYGGY0Mj9v0tyYCeWQYdroig=;
        b=Pf0TDjjGqa/Rb/o1vlnhfJ4Pvm8plU61uR/qlmoOF5Rdazm9iS6BS1yGDkIltQwn3m
         YpCISt08syRh6C2Eb3dRNDnRW7g5XP4OjRD0UnFJis8gHYNGiJ2fzGAOXWgk4eVi7hYy
         HEpyMXDv2PeDWhf1q9uIfm1aCxdHZL2eHZVj+7JEDAr6FhF/1ZPZEn9+E7tVynYIi24V
         ujhxdi30q7u26wfoUBkbIj7zqkwS94KE6kzR+1GH6A0oezxxsc37NrZesYRKECDWHAFy
         gAkK+qkFmC1iGY+NBPZGerVKqbsBAyuQh/+xbJH7HitHwclJXUnpIPwjUC3keljQYIqF
         8QHg==
X-Forwarded-Encrypted: i=1; AJvYcCXEwE3MQUPIw5x5WN687hZKBQCgm9Bf1rRJLZ1orQVDfzFvntXcnChaztEdO029dXN74LW0vygfjfK8@vger.kernel.org
X-Gm-Message-State: AOJu0Yw5bTiW8AJZBGyp0cDFmWumqZKFc6Hh0eKgztSKvUzZdm+Yk5kK
	NUfWnzMCk3dmeuWFB3rQESkjUYomzlNlucYu+BF1KkOMYG3rVbFx9/6RILRiSwE=
X-Gm-Gg: ASbGncuNokbzBh1YaeE9W64FpZMS7mHjsojqdFSCgmpnrDTrK664gmn56hlICN8/ypk
	sba4ThgcrfTea46qNJ5SxSdUdiii13SH19ih9qmw6LZSmd9enPIy2xqiaotFzrjejyxvi4QGimA
	H8Au36gccuuml5RULi9k9NJV+lbebq2luv0KWRV3nNYrCXPS4xxZBsxmPqoBJzCJVgq7TdqXCVQ
	Rn0Zw8Kn/e+oYyRlhXwsSuHyS3BRTkI8vovoD8pQQBRiiEnBWHjF6V5LUm9Ra48p7PWJKe+UXr5
	fV1dFyhcIPpo69mDnNX1SOubtzxrBonJMQ==
X-Google-Smtp-Source: AGHT+IHLuzKdaVCxIByL/2fBsJ6AX9cp70n4uEZ2RwQeZXgcDqCMPp9zQG1Mnv5ZNffB/PAKd+1Xgg==
X-Received: by 2002:a05:600c:1d2a:b0:435:edb0:5d27 with SMTP id 5b1f17b1804b1-436e8827fbcmr57830335e9.9.1736502008509;
        Fri, 10 Jan 2025 01:40:08 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:bf4e:5758:59ef:deb8? ([2a01:e0a:982:cbb0:bf4e:5758:59ef:deb8])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-436e2df3610sm80749405e9.20.2025.01.10.01.40.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Jan 2025 01:40:07 -0800 (PST)
Message-ID: <35a678a8-4282-4891-8a12-7efdaf4bb129@linaro.org>
Date: Fri, 10 Jan 2025 10:40:05 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 1/2] arm64: dts: qcom: sm8650: setup cpu thermal with idle
 on high temperatures
To: Bjorn Andersson <andersson@kernel.org>
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
 <rcoviajiv4wrtnggbrd3l7toysxohu3ysu6xzynjr4fx7j6s5q@5dcepoujtupw>
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
In-Reply-To: <rcoviajiv4wrtnggbrd3l7toysxohu3ysu6xzynjr4fx7j6s5q@5dcepoujtupw>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 09/01/2025 22:01, Bjorn Andersson wrote:
> On Wed, Jan 08, 2025 at 10:15:34AM +0100, Neil Armstrong wrote:
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
>>>
>>>>>
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
>>
> 
> I think that sounds good, but afaict we don't have any indication of
> this being a problem and we don't have any way to test that it actually
> solves that problem.

Sure, let's postpone the idle injection when we can actually test it.

> 
>> Anyway, I agree it can be added later on, so should I drop the 2 trip points
>> and only leave the critical one ?
>>
> 
> I think that's a simple and functional starting point - and it solves
> your IRQ issue.

Ack

Thanks,
Neil

> 
> Regards,
> Bjorn


