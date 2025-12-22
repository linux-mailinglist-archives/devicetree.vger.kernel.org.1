Return-Path: <devicetree+bounces-248727-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BDBD6CD54BD
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 10:20:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F10E730142C0
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 09:18:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C6D430FF2B;
	Mon, 22 Dec 2025 09:17:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XvXHqyos";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="YAJebdA+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0E97221710
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 09:17:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766395079; cv=none; b=e9NEt3zlrGE5Ib8QCVBOlFM3goyfdTL9zZt3Ol3AcVkBFIren/jARqN6K7wCjO4sH15KZjZVtSNUA/9v/daFcxIt4JeSd+OnGbCSwVIiHb9HYP1N3CY6xSRcdBqaeC/+mcfd9L5hhbzDCxtiUgDpyaklR8e3SMj/DX4knkBuloI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766395079; c=relaxed/simple;
	bh=+FEaQLbLEgdyd6u561VwKgGNRqatI2FPptfNTdDwsKI=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=FVgb75BzyieiG2TDhsUjbA1geyqhDO8Mx6GTjunY+BlEOKx9jAwlDknJ2/PRFXJ1B1muPtEt074dAQ+wjI8pPz0ObE9/S/4/3D/3qN6LwG2AFuUz20/8gUbCjMWALeTjzms2IVsq/TyJSQxQSax1/YKUgRiGXcg1jpA9SrsaBuk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XvXHqyos; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=YAJebdA+; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BM888HM3869336
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 09:17:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	qHYcFna9IBP8yPCXPx/jCY/LQ258ays+0WQDfP2UK7s=; b=XvXHqyosqkf5mEuR
	Qqb93hukytJtYn4r/jdvksqJ/9Dl58okN3JXi6FD5b65ekgCxbDaQ0DGZAetNUtQ
	OZsjVyunQRYUDPa0nLU3fWHg5epJF2Knj7spqjvzo3vsYmna/Q63poOCGSohunoz
	IAybYcwQYbCkHbVxPV0qW4tdOCU/vonKo570GHztPgZiZWeQV7PCwkZKGKIPPhN+
	/Tg9cGFGacDVyQrMoHwfq1epfneViiCLp4+WM/G+i+qr1LMRDN7485aMjLElulKD
	2hj9e/QLf09OudkHLpyOuCbejxNsW6MeI7tr720CFcJm/jM0aE/TfSW/dorq/lqc
	kBaHFg==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b5mrtceya-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 09:17:56 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-7ba9c366057so6866508b3a.1
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 01:17:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766395076; x=1766999876; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=qHYcFna9IBP8yPCXPx/jCY/LQ258ays+0WQDfP2UK7s=;
        b=YAJebdA+TYxroBK4wXjNnocAoWlTKUnhuVg02LNWjkKmpF8vlhB27Cgfw2N3rBkdm3
         73t2qnyMe6wGo66/IDwwpkAOXFlVI82tbQZq3Pef4s4wiEazCPF1btwnjamOQoLhUPM2
         bYpbl48/x9VvwG9WGksu2A5AQzwou6AAjZQlFaeApawHIJNqOzFDfZIwtDW6BEZJ698m
         YWIgrFseAk+//UyBLykx59nVhwUQf7CVOiwPPn1vUZobQ9/ohnBxZ5KQO8Jvg7Q/GzbZ
         x0HeS6rzKrpUbbU7WrdnTkndnMDAtGCbqC1nEcWSA3rKQqBRJFimwsa/HhYb9IklJFqS
         MfKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766395076; x=1766999876;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qHYcFna9IBP8yPCXPx/jCY/LQ258ays+0WQDfP2UK7s=;
        b=XadEfuATNc+eLuk+DJXNsFRcxQGF+lNZQFbYn4HdJBRsQZ1FsbuGmjUz5H4YipSvBd
         ZUPg5m7BMyeoxUYwNYehDeMIwHlY8GcEOfWVM4JE2yBNRCc2yXa7fGkjjv6CBror1mIu
         1WGJzQRZbhibuFm5QWabofiKGNfx+PwmoHuJ9poM6jUhTYNDAslY2Jvo0Xwkv7sol+rI
         N6D/nWqOuc8c+PjwJ2xmgJZMkOyUSUKXcO3+fRYxOqtQ/L8OblwmzmAOs0eXLOCWf/I0
         6O5isyC8u6X5pGleKvA4jCqF2n5uDOV8751SjfejH5GSBYABK8Nw5Jw0/WsWA+nkpt2y
         1Bnw==
X-Forwarded-Encrypted: i=1; AJvYcCVI9Cb3cyf86Lop13DNY12MxhjJMTKMoIfPtnUgTqolzYOwXlVQCF0mqKX051spPKbjG9SYl5D5weFV@vger.kernel.org
X-Gm-Message-State: AOJu0YxCT2AfvkrtSwrdZ5It/pPpchQx7GxQHPoPw6Wjqf0zKcqPehHh
	3TDEBlefGIFkvy1bxnMw61uDsPeebIaiWOBdPvCHfpADKADqoTA92jpw9DevN2Fx6Owa/7s8v8V
	+L4m9im7KswzIoldH2Wwmr9ianCNSY5yBupWYUc2mpQ/8NzAOHCFJY02HFh2/FFJ+
X-Gm-Gg: AY/fxX44O/o8OV/ZdiHhaZ+S86JvQyNleLeJFypivMq1lu5pkrihweqg53a1Jf4ajxr
	enc8+3d1KzIPkcKa+LHNyZG1lMU6GcNwqKWKcK8zlnnQxrWrKEOMSEFNYo9nFbtJ3dnjtAd8FSX
	4qE+4b/4RUDVyU6/Xfx/NX07kb9Cyzs8fpEGsq5spRNtSFwUh4k26yPr7JNQMKj6RN5qaWtfB03
	OIr3L5geaSVYUD9JEVfGwLggxEpivMVlwfBjyy2jvELDkSqAXYjHjAChKhO8vpOmkNTCyvHzjVF
	+Ffo8i7OFJJSTHomgNLNd54vX0HOCC6BWYPHRMo4WLAUBPuHolxRyD/j4QHvYrF26jcvFZiidyC
	Y1VDUrmyrZfhwhJc19Ui2yglt0pMuO+omi34+cjEQPrGC/QsGOuSHTQ9TrA5RbWTARN5iOT4Q6L
	M=
X-Received: by 2002:a05:6a00:1f0c:b0:7e8:450c:619e with SMTP id d2e1a72fcca58-7ff66a6ecc7mr9498832b3a.53.1766395075417;
        Mon, 22 Dec 2025 01:17:55 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGd//VFkRIKO2NQ60cGR2Kj8FVATZRob9N42xXZZ8fStzRji1TPzSanp6ObU6Qgk0zmCu+JNg==
X-Received: by 2002:a05:6a00:1f0c:b0:7e8:450c:619e with SMTP id d2e1a72fcca58-7ff66a6ecc7mr9498800b3a.53.1766395074881;
        Mon, 22 Dec 2025 01:17:54 -0800 (PST)
Received: from [10.133.33.169] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7e588a30sm9833430b3a.55.2025.12.22.01.17.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Dec 2025 01:17:54 -0800 (PST)
Message-ID: <01072c94-3a13-459c-baba-0cc2f3611ff9@oss.qualcomm.com>
Date: Mon, 22 Dec 2025 17:17:48 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 5/8] dt-bindings: arm: add an interrupt property for
 Coresight CTCU
From: Jie Gan <jie.gan@oss.qualcomm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>,
        Mike Leach <mike.leach@linaro.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>
Cc: James Clark <james.clark@linaro.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
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
 <097dbefb-f679-40da-bce4-d6e09dc4cf08@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <097dbefb-f679-40da-bce4-d6e09dc4cf08@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: f6pukly8OcmG3eLP8k0XzU_hP9ZJugat
X-Proofpoint-GUID: f6pukly8OcmG3eLP8k0XzU_hP9ZJugat
X-Authority-Analysis: v=2.4 cv=CeEFJbrl c=1 sm=1 tr=0 ts=69490cc4 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=BUuRoenLQBXCPULKYeEA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=OpyuDcXvxspvyRM73sMx:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIyMDA4MyBTYWx0ZWRfX8RbYKaNzVuE9
 5fEITT1ZxDscN1PLY2T8YUjquN0vdTWZ46AKq76FSZHx9SsUESao/t2WptgvwYl9fQRLihWvAsu
 InbvFDe9DzkAEvSvD+yxuh3P6WLKCoTLy17M6qWwL+QjCzvbu915JZs1CHdgTFwQ51u/myGUMH+
 F+PUJ7GjEOWmH/ryo8W98oAhTprrxaK7Mwo/RU65kG5f+BW/3zoUx9g34PlDhR8VdVDwgWmhCzG
 ZwVXbqwRy+DXQ+AepEHLDA5wj8cJE6il9A+a7mWI4U7/0VEl3jLCD4V+TZfna9vwbSti2Vg2/VI
 csVLpTFG0uc06hDfmlFG04NRW3xvfrLh/y1e68sC4iTG3Gcx3FJPUhU7jvSxA4U9QrHCbjc9jHV
 a/kXXr5yH6BUt0elhyCVyLvKj+X97ntr/fQ90540Mqh4kAABZHiBA7ZcwUr5qOHrJ5EbBh4bZbv
 wFbr8QrpXmIEVC4cipg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-21_05,2025-12-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 priorityscore=1501 phishscore=0
 bulkscore=0 adultscore=0 spamscore=0 clxscore=1015 malwarescore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512220083



On 12/22/2025 2:58 PM, Jie Gan wrote:
> 
> 
> On 12/19/2025 5:54 PM, Suzuki K Poulose wrote:
>> On 19/12/2025 02:05, Jie Gan wrote:
>>>
>>>
>>> On 12/19/2025 7:19 AM, Suzuki K Poulose wrote:
>>>> On 18/12/2025 10:17, Krzysztof Kozlowski wrote:
>>>>> On 12/12/2025 02:12, Jie Gan wrote:
>>>>>>
>>>>>>
>>>>>> On 12/11/2025 9:37 PM, Rob Herring wrote:
>>>>>>> On Thu, Dec 11, 2025 at 02:10:44PM +0800, Jie Gan wrote:
>>>>>>>> Add an interrupt property to CTCU device. The interrupt will be 
>>>>>>>> triggered
>>>>>>>> when the data size in the ETR buffer exceeds the threshold of the
>>>>>>>> BYTECNTRVAL register. Programming a threshold in the BYTECNTRVAL 
>>>>>>>> register
>>>>>>>> of CTCU device will enable the interrupt.
>>>>>>>>
>>>>>>>> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>>>>>>> Reviewed-by: Mike Leach <mike.leach@linaro.org>
>>>>>>>> Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
>>>>>>>> ---
>>>>>>>>    .../devicetree/bindings/arm/qcom,coresight-ctcu.yaml    | 17 
>>>>>>>> + + + ++++++++++++++
>>>>>>>>    1 file changed, 17 insertions(+)
>>>>>>>>
>>>>>>>> diff --git a/Documentation/devicetree/bindings/arm/ 
>>>>>>>> qcom,coresight- ctcu.yaml b/Documentation/devicetree/bindings/ 
>>>>>>>> arm/qcom,coresight- ctcu.yaml
>>>>>>>> index c969c16c21ef..90f88cc6cd3e 100644
>>>>>>>> --- a/Documentation/devicetree/bindings/arm/qcom,coresight- 
>>>>>>>> ctcu.yaml
>>>>>>>> +++ b/Documentation/devicetree/bindings/arm/qcom,coresight- 
>>>>>>>> ctcu.yaml
>>>>>>>> @@ -39,6 +39,16 @@ properties:
>>>>>>>>        items:
>>>>>>>>          - const: apb
>>>>>>>> +  interrupts:
>>>>>>>> +    items:
>>>>>>>> +      - description: Byte cntr interrupt for the first etr device
>>>>>>>> +      - description: Byte cntr interrupt for the second etr device
>>>>
>>>> This is really vague. How do you define first vs second ? Probe order ?
>>>> No way. This must be the "port" number to which the ETR is connected
>>>> to the CTCU. IIUC, there is a config area for each ETR (e.g., trace id
>>>> filter) connected to the CTCU. I was under the assumption that they
>>>> are identified as "ports" (input ports). I don't really understand how
>>>> this interrupt mapping works now. Please explain it clearly.
>>>>
>>>
>>> Sorry for the misunderstanding.
>>>
>>> Each ETR device should have its own interrupt line and an IRQ 
>>> register within the CTCU device, as defined by the specification. In 
>>> existing projects, the maximum supported number of ETR devices is 2.
>>>
>>> Each interrupt is directly mapped to a specific ETR device, for example:
>>> tmc@1000 → interrupt line 0
>>> tmc@1001 → interrupt line 1
>>>
>>> The suggestion to identify devices by ‘ports’ is much clearer than my 
>>> previous explanation, as it explicitly shows which device is 
>>> connected to which port.
>>
>> Thanks for confirming.
>>
>>>
>>>>>>>> +
>>>>>>>> +  interrupt-names:
>>>>>>>> +    items:
>>>>>>>> +      - const: etrirq0
>>>>>>>> +      - const: etrirq1
>>>>>>>
>>>>>>> Names are kind of pointless when it is just foo<index>.
>>>>>>
>>>>>> Hi Rob,
>>>>>>
>>>>>> I was naming them as etr0/etr1. Are these names acceptable?
>>>>>
>>>>> Obviously irq is redundant, but how does etr0 solves the problem of
>>>>> calling it foo0?
>>>>>
>>>>> I don't think you really read Rob's comment.
>>>>>
>>>>>> The interrupts are assigned exclusively to a specific ETR device.
>>>>>>
>>>>>> But Suzuki is concerned that this might cause confusion because 
>>>>>> the ETR
>>>>>> device is named randomly in the driver. Suzuki suggested using 
>>>>>> ‘port-0’
>>>>>> and ‘port-1’ and would also like to hear your feedback on these 
>>>>>> names.
>>>>>
>>>>> There is no confusion here. Writing bindings luckily clarifies this 
>>>>> what
>>>>> the indices in the array mean.
>>>>
>>>> The point is there are "n" interrupts. Question is, could there be more
>>>> devices(ETRs) connected to the CTCU than "n".
>>>>
>>>> e.g., Lets CTCU can control upto 4 ETRs and on a particular system, the
>>>>
>>>> TMC-ETR0 -> CTCU-Port0
>>>>
>>>> TMC-ETR1 -> CTCU-Port2
>>>> TMC-ETR2 -> CTCU-Port3
>>>>
>>>> Now, how many interrupts are described in the DT ? How do we map which
>>>> interrupts correspond to the CTCU-Portn. (Finding the TMC-ETRx back
>>>> from the port is possible, with the topology).
>>>>
>>>
>>> Got your point and it's much clearer.
>>>
>>>> This is what I raised in the previous version. Again, happy to hear
>>>> if there is a standard way to describe the interrupts.
>>>>
>>>> Suzuki
>>>>
>>>>
>>>>>
>>>>>>
>>>>>> Usually, the probe sequence follows the order of the addresses. In 
>>>>>> our
>>>>>> specification, ‘ETR0’ is always probed before ‘ETR1’ because its 
>>>>>> address
>>>>>> is lower.
>>>>>
>>>>> How is this even relevant? You are answering to something completely
>>>>> different, so I don't think you really tried to understand review.
>>>>>
>>>
>>> My previous explanation was definitely unclear. As Suzuki suggested, 
>>> mapping the interrupt to the port number (to identify the relevant 
>>> device based on topology) makes sense and provides a much easier way 
>>> to understand the relationship between the interrupt and the ETR device.
>>>
>>> So with the suggestion, here is the new description about the 
>>> interrupts:
>>>
>>>    interrupts:
>>>      items:
>>>        - description: Interrupt for the ETR device connected to in- 
>>> port0.
>>>        - description: Interrupt for the ETR device connected to in- 
>>> port1.
>>>
>>>   interrupt-names:
>>>      items:
>>>       - const: port0
>>>       - const: port1
>>
>> Which brings us back to the question I posted in the previous version. 
>> Do we really need a "name" or are there other ways to define, a sparse
>> list of interrupts ?
>>
> 
> Each interrupt is dedicated to a specific ETR device. While we can 
> retrieve the list of interrupts using of_irq_get, we cannot guarantee 
> that the obtained interrupt corresponds to the correct ETR device?
> I believe it would be better to have an interrupt-name property, so we 
> can assign the name in the data structure and retrieve the interrupt by 
> its name, ensuring it maps to the correct ETR device.

I have tried to get the interrupt with of_irq_get(nd, port_number).

If we define the interrupts in the correct sequence aligned with the 
port numbers, we can then retrieve each interrupt by its corresponding 
port number.

Is that ok to drop the interrupt-name with the solution?

Thanks,
Jie

> 
> Thanks,
> Jie
> 
> 
> 


