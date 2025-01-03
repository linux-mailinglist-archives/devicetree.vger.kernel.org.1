Return-Path: <devicetree+bounces-135360-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EE6B5A00ADC
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 15:49:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C5E15163B05
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 14:49:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE48E154BEE;
	Fri,  3 Jan 2025 14:49:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hy7ZZSJm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 259551F9A81
	for <devicetree@vger.kernel.org>; Fri,  3 Jan 2025 14:49:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735915785; cv=none; b=CiL0BNzZjnrtpfLG1LHIYgb2HmYuNIo7vMoKGIMiHhTDXV3DHqii9HrUCrnzL5biGCJ7Ii1xGWKQDWCVOxrlnHWrQ0SjSwDHkEz22tH93kxyawc0Q4qDS6hGbnsjbPfpV2JtA0RW76uGYFdRBpbVyt9KSQ7WqtjoHkKQO0vdEv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735915785; c=relaxed/simple;
	bh=l5PdvwSNOa/A01eHVNgmt58WzJpi4Y9ZcSvabgUjpnE=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=EPH/wO/HY0AcFGCakg5tx9zQ20H28k/lZYlt/V6GX5iuBsxpdc385sjF972MAbQTmqTQNbvbFbYSyb4tUlgS4TKZznLJJzgfH4IHRDmeHDnM9hGT+ozg3WbZ0d8m+ztxPKkCPxzYlNHaE9NgXRi80baeUWK8punL5nWwuYEaZe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hy7ZZSJm; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-aa6c0dbce1fso1699805066b.2
        for <devicetree@vger.kernel.org>; Fri, 03 Jan 2025 06:49:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735915781; x=1736520581; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=A3YtMtWFMuecwLd1TuUHNihydqBL52LjvR2LeORhmxA=;
        b=hy7ZZSJmDMoldlWrW9b0PAzh3HjU/Dd/u6izJPoMi1O6/4vbftk/LoUhDbyCA/1k5a
         cx4Jh60RGZqecv2+PfO6dsvLprRPeCT6JU0+mos2IdInkix9rgftGgM4C/HcB67bSMGV
         +9JCdr6N/zEkf9GA9vI8CTRBjn1ZDvN0cga4QlAr9ZeGAM32ZXwrEmkcxq9m2RjbD5JY
         GLIlgFb4EW18AUhAAZHWgkQJD8v+tyq7w+kctpfND7Hbdax0zQD9upAjKgylHhwtUsVd
         WURYXQimnT7stW2NX+NhurhnRex5IhO6FHfoOSJcpzCx60amYH5QnOoEPUoyEVIbK7tL
         jb0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735915781; x=1736520581;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=A3YtMtWFMuecwLd1TuUHNihydqBL52LjvR2LeORhmxA=;
        b=rBBsK848DSjKVo2JHvsTmDnke6UAmXNnv8T8dNDkilFZWeDZRDfevNNABI7YHy4zix
         GefC3eSpTVY2D0WDIagLMbnSLTBBlkk0KLA5HiTCUROK7EWbLjrATQgN/gKmOCTBu3NQ
         5XOAi3bD1T4oWKS/P71Yir/xBm6kV14E8U5l3vpbLYAvJ5ITXFCYCXlJU4lcadMzJ6ov
         Wz6ItNiRC3YSYHn1qpG2Yt/UwMn0n7Qi/RtD1jLOLhXOmbFPfFCX1+bTodSW67XiG9M+
         dJDftPu2FsoQ+2d5oNTS+VPu/1gOZeNJ0ItXTWRufaB9/0URJoP5NXfy8o0Gy5ArBCe7
         bc6Q==
X-Forwarded-Encrypted: i=1; AJvYcCUIm28TLmRYh3qbcYkeI8Bz6IHa5cLTmImhJO7pm48JAJ+toBpDNncqdAzi7xA2nMuNw7YGp/SPcrX9@vger.kernel.org
X-Gm-Message-State: AOJu0YzjRBZ0C/KyLijPDWBGmeRF4BMp4EVAB4UKvv5+Tvd+93iCbTRd
	BRMivFQig951OfgB1JQ9f9TXFAkYRbLxdsBFfFNCw4iva+Pa9GXRujkN3sAgzCw=
X-Gm-Gg: ASbGnctOoTNZod1rUmKmFpkPF8ValRhdR+WBmAcQ0O1qgalxnP5dJfCe5eRoB96aY7C
	UfsS/mVRCYUTESPOX5ZJ3O1U5856EtOHK0aBQknN/2IVzilG0zHqr0C5uzEyIqHDJLKecYH85ir
	b0GO49grSXmiJkeBM6Mz9W3BkwiE91ZthbnvEIY+M3tg9gArcyR8A6rgwDwYNhSE6EKsfA8d14S
	PxSd8lKVQ6cSWGBmJ7W0BobvRAfLS8EJnSK4KD8g+VfVuz3qbMqYc4/PAYP9uE8o8ZoRraeKoid
	nXBQ4pgqWFVlorXVLAxfQzEw7VFLiGqoNA==
X-Google-Smtp-Source: AGHT+IFurkEfuAcMJQwJpOfYhVCWQi4kE4VM5vjUgJ86ZkiULdXiXEk0my8lq66agyeKgtfnTq3dCw==
X-Received: by 2002:a05:6402:3206:b0:5d1:2377:5af3 with SMTP id 4fb4d7f45d1cf-5d81dd83b23mr109564090a12.5.1735915781130;
        Fri, 03 Jan 2025 06:49:41 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:3084:b2a4:688f:2d3a? ([2a01:e0a:982:cbb0:3084:b2a4:688f:2d3a])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0f06deb8sm1885241766b.190.2025.01.03.06.49.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Jan 2025 06:49:40 -0800 (PST)
Message-ID: <ec361e16-4af0-49bc-a7ca-8d8caa3dc332@linaro.org>
Date: Fri, 3 Jan 2025 15:49:39 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 0/2] arm64: dts: qcom: sm8650: rework CPU & GPU thermal
 zones
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250103-topic-sm8650-thermal-cpu-idle-v1-0-faa1f011ecd9@linaro.org>
 <b305ec90-26b6-4dfa-830a-4ff3acd9caf5@oss.qualcomm.com>
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
In-Reply-To: <b305ec90-26b6-4dfa-830a-4ff3acd9caf5@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 03/01/2025 15:43, Konrad Dybcio wrote:
> On 3.01.2025 3:38 PM, Neil Armstrong wrote:
>> On the SM8650 platform, the dynamic clock and voltage scaling (DCVS) for
>> the CPUs and GPU is handled by hardware & firmware using factory and
>> form-factor determined parameters in order to maximize frequency while
>> keeping the temperature way below the junction temperature where the SoC
>> would experience a thermal shutdown if not permanent damages.
>>
>> On the other side, the High Level Ooperating System (HLOS), like Linux,
>> is able to adjust the CPU and GPU frequency using the internal SoC
>> temperature sensors (here tsens) and it's UP/LOW interrupts, but it
>> effectly does the same work twice in an less effective manner.
>>
>> Let's take the Hardware & Firmware action in account and design the
>> thermal zones trip points and cooling devices mapping to use the HLOS
>> as a safety warant in case the platform experiences a temperature surge
>> to helpfully avoid a thermal shutdown and handle the scenario gracefully.
>>
>> On the CPU side, the LMh hardware does the DCVS control loop, so
>> let's set higher trip points temperatures closer to the junction
>> and thermal shutdown temperatures and add some idle injection cooling
>> device with 100% duty cycle for each CPU that would act as emergency
>> action to avoid the thermal shutdown.
>>
>> On the GPU side, the GPU Management Unit (GMU) acts as the DCVS
>> control loop, but since we can't perform idle injection, let's
>> also set higher trip points temperatures closer to the junction
>> and thermal shutdown temperatures to reduce the GPU frequency only
>> as an emergency action before the thermal shutdown.
>>
>> Those 2 changes optimizes the thermal management design by avoiding
>> concurrent thermal management, calculations & avoidable interrupts
>> by moving the HLOS management to a last resort emergency if the
>> Hardware & Firmwares fails to avoid a thermal shutdown.
>>
>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>> ---
> 
> Got any numbers to back this?

To back which part ? Yes I've been running loads with difference
scenarios and effectively the hardware work is much better with
a more linear correction and slighly better performances because
it sets slighly higger OPPs while maintaining the core closer to
the target temperature range. Which is kind of expected.

I don't have easy numbers to share, sorry...

So yes I consider avoiding the concurrent effort is better, but
since we also take the firmware design in account in the whole platform
representation in DT (DSPs, SCM, GMU, ...) we should also extend this
to thermal.

Neil

> 
> Konrad


