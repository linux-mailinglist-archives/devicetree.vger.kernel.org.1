Return-Path: <devicetree+bounces-62716-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 410168B22E2
	for <lists+devicetree@lfdr.de>; Thu, 25 Apr 2024 15:33:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4239AB27A71
	for <lists+devicetree@lfdr.de>; Thu, 25 Apr 2024 13:33:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 220A4149C78;
	Thu, 25 Apr 2024 13:32:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YBj3zpHJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCFD7149C41
	for <devicetree@vger.kernel.org>; Thu, 25 Apr 2024 13:32:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714051965; cv=none; b=hAdPIKTt6VpLyElXC2L/qc+SpQp7SPP3nFKh8RG4AVVuw8s4TWoGHfZzV36zNzEvsblPkF3dFcINeS35tYYtDXO7PUO3XdcVaPJtmbRaG3JF85mneRqEgSDD18LkTtTcoqooMf1Inwi8cLUCIlz6KUbXUhFE4WEM7VbAe2goaSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714051965; c=relaxed/simple;
	bh=MMomP/8dwSAVkZZmBgm8ZvgmVuByPf1jQVvMWguKpjg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mZ31ZK65fJY8+Q7wt2v8q4wC07u7SropMmcTpduFSPnnyE24zxbWL/KSmF1vk8ujMYAU3ZxZeKYlMx6kIiUp6OTmTeRDukVyCB3RPYY6S6aq5RJ2DBT8uafB4gA8JyEm6euGOc6h3se1S1UNPg/y+Kzs1iidQMo3tFWcTQYNSQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YBj3zpHJ; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-51963c16f89so200983e87.3
        for <devicetree@vger.kernel.org>; Thu, 25 Apr 2024 06:32:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714051960; x=1714656760; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HSmqypjIS92fFBtdrRSjnycqWl4CLQIjWTtXUnhGY5g=;
        b=YBj3zpHJ6GNgV1MLHMMHWN+2uvNQIJkaFSj24Kj39cgVtRji5fbNj9+zyPj0vgEUWa
         Orza/9xtzFi1Hjc37js7P75xQYEXrUTP11ejGLLvZgMoZDbHd4x9LN7Yh3GBZjNhdaaf
         D/j9+ED4sQK9lS7u6fevupv2znzLhyZfB+YjQ7oKroFp4ywxydbzqIT9z5Wt7A3wJvjX
         qTUiqFXon6wKmMVevmQakRRH8J3NiRJ2hMZU9bma9jeJkXDGF3jmM30n4QOK6DrtQPQG
         jeTVD8Q9ELitj+PcS7Hb0P8KYQWveoE9sVleS0iSzgfDGz/dUQ4uzgjo7FsEz1XrSlaa
         eJ6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714051960; x=1714656760;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HSmqypjIS92fFBtdrRSjnycqWl4CLQIjWTtXUnhGY5g=;
        b=F6Tr/iUnRKJLU5uQOxzxwC8RsATseQd+02sNi8cBn+eyU1cQbZt4Vhe5KLE1GqgYuP
         b9L1fSegXzty/KmHN9+9R7LR0rFYRglewUIhHJ1ut1xwqs2X9tnlLaaQHJeibqQDmpDK
         57OfshL1WWCaEEwq9Fb8eSArRMi3y9xexx5IiIb5hTdhk5xxSThUcohJ34oM5+BfdA1q
         F1hnIwxi/J4BtV9a5sWblBTvVov0xhXMEmYdAegf6PKcBPAHuRERlj7k9Vw9Z6XULTe1
         guaQwXBh7Ix8FdRJy2TeMIgvLRWpgMatvc++5dNvlkKl5lBC22y5oe8BXjIV/UEUIi6o
         6mHw==
X-Forwarded-Encrypted: i=1; AJvYcCU7xfI1hWcWCXUrqyVYTU9u72o7FGcv/1SIsthGtW5iYPvnWzsOp8EloEqffefDOQ1Jc3tULCSFlkOof/Kht7Y6mtSR6mTJqzoTgg==
X-Gm-Message-State: AOJu0Yy8xSo12UaUs2gNxIpHv4Hde15+i97iQj8flZcsLXD2KKpCJ4UA
	f2bACQnzjMvL9dkMVoSad2VIjjLhPUGqMN6jHUxc5S1Cfk4YR4t37i5dCJN+E0c=
X-Google-Smtp-Source: AGHT+IESWXmXNjDEZEiQeuKXC4gKNDBYg3AhPm/2TqyqsQYsczc5eWsRrAiQSvYsv18t5BVv2SxY6Q==
X-Received: by 2002:a2e:9855:0:b0:2de:1218:af30 with SMTP id e21-20020a2e9855000000b002de1218af30mr3711383ljj.1.1714051960077;
        Thu, 25 Apr 2024 06:32:40 -0700 (PDT)
Received: from [192.168.1.102] (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id x22-20020a2e7c16000000b002d9e3a525bfsm2362152ljc.41.2024.04.25.06.32.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Apr 2024 06:32:39 -0700 (PDT)
Message-ID: <d160289a-d0c7-498e-88b2-89861ab9fa50@linaro.org>
Date: Thu, 25 Apr 2024 16:32:20 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V2 RESEND 1/6] dt-bindings: clock: qcom: Add SM8650 video
 clock controller
Content-Language: en-US
To: Jagadeesh Kona <quic_jkona@quicinc.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Taniya Das <quic_tdas@quicinc.com>,
 Satya Priya Kakitapalli <quic_skakitap@quicinc.com>,
 Ajit Pandey <quic_ajipan@quicinc.com>,
 Imran Shaik <quic_imrashai@quicinc.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20240321092529.13362-1-quic_jkona@quicinc.com>
 <20240321092529.13362-2-quic_jkona@quicinc.com>
 <CAA8EJppsMchthssctEgUf9q45j84cSLQ78Ur+vaA0Z7GEQi8+g@mail.gmail.com>
 <725471b1-46a9-43b0-bede-33f01c953d51@quicinc.com>
 <c3ea22ed-5750-438f-89d5-e56f908ba835@linaro.org>
 <73c5ffca-9275-437c-a49e-ef3251c8d313@quicinc.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <73c5ffca-9275-437c-a49e-ef3251c8d313@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Jagadeesh,

On 4/22/24 14:00, Jagadeesh Kona wrote:
> 
> On 4/19/2024 2:31 AM, Vladimir Zapolskiy wrote:
>> Hello Jagadeesh,
>>
>> On 3/25/24 08:07, Jagadeesh Kona wrote:
>>>
>>>
>>> On 3/21/2024 6:42 PM, Dmitry Baryshkov wrote:
>>>> On Thu, 21 Mar 2024 at 11:26, Jagadeesh Kona <quic_jkona@quicinc.com>
>>>> wrote:
>>>>>
>>>>> Extend device tree bindings of SM8450 videocc to add support
>>>>> for SM8650 videocc. While it at, fix the incorrect header
>>>>> include in sm8450 videocc yaml documentation.
>>>>>
>>>>> Signed-off-by: Jagadeesh Kona <quic_jkona@quicinc.com>
>>>>> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>>>> ---
>>>>>     .../devicetree/bindings/clock/qcom,sm8450-videocc.yaml    | 4 +++-
>>>>>     include/dt-bindings/clock/qcom,sm8450-videocc.h           | 8
>>>>> +++++++-
>>>>>     2 files changed, 10 insertions(+), 2 deletions(-)
>>>>>
>>>>> diff --git
>>>>> a/Documentation/devicetree/bindings/clock/qcom,sm8450-videocc.yaml
>>>>> b/Documentation/devicetree/bindings/clock/qcom,sm8450-videocc.yaml
>>>>> index bad8f019a8d3..79f55620eb70 100644
>>>>> --- a/Documentation/devicetree/bindings/clock/qcom,sm8450-videocc.yaml
>>>>> +++ b/Documentation/devicetree/bindings/clock/qcom,sm8450-videocc.yaml
>>>>> @@ -8,18 +8,20 @@ title: Qualcomm Video Clock & Reset Controller on
>>>>> SM8450
>>>>>
>>>>>     maintainers:
>>>>>       - Taniya Das <quic_tdas@quicinc.com>
>>>>> +  - Jagadeesh Kona <quic_jkona@quicinc.com>
>>>>>
>>>>>     description: |
>>>>>       Qualcomm video clock control module provides the clocks, resets
>>>>> and power
>>>>>       domains on SM8450.
>>>>>
>>>>> -  See also:: include/dt-bindings/clock/qcom,videocc-sm8450.h
>>>>> +  See also:: include/dt-bindings/clock/qcom,sm8450-videocc.h
>>>>
>>>> This almost pleads to go to a separate patch. Fixes generally should
>>>> be separated from the rest of the changes.
>>>>
>>>
>>> Thanks Dmitry for your review.
>>>
>>> Sure, will separate this into a separate patch in next series.
>>>
>>>>>
>>>>>     properties:
>>>>>       compatible:
>>>>>         enum:
>>>>>           - qcom,sm8450-videocc
>>>>>           - qcom,sm8550-videocc
>>>>> +      - qcom,sm8650-videocc
>>>>>
>>>>>       reg:
>>>>>         maxItems: 1
>>>>> diff --git a/include/dt-bindings/clock/qcom,sm8450-videocc.h
>>>>> b/include/dt-bindings/clock/qcom,sm8450-videocc.h
>>>>> index 9d795adfe4eb..ecfebe52e4bb 100644
>>>>> --- a/include/dt-bindings/clock/qcom,sm8450-videocc.h
>>>>> +++ b/include/dt-bindings/clock/qcom,sm8450-videocc.h
>>>>> @@ -1,6 +1,6 @@
>>>>>     /* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
>>>>>     /*
>>>>> - * Copyright (c) 2023, Qualcomm Innovation Center, Inc. All rights
>>>>> reserved.
>>>>> + * Copyright (c) 2023-2024, Qualcomm Innovation Center, Inc. All
>>>>> rights reserved.
>>>>>      */
>>>>>
>>>>>     #ifndef _DT_BINDINGS_CLK_QCOM_VIDEO_CC_SM8450_H
>>>>> @@ -19,6 +19,11 @@
>>>>>     #define
>>>>> VIDEO_CC_MVS1C_DIV2_DIV_CLK_SRC                                9
>>>>>     #define VIDEO_CC_PLL0                                          10
>>>>>     #define VIDEO_CC_PLL1                                          11
>>>>> +#define
>>>>> VIDEO_CC_MVS0_SHIFT_CLK                                        12
>>>>> +#define VIDEO_CC_MVS0C_SHIFT_CLK                               13
>>>>> +#define
>>>>> VIDEO_CC_MVS1_SHIFT_CLK                                        14
>>>>> +#define VIDEO_CC_MVS1C_SHIFT_CLK                               15
>>>>> +#define VIDEO_CC_XO_CLK_SRC                                    16
>>>>
>>>> Are these values applicable to sm8450?
>>>>
>>>
>>> No, the shift clocks above are part of SM8650 only. To reuse the
>>> existing SM8550 videocc driver for SM8650 and to register these shift
>>> clocks for SM8650, I added them here.
>>>
>>
>> In such case I'd strongly suggest to add a new qcom,sm8650-videocc.h file,
>> and do #include qcom,sm8450-videocc.h in it, thus the new header will be
>> really a short one.
>>
>> This will add pristine clarity.
>>
> 
> Thanks Vladimir for your suggestion. I believe adding a comment for
> these set of clocks should be sufficient to indicate these clocks are
> applicable only for SM8650, I can add the required comment and post the
> next series. Please let me know if this works?

Well, I didn't get any new information to abandon my suggestion, what is
wrong with it or why is it less preferable?

Even if you add a comment in the header file, it means that for SM8450
platforms you'll begin to define inapplicable/unrelated macro for the
platform, which opens a small risk of the misusage, and which can be
easily avoided. I believe that the clarity is better for maintenance.

--
Best wishes,
Vladimir

