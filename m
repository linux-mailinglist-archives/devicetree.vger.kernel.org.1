Return-Path: <devicetree+bounces-248656-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E3650CD4D49
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 07:59:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C03B13004F20
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 06:58:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85612304BB3;
	Mon, 22 Dec 2025 06:58:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JOKWRQT/";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="cgwdBUjB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE2422FE598
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 06:58:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766386738; cv=none; b=uwsFEaMprZQOxcnBlI51vPG6YtQoPsRiFyVmnPjLygsAjdB6POKxVZ3hl6e2Qunr6uq3QrRSqIbAPTRifdAiVlsSHeM+btiJSnDrNkPz+Nle2LoWAtXQHHZiX0cyVzyD1GtmhjMbRPS2oRqZuvBxCFNeRu0X0mc1pg4KtKcVeYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766386738; c=relaxed/simple;
	bh=BC2DATRVLjyGGrI+/IOZpGrlevdSZVA+kZM7aOv6gs8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KitammC4t50PKMxWZwqYl0ipoMliYXanaYDpcciTczvBffGiZrH6b5dPUaku5MoGRC74jTU6FuAjWu7gZTXJApd1q9ydq6hWK3Dt1dc9WJgoyzYxFqwSKwSWw7kNzn84Yx/04EggX83UlIAdc5x+Nk8ECvkyV4kDsaiy+xObrik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JOKWRQT/; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=cgwdBUjB; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BLNuqxW3877629
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 06:58:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	SMxuqKVWm3OclsZ+GWtTTlP0TisA0si8nmJC4yO6AdI=; b=JOKWRQT/Rb5Me+Q0
	IADVjaPsTvHas15qk1e4hTv0HmtQWVt32pwpLO7ZhwLBuQgwxuyXkbeEbOOYHcD7
	zAfxBttIlnzjdNDMSQXdHLS6/lNEDkqu/z8tlp1FDjqXeZ+ofaE18ADp5EB0/uLV
	UYFajkuRb6//ncxlhA+sA6SpKy1qbddJoNTHxmLuWh0gPXC2ufaGKZshVw6uNdyz
	Xsn8Kw8bsE82CT3itnV8H3wmHX8e2PyZzd0Ckra5cwq4dV/8Yl9Dx/IpO+E+n78E
	Q+x9uJbVlzKXkm6mDWz1E2L3TRkPEN/nICrUS6KJSW/AXfM5B/GO9lXDqjnrFxHD
	vBpI3w==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b5mrtc11y-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 06:58:55 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-7c1df71b076so7401306b3a.0
        for <devicetree@vger.kernel.org>; Sun, 21 Dec 2025 22:58:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766386735; x=1766991535; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SMxuqKVWm3OclsZ+GWtTTlP0TisA0si8nmJC4yO6AdI=;
        b=cgwdBUjB4aHF1yeGsVlSlK84/IGArPCMnGO/VyR70fxLy2oj8GOe9cCV4nf6u00An1
         4uRQ838+GIVzOhN8bQZ8VO28wukxmmXrWmh+CuajGvVJIW9F2K9GjQzkEphjKpSqs1xM
         KowBS9VISP24EIRlJRzYx6j5gCFhRnZjHhSEzaRVMEF+qhcm8KiNb4wbcckefuylbsFb
         iX+sPUW0zCSU9N9ZzIbuaoG6DYLp/ZSqfqhARq2QPIwx0XiF1EVkKqUb5W7izZdQhQbl
         DHus3LExisb7TNJf8j6/LF2AcRHQv3c8g+6e79B4DxqLONGOSFtmKUxCwjoGaPEvT6D7
         qBtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766386735; x=1766991535;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SMxuqKVWm3OclsZ+GWtTTlP0TisA0si8nmJC4yO6AdI=;
        b=rz5qrjbDFgi1XzfrQrHb7TjZOTfb2y8hnlefAcrfQJ7HRTG2tzrsDKFCeKE2fObm7W
         RQ6CDL0GQ8kkKT3X/W4KKQha9cdxXY+V1B4eknFOt7dSApDd157xiHF8N3Ge927W7AFk
         IFwV4wNL61Pn/Ovoh0p7ByTLBrHU+4SSmtuFWsbV/vlaJZ77R5D04DwxdBkb8T/gp/Nf
         GJt4rsNZItqp+WYe9rEnLZjxYy3rLnpdaMHfcInjGbV1yzQ7/sREFmMJdfl9nr0GbAM7
         2ZA9p55Vsp5iC3qOBHyI4UZZCqy4kAkdSm58ikRcHY4n9UH7TgHqmVHSx9ypk5js2pzO
         8B3Q==
X-Forwarded-Encrypted: i=1; AJvYcCXSfU3/nA12LuBsoKKzVIYguMD7A4GgkvqekGpC0CIC8cTTZyuXW1Ep3FTkOJzc81CTFL1iwzPA9sev@vger.kernel.org
X-Gm-Message-State: AOJu0YxL5q9eRdsDr9B5JnTLCaP+mfW0Pqxe77y6uvdls85+l3j9GfJr
	q0Z9jC4B1scVal97C7xHrPxQTwQQJXqlSLGLh7icRNmw4XUxtTw7bsPOfdvEPdvdkiELmHvMZuX
	Fk+a70dKJW6Wb9nkgh3SvaTfOdqP2uE+0vh/AoFSbiTyOB0D+Z+ZqesSdYxURHVUe
X-Gm-Gg: AY/fxX7kWV7w/hTDU72h5z2yLH9V5hZzYX6/S+bkMyPEPRPDEhfnro76Z03aMHMNt4L
	Lhh7l+pOcL2ybCUREimA+HG1fAv/Fv1Q1vIpxLTlWypD06qtFiGmFPLWevrbAikh+/GqHw3vBfA
	4SZxh4e2OEXZqfFmnmEZYj04vH8VwFl0u9jl2E9JZPLn4gRAQowR/J+poOZPkrUt4cKBTticQqW
	fj9N/zoXG7H7xXJ+EZu3v2F/sNdbMUWb4P6xvVK6zBGrZVe2pD0ph3ziTzKPPoryyqbVXy2kEbq
	yNZEpicS8vEWmNlbc9teFu4a4KHlZsk5e4fSedNK9EQQuIvMDxo2cS5e43tfYSooYQhutL8xuuk
	J/gFb9iiN+gMCHYhNWTNWzBpcjM4xyRh+8KnzBPr5eO4Y+M3BTD9TK/KV2LDRHinGr/ijYSIBXS
	g=
X-Received: by 2002:a05:6a00:7613:b0:7ff:acc3:2f40 with SMTP id d2e1a72fcca58-7ffacc33e69mr7059149b3a.26.1766386735070;
        Sun, 21 Dec 2025 22:58:55 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEO+6I8pHuD+xmFtIYOJqkUxAi0nAsXhcjYzo9deCdZ2wwdODhLF8KzB5WTxUNjuepx5+QCTg==
X-Received: by 2002:a05:6a00:7613:b0:7ff:acc3:2f40 with SMTP id d2e1a72fcca58-7ffacc33e69mr7059129b3a.26.1766386734539;
        Sun, 21 Dec 2025 22:58:54 -0800 (PST)
Received: from [10.133.33.169] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7e0a1a2asm9254539b3a.41.2025.12.21.22.58.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 21 Dec 2025 22:58:54 -0800 (PST)
Message-ID: <097dbefb-f679-40da-bce4-d6e09dc4cf08@oss.qualcomm.com>
Date: Mon, 22 Dec 2025 14:58:47 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 5/8] dt-bindings: arm: add an interrupt property for
 Coresight CTCU
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>
Cc: Mike Leach <mike.leach@linaro.org>, James Clark <james.clark@linaro.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Mao Jinlong <jinlong.mao@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20251211-enable-byte-cntr-for-ctcu-v8-0-3e12ff313191@oss.qualcomm.com>
 <20251211-enable-byte-cntr-for-ctcu-v8-5-3e12ff313191@oss.qualcomm.com>
 <20251211133723.GA859302-robh@kernel.org>
 <dfa43a63-ca14-4dd7-a7ab-acd95748a8b9@oss.qualcomm.com>
 <a9537dc9-c767-4909-8b1c-6e939ce4f3fc@kernel.org>
 <2db74a3e-4aeb-4e87-9fe8-5c9693bfb67c@arm.com>
 <46afd4f6-f287-4d19-bc68-f2f6eac36e6a@oss.qualcomm.com>
 <95ac571a-1c8f-45d9-9874-648d4123ce18@arm.com>
Content-Language: en-US
From: Jie Gan <jie.gan@oss.qualcomm.com>
In-Reply-To: <95ac571a-1c8f-45d9-9874-648d4123ce18@arm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: GKxlukOHaew2p1QFt8t8TXGhnFFx8MS9
X-Proofpoint-GUID: GKxlukOHaew2p1QFt8t8TXGhnFFx8MS9
X-Authority-Analysis: v=2.4 cv=CeEFJbrl c=1 sm=1 tr=0 ts=6948ec2f cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=W9kkhuXnUgcddjO-hjkA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=zc0IvFSfCIW2DFIPzwfm:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIyMDA2MSBTYWx0ZWRfX1Ul/Q14zxKdc
 TbnOWQk7N8XJ4P+FxjWADg0cHfLfTpCjor+XpBEScrE1MjqmwAlICFjED20zNPyRux5YcAZ/iLb
 01B0QHra3lIR3p3yDJy5Z0Y6bpuChdAZ6uWljoI2c5T49ehunkGMBwCHQ24NjuQcj1J/OchKc/N
 Y8fjqtMyhCZ84bZ8q+Q61sO02375nMJLbLhvGT4TXKto+p0CKrpkvxEnMZrKQsD94gAiNZQ5DDY
 jv/lFEi3uKMvWh6/QhYNMHSkjBHAUhRc1MzlTXX+C4MoXPSDBhVTMljjK+x6KaxAEsqtVHXd3N5
 XcR3MxNRL4Kl0tUd67P4nG3GX4qAFK0JslWo7ddqmvTG//YsMExwFKflP0iOyGP9Z7MZIQTVPSM
 x7Q94rVcJwyGvkI0axbGcrvanlbTkNPh3wMwbgxTyZkwTGBygmh0cjTZfAfpe8CAY1e7yGUtXm4
 voiztrnKK+nyUhqJsuw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-21_05,2025-12-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 priorityscore=1501 phishscore=0
 bulkscore=0 adultscore=0 spamscore=0 clxscore=1015 malwarescore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512220061



On 12/19/2025 5:54 PM, Suzuki K Poulose wrote:
> On 19/12/2025 02:05, Jie Gan wrote:
>>
>>
>> On 12/19/2025 7:19 AM, Suzuki K Poulose wrote:
>>> On 18/12/2025 10:17, Krzysztof Kozlowski wrote:
>>>> On 12/12/2025 02:12, Jie Gan wrote:
>>>>>
>>>>>
>>>>> On 12/11/2025 9:37 PM, Rob Herring wrote:
>>>>>> On Thu, Dec 11, 2025 at 02:10:44PM +0800, Jie Gan wrote:
>>>>>>> Add an interrupt property to CTCU device. The interrupt will be 
>>>>>>> triggered
>>>>>>> when the data size in the ETR buffer exceeds the threshold of the
>>>>>>> BYTECNTRVAL register. Programming a threshold in the BYTECNTRVAL 
>>>>>>> register
>>>>>>> of CTCU device will enable the interrupt.
>>>>>>>
>>>>>>> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>>>>>> Reviewed-by: Mike Leach <mike.leach@linaro.org>
>>>>>>> Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
>>>>>>> ---
>>>>>>>    .../devicetree/bindings/arm/qcom,coresight-ctcu.yaml    | 17 + 
>>>>>>> + + ++++++++++++++
>>>>>>>    1 file changed, 17 insertions(+)
>>>>>>>
>>>>>>> diff --git a/Documentation/devicetree/bindings/arm/ 
>>>>>>> qcom,coresight- ctcu.yaml b/Documentation/devicetree/bindings/ 
>>>>>>> arm/qcom,coresight- ctcu.yaml
>>>>>>> index c969c16c21ef..90f88cc6cd3e 100644
>>>>>>> --- a/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml
>>>>>>> +++ b/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml
>>>>>>> @@ -39,6 +39,16 @@ properties:
>>>>>>>        items:
>>>>>>>          - const: apb
>>>>>>> +  interrupts:
>>>>>>> +    items:
>>>>>>> +      - description: Byte cntr interrupt for the first etr device
>>>>>>> +      - description: Byte cntr interrupt for the second etr device
>>>
>>> This is really vague. How do you define first vs second ? Probe order ?
>>> No way. This must be the "port" number to which the ETR is connected
>>> to the CTCU. IIUC, there is a config area for each ETR (e.g., trace id
>>> filter) connected to the CTCU. I was under the assumption that they
>>> are identified as "ports" (input ports). I don't really understand how
>>> this interrupt mapping works now. Please explain it clearly.
>>>
>>
>> Sorry for the misunderstanding.
>>
>> Each ETR device should have its own interrupt line and an IRQ register 
>> within the CTCU device, as defined by the specification. In existing 
>> projects, the maximum supported number of ETR devices is 2.
>>
>> Each interrupt is directly mapped to a specific ETR device, for example:
>> tmc@1000 → interrupt line 0
>> tmc@1001 → interrupt line 1
>>
>> The suggestion to identify devices by ‘ports’ is much clearer than my 
>> previous explanation, as it explicitly shows which device is connected 
>> to which port.
> 
> Thanks for confirming.
> 
>>
>>>>>>> +
>>>>>>> +  interrupt-names:
>>>>>>> +    items:
>>>>>>> +      - const: etrirq0
>>>>>>> +      - const: etrirq1
>>>>>>
>>>>>> Names are kind of pointless when it is just foo<index>.
>>>>>
>>>>> Hi Rob,
>>>>>
>>>>> I was naming them as etr0/etr1. Are these names acceptable?
>>>>
>>>> Obviously irq is redundant, but how does etr0 solves the problem of
>>>> calling it foo0?
>>>>
>>>> I don't think you really read Rob's comment.
>>>>
>>>>> The interrupts are assigned exclusively to a specific ETR device.
>>>>>
>>>>> But Suzuki is concerned that this might cause confusion because the 
>>>>> ETR
>>>>> device is named randomly in the driver. Suzuki suggested using 
>>>>> ‘port-0’
>>>>> and ‘port-1’ and would also like to hear your feedback on these names.
>>>>
>>>> There is no confusion here. Writing bindings luckily clarifies this 
>>>> what
>>>> the indices in the array mean.
>>>
>>> The point is there are "n" interrupts. Question is, could there be more
>>> devices(ETRs) connected to the CTCU than "n".
>>>
>>> e.g., Lets CTCU can control upto 4 ETRs and on a particular system, the
>>>
>>> TMC-ETR0 -> CTCU-Port0
>>>
>>> TMC-ETR1 -> CTCU-Port2
>>> TMC-ETR2 -> CTCU-Port3
>>>
>>> Now, how many interrupts are described in the DT ? How do we map which
>>> interrupts correspond to the CTCU-Portn. (Finding the TMC-ETRx back
>>> from the port is possible, with the topology).
>>>
>>
>> Got your point and it's much clearer.
>>
>>> This is what I raised in the previous version. Again, happy to hear
>>> if there is a standard way to describe the interrupts.
>>>
>>> Suzuki
>>>
>>>
>>>>
>>>>>
>>>>> Usually, the probe sequence follows the order of the addresses. In our
>>>>> specification, ‘ETR0’ is always probed before ‘ETR1’ because its 
>>>>> address
>>>>> is lower.
>>>>
>>>> How is this even relevant? You are answering to something completely
>>>> different, so I don't think you really tried to understand review.
>>>>
>>
>> My previous explanation was definitely unclear. As Suzuki suggested, 
>> mapping the interrupt to the port number (to identify the relevant 
>> device based on topology) makes sense and provides a much easier way 
>> to understand the relationship between the interrupt and the ETR device.
>>
>> So with the suggestion, here is the new description about the interrupts:
>>
>>    interrupts:
>>      items:
>>        - description: Interrupt for the ETR device connected to in-port0.
>>        - description: Interrupt for the ETR device connected to in-port1.
>>
>>   interrupt-names:
>>      items:
>>       - const: port0
>>       - const: port1
> 
> Which brings us back to the question I posted in the previous version. 
> Do we really need a "name" or are there other ways to define, a sparse
> list of interrupts ?
> 

Each interrupt is dedicated to a specific ETR device. While we can 
retrieve the list of interrupts using of_irq_get, we cannot guarantee 
that the obtained interrupt corresponds to the correct ETR device?
I believe it would be better to have an interrupt-name property, so we 
can assign the name in the data structure and retrieve the interrupt by 
its name, ensuring it maps to the correct ETR device.

Thanks,
Jie



