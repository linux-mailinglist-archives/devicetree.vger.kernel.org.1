Return-Path: <devicetree+bounces-141136-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D63E4A1D8B6
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 15:50:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4A4A51886A72
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 14:50:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0889D86337;
	Mon, 27 Jan 2025 14:50:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Qhdpboih"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69E1A84D02
	for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 14:50:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737989446; cv=none; b=H4aMLieGoqXC8DcN/v8zyx8ZEZC3bIc8kPgn2G0aeZ7ODaYWnPw8MdEiz+H0rRwADPqhFMPOH4uvapUZHhRUIn6AR5B3tTqlz+f38tl5ASpmiKLTacdjGsTga916Z42OQX2Ubriaww4sU71FK+DUFOCQDIp60yuvGWswwlSVzOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737989446; c=relaxed/simple;
	bh=2+OpoyTfuWM3aBgSI4gWxEzpF5BlIEdZOaUYl/KX3pM=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=RmCnKPb+dyn3NBs4tT1TY4hv5ER3qVdPBg1R1Z16TXKNGJPf3z/L66GOHhN7Ox/yVD775RxhuvcXvYoWKUj6ekfzV/X5SLOwtNq5BuaGzwsXov8sohsjVOuWSLhxjY4IZ7dXeVXneHYmZZvaeVFgjkLqCMiP5xYthRxKtzDVnoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Qhdpboih; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50RCU215031719
	for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 14:50:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	d/agJZlIjuRs2ho7DHlJuFBgOw0g4uTuFNeigGGmjjE=; b=QhdpboihpVpGwMoE
	bFZ5FpViVT//73hnVDZwqEFibZ38DP2y65V87bENBXb0mU5Frr953EYRBbOac/pg
	ogtIAam2yhAIrBGJhmz6q3PGIfHefs1kwzUNGsJTaOfxV6yxkRutneIDTAB4MO3B
	FAOvA4Dve3m1T/n6bIztRRcLpLBIlURtRZ0rKLy+CxiobKjlsSZ4RFH6QvH7NXv8
	OVf8LlAQZgzKezfN5NwN1D9ogiDowmZdygvogOy88sjp9fqG7wASWMqOo2QnPcNS
	9P2hxBngdRu34HOekHCGUNfssm0L+pVOLZeWRSuwS4q1asS8xFMj52fCAOpu/9ga
	6PG3Yw==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44ea6u08p5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 14:50:44 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6d8eda4d80aso4269356d6.1
        for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 06:50:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737989443; x=1738594243;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=d/agJZlIjuRs2ho7DHlJuFBgOw0g4uTuFNeigGGmjjE=;
        b=jTn3+8ZCsVkQuxySgTejMFS9Cwm8tkDuYEU8s3FiB6AGhOMRul9Zq2Qlu9O3kGFE1C
         TMuDhG1DPeR2mOlUBK0D6o8yCzGQiDK5sZPcQ59MKIDZPbDtcft4EG11i4e69lonTReK
         RI8OwCprk3fwLJtss2501GPfCsRX/SXcUwCnA2I4oBv01T6m0DH80Pm7U0+ivO4eYnlp
         lOorAjtWgbskIn/YqINRHIvOB5fDZnSETd248jeP6DrNZhfNhS5VEKsqbRHQwhdxNghr
         Hizl0ehu1epIaHimks3Dn5l27YX4SSxqgMw+cOiDWwV4hxF1F+eq7MSRNQ4q9FkHv6P9
         e1Bw==
X-Forwarded-Encrypted: i=1; AJvYcCU0J7TZ7Uen4SHit1ZSQ5A6HEYedcTtu6VMnU3IznUXeRjAx3apElXYb3zGLLxEd+t7J6GEwIuCl7lL@vger.kernel.org
X-Gm-Message-State: AOJu0YzCwncuzPqCVgqUiQi0TCbet0YXTRK+XqJVyVEeZfcKNph7vtfA
	z23mNM3WXx8Sb4Vkb0+DmqBlgr2jL2b84UaqFvMy+NiEnhvyh5P5kKeSZ3GinmWcNU/4bCEfMav
	f2DAoxM3/vlhM5wMEVaegOWiTHOWYZcGwptItvLl712XDrMn3zIsr1jbGCM4a
X-Gm-Gg: ASbGncs2yazpu3FJ+rK9xKUd3XZvpx+bw7WwL1u3bvnCfZeDdwHK7GNkzL4gChZerWw
	rt60SFQ4sxRmIZgFlqIqCqCdp98YNWJJfOudmtE8+/2q459UekCkiCwrHOWwN9rLB5xK7ZPMcQV
	TZIVV7fW+A4dOwZL+nLUxetZDe0EiD1Q6m8RvJcZ0LZjb8a28ZmOTB2WL+wxQQUAA0aAyOVwTtc
	QP9LoRq+UlwhAkWwiUWYdIoc9UqZr7pD6/G/BSsOlSV5ZbwMuSR9OGb7bfqs2MutMqJm8+rFkem
	YEPgR25JNZe8iU/tT8Gn7uFhgwIPyELSGq6I70EpoK6Hv8j7cePAIvkzwEc=
X-Received: by 2002:a05:622a:1b92:b0:460:3a41:a9e5 with SMTP id d75a77b69052e-46e12bb2ec9mr229573801cf.13.1737989442903;
        Mon, 27 Jan 2025 06:50:42 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG972NadTHMppU+ZdSaWIEL/ykHsknEiqTzaOz68ev01rj004iSJzalbBdr4fe/KxT3t+p36Q==
X-Received: by 2002:a05:622a:1b92:b0:460:3a41:a9e5 with SMTP id d75a77b69052e-46e12bb2ec9mr229573501cf.13.1737989442347;
        Mon, 27 Jan 2025 06:50:42 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab6760fbf38sm595855966b.143.2025.01.27.06.50.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Jan 2025 06:50:41 -0800 (PST)
Message-ID: <b125d1cf-8a17-4a3e-b662-5bdcca566f9c@oss.qualcomm.com>
Date: Mon, 27 Jan 2025 15:50:39 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/8] dt-bindings: soc: qcom: eud: Add phy related bindings
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Elson Serrao <quic_eserrao@quicinc.com>, andersson@kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        gregkh@linuxfoundation.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
References: <20240730222439.3469-1-quic_eserrao@quicinc.com>
 <20240730222439.3469-2-quic_eserrao@quicinc.com>
 <63cf3198-fb79-466f-b80a-024e970e400a@kernel.org>
 <5275651f-4075-4dac-bba0-da88f5836459@quicinc.com>
 <0b007a32-00be-40ae-9d96-d7a02b4534bf@kernel.org>
 <0e0d730d-66b9-4b00-a3ed-eb11ace9a79a@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <0e0d730d-66b9-4b00-a3ed-eb11ace9a79a@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: GawfyQMWIiSVjeupYOpqBKtiuWMgN9ot
X-Proofpoint-ORIG-GUID: GawfyQMWIiSVjeupYOpqBKtiuWMgN9ot
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-27_07,2025-01-27_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 mlxlogscore=999
 phishscore=0 suspectscore=0 malwarescore=0 adultscore=0 bulkscore=0
 clxscore=1015 mlxscore=0 impostorscore=0 priorityscore=1501
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501270118

On 27.01.2025 3:40 PM, Konrad Dybcio wrote:
> On 1.08.2024 9:45 AM, Krzysztof Kozlowski wrote:
>> On 01/08/2024 00:23, Elson Serrao wrote:
>>>
>>>
>>> On 7/30/2024 10:33 PM, Krzysztof Kozlowski wrote:
>>>> On 31/07/2024 00:24, Elson Roy Serrao wrote:
>>>>> Embedded USB Debugger(EUD) being a High-Speed USB  hub needs
>>>>> HS-Phy support for it's operation. Hence document phy bindings
>>>>> to support this.
>>>>>
>>>>> Signed-off-by: Elson Roy Serrao <quic_eserrao@quicinc.com>
>>>>
>>>> A nit, subject: drop second/last, redundant "bindings". The
>>>> "dt-bindings" prefix is already stating that these are bindings.
>>>> See also:
>>>> https://elixir.bootlin.com/linux/v6.7-rc8/source/Documentation/devicetree/bindings/submitting-patches.rst#L18
>>>>
>>> Ack
>>>>> ---
>>>>>  .../devicetree/bindings/soc/qcom/qcom,eud.yaml       | 12 ++++++++++++
>>>>>  1 file changed, 12 insertions(+)
>>>>>
>>>>> diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,eud.yaml b/Documentation/devicetree/bindings/soc/qcom/qcom,eud.yaml
>>>>> index f2c5ec7e6437..fca5b608ec63 100644
>>>>> --- a/Documentation/devicetree/bindings/soc/qcom/qcom,eud.yaml
>>>>> +++ b/Documentation/devicetree/bindings/soc/qcom/qcom,eud.yaml
>>>>> @@ -29,6 +29,14 @@ properties:
>>>>>      description: EUD interrupt
>>>>>      maxItems: 1
>>>>>  
>>>>> +  phys:
>>>>> +    items:
>>>>> +      - description: USB2/HS PHY needed for EUD functionality
>>>>> +
>>>>> +  phy-names:
>>>>> +    items:
>>>>> +      - const: usb2-phy
>>>>> +
>>>>>    ports:
>>>>>      $ref: /schemas/graph.yaml#/properties/ports
>>>>>      description:
>>>>> @@ -48,6 +56,8 @@ properties:
>>>>>  required:
>>>>>    - compatible
>>>>>    - reg
>>>>> +  - phys
>>>>> +  - phy-names
>>>>
>>>> That's an ABI break and nothing in commit msg justified it.
>>>>
>>>
>>> Hi Krzysztof
>>>
>>> Thank you for the review.
>>> I see that the only user for EUD as of now is QC sc7280 SoC where phy property
>>
>> Did you ask all customers and all users of Linux kernel?
> 
> Unfortunately, the PDF agrees - the current description is inherently incomplete
> and the driver seems to have been upstreamed in a rather "i need this specific
> part of it for my usecase" manner..
> 
> The driver must be aware of all USB state changes (as EUD is essentially a mux+hub
> sitting between the PHYs and the USB controllers).
> 
> Additionally, AFAICU, all device-mode-capable USB ports may potentially be used
> for debug purposes (one at a time), so it's not just a matter of a single
> controller here. Plug events / their suspend state must be monitored to program
> the EUD (which again, sits in the middle of all this) in a specific manner.
> 
> EUD is present on all non-ancient SoCs and by default it's on in bypass mode, so
> you can ignore its existence. That is, unless you want to use the features it
> provides, which we absolutely do.
> 
>>> is missing and EUD node is disabled. As described in my cover letter, HS phy
>>> support is needed for EUD functionality and this is applicable to all SoCs
>>> where EUD is to be enabled. Hence phy would be a required property.
>>
>> Nothing in commit msg explained that, but I have a bit hard time to
>> believe that this never worked. If that's the case, say it explicitly in
>> commit msg - this was always broken.
> 
> Even if it does work, it does so on a specific class of boards, relying on
> specific setup from a previous stage bootloader.
> 
>>> Given that the changes in this series are directly applicable to sc7280 as well,
>>> I will re-enable/rectify EUD feature on sc7280 SoC first, by adhering it to this binding
>>> requirement. That would address the ABI break. 
>>
>> I don't understand what you are saying here.
>>
>>> Once the base framework is set I shall extend it to sm8450 SoC.
> 
> tldr, we should fix both the bindings and the 7280 dt for it

On top of these comments, reg should be split up into three regions too,
if we want to be docs-accurate..

Konrad

