Return-Path: <devicetree+bounces-248036-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 32FADCCE3C9
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 03:09:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C0C0730601A8
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 02:05:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23EB821E098;
	Fri, 19 Dec 2025 02:05:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="L2sWY4AK";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="iBSZ/fN6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76AF8224AF1
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 02:05:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766109916; cv=none; b=DGQ22vWF4EJx2d4/X0EBX7aOwfkMU108RpYLulmAL65uikA9N2iqD4LL1y29AY1XH/kc2yvCQfN8iV6Dd/cDrc6tz51RbFL8xw7YiyXzOiU+/VD3nh37rPv7qFRIzRWWo1lGZDA6A+Cr2iY8ApPDsKiwRNSjbA/6TxBDNHmHAxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766109916; c=relaxed/simple;
	bh=fI+95ZOjKY3yfRQ+VZLRoxX/kKmxmxLpPVnrsV75VaU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DrvSdCObLDANIPqIOGI9tm39ir7BkSs8bQtMuBm1y4WwaSpsnljXW0pcjRXAzwXK1Gyro1LoFZ+UQW0DYg4FDOUeSpSQKbO4B+hGBcY7tTaBD0Vv8qdMXLi5XFqSzBisUuacEli9vI65tNfhDYbvv45OEn+NYY9pGuWPUXeHJYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=L2sWY4AK; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=iBSZ/fN6; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BILl2en3428248
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 02:05:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	p+KDl2G72vBzBLF/+z3TjDQ4EH3DJQNpwuc62txgdek=; b=L2sWY4AKIxkhFoEQ
	BXtNdaJ2lVg0sWy6UgMl9pi/9zGZhKa2rARZq66DjSyGKcwXXuy/3HUJRkMCQyxO
	rfnJIzCm13yDZyQJWZ7jnR9R2pm2K0cDdx+rhxJIoO5DMv1lQ/WL4MbKfg1pNSvV
	rW3HhcRkOMUB6p2I8XIwCKKFFcEFSH7SzSXKTKHcw8bdf0d7jYoRi0AEhm5n3UDd
	5wZVq6xEosWKHkZg944LRNQZ549il2KxlVDtdJt/DqXYavwSIwaad6hVEwKqO265
	l1BC+VOKZBDtoV62nwAxoDou4I2art9MQjSwaci2UW3/gGwqMjB/kUwkw0eycq8S
	LFL/Eg==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b4r2e8tvy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 02:05:12 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-34c5d203988so2530262a91.3
        for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 18:05:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766109912; x=1766714712; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=p+KDl2G72vBzBLF/+z3TjDQ4EH3DJQNpwuc62txgdek=;
        b=iBSZ/fN6FGfDdHJZDgquKAZ1Eg2Bi1rYb+NqMnwCr3/0YnnpSu9v1yvGtkNWTmHD7Y
         YQe4V5zfd7MAE2E+9kfxww0hTUMKn0ppwC9ej4iv95E1K7SCGkP9CXqTs7dG5RFHpI01
         NgGGVk9SbAox5hFZMWBr8oLHhE4sDAgr0dJSqZiy4BvzFn5Sg8o+aT24S3fZ12zsA90j
         9B1I8x8Ucflf0UaWPzTgQGA3mk2mnx30JZPTtLrJ3711zFpvpVBcEEX3qBp+lwb33j+o
         Lc5uf5eY7v3V0dX1trOAdRVpSfNvGRYopYSFhmIRGw0UJ+rGBF9BmA5PFrIXqx/DmIHr
         TK4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766109912; x=1766714712;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=p+KDl2G72vBzBLF/+z3TjDQ4EH3DJQNpwuc62txgdek=;
        b=aECxL5cSpyIMfwI1pqXtB9JdwHIA5t/6Ffw/uiUlmQAwLx+wkOhHclsdw2DFP8P/KB
         EkXQbdGUMdkm4B2x2Bz4fzVMYHdfKD2/aL9/cWdmHIOjLFunClKu12+OqvfMm9kRuiK8
         qwr2xVhwpmls/ahod1xQq/7wD6LQ1p5ALSkBKGtox1p2ikYHNefSAkDuJNt1zJbkxya5
         3LADefHkNbgsLFP4mlc7cdZiqxUaGEzdHhWb+3phqPfWtEu/lhaO5TtKn81bD8ps13/j
         Yo4Ra8e/7eCEs/ob1PzmebvnqjJS62eQ/4FifVNa+LhAO27rhzrHJBoS4fs0xOE4sjZ9
         bvBw==
X-Forwarded-Encrypted: i=1; AJvYcCX4YwRq2UUgnzZXRuHSTkpe+ex6eL2sDk3kEXKljSfdUvy5wUMdq+FXDfTl25EZO7Q1LRw0fcZ+oOwy@vger.kernel.org
X-Gm-Message-State: AOJu0YyMKUf7++ac76r8Yjb3A3fVtvA9GDgUmSqsm7nYrk3RgVCMI75h
	3bowzHt84Gjynwjd93noivO54sVUN7evFA/I8QGvhiayp2zvLOE15eZBgRlXNDiMg+jI66sHx3u
	sY4S1v/33dd9bdrwE1i5f4xZYzdJIqGQ+7/a9Z4lHWcIhTUV5D8TlR0+/gB50JVpv
X-Gm-Gg: AY/fxX7pRFQCoLE55RlEchDjsRya4mt6injQddbj5H4hM8xzmWFCOlIQiw67eD3hpMR
	RXTERDiI38840MMsEAyB9NQJBeorFxq4u5k+N6ueo0tBs5Qi/VxGUaKIAr7/eopxjTfeVE7hd5n
	G7q0s++dKWm5Fe7QbKEE/691Meb9sXF1wZ5pQbTtDCmjOODwrC32GoJ5+TN4uXdcInwJOxGvtLq
	BsYLgQCod6mcgvIEZ14acG0FS6y4ntr4hLAWntKebWF+NOIxV9Vy5au1MijwWiOBDUpCKcZYFl5
	jmljVHSjgAfI7v2ZkIoVupyC+5LTOTSzmpKcOUKdf2czyEJicZ5PmRwyYCUsziQsdDIYp8yyxCh
	XSpkINqYo032CGJTWpNhtkeC7wTAme+ocT4WyYS3/ZSOr8uRpRANN0xBqG5R62EYVQow0YegM/6
	U=
X-Received: by 2002:a05:6a21:6d9e:b0:35b:b97f:7471 with SMTP id adf61e73a8af0-376a75ef388mr1339441637.4.1766109911835;
        Thu, 18 Dec 2025 18:05:11 -0800 (PST)
X-Google-Smtp-Source: AGHT+IENweru9eTuM8/f/hzvfINoPNb14Iccv5nkKoLSJUQfoBqv5hSIXuuu8B1IOuUhk1nYq6XY7Q==
X-Received: by 2002:a05:6a21:6d9e:b0:35b:b97f:7471 with SMTP id adf61e73a8af0-376a75ef388mr1339414637.4.1766109911303;
        Thu, 18 Dec 2025 18:05:11 -0800 (PST)
Received: from [10.133.33.174] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c1e7961b4d0sm516718a12.5.2025.12.18.18.05.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Dec 2025 18:05:10 -0800 (PST)
Message-ID: <46afd4f6-f287-4d19-bc68-f2f6eac36e6a@oss.qualcomm.com>
Date: Fri, 19 Dec 2025 10:05:03 +0800
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
Content-Language: en-US
From: Jie Gan <jie.gan@oss.qualcomm.com>
In-Reply-To: <2db74a3e-4aeb-4e87-9fe8-5c9693bfb67c@arm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE5MDAxNSBTYWx0ZWRfX1+h+oHShCuZ8
 bOEGzfyJ6nG26dv6oLRIW6d1xqK4/RAN0uppuEbPIH0oTnhyByC/Z9J1S7NDms/yNUduNxjReIY
 i6azaMFSL/F7g4/uJe90UMjZVOelCnwSuTXLdHmJg4mGgpre8Gxnewec5DAjuba8Fz9pfQorLTx
 m0UPbw5rzHZP6S1LIySpD9t7j+nXUAbOyE8C5XUDIzF2M4kXIeCoe9C5HAxvwoCG38PNtGN78/n
 BAv2nUL48gwqN9ARC+7POAlEwhd+CQZn62RkcizfFfXL45eu9AYMZbBzmIu0NG1TywUCA5Z1M3k
 EjYjf0icvmowV8tdryGb4ikZ1GzihJD+9YJZbQ8poy560MKWWYFn9146xnQDXQQoxoXIUo8P614
 npBvWBfa+KGxUdYXtQYJH4Q9jwbuAIWoTDFYTroH3eKp/LbHEnBbPGVdTMwH1H2gtUiUUVTSgTt
 UGidTeQTgU0BarIK7/g==
X-Authority-Analysis: v=2.4 cv=W+c1lBWk c=1 sm=1 tr=0 ts=6944b2d8 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=aQ7FMZSyy468aWolCDYA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: TdWbOPIl4XlDW-61FS4pXar3Z9d1bCjx
X-Proofpoint-GUID: TdWbOPIl4XlDW-61FS4pXar3Z9d1bCjx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-19_01,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 lowpriorityscore=0 suspectscore=0
 clxscore=1015 bulkscore=0 impostorscore=0 spamscore=0 adultscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512190015



On 12/19/2025 7:19 AM, Suzuki K Poulose wrote:
> On 18/12/2025 10:17, Krzysztof Kozlowski wrote:
>> On 12/12/2025 02:12, Jie Gan wrote:
>>>
>>>
>>> On 12/11/2025 9:37 PM, Rob Herring wrote:
>>>> On Thu, Dec 11, 2025 at 02:10:44PM +0800, Jie Gan wrote:
>>>>> Add an interrupt property to CTCU device. The interrupt will be 
>>>>> triggered
>>>>> when the data size in the ETR buffer exceeds the threshold of the
>>>>> BYTECNTRVAL register. Programming a threshold in the BYTECNTRVAL 
>>>>> register
>>>>> of CTCU device will enable the interrupt.
>>>>>
>>>>> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>>>> Reviewed-by: Mike Leach <mike.leach@linaro.org>
>>>>> Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
>>>>> ---
>>>>>    .../devicetree/bindings/arm/qcom,coresight-ctcu.yaml    | 17 +++ 
>>>>> ++++++++++++++
>>>>>    1 file changed, 17 insertions(+)
>>>>>
>>>>> diff --git a/Documentation/devicetree/bindings/arm/qcom,coresight- 
>>>>> ctcu.yaml b/Documentation/devicetree/bindings/arm/qcom,coresight- 
>>>>> ctcu.yaml
>>>>> index c969c16c21ef..90f88cc6cd3e 100644
>>>>> --- a/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml
>>>>> +++ b/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml
>>>>> @@ -39,6 +39,16 @@ properties:
>>>>>        items:
>>>>>          - const: apb
>>>>> +  interrupts:
>>>>> +    items:
>>>>> +      - description: Byte cntr interrupt for the first etr device
>>>>> +      - description: Byte cntr interrupt for the second etr device
> 
> This is really vague. How do you define first vs second ? Probe order ?
> No way. This must be the "port" number to which the ETR is connected
> to the CTCU. IIUC, there is a config area for each ETR (e.g., trace id
> filter) connected to the CTCU. I was under the assumption that they
> are identified as "ports" (input ports). I don't really understand how
> this interrupt mapping works now. Please explain it clearly.
> 

Sorry for the misunderstanding.

Each ETR device should have its own interrupt line and an IRQ register 
within the CTCU device, as defined by the specification. In existing 
projects, the maximum supported number of ETR devices is 2.

Each interrupt is directly mapped to a specific ETR device, for example:
tmc@1000 → interrupt line 0
tmc@1001 → interrupt line 1

The suggestion to identify devices by ‘ports’ is much clearer than my 
previous explanation, as it explicitly shows which device is connected 
to which port.

>>>>> +
>>>>> +  interrupt-names:
>>>>> +    items:
>>>>> +      - const: etrirq0
>>>>> +      - const: etrirq1
>>>>
>>>> Names are kind of pointless when it is just foo<index>.
>>>
>>> Hi Rob,
>>>
>>> I was naming them as etr0/etr1. Are these names acceptable?
>>
>> Obviously irq is redundant, but how does etr0 solves the problem of
>> calling it foo0?
>>
>> I don't think you really read Rob's comment.
>>
>>> The interrupts are assigned exclusively to a specific ETR device.
>>>
>>> But Suzuki is concerned that this might cause confusion because the ETR
>>> device is named randomly in the driver. Suzuki suggested using ‘port-0’
>>> and ‘port-1’ and would also like to hear your feedback on these names.
>>
>> There is no confusion here. Writing bindings luckily clarifies this what
>> the indices in the array mean.
> 
> The point is there are "n" interrupts. Question is, could there be more
> devices(ETRs) connected to the CTCU than "n".
> 
> e.g., Lets CTCU can control upto 4 ETRs and on a particular system, the
> 
> TMC-ETR0 -> CTCU-Port0
> 
> TMC-ETR1 -> CTCU-Port2
> TMC-ETR2 -> CTCU-Port3
> 
> Now, how many interrupts are described in the DT ? How do we map which
> interrupts correspond to the CTCU-Portn. (Finding the TMC-ETRx back
> from the port is possible, with the topology).
> 

Got your point and it's much clearer.

> This is what I raised in the previous version. Again, happy to hear
> if there is a standard way to describe the interrupts.
> 
> Suzuki
> 
> 
>>
>>>
>>> Usually, the probe sequence follows the order of the addresses. In our
>>> specification, ‘ETR0’ is always probed before ‘ETR1’ because its address
>>> is lower.
>>
>> How is this even relevant? You are answering to something completely
>> different, so I don't think you really tried to understand review.
>>

My previous explanation was definitely unclear. As Suzuki suggested, 
mapping the interrupt to the port number (to identify the relevant 
device based on topology) makes sense and provides a much easier way to 
understand the relationship between the interrupt and the ETR device.

So with the suggestion, here is the new description about the interrupts:

   interrupts:
     items:
       - description: Interrupt for the ETR device connected to in-port0.
       - description: Interrupt for the ETR device connected to in-port1.

  interrupt-names:
     items:
      - const: port0
      - const: port1

Thanks,
Jie

>>
>>
>> Best regards,
>> Krzysztof
> 


