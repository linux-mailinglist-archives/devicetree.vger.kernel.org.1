Return-Path: <devicetree+bounces-136504-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BC35A05679
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 10:15:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D129718880D4
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 09:15:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E23F1A840E;
	Wed,  8 Jan 2025 09:15:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IprCCsH8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BACE33086
	for <devicetree@vger.kernel.org>; Wed,  8 Jan 2025 09:15:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736327739; cv=none; b=lDGjasb/W7HhXeXLlm2nK92MY6oj9X2qXVZ2f6zJFYQyuI8K0a/3WBTQecj5qsYt7ScrSuzNyERVePT6mSp1t8ACYmivWKS6u4/+brSa+Kqun3stB1SYmF78kfYZqoUY7mePW1HhPWSpLP/dRulwIm9b0cNhMxjXXpPQvgPmxgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736327739; c=relaxed/simple;
	bh=smSNxMxiiV9Zwcn6TToXT9n8ICEUnMbb43wNbBKOg+E=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=aJHlIWn2u1zJU111Tr771b7/aAyGua3UqOlgpehOrGzh7uN7W+s94saL2MiyQ7L+qwzy7MWN0pBHf+2TFHrlZ2y26NAs9LUQk2114gSxxAHCITh8wEyYhbMnytPBbiPINd8VoAJAseBywIhNxNSZUKkL6OHWLYiZxYzA26r6cwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IprCCsH8; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4361c705434so119014025e9.3
        for <devicetree@vger.kernel.org>; Wed, 08 Jan 2025 01:15:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736327735; x=1736932535; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GDiahWrl6T9cXZgCCGkHTEx0Nips7sBBPWaR4i9Z8Ro=;
        b=IprCCsH87B8RyKjUECctNZ4sS4RLsfn1wiqm8VoolAZETpC2NzEgmT7Dlp2HMi52PI
         ZZSraF8tyqmlg3456y2CeJxw5uypvo0hXKXmzqHBf56RaXDeEe2FrVQM2Y8q7zrL77mR
         MzIisY75teBgdNW8GSUT3GLDe3hSQeczAW8FbKDTp8qA5rjaFKXoiXqfEVVM5TpbG629
         tdpawUF6KJuoXUI2YCCVaGL1ejAXDSjPwU+qlOJBzzFsBXDmOfjqF7qNgyhAPhHhhjVE
         hDhKB2coaEE364SbhrP0zHfRKMnR0slDQRAwQxRBqbNAhV2YwiX7wMgzJrypxFyor02E
         g4lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736327735; x=1736932535;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=GDiahWrl6T9cXZgCCGkHTEx0Nips7sBBPWaR4i9Z8Ro=;
        b=AJByzImgAFyWXnyMJ6Yn81S4qVIJt1mAS4CCAhPmp6El92FOmuXCIH7ohxGXNo9pOl
         qEwW97qT3sVHo5Uat6P6EwgPy9E8KhRRJoth0+X1b+Q8DiYdsXWJHzwuni/2iKyUINLF
         bwRtMtrVwzqQZwidqmrlhvyfJ+MnAUYKwjPN3yY0GW38u82LQUKTYDiSXUrBhtGpj2O9
         v5rITBA4dlI9bpZ/Vv44LyHGp2e5F4VB+E8393f9va6YC4WL6ERZ36M/JQTBjMmFESHR
         X4c7rIfnuC3zXHWJnYdBCK9za6xARY6ospdNczS95/W5+Icn9RJ1F09RWafDkXt8pbtw
         mbVg==
X-Forwarded-Encrypted: i=1; AJvYcCXaBXhmT73MfkmGZ1Nw7TWERqlHjvviDF5cHEa4HNwzmZiwnx7gWOknl6tRdF2zqADcVlK6dZoj+d8s@vger.kernel.org
X-Gm-Message-State: AOJu0Yyym48GzHqV07BFHgQMbsyZsyeUp0kCnxeWw2p1iKBYVtaJBfVs
	p5iJPD/yDlqIJwzQqmM0biWOIHEW2Turbil3s0PLSZhdzh1RQZM4E2nwQX0f5Dc=
X-Gm-Gg: ASbGncuQvxm9H3dvuC/GqnopqTIAZkFh01Y/XH/HomJUaUCy45N3qp7PyGKqtIMIwEs
	z5PrZCmldGqBIQh7M0f+yZiBZ/vPPZ5yeg9uDr24dJWHr7sB+eciqG4JsqF4dO76mD+xwhc3sWC
	RA71UEKoqsDUfRw0OiL1EWgTH5e/6X7212PLh5iF6U60IKtFm6nxGsFS+3ANkuYI4JjfRGahJ5z
	TRk9T0/xm44r9U++zGMx/DrqH55uOQm6tOnP9DZQA3kJEddIcPH7mSx1t9FKYzzVWK8172bp5J4
	pcXkYbXFU/yu6V3vgSJXzLYWayAnRc7atQ==
X-Google-Smtp-Source: AGHT+IGRz1l0mf1DvBr1gOXG7M29ULpJjaGp3mFK1ZtZ8sTRtb21m+s4b2Y7BHzhH6icvEzgPtycKw==
X-Received: by 2002:a05:6000:1864:b0:385:f071:a1c9 with SMTP id ffacd0b85a97d-38a87357964mr1344903f8f.50.1736327735315;
        Wed, 08 Jan 2025 01:15:35 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:127c:1a45:c431:c5f9? ([2a01:e0a:982:cbb0:127c:1a45:c431:c5f9])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a1c8292f4sm53269751f8f.3.2025.01.08.01.15.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Jan 2025 01:15:34 -0800 (PST)
Message-ID: <2fcd9a10-ae9e-480f-87a1-5b49e5082ef5@linaro.org>
Date: Wed, 8 Jan 2025 10:15:34 +0100
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
In-Reply-To: <2xp2xz4w7drpnql5khevz4wenlmiu3omwcilfisb3vvq2jlnwg@tcmjb475kghk>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 08/01/2025 04:11, Bjorn Andersson wrote:
> On Tue, Jan 07, 2025 at 09:13:18AM +0100, Neil Armstrong wrote:
>> Hi,
>>
>> On 07/01/2025 00:39, Bjorn Andersson wrote:
>>> On Fri, Jan 03, 2025 at 03:38:26PM +0100, Neil Armstrong wrote:
>>>> On the SM8650, the dynamic clock and voltage scaling (DCVS) is done in an
>>>> hardware controlled loop using the LMH and EPSS blocks with constraints and
>>>> OPPs programmed in the board firmware.
>>>>
>>>> Since the Hardware does a better job at maintaining the CPUs temperature
>>>> in an acceptable range by taking in account more parameters like the die
>>>> characteristics or other factory fused values, it makes no sense to try
>>>> and reproduce a similar set of constraints with the Linux cpufreq thermal
>>>> core.
>>>>
>>>> In addition, the tsens IP is responsible for monitoring the temperature
>>>> across the SoC and the current settings will heavily trigger the tsens
>>>> UP/LOW interrupts if the CPU temperatures reaches the hardware thermal
>>>> constraints which are currently defined in the DT. And since the CPUs
>>>> are not hooked in the thermal trip points, the potential interrupts and
>>>> calculations are a waste of system resources.
>>>>
>>>> Instead, set higher temperatures in the CPU trip points, and hook some CPU
>>>> idle injector with a 100% duty cycle at the highest trip point in the case
>>>> the hardware DCVS cannot handle the temperature surge, and try our best to
>>>> avoid reaching the critical temperature trip point which should trigger an
>>>> inevitable thermal shutdown.
>>>>
>>>
>>> Are you able to hit these higher temperatures? Do you have some test
>>> case where the idle-injection shows to be successful in blocking us from
>>> reaching the critical temp?
>>
>> No, I've been able to test idle-injection and observed a noticeable effect
>> but I had to set lower trip, do you know how I can easily "block" LMH/EPSS from
>> scaling down and let the temp go higher ?
>>
> 
> I don't know how to override that configuration.
> 
>>>
>>> E.g. in X13s (SC8280XP) we opted for relying on LMH/EPSS and define only
>>> the critical trip for when the hardware fails us.
>>
>> It's the goal here aswell
>>
> 
> How about simplifying the patch by removing the idle-injection step and
> just rely on LMH/EPSS and the "critical" trip (at least until someone
> can prove that there's value in the extra mitigation)?

OK, but I see value in this idle injection mitigation in that case LMH/EPSS
fails, the only factor in control of HLOS is by stopping scheduling tasks
since frequency won't be able to scale anymore.

Anyway, I agree it can be added later on, so should I drop the 2 trip points
and only leave the critical one ?

> 
> Regards,
> Bjorn
> 
>>>
>>>
>>> I have no concerns at all about "removing" the 90C trip point, that
>>> makes total sense to me - let the hardware keep the cores as close to
>>> max as possible, and then use some slower sensor for keeping the system
>>> temperature in check (such as the x13s skin sensor).
>>>
>>>
>>> PS. The described behavior should apply to anything SDM845 and newer, so
>>> I'd like to see this set/document precedence for other platforms.
>>>
>>> Regards,
>>> Bjorn
>>>
>>>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>>>> ---
>>>>    arch/arm64/boot/dts/qcom/sm8650.dtsi | 274 +++++++++++++++++++++++++++--------
>>>>    1 file changed, 214 insertions(+), 60 deletions(-)
>>>>
>>>> diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
>>>> index 25e47505adcb790d09f1d2726386438487255824..448374a32e07151e35727d92fab77356769aea8a 100644
>>>> --- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
>>>> +++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
>>>> @@ -99,6 +99,13 @@ l3_0: l3-cache {
>>>>    					cache-unified;
>>>>    				};
>>>>    			};
>>>> +
>>>> +			cpu0_idle: thermal-idle {
>>>> +				#cooling-cells = <2>;
>>>> +				duration-us = <800000>;
>>>> +				exit-latency-us = <10000>;
>>>> +			};
>>>> +
>>>>    		};
>>>>    		cpu1: cpu@100 {
>>>> @@ -119,6 +126,12 @@ cpu1: cpu@100 {
>>>>    			qcom,freq-domain = <&cpufreq_hw 0>;
>>>>    			#cooling-cells = <2>;
>>>> +
>>>> +			cpu1_idle: thermal-idle {
>>>> +				#cooling-cells = <2>;
>>>> +				duration-us = <800000>;
>>>> +				exit-latency-us = <10000>;
>>>> +			};
>>>>    		};
>>>>    		cpu2: cpu@200 {
>>>> @@ -146,6 +159,12 @@ l2_200: l2-cache {
>>>>    				cache-unified;
>>>>    				next-level-cache = <&l3_0>;
>>>>    			};
>>>> +
>>>> +			cpu2_idle: thermal-idle {
>>>> +				#cooling-cells = <2>;
>>>> +				duration-us = <800000>;
>>>> +				exit-latency-us = <10000>;
>>>> +			};
>>>>    		};
>>>>    		cpu3: cpu@300 {
>>>> @@ -166,6 +185,12 @@ cpu3: cpu@300 {
>>>>    			qcom,freq-domain = <&cpufreq_hw 3>;
>>>>    			#cooling-cells = <2>;
>>>> +
>>>> +			cpu3_idle: thermal-idle {
>>>> +				#cooling-cells = <2>;
>>>> +				duration-us = <800000>;
>>>> +				exit-latency-us = <10000>;
>>>> +			};
>>>>    		};
>>>>    		cpu4: cpu@400 {
>>>> @@ -193,6 +218,12 @@ l2_400: l2-cache {
>>>>    				cache-unified;
>>>>    				next-level-cache = <&l3_0>;
>>>>    			};
>>>> +
>>>> +			cpu4_idle: thermal-idle {
>>>> +				#cooling-cells = <2>;
>>>> +				duration-us = <800000>;
>>>> +				exit-latency-us = <10000>;
>>>> +			};
>>>>    		};
>>>>    		cpu5: cpu@500 {
>>>> @@ -220,6 +251,12 @@ l2_500: l2-cache {
>>>>    				cache-unified;
>>>>    				next-level-cache = <&l3_0>;
>>>>    			};
>>>> +
>>>> +			cpu5_idle: thermal-idle {
>>>> +				#cooling-cells = <2>;
>>>> +				duration-us = <800000>;
>>>> +				exit-latency-us = <10000>;
>>>> +			};
>>>>    		};
>>>>    		cpu6: cpu@600 {
>>>> @@ -247,6 +284,12 @@ l2_600: l2-cache {
>>>>    				cache-unified;
>>>>    				next-level-cache = <&l3_0>;
>>>>    			};
>>>> +
>>>> +			cpu6_idle: thermal-idle {
>>>> +				#cooling-cells = <2>;
>>>> +				duration-us = <800000>;
>>>> +				exit-latency-us = <10000>;
>>>> +			};
>>>>    		};
>>>>    		cpu7: cpu@700 {
>>>> @@ -274,6 +317,12 @@ l2_700: l2-cache {
>>>>    				cache-unified;
>>>>    				next-level-cache = <&l3_0>;
>>>>    			};
>>>> +
>>>> +			cpu7_idle: thermal-idle {
>>>> +				#cooling-cells = <2>;
>>>> +				duration-us = <800000>;
>>>> +				exit-latency-us = <10000>;
>>>> +			};
>>>>    		};
>>>>    		cpu-map {
>>>> @@ -5752,23 +5801,30 @@ cpu2-top-thermal {
>>>>    			trips {
>>>>    				trip-point0 {
>>>> -					temperature = <90000>;
>>>> +					temperature = <108000>;
>>>>    					hysteresis = <2000>;
>>>>    					type = "passive";
>>>>    				};
>>>> -				trip-point1 {
>>>> -					temperature = <95000>;
>>>> +				cpu2_top_alert1: trip-point1 {
>>>> +					temperature = <110000>;
>>>>    					hysteresis = <2000>;
>>>>    					type = "passive";
>>>>    				};
>>>>    				cpu2-critical {
>>>> -					temperature = <110000>;
>>>> +					temperature = <115000>;
>>>>    					hysteresis = <1000>;
>>>>    					type = "critical";
>>>>    				};
>>>>    			};
>>>> +
>>>> +			cooling-maps {
>>>> +				map0 {
>>>> +					trip = <&cpu2_top_alert1>;
>>>> +					cooling-device = <&cpu2_idle 100 100>;
>>>> +				};
>>>> +			};
>>>>    		};
>>>>    		cpu2-bottom-thermal {
>>>> @@ -5776,23 +5832,30 @@ cpu2-bottom-thermal {
>>>>    			trips {
>>>>    				trip-point0 {
>>>> -					temperature = <90000>;
>>>> +					temperature = <108000>;
>>>>    					hysteresis = <2000>;
>>>>    					type = "passive";
>>>>    				};
>>>> -				trip-point1 {
>>>> -					temperature = <95000>;
>>>> +				cpu2_bottom_alert1: trip-point1 {
>>>> +					temperature = <110000>;
>>>>    					hysteresis = <2000>;
>>>>    					type = "passive";
>>>>    				};
>>>>    				cpu2-critical {
>>>> -					temperature = <110000>;
>>>> +					temperature = <115000>;
>>>>    					hysteresis = <1000>;
>>>>    					type = "critical";
>>>>    				};
>>>>    			};
>>>> +
>>>> +			cooling-maps {
>>>> +				map0 {
>>>> +					trip = <&cpu2_bottom_alert1>;
>>>> +					cooling-device = <&cpu2_idle 100 100>;
>>>> +				};
>>>> +			};
>>>>    		};
>>>>    		cpu3-top-thermal {
>>>> @@ -5800,23 +5863,30 @@ cpu3-top-thermal {
>>>>    			trips {
>>>>    				trip-point0 {
>>>> -					temperature = <90000>;
>>>> +					temperature = <108000>;
>>>>    					hysteresis = <2000>;
>>>>    					type = "passive";
>>>>    				};
>>>> -				trip-point1 {
>>>> -					temperature = <95000>;
>>>> +				cpu3_top_alert1: trip-point1 {
>>>> +					temperature = <110000>;
>>>>    					hysteresis = <2000>;
>>>>    					type = "passive";
>>>>    				};
>>>>    				cpu3-critical {
>>>> -					temperature = <110000>;
>>>> +					temperature = <115000>;
>>>>    					hysteresis = <1000>;
>>>>    					type = "critical";
>>>>    				};
>>>>    			};
>>>> +
>>>> +			cooling-maps {
>>>> +				map0 {
>>>> +					trip = <&cpu3_top_alert1>;
>>>> +					cooling-device = <&cpu3_idle 100 100>;
>>>> +				};
>>>> +			};
>>>>    		};
>>>>    		cpu3-bottom-thermal {
>>>> @@ -5824,23 +5894,30 @@ cpu3-bottom-thermal {
>>>>    			trips {
>>>>    				trip-point0 {
>>>> -					temperature = <90000>;
>>>> +					temperature = <108000>;
>>>>    					hysteresis = <2000>;
>>>>    					type = "passive";
>>>>    				};
>>>> -				trip-point1 {
>>>> -					temperature = <95000>;
>>>> +				cpu3_bottom_alert1: trip-point1 {
>>>> +					temperature = <110000>;
>>>>    					hysteresis = <2000>;
>>>>    					type = "passive";
>>>>    				};
>>>>    				cpu3-critical {
>>>> -					temperature = <110000>;
>>>> +					temperature = <115000>;
>>>>    					hysteresis = <1000>;
>>>>    					type = "critical";
>>>>    				};
>>>>    			};
>>>> +
>>>> +			cooling-maps {
>>>> +				map0 {
>>>> +					trip = <&cpu3_bottom_alert1>;
>>>> +					cooling-device = <&cpu3_idle 100 100>;
>>>> +				};
>>>> +			};
>>>>    		};
>>>>    		cpu4-top-thermal {
>>>> @@ -5848,23 +5925,30 @@ cpu4-top-thermal {
>>>>    			trips {
>>>>    				trip-point0 {
>>>> -					temperature = <90000>;
>>>> +					temperature = <108000>;
>>>>    					hysteresis = <2000>;
>>>>    					type = "passive";
>>>>    				};
>>>> -				trip-point1 {
>>>> -					temperature = <95000>;
>>>> +				cpu4_top_alert1: trip-point1 {
>>>> +					temperature = <110000>;
>>>>    					hysteresis = <2000>;
>>>>    					type = "passive";
>>>>    				};
>>>>    				cpu4-critical {
>>>> -					temperature = <110000>;
>>>> +					temperature = <115000>;
>>>>    					hysteresis = <1000>;
>>>>    					type = "critical";
>>>>    				};
>>>>    			};
>>>> +
>>>> +			cooling-maps {
>>>> +				map0 {
>>>> +					trip = <&cpu4_top_alert1>;
>>>> +					cooling-device = <&cpu4_idle 100 100>;
>>>> +				};
>>>> +			};
>>>>    		};
>>>>    		cpu4-bottom-thermal {
>>>> @@ -5872,23 +5956,30 @@ cpu4-bottom-thermal {
>>>>    			trips {
>>>>    				trip-point0 {
>>>> -					temperature = <90000>;
>>>> +					temperature = <108000>;
>>>>    					hysteresis = <2000>;
>>>>    					type = "passive";
>>>>    				};
>>>> -				trip-point1 {
>>>> -					temperature = <95000>;
>>>> +				cpu4_bottom_alert1: trip-point1 {
>>>> +					temperature = <110000>;
>>>>    					hysteresis = <2000>;
>>>>    					type = "passive";
>>>>    				};
>>>>    				cpu4-critical {
>>>> -					temperature = <110000>;
>>>> +					temperature = <115000>;
>>>>    					hysteresis = <1000>;
>>>>    					type = "critical";
>>>>    				};
>>>>    			};
>>>> +
>>>> +			cooling-maps {
>>>> +				map0 {
>>>> +					trip = <&cpu4_bottom_alert1>;
>>>> +					cooling-device = <&cpu4_idle 100 100>;
>>>> +				};
>>>> +			};
>>>>    		};
>>>>    		cpu5-top-thermal {
>>>> @@ -5896,23 +5987,30 @@ cpu5-top-thermal {
>>>>    			trips {
>>>>    				trip-point0 {
>>>> -					temperature = <90000>;
>>>> +					temperature = <108000>;
>>>>    					hysteresis = <2000>;
>>>>    					type = "passive";
>>>>    				};
>>>> -				trip-point1 {
>>>> -					temperature = <95000>;
>>>> +				cpu5_top_alert1: trip-point1 {
>>>> +					temperature = <110000>;
>>>>    					hysteresis = <2000>;
>>>>    					type = "passive";
>>>>    				};
>>>>    				cpu5-critical {
>>>> -					temperature = <110000>;
>>>> +					temperature = <115000>;
>>>>    					hysteresis = <1000>;
>>>>    					type = "critical";
>>>>    				};
>>>>    			};
>>>> +
>>>> +			cooling-maps {
>>>> +				map0 {
>>>> +					trip = <&cpu5_top_alert1>;
>>>> +					cooling-device = <&cpu5_idle 100 100>;
>>>> +				};
>>>> +			};
>>>>    		};
>>>>    		cpu5-bottom-thermal {
>>>> @@ -5920,23 +6018,30 @@ cpu5-bottom-thermal {
>>>>    			trips {
>>>>    				trip-point0 {
>>>> -					temperature = <90000>;
>>>> +					temperature = <108000>;
>>>>    					hysteresis = <2000>;
>>>>    					type = "passive";
>>>>    				};
>>>> -				trip-point1 {
>>>> -					temperature = <95000>;
>>>> +				cpu5_bottom_alert1: trip-point1 {
>>>> +					temperature = <110000>;
>>>>    					hysteresis = <2000>;
>>>>    					type = "passive";
>>>>    				};
>>>>    				cpu5-critical {
>>>> -					temperature = <110000>;
>>>> +					temperature = <115000>;
>>>>    					hysteresis = <1000>;
>>>>    					type = "critical";
>>>>    				};
>>>>    			};
>>>> +
>>>> +			cooling-maps {
>>>> +				map0 {
>>>> +					trip = <&cpu5_bottom_alert1>;
>>>> +					cooling-device = <&cpu5_idle 100 100>;
>>>> +				};
>>>> +			};
>>>>    		};
>>>>    		cpu6-top-thermal {
>>>> @@ -5944,23 +6049,30 @@ cpu6-top-thermal {
>>>>    			trips {
>>>>    				trip-point0 {
>>>> -					temperature = <90000>;
>>>> +					temperature = <108000>;
>>>>    					hysteresis = <2000>;
>>>>    					type = "passive";
>>>>    				};
>>>> -				trip-point1 {
>>>> -					temperature = <95000>;
>>>> +				cpu6_top_alert1: trip-point1 {
>>>> +					temperature = <110000>;
>>>>    					hysteresis = <2000>;
>>>>    					type = "passive";
>>>>    				};
>>>>    				cpu6-critical {
>>>> -					temperature = <110000>;
>>>> +					temperature = <115000>;
>>>>    					hysteresis = <1000>;
>>>>    					type = "critical";
>>>>    				};
>>>>    			};
>>>> +
>>>> +			cooling-maps {
>>>> +				map0 {
>>>> +					trip = <&cpu6_top_alert1>;
>>>> +					cooling-device = <&cpu6_idle 100 100>;
>>>> +				};
>>>> +			};
>>>>    		};
>>>>    		cpu6-bottom-thermal {
>>>> @@ -5968,23 +6080,30 @@ cpu6-bottom-thermal {
>>>>    			trips {
>>>>    				trip-point0 {
>>>> -					temperature = <90000>;
>>>> +					temperature = <108000>;
>>>>    					hysteresis = <2000>;
>>>>    					type = "passive";
>>>>    				};
>>>> -				trip-point1 {
>>>> -					temperature = <95000>;
>>>> +				cpu6_bottom_alert1: trip-point1 {
>>>> +					temperature = <110000>;
>>>>    					hysteresis = <2000>;
>>>>    					type = "passive";
>>>>    				};
>>>>    				cpu6-critical {
>>>> -					temperature = <110000>;
>>>> +					temperature = <115000>;
>>>>    					hysteresis = <1000>;
>>>>    					type = "critical";
>>>>    				};
>>>>    			};
>>>> +
>>>> +			cooling-maps {
>>>> +				map0 {
>>>> +					trip = <&cpu6_bottom_alert1>;
>>>> +					cooling-device = <&cpu6_idle 100 100>;
>>>> +				};
>>>> +			};
>>>>    		};
>>>>    		aoss1-thermal {
>>>> @@ -6010,23 +6129,30 @@ cpu7-top-thermal {
>>>>    			trips {
>>>>    				trip-point0 {
>>>> -					temperature = <90000>;
>>>> +					temperature = <108000>;
>>>>    					hysteresis = <2000>;
>>>>    					type = "passive";
>>>>    				};
>>>> -				trip-point1 {
>>>> -					temperature = <95000>;
>>>> +				cpu7_top_alert1: trip-point1 {
>>>> +					temperature = <110000>;
>>>>    					hysteresis = <2000>;
>>>>    					type = "passive";
>>>>    				};
>>>>    				cpu7-critical {
>>>> -					temperature = <110000>;
>>>> +					temperature = <115000>;
>>>>    					hysteresis = <1000>;
>>>>    					type = "critical";
>>>>    				};
>>>>    			};
>>>> +
>>>> +			cooling-maps {
>>>> +				map0 {
>>>> +					trip = <&cpu7_top_alert1>;
>>>> +					cooling-device = <&cpu7_idle 100 100>;
>>>> +				};
>>>> +			};
>>>>    		};
>>>>    		cpu7-middle-thermal {
>>>> @@ -6034,23 +6160,30 @@ cpu7-middle-thermal {
>>>>    			trips {
>>>>    				trip-point0 {
>>>> -					temperature = <90000>;
>>>> +					temperature = <108000>;
>>>>    					hysteresis = <2000>;
>>>>    					type = "passive";
>>>>    				};
>>>> -				trip-point1 {
>>>> -					temperature = <95000>;
>>>> +				cpu7_middle_alert1: trip-point1 {
>>>> +					temperature = <110000>;
>>>>    					hysteresis = <2000>;
>>>>    					type = "passive";
>>>>    				};
>>>>    				cpu7-critical {
>>>> -					temperature = <110000>;
>>>> +					temperature = <115000>;
>>>>    					hysteresis = <1000>;
>>>>    					type = "critical";
>>>>    				};
>>>>    			};
>>>> +
>>>> +			cooling-maps {
>>>> +				map0 {
>>>> +					trip = <&cpu7_middle_alert1>;
>>>> +					cooling-device = <&cpu7_idle 100 100>;
>>>> +				};
>>>> +			};
>>>>    		};
>>>>    		cpu7-bottom-thermal {
>>>> @@ -6058,23 +6191,30 @@ cpu7-bottom-thermal {
>>>>    			trips {
>>>>    				trip-point0 {
>>>> -					temperature = <90000>;
>>>> +					temperature = <108000>;
>>>>    					hysteresis = <2000>;
>>>>    					type = "passive";
>>>>    				};
>>>> -				trip-point1 {
>>>> -					temperature = <95000>;
>>>> +				cpu7_bottom_alert1: trip-point1 {
>>>> +					temperature = <110000>;
>>>>    					hysteresis = <2000>;
>>>>    					type = "passive";
>>>>    				};
>>>>    				cpu7-critical {
>>>> -					temperature = <110000>;
>>>> +					temperature = <115000>;
>>>>    					hysteresis = <1000>;
>>>>    					type = "critical";
>>>>    				};
>>>>    			};
>>>> +
>>>> +			cooling-maps {
>>>> +				map0 {
>>>> +					trip = <&cpu7_bottom_alert1>;
>>>> +					cooling-device = <&cpu7_idle 100 100>;
>>>> +				};
>>>> +			};
>>>>    		};
>>>>    		cpu0-thermal {
>>>> @@ -6082,23 +6222,30 @@ cpu0-thermal {
>>>>    			trips {
>>>>    				trip-point0 {
>>>> -					temperature = <90000>;
>>>> +					temperature = <108000>;
>>>>    					hysteresis = <2000>;
>>>>    					type = "passive";
>>>>    				};
>>>> -				trip-point1 {
>>>> -					temperature = <95000>;
>>>> +				cpu0_alert1: trip-point1 {
>>>> +					temperature = <110000>;
>>>>    					hysteresis = <2000>;
>>>>    					type = "passive";
>>>>    				};
>>>>    				cpu0-critical {
>>>> -					temperature = <110000>;
>>>> +					temperature = <115000>;
>>>>    					hysteresis = <1000>;
>>>>    					type = "critical";
>>>>    				};
>>>>    			};
>>>> +
>>>> +			cooling-maps {
>>>> +				map0 {
>>>> +					trip = <&cpu0_alert1>;
>>>> +					cooling-device = <&cpu0_idle 100 100>;
>>>> +				};
>>>> +			};
>>>>    		};
>>>>    		cpu1-thermal {
>>>> @@ -6106,23 +6253,30 @@ cpu1-thermal {
>>>>    			trips {
>>>>    				trip-point0 {
>>>> -					temperature = <90000>;
>>>> +					temperature = <108000>;
>>>>    					hysteresis = <2000>;
>>>>    					type = "passive";
>>>>    				};
>>>> -				trip-point1 {
>>>> -					temperature = <95000>;
>>>> +				cpu1_alert1: trip-point1 {
>>>> +					temperature = <110000>;
>>>>    					hysteresis = <2000>;
>>>>    					type = "passive";
>>>>    				};
>>>>    				cpu1-critical {
>>>> -					temperature = <110000>;
>>>> +					temperature = <115000>;
>>>>    					hysteresis = <1000>;
>>>>    					type = "critical";
>>>>    				};
>>>>    			};
>>>> +
>>>> +			cooling-maps {
>>>> +				map0 {
>>>> +					trip = <&cpu1_alert1>;
>>>> +					cooling-device = <&cpu1_idle 100 100>;
>>>> +				};
>>>> +			};
>>>>    		};
>>>>    		nsphvx0-thermal {
>>>>
>>>> -- 
>>>> 2.34.1
>>>>
>>


