Return-Path: <devicetree+bounces-244519-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 27B52CA5C7B
	for <lists+devicetree@lfdr.de>; Fri, 05 Dec 2025 02:02:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8ACFA3160733
	for <lists+devicetree@lfdr.de>; Fri,  5 Dec 2025 01:01:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E05192116F6;
	Fri,  5 Dec 2025 01:01:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="D7hZ+nBy";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Ev6Y4hH+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 194D721019C
	for <devicetree@vger.kernel.org>; Fri,  5 Dec 2025 01:01:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764896509; cv=none; b=XN0AsfBfxY27uXdTvSNnNviRUyriL9iPKdJ3oEEY++0se3hnf1RkK+pLxy89q2SennC31QIy+B1+eKakg5luV7OIpR2x0y69bOxcXRw+jK4KUyhQn12yTDiFZ3Pb3LJSPfplsMrKa579a1uN/2EuHUDEMeeQcaHn1t0ffQpU2MY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764896509; c=relaxed/simple;
	bh=ESlo9+k1to5PZgpzawXtJbvI8zzsVgcm99d8Jj+R2pg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rX4vwk00g2VP02vh8fLmNx/kYCXxKfdoEGyXjq1WolBfwpDXinbJAGK0vRUw2ve5BDhQuwDono755aUlqnjXPZtg6qPS6N1qgv1ANID85AUZwkDCo+2n+KK1QG2+zGVyrqUt/pQJ/5AcN0OcDYocLF0BDy46zVQRsvMPWFOXxRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=D7hZ+nBy; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Ev6Y4hH+; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B4KG65G1130992
	for <devicetree@vger.kernel.org>; Fri, 5 Dec 2025 01:01:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	sZm2g5nNkglyyKKMEeqfWJOYA3gt76o1OLI8bcXYgIo=; b=D7hZ+nBylP45i6GB
	4pM/Y4Y5iF/PbX8wn9/9m5H8vwUKmxLGh66o/DoW31gvEX3eCyXD3GYfTO+hHssT
	lo9Cw7jWT/3KEkndSNSyw7kRB7XuR1EOKABm9+XmTeh5gyPgKu5roIN5/Cw6B1S0
	TrVEF2T9MA8U5d48TcCLy5o8cQyclmGDiTZXcFeYTIgj2kfxFHLwdwusaQHoR9pl
	D5zGGprum54rIDGlqL7A5xHaRFBJD5kOVPoA8ls7Qm9EHnSuzSJLMItqle3Fekxx
	KtXqr+sQCkkBi2X+nH2Oxxz5+RGuTp0W8zH6x6PyMSdBuPClMGCqHqXQ4vfFWF7F
	RUmevg==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4au1f03kyu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 01:01:46 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-34740cc80d5so2975387a91.0
        for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 17:01:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764896506; x=1765501306; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sZm2g5nNkglyyKKMEeqfWJOYA3gt76o1OLI8bcXYgIo=;
        b=Ev6Y4hH+lCgU0Y7LD54GOBIaicjjk28VDIwr/uHzN3S7befIeiJ4v8Fsm0Z6bv60FM
         kRndIpmyIa9OFPHW7A5loJIjJXQjsKqM784qC1KJPBHARHW9gHzp4qJhLhCuWi7e0V9O
         FN/P5rCcitI2wkVgpLyhOKyxpjmnCVTFJ9GnRZ5ZNwRhHnIPIwBwgtU6ct1uiF15QBPf
         WjX79Ef3YuPfZavh0LJrTHtKr1e6CReM9TF8yrmNc/7+IIsC1TKeLge3Q1j5OOwd9Gzv
         Md3sH/IVwPuC4YMp21fpnvuPxInvqbhXQ1bNyQZy/+Xkh0MmISlfmtPCQ1pHIQS6oHwX
         uovA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764896506; x=1765501306;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sZm2g5nNkglyyKKMEeqfWJOYA3gt76o1OLI8bcXYgIo=;
        b=wIXOfS3wOQQbvQndnu4X/ZirRKJX0ngdK2addO/l0KxdQLiOy/iLnKs1Fd8ftYIVZr
         nTHLRo02KFIlUCBngCFENJfQZ5Mo5Jqwb/a0uEwEENdXeh6GvcUshhbnugg50amipv5s
         g9WFOwCxsMWBI5hKQ3o83msI90QFhXM3cnF1//VrLuLQVCqwwF+f1k5uBdgmFAouE4oO
         dNvAopLEYgHcPbCFgKiEuRV+Cmp+eFn5tcSVRNGCXEfrxaTh1hwKSuywh7GZ9t4IoJxW
         3GI2bphrgaS1X/C3AvBHQLifkUDskQn/3ZYpAfKHmgZQrRWheAtYwQKGbIVjGFpS7cKm
         XJmA==
X-Forwarded-Encrypted: i=1; AJvYcCUP1/fxX5vffTK8Djwdkp8fghdAvsKOv2fsJNxyVRbvs+b4dKPo8brUrjYkqiMfrwvFLwHEzxpxHH+k@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1cUz69cBhETam5f84hQsd0Z6T7UFGsRWPWFt5vJ3hMBcqME/S
	6G25iV8T3Io+w2NGSKt79M2WF2i/CYE9+924B3+ss0J7eudqw3IYXIETxs70jzA6lStPB+bKxvK
	c6InWh+jZOASZ6D9on64L54mNzP2vBQTHs5+HAvFc9x4qNxTn4hw1iySRKHCZVM3C
X-Gm-Gg: ASbGncvld0+SzQ7NI0IYr3/zK6bIYY6RhZ7bApvtkp6Tx3fMu40vPgTp9vXE7ben4il
	DEt2cahgLP9N1Wx2HXDyRTmizSMcOmMDXp+Y1rqjTrCZ7eav4maB8Eiv70W5YIPvsxmE3akt7BH
	UQIb7L6tiNG+C/MZuBSSn7TUqqAlY4WSqJY1AEsMneKLFfEZPy6YJyCV2qCwvSIRkUiqrljRnrW
	hvk70K+GJRkS5jCImk0Rh07M02k0IdE2c6DvNN8KA+K2Wrykzmj/ruugi2RTHaGjLGVFh7Z7G/i
	DpsUkHV8+iW6nrofJ4Rt98rnCm/wn0jYklJd+udNlnJQicHNLdZcvojmX5uuR64zzSyNVWkdxRG
	Kjl4S+a2LBqwXwKv0RkorgK8qv8sSeKSstVqggqadQuTW+tK3nTJOM5j9SCn0PSYLhqjYTsZfsn
	8=
X-Received: by 2002:a17:90b:4a90:b0:340:9d52:44c1 with SMTP id 98e67ed59e1d1-349126d7e86mr8899590a91.35.1764896505765;
        Thu, 04 Dec 2025 17:01:45 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEuNrtoD/MByzKqmpwNpzfm88ksJJLa1RGmf4ZiHiQ8wK7eQfyv8P/kaq9q+XRSCbK/zcVPfg==
X-Received: by 2002:a17:90b:4a90:b0:340:9d52:44c1 with SMTP id 98e67ed59e1d1-349126d7e86mr8899530a91.35.1764896505164;
        Thu, 04 Dec 2025 17:01:45 -0800 (PST)
Received: from [10.133.33.191] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3494e84f446sm3060783a91.5.2025.12.04.17.01.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Dec 2025 17:01:44 -0800 (PST)
Message-ID: <bf6033e5-8429-482c-bf3b-adb8bc22711b@oss.qualcomm.com>
Date: Fri, 5 Dec 2025 09:01:35 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 6/9] dt-bindings: arm: add an interrupt property for
 Coresight CTCU
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Jinlong Mao <jinlong.mao@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20250908-enable-byte-cntr-for-tmc-v6-0-1db9e621441a@oss.qualcomm.com>
 <20250908-enable-byte-cntr-for-tmc-v6-6-1db9e621441a@oss.qualcomm.com>
 <66d4488f-941a-4716-b81f-e0f9e1165931@arm.com>
 <5a0e4abf-9e7f-4ef9-af02-dd6e34f5cfa8@oss.qualcomm.com>
 <9c00516c-6e07-4c57-a1f1-6dfc32ab3a53@arm.com>
Content-Language: en-US
From: Jie Gan <jie.gan@oss.qualcomm.com>
In-Reply-To: <9c00516c-6e07-4c57-a1f1-6dfc32ab3a53@arm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: jnx16HAHFYtEDb5TiNZ1co3eRXEQOcxx
X-Proofpoint-ORIG-GUID: jnx16HAHFYtEDb5TiNZ1co3eRXEQOcxx
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA1MDAwNiBTYWx0ZWRfX6Qftnnahtbz3
 IXptmyOH9NBu6MwhDo62ZhN7KK5cHHOcrxG+DpEds1eJssyut6U3tNe+B1o9s7VshLOrUlc6zNh
 LG7Du3ccKuEjgHI/H0APVXROGjhTYJteSrx9JBKg4Nv1ukbaqJI6w+dtFBX9a5WzjPghtzDhbIz
 yU1mv9sw0BokXW6sCbwarpAfKToABXumyd3zNfNbrKVqXlvHkxj8lEy2fTnw2FV6795U/I4nkHC
 44G9D0MGa6qAiscIyAOfG0UMdpHUMkB3UldRVnfMRyj1JvWWkI3eAA69Lxixb8aF3hWTsyq0ib0
 QwwvagsgX/tMybMfL723LxgJLMXM2/bOMJaz4xbmKFtpm8cJUg3cUjgkdti2VIpCxsz8CWr5uyK
 fbw3xYEI1z3KRgg5ok/6/RId3dVWxw==
X-Authority-Analysis: v=2.4 cv=Scz6t/Ru c=1 sm=1 tr=0 ts=69322efa cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=MQ8tZw8OEHbhgvfUyIkA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-04_06,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 adultscore=0 clxscore=1015 impostorscore=0
 bulkscore=0 suspectscore=0 malwarescore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512050006


On 12/4/2025 5:22 PM, Suzuki K Poulose wrote:
> On 04/12/2025 02:53, Jie Gan wrote:
>>
>>
>> On 12/4/2025 2:14 AM, Suzuki K Poulose wrote:
>>> On 08/09/2025 03:01, Jie Gan wrote:
>>>> Add an interrupt property to CTCU device. The interrupt will be 
>>>> triggered
>>>> when the data size in the ETR buffer exceeds the threshold of the
>>>> BYTECNTRVAL register. Programming a threshold in the BYTECNTRVAL 
>>>> register
>>>> of CTCU device will enable the interrupt.
>>>>
>>>> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>>> Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
>>>> ---
>>>>   .../devicetree/bindings/arm/qcom,coresight-ctcu.yaml    | 17 +++++ 
>>>> + + ++++++++++
>>>>   1 file changed, 17 insertions(+)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/arm/qcom,coresight- 
>>>> ctcu.yaml b/Documentation/devicetree/bindings/arm/qcom,coresight- 
>>>> ctcu.yaml
>>>> index 843b52eaf872..ea05ad8f3dd3 100644
>>>> --- a/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml
>>>> +++ b/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml
>>>> @@ -39,6 +39,16 @@ properties:
>>>>       items:
>>>>         - const: apb
>>>> +  interrupts:
>>>> +    items:
>>>> +      - description: Byte cntr interrupt for etr0
>>>> +      - description: Byte cntr interrupt for etr1
>>>> +
>>>> +  interrupt-names:
>>>> +    items:
>>>> +      - const: etr0
>>>> +      - const: etr1
>>>
>>
>> Hi Suzuki,
>>
>>> Why are they named "etr0" "etr1" ? That would be confusing, isn't it, 
>>> especially with the Linux driver naming things randomly for the TMC- 
>>> ETRs.
>>>
>>
>> Yes, it will cause misunderstandings since the "etr0" here may not the 
>> right device we are expecting.
>>
>>>
>>> What we want is the "port" number corresponding to the "TMC-ETR" being
>>> monitored ?
>>>
>>> Have you explored other options, "port-0", "port-1" ?
>>>
>>
>> I think it's much better. Will update in next version.
> 
> I am not sure if there exists a better scheme for identifying or
> numbering the interrupts. Happy to listen to the DT experts.
> 
> Rob, Krzysztof, thoughts ?
> 

Hi Suzuki,

I was thinking how about the name "ETRIRQ0", "ETRIRQ1" etc...

Thanks,
Jie

> Suzuki
> 
> 
>>
>> Thanks,
>> Jie
>>
>>> Suzuki
>>>
>>>> +
>>>>     in-ports:
>>>>       $ref: /schemas/graph.yaml#/properties/ports
>>>> @@ -56,6 +66,8 @@ additionalProperties: false
>>>>   examples:
>>>>     - |
>>>> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
>>>> +
>>>>       ctcu@1001000 {
>>>>           compatible = "qcom,sa8775p-ctcu";
>>>>           reg = <0x1001000 0x1000>;
>>>> @@ -63,6 +75,11 @@ examples:
>>>>           clocks = <&aoss_qmp>;
>>>>           clock-names = "apb";
>>>> +        interrupts = <GIC_SPI 270 IRQ_TYPE_EDGE_RISING>,
>>>> +                     <GIC_SPI 262 IRQ_TYPE_EDGE_RISING>;
>>>> +        interrupt-names = "etr0",
>>>> +                          "etr1";
>>>> +
>>>>           in-ports {
>>>>               #address-cells = <1>;
>>>>               #size-cells = <0>;
>>>>
>>>
>>>
>>
> 


